;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: a54a8e2f017fbb92d69d89cdb77e5a01
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
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     u32     2darray      T9     t11,space2     1
;                                   texture     f32     2darray     T10     t10,space2     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t49,space1     1
;                                   texture    byte         r/o     T13     t50,space1     1
;                                   texture    byte         r/o     T14     t51,space1     1
;                                   texture    byte         r/o     T15     t52,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;                                   texture     f32          2d     T35     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = fmul fast float %80, %74
  %82 = fmul fast float %80, %75
  %83 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %84 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %85 = bitcast float %84 to i32
  %86 = ashr i32 %85, 1
  %87 = sub nsw i32 1597250115, %86
  %88 = bitcast i32 %87 to float
  %89 = fmul fast float %66, %83
  %90 = fmul fast float %89, %88
  %91 = fmul fast float %67, %83
  %92 = fmul fast float %91, %88
  %93 = fmul fast float %68, %83
  %94 = fmul fast float %93, %88
  %95 = fmul fast float %67, %64
  %96 = fmul fast float %68, %63
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %68, %62
  %99 = fmul fast float %66, %64
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %66, %63
  %102 = fmul fast float %67, %62
  %103 = fsub fast float %101, %102
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %81, 2.000000e+00
  %108 = fmul fast float %107, %105
  %109 = fmul fast float %82, 2.000000e+00
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %76
  %138 = fmul fast float %134, %76
  %139 = fmul fast float %136, %76
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %81
  %144 = fmul fast float %142, %82
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.i32 %156, 3
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  %160 = and i32 %157, 4
  %161 = icmp ne i32 %160, 0
  %162 = and i1 %159, %161
  br i1 %162, label %163, label %172

; <label>:163                                     ; preds = %0
  %164 = fmul fast float %106, %82
  %165 = fmul fast float %105, %81
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %165, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %180

; <label>:172                                     ; preds = %0
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 3
  %175 = and i32 %174, 3
  %176 = icmp ne i32 %175, 0
  %177 = and i32 %174, 4
  %178 = icmp eq i32 %177, 0
  %179 = and i1 %176, %178
  br label %180

; <label>:180                                     ; preds = %172, %163
  %181 = phi i1 [ %171, %163 ], [ %179, %172 ]
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %81, 2.560000e+02
  %186 = frem fast float %82, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = fadd fast float %190, %184
  %193 = fadd fast float %191, %184
  %194 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %195 = call float @dx.op.unary.f32(i32 22, float %193)  ; Frc(value)
  %196 = add i32 %42, 156
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = shl i32 %198, 4
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %198, 7
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %198, 22
  %206 = shl nuw nsw i32 %205, 5
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = add i32 %42, 216
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %210, 8
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %210, 16
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = add i32 %42, 36
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = add i32 %42, 288
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %231, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = fmul fast float %233, 0x3F50624DE0000000
  %237 = fmul fast float %235, 0x3F50624DE0000000
  %238 = add i32 %42, 172
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = shl i32 %240, 4
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %240, 7
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %240, 22
  %248 = shl nuw nsw i32 %247, 5
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %42, 232
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = add i32 %42, 52
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %42, 304
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %275, 0x3F50624DE0000000
  %279 = fmul fast float %277, 0x3F50624DE0000000
  %280 = add i32 %42, 188
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %42, 248
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %42, 68
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %42, 320
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %42, 204
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %42, 264
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %42, 84
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %42, 336
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %42, 348
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 32
  %368 = icmp eq i32 %367, 0
  %369 = and i32 %366, 64
  %370 = icmp eq i32 %369, 0
  %371 = and i32 %366, 128
  %372 = icmp eq i32 %371, 0
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %390, label %377

; <label>:377                                     ; preds = %180
  %378 = add i32 %42, 488
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %380, 0
  %382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %382, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = fmul fast float %384, %71
  %388 = fmul fast float %385, %72
  %389 = fmul fast float %386, %73
  br label %390

; <label>:390                                     ; preds = %377, %180
  %391 = phi float [ %73, %180 ], [ %389, %377 ]
  %392 = phi float [ %72, %180 ], [ %388, %377 ]
  %393 = phi float [ %71, %180 ], [ %387, %377 ]
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 2
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %417, label %398

; <label>:398                                     ; preds = %390
  %399 = add i32 %42, 44
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %393, float 1.000000e+00
  %405 = add i32 %42, 60
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %392, float 1.000000e+00
  %411 = add i32 %42, 76
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %391, float 1.000000e+00
  br label %417

; <label>:417                                     ; preds = %398, %390
  %418 = phi float [ %391, %390 ], [ %416, %398 ]
  %419 = phi float [ %392, %390 ], [ %410, %398 ]
  %420 = phi float [ %393, %390 ], [ %404, %398 ]
  %421 = lshr i32 %395, 20
  %422 = and i32 %421, 3
  %423 = add nuw nsw i32 %422, 1
  %424 = add i32 %42, 24
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %42, 28
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = or i32 %429, %426
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %943, label %432

; <label>:432                                     ; preds = %417
  %433 = and i32 %426, 262144
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %44, float 1.000000e+00
  %436 = select i1 %434, float %45, float 0.000000e+00
  %437 = select i1 %434, float %46, float 0.000000e+00
  %438 = select i1 %434, float %47, float 1.000000e+00
  %439 = select i1 %434, float %48, float %69
  %440 = select i1 %434, float %49, float %70
  %441 = add i32 %42, 284
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %445, 0x3F50624DE0000000
  %447 = add i32 %42, 88
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = and i32 %450, 255
  %452 = lshr i32 %449, 24
  %453 = add i32 %42, 292
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %42, 32
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 22
  %464 = shl nuw nsw i32 %463, 5
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = shl i32 %462, 4
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %462, 7
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %474 = fmul fast float %473, 1.000000e+03
  %475 = fmul fast float %236, %474
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %226
  %478 = fmul fast float %237, %474
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %228
  %481 = fmul fast float %446, %474
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fmul fast float %482, 0x401921FB60000000
  %484 = fadd fast float %483, %465
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fsub fast float -0.000000e+00, %485
  %488 = fadd fast float %439, -5.000000e-01
  %489 = fadd fast float %440, -5.000000e-01
  %490 = fmul fast float %457, %488
  %491 = fmul fast float %459, %489
  %492 = fadd fast float %490, 5.000000e-01
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fmul fast float %468, %492
  %495 = fmul fast float %471, %493
  %496 = fmul fast float %486, %494
  %497 = call float @dx.op.tertiary.f32(i32 46, float %487, float %495, float %496)  ; FMad(a,b,c)
  %498 = fmul fast float %485, %494
  %499 = call float @dx.op.tertiary.f32(i32 46, float %486, float %495, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %477, %497
  %501 = fadd fast float %480, %499
  %502 = icmp ugt i32 %451, 1
  %503 = icmp ugt i32 %449, 33554431
  %504 = or i1 %503, %502
  br i1 %504, label %505, label %530

; <label>:505                                     ; preds = %432
  %506 = add i32 %42, 228
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = fmul fast float %473, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = mul nuw nsw i32 %451, %452
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %512, %514
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fptoui float %516 to i32
  %518 = urem i32 %517, %451
  %519 = udiv i32 %517, %452
  %520 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %522 = uitofp i32 %518 to float
  %523 = uitofp i32 %519 to float
  %524 = fadd fast float %520, %522
  %525 = fadd fast float %521, %523
  %526 = uitofp i32 %451 to float
  %527 = uitofp i32 %452 to float
  %528 = fdiv fast float %524, %526
  %529 = fdiv fast float %525, %527
  br label %530

; <label>:530                                     ; preds = %505, %432
  %531 = phi float [ %528, %505 ], [ %500, %432 ]
  %532 = phi float [ %529, %505 ], [ %501, %432 ]
  %533 = and i32 %426, 16
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %731, label %535

; <label>:535                                     ; preds = %530
  %536 = add i32 %42, 376
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %77, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = and i32 %449, 255
  %547 = uitofp i32 %546 to float
  %548 = lshr i32 %449, 8
  %549 = and i32 %548, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %545, %547
  %552 = fadd fast float %551, %550
  %553 = fmul fast float %552, 0x3F70101000000000
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 512
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %566, label %558

; <label>:558                                     ; preds = %535
  %559 = add i32 %42, 456
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = add i32 %561, 0
  %563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %563, %dx.types.Handle %78, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  br label %566

; <label>:566                                     ; preds = %558, %535
  %567 = phi float [ %565, %558 ], [ 1.000000e+00, %535 ]
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 33554432
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %678, label %572

; <label>:572                                     ; preds = %566
  %573 = add i32 %42, 224
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = add i32 %42, 228
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 24
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = and i32 %586, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = lshr i32 %586, 8
  %594 = and i32 %593, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %586, 16
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = add i32 %42, 220
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = lshr i32 %603, 24
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = and i32 %603, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %603, 8
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %603, 16
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = bitcast float %542 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %542, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %542
  %627 = fmul fast float %626, %625
  %628 = bitcast float %543 to i32
  %629 = ashr i32 %628, 1
  %630 = sub nsw i32 1597463174, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %543, 5.000000e-01
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %633, %632
  %635 = fsub fast float 1.500000e+00, %634
  %636 = fmul fast float %631, %543
  %637 = fmul fast float %636, %635
  %638 = bitcast float %544 to i32
  %639 = ashr i32 %638, 1
  %640 = sub nsw i32 1597463174, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %544, 5.000000e-01
  %643 = fmul fast float %641, %641
  %644 = fmul fast float %643, %642
  %645 = fsub fast float 1.500000e+00, %644
  %646 = fmul fast float %641, %544
  %647 = fmul fast float %646, %645
  %648 = fsub fast float %627, %609
  %649 = fsub fast float %637, %613
  %650 = fsub fast float %647, %617
  %651 = fmul fast float %648, %577
  %652 = fmul fast float %649, %579
  %653 = fmul fast float %650, %584
  %654 = fadd fast float %651, %592
  %655 = fadd fast float %652, %596
  %656 = fadd fast float %653, %600
  %657 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %658 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = fmul fast float %657, %657
  %661 = fmul fast float %658, %658
  %662 = fmul fast float %659, %659
  %663 = fsub fast float %660, %542
  %664 = fsub fast float %661, %543
  %665 = fsub fast float %662, %544
  %666 = fmul fast float %663, %567
  %667 = fmul fast float %664, %567
  %668 = fmul fast float %665, %567
  %669 = fadd fast float %666, %542
  %670 = fadd fast float %667, %543
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %589, %553
  %673 = fsub fast float %672, %606
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fsub fast float %674, %553
  %676 = fmul fast float %675, %567
  %677 = fadd fast float %676, %553
  br label %731

; <label>:678                                     ; preds = %566
  %679 = and i32 %569, 134217728
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %715, label %681

; <label>:681                                     ; preds = %678
  %682 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %683 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %684 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %685 = fadd fast float %682, -5.000000e-01
  %686 = fadd fast float %683, -5.000000e-01
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fmul fast float %685, %567
  %689 = fmul fast float %686, %567
  %690 = fmul fast float %687, %567
  %691 = fadd fast float %688, 5.000000e-01
  %692 = fadd fast float %689, 5.000000e-01
  %693 = fadd fast float %690, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 24, float %542)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = fmul fast float %691, 2.000000e+00
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fmul fast float %698, %694
  %700 = fadd fast float %699, %697
  %701 = fmul fast float %700, %694
  %702 = fmul fast float %692, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %695
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %695
  %707 = fmul fast float %693, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %696
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %696
  %712 = fmul fast float %701, %701
  %713 = fmul fast float %706, %706
  %714 = fmul fast float %711, %711
  br label %731

; <label>:715                                     ; preds = %678
  %716 = fmul fast float %213, %213
  %717 = fmul fast float %217, %217
  %718 = fmul fast float %221, %221
  %719 = fadd fast float %716, -1.000000e+00
  %720 = fadd fast float %717, -1.000000e+00
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fmul fast float %567, %719
  %723 = fmul fast float %567, %720
  %724 = fmul fast float %567, %721
  %725 = fadd fast float %722, 1.000000e+00
  %726 = fadd fast float %723, 1.000000e+00
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fmul fast float %725, %542
  %729 = fmul fast float %726, %543
  %730 = fmul fast float %727, %544
  br label %731

; <label>:731                                     ; preds = %715, %681, %572, %530
  %732 = phi float [ %677, %572 ], [ %553, %681 ], [ %553, %715 ], [ 0x3FA23C0BE0000000, %530 ]
  %733 = phi float [ %669, %572 ], [ %712, %681 ], [ %728, %715 ], [ 1.000000e+00, %530 ]
  %734 = phi float [ %670, %572 ], [ %713, %681 ], [ %729, %715 ], [ 1.000000e+00, %530 ]
  %735 = phi float [ %671, %572 ], [ %714, %681 ], [ %730, %715 ], [ 1.000000e+00, %530 ]
  %736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.i32 %736, 1
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  %740 = add i32 %42, 356
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 32
  %744 = icmp ne i32 %743, 0
  %745 = and i1 %739, %744
  %746 = select i1 %745, float 1.000000e+00, float %733
  %747 = select i1 %745, float 0x3FD3333340000000, float %734
  %748 = select i1 %745, float 0x3FD3333340000000, float %735
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 32
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %825, label %753

; <label>:753                                     ; preds = %731
  %754 = add i32 %42, 92
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %42, 392
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %759, 0
  %761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %761, %dx.types.Handle %77, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = and i32 %756, 255
  %768 = uitofp i32 %767 to float
  %769 = lshr i32 %756, 8
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %756, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101000000000
  %776 = fmul fast float %763, %768
  %777 = fadd fast float %776, %771
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fadd fast float %764, -5.000000e-01
  %780 = fadd fast float %766, -5.000000e-01
  %781 = fmul fast float %779, %775
  %782 = fmul fast float %780, %775
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fadd fast float %785, -1.000000e+00
  %787 = fmul fast float %784, 2.000000e+00
  %788 = fadd fast float %787, -1.000000e+00
  %789 = fadd fast float %786, %788
  %790 = fmul fast float %789, 5.000000e-01
  %791 = fsub fast float %786, %788
  %792 = fmul fast float %791, 5.000000e-01
  %793 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %794 = fsub fast float 1.000000e+00, %793
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = fsub fast float %794, %795
  %797 = call float @dx.op.dot3.f32(i32 55, float %790, float %792, float %796, float %790, float %792, float %796)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.unary.f32(i32 25, float %797)  ; Rsqrt(value)
  %799 = fmul fast float %790, %798
  %800 = fmul fast float %792, %798
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 67108864
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %821, label %805

; <label>:805                                     ; preds = %753
  %806 = add i32 %42, 280
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %808, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = fsub fast float %778, %816
  %818 = fmul fast float %817, %810
  %819 = fadd fast float %818, %814
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  br label %821

; <label>:821                                     ; preds = %805, %753
  %822 = phi float [ %820, %805 ], [ %778, %753 ]
  %823 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %435, float %436)  ; Dot2(ax,ay,bx,by)
  %824 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  br label %825

; <label>:825                                     ; preds = %821, %731
  %826 = phi float [ %822, %821 ], [ 0x3FD6666660000000, %731 ]
  %827 = phi float [ %823, %821 ], [ 0.000000e+00, %731 ]
  %828 = phi float [ %824, %821 ], [ 0.000000e+00, %731 ]
  %829 = phi float [ %765, %821 ], [ 1.000000e+00, %731 ]
  %830 = add i32 %42, 160
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 64
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %873, label %840

; <label>:840                                     ; preds = %825
  %841 = add i32 %42, 408
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %843, 0
  %845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 131072
  %849 = icmp eq i32 %848, 0
  %850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %845, %dx.types.Handle %77, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = fmul fast float %851, %201
  %855 = fmul fast float %852, %204
  %856 = fmul fast float %853, %207
  br i1 %849, label %863, label %857

; <label>:857                                     ; preds = %840
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fmul fast float %859, %854
  %861 = fmul fast float %859, %855
  %862 = fmul fast float %859, %856
  br label %863

; <label>:863                                     ; preds = %857, %840
  %864 = phi float [ %860, %857 ], [ %854, %840 ]
  %865 = phi float [ %861, %857 ], [ %855, %840 ]
  %866 = phi float [ %862, %857 ], [ %856, %840 ]
  %867 = fmul fast float %864, %835
  %868 = select i1 %181, float %867, float %864
  %869 = call float @dx.op.dot3.f32(i32 55, float %868, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = select i1 %181, float 0.000000e+00, float %864
  %871 = select i1 %181, float %869, float %865
  %872 = select i1 %181, float 0.000000e+00, float %866
  br label %873

; <label>:873                                     ; preds = %863, %825
  %874 = phi float [ %870, %863 ], [ 0.000000e+00, %825 ]
  %875 = phi float [ %871, %863 ], [ 0.000000e+00, %825 ]
  %876 = phi float [ %872, %863 ], [ 0.000000e+00, %825 ]
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = and i32 %878, 10240
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %925, label %881

; <label>:881                                     ; preds = %873
  %882 = add i32 %42, 472
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = add i32 %884, 0
  %886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %886, %dx.types.Handle %78, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 1
  %889 = extractvalue %dx.types.ResRet.f32 %887, 3
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = and i32 %891, 1048576
  %893 = icmp ne i32 %892, 0
  %894 = and i32 %891, 8192
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %911, label %896

; <label>:896                                     ; preds = %881
  %897 = extractvalue %dx.types.ResRet.f32 %887, 2
  %898 = select i1 %893, float %897, float %888
  %899 = extractvalue %dx.types.ResRet.f32 %887, 0
  %900 = select i1 %893, float %899, float %888
  %901 = add i32 %42, 96
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 16
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3F80101020000000
  %908 = fmul fast float %907, %900
  %909 = fmul fast float %907, %888
  %910 = fmul fast float %907, %898
  br label %911

; <label>:911                                     ; preds = %896, %881
  %912 = phi float [ %908, %896 ], [ 0.000000e+00, %881 ]
  %913 = phi float [ %909, %896 ], [ 0.000000e+00, %881 ]
  %914 = phi float [ %910, %896 ], [ 0.000000e+00, %881 ]
  %915 = and i32 %891, 2048
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %925, label %917

; <label>:917                                     ; preds = %911
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = shl i32 %919, 4
  %921 = and i32 %920, 32752
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = fmul fast float %922, %889
  %924 = call float @dx.op.binary.f32(i32 35, float %923, float 0x3F70101020000000)  ; FMax(a,b)
  br label %925

; <label>:925                                     ; preds = %917, %911, %873
  %926 = phi float [ %912, %917 ], [ %912, %911 ], [ 0.000000e+00, %873 ]
  %927 = phi float [ %913, %917 ], [ %913, %911 ], [ 0.000000e+00, %873 ]
  %928 = phi float [ %914, %917 ], [ %914, %911 ], [ 0.000000e+00, %873 ]
  %929 = phi float [ %924, %917 ], [ 0x3F70101020000000, %911 ], [ 0x3F70101020000000, %873 ]
  %930 = add i32 %42, 96
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = lshr i32 %932, 8
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = call float @dx.op.dot3.f32(i32 55, float %746, float %747, float %748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = fmul fast float %937, %938
  %940 = fadd fast float %939, %934
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  br label %943

; <label>:943                                     ; preds = %925, %417
  %944 = phi float [ 0.000000e+00, %417 ], [ %827, %925 ]
  %945 = phi float [ 0.000000e+00, %417 ], [ %828, %925 ]
  %946 = phi float [ 0.000000e+00, %417 ], [ %746, %925 ]
  %947 = phi float [ 0.000000e+00, %417 ], [ %747, %925 ]
  %948 = phi float [ 0.000000e+00, %417 ], [ %748, %925 ]
  %949 = phi float [ 0.000000e+00, %417 ], [ %874, %925 ]
  %950 = phi float [ 0.000000e+00, %417 ], [ %875, %925 ]
  %951 = phi float [ 0.000000e+00, %417 ], [ %876, %925 ]
  %952 = phi float [ 0.000000e+00, %417 ], [ %926, %925 ]
  %953 = phi float [ 0.000000e+00, %417 ], [ %927, %925 ]
  %954 = phi float [ 0.000000e+00, %417 ], [ %928, %925 ]
  %955 = phi float [ 0.000000e+00, %417 ], [ %732, %925 ]
  %956 = phi float [ 0.000000e+00, %417 ], [ 1.000000e+00, %925 ]
  %957 = phi float [ 0.000000e+00, %417 ], [ %826, %925 ]
  %958 = phi float [ 0.000000e+00, %417 ], [ %829, %925 ]
  %959 = phi float [ 0.000000e+00, %417 ], [ %929, %925 ]
  %960 = phi float [ 0.000000e+00, %417 ], [ %942, %925 ]
  br i1 %368, label %1889, label %961

; <label>:961                                     ; preds = %943
  %962 = icmp ult i32 %423, 2
  %963 = add i32 %42, 40
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = add i32 %42, 44
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = or i32 %968, %965
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %1889, label %971

; <label>:971                                     ; preds = %961
  %972 = and i32 %965, 262144
  %973 = icmp ne i32 %972, 0
  %974 = select i1 %973, float %44, float 1.000000e+00
  %975 = select i1 %973, float %45, float 0.000000e+00
  %976 = select i1 %973, float %46, float 0.000000e+00
  %977 = select i1 %973, float %47, float 1.000000e+00
  %978 = select i1 %973, float %48, float %69
  %979 = select i1 %973, float %49, float %70
  %980 = add i32 %42, 300
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = lshr i32 %982, 16
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = fmul fast float %984, 0x3F50624DE0000000
  %986 = add i32 %42, 104
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = lshr i32 %988, 16
  %990 = and i32 %989, 255
  %991 = lshr i32 %988, 24
  %992 = add i32 %42, 308
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 65535
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = lshr i32 %994, 16
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = add i32 %42, 48
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = lshr i32 %1001, 22
  %1003 = shl nuw nsw i32 %1002, 5
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = shl i32 %1001, 4
  %1006 = and i32 %1005, 32752
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = lshr i32 %1001, 7
  %1009 = and i32 %1008, 32752
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1013 = fmul fast float %1012, 1.000000e+03
  %1014 = fmul fast float %278, %1013
  %1015 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1016 = fadd fast float %1015, %268
  %1017 = fmul fast float %279, %1013
  %1018 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1019 = fadd fast float %1018, %270
  %1020 = fmul fast float %985, %1013
  %1021 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1022 = fmul fast float %1021, 0x401921FB60000000
  %1023 = fadd fast float %1022, %1004
  %1024 = call float @dx.op.unary.f32(i32 13, float %1023)  ; Sin(value)
  %1025 = call float @dx.op.unary.f32(i32 12, float %1023)  ; Cos(value)
  %1026 = fsub fast float -0.000000e+00, %1024
  %1027 = fadd fast float %978, -5.000000e-01
  %1028 = fadd fast float %979, -5.000000e-01
  %1029 = fmul fast float %996, %1027
  %1030 = fmul fast float %998, %1028
  %1031 = fadd fast float %1029, 5.000000e-01
  %1032 = fadd fast float %1030, 5.000000e-01
  %1033 = fmul fast float %1007, %1031
  %1034 = fmul fast float %1010, %1032
  %1035 = fmul fast float %1025, %1033
  %1036 = call float @dx.op.tertiary.f32(i32 46, float %1026, float %1034, float %1035)  ; FMad(a,b,c)
  %1037 = fmul fast float %1024, %1033
  %1038 = call float @dx.op.tertiary.f32(i32 46, float %1025, float %1034, float %1037)  ; FMad(a,b,c)
  %1039 = fadd fast float %1016, %1036
  %1040 = fadd fast float %1019, %1038
  %1041 = icmp ugt i32 %990, 1
  %1042 = icmp ugt i32 %988, 33554431
  %1043 = or i1 %1042, %1041
  br i1 %1043, label %1044, label %1069

; <label>:1044                                    ; preds = %971
  %1045 = add i32 %42, 244
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = lshr i32 %1047, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fmul fast float %1012, %1049
  %1051 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1052 = mul nuw nsw i32 %990, %991
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1051, %1053
  %1055 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1056 = fptoui float %1055 to i32
  %1057 = urem i32 %1056, %990
  %1058 = udiv i32 %1056, %991
  %1059 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1061 = uitofp i32 %1057 to float
  %1062 = uitofp i32 %1058 to float
  %1063 = fadd fast float %1059, %1061
  %1064 = fadd fast float %1060, %1062
  %1065 = uitofp i32 %990 to float
  %1066 = uitofp i32 %991 to float
  %1067 = fdiv fast float %1063, %1065
  %1068 = fdiv fast float %1064, %1066
  br label %1069

; <label>:1069                                    ; preds = %1044, %971
  %1070 = phi float [ %1067, %1044 ], [ %1039, %971 ]
  %1071 = phi float [ %1068, %1044 ], [ %1040, %971 ]
  %1072 = and i32 %965, 16777216
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1183, label %1074

; <label>:1074                                    ; preds = %1069
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1079 = fadd fast float %1076, %137
  %1080 = fadd fast float %1077, %138
  %1081 = fadd fast float %1078, %139
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1085 = icmp eq i32 %43, 65535
  br i1 %1085, label %1180, label %1086

; <label>:1086                                    ; preds = %1074
  %1087 = lshr i32 %43, 1
  %1088 = shl i32 %1087, 2
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %43, 1
  %1092 = icmp ne i32 %1091, 0
  %1093 = lshr i32 %1090, 16
  %1094 = and i32 %1090, 65535
  %1095 = select i1 %1092, i32 %1093, i32 %1094
  %1096 = icmp eq i32 %1095, 65535
  br i1 %1096, label %1176, label %1097

; <label>:1097                                    ; preds = %1086
  %1098 = mul nuw nsw i32 %1095, 40
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = add nuw nsw i32 %1098, 12
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = add nuw nsw i32 %1098, 24
  %1109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = add nuw nsw i32 %1098, 36
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = fsub fast float %1079, %1100
  %1117 = fsub fast float %1080, %1101
  %1118 = fsub fast float %1081, %1102
  %1119 = fmul fast float %1115, %1116
  %1120 = fmul fast float %1115, %1117
  %1121 = fmul fast float %1115, %1118
  %1122 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1123 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = fadd fast float %1124, 5.000000e-01
  %1128 = fmul fast float %1125, %1105
  %1129 = fmul fast float %1126, %1106
  %1130 = fmul fast float %1127, %1107
  %1131 = shl i32 %43, 2
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call float @dx.op.unary.f32(i32 22, float %1128)  ; Frc(value)
  %1137 = call float @dx.op.unary.f32(i32 22, float %1129)  ; Frc(value)
  %1138 = call float @dx.op.unary.f32(i32 22, float %1130)  ; Frc(value)
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1135, %dx.types.Handle %37, float %1136, float %1137, float %1138, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = fmul fast float %1140, 1.023000e+03
  %1144 = fmul fast float %1141, 1.023000e+03
  %1145 = fmul fast float %1142, 1.023000e+03
  %1146 = fadd fast float %1143, 5.000000e-01
  %1147 = fadd fast float %1144, 5.000000e-01
  %1148 = fadd fast float %1145, 5.000000e-01
  %1149 = call float @dx.op.unary.f32(i32 27, float %1146)  ; Round_ni(value)
  %1150 = call float @dx.op.unary.f32(i32 27, float %1147)  ; Round_ni(value)
  %1151 = call float @dx.op.unary.f32(i32 27, float %1148)  ; Round_ni(value)
  %1152 = fsub fast float %1119, %1122
  %1153 = fsub fast float %1120, %1123
  %1154 = fsub fast float %1121, %1124
  %1155 = fmul fast float %1152, 7.500000e-01
  %1156 = fmul fast float %1153, 7.500000e-01
  %1157 = fmul fast float %1154, 7.500000e-01
  %1158 = fadd fast float %1122, 1.250000e-01
  %1159 = fadd fast float %1158, %1155
  %1160 = fadd fast float %1159, %1149
  %1161 = fadd fast float %1123, 1.250000e-01
  %1162 = fadd fast float %1161, %1156
  %1163 = fadd fast float %1162, %1150
  %1164 = fadd fast float %1124, 1.250000e-01
  %1165 = fadd fast float %1164, %1157
  %1166 = fadd fast float %1165, %1151
  %1167 = fmul fast float %1160, %1110
  %1168 = fmul fast float %1163, %1111
  %1169 = fmul fast float %1166, %1112
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %1171, 0
  %1173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1173, %dx.types.Handle %35, float %1167, float %1168, float %1169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  br label %1176

; <label>:1176                                    ; preds = %1097, %1086
  %1177 = phi float [ %1175, %1097 ], [ -1.000000e+00, %1086 ]
  %1178 = fadd fast float %1177, %1084
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  br label %1180

; <label>:1180                                    ; preds = %1176, %1074
  %1181 = phi float [ %1179, %1176 ], [ %1084, %1074 ]
  %1182 = fmul fast float %1181, %420
  br label %1183

; <label>:1183                                    ; preds = %1180, %1069
  %1184 = phi float [ %1182, %1180 ], [ %420, %1069 ]
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 256
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1235, label %1189

; <label>:1189                                    ; preds = %1183
  %1190 = add i32 %42, 444
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %1192, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1194, %dx.types.Handle %78, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = add i32 %42, 116
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = shl i32 %1199, 4
  %1201 = and i32 %1200, 32752
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1199, 7
  %1204 = and i32 %1203, 32752
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = fsub fast float 1.000000e+00, %1184
  %1207 = call float @dx.op.binary.f32(i32 35, float %1206, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1208 = bitcast float %1184 to i32
  %1209 = sitofp i32 %1208 to float
  %1210 = fadd fast float %1209, 0xC1CFBF8940000000
  %1211 = fmul fast float %1205, %1210
  %1212 = fadd fast float %1211, 0x41CFBF8940000000
  %1213 = fptosi float %1212 to i32
  %1214 = bitcast i32 %1213 to float
  %1215 = bitcast float %1207 to i32
  %1216 = sitofp i32 %1215 to float
  %1217 = fadd fast float %1216, 0xC1CFBF8940000000
  %1218 = fmul fast float %1217, %1205
  %1219 = fadd fast float %1218, 0x41CFBF8940000000
  %1220 = fptosi float %1219 to i32
  %1221 = bitcast i32 %1220 to float
  %1222 = fmul fast float %1214, %1202
  %1223 = fmul fast float %1221, %1202
  %1224 = fsub fast float %1207, %1222
  %1225 = fadd fast float %1223, %1207
  %1226 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1227 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1228 = fsub fast float %1196, %1226
  %1229 = fsub fast float %1227, %1226
  %1230 = bitcast float %1229 to i32
  %1231 = sub nsw i32 2129859010, %1230
  %1232 = bitcast i32 %1231 to float
  %1233 = fmul fast float %1232, %1228
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  br label %1235

; <label>:1235                                    ; preds = %1189, %1183
  %1236 = phi float [ %1234, %1189 ], [ %1184, %1183 ]
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 128
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1257, label %1241

; <label>:1241                                    ; preds = %1235
  %1242 = add i32 %42, 428
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %78, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 524288
  %1252 = icmp ne i32 %1251, 0
  %1253 = fcmp fast ogt float %1248, 0x3FE0101020000000
  %1254 = select i1 %1253, float 1.000000e+00, float 0.000000e+00
  %1255 = select i1 %1252, float %1254, float %1248
  %1256 = fmul fast float %1255, %1236
  br label %1257

; <label>:1257                                    ; preds = %1241, %1235
  %1258 = phi float [ %1256, %1241 ], [ %1236, %1235 ]
  %1259 = fcmp fast ult float %1258, 0x3F70101020000000
  br i1 %1259, label %1889, label %1260

; <label>:1260                                    ; preds = %1257
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 16
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1463, label %1265

; <label>:1265                                    ; preds = %1260
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %42, 380
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %77, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = extractvalue %dx.types.ResRet.f32 %1273, 3
  %1278 = and i32 %1267, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = lshr i32 %1267, 8
  %1281 = and i32 %1280, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1277, %1279
  %1284 = fadd fast float %1283, %1282
  %1285 = fmul fast float %1284, 0x3F70101000000000
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 512
  %1289 = icmp eq i32 %1288, 0
  br i1 %1289, label %1298, label %1290

; <label>:1290                                    ; preds = %1265
  %1291 = add i32 %42, 460
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = add i32 %1293, 0
  %1295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1295, %dx.types.Handle %78, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  br label %1298

; <label>:1298                                    ; preds = %1290, %1265
  %1299 = phi float [ %1297, %1290 ], [ 1.000000e+00, %1265 ]
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 33554432
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1410, label %1304

; <label>:1304                                    ; preds = %1298
  %1305 = add i32 %42, 240
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 65535
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1307, 16
  %1311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1310)  ; LegacyF16ToF32(value)
  %1312 = add i32 %42, 244
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 65535
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = lshr i32 %1318, 24
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = and i32 %1318, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1318, 8
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1318, 16
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = add i32 %42, 236
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = lshr i32 %1335, 24
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101020000000
  %1339 = and i32 %1335, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = lshr i32 %1335, 8
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = lshr i32 %1335, 16
  %1347 = and i32 %1346, 255
  %1348 = uitofp i32 %1347 to float
  %1349 = fmul fast float %1348, 0x3F70101020000000
  %1350 = bitcast float %1274 to i32
  %1351 = ashr i32 %1350, 1
  %1352 = sub nsw i32 1597463174, %1351
  %1353 = bitcast i32 %1352 to float
  %1354 = fmul fast float %1274, 5.000000e-01
  %1355 = fmul fast float %1353, %1353
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float 1.500000e+00, %1356
  %1358 = fmul fast float %1353, %1274
  %1359 = fmul fast float %1358, %1357
  %1360 = bitcast float %1275 to i32
  %1361 = ashr i32 %1360, 1
  %1362 = sub nsw i32 1597463174, %1361
  %1363 = bitcast i32 %1362 to float
  %1364 = fmul fast float %1275, 5.000000e-01
  %1365 = fmul fast float %1363, %1363
  %1366 = fmul fast float %1365, %1364
  %1367 = fsub fast float 1.500000e+00, %1366
  %1368 = fmul fast float %1363, %1275
  %1369 = fmul fast float %1368, %1367
  %1370 = bitcast float %1276 to i32
  %1371 = ashr i32 %1370, 1
  %1372 = sub nsw i32 1597463174, %1371
  %1373 = bitcast i32 %1372 to float
  %1374 = fmul fast float %1276, 5.000000e-01
  %1375 = fmul fast float %1373, %1373
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float 1.500000e+00, %1376
  %1378 = fmul fast float %1373, %1276
  %1379 = fmul fast float %1378, %1377
  %1380 = fsub fast float %1359, %1341
  %1381 = fsub fast float %1369, %1345
  %1382 = fsub fast float %1379, %1349
  %1383 = fmul fast float %1380, %1309
  %1384 = fmul fast float %1381, %1311
  %1385 = fmul fast float %1382, %1316
  %1386 = fadd fast float %1383, %1324
  %1387 = fadd fast float %1384, %1328
  %1388 = fadd fast float %1385, %1332
  %1389 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1390 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1391 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1392 = fmul fast float %1389, %1389
  %1393 = fmul fast float %1390, %1390
  %1394 = fmul fast float %1391, %1391
  %1395 = fsub fast float %1392, %1274
  %1396 = fsub fast float %1393, %1275
  %1397 = fsub fast float %1394, %1276
  %1398 = fmul fast float %1395, %1299
  %1399 = fmul fast float %1396, %1299
  %1400 = fmul fast float %1397, %1299
  %1401 = fadd fast float %1398, %1274
  %1402 = fadd fast float %1399, %1275
  %1403 = fadd fast float %1400, %1276
  %1404 = fadd fast float %1321, %1285
  %1405 = fsub fast float %1404, %1338
  %1406 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1407 = fsub fast float %1406, %1285
  %1408 = fmul fast float %1407, %1299
  %1409 = fadd fast float %1408, %1285
  br label %1463

; <label>:1410                                    ; preds = %1298
  %1411 = and i32 %1301, 134217728
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1447, label %1413

; <label>:1413                                    ; preds = %1410
  %1414 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %1415 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1416 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1417 = fadd fast float %1414, -5.000000e-01
  %1418 = fadd fast float %1415, -5.000000e-01
  %1419 = fadd fast float %1416, -5.000000e-01
  %1420 = fmul fast float %1417, %1299
  %1421 = fmul fast float %1418, %1299
  %1422 = fmul fast float %1419, %1299
  %1423 = fadd fast float %1420, 5.000000e-01
  %1424 = fadd fast float %1421, 5.000000e-01
  %1425 = fadd fast float %1422, 5.000000e-01
  %1426 = call float @dx.op.unary.f32(i32 24, float %1274)  ; Sqrt(value)
  %1427 = call float @dx.op.unary.f32(i32 24, float %1275)  ; Sqrt(value)
  %1428 = call float @dx.op.unary.f32(i32 24, float %1276)  ; Sqrt(value)
  %1429 = fmul fast float %1423, 2.000000e+00
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = fmul fast float %1430, %1426
  %1432 = fadd fast float %1431, %1429
  %1433 = fmul fast float %1432, %1426
  %1434 = fmul fast float %1424, 2.000000e+00
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = fmul fast float %1435, %1427
  %1437 = fadd fast float %1436, %1434
  %1438 = fmul fast float %1437, %1427
  %1439 = fmul fast float %1425, 2.000000e+00
  %1440 = fsub fast float 1.000000e+00, %1439
  %1441 = fmul fast float %1440, %1428
  %1442 = fadd fast float %1441, %1439
  %1443 = fmul fast float %1442, %1428
  %1444 = fmul fast float %1433, %1433
  %1445 = fmul fast float %1438, %1438
  %1446 = fmul fast float %1443, %1443
  br label %1463

; <label>:1447                                    ; preds = %1410
  %1448 = fmul fast float %255, %255
  %1449 = fmul fast float %259, %259
  %1450 = fmul fast float %263, %263
  %1451 = fadd fast float %1448, -1.000000e+00
  %1452 = fadd fast float %1449, -1.000000e+00
  %1453 = fadd fast float %1450, -1.000000e+00
  %1454 = fmul fast float %1299, %1451
  %1455 = fmul fast float %1299, %1452
  %1456 = fmul fast float %1299, %1453
  %1457 = fadd fast float %1454, 1.000000e+00
  %1458 = fadd fast float %1455, 1.000000e+00
  %1459 = fadd fast float %1456, 1.000000e+00
  %1460 = fmul fast float %1457, %1274
  %1461 = fmul fast float %1458, %1275
  %1462 = fmul fast float %1459, %1276
  br label %1463

; <label>:1463                                    ; preds = %1447, %1413, %1304, %1260
  %1464 = phi float [ %1409, %1304 ], [ %1285, %1413 ], [ %1285, %1447 ], [ 0x3FA23C0BE0000000, %1260 ]
  %1465 = phi float [ %1401, %1304 ], [ %1444, %1413 ], [ %1460, %1447 ], [ 1.000000e+00, %1260 ]
  %1466 = phi float [ %1402, %1304 ], [ %1445, %1413 ], [ %1461, %1447 ], [ 1.000000e+00, %1260 ]
  %1467 = phi float [ %1403, %1304 ], [ %1446, %1413 ], [ %1462, %1447 ], [ 1.000000e+00, %1260 ]
  %1468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1469 = extractvalue %dx.types.CBufRet.i32 %1468, 1
  %1470 = and i32 %1469, 1
  %1471 = icmp ne i32 %1470, 0
  %1472 = add i32 %42, 356
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 32
  %1476 = icmp ne i32 %1475, 0
  %1477 = and i1 %1471, %1476
  %1478 = select i1 %1477, float 1.000000e+00, float %1465
  %1479 = select i1 %1477, float 0x3FD3333340000000, float %1466
  %1480 = select i1 %1477, float 0x3FD3333340000000, float %1467
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 32
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1557, label %1485

; <label>:1485                                    ; preds = %1463
  %1486 = add i32 %42, 108
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = add i32 %42, 396
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = add i32 %1491, 0
  %1493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1493, %dx.types.Handle %77, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.ResRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.ResRet.f32 %1494, 2
  %1498 = extractvalue %dx.types.ResRet.f32 %1494, 3
  %1499 = and i32 %1488, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = lshr i32 %1488, 8
  %1502 = and i32 %1501, 255
  %1503 = uitofp i32 %1502 to float
  %1504 = lshr i32 %1488, 16
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101000000000
  %1508 = fmul fast float %1495, %1500
  %1509 = fadd fast float %1508, %1503
  %1510 = fmul fast float %1509, 0x3F70101000000000
  %1511 = fadd fast float %1496, -5.000000e-01
  %1512 = fadd fast float %1498, -5.000000e-01
  %1513 = fmul fast float %1511, %1507
  %1514 = fmul fast float %1512, %1507
  %1515 = fadd fast float %1513, 5.000000e-01
  %1516 = fadd fast float %1514, 5.000000e-01
  %1517 = fmul fast float %1515, 2.000000e+00
  %1518 = fadd fast float %1517, -1.000000e+00
  %1519 = fmul fast float %1516, 2.000000e+00
  %1520 = fadd fast float %1519, -1.000000e+00
  %1521 = fadd fast float %1518, %1520
  %1522 = fmul fast float %1521, 5.000000e-01
  %1523 = fsub fast float %1518, %1520
  %1524 = fmul fast float %1523, 5.000000e-01
  %1525 = call float @dx.op.unary.f32(i32 6, float %1522)  ; FAbs(value)
  %1526 = fsub fast float 1.000000e+00, %1525
  %1527 = call float @dx.op.unary.f32(i32 6, float %1524)  ; FAbs(value)
  %1528 = fsub fast float %1526, %1527
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1522, float %1524, float %1528, float %1522, float %1524, float %1528)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = call float @dx.op.unary.f32(i32 25, float %1529)  ; Rsqrt(value)
  %1531 = fmul fast float %1522, %1530
  %1532 = fmul fast float %1524, %1530
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 67108864
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1553, label %1537

; <label>:1537                                    ; preds = %1485
  %1538 = add i32 %42, 296
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 65535
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 65535
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = lshr i32 %1540, 16
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = fsub fast float %1510, %1548
  %1550 = fmul fast float %1549, %1542
  %1551 = fadd fast float %1550, %1546
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  br label %1553

; <label>:1553                                    ; preds = %1537, %1485
  %1554 = phi float [ %1552, %1537 ], [ %1510, %1485 ]
  %1555 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %974, float %975)  ; Dot2(ax,ay,bx,by)
  %1556 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %976, float %977)  ; Dot2(ax,ay,bx,by)
  br label %1557

; <label>:1557                                    ; preds = %1553, %1463
  %1558 = phi float [ %1554, %1553 ], [ 0x3FD6666660000000, %1463 ]
  %1559 = phi float [ %1555, %1553 ], [ 0.000000e+00, %1463 ]
  %1560 = phi float [ %1556, %1553 ], [ 0.000000e+00, %1463 ]
  %1561 = phi float [ %1497, %1553 ], [ 1.000000e+00, %1463 ]
  %1562 = add i32 %42, 176
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = lshr i32 %1564, 22
  %1566 = shl nuw nsw i32 %1565, 5
  %1567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1566)  ; LegacyF16ToF32(value)
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 64
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1605, label %1572

; <label>:1572                                    ; preds = %1557
  %1573 = add i32 %42, 412
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = add i32 %1575, 0
  %1577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1576, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 131072
  %1581 = icmp eq i32 %1580, 0
  %1582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1577, %dx.types.Handle %77, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = fmul fast float %1583, %243
  %1587 = fmul fast float %1584, %246
  %1588 = fmul fast float %1585, %249
  br i1 %1581, label %1595, label %1589

; <label>:1589                                    ; preds = %1572
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = fmul fast float %1591, %1586
  %1593 = fmul fast float %1591, %1587
  %1594 = fmul fast float %1591, %1588
  br label %1595

; <label>:1595                                    ; preds = %1589, %1572
  %1596 = phi float [ %1592, %1589 ], [ %1586, %1572 ]
  %1597 = phi float [ %1593, %1589 ], [ %1587, %1572 ]
  %1598 = phi float [ %1594, %1589 ], [ %1588, %1572 ]
  %1599 = fmul fast float %1596, %1567
  %1600 = select i1 %181, float %1599, float %1596
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1597, float %1598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = select i1 %181, float 0.000000e+00, float %1596
  %1603 = select i1 %181, float %1601, float %1597
  %1604 = select i1 %181, float 0.000000e+00, float %1598
  br label %1605

; <label>:1605                                    ; preds = %1595, %1557
  %1606 = phi float [ %1602, %1595 ], [ 0.000000e+00, %1557 ]
  %1607 = phi float [ %1603, %1595 ], [ 0.000000e+00, %1557 ]
  %1608 = phi float [ %1604, %1595 ], [ 0.000000e+00, %1557 ]
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 10240
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1657, label %1613

; <label>:1613                                    ; preds = %1605
  %1614 = add i32 %42, 476
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = add i32 %1616, 0
  %1618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1618, %dx.types.Handle %78, float %1070, float %1071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 3
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 1048576
  %1625 = icmp ne i32 %1624, 0
  %1626 = and i32 %1623, 8192
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1643, label %1628

; <label>:1628                                    ; preds = %1613
  %1629 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1630 = select i1 %1625, float %1629, float %1620
  %1631 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1632 = select i1 %1625, float %1631, float %1620
  %1633 = add i32 %42, 112
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = lshr i32 %1635, 16
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F80101020000000
  %1640 = fmul fast float %1639, %1632
  %1641 = fmul fast float %1639, %1620
  %1642 = fmul fast float %1639, %1630
  br label %1643

; <label>:1643                                    ; preds = %1628, %1613
  %1644 = phi float [ %1640, %1628 ], [ 0.000000e+00, %1613 ]
  %1645 = phi float [ %1641, %1628 ], [ 0.000000e+00, %1613 ]
  %1646 = phi float [ %1642, %1628 ], [ 0.000000e+00, %1613 ]
  %1647 = and i32 %1623, 2048
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1657, label %1649

; <label>:1649                                    ; preds = %1643
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = shl i32 %1651, 4
  %1653 = and i32 %1652, 32752
  %1654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1653)  ; LegacyF16ToF32(value)
  %1655 = fmul fast float %1654, %1621
  %1656 = call float @dx.op.binary.f32(i32 35, float %1655, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1657

; <label>:1657                                    ; preds = %1649, %1643, %1605
  %1658 = phi float [ %1644, %1649 ], [ %1644, %1643 ], [ 0.000000e+00, %1605 ]
  %1659 = phi float [ %1645, %1649 ], [ %1645, %1643 ], [ 0.000000e+00, %1605 ]
  %1660 = phi float [ %1646, %1649 ], [ %1646, %1643 ], [ 0.000000e+00, %1605 ]
  %1661 = phi float [ %1656, %1649 ], [ 0x3F70101020000000, %1643 ], [ 0x3F70101020000000, %1605 ]
  %1662 = add i32 %42, 112
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 255
  %1666 = uitofp i32 %1665 to float
  %1667 = lshr i32 %1664, 8
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1479, float %1480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1671 = fmul fast float %1669, %1670
  %1672 = fadd fast float %1671, %1666
  %1673 = fmul fast float %1672, 0x3F70101020000000
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  br i1 %962, label %1675, label %1683

; <label>:1675                                    ; preds = %1657
  %1676 = fsub fast float 1.000000e+00, %1258
  %1677 = fmul fast float %1676, %946
  %1678 = fmul fast float %1676, %947
  %1679 = fmul fast float %1676, %948
  %1680 = fmul fast float %1676, %949
  %1681 = fmul fast float %1676, %950
  %1682 = fmul fast float %1676, %951
  br label %1683

; <label>:1683                                    ; preds = %1675, %1657
  %1684 = phi float [ %1677, %1675 ], [ %946, %1657 ]
  %1685 = phi float [ %1678, %1675 ], [ %947, %1657 ]
  %1686 = phi float [ %1679, %1675 ], [ %948, %1657 ]
  %1687 = phi float [ %1680, %1675 ], [ %949, %1657 ]
  %1688 = phi float [ %1681, %1675 ], [ %950, %1657 ]
  %1689 = phi float [ %1682, %1675 ], [ %951, %1657 ]
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 3
  %1693 = icmp eq i32 %1692, 3
  br i1 %1693, label %1772, label %1694

; <label>:1694                                    ; preds = %1683
  %1695 = and i32 %1691, 16
  %1696 = icmp ne i32 %1695, 0
  %1697 = select i1 %1696, float %1258, float 0.000000e+00
  %1698 = icmp eq i32 %1692, 0
  br i1 %1698, label %1699, label %1727

; <label>:1699                                    ; preds = %1694
  %1700 = and i32 %1691, 64
  %1701 = icmp ne i32 %1700, 0
  %1702 = select i1 %1701, float %1258, float 0.000000e+00
  %1703 = fsub fast float %1478, %1684
  %1704 = fsub fast float %1479, %1685
  %1705 = fsub fast float %1480, %1686
  %1706 = fmul fast float %1697, %1703
  %1707 = fmul fast float %1697, %1704
  %1708 = fmul fast float %1697, %1705
  %1709 = fadd fast float %1706, %1684
  %1710 = fadd fast float %1707, %1685
  %1711 = fadd fast float %1708, %1686
  %1712 = fsub fast float %1464, %955
  %1713 = fmul fast float %1697, %1712
  %1714 = fadd fast float %1713, %955
  %1715 = fsub fast float %1606, %1687
  %1716 = fsub fast float %1607, %1688
  %1717 = fsub fast float %1608, %1689
  %1718 = fmul fast float %1702, %1715
  %1719 = fmul fast float %1702, %1716
  %1720 = fmul fast float %1702, %1717
  %1721 = fadd fast float %1718, %1687
  %1722 = fadd fast float %1719, %1688
  %1723 = fadd fast float %1720, %1689
  %1724 = fsub fast float %1674, %960
  %1725 = fmul fast float %1697, %1724
  %1726 = fadd fast float %1725, %960
  br label %1772

; <label>:1727                                    ; preds = %1694
  %1728 = icmp eq i32 %1692, 1
  br i1 %1728, label %1729, label %1742

; <label>:1729                                    ; preds = %1727
  %1730 = fadd fast float %1478, -1.000000e+00
  %1731 = fadd fast float %1479, -1.000000e+00
  %1732 = fadd fast float %1480, -1.000000e+00
  %1733 = fmul fast float %1697, %1730
  %1734 = fmul fast float %1697, %1731
  %1735 = fmul fast float %1697, %1732
  %1736 = fadd fast float %1733, 1.000000e+00
  %1737 = fadd fast float %1734, 1.000000e+00
  %1738 = fadd fast float %1735, 1.000000e+00
  %1739 = fmul fast float %1736, %1684
  %1740 = fmul fast float %1737, %1685
  %1741 = fmul fast float %1738, %1686
  br label %1772

; <label>:1742                                    ; preds = %1727
  %1743 = icmp eq i32 %1692, 2
  br i1 %1743, label %1744, label %1772

; <label>:1744                                    ; preds = %1742
  %1745 = call float @dx.op.unary.f32(i32 24, float %1478)  ; Sqrt(value)
  %1746 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1747 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1748 = fadd fast float %1745, -5.000000e-01
  %1749 = fadd fast float %1746, -5.000000e-01
  %1750 = fadd fast float %1747, -5.000000e-01
  %1751 = fmul fast float %1748, %1697
  %1752 = fmul fast float %1749, %1697
  %1753 = fmul fast float %1750, %1697
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = fadd fast float %1752, 5.000000e-01
  %1756 = fadd fast float %1753, 5.000000e-01
  %1757 = fmul fast float %1754, 2.000000e+00
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = fmul fast float %1758, %1684
  %1760 = fadd fast float %1759, %1757
  %1761 = fmul fast float %1760, %1684
  %1762 = fmul fast float %1755, 2.000000e+00
  %1763 = fsub fast float 1.000000e+00, %1762
  %1764 = fmul fast float %1763, %1685
  %1765 = fadd fast float %1764, %1762
  %1766 = fmul fast float %1765, %1685
  %1767 = fmul fast float %1756, 2.000000e+00
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = fmul fast float %1768, %1686
  %1770 = fadd fast float %1769, %1767
  %1771 = fmul fast float %1770, %1686
  br label %1772

; <label>:1772                                    ; preds = %1744, %1742, %1729, %1699, %1683
  %1773 = phi float [ %1684, %1683 ], [ %1761, %1744 ], [ %1684, %1742 ], [ %1739, %1729 ], [ %1709, %1699 ]
  %1774 = phi float [ %1685, %1683 ], [ %1766, %1744 ], [ %1685, %1742 ], [ %1740, %1729 ], [ %1710, %1699 ]
  %1775 = phi float [ %1686, %1683 ], [ %1771, %1744 ], [ %1686, %1742 ], [ %1741, %1729 ], [ %1711, %1699 ]
  %1776 = phi float [ %1687, %1683 ], [ %1687, %1744 ], [ %1687, %1742 ], [ %1687, %1729 ], [ %1721, %1699 ]
  %1777 = phi float [ %1688, %1683 ], [ %1688, %1744 ], [ %1688, %1742 ], [ %1688, %1729 ], [ %1722, %1699 ]
  %1778 = phi float [ %1689, %1683 ], [ %1689, %1744 ], [ %1689, %1742 ], [ %1689, %1729 ], [ %1723, %1699 ]
  %1779 = phi float [ %955, %1683 ], [ %955, %1744 ], [ %955, %1742 ], [ %955, %1729 ], [ %1714, %1699 ]
  %1780 = phi float [ %960, %1683 ], [ %960, %1744 ], [ %960, %1742 ], [ %960, %1729 ], [ %1726, %1699 ]
  %1781 = and i32 %1691, 12
  %1782 = icmp eq i32 %1781, 12
  br i1 %1782, label %1889, label %1783

; <label>:1783                                    ; preds = %1772
  %1784 = and i32 %1691, 2097184
  %1785 = icmp eq i32 %1784, 2097184
  %1786 = select i1 %1785, float %1258, float 0.000000e+00
  %1787 = and i32 %1691, 4194336
  %1788 = icmp eq i32 %1787, 4194336
  %1789 = select i1 %1788, float %1258, float 0.000000e+00
  %1790 = and i32 %1691, 8388640
  %1791 = icmp eq i32 %1790, 8388640
  %1792 = select i1 %1791, float %1258, float 0.000000e+00
  %1793 = and i32 %1691, 2048
  %1794 = icmp ne i32 %1793, 0
  %1795 = select i1 %1794, float %1258, float 0.000000e+00
  %1796 = and i32 %1691, 8192
  %1797 = icmp ne i32 %1796, 0
  %1798 = select i1 %1797, float %1258, float 0.000000e+00
  %1799 = icmp eq i32 %1781, 0
  br i1 %1799, label %1800, label %1825

; <label>:1800                                    ; preds = %1783
  %1801 = fsub fast float %1559, %944
  %1802 = fsub fast float %1560, %945
  %1803 = fmul fast float %1786, %1801
  %1804 = fmul fast float %1786, %1802
  %1805 = fadd fast float %1803, %944
  %1806 = fadd fast float %1804, %945
  %1807 = fsub fast float %1561, %958
  %1808 = fmul fast float %1789, %1807
  %1809 = fadd fast float %1808, %958
  %1810 = fsub fast float %1558, %957
  %1811 = fmul fast float %1792, %1810
  %1812 = fadd fast float %1811, %957
  %1813 = fsub fast float %1661, %959
  %1814 = fmul fast float %1795, %1813
  %1815 = fadd fast float %1814, %959
  %1816 = fsub fast float %1658, %952
  %1817 = fsub fast float %1659, %953
  %1818 = fsub fast float %1660, %954
  %1819 = fmul fast float %1798, %1816
  %1820 = fmul fast float %1798, %1817
  %1821 = fmul fast float %1798, %1818
  %1822 = fadd fast float %1819, %952
  %1823 = fadd fast float %1820, %953
  %1824 = fadd fast float %1821, %954
  br label %1889

; <label>:1825                                    ; preds = %1783
  %1826 = icmp eq i32 %1781, 4
  br i1 %1826, label %1827, label %1867

; <label>:1827                                    ; preds = %1825
  %1828 = fmul fast float %1786, %1559
  %1829 = fmul fast float %1786, %1560
  %1830 = fadd fast float %1828, %944
  %1831 = fadd fast float %1829, %945
  %1832 = call float @dx.op.binary.f32(i32 36, float %958, float %1561)  ; FMin(a,b)
  %1833 = fsub fast float %1832, %958
  %1834 = fmul fast float %1833, %1789
  %1835 = fadd fast float %1834, %958
  %1836 = fadd fast float %1558, %957
  %1837 = fmul fast float %1836, 0x3FF337FAE0000000
  %1838 = fmul fast float %957, %957
  %1839 = fmul fast float %1558, %1558
  %1840 = fadd fast float %1839, %1838
  %1841 = fmul fast float %1840, 0x3FE5152B00000000
  %1842 = fmul fast float %957, 0xBFCC1F85E0000000
  %1843 = fmul fast float %1842, %1558
  %1844 = fadd fast float %1843, 0xBFE1363700000000
  %1845 = fadd fast float %1844, %1837
  %1846 = fsub fast float %1845, %1841
  %1847 = fmul fast float %1836, 0x3FBA6F0D00000000
  %1848 = fmul fast float %1840, 0x3FD0432880000000
  %1849 = fmul fast float %957, 0xBFEF110800000000
  %1850 = fmul fast float %1849, %1558
  %1851 = fadd fast float %1850, 1.000000e+00
  %1852 = fsub fast float %1851, %1847
  %1853 = fadd fast float %1852, %1848
  %1854 = fdiv fast float %1846, %1853
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = fsub fast float %1855, %957
  %1857 = fmul fast float %1856, %1792
  %1858 = fadd fast float %1857, %957
  %1859 = fmul fast float %1795, %1661
  %1860 = fadd fast float %1859, %959
  %1861 = fmul fast float %1798, %1658
  %1862 = fmul fast float %1798, %1659
  %1863 = fmul fast float %1798, %1660
  %1864 = fadd fast float %1861, %952
  %1865 = fadd fast float %1862, %953
  %1866 = fadd fast float %1863, %954
  br label %1889

; <label>:1867                                    ; preds = %1825
  %1868 = icmp eq i32 %1781, 8
  br i1 %1868, label %1869, label %1889

; <label>:1869                                    ; preds = %1867
  %1870 = fmul fast float %1786, %1559
  %1871 = fmul fast float %1786, %1560
  %1872 = fadd fast float %1870, %944
  %1873 = fadd fast float %1871, %945
  %1874 = call float @dx.op.binary.f32(i32 36, float %958, float %1561)  ; FMin(a,b)
  %1875 = fsub fast float %1874, %958
  %1876 = fmul fast float %1875, %1789
  %1877 = fadd fast float %1876, %958
  %1878 = fsub fast float %1558, %957
  %1879 = fmul fast float %1792, %1878
  %1880 = fadd fast float %1879, %957
  %1881 = fmul fast float %1795, %1661
  %1882 = fadd fast float %1881, %959
  %1883 = fmul fast float %1798, %1658
  %1884 = fmul fast float %1798, %1659
  %1885 = fmul fast float %1798, %1660
  %1886 = fadd fast float %1883, %952
  %1887 = fadd fast float %1884, %953
  %1888 = fadd fast float %1885, %954
  br label %1889

; <label>:1889                                    ; preds = %1869, %1867, %1827, %1800, %1772, %1257, %961, %943
  %1890 = phi float [ %944, %1772 ], [ %944, %1257 ], [ %944, %943 ], [ %1872, %1869 ], [ %944, %1867 ], [ %1830, %1827 ], [ %1805, %1800 ], [ %944, %961 ]
  %1891 = phi float [ %945, %1772 ], [ %945, %1257 ], [ %945, %943 ], [ %1873, %1869 ], [ %945, %1867 ], [ %1831, %1827 ], [ %1806, %1800 ], [ %945, %961 ]
  %1892 = phi float [ %1773, %1772 ], [ %946, %1257 ], [ %946, %943 ], [ %1773, %1869 ], [ %1773, %1867 ], [ %1773, %1827 ], [ %1773, %1800 ], [ %946, %961 ]
  %1893 = phi float [ %1774, %1772 ], [ %947, %1257 ], [ %947, %943 ], [ %1774, %1869 ], [ %1774, %1867 ], [ %1774, %1827 ], [ %1774, %1800 ], [ %947, %961 ]
  %1894 = phi float [ %1775, %1772 ], [ %948, %1257 ], [ %948, %943 ], [ %1775, %1869 ], [ %1775, %1867 ], [ %1775, %1827 ], [ %1775, %1800 ], [ %948, %961 ]
  %1895 = phi float [ %1776, %1772 ], [ %949, %1257 ], [ %949, %943 ], [ %1776, %1869 ], [ %1776, %1867 ], [ %1776, %1827 ], [ %1776, %1800 ], [ %949, %961 ]
  %1896 = phi float [ %1777, %1772 ], [ %950, %1257 ], [ %950, %943 ], [ %1777, %1869 ], [ %1777, %1867 ], [ %1777, %1827 ], [ %1777, %1800 ], [ %950, %961 ]
  %1897 = phi float [ %1778, %1772 ], [ %951, %1257 ], [ %951, %943 ], [ %1778, %1869 ], [ %1778, %1867 ], [ %1778, %1827 ], [ %1778, %1800 ], [ %951, %961 ]
  %1898 = phi float [ %952, %1772 ], [ %952, %1257 ], [ %952, %943 ], [ %1886, %1869 ], [ %952, %1867 ], [ %1864, %1827 ], [ %1822, %1800 ], [ %952, %961 ]
  %1899 = phi float [ %953, %1772 ], [ %953, %1257 ], [ %953, %943 ], [ %1887, %1869 ], [ %953, %1867 ], [ %1865, %1827 ], [ %1823, %1800 ], [ %953, %961 ]
  %1900 = phi float [ %954, %1772 ], [ %954, %1257 ], [ %954, %943 ], [ %1888, %1869 ], [ %954, %1867 ], [ %1866, %1827 ], [ %1824, %1800 ], [ %954, %961 ]
  %1901 = phi float [ %1779, %1772 ], [ %955, %1257 ], [ %955, %943 ], [ %1779, %1869 ], [ %1779, %1867 ], [ %1779, %1827 ], [ %1779, %1800 ], [ %955, %961 ]
  %1902 = phi float [ %957, %1772 ], [ %957, %1257 ], [ %957, %943 ], [ %1880, %1869 ], [ %957, %1867 ], [ %1858, %1827 ], [ %1812, %1800 ], [ %957, %961 ]
  %1903 = phi float [ %958, %1772 ], [ %958, %1257 ], [ %958, %943 ], [ %1877, %1869 ], [ %958, %1867 ], [ %1835, %1827 ], [ %1809, %1800 ], [ %958, %961 ]
  %1904 = phi float [ %959, %1772 ], [ %959, %1257 ], [ %959, %943 ], [ %1882, %1869 ], [ %959, %1867 ], [ %1860, %1827 ], [ %1815, %1800 ], [ %959, %961 ]
  %1905 = phi float [ %1780, %1772 ], [ %960, %1257 ], [ %960, %943 ], [ %1780, %1869 ], [ %1780, %1867 ], [ %1780, %1827 ], [ %1780, %1800 ], [ %960, %961 ]
  br i1 %370, label %2834, label %1906

; <label>:1906                                    ; preds = %1889
  %1907 = icmp ult i32 %423, 3
  %1908 = add i32 %42, 56
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = add i32 %42, 60
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = or i32 %1913, %1910
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %2834, label %1916

; <label>:1916                                    ; preds = %1906
  %1917 = and i32 %1910, 262144
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %44, float 1.000000e+00
  %1920 = select i1 %1918, float %45, float 0.000000e+00
  %1921 = select i1 %1918, float %46, float 0.000000e+00
  %1922 = select i1 %1918, float %47, float 1.000000e+00
  %1923 = select i1 %1918, float %48, float %69
  %1924 = select i1 %1918, float %49, float %70
  %1925 = add i32 %42, 316
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = lshr i32 %1927, 16
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = fmul fast float %1929, 0x3F50624DE0000000
  %1931 = add i32 %42, 120
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = lshr i32 %1933, 16
  %1935 = and i32 %1934, 255
  %1936 = lshr i32 %1933, 24
  %1937 = add i32 %42, 324
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = and i32 %1939, 65535
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = lshr i32 %1939, 16
  %1943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1942)  ; LegacyF16ToF32(value)
  %1944 = add i32 %42, 64
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = lshr i32 %1946, 22
  %1948 = shl nuw nsw i32 %1947, 5
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = shl i32 %1946, 4
  %1951 = and i32 %1950, 32752
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = lshr i32 %1946, 7
  %1954 = and i32 %1953, 32752
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 3
  %1958 = fmul fast float %1957, 1.000000e+03
  %1959 = fmul fast float %320, %1958
  %1960 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1961 = fadd fast float %1960, %310
  %1962 = fmul fast float %321, %1958
  %1963 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1964 = fadd fast float %1963, %312
  %1965 = fmul fast float %1930, %1958
  %1966 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1967 = fmul fast float %1966, 0x401921FB60000000
  %1968 = fadd fast float %1967, %1949
  %1969 = call float @dx.op.unary.f32(i32 13, float %1968)  ; Sin(value)
  %1970 = call float @dx.op.unary.f32(i32 12, float %1968)  ; Cos(value)
  %1971 = fsub fast float -0.000000e+00, %1969
  %1972 = fadd fast float %1923, -5.000000e-01
  %1973 = fadd fast float %1924, -5.000000e-01
  %1974 = fmul fast float %1941, %1972
  %1975 = fmul fast float %1943, %1973
  %1976 = fadd fast float %1974, 5.000000e-01
  %1977 = fadd fast float %1975, 5.000000e-01
  %1978 = fmul fast float %1952, %1976
  %1979 = fmul fast float %1955, %1977
  %1980 = fmul fast float %1970, %1978
  %1981 = call float @dx.op.tertiary.f32(i32 46, float %1971, float %1979, float %1980)  ; FMad(a,b,c)
  %1982 = fmul fast float %1969, %1978
  %1983 = call float @dx.op.tertiary.f32(i32 46, float %1970, float %1979, float %1982)  ; FMad(a,b,c)
  %1984 = fadd fast float %1961, %1981
  %1985 = fadd fast float %1964, %1983
  %1986 = icmp ugt i32 %1935, 1
  %1987 = icmp ugt i32 %1933, 33554431
  %1988 = or i1 %1987, %1986
  br i1 %1988, label %1989, label %2014

; <label>:1989                                    ; preds = %1916
  %1990 = add i32 %42, 260
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = lshr i32 %1992, 16
  %1994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1993)  ; LegacyF16ToF32(value)
  %1995 = fmul fast float %1957, %1994
  %1996 = call float @dx.op.unary.f32(i32 22, float %1995)  ; Frc(value)
  %1997 = mul nuw nsw i32 %1935, %1936
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1996, %1998
  %2000 = call float @dx.op.unary.f32(i32 27, float %1999)  ; Round_ni(value)
  %2001 = fptoui float %2000 to i32
  %2002 = urem i32 %2001, %1935
  %2003 = udiv i32 %2001, %1936
  %2004 = call float @dx.op.unary.f32(i32 22, float %1984)  ; Frc(value)
  %2005 = call float @dx.op.unary.f32(i32 22, float %1985)  ; Frc(value)
  %2006 = uitofp i32 %2002 to float
  %2007 = uitofp i32 %2003 to float
  %2008 = fadd fast float %2004, %2006
  %2009 = fadd fast float %2005, %2007
  %2010 = uitofp i32 %1935 to float
  %2011 = uitofp i32 %1936 to float
  %2012 = fdiv fast float %2008, %2010
  %2013 = fdiv fast float %2009, %2011
  br label %2014

; <label>:2014                                    ; preds = %1989, %1916
  %2015 = phi float [ %2012, %1989 ], [ %1984, %1916 ]
  %2016 = phi float [ %2013, %1989 ], [ %1985, %1916 ]
  %2017 = and i32 %1910, 16777216
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2128, label %2019

; <label>:2019                                    ; preds = %2014
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = fadd fast float %2021, %137
  %2025 = fadd fast float %2022, %138
  %2026 = fadd fast float %2023, %139
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = icmp eq i32 %43, 65535
  br i1 %2030, label %2125, label %2031

; <label>:2031                                    ; preds = %2019
  %2032 = lshr i32 %43, 1
  %2033 = shl i32 %2032, 2
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %43, 1
  %2037 = icmp ne i32 %2036, 0
  %2038 = lshr i32 %2035, 16
  %2039 = and i32 %2035, 65535
  %2040 = select i1 %2037, i32 %2038, i32 %2039
  %2041 = icmp eq i32 %2040, 65535
  br i1 %2041, label %2121, label %2042

; <label>:2042                                    ; preds = %2031
  %2043 = mul nuw nsw i32 %2040, 40
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = add nuw nsw i32 %2043, 12
  %2049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = add nuw nsw i32 %2043, 24
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.ResRet.f32 %2054, 2
  %2058 = add nuw nsw i32 %2043, 36
  %2059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = fsub fast float %2024, %2045
  %2062 = fsub fast float %2025, %2046
  %2063 = fsub fast float %2026, %2047
  %2064 = fmul fast float %2060, %2061
  %2065 = fmul fast float %2060, %2062
  %2066 = fmul fast float %2060, %2063
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fmul fast float %2070, %2050
  %2074 = fmul fast float %2071, %2051
  %2075 = fmul fast float %2072, %2052
  %2076 = shl i32 %43, 2
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = add i32 %2078, 0
  %2080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2081 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2082 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2083 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2080, %dx.types.Handle %37, float %2081, float %2082, float %2083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = fmul fast float %2085, 1.023000e+03
  %2089 = fmul fast float %2086, 1.023000e+03
  %2090 = fmul fast float %2087, 1.023000e+03
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2095 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2096 = call float @dx.op.unary.f32(i32 27, float %2093)  ; Round_ni(value)
  %2097 = fsub fast float %2064, %2067
  %2098 = fsub fast float %2065, %2068
  %2099 = fsub fast float %2066, %2069
  %2100 = fmul fast float %2097, 7.500000e-01
  %2101 = fmul fast float %2098, 7.500000e-01
  %2102 = fmul fast float %2099, 7.500000e-01
  %2103 = fadd fast float %2067, 1.250000e-01
  %2104 = fadd fast float %2103, %2100
  %2105 = fadd fast float %2104, %2094
  %2106 = fadd fast float %2068, 1.250000e-01
  %2107 = fadd fast float %2106, %2101
  %2108 = fadd fast float %2107, %2095
  %2109 = fadd fast float %2069, 1.250000e-01
  %2110 = fadd fast float %2109, %2102
  %2111 = fadd fast float %2110, %2096
  %2112 = fmul fast float %2105, %2055
  %2113 = fmul fast float %2108, %2056
  %2114 = fmul fast float %2111, %2057
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %2116, 0
  %2118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2118, %dx.types.Handle %35, float %2112, float %2113, float %2114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  br label %2121

; <label>:2121                                    ; preds = %2042, %2031
  %2122 = phi float [ %2120, %2042 ], [ -1.000000e+00, %2031 ]
  %2123 = fadd fast float %2122, %2029
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  br label %2125

; <label>:2125                                    ; preds = %2121, %2019
  %2126 = phi float [ %2124, %2121 ], [ %2029, %2019 ]
  %2127 = fmul fast float %2126, %419
  br label %2128

; <label>:2128                                    ; preds = %2125, %2014
  %2129 = phi float [ %2127, %2125 ], [ %419, %2014 ]
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 256
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2180, label %2134

; <label>:2134                                    ; preds = %2128
  %2135 = add i32 %42, 448
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2139, %dx.types.Handle %78, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = add i32 %42, 132
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = shl i32 %2144, 4
  %2146 = and i32 %2145, 32752
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = lshr i32 %2144, 7
  %2149 = and i32 %2148, 32752
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = fsub fast float 1.000000e+00, %2129
  %2152 = call float @dx.op.binary.f32(i32 35, float %2151, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2153 = bitcast float %2129 to i32
  %2154 = sitofp i32 %2153 to float
  %2155 = fadd fast float %2154, 0xC1CFBF8940000000
  %2156 = fmul fast float %2150, %2155
  %2157 = fadd fast float %2156, 0x41CFBF8940000000
  %2158 = fptosi float %2157 to i32
  %2159 = bitcast i32 %2158 to float
  %2160 = bitcast float %2152 to i32
  %2161 = sitofp i32 %2160 to float
  %2162 = fadd fast float %2161, 0xC1CFBF8940000000
  %2163 = fmul fast float %2162, %2150
  %2164 = fadd fast float %2163, 0x41CFBF8940000000
  %2165 = fptosi float %2164 to i32
  %2166 = bitcast i32 %2165 to float
  %2167 = fmul fast float %2159, %2147
  %2168 = fmul fast float %2166, %2147
  %2169 = fsub fast float %2152, %2167
  %2170 = fadd fast float %2168, %2152
  %2171 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2173 = fsub fast float %2141, %2171
  %2174 = fsub fast float %2172, %2171
  %2175 = bitcast float %2174 to i32
  %2176 = sub nsw i32 2129859010, %2175
  %2177 = bitcast i32 %2176 to float
  %2178 = fmul fast float %2177, %2173
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  br label %2180

; <label>:2180                                    ; preds = %2134, %2128
  %2181 = phi float [ %2179, %2134 ], [ %2129, %2128 ]
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 128
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2202, label %2186

; <label>:2186                                    ; preds = %2180
  %2187 = add i32 %42, 432
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %2189, 0
  %2191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2191, %dx.types.Handle %78, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 524288
  %2197 = icmp ne i32 %2196, 0
  %2198 = fcmp fast ogt float %2193, 0x3FE0101020000000
  %2199 = select i1 %2198, float 1.000000e+00, float 0.000000e+00
  %2200 = select i1 %2197, float %2199, float %2193
  %2201 = fmul fast float %2200, %2181
  br label %2202

; <label>:2202                                    ; preds = %2186, %2180
  %2203 = phi float [ %2201, %2186 ], [ %2181, %2180 ]
  %2204 = fcmp fast ult float %2203, 0x3F70101020000000
  br i1 %2204, label %2834, label %2205

; <label>:2205                                    ; preds = %2202
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 16
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2408, label %2210

; <label>:2210                                    ; preds = %2205
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %42, 384
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %2215, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2217, %dx.types.Handle %77, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.ResRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.ResRet.f32 %2218, 2
  %2222 = extractvalue %dx.types.ResRet.f32 %2218, 3
  %2223 = and i32 %2212, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = lshr i32 %2212, 8
  %2226 = and i32 %2225, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = fmul fast float %2222, %2224
  %2229 = fadd fast float %2228, %2227
  %2230 = fmul fast float %2229, 0x3F70101000000000
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 512
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2243, label %2235

; <label>:2235                                    ; preds = %2210
  %2236 = add i32 %42, 464
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = add i32 %2238, 0
  %2240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2240, %dx.types.Handle %78, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  br label %2243

; <label>:2243                                    ; preds = %2235, %2210
  %2244 = phi float [ %2242, %2235 ], [ 1.000000e+00, %2210 ]
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 33554432
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2355, label %2249

; <label>:2249                                    ; preds = %2243
  %2250 = add i32 %42, 256
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 65535
  %2254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2253)  ; LegacyF16ToF32(value)
  %2255 = lshr i32 %2252, 16
  %2256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2255)  ; LegacyF16ToF32(value)
  %2257 = add i32 %42, 260
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 65535
  %2261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2260)  ; LegacyF16ToF32(value)
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 24
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = and i32 %2263, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = lshr i32 %2263, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2263, 16
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = add i32 %42, 252
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = lshr i32 %2280, 24
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = and i32 %2280, 255
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2285, 0x3F70101020000000
  %2287 = lshr i32 %2280, 8
  %2288 = and i32 %2287, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2280, 16
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = bitcast float %2219 to i32
  %2296 = ashr i32 %2295, 1
  %2297 = sub nsw i32 1597463174, %2296
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2219, 5.000000e-01
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float 1.500000e+00, %2301
  %2303 = fmul fast float %2298, %2219
  %2304 = fmul fast float %2303, %2302
  %2305 = bitcast float %2220 to i32
  %2306 = ashr i32 %2305, 1
  %2307 = sub nsw i32 1597463174, %2306
  %2308 = bitcast i32 %2307 to float
  %2309 = fmul fast float %2220, 5.000000e-01
  %2310 = fmul fast float %2308, %2308
  %2311 = fmul fast float %2310, %2309
  %2312 = fsub fast float 1.500000e+00, %2311
  %2313 = fmul fast float %2308, %2220
  %2314 = fmul fast float %2313, %2312
  %2315 = bitcast float %2221 to i32
  %2316 = ashr i32 %2315, 1
  %2317 = sub nsw i32 1597463174, %2316
  %2318 = bitcast i32 %2317 to float
  %2319 = fmul fast float %2221, 5.000000e-01
  %2320 = fmul fast float %2318, %2318
  %2321 = fmul fast float %2320, %2319
  %2322 = fsub fast float 1.500000e+00, %2321
  %2323 = fmul fast float %2318, %2221
  %2324 = fmul fast float %2323, %2322
  %2325 = fsub fast float %2304, %2286
  %2326 = fsub fast float %2314, %2290
  %2327 = fsub fast float %2324, %2294
  %2328 = fmul fast float %2325, %2254
  %2329 = fmul fast float %2326, %2256
  %2330 = fmul fast float %2327, %2261
  %2331 = fadd fast float %2328, %2269
  %2332 = fadd fast float %2329, %2273
  %2333 = fadd fast float %2330, %2277
  %2334 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2335 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2336 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2337 = fmul fast float %2334, %2334
  %2338 = fmul fast float %2335, %2335
  %2339 = fmul fast float %2336, %2336
  %2340 = fsub fast float %2337, %2219
  %2341 = fsub fast float %2338, %2220
  %2342 = fsub fast float %2339, %2221
  %2343 = fmul fast float %2340, %2244
  %2344 = fmul fast float %2341, %2244
  %2345 = fmul fast float %2342, %2244
  %2346 = fadd fast float %2343, %2219
  %2347 = fadd fast float %2344, %2220
  %2348 = fadd fast float %2345, %2221
  %2349 = fadd fast float %2266, %2230
  %2350 = fsub fast float %2349, %2283
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2352 = fsub fast float %2351, %2230
  %2353 = fmul fast float %2352, %2244
  %2354 = fadd fast float %2353, %2230
  br label %2408

; <label>:2355                                    ; preds = %2243
  %2356 = and i32 %2246, 134217728
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2392, label %2358

; <label>:2358                                    ; preds = %2355
  %2359 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %2360 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2361 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2362 = fadd fast float %2359, -5.000000e-01
  %2363 = fadd fast float %2360, -5.000000e-01
  %2364 = fadd fast float %2361, -5.000000e-01
  %2365 = fmul fast float %2362, %2244
  %2366 = fmul fast float %2363, %2244
  %2367 = fmul fast float %2364, %2244
  %2368 = fadd fast float %2365, 5.000000e-01
  %2369 = fadd fast float %2366, 5.000000e-01
  %2370 = fadd fast float %2367, 5.000000e-01
  %2371 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2372 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2373 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2374 = fmul fast float %2368, 2.000000e+00
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = fmul fast float %2375, %2371
  %2377 = fadd fast float %2376, %2374
  %2378 = fmul fast float %2377, %2371
  %2379 = fmul fast float %2369, 2.000000e+00
  %2380 = fsub fast float 1.000000e+00, %2379
  %2381 = fmul fast float %2380, %2372
  %2382 = fadd fast float %2381, %2379
  %2383 = fmul fast float %2382, %2372
  %2384 = fmul fast float %2370, 2.000000e+00
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = fmul fast float %2385, %2373
  %2387 = fadd fast float %2386, %2384
  %2388 = fmul fast float %2387, %2373
  %2389 = fmul fast float %2378, %2378
  %2390 = fmul fast float %2383, %2383
  %2391 = fmul fast float %2388, %2388
  br label %2408

; <label>:2392                                    ; preds = %2355
  %2393 = fmul fast float %297, %297
  %2394 = fmul fast float %301, %301
  %2395 = fmul fast float %305, %305
  %2396 = fadd fast float %2393, -1.000000e+00
  %2397 = fadd fast float %2394, -1.000000e+00
  %2398 = fadd fast float %2395, -1.000000e+00
  %2399 = fmul fast float %2244, %2396
  %2400 = fmul fast float %2244, %2397
  %2401 = fmul fast float %2244, %2398
  %2402 = fadd fast float %2399, 1.000000e+00
  %2403 = fadd fast float %2400, 1.000000e+00
  %2404 = fadd fast float %2401, 1.000000e+00
  %2405 = fmul fast float %2402, %2219
  %2406 = fmul fast float %2403, %2220
  %2407 = fmul fast float %2404, %2221
  br label %2408

; <label>:2408                                    ; preds = %2392, %2358, %2249, %2205
  %2409 = phi float [ %2354, %2249 ], [ %2230, %2358 ], [ %2230, %2392 ], [ 0x3FA23C0BE0000000, %2205 ]
  %2410 = phi float [ %2346, %2249 ], [ %2389, %2358 ], [ %2405, %2392 ], [ 1.000000e+00, %2205 ]
  %2411 = phi float [ %2347, %2249 ], [ %2390, %2358 ], [ %2406, %2392 ], [ 1.000000e+00, %2205 ]
  %2412 = phi float [ %2348, %2249 ], [ %2391, %2358 ], [ %2407, %2392 ], [ 1.000000e+00, %2205 ]
  %2413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.i32 %2413, 1
  %2415 = and i32 %2414, 1
  %2416 = icmp ne i32 %2415, 0
  %2417 = add i32 %42, 356
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = and i32 %2419, 32
  %2421 = icmp ne i32 %2420, 0
  %2422 = and i1 %2416, %2421
  %2423 = select i1 %2422, float 1.000000e+00, float %2410
  %2424 = select i1 %2422, float 0x3FD3333340000000, float %2411
  %2425 = select i1 %2422, float 0x3FD3333340000000, float %2412
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 32
  %2429 = icmp eq i32 %2428, 0
  br i1 %2429, label %2502, label %2430

; <label>:2430                                    ; preds = %2408
  %2431 = add i32 %42, 124
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = add i32 %42, 400
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = add i32 %2436, 0
  %2438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2438, %dx.types.Handle %77, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = extractvalue %dx.types.ResRet.f32 %2439, 2
  %2443 = extractvalue %dx.types.ResRet.f32 %2439, 3
  %2444 = and i32 %2433, 255
  %2445 = uitofp i32 %2444 to float
  %2446 = lshr i32 %2433, 8
  %2447 = and i32 %2446, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = lshr i32 %2433, 16
  %2450 = and i32 %2449, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = fmul fast float %2451, 0x3F70101000000000
  %2453 = fmul fast float %2440, %2445
  %2454 = fadd fast float %2453, %2448
  %2455 = fmul fast float %2454, 0x3F70101000000000
  %2456 = fadd fast float %2441, -5.000000e-01
  %2457 = fadd fast float %2443, -5.000000e-01
  %2458 = fmul fast float %2456, %2452
  %2459 = fmul fast float %2457, %2452
  %2460 = fadd fast float %2458, 5.000000e-01
  %2461 = fadd fast float %2459, 5.000000e-01
  %2462 = fmul fast float %2460, 2.000000e+00
  %2463 = fadd fast float %2462, -1.000000e+00
  %2464 = fmul fast float %2461, 2.000000e+00
  %2465 = fadd fast float %2464, -1.000000e+00
  %2466 = fadd fast float %2463, %2465
  %2467 = fmul fast float %2466, 5.000000e-01
  %2468 = fsub fast float %2463, %2465
  %2469 = fmul fast float %2468, 5.000000e-01
  %2470 = call float @dx.op.unary.f32(i32 6, float %2467)  ; FAbs(value)
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = call float @dx.op.unary.f32(i32 6, float %2469)  ; FAbs(value)
  %2473 = fsub fast float %2471, %2472
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2469, float %2473, float %2467, float %2469, float %2473)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.unary.f32(i32 25, float %2474)  ; Rsqrt(value)
  %2476 = fmul fast float %2467, %2475
  %2477 = fmul fast float %2469, %2475
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 67108864
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2498, label %2482

; <label>:2482                                    ; preds = %2430
  %2483 = add i32 %42, 312
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 65535
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 65535
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = lshr i32 %2485, 16
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = fsub fast float %2455, %2493
  %2495 = fmul fast float %2494, %2487
  %2496 = fadd fast float %2495, %2491
  %2497 = call float @dx.op.unary.f32(i32 7, float %2496)  ; Saturate(value)
  br label %2498

; <label>:2498                                    ; preds = %2482, %2430
  %2499 = phi float [ %2497, %2482 ], [ %2455, %2430 ]
  %2500 = call float @dx.op.dot2.f32(i32 54, float %2476, float %2477, float %1919, float %1920)  ; Dot2(ax,ay,bx,by)
  %2501 = call float @dx.op.dot2.f32(i32 54, float %2476, float %2477, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  br label %2502

; <label>:2502                                    ; preds = %2498, %2408
  %2503 = phi float [ %2499, %2498 ], [ 0x3FD6666660000000, %2408 ]
  %2504 = phi float [ %2500, %2498 ], [ 0.000000e+00, %2408 ]
  %2505 = phi float [ %2501, %2498 ], [ 0.000000e+00, %2408 ]
  %2506 = phi float [ %2442, %2498 ], [ 1.000000e+00, %2408 ]
  %2507 = add i32 %42, 192
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = lshr i32 %2509, 22
  %2511 = shl nuw nsw i32 %2510, 5
  %2512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2511)  ; LegacyF16ToF32(value)
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 64
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2550, label %2517

; <label>:2517                                    ; preds = %2502
  %2518 = add i32 %42, 416
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 131072
  %2526 = icmp eq i32 %2525, 0
  %2527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %77, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.ResRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.ResRet.f32 %2527, 2
  %2531 = fmul fast float %2528, %285
  %2532 = fmul fast float %2529, %288
  %2533 = fmul fast float %2530, %291
  br i1 %2526, label %2540, label %2534

; <label>:2534                                    ; preds = %2517
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = fmul fast float %2536, %2531
  %2538 = fmul fast float %2536, %2532
  %2539 = fmul fast float %2536, %2533
  br label %2540

; <label>:2540                                    ; preds = %2534, %2517
  %2541 = phi float [ %2537, %2534 ], [ %2531, %2517 ]
  %2542 = phi float [ %2538, %2534 ], [ %2532, %2517 ]
  %2543 = phi float [ %2539, %2534 ], [ %2533, %2517 ]
  %2544 = fmul fast float %2541, %2512
  %2545 = select i1 %181, float %2544, float %2541
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2545, float %2542, float %2543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = select i1 %181, float 0.000000e+00, float %2541
  %2548 = select i1 %181, float %2546, float %2542
  %2549 = select i1 %181, float 0.000000e+00, float %2543
  br label %2550

; <label>:2550                                    ; preds = %2540, %2502
  %2551 = phi float [ %2547, %2540 ], [ 0.000000e+00, %2502 ]
  %2552 = phi float [ %2548, %2540 ], [ 0.000000e+00, %2502 ]
  %2553 = phi float [ %2549, %2540 ], [ 0.000000e+00, %2502 ]
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 10240
  %2557 = icmp eq i32 %2556, 0
  br i1 %2557, label %2602, label %2558

; <label>:2558                                    ; preds = %2550
  %2559 = add i32 %42, 480
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = add i32 %2561, 0
  %2563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2563, %dx.types.Handle %78, float %2015, float %2016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 1
  %2566 = extractvalue %dx.types.ResRet.f32 %2564, 3
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 1048576
  %2570 = icmp ne i32 %2569, 0
  %2571 = and i32 %2568, 8192
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2588, label %2573

; <label>:2573                                    ; preds = %2558
  %2574 = extractvalue %dx.types.ResRet.f32 %2564, 2
  %2575 = select i1 %2570, float %2574, float %2565
  %2576 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2577 = select i1 %2570, float %2576, float %2565
  %2578 = add i32 %42, 128
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = lshr i32 %2580, 16
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F80101020000000
  %2585 = fmul fast float %2584, %2577
  %2586 = fmul fast float %2584, %2565
  %2587 = fmul fast float %2584, %2575
  br label %2588

; <label>:2588                                    ; preds = %2573, %2558
  %2589 = phi float [ %2585, %2573 ], [ 0.000000e+00, %2558 ]
  %2590 = phi float [ %2586, %2573 ], [ 0.000000e+00, %2558 ]
  %2591 = phi float [ %2587, %2573 ], [ 0.000000e+00, %2558 ]
  %2592 = and i32 %2568, 2048
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %2602, label %2594

; <label>:2594                                    ; preds = %2588
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = shl i32 %2596, 4
  %2598 = and i32 %2597, 32752
  %2599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2598)  ; LegacyF16ToF32(value)
  %2600 = fmul fast float %2599, %2566
  %2601 = call float @dx.op.binary.f32(i32 35, float %2600, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2602

; <label>:2602                                    ; preds = %2594, %2588, %2550
  %2603 = phi float [ %2589, %2594 ], [ %2589, %2588 ], [ 0.000000e+00, %2550 ]
  %2604 = phi float [ %2590, %2594 ], [ %2590, %2588 ], [ 0.000000e+00, %2550 ]
  %2605 = phi float [ %2591, %2594 ], [ %2591, %2588 ], [ 0.000000e+00, %2550 ]
  %2606 = phi float [ %2601, %2594 ], [ 0x3F70101020000000, %2588 ], [ 0x3F70101020000000, %2550 ]
  %2607 = add i32 %42, 128
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = lshr i32 %2609, 8
  %2613 = and i32 %2612, 255
  %2614 = uitofp i32 %2613 to float
  %2615 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2424, float %2425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2616 = fmul fast float %2614, %2615
  %2617 = fadd fast float %2616, %2611
  %2618 = fmul fast float %2617, 0x3F70101020000000
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  br i1 %1907, label %2620, label %2628

; <label>:2620                                    ; preds = %2602
  %2621 = fsub fast float 1.000000e+00, %2203
  %2622 = fmul fast float %2621, %1892
  %2623 = fmul fast float %2621, %1893
  %2624 = fmul fast float %2621, %1894
  %2625 = fmul fast float %2621, %1895
  %2626 = fmul fast float %2621, %1896
  %2627 = fmul fast float %2621, %1897
  br label %2628

; <label>:2628                                    ; preds = %2620, %2602
  %2629 = phi float [ %2622, %2620 ], [ %1892, %2602 ]
  %2630 = phi float [ %2623, %2620 ], [ %1893, %2602 ]
  %2631 = phi float [ %2624, %2620 ], [ %1894, %2602 ]
  %2632 = phi float [ %2625, %2620 ], [ %1895, %2602 ]
  %2633 = phi float [ %2626, %2620 ], [ %1896, %2602 ]
  %2634 = phi float [ %2627, %2620 ], [ %1897, %2602 ]
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 3
  %2638 = icmp eq i32 %2637, 3
  br i1 %2638, label %2717, label %2639

; <label>:2639                                    ; preds = %2628
  %2640 = and i32 %2636, 16
  %2641 = icmp ne i32 %2640, 0
  %2642 = select i1 %2641, float %2203, float 0.000000e+00
  %2643 = icmp eq i32 %2637, 0
  br i1 %2643, label %2644, label %2672

; <label>:2644                                    ; preds = %2639
  %2645 = and i32 %2636, 64
  %2646 = icmp ne i32 %2645, 0
  %2647 = select i1 %2646, float %2203, float 0.000000e+00
  %2648 = fsub fast float %2423, %2629
  %2649 = fsub fast float %2424, %2630
  %2650 = fsub fast float %2425, %2631
  %2651 = fmul fast float %2642, %2648
  %2652 = fmul fast float %2642, %2649
  %2653 = fmul fast float %2642, %2650
  %2654 = fadd fast float %2651, %2629
  %2655 = fadd fast float %2652, %2630
  %2656 = fadd fast float %2653, %2631
  %2657 = fsub fast float %2409, %1901
  %2658 = fmul fast float %2642, %2657
  %2659 = fadd fast float %2658, %1901
  %2660 = fsub fast float %2551, %2632
  %2661 = fsub fast float %2552, %2633
  %2662 = fsub fast float %2553, %2634
  %2663 = fmul fast float %2647, %2660
  %2664 = fmul fast float %2647, %2661
  %2665 = fmul fast float %2647, %2662
  %2666 = fadd fast float %2663, %2632
  %2667 = fadd fast float %2664, %2633
  %2668 = fadd fast float %2665, %2634
  %2669 = fsub fast float %2619, %1905
  %2670 = fmul fast float %2642, %2669
  %2671 = fadd fast float %2670, %1905
  br label %2717

; <label>:2672                                    ; preds = %2639
  %2673 = icmp eq i32 %2637, 1
  br i1 %2673, label %2674, label %2687

; <label>:2674                                    ; preds = %2672
  %2675 = fadd fast float %2423, -1.000000e+00
  %2676 = fadd fast float %2424, -1.000000e+00
  %2677 = fadd fast float %2425, -1.000000e+00
  %2678 = fmul fast float %2642, %2675
  %2679 = fmul fast float %2642, %2676
  %2680 = fmul fast float %2642, %2677
  %2681 = fadd fast float %2678, 1.000000e+00
  %2682 = fadd fast float %2679, 1.000000e+00
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fmul fast float %2681, %2629
  %2685 = fmul fast float %2682, %2630
  %2686 = fmul fast float %2683, %2631
  br label %2717

; <label>:2687                                    ; preds = %2672
  %2688 = icmp eq i32 %2637, 2
  br i1 %2688, label %2689, label %2717

; <label>:2689                                    ; preds = %2687
  %2690 = call float @dx.op.unary.f32(i32 24, float %2423)  ; Sqrt(value)
  %2691 = call float @dx.op.unary.f32(i32 24, float %2424)  ; Sqrt(value)
  %2692 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2693 = fadd fast float %2690, -5.000000e-01
  %2694 = fadd fast float %2691, -5.000000e-01
  %2695 = fadd fast float %2692, -5.000000e-01
  %2696 = fmul fast float %2693, %2642
  %2697 = fmul fast float %2694, %2642
  %2698 = fmul fast float %2695, %2642
  %2699 = fadd fast float %2696, 5.000000e-01
  %2700 = fadd fast float %2697, 5.000000e-01
  %2701 = fadd fast float %2698, 5.000000e-01
  %2702 = fmul fast float %2699, 2.000000e+00
  %2703 = fsub fast float 1.000000e+00, %2702
  %2704 = fmul fast float %2703, %2629
  %2705 = fadd fast float %2704, %2702
  %2706 = fmul fast float %2705, %2629
  %2707 = fmul fast float %2700, 2.000000e+00
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2708, %2630
  %2710 = fadd fast float %2709, %2707
  %2711 = fmul fast float %2710, %2630
  %2712 = fmul fast float %2701, 2.000000e+00
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = fmul fast float %2713, %2631
  %2715 = fadd fast float %2714, %2712
  %2716 = fmul fast float %2715, %2631
  br label %2717

; <label>:2717                                    ; preds = %2689, %2687, %2674, %2644, %2628
  %2718 = phi float [ %2629, %2628 ], [ %2706, %2689 ], [ %2629, %2687 ], [ %2684, %2674 ], [ %2654, %2644 ]
  %2719 = phi float [ %2630, %2628 ], [ %2711, %2689 ], [ %2630, %2687 ], [ %2685, %2674 ], [ %2655, %2644 ]
  %2720 = phi float [ %2631, %2628 ], [ %2716, %2689 ], [ %2631, %2687 ], [ %2686, %2674 ], [ %2656, %2644 ]
  %2721 = phi float [ %2632, %2628 ], [ %2632, %2689 ], [ %2632, %2687 ], [ %2632, %2674 ], [ %2666, %2644 ]
  %2722 = phi float [ %2633, %2628 ], [ %2633, %2689 ], [ %2633, %2687 ], [ %2633, %2674 ], [ %2667, %2644 ]
  %2723 = phi float [ %2634, %2628 ], [ %2634, %2689 ], [ %2634, %2687 ], [ %2634, %2674 ], [ %2668, %2644 ]
  %2724 = phi float [ %1901, %2628 ], [ %1901, %2689 ], [ %1901, %2687 ], [ %1901, %2674 ], [ %2659, %2644 ]
  %2725 = phi float [ %1905, %2628 ], [ %1905, %2689 ], [ %1905, %2687 ], [ %1905, %2674 ], [ %2671, %2644 ]
  %2726 = and i32 %2636, 12
  %2727 = icmp eq i32 %2726, 12
  br i1 %2727, label %2834, label %2728

; <label>:2728                                    ; preds = %2717
  %2729 = and i32 %2636, 2097184
  %2730 = icmp eq i32 %2729, 2097184
  %2731 = select i1 %2730, float %2203, float 0.000000e+00
  %2732 = and i32 %2636, 4194336
  %2733 = icmp eq i32 %2732, 4194336
  %2734 = select i1 %2733, float %2203, float 0.000000e+00
  %2735 = and i32 %2636, 8388640
  %2736 = icmp eq i32 %2735, 8388640
  %2737 = select i1 %2736, float %2203, float 0.000000e+00
  %2738 = and i32 %2636, 2048
  %2739 = icmp ne i32 %2738, 0
  %2740 = select i1 %2739, float %2203, float 0.000000e+00
  %2741 = and i32 %2636, 8192
  %2742 = icmp ne i32 %2741, 0
  %2743 = select i1 %2742, float %2203, float 0.000000e+00
  %2744 = icmp eq i32 %2726, 0
  br i1 %2744, label %2745, label %2770

; <label>:2745                                    ; preds = %2728
  %2746 = fsub fast float %2504, %1890
  %2747 = fsub fast float %2505, %1891
  %2748 = fmul fast float %2731, %2746
  %2749 = fmul fast float %2731, %2747
  %2750 = fadd fast float %2748, %1890
  %2751 = fadd fast float %2749, %1891
  %2752 = fsub fast float %2506, %1903
  %2753 = fmul fast float %2734, %2752
  %2754 = fadd fast float %2753, %1903
  %2755 = fsub fast float %2503, %1902
  %2756 = fmul fast float %2737, %2755
  %2757 = fadd fast float %2756, %1902
  %2758 = fsub fast float %2606, %1904
  %2759 = fmul fast float %2740, %2758
  %2760 = fadd fast float %2759, %1904
  %2761 = fsub fast float %2603, %1898
  %2762 = fsub fast float %2604, %1899
  %2763 = fsub fast float %2605, %1900
  %2764 = fmul fast float %2743, %2761
  %2765 = fmul fast float %2743, %2762
  %2766 = fmul fast float %2743, %2763
  %2767 = fadd fast float %2764, %1898
  %2768 = fadd fast float %2765, %1899
  %2769 = fadd fast float %2766, %1900
  br label %2834

; <label>:2770                                    ; preds = %2728
  %2771 = icmp eq i32 %2726, 4
  br i1 %2771, label %2772, label %2812

; <label>:2772                                    ; preds = %2770
  %2773 = fmul fast float %2731, %2504
  %2774 = fmul fast float %2731, %2505
  %2775 = fadd fast float %2773, %1890
  %2776 = fadd fast float %2774, %1891
  %2777 = call float @dx.op.binary.f32(i32 36, float %1903, float %2506)  ; FMin(a,b)
  %2778 = fsub fast float %2777, %1903
  %2779 = fmul fast float %2778, %2734
  %2780 = fadd fast float %2779, %1903
  %2781 = fadd fast float %2503, %1902
  %2782 = fmul fast float %2781, 0x3FF337FAE0000000
  %2783 = fmul fast float %1902, %1902
  %2784 = fmul fast float %2503, %2503
  %2785 = fadd fast float %2784, %2783
  %2786 = fmul fast float %2785, 0x3FE5152B00000000
  %2787 = fmul fast float %1902, 0xBFCC1F85E0000000
  %2788 = fmul fast float %2787, %2503
  %2789 = fadd fast float %2788, 0xBFE1363700000000
  %2790 = fadd fast float %2789, %2782
  %2791 = fsub fast float %2790, %2786
  %2792 = fmul fast float %2781, 0x3FBA6F0D00000000
  %2793 = fmul fast float %2785, 0x3FD0432880000000
  %2794 = fmul fast float %1902, 0xBFEF110800000000
  %2795 = fmul fast float %2794, %2503
  %2796 = fadd fast float %2795, 1.000000e+00
  %2797 = fsub fast float %2796, %2792
  %2798 = fadd fast float %2797, %2793
  %2799 = fdiv fast float %2791, %2798
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = fsub fast float %2800, %1902
  %2802 = fmul fast float %2801, %2737
  %2803 = fadd fast float %2802, %1902
  %2804 = fmul fast float %2740, %2606
  %2805 = fadd fast float %2804, %1904
  %2806 = fmul fast float %2743, %2603
  %2807 = fmul fast float %2743, %2604
  %2808 = fmul fast float %2743, %2605
  %2809 = fadd fast float %2806, %1898
  %2810 = fadd fast float %2807, %1899
  %2811 = fadd fast float %2808, %1900
  br label %2834

; <label>:2812                                    ; preds = %2770
  %2813 = icmp eq i32 %2726, 8
  br i1 %2813, label %2814, label %2834

; <label>:2814                                    ; preds = %2812
  %2815 = fmul fast float %2731, %2504
  %2816 = fmul fast float %2731, %2505
  %2817 = fadd fast float %2815, %1890
  %2818 = fadd fast float %2816, %1891
  %2819 = call float @dx.op.binary.f32(i32 36, float %1903, float %2506)  ; FMin(a,b)
  %2820 = fsub fast float %2819, %1903
  %2821 = fmul fast float %2820, %2734
  %2822 = fadd fast float %2821, %1903
  %2823 = fsub fast float %2503, %1902
  %2824 = fmul fast float %2737, %2823
  %2825 = fadd fast float %2824, %1902
  %2826 = fmul fast float %2740, %2606
  %2827 = fadd fast float %2826, %1904
  %2828 = fmul fast float %2743, %2603
  %2829 = fmul fast float %2743, %2604
  %2830 = fmul fast float %2743, %2605
  %2831 = fadd fast float %2828, %1898
  %2832 = fadd fast float %2829, %1899
  %2833 = fadd fast float %2830, %1900
  br label %2834

; <label>:2834                                    ; preds = %2814, %2812, %2772, %2745, %2717, %2202, %1906, %1889
  %2835 = phi float [ %1890, %2717 ], [ %1890, %2202 ], [ %1890, %1889 ], [ %2817, %2814 ], [ %1890, %2812 ], [ %2775, %2772 ], [ %2750, %2745 ], [ %1890, %1906 ]
  %2836 = phi float [ %1891, %2717 ], [ %1891, %2202 ], [ %1891, %1889 ], [ %2818, %2814 ], [ %1891, %2812 ], [ %2776, %2772 ], [ %2751, %2745 ], [ %1891, %1906 ]
  %2837 = phi float [ %2718, %2717 ], [ %1892, %2202 ], [ %1892, %1889 ], [ %2718, %2814 ], [ %2718, %2812 ], [ %2718, %2772 ], [ %2718, %2745 ], [ %1892, %1906 ]
  %2838 = phi float [ %2719, %2717 ], [ %1893, %2202 ], [ %1893, %1889 ], [ %2719, %2814 ], [ %2719, %2812 ], [ %2719, %2772 ], [ %2719, %2745 ], [ %1893, %1906 ]
  %2839 = phi float [ %2720, %2717 ], [ %1894, %2202 ], [ %1894, %1889 ], [ %2720, %2814 ], [ %2720, %2812 ], [ %2720, %2772 ], [ %2720, %2745 ], [ %1894, %1906 ]
  %2840 = phi float [ %2721, %2717 ], [ %1895, %2202 ], [ %1895, %1889 ], [ %2721, %2814 ], [ %2721, %2812 ], [ %2721, %2772 ], [ %2721, %2745 ], [ %1895, %1906 ]
  %2841 = phi float [ %2722, %2717 ], [ %1896, %2202 ], [ %1896, %1889 ], [ %2722, %2814 ], [ %2722, %2812 ], [ %2722, %2772 ], [ %2722, %2745 ], [ %1896, %1906 ]
  %2842 = phi float [ %2723, %2717 ], [ %1897, %2202 ], [ %1897, %1889 ], [ %2723, %2814 ], [ %2723, %2812 ], [ %2723, %2772 ], [ %2723, %2745 ], [ %1897, %1906 ]
  %2843 = phi float [ %1898, %2717 ], [ %1898, %2202 ], [ %1898, %1889 ], [ %2831, %2814 ], [ %1898, %2812 ], [ %2809, %2772 ], [ %2767, %2745 ], [ %1898, %1906 ]
  %2844 = phi float [ %1899, %2717 ], [ %1899, %2202 ], [ %1899, %1889 ], [ %2832, %2814 ], [ %1899, %2812 ], [ %2810, %2772 ], [ %2768, %2745 ], [ %1899, %1906 ]
  %2845 = phi float [ %1900, %2717 ], [ %1900, %2202 ], [ %1900, %1889 ], [ %2833, %2814 ], [ %1900, %2812 ], [ %2811, %2772 ], [ %2769, %2745 ], [ %1900, %1906 ]
  %2846 = phi float [ %2724, %2717 ], [ %1901, %2202 ], [ %1901, %1889 ], [ %2724, %2814 ], [ %2724, %2812 ], [ %2724, %2772 ], [ %2724, %2745 ], [ %1901, %1906 ]
  %2847 = phi float [ %1902, %2717 ], [ %1902, %2202 ], [ %1902, %1889 ], [ %2825, %2814 ], [ %1902, %2812 ], [ %2803, %2772 ], [ %2757, %2745 ], [ %1902, %1906 ]
  %2848 = phi float [ %1903, %2717 ], [ %1903, %2202 ], [ %1903, %1889 ], [ %2822, %2814 ], [ %1903, %2812 ], [ %2780, %2772 ], [ %2754, %2745 ], [ %1903, %1906 ]
  %2849 = phi float [ %1904, %2717 ], [ %1904, %2202 ], [ %1904, %1889 ], [ %2827, %2814 ], [ %1904, %2812 ], [ %2805, %2772 ], [ %2760, %2745 ], [ %1904, %1906 ]
  %2850 = phi float [ %2725, %2717 ], [ %1905, %2202 ], [ %1905, %1889 ], [ %2725, %2814 ], [ %2725, %2812 ], [ %2725, %2772 ], [ %2725, %2745 ], [ %1905, %1906 ]
  br i1 %372, label %3779, label %2851

; <label>:2851                                    ; preds = %2834
  %2852 = icmp ult i32 %423, 4
  %2853 = add i32 %42, 72
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = add i32 %42, 76
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = or i32 %2858, %2855
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %3779, label %2861

; <label>:2861                                    ; preds = %2851
  %2862 = and i32 %2855, 262144
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %44, float 1.000000e+00
  %2865 = select i1 %2863, float %45, float 0.000000e+00
  %2866 = select i1 %2863, float %46, float 0.000000e+00
  %2867 = select i1 %2863, float %47, float 1.000000e+00
  %2868 = select i1 %2863, float %48, float %69
  %2869 = select i1 %2863, float %49, float %70
  %2870 = add i32 %42, 332
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = lshr i32 %2872, 16
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = fmul fast float %2874, 0x3F50624DE0000000
  %2876 = add i32 %42, 136
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 16
  %2880 = and i32 %2879, 255
  %2881 = lshr i32 %2878, 24
  %2882 = add i32 %42, 340
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = lshr i32 %2884, 16
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = add i32 %42, 80
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 22
  %2893 = shl nuw nsw i32 %2892, 5
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = shl i32 %2891, 4
  %2896 = and i32 %2895, 32752
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2891, 7
  %2899 = and i32 %2898, 32752
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 3
  %2903 = fmul fast float %2902, 1.000000e+03
  %2904 = fmul fast float %362, %2903
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = fadd fast float %2905, %352
  %2907 = fmul fast float %363, %2903
  %2908 = call float @dx.op.unary.f32(i32 22, float %2907)  ; Frc(value)
  %2909 = fadd fast float %2908, %354
  %2910 = fmul fast float %2875, %2903
  %2911 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2912 = fmul fast float %2911, 0x401921FB60000000
  %2913 = fadd fast float %2912, %2894
  %2914 = call float @dx.op.unary.f32(i32 13, float %2913)  ; Sin(value)
  %2915 = call float @dx.op.unary.f32(i32 12, float %2913)  ; Cos(value)
  %2916 = fsub fast float -0.000000e+00, %2914
  %2917 = fadd fast float %2868, -5.000000e-01
  %2918 = fadd fast float %2869, -5.000000e-01
  %2919 = fmul fast float %2886, %2917
  %2920 = fmul fast float %2888, %2918
  %2921 = fadd fast float %2919, 5.000000e-01
  %2922 = fadd fast float %2920, 5.000000e-01
  %2923 = fmul fast float %2897, %2921
  %2924 = fmul fast float %2900, %2922
  %2925 = fmul fast float %2915, %2923
  %2926 = call float @dx.op.tertiary.f32(i32 46, float %2916, float %2924, float %2925)  ; FMad(a,b,c)
  %2927 = fmul fast float %2914, %2923
  %2928 = call float @dx.op.tertiary.f32(i32 46, float %2915, float %2924, float %2927)  ; FMad(a,b,c)
  %2929 = fadd fast float %2906, %2926
  %2930 = fadd fast float %2909, %2928
  %2931 = icmp ugt i32 %2880, 1
  %2932 = icmp ugt i32 %2878, 33554431
  %2933 = or i1 %2932, %2931
  br i1 %2933, label %2934, label %2959

; <label>:2934                                    ; preds = %2861
  %2935 = add i32 %42, 276
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fmul fast float %2902, %2939
  %2941 = call float @dx.op.unary.f32(i32 22, float %2940)  ; Frc(value)
  %2942 = mul nuw nsw i32 %2880, %2881
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2941, %2943
  %2945 = call float @dx.op.unary.f32(i32 27, float %2944)  ; Round_ni(value)
  %2946 = fptoui float %2945 to i32
  %2947 = urem i32 %2946, %2880
  %2948 = udiv i32 %2946, %2881
  %2949 = call float @dx.op.unary.f32(i32 22, float %2929)  ; Frc(value)
  %2950 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2951 = uitofp i32 %2947 to float
  %2952 = uitofp i32 %2948 to float
  %2953 = fadd fast float %2949, %2951
  %2954 = fadd fast float %2950, %2952
  %2955 = uitofp i32 %2880 to float
  %2956 = uitofp i32 %2881 to float
  %2957 = fdiv fast float %2953, %2955
  %2958 = fdiv fast float %2954, %2956
  br label %2959

; <label>:2959                                    ; preds = %2934, %2861
  %2960 = phi float [ %2957, %2934 ], [ %2929, %2861 ]
  %2961 = phi float [ %2958, %2934 ], [ %2930, %2861 ]
  %2962 = and i32 %2855, 16777216
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %3073, label %2964

; <label>:2964                                    ; preds = %2959
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2969 = fadd fast float %2966, %137
  %2970 = fadd fast float %2967, %138
  %2971 = fadd fast float %2968, %139
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2975 = icmp eq i32 %43, 65535
  br i1 %2975, label %3070, label %2976

; <label>:2976                                    ; preds = %2964
  %2977 = lshr i32 %43, 1
  %2978 = shl i32 %2977, 2
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %43, 1
  %2982 = icmp ne i32 %2981, 0
  %2983 = lshr i32 %2980, 16
  %2984 = and i32 %2980, 65535
  %2985 = select i1 %2982, i32 %2983, i32 %2984
  %2986 = icmp eq i32 %2985, 65535
  br i1 %2986, label %3066, label %2987

; <label>:2987                                    ; preds = %2976
  %2988 = mul nuw nsw i32 %2985, 40
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = add nuw nsw i32 %2988, 12
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = add nuw nsw i32 %2988, 24
  %2999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2998, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.f32 %2999, 0
  %3001 = extractvalue %dx.types.ResRet.f32 %2999, 1
  %3002 = extractvalue %dx.types.ResRet.f32 %2999, 2
  %3003 = add nuw nsw i32 %2988, 36
  %3004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = fsub fast float %2969, %2990
  %3007 = fsub fast float %2970, %2991
  %3008 = fsub fast float %2971, %2992
  %3009 = fmul fast float %3005, %3006
  %3010 = fmul fast float %3005, %3007
  %3011 = fmul fast float %3005, %3008
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fmul fast float %3015, %2995
  %3019 = fmul fast float %3016, %2996
  %3020 = fmul fast float %3017, %2997
  %3021 = shl i32 %43, 2
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = add i32 %3023, 0
  %3025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3026 = call float @dx.op.unary.f32(i32 22, float %3018)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3028 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3025, %dx.types.Handle %37, float %3026, float %3027, float %3028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = fmul fast float %3030, 1.023000e+03
  %3034 = fmul fast float %3031, 1.023000e+03
  %3035 = fmul fast float %3032, 1.023000e+03
  %3036 = fadd fast float %3033, 5.000000e-01
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3040 = call float @dx.op.unary.f32(i32 27, float %3037)  ; Round_ni(value)
  %3041 = call float @dx.op.unary.f32(i32 27, float %3038)  ; Round_ni(value)
  %3042 = fsub fast float %3009, %3012
  %3043 = fsub fast float %3010, %3013
  %3044 = fsub fast float %3011, %3014
  %3045 = fmul fast float %3042, 7.500000e-01
  %3046 = fmul fast float %3043, 7.500000e-01
  %3047 = fmul fast float %3044, 7.500000e-01
  %3048 = fadd fast float %3012, 1.250000e-01
  %3049 = fadd fast float %3048, %3045
  %3050 = fadd fast float %3049, %3039
  %3051 = fadd fast float %3013, 1.250000e-01
  %3052 = fadd fast float %3051, %3046
  %3053 = fadd fast float %3052, %3040
  %3054 = fadd fast float %3014, 1.250000e-01
  %3055 = fadd fast float %3054, %3047
  %3056 = fadd fast float %3055, %3041
  %3057 = fmul fast float %3050, %3000
  %3058 = fmul fast float %3053, %3001
  %3059 = fmul fast float %3056, %3002
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = add i32 %3061, 0
  %3063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3063, %dx.types.Handle %35, float %3057, float %3058, float %3059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  br label %3066

; <label>:3066                                    ; preds = %2987, %2976
  %3067 = phi float [ %3065, %2987 ], [ -1.000000e+00, %2976 ]
  %3068 = fadd fast float %3067, %2974
  %3069 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  br label %3070

; <label>:3070                                    ; preds = %3066, %2964
  %3071 = phi float [ %3069, %3066 ], [ %2974, %2964 ]
  %3072 = fmul fast float %3071, %418
  br label %3073

; <label>:3073                                    ; preds = %3070, %2959
  %3074 = phi float [ %3072, %3070 ], [ %418, %2959 ]
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = and i32 %3076, 256
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3125, label %3079

; <label>:3079                                    ; preds = %3073
  %3080 = add i32 %42, 452
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = add i32 %3082, 0
  %3084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3084, %dx.types.Handle %78, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = add i32 %42, 148
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = shl i32 %3089, 4
  %3091 = and i32 %3090, 32752
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = lshr i32 %3089, 7
  %3094 = and i32 %3093, 32752
  %3095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3094)  ; LegacyF16ToF32(value)
  %3096 = fsub fast float 1.000000e+00, %3074
  %3097 = call float @dx.op.binary.f32(i32 35, float %3096, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3098 = bitcast float %3074 to i32
  %3099 = sitofp i32 %3098 to float
  %3100 = fadd fast float %3099, 0xC1CFBF8940000000
  %3101 = fmul fast float %3095, %3100
  %3102 = fadd fast float %3101, 0x41CFBF8940000000
  %3103 = fptosi float %3102 to i32
  %3104 = bitcast i32 %3103 to float
  %3105 = bitcast float %3097 to i32
  %3106 = sitofp i32 %3105 to float
  %3107 = fadd fast float %3106, 0xC1CFBF8940000000
  %3108 = fmul fast float %3107, %3095
  %3109 = fadd fast float %3108, 0x41CFBF8940000000
  %3110 = fptosi float %3109 to i32
  %3111 = bitcast i32 %3110 to float
  %3112 = fmul fast float %3104, %3092
  %3113 = fmul fast float %3111, %3092
  %3114 = fsub fast float %3097, %3112
  %3115 = fadd fast float %3113, %3097
  %3116 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3117 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3118 = fsub fast float %3086, %3116
  %3119 = fsub fast float %3117, %3116
  %3120 = bitcast float %3119 to i32
  %3121 = sub nsw i32 2129859010, %3120
  %3122 = bitcast i32 %3121 to float
  %3123 = fmul fast float %3122, %3118
  %3124 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  br label %3125

; <label>:3125                                    ; preds = %3079, %3073
  %3126 = phi float [ %3124, %3079 ], [ %3074, %3073 ]
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 128
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3147, label %3131

; <label>:3131                                    ; preds = %3125
  %3132 = add i32 %42, 436
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %3134, 0
  %3136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3136, %dx.types.Handle %78, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 524288
  %3142 = icmp ne i32 %3141, 0
  %3143 = fcmp fast ogt float %3138, 0x3FE0101020000000
  %3144 = select i1 %3143, float 1.000000e+00, float 0.000000e+00
  %3145 = select i1 %3142, float %3144, float %3138
  %3146 = fmul fast float %3145, %3126
  br label %3147

; <label>:3147                                    ; preds = %3131, %3125
  %3148 = phi float [ %3146, %3131 ], [ %3126, %3125 ]
  %3149 = fcmp fast ult float %3148, 0x3F70101020000000
  br i1 %3149, label %3779, label %3150

; <label>:3150                                    ; preds = %3147
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 16
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3353, label %3155

; <label>:3155                                    ; preds = %3150
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %42, 388
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %3160, 0
  %3162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3162, %dx.types.Handle %77, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = extractvalue %dx.types.ResRet.f32 %3163, 3
  %3168 = and i32 %3157, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = lshr i32 %3157, 8
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3167, %3169
  %3174 = fadd fast float %3173, %3172
  %3175 = fmul fast float %3174, 0x3F70101000000000
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 512
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3188, label %3180

; <label>:3180                                    ; preds = %3155
  %3181 = add i32 %42, 468
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %78, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  br label %3188

; <label>:3188                                    ; preds = %3180, %3155
  %3189 = phi float [ %3187, %3180 ], [ 1.000000e+00, %3155 ]
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 33554432
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3300, label %3194

; <label>:3194                                    ; preds = %3188
  %3195 = add i32 %42, 272
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = lshr i32 %3197, 16
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = add i32 %42, 276
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 65535
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = lshr i32 %3208, 24
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = and i32 %3208, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = lshr i32 %3208, 8
  %3216 = and i32 %3215, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3208, 16
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = add i32 %42, 268
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = lshr i32 %3225, 24
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = and i32 %3225, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = fmul fast float %3230, 0x3F70101020000000
  %3232 = lshr i32 %3225, 8
  %3233 = and i32 %3232, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = fmul fast float %3234, 0x3F70101020000000
  %3236 = lshr i32 %3225, 16
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = bitcast float %3164 to i32
  %3241 = ashr i32 %3240, 1
  %3242 = sub nsw i32 1597463174, %3241
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3164, 5.000000e-01
  %3245 = fmul fast float %3243, %3243
  %3246 = fmul fast float %3245, %3244
  %3247 = fsub fast float 1.500000e+00, %3246
  %3248 = fmul fast float %3243, %3164
  %3249 = fmul fast float %3248, %3247
  %3250 = bitcast float %3165 to i32
  %3251 = ashr i32 %3250, 1
  %3252 = sub nsw i32 1597463174, %3251
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3165, 5.000000e-01
  %3255 = fmul fast float %3253, %3253
  %3256 = fmul fast float %3255, %3254
  %3257 = fsub fast float 1.500000e+00, %3256
  %3258 = fmul fast float %3253, %3165
  %3259 = fmul fast float %3258, %3257
  %3260 = bitcast float %3166 to i32
  %3261 = ashr i32 %3260, 1
  %3262 = sub nsw i32 1597463174, %3261
  %3263 = bitcast i32 %3262 to float
  %3264 = fmul fast float %3166, 5.000000e-01
  %3265 = fmul fast float %3263, %3263
  %3266 = fmul fast float %3265, %3264
  %3267 = fsub fast float 1.500000e+00, %3266
  %3268 = fmul fast float %3263, %3166
  %3269 = fmul fast float %3268, %3267
  %3270 = fsub fast float %3249, %3231
  %3271 = fsub fast float %3259, %3235
  %3272 = fsub fast float %3269, %3239
  %3273 = fmul fast float %3270, %3199
  %3274 = fmul fast float %3271, %3201
  %3275 = fmul fast float %3272, %3206
  %3276 = fadd fast float %3273, %3214
  %3277 = fadd fast float %3274, %3218
  %3278 = fadd fast float %3275, %3222
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = fmul fast float %3279, %3279
  %3283 = fmul fast float %3280, %3280
  %3284 = fmul fast float %3281, %3281
  %3285 = fsub fast float %3282, %3164
  %3286 = fsub fast float %3283, %3165
  %3287 = fsub fast float %3284, %3166
  %3288 = fmul fast float %3285, %3189
  %3289 = fmul fast float %3286, %3189
  %3290 = fmul fast float %3287, %3189
  %3291 = fadd fast float %3288, %3164
  %3292 = fadd fast float %3289, %3165
  %3293 = fadd fast float %3290, %3166
  %3294 = fadd fast float %3211, %3175
  %3295 = fsub fast float %3294, %3228
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = fsub fast float %3296, %3175
  %3298 = fmul fast float %3297, %3189
  %3299 = fadd fast float %3298, %3175
  br label %3353

; <label>:3300                                    ; preds = %3188
  %3301 = and i32 %3191, 134217728
  %3302 = icmp eq i32 %3301, 0
  br i1 %3302, label %3337, label %3303

; <label>:3303                                    ; preds = %3300
  %3304 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3306 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3307 = fadd fast float %3304, -5.000000e-01
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fmul fast float %3307, %3189
  %3311 = fmul fast float %3308, %3189
  %3312 = fmul fast float %3309, %3189
  %3313 = fadd fast float %3310, 5.000000e-01
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3318 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3319 = fmul fast float %3313, 2.000000e+00
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3320, %3316
  %3322 = fadd fast float %3321, %3319
  %3323 = fmul fast float %3322, %3316
  %3324 = fmul fast float %3314, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3317
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3317
  %3329 = fmul fast float %3315, 2.000000e+00
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3330, %3318
  %3332 = fadd fast float %3331, %3329
  %3333 = fmul fast float %3332, %3318
  %3334 = fmul fast float %3323, %3323
  %3335 = fmul fast float %3328, %3328
  %3336 = fmul fast float %3333, %3333
  br label %3353

; <label>:3337                                    ; preds = %3300
  %3338 = fmul fast float %339, %339
  %3339 = fmul fast float %343, %343
  %3340 = fmul fast float %347, %347
  %3341 = fadd fast float %3338, -1.000000e+00
  %3342 = fadd fast float %3339, -1.000000e+00
  %3343 = fadd fast float %3340, -1.000000e+00
  %3344 = fmul fast float %3189, %3341
  %3345 = fmul fast float %3189, %3342
  %3346 = fmul fast float %3189, %3343
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fmul fast float %3347, %3164
  %3351 = fmul fast float %3348, %3165
  %3352 = fmul fast float %3349, %3166
  br label %3353

; <label>:3353                                    ; preds = %3337, %3303, %3194, %3150
  %3354 = phi float [ %3299, %3194 ], [ %3175, %3303 ], [ %3175, %3337 ], [ 0x3FA23C0BE0000000, %3150 ]
  %3355 = phi float [ %3291, %3194 ], [ %3334, %3303 ], [ %3350, %3337 ], [ 1.000000e+00, %3150 ]
  %3356 = phi float [ %3292, %3194 ], [ %3335, %3303 ], [ %3351, %3337 ], [ 1.000000e+00, %3150 ]
  %3357 = phi float [ %3293, %3194 ], [ %3336, %3303 ], [ %3352, %3337 ], [ 1.000000e+00, %3150 ]
  %3358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.i32 %3358, 1
  %3360 = and i32 %3359, 1
  %3361 = icmp ne i32 %3360, 0
  %3362 = add i32 %42, 356
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = and i32 %3364, 32
  %3366 = icmp ne i32 %3365, 0
  %3367 = and i1 %3361, %3366
  %3368 = select i1 %3367, float 1.000000e+00, float %3355
  %3369 = select i1 %3367, float 0x3FD3333340000000, float %3356
  %3370 = select i1 %3367, float 0x3FD3333340000000, float %3357
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, 32
  %3374 = icmp eq i32 %3373, 0
  br i1 %3374, label %3447, label %3375

; <label>:3375                                    ; preds = %3353
  %3376 = add i32 %42, 140
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = add i32 %42, 404
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = add i32 %3381, 0
  %3383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3383, %dx.types.Handle %77, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = extractvalue %dx.types.ResRet.f32 %3384, 3
  %3389 = and i32 %3378, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = lshr i32 %3378, 8
  %3392 = and i32 %3391, 255
  %3393 = uitofp i32 %3392 to float
  %3394 = lshr i32 %3378, 16
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = fmul fast float %3396, 0x3F70101000000000
  %3398 = fmul fast float %3385, %3390
  %3399 = fadd fast float %3398, %3393
  %3400 = fmul fast float %3399, 0x3F70101000000000
  %3401 = fadd fast float %3386, -5.000000e-01
  %3402 = fadd fast float %3388, -5.000000e-01
  %3403 = fmul fast float %3401, %3397
  %3404 = fmul fast float %3402, %3397
  %3405 = fadd fast float %3403, 5.000000e-01
  %3406 = fadd fast float %3404, 5.000000e-01
  %3407 = fmul fast float %3405, 2.000000e+00
  %3408 = fadd fast float %3407, -1.000000e+00
  %3409 = fmul fast float %3406, 2.000000e+00
  %3410 = fadd fast float %3409, -1.000000e+00
  %3411 = fadd fast float %3408, %3410
  %3412 = fmul fast float %3411, 5.000000e-01
  %3413 = fsub fast float %3408, %3410
  %3414 = fmul fast float %3413, 5.000000e-01
  %3415 = call float @dx.op.unary.f32(i32 6, float %3412)  ; FAbs(value)
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3418 = fsub fast float %3416, %3417
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3414, float %3418, float %3412, float %3414, float %3418)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = call float @dx.op.unary.f32(i32 25, float %3419)  ; Rsqrt(value)
  %3421 = fmul fast float %3412, %3420
  %3422 = fmul fast float %3414, %3420
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 67108864
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3443, label %3427

; <label>:3427                                    ; preds = %3375
  %3428 = add i32 %42, 328
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 65535
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 65535
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = lshr i32 %3430, 16
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = fsub fast float %3400, %3438
  %3440 = fmul fast float %3439, %3432
  %3441 = fadd fast float %3440, %3436
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  br label %3443

; <label>:3443                                    ; preds = %3427, %3375
  %3444 = phi float [ %3442, %3427 ], [ %3400, %3375 ]
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3421, float %3422, float %2864, float %2865)  ; Dot2(ax,ay,bx,by)
  %3446 = call float @dx.op.dot2.f32(i32 54, float %3421, float %3422, float %2866, float %2867)  ; Dot2(ax,ay,bx,by)
  br label %3447

; <label>:3447                                    ; preds = %3443, %3353
  %3448 = phi float [ %3444, %3443 ], [ 0x3FD6666660000000, %3353 ]
  %3449 = phi float [ %3445, %3443 ], [ 0.000000e+00, %3353 ]
  %3450 = phi float [ %3446, %3443 ], [ 0.000000e+00, %3353 ]
  %3451 = phi float [ %3387, %3443 ], [ 1.000000e+00, %3353 ]
  %3452 = add i32 %42, 208
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = lshr i32 %3454, 22
  %3456 = shl nuw nsw i32 %3455, 5
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 64
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3495, label %3462

; <label>:3462                                    ; preds = %3447
  %3463 = add i32 %42, 420
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = add i32 %3465, 0
  %3467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 131072
  %3471 = icmp eq i32 %3470, 0
  %3472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3467, %dx.types.Handle %77, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = fmul fast float %3473, %327
  %3477 = fmul fast float %3474, %330
  %3478 = fmul fast float %3475, %333
  br i1 %3471, label %3485, label %3479

; <label>:3479                                    ; preds = %3462
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = fmul fast float %3481, %3476
  %3483 = fmul fast float %3481, %3477
  %3484 = fmul fast float %3481, %3478
  br label %3485

; <label>:3485                                    ; preds = %3479, %3462
  %3486 = phi float [ %3482, %3479 ], [ %3476, %3462 ]
  %3487 = phi float [ %3483, %3479 ], [ %3477, %3462 ]
  %3488 = phi float [ %3484, %3479 ], [ %3478, %3462 ]
  %3489 = fmul fast float %3486, %3457
  %3490 = select i1 %181, float %3489, float %3486
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3487, float %3488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = select i1 %181, float 0.000000e+00, float %3486
  %3493 = select i1 %181, float %3491, float %3487
  %3494 = select i1 %181, float 0.000000e+00, float %3488
  br label %3495

; <label>:3495                                    ; preds = %3485, %3447
  %3496 = phi float [ %3492, %3485 ], [ 0.000000e+00, %3447 ]
  %3497 = phi float [ %3493, %3485 ], [ 0.000000e+00, %3447 ]
  %3498 = phi float [ %3494, %3485 ], [ 0.000000e+00, %3447 ]
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 10240
  %3502 = icmp eq i32 %3501, 0
  br i1 %3502, label %3547, label %3503

; <label>:3503                                    ; preds = %3495
  %3504 = add i32 %42, 484
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = add i32 %3506, 0
  %3508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3508, %dx.types.Handle %78, float %2960, float %2961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 3
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = and i32 %3513, 1048576
  %3515 = icmp ne i32 %3514, 0
  %3516 = and i32 %3513, 8192
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3533, label %3518

; <label>:3518                                    ; preds = %3503
  %3519 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3520 = select i1 %3515, float %3519, float %3510
  %3521 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3522 = select i1 %3515, float %3521, float %3510
  %3523 = add i32 %42, 144
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = lshr i32 %3525, 16
  %3527 = and i32 %3526, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = fmul fast float %3528, 0x3F80101020000000
  %3530 = fmul fast float %3529, %3522
  %3531 = fmul fast float %3529, %3510
  %3532 = fmul fast float %3529, %3520
  br label %3533

; <label>:3533                                    ; preds = %3518, %3503
  %3534 = phi float [ %3530, %3518 ], [ 0.000000e+00, %3503 ]
  %3535 = phi float [ %3531, %3518 ], [ 0.000000e+00, %3503 ]
  %3536 = phi float [ %3532, %3518 ], [ 0.000000e+00, %3503 ]
  %3537 = and i32 %3513, 2048
  %3538 = icmp eq i32 %3537, 0
  br i1 %3538, label %3547, label %3539

; <label>:3539                                    ; preds = %3533
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = shl i32 %3541, 4
  %3543 = and i32 %3542, 32752
  %3544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3543)  ; LegacyF16ToF32(value)
  %3545 = fmul fast float %3544, %3511
  %3546 = call float @dx.op.binary.f32(i32 35, float %3545, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3547

; <label>:3547                                    ; preds = %3539, %3533, %3495
  %3548 = phi float [ %3534, %3539 ], [ %3534, %3533 ], [ 0.000000e+00, %3495 ]
  %3549 = phi float [ %3535, %3539 ], [ %3535, %3533 ], [ 0.000000e+00, %3495 ]
  %3550 = phi float [ %3536, %3539 ], [ %3536, %3533 ], [ 0.000000e+00, %3495 ]
  %3551 = phi float [ %3546, %3539 ], [ 0x3F70101020000000, %3533 ], [ 0x3F70101020000000, %3495 ]
  %3552 = add i32 %42, 144
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 255
  %3556 = uitofp i32 %3555 to float
  %3557 = lshr i32 %3554, 8
  %3558 = and i32 %3557, 255
  %3559 = uitofp i32 %3558 to float
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3368, float %3369, float %3370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = fmul fast float %3559, %3560
  %3562 = fadd fast float %3561, %3556
  %3563 = fmul fast float %3562, 0x3F70101020000000
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  br i1 %2852, label %3565, label %3573

; <label>:3565                                    ; preds = %3547
  %3566 = fsub fast float 1.000000e+00, %3148
  %3567 = fmul fast float %3566, %2837
  %3568 = fmul fast float %3566, %2838
  %3569 = fmul fast float %3566, %2839
  %3570 = fmul fast float %3566, %2840
  %3571 = fmul fast float %3566, %2841
  %3572 = fmul fast float %3566, %2842
  br label %3573

; <label>:3573                                    ; preds = %3565, %3547
  %3574 = phi float [ %3567, %3565 ], [ %2837, %3547 ]
  %3575 = phi float [ %3568, %3565 ], [ %2838, %3547 ]
  %3576 = phi float [ %3569, %3565 ], [ %2839, %3547 ]
  %3577 = phi float [ %3570, %3565 ], [ %2840, %3547 ]
  %3578 = phi float [ %3571, %3565 ], [ %2841, %3547 ]
  %3579 = phi float [ %3572, %3565 ], [ %2842, %3547 ]
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = and i32 %3581, 3
  %3583 = icmp eq i32 %3582, 3
  br i1 %3583, label %3662, label %3584

; <label>:3584                                    ; preds = %3573
  %3585 = and i32 %3581, 16
  %3586 = icmp ne i32 %3585, 0
  %3587 = select i1 %3586, float %3148, float 0.000000e+00
  %3588 = icmp eq i32 %3582, 0
  br i1 %3588, label %3589, label %3617

; <label>:3589                                    ; preds = %3584
  %3590 = and i32 %3581, 64
  %3591 = icmp ne i32 %3590, 0
  %3592 = select i1 %3591, float %3148, float 0.000000e+00
  %3593 = fsub fast float %3368, %3574
  %3594 = fsub fast float %3369, %3575
  %3595 = fsub fast float %3370, %3576
  %3596 = fmul fast float %3587, %3593
  %3597 = fmul fast float %3587, %3594
  %3598 = fmul fast float %3587, %3595
  %3599 = fadd fast float %3596, %3574
  %3600 = fadd fast float %3597, %3575
  %3601 = fadd fast float %3598, %3576
  %3602 = fsub fast float %3354, %2846
  %3603 = fmul fast float %3587, %3602
  %3604 = fadd fast float %3603, %2846
  %3605 = fsub fast float %3496, %3577
  %3606 = fsub fast float %3497, %3578
  %3607 = fsub fast float %3498, %3579
  %3608 = fmul fast float %3592, %3605
  %3609 = fmul fast float %3592, %3606
  %3610 = fmul fast float %3592, %3607
  %3611 = fadd fast float %3608, %3577
  %3612 = fadd fast float %3609, %3578
  %3613 = fadd fast float %3610, %3579
  %3614 = fsub fast float %3564, %2850
  %3615 = fmul fast float %3587, %3614
  %3616 = fadd fast float %3615, %2850
  br label %3662

; <label>:3617                                    ; preds = %3584
  %3618 = icmp eq i32 %3582, 1
  br i1 %3618, label %3619, label %3632

; <label>:3619                                    ; preds = %3617
  %3620 = fadd fast float %3368, -1.000000e+00
  %3621 = fadd fast float %3369, -1.000000e+00
  %3622 = fadd fast float %3370, -1.000000e+00
  %3623 = fmul fast float %3587, %3620
  %3624 = fmul fast float %3587, %3621
  %3625 = fmul fast float %3587, %3622
  %3626 = fadd fast float %3623, 1.000000e+00
  %3627 = fadd fast float %3624, 1.000000e+00
  %3628 = fadd fast float %3625, 1.000000e+00
  %3629 = fmul fast float %3626, %3574
  %3630 = fmul fast float %3627, %3575
  %3631 = fmul fast float %3628, %3576
  br label %3662

; <label>:3632                                    ; preds = %3617
  %3633 = icmp eq i32 %3582, 2
  br i1 %3633, label %3634, label %3662

; <label>:3634                                    ; preds = %3632
  %3635 = call float @dx.op.unary.f32(i32 24, float %3368)  ; Sqrt(value)
  %3636 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3637 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3638 = fadd fast float %3635, -5.000000e-01
  %3639 = fadd fast float %3636, -5.000000e-01
  %3640 = fadd fast float %3637, -5.000000e-01
  %3641 = fmul fast float %3638, %3587
  %3642 = fmul fast float %3639, %3587
  %3643 = fmul fast float %3640, %3587
  %3644 = fadd fast float %3641, 5.000000e-01
  %3645 = fadd fast float %3642, 5.000000e-01
  %3646 = fadd fast float %3643, 5.000000e-01
  %3647 = fmul fast float %3644, 2.000000e+00
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = fmul fast float %3648, %3574
  %3650 = fadd fast float %3649, %3647
  %3651 = fmul fast float %3650, %3574
  %3652 = fmul fast float %3645, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3575
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3575
  %3657 = fmul fast float %3646, 2.000000e+00
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = fmul fast float %3658, %3576
  %3660 = fadd fast float %3659, %3657
  %3661 = fmul fast float %3660, %3576
  br label %3662

; <label>:3662                                    ; preds = %3634, %3632, %3619, %3589, %3573
  %3663 = phi float [ %3574, %3573 ], [ %3651, %3634 ], [ %3574, %3632 ], [ %3629, %3619 ], [ %3599, %3589 ]
  %3664 = phi float [ %3575, %3573 ], [ %3656, %3634 ], [ %3575, %3632 ], [ %3630, %3619 ], [ %3600, %3589 ]
  %3665 = phi float [ %3576, %3573 ], [ %3661, %3634 ], [ %3576, %3632 ], [ %3631, %3619 ], [ %3601, %3589 ]
  %3666 = phi float [ %3577, %3573 ], [ %3577, %3634 ], [ %3577, %3632 ], [ %3577, %3619 ], [ %3611, %3589 ]
  %3667 = phi float [ %3578, %3573 ], [ %3578, %3634 ], [ %3578, %3632 ], [ %3578, %3619 ], [ %3612, %3589 ]
  %3668 = phi float [ %3579, %3573 ], [ %3579, %3634 ], [ %3579, %3632 ], [ %3579, %3619 ], [ %3613, %3589 ]
  %3669 = phi float [ %2846, %3573 ], [ %2846, %3634 ], [ %2846, %3632 ], [ %2846, %3619 ], [ %3604, %3589 ]
  %3670 = phi float [ %2850, %3573 ], [ %2850, %3634 ], [ %2850, %3632 ], [ %2850, %3619 ], [ %3616, %3589 ]
  %3671 = and i32 %3581, 12
  %3672 = icmp eq i32 %3671, 12
  br i1 %3672, label %3779, label %3673

; <label>:3673                                    ; preds = %3662
  %3674 = and i32 %3581, 2097184
  %3675 = icmp eq i32 %3674, 2097184
  %3676 = select i1 %3675, float %3148, float 0.000000e+00
  %3677 = and i32 %3581, 4194336
  %3678 = icmp eq i32 %3677, 4194336
  %3679 = select i1 %3678, float %3148, float 0.000000e+00
  %3680 = and i32 %3581, 8388640
  %3681 = icmp eq i32 %3680, 8388640
  %3682 = select i1 %3681, float %3148, float 0.000000e+00
  %3683 = and i32 %3581, 2048
  %3684 = icmp ne i32 %3683, 0
  %3685 = select i1 %3684, float %3148, float 0.000000e+00
  %3686 = and i32 %3581, 8192
  %3687 = icmp ne i32 %3686, 0
  %3688 = select i1 %3687, float %3148, float 0.000000e+00
  %3689 = icmp eq i32 %3671, 0
  br i1 %3689, label %3690, label %3715

; <label>:3690                                    ; preds = %3673
  %3691 = fsub fast float %3449, %2835
  %3692 = fsub fast float %3450, %2836
  %3693 = fmul fast float %3676, %3691
  %3694 = fmul fast float %3676, %3692
  %3695 = fadd fast float %3693, %2835
  %3696 = fadd fast float %3694, %2836
  %3697 = fsub fast float %3451, %2848
  %3698 = fmul fast float %3679, %3697
  %3699 = fadd fast float %3698, %2848
  %3700 = fsub fast float %3448, %2847
  %3701 = fmul fast float %3682, %3700
  %3702 = fadd fast float %3701, %2847
  %3703 = fsub fast float %3551, %2849
  %3704 = fmul fast float %3685, %3703
  %3705 = fadd fast float %3704, %2849
  %3706 = fsub fast float %3548, %2843
  %3707 = fsub fast float %3549, %2844
  %3708 = fsub fast float %3550, %2845
  %3709 = fmul fast float %3688, %3706
  %3710 = fmul fast float %3688, %3707
  %3711 = fmul fast float %3688, %3708
  %3712 = fadd fast float %3709, %2843
  %3713 = fadd fast float %3710, %2844
  %3714 = fadd fast float %3711, %2845
  br label %3779

; <label>:3715                                    ; preds = %3673
  %3716 = icmp eq i32 %3671, 4
  br i1 %3716, label %3717, label %3757

; <label>:3717                                    ; preds = %3715
  %3718 = fmul fast float %3676, %3449
  %3719 = fmul fast float %3676, %3450
  %3720 = fadd fast float %3718, %2835
  %3721 = fadd fast float %3719, %2836
  %3722 = call float @dx.op.binary.f32(i32 36, float %2848, float %3451)  ; FMin(a,b)
  %3723 = fsub fast float %3722, %2848
  %3724 = fmul fast float %3723, %3679
  %3725 = fadd fast float %3724, %2848
  %3726 = fadd fast float %3448, %2847
  %3727 = fmul fast float %3726, 0x3FF337FAE0000000
  %3728 = fmul fast float %2847, %2847
  %3729 = fmul fast float %3448, %3448
  %3730 = fadd fast float %3729, %3728
  %3731 = fmul fast float %3730, 0x3FE5152B00000000
  %3732 = fmul fast float %2847, 0xBFCC1F85E0000000
  %3733 = fmul fast float %3732, %3448
  %3734 = fadd fast float %3733, 0xBFE1363700000000
  %3735 = fadd fast float %3734, %3727
  %3736 = fsub fast float %3735, %3731
  %3737 = fmul fast float %3726, 0x3FBA6F0D00000000
  %3738 = fmul fast float %3730, 0x3FD0432880000000
  %3739 = fmul fast float %2847, 0xBFEF110800000000
  %3740 = fmul fast float %3739, %3448
  %3741 = fadd fast float %3740, 1.000000e+00
  %3742 = fsub fast float %3741, %3737
  %3743 = fadd fast float %3742, %3738
  %3744 = fdiv fast float %3736, %3743
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fsub fast float %3745, %2847
  %3747 = fmul fast float %3746, %3682
  %3748 = fadd fast float %3747, %2847
  %3749 = fmul fast float %3685, %3551
  %3750 = fadd fast float %3749, %2849
  %3751 = fmul fast float %3688, %3548
  %3752 = fmul fast float %3688, %3549
  %3753 = fmul fast float %3688, %3550
  %3754 = fadd fast float %3751, %2843
  %3755 = fadd fast float %3752, %2844
  %3756 = fadd fast float %3753, %2845
  br label %3779

; <label>:3757                                    ; preds = %3715
  %3758 = icmp eq i32 %3671, 8
  br i1 %3758, label %3759, label %3779

; <label>:3759                                    ; preds = %3757
  %3760 = fmul fast float %3676, %3449
  %3761 = fmul fast float %3676, %3450
  %3762 = fadd fast float %3760, %2835
  %3763 = fadd fast float %3761, %2836
  %3764 = call float @dx.op.binary.f32(i32 36, float %2848, float %3451)  ; FMin(a,b)
  %3765 = fsub fast float %3764, %2848
  %3766 = fmul fast float %3765, %3679
  %3767 = fadd fast float %3766, %2848
  %3768 = fsub fast float %3448, %2847
  %3769 = fmul fast float %3682, %3768
  %3770 = fadd fast float %3769, %2847
  %3771 = fmul fast float %3685, %3551
  %3772 = fadd fast float %3771, %2849
  %3773 = fmul fast float %3688, %3548
  %3774 = fmul fast float %3688, %3549
  %3775 = fmul fast float %3688, %3550
  %3776 = fadd fast float %3773, %2843
  %3777 = fadd fast float %3774, %2844
  %3778 = fadd fast float %3775, %2845
  br label %3779

; <label>:3779                                    ; preds = %3759, %3757, %3717, %3690, %3662, %3147, %2851, %2834
  %3780 = phi float [ %2835, %3662 ], [ %2835, %3147 ], [ %2835, %2834 ], [ %2835, %2851 ], [ %3695, %3690 ], [ %3720, %3717 ], [ %2835, %3757 ], [ %3762, %3759 ]
  %3781 = phi float [ %2836, %3662 ], [ %2836, %3147 ], [ %2836, %2834 ], [ %2836, %2851 ], [ %3696, %3690 ], [ %3721, %3717 ], [ %2836, %3757 ], [ %3763, %3759 ]
  %3782 = phi float [ %3663, %3662 ], [ %2837, %3147 ], [ %2837, %2834 ], [ %2837, %2851 ], [ %3663, %3690 ], [ %3663, %3717 ], [ %3663, %3757 ], [ %3663, %3759 ]
  %3783 = phi float [ %3664, %3662 ], [ %2838, %3147 ], [ %2838, %2834 ], [ %2838, %2851 ], [ %3664, %3690 ], [ %3664, %3717 ], [ %3664, %3757 ], [ %3664, %3759 ]
  %3784 = phi float [ %3665, %3662 ], [ %2839, %3147 ], [ %2839, %2834 ], [ %2839, %2851 ], [ %3665, %3690 ], [ %3665, %3717 ], [ %3665, %3757 ], [ %3665, %3759 ]
  %3785 = phi float [ %3666, %3662 ], [ %2840, %3147 ], [ %2840, %2834 ], [ %2840, %2851 ], [ %3666, %3690 ], [ %3666, %3717 ], [ %3666, %3757 ], [ %3666, %3759 ]
  %3786 = phi float [ %3667, %3662 ], [ %2841, %3147 ], [ %2841, %2834 ], [ %2841, %2851 ], [ %3667, %3690 ], [ %3667, %3717 ], [ %3667, %3757 ], [ %3667, %3759 ]
  %3787 = phi float [ %3668, %3662 ], [ %2842, %3147 ], [ %2842, %2834 ], [ %2842, %2851 ], [ %3668, %3690 ], [ %3668, %3717 ], [ %3668, %3757 ], [ %3668, %3759 ]
  %3788 = phi float [ %2843, %3662 ], [ %2843, %3147 ], [ %2843, %2834 ], [ %2843, %2851 ], [ %3712, %3690 ], [ %3754, %3717 ], [ %2843, %3757 ], [ %3776, %3759 ]
  %3789 = phi float [ %2844, %3662 ], [ %2844, %3147 ], [ %2844, %2834 ], [ %2844, %2851 ], [ %3713, %3690 ], [ %3755, %3717 ], [ %2844, %3757 ], [ %3777, %3759 ]
  %3790 = phi float [ %2845, %3662 ], [ %2845, %3147 ], [ %2845, %2834 ], [ %2845, %2851 ], [ %3714, %3690 ], [ %3756, %3717 ], [ %2845, %3757 ], [ %3778, %3759 ]
  %3791 = phi float [ %3669, %3662 ], [ %2846, %3147 ], [ %2846, %2834 ], [ %2846, %2851 ], [ %3669, %3690 ], [ %3669, %3717 ], [ %3669, %3757 ], [ %3669, %3759 ]
  %3792 = phi float [ %2847, %3662 ], [ %2847, %3147 ], [ %2847, %2834 ], [ %2847, %2851 ], [ %3702, %3690 ], [ %3748, %3717 ], [ %2847, %3757 ], [ %3770, %3759 ]
  %3793 = phi float [ %2848, %3662 ], [ %2848, %3147 ], [ %2848, %2834 ], [ %2848, %2851 ], [ %3699, %3690 ], [ %3725, %3717 ], [ %2848, %3757 ], [ %3767, %3759 ]
  %3794 = phi float [ %2849, %3662 ], [ %2849, %3147 ], [ %2849, %2834 ], [ %2849, %2851 ], [ %3705, %3690 ], [ %3750, %3717 ], [ %2849, %3757 ], [ %3772, %3759 ]
  %3795 = phi float [ %3670, %3662 ], [ %2850, %3147 ], [ %2850, %2834 ], [ %2850, %2851 ], [ %3670, %3690 ], [ %3670, %3717 ], [ %3670, %3757 ], [ %3670, %3759 ]
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3798 = call float @dx.op.dot2.f32(i32 54, float %3780, float %3781, float %3780, float %3781)  ; Dot2(ax,ay,bx,by)
  %3799 = fmul fast float %3798, 0x3FE3333340000000
  %3800 = fsub fast float 1.000000e+00, %3799
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3780, float %3781, float %3800, float %3780, float %3781, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.unary.f32(i32 25, float %3801)  ; Rsqrt(value)
  %3803 = fmul fast float %3802, %3780
  %3804 = fmul fast float %3802, %3781
  %3805 = fmul fast float %3800, %3802
  %3806 = fmul fast float %3805, %90
  %3807 = fmul fast float %3805, %92
  %3808 = fmul fast float %3805, %94
  %3809 = fmul fast float %3803, %62
  %3810 = fmul fast float %3803, %63
  %3811 = fmul fast float %3803, %64
  %3812 = fmul fast float %97, %65
  %3813 = fmul fast float %3812, %3804
  %3814 = fmul fast float %100, %65
  %3815 = fmul fast float %3814, %3804
  %3816 = fmul fast float %103, %65
  %3817 = fmul fast float %3816, %3804
  %3818 = fadd fast float %3813, %3809
  %3819 = fmul fast float %3818, %83
  %3820 = fadd fast float %3819, %3806
  %3821 = fadd fast float %3815, %3810
  %3822 = fmul fast float %3821, %83
  %3823 = fadd fast float %3822, %3807
  %3824 = fadd fast float %3817, %3811
  %3825 = fmul fast float %3824, %83
  %3826 = fadd fast float %3825, %3808
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3823, float %3826, float %3820, float %3823, float %3826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call float @dx.op.unary.f32(i32 25, float %3827)  ; Rsqrt(value)
  %3829 = fmul fast float %3820, %3828
  %3830 = fmul fast float %3823, %3828
  %3831 = fmul fast float %3826, %3828
  %3832 = fadd fast float %3791, 0xBFB99999A0000000
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = fmul fast float %3833, 0x3FF1C71C80000000
  %3835 = call float @dx.op.binary.f32(i32 36, float %3791, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3836 = fsub fast float 1.000000e+00, %3834
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = fmul fast float %3837, %3782
  %3839 = fmul fast float %3837, %3783
  %3840 = fmul fast float %3837, %3784
  %3841 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3843 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3844 = fmul fast float %3834, %3782
  %3845 = fmul fast float %3834, %3783
  %3846 = fmul fast float %3834, %3784
  %3847 = fadd fast float %3844, %3835
  %3848 = fadd fast float %3845, %3835
  %3849 = fadd fast float %3846, %3835
  %3850 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3851 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = and i32 %3855, 1
  %3857 = icmp eq i32 %3856, 0
  br i1 %3857, label %3872, label %3858

; <label>:3858                                    ; preds = %3779
  %3859 = call float @dx.op.binary.f32(i32 35, float %3842, float %3843)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3841, float %3859)  ; FMax(a,b)
  %3861 = fcmp fast ogt float %3860, 0.000000e+00
  %3862 = bitcast float %3860 to i32
  %3863 = sub nsw i32 2129859010, %3862
  %3864 = bitcast i32 %3863 to float
  %3865 = select i1 %3861, float %3864, float 0.000000e+00
  %3866 = fmul fast float %3841, %3788
  %3867 = fmul fast float %3842, %3789
  %3868 = fmul fast float %3843, %3790
  %3869 = fmul fast float %3866, %3865
  %3870 = fmul fast float %3867, %3865
  %3871 = fmul fast float %3868, %3865
  br label %3872

; <label>:3872                                    ; preds = %3858, %3779
  %3873 = phi float [ %3869, %3858 ], [ %3788, %3779 ]
  %3874 = phi float [ %3870, %3858 ], [ %3789, %3779 ]
  %3875 = phi float [ %3871, %3858 ], [ %3790, %3779 ]
  %3876 = fadd fast float %3841, 0xBFD51EB860000000
  %3877 = fadd fast float %3842, 0xBFD51EB860000000
  %3878 = fadd fast float %3843, 0xBFD51EB860000000
  %3879 = fmul fast float %3876, %3876
  %3880 = fmul fast float %3877, %3877
  %3881 = fmul fast float %3878, %3878
  %3882 = fmul fast float %3879, %3879
  %3883 = fmul fast float %3882, 1.000000e+02
  %3884 = fmul fast float %3880, %3880
  %3885 = fmul fast float %3884, 1.000000e+02
  %3886 = fmul fast float %3881, %3881
  %3887 = fmul fast float %3886, 1.000000e+02
  %3888 = fadd fast float %3883, 3.500000e+00
  %3889 = fadd fast float %3885, 3.500000e+00
  %3890 = fadd fast float %3887, 3.500000e+00
  %3891 = call float @dx.op.binary.f32(i32 35, float %3873, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3892 = call float @dx.op.binary.f32(i32 35, float %3874, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3893 = call float @dx.op.binary.f32(i32 35, float %3875, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3894 = fdiv fast float %3888, %3891
  %3895 = fdiv fast float %3889, %3892
  %3896 = fdiv fast float %3890, %3893
  %3897 = fmul fast float %3794, 0xBFF7154760000000
  %3898 = fmul fast float %3897, %3894
  %3899 = call float @dx.op.unary.f32(i32 21, float %3898)  ; Exp(value)
  %3900 = fmul fast float %3899, 2.500000e-01
  %3901 = fmul fast float %3794, 0xBFDEC709E0000000
  %3902 = fmul fast float %3901, %3894
  %3903 = call float @dx.op.unary.f32(i32 21, float %3902)  ; Exp(value)
  %3904 = fmul fast float %3903, 7.500000e-01
  %3905 = fmul fast float %3897, %3895
  %3906 = call float @dx.op.unary.f32(i32 21, float %3905)  ; Exp(value)
  %3907 = fmul fast float %3906, 2.500000e-01
  %3908 = fmul fast float %3901, %3895
  %3909 = call float @dx.op.unary.f32(i32 21, float %3908)  ; Exp(value)
  %3910 = fmul fast float %3909, 7.500000e-01
  %3911 = fmul fast float %3897, %3896
  %3912 = call float @dx.op.unary.f32(i32 21, float %3911)  ; Exp(value)
  %3913 = fmul fast float %3912, 2.500000e-01
  %3914 = fmul fast float %3901, %3896
  %3915 = call float @dx.op.unary.f32(i32 21, float %3914)  ; Exp(value)
  %3916 = fmul fast float %3915, 7.500000e-01
  %3917 = fadd fast float %3900, %3904
  %3918 = fadd fast float %3907, %3910
  %3919 = fadd fast float %3913, %3916
  %3920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.i32 %3920, 3
  %3922 = and i32 %3921, 8
  %3923 = icmp ne i32 %3922, 0
  %3924 = call float @dx.op.binary.f32(i32 35, float %3841, float %3782)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3842, float %3782)  ; FMax(a,b)
  %3926 = call float @dx.op.binary.f32(i32 35, float %3843, float %3782)  ; FMax(a,b)
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = select i1 %181, float %3782, float %3841
  %3929 = select i1 %181, float %3927, float %3842
  %3930 = select i1 %181, float 1.000000e+00, float %3843
  %3931 = select i1 %3923, float %3924, float %3928
  %3932 = select i1 %3923, float %3925, float %3929
  %3933 = select i1 %3923, float %3926, float %3930
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3938 = fadd fast float %3935, %137
  %3939 = fadd fast float %3936, %138
  %3940 = fadd fast float %3937, %139
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = fsub fast float %3938, %3942
  %3945 = fsub fast float %3939, %3943
  %3946 = fmul fast float %3944, %3944
  %3947 = fmul fast float %3945, %3945
  %3948 = fadd fast float %3946, %3947
  %3949 = call float @dx.op.unary.f32(i32 24, float %3948)  ; Sqrt(value)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3951 = fcmp fast olt float %3949, %3950
  br i1 %3951, label %3952, label %4019

; <label>:3952                                    ; preds = %3872
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3960 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3963 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3964 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3965 = fadd fast float %3962, %3938
  %3966 = fadd fast float %3963, %3939
  %3967 = fadd fast float %3964, %3940
  %3968 = fmul fast float %3965, %3954
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3956, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = fmul fast float %3965, %3959
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3961, float %3972)  ; FMad(a,b,c)
  %3974 = fsub fast float %3970, %3962
  %3975 = fsub fast float %3973, %3963
  %3976 = fsub fast float %3974, %3942
  %3977 = fadd fast float %3976, %3950
  %3978 = fsub fast float %3975, %3943
  %3979 = fadd fast float %3978, %3950
  %3980 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3981 = fmul fast float %3977, %3980
  %3982 = fmul fast float %3979, %3980
  %3983 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3985 = fsub fast float 1.000000e+00, %3983
  %3986 = fsub fast float 1.000000e+00, %3984
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = fcmp fast ugt float %3988, 0.000000e+00
  br i1 %3989, label %3990, label %4293

; <label>:3990                                    ; preds = %3952
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3993 = fmul fast float %3992, %3988
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3995 = fadd fast float %3994, %3993
  %3996 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3997 = fadd fast float %3995, %3964
  %3998 = fmul fast float %3970, %3958
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3961, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3996, float %3999)  ; FMad(a,b,c)
  %4001 = fsub fast float %4000, %3964
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fsub fast float %4001, %4003
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %4006
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  %4015 = fadd fast float %4011, %4007
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  %4017 = fadd fast float %4012, %4008
  %4018 = fmul fast float %4017, 0x3F847AE140000000
  br label %4293

; <label>:4019                                    ; preds = %3872
  %4020 = and i32 %155, 1
  %4021 = icmp eq i32 %4020, 0
  br i1 %4021, label %4293, label %4022

; <label>:4022                                    ; preds = %4019
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4033 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4034 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4035 = fadd fast float %4032, %3938
  %4036 = fadd fast float %4033, %3939
  %4037 = fadd fast float %4034, %3940
  %4038 = fmul fast float %4035, %4024
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4026, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %4035, %4029
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4030, float %4041)  ; FMad(a,b,c)
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4031, float %4042)  ; FMad(a,b,c)
  %4044 = fsub fast float %4040, %4032
  %4045 = fsub fast float %4043, %4033
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.i32 %4053, 1
  %4056 = udiv i32 %4055, %4054
  %4057 = fsub fast float %4044, %4047
  %4058 = fsub fast float %4045, %4048
  %4059 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4061 = call float @dx.op.binary.f32(i32 36, float %4059, float %4049)  ; FMin(a,b)
  %4062 = call float @dx.op.binary.f32(i32 36, float %4060, float %4050)  ; FMin(a,b)
  %4063 = add i32 %4054, -1
  %4064 = add i32 %4056, -1
  %4065 = fmul fast float %4061, %4052
  %4066 = fmul fast float %4062, %4052
  %4067 = fptoui float %4065 to i32
  %4068 = fptoui float %4066 to i32
  %4069 = call i32 @dx.op.binary.i32(i32 40, i32 %4067, i32 %4063)  ; UMin(a,b)
  %4070 = call i32 @dx.op.binary.i32(i32 40, i32 %4068, i32 %4064)  ; UMin(a,b)
  %4071 = mul i32 %4070, %4054
  %4072 = add i32 %4071, %4069
  %4073 = shl i32 %4072, 2
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = icmp eq i32 %4075, -1
  br i1 %4076, label %4293, label %4077

; <label>:4077                                    ; preds = %4022
  %4078 = mul i32 %4075, 148
  %4079 = add i32 %4078, 4
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4078, 8
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4078, 36
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = add i32 %4078, 60
  %4089 = add i32 %4078, 92
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = add i32 %4078, 116
  %4093 = fsub fast float %4044, %4081
  %4094 = fsub fast float %4045, %4084
  %4095 = fmul fast float %4052, %4093
  %4096 = fmul fast float %4052, %4094
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4099 = fsub fast float 1.000000e+00, %4098
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = call float @dx.op.unary.f32(i32 83, float %4097)  ; DerivCoarseX(value)
  %4103 = call float @dx.op.unary.f32(i32 83, float %4099)  ; DerivCoarseX(value)
  %4104 = call float @dx.op.unary.f32(i32 84, float %4097)  ; DerivCoarseY(value)
  %4105 = call float @dx.op.unary.f32(i32 84, float %4099)  ; DerivCoarseY(value)
  %4106 = fmul fast float %4102, %4101
  %4107 = fmul fast float %4103, %4101
  %4108 = fmul fast float %4104, %4101
  %4109 = fmul fast float %4105, %4101
  %4110 = call float @dx.op.dot2.f32(i32 54, float %4108, float %4109, float %4108, float %4109)  ; Dot2(ax,ay,bx,by)
  %4111 = call float @dx.op.dot2.f32(i32 54, float %4106, float %4107, float %4106, float %4107)  ; Dot2(ax,ay,bx,by)
  %4112 = call float @dx.op.binary.f32(i32 35, float %4111, float %4110)  ; FMax(a,b)
  %4113 = call float @dx.op.unary.f32(i32 23, float %4112)  ; Log(value)
  %4114 = fmul fast float %4113, 5.000000e-01
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4117 = fadd fast float %4116, %4114
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = fadd fast float %4120, %4118
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4124 = fadd fast float %4121, %4123
  %4125 = add i32 %4091, 0
  %4126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4125, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4127 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4126, i32 0)  ; GetDimensions(handle,mipLevel)
  %4128 = extractvalue %dx.types.Dimensions %4127, 0
  %4129 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4128)  ; FirstbitLo(value)
  %4130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.i32 %4130, 1
  %4132 = sub nsw i32 %4131, %4129
  %4133 = sitofp i32 %4132 to float
  %4134 = fsub fast float %4124, %4133
  %4135 = call float @dx.op.binary.f32(i32 35, float %4134, float 0.000000e+00)  ; FMax(a,b)
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4126, %dx.types.Handle %34, float %4097, float %4099, float %4087, float undef, i32 0, i32 0, i32 undef, float %4135)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = fcmp ule float %4137, 0x3FE0101020000000
  %4139 = extractvalue %dx.types.CBufRet.i32 %4130, 0
  %4140 = and i32 %4139, 128
  %4141 = icmp ne i32 %4140, 0
  %4142 = and i1 %4138, %4141
  br i1 %4142, label %4293, label %4143

; <label>:4143                                    ; preds = %4077
  %4144 = add i32 %4078, 20
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = add i32 %4078, 24
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = add i32 %4078, 40
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = add i32 %4078, 96
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4158 = fmul fast float %4157, %4097
  %4159 = fmul fast float %4157, %4099
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4161 = fadd fast float %4158, %4160
  %4162 = fadd fast float %4159, %4160
  %4163 = add i32 %4155, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4164, i32 0)  ; GetDimensions(handle,mipLevel)
  %4166 = extractvalue %dx.types.Dimensions %4165, 0
  %4167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4170 = sub nsw i32 %4169, %4167
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4121, %4171
  %4173 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4164, %dx.types.Handle %34, float %4161, float %4162, float %4152, float undef, i32 0, i32 0, i32 undef, float %4173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fmul fast float %4175, %4146
  %4177 = fadd fast float %4176, %4149
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4178, 2
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4186 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4187 = fadd fast float %4183, %4044
  %4188 = fadd fast float %4185, %4045
  %4189 = fadd fast float %4177, %4186
  %4190 = fmul fast float %4187, %4179
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4180, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4181, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4192, %4186
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fsub fast float %4193, %4195
  %4197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.i32 %4197, 0
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4198)  ; UMin(a,b)
  %4200 = mul i32 %4199, 36
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = add i32 %4200, 4
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = fmul fast float %4205, %4097
  %4207 = fmul fast float %4205, %4099
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4209 = fadd fast float %4206, %4208
  %4210 = fadd fast float %4207, %4208
  %4211 = icmp eq i32 %4202, 0
  br i1 %4211, label %4280, label %4212

; <label>:4212                                    ; preds = %4143
  br label %4213

; <label>:4213                                    ; preds = %4270, %4212
  %4214 = phi float [ %4271, %4270 ], [ 0.000000e+00, %4212 ]
  %4215 = phi float [ %4272, %4270 ], [ 0.000000e+00, %4212 ]
  %4216 = phi float [ %4273, %4270 ], [ 0.000000e+00, %4212 ]
  %4217 = phi float [ %4274, %4270 ], [ 0.000000e+00, %4212 ]
  %4218 = phi float [ %4275, %4270 ], [ 0.000000e+00, %4212 ]
  %4219 = phi float [ %4276, %4270 ], [ 0.000000e+00, %4212 ]
  %4220 = phi i32 [ %4277, %4270 ], [ 0, %4212 ]
  %4221 = shl i32 %4220, 2
  %4222 = add i32 %4088, %4221
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4092, %4221
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = add i32 %4227, 0
  %4229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4229, i32 0)  ; GetDimensions(handle,mipLevel)
  %4231 = extractvalue %dx.types.Dimensions %4230, 0
  %4232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4231)  ; FirstbitLo(value)
  %4233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.i32 %4233, 1
  %4235 = sub nsw i32 %4234, %4232
  %4236 = sitofp i32 %4235 to float
  %4237 = fsub fast float %4121, %4236
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4229, %dx.types.Handle %34, float %4209, float %4210, float %4224, float undef, i32 0, i32 0, i32 undef, float %4238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = fcmp fast ogt float %4240, 0.000000e+00
  br i1 %4241, label %4242, label %4270

; <label>:4242                                    ; preds = %4213
  %4243 = add i32 %4203, %4221
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = and i32 %4245, 32767
  %4247 = mul nuw nsw i32 %4246, 928
  %4248 = add nuw nsw i32 %4247, 48
  %4249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = add nuw nsw i32 %4247, 60
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = fmul fast float %4250, %4240
  %4259 = fmul fast float %4251, %4240
  %4260 = fmul fast float %4252, %4240
  %4261 = fadd fast float %4258, %4214
  %4262 = fadd fast float %4259, %4215
  %4263 = fadd fast float %4260, %4216
  %4264 = fmul fast float %4255, %4240
  %4265 = fmul fast float %4256, %4240
  %4266 = fmul fast float %4257, %4240
  %4267 = fadd fast float %4264, %4217
  %4268 = fadd fast float %4265, %4218
  %4269 = fadd fast float %4266, %4219
  br label %4270

; <label>:4270                                    ; preds = %4242, %4213
  %4271 = phi float [ %4261, %4242 ], [ %4214, %4213 ]
  %4272 = phi float [ %4262, %4242 ], [ %4215, %4213 ]
  %4273 = phi float [ %4263, %4242 ], [ %4216, %4213 ]
  %4274 = phi float [ %4267, %4242 ], [ %4217, %4213 ]
  %4275 = phi float [ %4268, %4242 ], [ %4218, %4213 ]
  %4276 = phi float [ %4269, %4242 ], [ %4219, %4213 ]
  %4277 = add nuw i32 %4220, 1
  %4278 = icmp eq i32 %4277, %4202
  br i1 %4278, label %4279, label %4213

; <label>:4279                                    ; preds = %4270
  br label %4280

; <label>:4280                                    ; preds = %4279, %4143
  %4281 = phi float [ 0.000000e+00, %4143 ], [ %4271, %4279 ]
  %4282 = phi float [ 0.000000e+00, %4143 ], [ %4272, %4279 ]
  %4283 = phi float [ 0.000000e+00, %4143 ], [ %4273, %4279 ]
  %4284 = phi float [ 0.000000e+00, %4143 ], [ %4274, %4279 ]
  %4285 = phi float [ 0.000000e+00, %4143 ], [ %4275, %4279 ]
  %4286 = phi float [ 0.000000e+00, %4143 ], [ %4276, %4279 ]
  %4287 = fadd fast float %4284, %4281
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  %4289 = fadd fast float %4285, %4282
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  %4291 = fadd fast float %4286, %4283
  %4292 = fmul fast float %4291, 0x3F847AE140000000
  br label %4293

; <label>:4293                                    ; preds = %4280, %4077, %4022, %4019, %3990, %3952
  %4294 = phi float [ %4004, %3990 ], [ -1.310720e+05, %3952 ], [ %4196, %4280 ], [ -1.310720e+05, %4022 ], [ -1.310720e+05, %4077 ], [ -1.310720e+05, %4019 ]
  %4295 = phi float [ %4014, %3990 ], [ 0.000000e+00, %3952 ], [ %4288, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4296 = phi float [ %4016, %3990 ], [ 0.000000e+00, %3952 ], [ %4290, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4297 = phi float [ %4018, %3990 ], [ 0.000000e+00, %3952 ], [ %4292, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4298 = phi i1 [ true, %3990 ], [ false, %3952 ], [ true, %4280 ], [ false, %4022 ], [ false, %4077 ], [ false, %4019 ]
  %4299 = and i32 %155, 3
  %4300 = icmp eq i32 %4299, 1
  %4301 = select i1 %4300, float 1.000000e+00, float 0.000000e+00
  %4302 = fsub fast float %4294, %139
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = select i1 %4298, float %4303, float 1.000000e+00
  %4305 = fmul fast float %4304, %4301
  %4306 = icmp eq i32 %4299, 3
  %4307 = select i1 %4306, float 1.000000e+00, float %4305
  %4308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4307)  ; FMax(a,b)
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fcmp fast une float %4309, 0.000000e+00
  %4311 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4312 = call float @dx.op.unary.f32(i32 25, float %4311)  ; Rsqrt(value)
  br i1 %4310, label %4320, label %4313

; <label>:4313                                    ; preds = %4293
  %4314 = fmul fast float %4312, %137
  %4315 = fmul fast float %4312, %138
  %4316 = fmul fast float %4312, %139
  %4317 = fsub fast float -0.000000e+00, %4314
  %4318 = fsub fast float -0.000000e+00, %4315
  %4319 = fsub fast float -0.000000e+00, %4316
  br label %4488

; <label>:4320                                    ; preds = %4293
  %4321 = fmul fast float %137, %4312
  %4322 = fsub fast float -0.000000e+00, %4321
  %4323 = fmul fast float %138, %4312
  %4324 = fsub fast float -0.000000e+00, %4323
  %4325 = fmul fast float %139, %4312
  %4326 = fsub fast float -0.000000e+00, %4325
  %4327 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4324, float %4326, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = fmul fast float %4309, 2.500000e+00
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4309, 0x4013FFFFE0000000
  %4331 = fadd fast float %4330, 0xBFFFFFFFE0000000
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = fmul fast float %4309, 0x4004000020000000
  %4334 = fadd fast float %4333, 0xBFF8000040000000
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4337 = fmul fast float %3832, 1.000000e+01
  %4338 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4339 = fmul fast float %4338, 2.000000e+00
  %4340 = fsub fast float 3.000000e+00, %4339
  %4341 = fmul fast float %4338, %4338
  %4342 = fmul fast float %4341, %4340
  %4343 = fsub fast float 1.000000e+00, %4342
  %4344 = fsub fast float 0x3FE3333340000000, %3853
  %4345 = fmul fast float %4344, 0x400AAAAAA0000000
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4343, %4346
  %4348 = fmul fast float %3931, 0x3FEA2B8620000000
  %4349 = fmul fast float %3932, 0x3FEA2B8620000000
  %4350 = fmul fast float %3933, 0x3FEA2B8620000000
  %4351 = fadd fast float %4348, 0x3FC81DFBA0000000
  %4352 = fmul fast float %4351, %3931
  %4353 = fadd fast float %4352, 0x3F910E6020000000
  %4354 = fadd fast float %4349, 0x3FC81DFBA0000000
  %4355 = fmul fast float %4354, %3932
  %4356 = fadd fast float %4355, 0x3F910E6020000000
  %4357 = fadd fast float %4350, 0x3FC81DFBA0000000
  %4358 = fmul fast float %4357, %3933
  %4359 = fadd fast float %4358, 0x3F910E6020000000
  %4360 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = fsub fast float %4360, %3931
  %4364 = fsub fast float %4361, %3932
  %4365 = fsub fast float %4362, %3933
  %4366 = fmul fast float %4363, %4336
  %4367 = fmul fast float %4366, %4347
  %4368 = fmul fast float %4364, %4336
  %4369 = fmul fast float %4368, %4347
  %4370 = fmul fast float %4365, %4336
  %4371 = fmul fast float %4370, %4347
  %4372 = fadd fast float %4367, %3931
  %4373 = fadd fast float %4369, %3932
  %4374 = fadd fast float %4371, %3933
  %4375 = fmul fast float %3793, %3793
  %4376 = fmul fast float %4375, %4375
  %4377 = fadd fast float %4332, 1.000000e+00
  %4378 = fsub fast float %4377, %4347
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = fsub fast float 1.000000e+00, %4376
  %4383 = call float @dx.op.binary.f32(i32 36, float %4379, float %4382)  ; FMin(a,b)
  %4384 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4385 = call float @dx.op.binary.f32(i32 35, float %4383, float %4384)  ; FMax(a,b)
  %4386 = fadd fast float %4381, 0xBFE4CCCCC0000000
  %4387 = fmul fast float %4386, 0x4006DB6DA0000000
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4389 = fmul fast float %4388, 2.000000e+00
  %4390 = fsub fast float 3.000000e+00, %4389
  %4391 = bitcast float %3850 to i32
  %4392 = ashr i32 %4391, 1
  %4393 = add nsw i32 %4392, 532487669
  %4394 = bitcast i32 %4393 to float
  %4395 = fsub fast float 1.000000e+00, %4394
  %4396 = bitcast float %4395 to i32
  %4397 = sub nsw i32 2129859010, %4396
  %4398 = bitcast i32 %4397 to float
  %4399 = fmul fast float %4398, 2.000000e+00
  %4400 = bitcast float %3851 to i32
  %4401 = ashr i32 %4400, 1
  %4402 = add nsw i32 %4401, 532487669
  %4403 = bitcast i32 %4402 to float
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = bitcast float %4404 to i32
  %4406 = sub nsw i32 2129859010, %4405
  %4407 = bitcast i32 %4406 to float
  %4408 = fmul fast float %4407, 2.000000e+00
  %4409 = bitcast float %3852 to i32
  %4410 = ashr i32 %4409, 1
  %4411 = add nsw i32 %4410, 532487669
  %4412 = bitcast i32 %4411 to float
  %4413 = fsub fast float 1.000000e+00, %4412
  %4414 = bitcast float %4413 to i32
  %4415 = sub nsw i32 2129859010, %4414
  %4416 = bitcast i32 %4415 to float
  %4417 = fmul fast float %4416, 2.000000e+00
  %4418 = fsub fast float 0x4002A9FBE0000000, %4399
  %4419 = fadd fast float %4399, 0x3FD54FDF00000000
  %4420 = bitcast float %4419 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = fmul fast float %4422, %4418
  %4424 = fmul fast float %4423, %4423
  %4425 = fsub fast float 0x4002A9FBE0000000, %4408
  %4426 = fadd fast float %4408, 0x3FD54FDF00000000
  %4427 = bitcast float %4426 to i32
  %4428 = sub nsw i32 2129859010, %4427
  %4429 = bitcast i32 %4428 to float
  %4430 = fmul fast float %4429, %4425
  %4431 = fmul fast float %4430, %4430
  %4432 = fsub fast float 0x4002A9FBE0000000, %4417
  %4433 = fadd fast float %4417, 0x3FD54FDF00000000
  %4434 = bitcast float %4433 to i32
  %4435 = sub nsw i32 2129859010, %4434
  %4436 = bitcast i32 %4435 to float
  %4437 = fmul fast float %4436, %4432
  %4438 = fmul fast float %4437, %4437
  %4439 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4424)  ; FMax(a,b)
  %4440 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4431)  ; FMax(a,b)
  %4441 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4438)  ; FMax(a,b)
  %4442 = fsub fast float 1.000000e+00, %4327
  %4443 = fadd fast float %4442, %4343
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fsub fast float 1.000000e+00, %4307
  %4446 = fmul fast float %4385, %4445
  %4447 = fmul fast float %4388, %4388
  %4448 = fmul fast float %4447, %4446
  %4449 = fmul fast float %4448, %4390
  %4450 = fmul fast float %4445, 0xBFE99999A0000000
  %4451 = fmul fast float %4450, %4336
  %4452 = fmul fast float %4451, %4347
  %4453 = fadd fast float %4452, 1.000000e+00
  %4454 = fadd fast float %3853, -1.000000e+00
  %4455 = fmul fast float %4453, %4454
  %4456 = fadd fast float %4455, 1.000000e+00
  %4457 = fsub fast float %4439, %3850
  %4458 = fsub fast float %4440, %3851
  %4459 = fsub fast float %4441, %3852
  %4460 = fmul fast float %4449, %4457
  %4461 = fmul fast float %4449, %4458
  %4462 = fmul fast float %4449, %4459
  %4463 = fadd fast float %4460, %3850
  %4464 = fadd fast float %4461, %3851
  %4465 = fadd fast float %4462, %3852
  %4466 = fsub fast float %90, %3829
  %4467 = fsub fast float %92, %3830
  %4468 = fsub fast float %94, %3831
  %4469 = fmul fast float %4449, %4466
  %4470 = fmul fast float %4449, %4467
  %4471 = fmul fast float %4449, %4468
  %4472 = fadd fast float %4469, %3829
  %4473 = fadd fast float %4470, %3830
  %4474 = fadd fast float %4471, %3831
  %4475 = fmul fast float %4449, %4444
  %4476 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = fmul fast float %4475, %4477
  %4479 = fadd fast float %4478, %4476
  %4480 = fsub fast float 1.000000e+00, %3793
  %4481 = fmul fast float %4449, %4480
  %4482 = fadd fast float %4481, %3793
  %4483 = call float @dx.op.dot3.f32(i32 55, float %4472, float %4473, float %4474, float %4472, float %4473, float %4474)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = call float @dx.op.unary.f32(i32 25, float %4483)  ; Rsqrt(value)
  %4485 = fmul fast float %4472, %4484
  %4486 = fmul fast float %4473, %4484
  %4487 = fmul fast float %4474, %4484
  br label %4488

; <label>:4488                                    ; preds = %4320, %4313
  %4489 = phi float [ %4319, %4313 ], [ %4326, %4320 ]
  %4490 = phi float [ %4318, %4313 ], [ %4324, %4320 ]
  %4491 = phi float [ %4317, %4313 ], [ %4322, %4320 ]
  %4492 = phi float [ %4316, %4313 ], [ %4325, %4320 ]
  %4493 = phi float [ %4315, %4313 ], [ %4323, %4320 ]
  %4494 = phi float [ %4314, %4313 ], [ %4321, %4320 ]
  %4495 = phi float [ %3829, %4313 ], [ %4485, %4320 ]
  %4496 = phi float [ %3830, %4313 ], [ %4486, %4320 ]
  %4497 = phi float [ %3831, %4313 ], [ %4487, %4320 ]
  %4498 = phi float [ %3931, %4313 ], [ %4372, %4320 ]
  %4499 = phi float [ %3932, %4313 ], [ %4373, %4320 ]
  %4500 = phi float [ %3933, %4313 ], [ %4374, %4320 ]
  %4501 = phi float [ %3850, %4313 ], [ %4463, %4320 ]
  %4502 = phi float [ %3851, %4313 ], [ %4464, %4320 ]
  %4503 = phi float [ %3852, %4313 ], [ %4465, %4320 ]
  %4504 = phi float [ %3853, %4313 ], [ %4479, %4320 ]
  %4505 = phi float [ %3793, %4313 ], [ %4482, %4320 ]
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4509 = fmul fast float %4507, %81
  %4510 = fmul fast float %4508, %82
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4509, float %4510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = fmul fast float %4515, %4513
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fadd fast float %4517, -1.000000e+00
  %4519 = fmul fast float %4518, %4512
  %4520 = fadd fast float %4519, 1.000000e+00
  %4521 = select i1 %181, float 0.000000e+00, float %4503
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %4491, float %4490, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4494, float %4493, float %4492, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = fmul fast float %4524, 2.000000e+00
  %4526 = fmul fast float %4525, %4495
  %4527 = fmul fast float %4525, %4496
  %4528 = fmul fast float %4525, %4497
  %4529 = fsub fast float %4494, %4526
  %4530 = fsub fast float %4493, %4527
  %4531 = fsub fast float %4492, %4528
  %4532 = call float @dx.op.binary.f32(i32 36, float %4505, float %4520)  ; FMin(a,b)
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = bitcast float %4533 to i32
  %4535 = ashr i32 %4534, 1
  %4536 = add nsw i32 %4535, 532487669
  %4537 = bitcast i32 %4536 to float
  %4538 = fsub fast float 1.000000e+00, %4504
  %4539 = call float @dx.op.binary.f32(i32 35, float %4538, float 0x3F847AE140000000)  ; FMax(a,b)
  %4540 = fmul fast float %4539, %4539
  %4541 = fmul fast float %4540, %4540
  %4542 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4537, float %4541, float %4542, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = fsub fast float 1.000000e+00, %4505
  %4546 = bitcast float %4545 to i32
  %4547 = sub nsw i32 2129859010, %4546
  %4548 = bitcast i32 %4547 to float
  %4549 = call float @dx.op.dot3.f32(i32 55, float %58, float %54, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = fmul fast float %4549, 0x3FD20DD760000000
  %4551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4552 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = fcmp fast oeq float %4552, 0.000000e+00
  %4554 = fcmp fast oeq float %4551, 0.000000e+00
  %4555 = or i1 %4554, %4553
  br i1 %4555, label %4585, label %4556

; <label>:4556                                    ; preds = %4488
  %4557 = fsub fast float -0.000000e+00, %61
  %4558 = fsub fast float -0.000000e+00, %59
  %4559 = call float @dx.op.unary.f32(i32 24, float %4552)  ; Sqrt(value)
  %4560 = fdiv fast float %4559, %4551
  %4561 = fcmp fast ogt float %4560, 0x3FFB6F8900000000
  %4562 = select i1 %4561, float 0x3FFB6F8900000000, float %4560
  %4563 = fmul fast float %4562, 0x3FE8A23460000000
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = call float @dx.op.binary.f32(i32 35, float %4562, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4566 = fmul fast float %4564, %4551
  %4567 = fmul fast float %4565, 0x3FF279A740000000
  %4568 = fadd fast float %4567, -1.000000e+00
  %4569 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4558, float %60, float %4557, float %4558, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.unary.f32(i32 25, float %4569)  ; Rsqrt(value)
  %4571 = fmul fast float %4570, %4557
  %4572 = fmul fast float %4570, %4558
  %4573 = fmul fast float %4570, %60
  %4574 = fmul fast float %4568, %4568
  %4575 = fsub fast float 1.000000e+00, %4574
  %4576 = fmul fast float %4565, 0x40005F8BE0000000
  %4577 = fsub fast float 0x400C5BF8A0000000, %4576
  %4578 = fdiv fast float %4566, %4577
  %4579 = fmul fast float %4578, 0x3FEE31C3C0000000
  %4580 = fmul fast float %4579, %4575
  %4581 = fmul fast float %4565, 0x3FDACB7480000000
  %4582 = fadd fast float %4581, 0xBFD7347680000000
  %4583 = fmul fast float %4582, %4578
  %4584 = fmul fast float %4583, %4575
  br label %4585

; <label>:4585                                    ; preds = %4556, %4488
  %4586 = phi float [ %4571, %4556 ], [ 0.000000e+00, %4488 ]
  %4587 = phi float [ %4572, %4556 ], [ 0.000000e+00, %4488 ]
  %4588 = phi float [ %4573, %4556 ], [ 0.000000e+00, %4488 ]
  %4589 = phi float [ %4580, %4556 ], [ 0.000000e+00, %4488 ]
  %4590 = phi float [ %4584, %4556 ], [ 0.000000e+00, %4488 ]
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = fmul fast float %4591, 0x3FDF454380000000
  %4593 = fmul fast float %4591, %4591
  %4594 = fmul fast float %4593, 0x3FEE471020000000
  %4595 = fadd fast float %4594, 0xBFD42F6020000000
  %4596 = fmul fast float %4551, 0x3FD20DD760000000
  %4597 = fmul fast float %4595, %4590
  %4598 = fadd fast float %4597, %4596
  %4599 = fmul fast float %4592, %4589
  %4600 = fadd fast float %4598, %4599
  %4601 = fsub fast float %4598, %4599
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = fmul fast float %4602, 0x3FDF454380000000
  %4604 = fmul fast float %4602, %4602
  %4605 = fmul fast float %4604, 0x3FEE471020000000
  %4606 = fadd fast float %4605, 0xBFD42F6020000000
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4551, float %4589, float %4590, float 0x3FD20DD760000000, float %4603, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4609 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = fcmp fast oeq float %4609, 0.000000e+00
  %4611 = fcmp fast oeq float %4608, 0.000000e+00
  %4612 = or i1 %4611, %4610
  br i1 %4612, label %4642, label %4613

; <label>:4613                                    ; preds = %4585
  %4614 = fsub fast float -0.000000e+00, %57
  %4615 = fsub fast float -0.000000e+00, %55
  %4616 = call float @dx.op.unary.f32(i32 24, float %4609)  ; Sqrt(value)
  %4617 = fdiv fast float %4616, %4608
  %4618 = fcmp fast ogt float %4617, 0x3FFB6F8900000000
  %4619 = select i1 %4618, float 0x3FFB6F8900000000, float %4617
  %4620 = fmul fast float %4619, 0x3FE8A23460000000
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = call float @dx.op.binary.f32(i32 35, float %4619, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4623 = fmul fast float %4621, %4608
  %4624 = fmul fast float %4622, 0x3FF279A740000000
  %4625 = fadd fast float %4624, -1.000000e+00
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %56, float %4614, float %4615, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4627, %4614
  %4629 = fmul fast float %4627, %4615
  %4630 = fmul fast float %4627, %56
  %4631 = fmul fast float %4625, %4625
  %4632 = fsub fast float 1.000000e+00, %4631
  %4633 = fmul fast float %4622, 0x40005F8BE0000000
  %4634 = fsub fast float 0x400C5BF8A0000000, %4633
  %4635 = fdiv fast float %4623, %4634
  %4636 = fmul fast float %4635, 0x3FEE31C3C0000000
  %4637 = fmul fast float %4636, %4632
  %4638 = fmul fast float %4622, 0x3FDACB7480000000
  %4639 = fadd fast float %4638, 0xBFD7347680000000
  %4640 = fmul fast float %4639, %4635
  %4641 = fmul fast float %4640, %4632
  br label %4642

; <label>:4642                                    ; preds = %4613, %4585
  %4643 = phi float [ %4628, %4613 ], [ 0.000000e+00, %4585 ]
  %4644 = phi float [ %4629, %4613 ], [ 0.000000e+00, %4585 ]
  %4645 = phi float [ %4630, %4613 ], [ 0.000000e+00, %4585 ]
  %4646 = phi float [ %4637, %4613 ], [ 0.000000e+00, %4585 ]
  %4647 = phi float [ %4641, %4613 ], [ 0.000000e+00, %4585 ]
  %4648 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = fmul fast float %4648, 0x3FDF454380000000
  %4650 = fmul fast float %4648, %4648
  %4651 = fmul fast float %4650, 0x3FEE471020000000
  %4652 = fadd fast float %4651, 0xBFD42F6020000000
  %4653 = fmul fast float %4608, 0x3FD20DD760000000
  %4654 = fmul fast float %4652, %4647
  %4655 = fadd fast float %4654, %4653
  %4656 = fmul fast float %4649, %4646
  %4657 = fadd fast float %4655, %4656
  %4658 = fsub fast float %4655, %4656
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = fmul fast float %4659, 0x3FDF454380000000
  %4661 = fmul fast float %4659, %4659
  %4662 = fmul fast float %4661, 0x3FEE471020000000
  %4663 = fadd fast float %4662, 0xBFD42F6020000000
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4646, float %4647, float 0x3FD20DD760000000, float %4660, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4666 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = fcmp fast oeq float %4666, 0.000000e+00
  %4668 = fcmp fast oeq float %4665, 0.000000e+00
  %4669 = or i1 %4668, %4667
  br i1 %4669, label %4699, label %4670

; <label>:4670                                    ; preds = %4642
  %4671 = fsub fast float -0.000000e+00, %53
  %4672 = fsub fast float -0.000000e+00, %51
  %4673 = call float @dx.op.unary.f32(i32 24, float %4666)  ; Sqrt(value)
  %4674 = fdiv fast float %4673, %4665
  %4675 = fcmp fast ogt float %4674, 0x3FFB6F8900000000
  %4676 = select i1 %4675, float 0x3FFB6F8900000000, float %4674
  %4677 = fmul fast float %4676, 0x3FE8A23460000000
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = call float @dx.op.binary.f32(i32 35, float %4676, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4680 = fmul fast float %4678, %4665
  %4681 = fmul fast float %4679, 0x3FF279A740000000
  %4682 = fadd fast float %4681, -1.000000e+00
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %52, float %4671, float %4672, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = call float @dx.op.unary.f32(i32 25, float %4683)  ; Rsqrt(value)
  %4685 = fmul fast float %4684, %4671
  %4686 = fmul fast float %4684, %4672
  %4687 = fmul fast float %4684, %52
  %4688 = fmul fast float %4682, %4682
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = fmul fast float %4679, 0x40005F8BE0000000
  %4691 = fsub fast float 0x400C5BF8A0000000, %4690
  %4692 = fdiv fast float %4680, %4691
  %4693 = fmul fast float %4692, 0x3FEE31C3C0000000
  %4694 = fmul fast float %4693, %4689
  %4695 = fmul fast float %4679, 0x3FDACB7480000000
  %4696 = fadd fast float %4695, 0xBFD7347680000000
  %4697 = fmul fast float %4696, %4692
  %4698 = fmul fast float %4697, %4689
  br label %4699

; <label>:4699                                    ; preds = %4670, %4642
  %4700 = phi float [ %4685, %4670 ], [ 0.000000e+00, %4642 ]
  %4701 = phi float [ %4686, %4670 ], [ 0.000000e+00, %4642 ]
  %4702 = phi float [ %4687, %4670 ], [ 0.000000e+00, %4642 ]
  %4703 = phi float [ %4694, %4670 ], [ 0.000000e+00, %4642 ]
  %4704 = phi float [ %4698, %4670 ], [ 0.000000e+00, %4642 ]
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4701, float %4702, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = fmul fast float %4705, 0x3FDF454380000000
  %4707 = fmul fast float %4705, %4705
  %4708 = fmul fast float %4707, 0x3FEE471020000000
  %4709 = fadd fast float %4708, 0xBFD42F6020000000
  %4710 = fmul fast float %4665, 0x3FD20DD760000000
  %4711 = fmul fast float %4709, %4704
  %4712 = fadd fast float %4711, %4710
  %4713 = fmul fast float %4706, %4703
  %4714 = fadd fast float %4712, %4713
  %4715 = fsub fast float %4712, %4713
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4701, float %4702, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = fmul fast float %4716, 0x3FDF454380000000
  %4718 = fmul fast float %4716, %4716
  %4719 = fmul fast float %4718, 0x3FEE471020000000
  %4720 = fadd fast float %4719, 0xBFD42F6020000000
  %4721 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4703, float %4704, float 0x3FD20DD760000000, float %4717, float %4720)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = call float @dx.op.binary.f32(i32 35, float %4600, float 0.000000e+00)  ; FMax(a,b)
  %4723 = call float @dx.op.binary.f32(i32 35, float %4657, float 0.000000e+00)  ; FMax(a,b)
  %4724 = call float @dx.op.binary.f32(i32 35, float %4714, float 0.000000e+00)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 35, float %4601, float 0.000000e+00)  ; FMax(a,b)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4715, float 0.000000e+00)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4607, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4664, float 0.000000e+00)  ; FMax(a,b)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4721, float 0.000000e+00)  ; FMax(a,b)
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = call float @dx.op.binary.f32(i32 36, float %4498, float %4732)  ; FMin(a,b)
  %4734 = fmul fast float %4733, %4533
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = call float @dx.op.binary.f32(i32 36, float %4499, float %4732)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4533
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.binary.f32(i32 36, float %4500, float %4732)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4533
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = fmul fast float %4722, %4532
  %4752 = fmul fast float %4751, %4738
  %4753 = fmul fast float %4723, %4532
  %4754 = fmul fast float %4753, %4744
  %4755 = fmul fast float %4724, %4532
  %4756 = fmul fast float %4755, %4750
  %4757 = call float @dx.op.binary.f32(i32 36, float %4501, float %4732)  ; FMin(a,b)
  %4758 = fmul fast float %4757, %4533
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = bitcast i32 %4761 to float
  %4763 = call float @dx.op.binary.f32(i32 36, float %4502, float %4732)  ; FMin(a,b)
  %4764 = fmul fast float %4763, %4533
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = bitcast float %4765 to i32
  %4767 = sub nsw i32 2129859010, %4766
  %4768 = bitcast i32 %4767 to float
  %4769 = call float @dx.op.binary.f32(i32 36, float %4521, float %4732)  ; FMin(a,b)
  %4770 = fmul fast float %4769, %4533
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = fmul fast float %4728, %4532
  %4776 = fmul fast float %4775, %4762
  %4777 = fmul fast float %4729, %4532
  %4778 = fmul fast float %4777, %4768
  %4779 = fmul fast float %4730, %4532
  %4780 = fmul fast float %4779, %4774
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4754, float %4756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = select i1 %181, float 0.000000e+00, float %4752
  %4783 = select i1 %181, float %4781, float %4754
  %4784 = select i1 %181, float 0.000000e+00, float %4756
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4725, float %4726, float %4727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = select i1 %181, float 0.000000e+00, float %4725
  %4787 = select i1 %181, float %4785, float %4726
  %4788 = select i1 %181, float 0.000000e+00, float %4727
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4778, float %4780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = select i1 %181, float 0.000000e+00, float %4776
  %4791 = select i1 %181, float %4789, float %4778
  %4792 = select i1 %181, float 0.000000e+00, float %4780
  %4793 = fmul fast float %4523, 9.843750e-01
  %4794 = fmul fast float %4504, 9.843750e-01
  %4795 = fadd fast float %4793, 7.812500e-03
  %4796 = fadd fast float %4794, 7.812500e-03
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4795, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4800 = fmul fast float %4798, %4501
  %4801 = fmul fast float %4798, %4502
  %4802 = fmul fast float %4798, %4521
  %4803 = fadd fast float %4800, %4799
  %4804 = fadd fast float %4801, %4799
  %4805 = fadd fast float %4802, %4799
  %4806 = call float @dx.op.binary.f32(i32 35, float %4804, float %4805)  ; FMax(a,b)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4803, float %4806)  ; FMax(a,b)
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = fmul fast float %4807, %4504
  %4810 = fadd fast float %4809, %4504
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4814 = extractvalue %dx.types.CBufRet.f32 %4811, 2
  %4815 = extractvalue %dx.types.CBufRet.f32 %4811, 3
  %4816 = fmul fast float %4810, %4812
  %4817 = fadd fast float %4816, %4813
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4814, %4810
  %4820 = fadd fast float %4819, %4815
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fsub fast float 1.000000e+00, %4544
  %4823 = fadd fast float %4822, %4821
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fcmp fast olt float %4824, 1.000000e+00
  br i1 %4825, label %4826, label %5681

; <label>:4826                                    ; preds = %4699
  %4827 = fcmp fast olt float %4818, 1.000000e+00
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = fcmp fast ogt float %4829, 0.000000e+00
  %4831 = or i1 %4827, %4830
  %4832 = or i1 %4827, %4830
  %4833 = xor i1 %4832, true
  %4834 = zext i1 %4833 to i32
  br i1 %4831, label %4835, label %5078

; <label>:4835                                    ; preds = %4826
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4839 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4840 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4845 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.CBufRet.f32 %4846, 2
  %4850 = extractvalue %dx.types.CBufRet.f32 %4846, 3
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4855 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4860 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4865 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = call float @dx.op.unary.f32(i32 6, float %4867)  ; FAbs(value)
  %4869 = fmul fast float %4868, 8.000000e+00
  %4870 = fadd fast float %4869, -6.000000e+00
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = fmul fast float %4866, 8.000000e+00
  %4873 = fmul fast float %4872, %4829
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = fcmp fast ogt float %4874, 0.000000e+00
  br i1 %4875, label %4876, label %5053, !dx.controlflow.hints !81

; <label>:4876                                    ; preds = %4835
  %4877 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4878 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4879 = fsub fast float %4877, %4878
  %4880 = fmul fast float %4879, %4504
  %4881 = fadd fast float %4880, %4878
  %4882 = fmul fast float %194, 2.000000e+00
  %4883 = fmul fast float %195, 2.000000e+00
  %4884 = fadd fast float %4882, -1.000000e+00
  %4885 = fadd fast float %4883, -1.000000e+00
  %4886 = fmul fast float %4881, %4884
  %4887 = fmul fast float %4881, %4885
  %4888 = fadd fast float %4886, %81
  %4889 = fadd fast float %4887, %82
  %4890 = fmul fast float %4888, %4507
  %4891 = fmul fast float %4889, %4508
  %4892 = fadd fast float %4504, 0xBFE3333340000000
  %4893 = fmul fast float %4892, 0x4004000020000000
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, 3.000000e+00
  %4897 = fadd fast float %4896, %194
  %4898 = call float @dx.op.unary.f32(i32 27, float %4897)  ; Round_ni(value)
  %4899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4890, float %4891, float %4898, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = fcmp fast une float %4900, 0xFFF0000000000000
  %4902 = fcmp fast une float %4900, 0x7FF0000000000000
  %4903 = and i1 %4901, %4902
  %4904 = fcmp fast olt float %4900, 0.000000e+00
  %4905 = call float @dx.op.unary.f32(i32 6, float %4900)  ; FAbs(value)
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = select i1 %4903, float 1.000000e+00, float 0.000000e+00
  %4908 = fmul fast float %4907, %4874
  %4909 = fcmp fast ogt float %4908, 0.000000e+00
  br i1 %4909, label %4910, label %5053, !dx.controlflow.hints !82

; <label>:4910                                    ; preds = %4876
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4915 = select i1 %4904, float 0.000000e+00, float %4912
  %4916 = select i1 %4904, float 0.000000e+00, float %4913
  %4917 = select i1 %4904, float 0.000000e+00, float %4914
  %4918 = select i1 %4904, float %4837, float %4852
  %4919 = select i1 %4904, float %4842, float %4857
  %4920 = select i1 %4904, float %4847, float %4862
  %4921 = select i1 %4904, float %4838, float %4853
  %4922 = select i1 %4904, float %4843, float %4858
  %4923 = select i1 %4904, float %4848, float %4863
  %4924 = select i1 %4904, float %4839, float %4854
  %4925 = select i1 %4904, float %4844, float %4859
  %4926 = select i1 %4904, float %4849, float %4864
  %4927 = select i1 %4904, float %4840, float %4855
  %4928 = select i1 %4904, float %4845, float %4860
  %4929 = select i1 %4904, float %4850, float %4865
  %4930 = fadd fast float %4915, %137
  %4931 = fadd fast float %4916, %138
  %4932 = fadd fast float %4917, %139
  %4933 = fmul fast float %4930, %4918
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4931, float %4921, float %4933)  ; FMad(a,b,c)
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4924, float %4934)  ; FMad(a,b,c)
  %4936 = fadd fast float %4935, %4927
  %4937 = fmul fast float %4930, %4919
  %4938 = call float @dx.op.tertiary.f32(i32 46, float %4931, float %4922, float %4937)  ; FMad(a,b,c)
  %4939 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4925, float %4938)  ; FMad(a,b,c)
  %4940 = fadd fast float %4939, %4928
  %4941 = fmul fast float %4930, %4920
  %4942 = call float @dx.op.tertiary.f32(i32 46, float %4931, float %4923, float %4941)  ; FMad(a,b,c)
  %4943 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4926, float %4942)  ; FMad(a,b,c)
  %4944 = fadd fast float %4943, %4929
  %4945 = fdiv fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4945, %4936
  %4947 = fmul fast float %4945, %4940
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4951 = fmul fast float %4946, %4949
  %4952 = fmul fast float %4947, %4950
  %4953 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4954 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4955 = fadd fast float %4951, %4953
  %4956 = fadd fast float %4952, %4954
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4959 = fmul fast float %4958, %4529
  %4960 = fmul fast float %4958, %4530
  %4961 = fmul fast float %4958, %4531
  %4962 = fadd fast float %4959, %4930
  %4963 = fadd fast float %4960, %4931
  %4964 = fadd fast float %4961, %4932
  %4965 = fmul fast float %4962, %4918
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4921, float %4965)  ; FMad(a,b,c)
  %4967 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4924, float %4966)  ; FMad(a,b,c)
  %4968 = fadd fast float %4967, %4927
  %4969 = fmul fast float %4962, %4919
  %4970 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4922, float %4969)  ; FMad(a,b,c)
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4925, float %4970)  ; FMad(a,b,c)
  %4972 = fadd fast float %4971, %4928
  %4973 = fmul fast float %4962, %4920
  %4974 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4923, float %4973)  ; FMad(a,b,c)
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4926, float %4974)  ; FMad(a,b,c)
  %4976 = fadd fast float %4975, %4929
  %4977 = fdiv fast float 1.000000e+00, %4976
  %4978 = fmul fast float %4977, %4968
  %4979 = fmul fast float %4977, %4972
  %4980 = fmul fast float %4955, 2.000000e+00
  %4981 = fadd fast float %4980, -1.000000e+00
  %4982 = call float @dx.op.unary.f32(i32 6, float %4981)  ; FAbs(value)
  %4983 = fmul fast float %4982, 5.000000e+00
  %4984 = fadd fast float %4983, -4.000000e+00
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fmul fast float %4985, %4871
  %4987 = fsub fast float %4946, %4978
  %4988 = fmul fast float %4949, %4987
  %4989 = fmul fast float %4986, %4988
  %4990 = fsub fast float %4978, %4946
  %4991 = fmul fast float %4949, %4990
  %4992 = fadd fast float %4991, %4989
  %4993 = fsub fast float %4979, %4947
  %4994 = fmul fast float %4950, %4993
  %4995 = fmul fast float %4992, %4906
  %4996 = fmul fast float %4994, %4906
  %4997 = fadd fast float %4995, %4955
  %4998 = fadd fast float %4996, %4956
  %4999 = fsub fast float %4977, %4945
  %5000 = fmul fast float %4999, %4906
  %5001 = fadd fast float %5000, %4945
  %5002 = fdiv fast float 1.000000e+00, %5001
  %5003 = fadd fast float %4504, -1.000000e+00
  %5004 = fsub fast float %5002, %4944
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5007 = fmul fast float %5006, %5002
  %5008 = fdiv fast float 1.600000e+02, %5007
  %5009 = fmul fast float %5003, %5003
  %5010 = fmul fast float %5009, 0xBFB5B17960000000
  %5011 = fmul fast float %5010, %5004
  %5012 = fmul fast float %5011, %5008
  %5013 = call float @dx.op.unary.f32(i32 21, float %5012)  ; Exp(value)
  %5014 = fmul fast float %5013, 0x3FF04B2960000000
  %5015 = fsub fast float 0x3FF04B2960000000, %5014
  %5016 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5017 = fmul fast float %5016, 4.000000e+00
  %5018 = fadd fast float %194, -5.000000e-01
  %5019 = fadd fast float %195, -5.000000e-01
  %5020 = fmul fast float %5016, 0x3FBEB851E0000000
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fmul fast float %5021, %5018
  %5023 = fmul fast float %5021, %5019
  %5024 = fadd fast float %4997, %5022
  %5025 = fadd fast float %4998, %5023
  %5026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5024, float %5025, float undef, float undef, i32 0, i32 0, i32 undef, float %5017)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5032 = fmul fast float %5031, %5027
  %5033 = fmul fast float %5031, %5028
  %5034 = fmul fast float %5031, %5029
  %5035 = select i1 %181, float 0.000000e+00, float %5033
  %5036 = select i1 %181, float 0.000000e+00, float %5034
  %5037 = fmul fast float %5024, 2.000000e+00
  %5038 = fmul fast float %5025, 2.000000e+00
  %5039 = fadd fast float %5037, -1.000000e+00
  %5040 = fadd fast float %5038, -1.000000e+00
  %5041 = fmul fast float %5039, %5039
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = fmul fast float %5044, %4871
  %5046 = fadd fast float %5045, %5043
  %5047 = fmul fast float %5040, %5040
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fmul fast float %5046, %5049
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fmul fast float %5051, %4908
  br label %5053

; <label>:5053                                    ; preds = %4910, %4876, %4835
  %5054 = phi float [ %5032, %4910 ], [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4835 ]
  %5055 = phi float [ %5035, %4910 ], [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4835 ]
  %5056 = phi float [ %5036, %4910 ], [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4835 ]
  %5057 = phi float [ %5052, %4910 ], [ 0.000000e+00, %4876 ], [ 0.000000e+00, %4835 ]
  %5058 = fcmp fast olt float %5057, 1.000000e+00
  %5059 = or i1 %5058, %4833
  %5060 = zext i1 %5059 to i32
  %5061 = fmul fast float %5057, %4818
  %5062 = fsub fast float %5057, %5061
  %5063 = fsub fast float 1.000000e+00, %4824
  %5064 = fmul fast float %5062, %5063
  %5065 = fadd fast float %5064, %4824
  %5066 = fsub fast float %5065, %5062
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fmul fast float %5067, %4790
  %5069 = fmul fast float %5067, %4791
  %5070 = fmul fast float %5067, %4792
  %5071 = fsub fast float -0.000000e+00, %5065
  %5072 = fmul fast float %5062, %5054
  %5073 = fmul fast float %5062, %5055
  %5074 = fmul fast float %5062, %5056
  %5075 = fadd fast float %5072, %5068
  %5076 = fadd fast float %5073, %5069
  %5077 = fadd fast float %5074, %5070
  br label %5078

; <label>:5078                                    ; preds = %5053, %4826
  %5079 = phi float [ %4824, %4826 ], [ %5071, %5053 ]
  %5080 = phi float [ %4790, %4826 ], [ %5075, %5053 ]
  %5081 = phi float [ %4791, %4826 ], [ %5076, %5053 ]
  %5082 = phi float [ %4792, %4826 ], [ %5077, %5053 ]
  %5083 = phi i32 [ %4834, %4826 ], [ %5060, %5053 ]
  %5084 = icmp eq i32 %5083, 0
  br i1 %5084, label %5681, label %5085

; <label>:5085                                    ; preds = %5078
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 2
  %5088 = extractvalue %dx.types.CBufRet.f32 %5086, 3
  %5089 = fmul fast float %5087, %81
  %5090 = fmul fast float %5088, %82
  %5091 = fptoui float %5089 to i32
  %5092 = fptoui float %5090 to i32
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5096 = extractvalue %dx.types.CBufRet.f32 %5093, 3
  %5097 = fadd fast float %76, -4.000000e+00
  %5098 = call float @dx.op.binary.f32(i32 35, float %5097, float 0.000000e+00)  ; FMax(a,b)
  %5099 = fadd fast float %5098, %5094
  %5100 = fmul fast float %5099, %5095
  %5101 = call float @dx.op.unary.f32(i32 23, float %5100)  ; Log(value)
  %5102 = fmul fast float %5101, %5096
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 2
  %5105 = fmul fast float %5102, %5104
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.i32 %5107, 1
  %5109 = add i32 %5108, -1
  %5110 = uitofp i32 %5108 to float
  %5111 = fmul fast float %5110, %5106
  %5112 = fptoui float %5111 to i32
  %5113 = call i32 @dx.op.binary.i32(i32 40, i32 %5112, i32 %5109)  ; UMin(a,b)
  %5114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.i32 %5114, 2
  %5116 = extractvalue %dx.types.CBufRet.i32 %5114, 3
  %5117 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5092, i32 %5115, i32 %5091)  ; UMad(a,b,c)
  %5118 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5113, i32 %5116, i32 %5117)  ; UMad(a,b,c)
  %5119 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5120 = fptoui float %5119 to i32
  %5121 = lshr i32 %5120, 5
  %5122 = call i32 @dx.op.binary.i32(i32 40, i32 %5121, i32 8191)  ; UMin(a,b)
  %5123 = fcmp fast ogt float %4303, 0.000000e+00
  %5124 = fcmp fast ogt float %4531, 0.000000e+00
  %5125 = and i1 %5124, %5123
  br i1 %5125, label %5126, label %5155

; <label>:5126                                    ; preds = %5085
  %5127 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %4531, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float -1.000000e+00)  ; FMax(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5128, float 1.000000e+00)  ; FMin(a,b)
  %5130 = fmul fast float %5129, %5129
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = fmul fast float %5131, 0x3FFC6E2300000000
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = fcmp fast ogt float %5133, 0.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 24, float %5133)  ; Sqrt(value)
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = call float @dx.op.unary.f32(i32 23, float %5136)  ; Log(value)
  %5138 = fmul fast float %5137, 5.000000e+00
  %5139 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5140 = fmul fast float %5139, 0x3FEF591A60000000
  %5141 = fadd fast float %5140, 0x3F94DCB540000000
  %5142 = select i1 %5134, float %5141, float 1.000000e+00
  %5143 = fcmp fast oge float %5142, 1.000000e+00
  %5144 = fmul fast float %5127, 2.000000e+00
  %5145 = fadd fast float %5144, %4531
  %5146 = select i1 %5143, float %5145, float %4531
  %5147 = fsub fast float %5146, %4531
  %5148 = fmul fast float %5147, %4303
  %5149 = fadd fast float %5148, %4531
  %5150 = call float @dx.op.dot3.f32(i32 55, float %4529, float %4530, float %5149, float %4529, float %4530, float %5149)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = call float @dx.op.unary.f32(i32 25, float %5150)  ; Rsqrt(value)
  %5152 = fmul fast float %5151, %4529
  %5153 = fmul fast float %5151, %4530
  %5154 = fmul fast float %5149, %5151
  br label %5155

; <label>:5155                                    ; preds = %5126, %5085
  %5156 = phi float [ %5152, %5126 ], [ %4529, %5085 ]
  %5157 = phi float [ %5153, %5126 ], [ %4530, %5085 ]
  %5158 = phi float [ %5154, %5126 ], [ %4531, %5085 ]
  %5159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.i32 %5159, 2
  %5161 = add nsw i32 %5160, -1
  %5162 = call i32 @dx.op.binary.i32(i32 37, i32 %5161, i32 0)  ; IMax(a,b)
  %5163 = shl i32 %5122, 2
  %5164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.i32 %5164, 0
  %5166 = lshr i32 %5165, 16
  %5167 = and i32 %5165, 65535
  %5168 = lshr i32 %5165, 21
  %5169 = lshr i32 %5167, 5
  %5170 = call i32 @dx.op.binary.i32(i32 40, i32 %5169, i32 %5162)  ; UMin(a,b)
  %5171 = icmp ugt i32 %5168, %5170
  br i1 %5171, label %5553, label %5172

; <label>:5172                                    ; preds = %5155
  br label %5173

; <label>:5173                                    ; preds = %5542, %5172
  %5174 = phi float [ %5543, %5542 ], [ 0.000000e+00, %5172 ]
  %5175 = phi float [ %5544, %5542 ], [ 0.000000e+00, %5172 ]
  %5176 = phi float [ %5545, %5542 ], [ 0.000000e+00, %5172 ]
  %5177 = phi float [ %5546, %5542 ], [ 1.000000e+00, %5172 ]
  %5178 = phi i32 [ %5550, %5542 ], [ %5168, %5172 ]
  %5179 = phi float [ %5547, %5542 ], [ 0.000000e+00, %5172 ]
  %5180 = phi float [ %5548, %5542 ], [ 0.000000e+00, %5172 ]
  %5181 = phi float [ %5549, %5542 ], [ 0.000000e+00, %5172 ]
  %5182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.i32 %5182, 2
  %5184 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5118, i32 %5183, i32 %5178)  ; UMad(a,b,c)
  %5185 = shl i32 %5184, 2
  %5186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5185, i32 undef)  ; BufferLoad(srv,index,wot)
  %5187 = extractvalue %dx.types.ResRet.i32 %5186, 0
  %5188 = shl i32 %5178, 5
  %5189 = sub nsw i32 %5166, %5188
  %5190 = call i32 @dx.op.binary.i32(i32 37, i32 %5189, i32 0)  ; IMax(a,b)
  %5191 = call i32 @dx.op.binary.i32(i32 38, i32 %5190, i32 31)  ; IMin(a,b)
  %5192 = sub nsw i32 1, %5166
  %5193 = add nsw i32 %5192, %5167
  %5194 = call i32 @dx.op.binary.i32(i32 37, i32 %5193, i32 0)  ; IMax(a,b)
  %5195 = call i32 @dx.op.binary.i32(i32 38, i32 %5194, i32 32)  ; IMin(a,b)
  %5196 = and i32 %5195, 31
  %5197 = shl i32 -1, %5196
  %5198 = xor i32 %5197, -1
  %5199 = and i32 %5191, 31
  %5200 = shl i32 %5198, %5199
  %5201 = icmp eq i32 %5195, 32
  %5202 = select i1 %5201, i32 -1, i32 %5200
  %5203 = and i32 %5202, %5187
  %5204 = icmp eq i32 %5203, 0
  br i1 %5204, label %5542, label %5205

; <label>:5205                                    ; preds = %5173
  br label %5206

; <label>:5206                                    ; preds = %5316, %5205
  %5207 = phi float [ %5317, %5316 ], [ %5174, %5205 ]
  %5208 = phi float [ %5318, %5316 ], [ %5175, %5205 ]
  %5209 = phi float [ %5319, %5316 ], [ %5176, %5205 ]
  %5210 = phi float [ %5320, %5316 ], [ %5177, %5205 ]
  %5211 = phi i32 [ %5219, %5316 ], [ %5203, %5205 ]
  %5212 = phi float [ %5321, %5316 ], [ %5179, %5205 ]
  %5213 = phi float [ %5322, %5316 ], [ %5180, %5205 ]
  %5214 = phi float [ %5323, %5316 ], [ %5181, %5205 ]
  %5215 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5211)  ; FirstbitLo(value)
  %5216 = add i32 %5215, %5188
  %5217 = and i32 %5215, 31
  %5218 = shl i32 1, %5217
  %5219 = xor i32 %5218, %5211
  %5220 = mul i32 %5216, 72
  %5221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.ResRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.ResRet.f32 %5221, 2
  %5225 = add i32 %5220, 12
  %5226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.i32 %5226, 0
  %5228 = add i32 %5220, 16
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = add i32 %5220, 28
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = add i32 %5220, 32
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = extractvalue %dx.types.ResRet.f32 %5237, 3
  %5242 = add i32 %5220, 48
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = add i32 %5220, 56
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = add i32 %5220, 64
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = mul i32 %5216, 60
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.ResRet.f32 %5255, 2
  %5259 = add i32 %5254, 12
  %5260 = add i32 %5254, 48
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = and i32 %5227, 32767
  %5266 = bitcast float %5222 to i32
  %5267 = icmp eq i32 %5266, -1
  %5268 = bitcast float %5223 to i32
  %5269 = and i32 %5227, 32768
  %5270 = icmp ne i32 %5269, 0
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5275 = fsub fast float %5256, %5272
  %5276 = fsub fast float %5257, %5273
  %5277 = fsub fast float %5258, %5274
  %5278 = fsub fast float %137, %5275
  %5279 = fsub fast float %138, %5276
  %5280 = fsub fast float %139, %5277
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = add i32 %5254, 24
  %5287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5288, float %5289, float %5290)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = add i32 %5254, 36
  %5293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.ResRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.ResRet.f32 %5293, 2
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5299 = call float @dx.op.unary.f32(i32 6, float %5291)  ; FAbs(value)
  %5300 = call float @dx.op.unary.f32(i32 6, float %5297)  ; FAbs(value)
  %5301 = fsub fast float %5262, %5298
  %5302 = fsub fast float %5263, %5299
  %5303 = fsub fast float %5264, %5300
  %5304 = fmul fast float %5301, %5230
  %5305 = fmul fast float %5302, %5231
  %5306 = fmul fast float %5303, %5232
  %5307 = call float @dx.op.binary.f32(i32 36, float %5305, float %5306)  ; FMin(a,b)
  %5308 = call float @dx.op.binary.f32(i32 36, float %5304, float %5307)  ; FMin(a,b)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = call float @dx.op.binary.f32(i32 36, float %5210, float %5309)  ; FMin(a,b)
  %5311 = uitofp i1 %5270 to float
  %5312 = fadd fast float %4303, 1.000000e+00
  %5313 = fsub fast float %5312, %5311
  %5314 = fmul fast float %5310, %5313
  %5315 = fcmp fast ogt float %5314, 0.000000e+00
  br i1 %5315, label %5325, label %5316

; <label>:5316                                    ; preds = %5467, %5206
  %5317 = phi float [ %5531, %5467 ], [ %5207, %5206 ]
  %5318 = phi float [ %5532, %5467 ], [ %5208, %5206 ]
  %5319 = phi float [ %5533, %5467 ], [ %5209, %5206 ]
  %5320 = phi float [ %5540, %5467 ], [ %5210, %5206 ]
  %5321 = phi float [ %5537, %5467 ], [ %5212, %5206 ]
  %5322 = phi float [ %5538, %5467 ], [ %5213, %5206 ]
  %5323 = phi float [ %5539, %5467 ], [ %5214, %5206 ]
  %5324 = icmp eq i32 %5211, %5218
  br i1 %5324, label %5541, label %5206

; <label>:5325                                    ; preds = %5206
  br i1 %5267, label %5383, label %5326

; <label>:5326                                    ; preds = %5325
  %5327 = fsub fast float -0.000000e+00, %5282
  %5328 = fsub fast float -0.000000e+00, %5283
  %5329 = fsub fast float -0.000000e+00, %5284
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = fsub fast float -0.000000e+00, %5330
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = fadd fast float %5332, %5245
  %5334 = fadd fast float %5244, %5332
  %5335 = fsub fast float -0.000000e+00, %5334
  %5336 = fcmp ogt float %5330, -0.000000e+00
  %5337 = select i1 %5336, float %5335, float %5333
  %5338 = call float @dx.op.unary.f32(i32 6, float %5331)  ; FAbs(value)
  %5339 = fdiv fast float 1.000000e+00, %5338
  %5340 = fmul fast float %5337, %5339
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5342 = fsub fast float -0.000000e+00, %5288
  %5343 = fsub fast float -0.000000e+00, %5289
  %5344 = fsub fast float -0.000000e+00, %5290
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fsub fast float -0.000000e+00, %5345
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = fadd fast float %5347, %5249
  %5349 = fadd fast float %5248, %5347
  %5350 = fsub fast float -0.000000e+00, %5349
  %5351 = fcmp ogt float %5345, -0.000000e+00
  %5352 = select i1 %5351, float %5350, float %5348
  %5353 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5354 = fdiv fast float 1.000000e+00, %5353
  %5355 = fmul fast float %5352, %5354
  %5356 = call float @dx.op.binary.f32(i32 35, float %5355, float 0.000000e+00)  ; FMax(a,b)
  %5357 = fsub fast float -0.000000e+00, %5294
  %5358 = fsub fast float -0.000000e+00, %5295
  %5359 = fsub fast float -0.000000e+00, %5296
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fsub fast float -0.000000e+00, %5360
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = fadd fast float %5362, %5253
  %5364 = fadd fast float %5252, %5362
  %5365 = fsub fast float -0.000000e+00, %5364
  %5366 = fcmp ogt float %5360, -0.000000e+00
  %5367 = select i1 %5366, float %5365, float %5363
  %5368 = call float @dx.op.unary.f32(i32 6, float %5361)  ; FAbs(value)
  %5369 = fdiv fast float 1.000000e+00, %5368
  %5370 = fmul fast float %5367, %5369
  %5371 = call float @dx.op.binary.f32(i32 35, float %5370, float 0.000000e+00)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 36, float %5356, float %5371)  ; FMin(a,b)
  %5373 = call float @dx.op.binary.f32(i32 36, float %5341, float %5372)  ; FMin(a,b)
  %5374 = fmul fast float %5373, %5156
  %5375 = fmul fast float %5373, %5157
  %5376 = fmul fast float %5373, %5158
  %5377 = fadd fast float %5374, %137
  %5378 = fadd fast float %5375, %138
  %5379 = fadd fast float %5376, %139
  %5380 = fsub fast float %5377, %5222
  %5381 = fsub fast float %5378, %5223
  %5382 = fsub fast float %5379, %5224
  br label %5390

; <label>:5383                                    ; preds = %5325
  %5384 = fmul fast float %5156, 8.096000e+03
  %5385 = fmul fast float %5157, 8.096000e+03
  %5386 = fmul fast float %5158, 8.096000e+03
  %5387 = fadd fast float %5384, %137
  %5388 = fadd fast float %5385, %138
  %5389 = fadd fast float %5386, %139
  br label %5390

; <label>:5390                                    ; preds = %5383, %5326
  %5391 = phi float [ %5156, %5383 ], [ %5380, %5326 ]
  %5392 = phi float [ %5157, %5383 ], [ %5381, %5326 ]
  %5393 = phi float [ %5158, %5383 ], [ %5382, %5326 ]
  %5394 = phi float [ %5387, %5383 ], [ %5377, %5326 ]
  %5395 = phi float [ %5388, %5383 ], [ %5378, %5326 ]
  %5396 = phi float [ %5389, %5383 ], [ %5379, %5326 ]
  %5397 = fcmp fast olt float %5241, 1.000000e+00
  br i1 %5397, label %5398, label %5429, !dx.controlflow.hints !83

; <label>:5398                                    ; preds = %5390
  %5399 = fmul fast float %5393, %5239
  %5400 = fmul fast float %5392, %5240
  %5401 = fsub fast float %5399, %5400
  %5402 = fmul fast float %5391, %5240
  %5403 = fmul fast float %5393, %5238
  %5404 = fsub fast float %5402, %5403
  %5405 = fmul fast float %5392, %5238
  %5406 = fmul fast float %5391, %5239
  %5407 = fsub fast float %5405, %5406
  %5408 = fmul fast float %5401, 2.000000e+00
  %5409 = fmul fast float %5404, 2.000000e+00
  %5410 = fmul fast float %5407, 2.000000e+00
  %5411 = fmul fast float %5408, %5241
  %5412 = fmul fast float %5409, %5241
  %5413 = fmul fast float %5410, %5241
  %5414 = fmul fast float %5410, %5239
  %5415 = fmul fast float %5409, %5240
  %5416 = fmul fast float %5408, %5240
  %5417 = fmul fast float %5410, %5238
  %5418 = fmul fast float %5409, %5238
  %5419 = fmul fast float %5408, %5239
  %5420 = fadd fast float %5414, %5391
  %5421 = fadd fast float %5420, %5411
  %5422 = fsub fast float %5421, %5415
  %5423 = fsub fast float %5392, %5417
  %5424 = fadd fast float %5423, %5412
  %5425 = fadd fast float %5424, %5416
  %5426 = fadd fast float %5413, %5393
  %5427 = fsub fast float %5426, %5419
  %5428 = fadd fast float %5427, %5418
  br label %5429

; <label>:5429                                    ; preds = %5398, %5390
  %5430 = phi float [ %5422, %5398 ], [ %5391, %5390 ]
  %5431 = phi float [ %5425, %5398 ], [ %5392, %5390 ]
  %5432 = phi float [ %5428, %5398 ], [ %5393, %5390 ]
  br i1 %5267, label %5464, label %5433

; <label>:5433                                    ; preds = %5429
  %5434 = fmul fast float %4504, 0x400187C840000000
  %5435 = fadd fast float %5434, 0xC00EFC2120000000
  %5436 = fmul fast float %5435, %4504
  %5437 = fadd fast float %5436, 0x3FE5D16340000000
  %5438 = fmul fast float %5437, %4504
  %5439 = fadd fast float %5438, 1.000000e+00
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fsub fast float %5394, %137
  %5442 = fsub fast float %5395, %138
  %5443 = fsub fast float %5396, %139
  %5444 = fsub fast float %5394, %5222
  %5445 = fsub fast float %5395, %5223
  %5446 = fsub fast float %5396, %5224
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = fadd fast float %5448, 0x3EE4F8B580000000
  %5450 = fdiv fast float %5447, %5449
  %5451 = bitcast float %5450 to i32
  %5452 = ashr i32 %5451, 1
  %5453 = add nsw i32 %5452, 532487669
  %5454 = bitcast i32 %5453 to float
  %5455 = fmul fast float %5454, %5440
  %5456 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5457 = fmul fast float %5456, 0x4009981AE0000000
  %5458 = fsub fast float 0x40111BBD80000000, %5457
  %5459 = fmul fast float %5458, %5456
  %5460 = fadd fast float %5459, 0xC0009F6020000000
  %5461 = fmul fast float %5460, %5456
  %5462 = fadd fast float %5461, 1.000000e+00
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  br label %5467

; <label>:5464                                    ; preds = %5429
  %5465 = icmp ne i32 %5268, -1
  %5466 = zext i1 %5465 to i32
  br label %5467

; <label>:5467                                    ; preds = %5464, %5433
  %5468 = phi float [ %4504, %5464 ], [ %5463, %5433 ]
  %5469 = phi i32 [ %5466, %5464 ], [ 0, %5433 ]
  %5470 = fmul float %5468, 5.000000e+00
  %5471 = fsub float 5.000000e+00, %5470
  %5472 = icmp ne i32 %5469, 0
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5475 = fadd fast float %5474, %5471
  %5476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5475)  ; FMax(a,b)
  %5477 = call float @dx.op.unary.f32(i32 6, float %5430)  ; FAbs(value)
  %5478 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5479 = fadd fast float %5478, %5477
  %5480 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5481 = fadd fast float %5479, %5480
  %5482 = fcmp fast oeq float %5481, 0.000000e+00
  %5483 = fdiv fast float 1.000000e+00, %5481
  %5484 = select i1 %5482, float 1.000000e+00, float %5483
  %5485 = fmul fast float %5484, %5430
  %5486 = fmul fast float %5484, %5431
  %5487 = call float @dx.op.unary.f32(i32 6, float %5486)  ; FAbs(value)
  %5488 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5489 = fsub fast float 1.000000e+00, %5487
  %5490 = fsub fast float 1.000000e+00, %5488
  %5491 = fcmp fast oge float %5485, 0.000000e+00
  %5492 = fcmp fast oge float %5486, 0.000000e+00
  %5493 = select i1 %5491, float 1.000000e+00, float -1.000000e+00
  %5494 = select i1 %5492, float 1.000000e+00, float -1.000000e+00
  %5495 = fcmp fast ole float %5432, 0.000000e+00
  %5496 = fmul fast float %5493, %5489
  %5497 = fmul fast float %5494, %5490
  %5498 = select i1 %5495, float %5496, float %5485
  %5499 = select i1 %5495, float %5497, float %5486
  %5500 = fmul fast float %5498, 5.000000e-01
  %5501 = fmul fast float %5499, 5.000000e-01
  %5502 = fadd fast float %5500, 5.000000e-01
  %5503 = fadd fast float %5501, 5.000000e-01
  %5504 = uitofp i32 %5265 to float
  %5505 = call float @dx.op.binary.f32(i32 36, float %5476, float 3.000000e+00)  ; FMin(a,b)
  %5506 = fadd fast float %5505, 2.000000e+00
  %5507 = call float @dx.op.unary.f32(i32 21, float %5506)  ; Exp(value)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5509 = fmul fast float %5508, %5507
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %5502, %5511
  %5513 = fmul fast float %5503, %5511
  %5514 = fadd fast float %5512, %5509
  %5515 = fadd fast float %5513, %5509
  %5516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5514, float %5515, float %5504, float undef, i32 0, i32 0, i32 undef, float %5476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5517 = extractvalue %dx.types.ResRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.ResRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.ResRet.f32 %5516, 2
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5522 = fmul fast float %5521, %5235
  %5523 = call float @dx.op.binary.f32(i32 36, float %4550, float %5522)  ; FMin(a,b)
  %5524 = select i1 %5472, float %5523, float %5522
  %5525 = fmul fast float %5517, %5314
  %5526 = fmul fast float %5525, %5524
  %5527 = fmul fast float %5518, %5314
  %5528 = fmul fast float %5527, %5524
  %5529 = fmul fast float %5519, %5314
  %5530 = fmul fast float %5529, %5524
  %5531 = fadd fast float %5526, %5207
  %5532 = fadd fast float %5528, %5208
  %5533 = fadd fast float %5530, %5209
  %5534 = fmul fast float %5394, %5314
  %5535 = fmul fast float %5395, %5314
  %5536 = fmul fast float %5396, %5314
  %5537 = fadd fast float %5534, %5212
  %5538 = fadd fast float %5535, %5213
  %5539 = fadd fast float %5536, %5214
  %5540 = fsub fast float %5210, %5314
  br label %5316

; <label>:5541                                    ; preds = %5316
  br label %5542

; <label>:5542                                    ; preds = %5541, %5173
  %5543 = phi float [ %5174, %5173 ], [ %5317, %5541 ]
  %5544 = phi float [ %5175, %5173 ], [ %5318, %5541 ]
  %5545 = phi float [ %5176, %5173 ], [ %5319, %5541 ]
  %5546 = phi float [ %5177, %5173 ], [ %5320, %5541 ]
  %5547 = phi float [ %5179, %5173 ], [ %5321, %5541 ]
  %5548 = phi float [ %5180, %5173 ], [ %5322, %5541 ]
  %5549 = phi float [ %5181, %5173 ], [ %5323, %5541 ]
  %5550 = add i32 %5178, 1
  %5551 = icmp ugt i32 %5550, %5170
  br i1 %5551, label %5552, label %5173, !llvm.loop !84

; <label>:5552                                    ; preds = %5542
  br label %5553

; <label>:5553                                    ; preds = %5552, %5155
  %5554 = phi float [ 0.000000e+00, %5155 ], [ %5543, %5552 ]
  %5555 = phi float [ 0.000000e+00, %5155 ], [ %5544, %5552 ]
  %5556 = phi float [ 0.000000e+00, %5155 ], [ %5545, %5552 ]
  %5557 = phi float [ 0.000000e+00, %5155 ], [ %5547, %5552 ]
  %5558 = phi float [ 0.000000e+00, %5155 ], [ %5548, %5552 ]
  %5559 = phi float [ 0.000000e+00, %5155 ], [ %5549, %5552 ]
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5555, float %5556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = select i1 %181, float 0.000000e+00, float %5554
  %5562 = select i1 %181, float %5560, float %5555
  %5563 = select i1 %181, float 0.000000e+00, float %5556
  %5564 = fcmp fast olt float %5079, 0.000000e+00
  %5565 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5566 = fmul fast float %5565, %5080
  %5567 = fmul fast float %5565, %5081
  %5568 = fmul fast float %5565, %5082
  %5569 = select i1 %5564, float %5080, float %5566
  %5570 = select i1 %5564, float %5081, float %5567
  %5571 = select i1 %5564, float %5082, float %5568
  %5572 = fsub fast float 1.000000e+00, %5565
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = fmul fast float %5573, %5561
  %5575 = fmul fast float %5573, %5562
  %5576 = fmul fast float %5573, %5563
  %5577 = fadd fast float %5569, %5574
  %5578 = fadd fast float %5570, %5575
  %5579 = fadd fast float %5571, %5576
  %5580 = fcmp fast une float %4829, 0.000000e+00
  br i1 %5580, label %5681, label %5581

; <label>:5581                                    ; preds = %5553
  %5582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5583 = extractvalue %dx.types.CBufRet.f32 %5582, 0
  %5584 = extractvalue %dx.types.CBufRet.f32 %5582, 1
  %5585 = extractvalue %dx.types.CBufRet.f32 %5582, 2
  %5586 = extractvalue %dx.types.CBufRet.f32 %5582, 3
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.CBufRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.CBufRet.f32 %5587, 2
  %5591 = extractvalue %dx.types.CBufRet.f32 %5587, 3
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %5596 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5594, float %5595, float %4529, float %4530, float %4531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5557, float %5558, float %5559, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fadd fast float %4504, -1.000000e+00
  %5601 = fsub fast float %5598, %5599
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 2
  %5604 = fmul fast float %5603, %5598
  %5605 = fdiv fast float 1.600000e+02, %5604
  %5606 = fmul fast float %5600, %5600
  %5607 = fmul fast float %5606, 0xBFB5B17960000000
  %5608 = fmul fast float %5607, %5601
  %5609 = fmul fast float %5608, %5605
  %5610 = call float @dx.op.unary.f32(i32 21, float %5609)  ; Exp(value)
  %5611 = fmul fast float %5610, 0x3FF04B2960000000
  %5612 = fsub fast float 0x3FF04B2960000000, %5611
  %5613 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5614 = fmul fast float %5613, 4.000000e+00
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5619 = fadd fast float %5616, %5557
  %5620 = fadd fast float %5617, %5558
  %5621 = fadd fast float %5618, %5559
  %5622 = fmul fast float %5619, %5583
  %5623 = call float @dx.op.tertiary.f32(i32 46, float %5620, float %5584, float %5622)  ; FMad(a,b,c)
  %5624 = call float @dx.op.tertiary.f32(i32 46, float %5621, float %5585, float %5623)  ; FMad(a,b,c)
  %5625 = fadd fast float %5624, %5586
  %5626 = fmul fast float %5619, %5588
  %5627 = call float @dx.op.tertiary.f32(i32 46, float %5620, float %5589, float %5626)  ; FMad(a,b,c)
  %5628 = call float @dx.op.tertiary.f32(i32 46, float %5621, float %5590, float %5627)  ; FMad(a,b,c)
  %5629 = fadd fast float %5628, %5591
  %5630 = fmul fast float %5619, %5593
  %5631 = call float @dx.op.tertiary.f32(i32 46, float %5620, float %5594, float %5630)  ; FMad(a,b,c)
  %5632 = call float @dx.op.tertiary.f32(i32 46, float %5621, float %5595, float %5631)  ; FMad(a,b,c)
  %5633 = fadd fast float %5632, %5596
  %5634 = fdiv fast float %5625, %5633
  %5635 = fdiv fast float %5629, %5633
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5639 = fmul fast float %5637, %5634
  %5640 = fmul fast float %5638, %5635
  %5641 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5642 = extractvalue %dx.types.CBufRet.f32 %5636, 3
  %5643 = fadd fast float %5639, %5641
  %5644 = fadd fast float %5640, %5642
  %5645 = fmul fast float %5597, 8.000000e+00
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5643, 2.000000e+00
  %5648 = fmul fast float %5644, 2.000000e+00
  %5649 = fadd fast float %5647, -1.000000e+00
  %5650 = fadd fast float %5648, -1.000000e+00
  %5651 = fmul fast float %5649, %5649
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = fmul fast float %5650, %5650
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %4829, %5653
  %5658 = fmul fast float %5657, %5656
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, %5646
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5643, float %5644, float undef, float undef, i32 0, i32 0, i32 undef, float %5614)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5665 = select i1 %181, float 0.000000e+00, float %5663
  %5666 = select i1 %181, float 0.000000e+00, float %5664
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5669 = fmul fast float %5668, %5662
  %5670 = fmul fast float %5665, %5668
  %5671 = fmul fast float %5666, %5668
  %5672 = fsub fast float %5669, %5561
  %5673 = fsub fast float %5670, %5562
  %5674 = fsub fast float %5671, %5563
  %5675 = fmul fast float %5672, %5660
  %5676 = fmul fast float %5673, %5660
  %5677 = fmul fast float %5674, %5660
  %5678 = fadd fast float %5675, %5561
  %5679 = fadd fast float %5676, %5562
  %5680 = fadd fast float %5677, %5563
  br label %5681

; <label>:5681                                    ; preds = %5581, %5553, %5078, %4699
  %5682 = phi float [ %5080, %5078 ], [ %5577, %5553 ], [ %4790, %4699 ], [ %5678, %5581 ]
  %5683 = phi float [ %5081, %5078 ], [ %5578, %5553 ], [ %4791, %4699 ], [ %5679, %5581 ]
  %5684 = phi float [ %5082, %5078 ], [ %5579, %5553 ], [ %4792, %4699 ], [ %5680, %5581 ]
  %5685 = fmul fast float %5682, %4803
  %5686 = fmul fast float %5683, %4804
  %5687 = fmul fast float %5684, %4805
  %5688 = fadd fast float %5685, %3785
  %5689 = fmul fast float %5688, %956
  %5690 = fadd fast float %5686, %3786
  %5691 = fmul fast float %5690, %956
  %5692 = fadd fast float %5687, %3787
  %5693 = fmul fast float %5692, %956
  %5694 = fmul fast float %4808, %4784
  %5695 = fmul fast float %4808, %4783
  %5696 = fmul fast float %4808, %4782
  %5697 = fmul fast float %4808, %3919
  %5698 = fadd fast float %5697, -1.000000e+00
  %5699 = fmul fast float %5698, %956
  %5700 = fadd fast float %5699, 1.000000e+00
  %5701 = fmul fast float %4808, %3918
  %5702 = fadd fast float %5701, -1.000000e+00
  %5703 = fmul fast float %5702, %956
  %5704 = fadd fast float %5703, 1.000000e+00
  %5705 = fmul fast float %4808, %3917
  %5706 = fadd fast float %5705, -1.000000e+00
  %5707 = fmul fast float %5706, %956
  %5708 = fadd fast float %5707, 1.000000e+00
  %5709 = fmul fast float %5708, %4786
  %5710 = fmul fast float %5704, %4787
  %5711 = fmul fast float %5700, %4788
  %5712 = fadd fast float %5709, %5696
  %5713 = fmul fast float %5712, %956
  %5714 = fadd fast float %5710, %5695
  %5715 = fmul fast float %5714, %956
  %5716 = fadd fast float %5711, %5694
  %5717 = fmul fast float %5716, %956
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5720 = fcmp fast oeq float %5719, 0.000000e+00
  br i1 %5720, label %5897, label %5721

; <label>:5721                                    ; preds = %5681
  %5722 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5723 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5724 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5728 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.CBufRet.f32 %5729, 1
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5726, float %5727, float %5728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = select i1 %181, float %5730, float %5726
  %5734 = select i1 %181, float %5732, float %5727
  %5735 = select i1 %181, float %5731, float %5728
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5738 = fcmp fast une float %5737, 0.000000e+00
  br i1 %5738, label %5739, label %5756

; <label>:5739                                    ; preds = %5721
  %5740 = fptoui float %81 to i32
  %5741 = fptoui float %82 to i32
  %5742 = lshr i32 %5740, 4
  %5743 = lshr i32 %5741, 4
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5746 = fptoui float %5745 to i32
  %5747 = add i32 %5746, 15
  %5748 = lshr i32 %5747, 4
  %5749 = mul i32 %5748, %5743
  %5750 = add i32 %5749, %5742
  %5751 = shl i32 %5750, 3
  %5752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5751, i32 undef)  ; BufferLoad(srv,index,wot)
  %5753 = extractvalue %dx.types.ResRet.i32 %5752, 0
  %5754 = and i32 %5753, -268435456
  %5755 = icmp eq i32 %5754, -1342177280
  br i1 %5755, label %5761, label %5756

; <label>:5756                                    ; preds = %5739, %5721
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4509, float %4510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  br label %5761

; <label>:5761                                    ; preds = %5756, %5739
  %5762 = phi float [ %5758, %5756 ], [ 0.000000e+00, %5739 ]
  %5763 = phi float [ %5759, %5756 ], [ 0.000000e+00, %5739 ]
  %5764 = phi float [ %5760, %5756 ], [ 0.000000e+00, %5739 ]
  %5765 = call float @dx.op.binary.f32(i32 36, float %5763, float %5764)  ; FMin(a,b)
  %5766 = call float @dx.op.binary.f32(i32 36, float %5762, float %5765)  ; FMin(a,b)
  %5767 = fcmp fast ogt float %5766, 0.000000e+00
  br i1 %5767, label %5768, label %5897, !dx.controlflow.hints !86

; <label>:5768                                    ; preds = %5761
  %5769 = fmul fast float %5762, %5733
  %5770 = fmul fast float %5763, %5734
  %5771 = fmul fast float %5764, %5735
  %5772 = fsub fast float %5722, %4494
  %5773 = fsub fast float %5723, %4493
  %5774 = fsub fast float %5724, %4492
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float %5772, float %5773, float %5774)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = call float @dx.op.unary.f32(i32 25, float %5775)  ; Rsqrt(value)
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5776, %5773
  %5779 = fmul fast float %5776, %5774
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4490, float %4489, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5783 = fmul fast float %5782, %5782
  %5784 = fmul fast float %5783, %4548
  %5785 = call float @dx.op.unary.f32(i32 7, float %5784)  ; Saturate(value)
  %5786 = fmul fast float %5785, %5782
  %5787 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fmul fast float %5787, %5787
  %5789 = call float @dx.op.unary.f32(i32 6, float %5780)  ; FAbs(value)
  %5790 = fsub fast float 1.000000e+00, %4541
  %5791 = fmul fast float %4523, %4523
  %5792 = fmul fast float %5791, %5790
  %5793 = fadd fast float %5792, %4541
  %5794 = bitcast float %5793 to i32
  %5795 = ashr i32 %5794, 1
  %5796 = add nsw i32 %5795, 532487669
  %5797 = bitcast i32 %5796 to float
  %5798 = fadd fast float %5797, %4523
  %5799 = fmul fast float %4541, %5788
  %5800 = fsub fast float 1.000000e+00, %5788
  %5801 = fadd fast float %5800, %5799
  %5802 = fmul fast float %5789, %5789
  %5803 = fmul fast float %5802, %5790
  %5804 = fadd fast float %5803, %4541
  %5805 = bitcast float %5804 to i32
  %5806 = ashr i32 %5805, 1
  %5807 = add nsw i32 %5806, 532487669
  %5808 = bitcast i32 %5807 to float
  %5809 = fadd fast float %5808, %5789
  %5810 = fmul fast float %5801, %5801
  %5811 = fmul fast float %5810, %5798
  %5812 = fmul fast float %5811, %5809
  %5813 = fdiv fast float 0x3FF0A00000000000, %5812
  %5814 = fmul fast float %5813, %4541
  %5815 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5816 = fsub fast float 1.000000e+00, %5815
  %5817 = bitcast float %5816 to i32
  %5818 = sitofp i32 %5817 to float
  %5819 = fmul fast float %5818, 5.000000e+00
  %5820 = fadd fast float %5819, 0xC1EFBF8940000000
  %5821 = fptosi float %5820 to i32
  %5822 = bitcast i32 %5821 to float
  %5823 = fsub fast float 1.000000e+00, %4501
  %5824 = fsub fast float 1.000000e+00, %4502
  %5825 = fsub fast float 1.000000e+00, %4521
  %5826 = fmul fast float %5822, %5823
  %5827 = fmul fast float %5822, %5824
  %5828 = fmul fast float %5822, %5825
  %5829 = fadd fast float %5826, %4501
  %5830 = fadd fast float %5827, %4502
  %5831 = fadd fast float %5828, %4521
  %5832 = fmul fast float %5780, 9.843750e-01
  %5833 = fadd fast float %5832, 7.812500e-03
  %5834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5833, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 2
  %5836 = extractvalue %dx.types.ResRet.f32 %5834, 3
  %5837 = fmul fast float %5835, %4501
  %5838 = fmul fast float %5835, %4502
  %5839 = fmul fast float %5835, %4521
  %5840 = fadd fast float %5837, %5836
  %5841 = fadd fast float %5838, %5836
  %5842 = fadd fast float %5839, %5836
  %5843 = call float @dx.op.binary.f32(i32 35, float %5841, float %5842)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5840, float %5843)  ; FMax(a,b)
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fsub fast float -0.000000e+00, %4495
  %5847 = fsub fast float -0.000000e+00, %4496
  %5848 = fsub fast float -0.000000e+00, %4497
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = fmul fast float %5850, 9.843750e-01
  %5852 = fadd fast float %5851, 7.812500e-03
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5852, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 3
  %5856 = fmul fast float %5854, %4501
  %5857 = fmul fast float %5854, %4502
  %5858 = fmul fast float %5854, %4521
  %5859 = fadd fast float %5856, %5855
  %5860 = fadd fast float %5857, %5855
  %5861 = fadd fast float %5858, %5855
  %5862 = call float @dx.op.binary.f32(i32 35, float %5860, float %5861)  ; FMax(a,b)
  %5863 = call float @dx.op.binary.f32(i32 35, float %5859, float %5862)  ; FMax(a,b)
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = fmul fast float %5864, %5850
  %5866 = fmul fast float %5865, %3917
  %5867 = fmul fast float %5865, %3918
  %5868 = fmul fast float %5865, %3919
  %5869 = fmul fast float %5845, %5786
  %5870 = fadd fast float %5866, %5869
  %5871 = fadd fast float %5867, %5869
  %5872 = fadd fast float %5868, %5869
  %5873 = fmul fast float %5870, %5769
  %5874 = fmul fast float %5871, %5770
  %5875 = fmul fast float %5872, %5771
  %5876 = fmul fast float %5786, %5769
  %5877 = fmul fast float %5876, %5814
  %5878 = fmul fast float %5877, %5829
  %5879 = fmul fast float %5786, %5770
  %5880 = fmul fast float %5879, %5814
  %5881 = fmul fast float %5880, %5830
  %5882 = fmul fast float %5786, %5771
  %5883 = fmul fast float %5882, %5814
  %5884 = fmul fast float %5883, %5831
  %5885 = fadd fast float %5873, %5712
  %5886 = fmul fast float %5885, %956
  %5887 = fadd fast float %5874, %5714
  %5888 = fmul fast float %5887, %956
  %5889 = fadd fast float %5875, %5716
  %5890 = fmul fast float %5889, %956
  %5891 = fadd fast float %5878, %5688
  %5892 = fmul fast float %5891, %956
  %5893 = fadd fast float %5881, %5690
  %5894 = fmul fast float %5893, %956
  %5895 = fadd fast float %5884, %5692
  %5896 = fmul fast float %5895, %956
  br label %5897

; <label>:5897                                    ; preds = %5768, %5761, %5681
  %5898 = phi float [ %5689, %5681 ], [ %5689, %5761 ], [ %5892, %5768 ]
  %5899 = phi float [ %5691, %5681 ], [ %5691, %5761 ], [ %5894, %5768 ]
  %5900 = phi float [ %5693, %5681 ], [ %5693, %5761 ], [ %5896, %5768 ]
  %5901 = phi float [ %5713, %5681 ], [ %5713, %5761 ], [ %5886, %5768 ]
  %5902 = phi float [ %5715, %5681 ], [ %5715, %5761 ], [ %5888, %5768 ]
  %5903 = phi float [ %5717, %5681 ], [ %5717, %5761 ], [ %5890, %5768 ]
  %5904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.i32 %5904, 0
  %5906 = icmp eq i32 %5905, 0
  br i1 %5906, label %6296, label %5907

; <label>:5907                                    ; preds = %5897
  %5908 = fptoui float %81 to i32
  %5909 = fptoui float %82 to i32
  %5910 = lshr i32 %5908, 4
  %5911 = lshr i32 %5909, 4
  %5912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.i32 %5912, 0
  %5914 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5911, i32 %5913, i32 %5910)  ; UMad(a,b,c)
  %5915 = add nsw i32 %5905, -1
  %5916 = call i32 @dx.op.binary.i32(i32 37, i32 %5915, i32 0)  ; IMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5918 = fptoui float %5917 to i32
  %5919 = lshr i32 %5918, 5
  %5920 = call i32 @dx.op.binary.i32(i32 40, i32 %5919, i32 8191)  ; UMin(a,b)
  %5921 = shl i32 %5920, 2
  %5922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5921, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.i32 %5922, 0
  %5924 = lshr i32 %5923, 16
  %5925 = and i32 %5923, 65535
  %5926 = lshr i32 %5923, 21
  %5927 = lshr i32 %5925, 5
  %5928 = call i32 @dx.op.binary.i32(i32 40, i32 %5927, i32 %5916)  ; UMin(a,b)
  %5929 = icmp ugt i32 %5926, %5928
  br i1 %5929, label %6296, label %5930

; <label>:5930                                    ; preds = %5907
  br label %5931

; <label>:5931                                    ; preds = %6286, %5930
  %5932 = phi i32 [ %6293, %6286 ], [ %5926, %5930 ]
  %5933 = phi float [ %6287, %6286 ], [ %5898, %5930 ]
  %5934 = phi float [ %6288, %6286 ], [ %5899, %5930 ]
  %5935 = phi float [ %6289, %6286 ], [ %5900, %5930 ]
  %5936 = phi float [ %6290, %6286 ], [ %5901, %5930 ]
  %5937 = phi float [ %6291, %6286 ], [ %5902, %5930 ]
  %5938 = phi float [ %6292, %6286 ], [ %5903, %5930 ]
  %5939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.i32 %5939, 0
  %5941 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5914, i32 %5940, i32 %5932)  ; UMad(a,b,c)
  %5942 = shl i32 %5941, 2
  %5943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.i32 %5943, 0
  %5945 = shl i32 %5932, 5
  %5946 = sub nsw i32 %5924, %5945
  %5947 = call i32 @dx.op.binary.i32(i32 37, i32 %5946, i32 0)  ; IMax(a,b)
  %5948 = call i32 @dx.op.binary.i32(i32 38, i32 %5947, i32 31)  ; IMin(a,b)
  %5949 = sub nsw i32 1, %5924
  %5950 = add nsw i32 %5949, %5925
  %5951 = call i32 @dx.op.binary.i32(i32 37, i32 %5950, i32 0)  ; IMax(a,b)
  %5952 = call i32 @dx.op.binary.i32(i32 38, i32 %5951, i32 32)  ; IMin(a,b)
  %5953 = and i32 %5952, 31
  %5954 = shl i32 -1, %5953
  %5955 = xor i32 %5954, -1
  %5956 = and i32 %5948, 31
  %5957 = shl i32 %5955, %5956
  %5958 = icmp eq i32 %5952, 32
  %5959 = select i1 %5958, i32 -1, i32 %5957
  %5960 = and i32 %5959, %5944
  %5961 = icmp eq i32 %5960, 0
  br i1 %5961, label %6286, label %5962

; <label>:5962                                    ; preds = %5931
  br label %5963

; <label>:5963                                    ; preds = %6043, %5962
  %5964 = phi i32 [ %5975, %6043 ], [ %5960, %5962 ]
  %5965 = phi float [ %6044, %6043 ], [ %5933, %5962 ]
  %5966 = phi float [ %6045, %6043 ], [ %5934, %5962 ]
  %5967 = phi float [ %6046, %6043 ], [ %5935, %5962 ]
  %5968 = phi float [ %6047, %6043 ], [ %5936, %5962 ]
  %5969 = phi float [ %6048, %6043 ], [ %5937, %5962 ]
  %5970 = phi float [ %6049, %6043 ], [ %5938, %5962 ]
  %5971 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5964)  ; FirstbitLo(value)
  %5972 = add i32 %5971, %5945
  %5973 = and i32 %5971, 31
  %5974 = shl i32 1, %5973
  %5975 = xor i32 %5974, %5964
  %5976 = mul i32 %5972, 112
  %5977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = or i32 %5976, 12
  %5982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5981, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = add i32 %5976, 44
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = add i32 %5976, 48
  %5988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5987, i32 undef)  ; BufferLoad(srv,index,wot)
  %5989 = extractvalue %dx.types.ResRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.ResRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.ResRet.f32 %5988, 2
  %5992 = add i32 %5976, 80
  %5993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5993, 2
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %5980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = select i1 %181, float %5994, float %5978
  %5998 = select i1 %181, float %5996, float %5979
  %5999 = select i1 %181, float %5995, float %5980
  %6000 = fsub fast float %5989, %137
  %6001 = fsub fast float %5990, %138
  %6002 = fsub fast float %5991, %139
  %6003 = call float @dx.op.dot3.f32(i32 55, float %6000, float %6001, float %6002, float %6000, float %6001, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = call float @dx.op.unary.f32(i32 24, float %6003)  ; Sqrt(value)
  %6005 = fdiv fast float 1.000000e+00, %6004
  %6006 = fmul fast float %6005, %6000
  %6007 = fmul fast float %6005, %6001
  %6008 = fmul fast float %6005, %6002
  %6009 = fadd fast float %6004, %5983
  %6010 = fdiv fast float 1.000000e+00, %6009
  %6011 = fmul float %5986, %6010
  %6012 = fmul float %6011, %6011
  %6013 = call float @dx.op.unary.f32(i32 7, float %6012)  ; Saturate(value)
  %6014 = and i32 %5974, %5960
  %6015 = icmp eq i32 %6014, 0
  br i1 %6015, label %6038, label %6016, !dx.controlflow.hints !87

; <label>:6016                                    ; preds = %5963
  %6017 = lshr i32 %5908, 5
  %6018 = lshr i32 %5909, 5
  %6019 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %6017, i32 %6018, i32 %5972, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6020 = extractvalue %dx.types.ResRet.i32 %6019, 0
  %6021 = and i32 %6020, 3
  %6022 = icmp eq i32 %6021, 0
  %6023 = select i1 %6022, float 1.000000e+00, float 0.000000e+00
  %6024 = icmp eq i32 %6021, 3
  br i1 %6024, label %6025, label %6038

; <label>:6025                                    ; preds = %6016
  %6026 = lshr i32 %6020, 10
  %6027 = and i32 %6026, 8160
  %6028 = and i32 %5909, 31
  %6029 = or i32 %6027, %6028
  %6030 = lshr i32 %6020, 1
  %6031 = and i32 %6030, 16352
  %6032 = and i32 %5908, 31
  %6033 = or i32 %6031, %6032
  %6034 = lshr i32 %6020, 23
  %6035 = and i32 %6034, 255
  %6036 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %6033, i32 %6029, i32 %6035, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 0
  br label %6038

; <label>:6038                                    ; preds = %6025, %6016, %5963
  %6039 = phi float [ %6037, %6025 ], [ %6023, %6016 ], [ 0.000000e+00, %5963 ]
  %6040 = call float @dx.op.binary.f32(i32 36, float %6039, float %6039)  ; FMin(a,b)
  %6041 = call float @dx.op.binary.f32(i32 36, float %6039, float %6040)  ; FMin(a,b)
  %6042 = fcmp fast ogt float %6041, 0.000000e+00
  br i1 %6042, label %6051, label %6043, !dx.controlflow.hints !88

; <label>:6043                                    ; preds = %6112, %6038
  %6044 = phi float [ %5965, %6038 ], [ %6282, %6112 ]
  %6045 = phi float [ %5966, %6038 ], [ %6283, %6112 ]
  %6046 = phi float [ %5967, %6038 ], [ %6284, %6112 ]
  %6047 = phi float [ %5968, %6038 ], [ %6270, %6112 ]
  %6048 = phi float [ %5969, %6038 ], [ %6271, %6112 ]
  %6049 = phi float [ %5970, %6038 ], [ %6272, %6112 ]
  %6050 = icmp eq i32 %5964, %5974
  br i1 %6050, label %6285, label %5963

; <label>:6051                                    ; preds = %6038
  %6052 = fmul fast float %6039, %5997
  %6053 = fmul fast float %6039, %5998
  %6054 = fmul fast float %6039, %5999
  %6055 = fsub fast float %5991, %4294
  %6056 = fcmp fast ogt float %6055, 0.000000e+00
  %6057 = fsub fast float %139, %4294
  %6058 = fcmp fast ogt float %6057, 0.000000e+00
  %6059 = xor i1 %6058, %6056
  %6060 = fsub fast float %4294, %5991
  %6061 = fmul fast float %6060, 2.000000e+00
  %6062 = fadd fast float %6061, %5991
  %6063 = select i1 %6059, float %5991, float %6062
  %6064 = fsub fast float %6063, %139
  %6065 = call float @dx.op.dot3.f32(i32 55, float %6000, float %6001, float %6064, float %6000, float %6001, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = call float @dx.op.unary.f32(i32 25, float %6065)  ; Rsqrt(value)
  %6067 = fmul fast float %6066, %6000
  %6068 = fmul fast float %6066, %6001
  %6069 = fmul fast float %6066, %6064
  %6070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4302)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6067, float %6068, float %6069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = fdiv fast float 1.000000e+00, %6071
  %6073 = fmul fast float %6072, %6070
  %6074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6057, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fcmp fast ogt float %6074, 0.000000e+00
  %6076 = fcmp fast olt float %6074, 0.000000e+00
  %6077 = zext i1 %6075 to i32
  %6078 = zext i1 %6076 to i32
  %6079 = sub nsw i32 %6077, %6078
  %6080 = sitofp i32 %6079 to float
  %6081 = fsub fast float %6063, %4294
  %6082 = call float @dx.op.dot3.f32(i32 55, float %6000, float %6001, float %6081, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = fcmp fast ogt float %6082, 0.000000e+00
  %6084 = fcmp fast olt float %6082, 0.000000e+00
  %6085 = zext i1 %6083 to i32
  %6086 = zext i1 %6084 to i32
  %6087 = sub nsw i32 %6085, %6086
  %6088 = sitofp i32 %6087 to float
  %6089 = fcmp fast une float %6080, %6088
  br i1 %6089, label %6090, label %6100

; <label>:6090                                    ; preds = %6051
  %6091 = fmul fast float %6073, %6069
  %6092 = fmul fast float %6073, %6068
  %6093 = fmul fast float %6073, %6067
  %6094 = fmul fast float %6093, %6093
  %6095 = fmul fast float %6092, %6092
  %6096 = fadd fast float %6094, %6095
  %6097 = fmul fast float %6091, %6091
  %6098 = fadd fast float %6096, %6097
  %6099 = call float @dx.op.unary.f32(i32 24, float %6098)  ; Sqrt(value)
  br label %6112

; <label>:6100                                    ; preds = %6051
  %6101 = icmp slt i32 %6079, 0
  br i1 %6101, label %6102, label %6112

; <label>:6102                                    ; preds = %6100
  %6103 = fsub fast float %137, %5989
  %6104 = fsub fast float %138, %5990
  %6105 = fsub fast float %139, %6063
  %6106 = fmul fast float %6103, %6103
  %6107 = fmul fast float %6104, %6104
  %6108 = fadd fast float %6106, %6107
  %6109 = fmul fast float %6105, %6105
  %6110 = fadd fast float %6108, %6109
  %6111 = call float @dx.op.unary.f32(i32 24, float %6110)  ; Sqrt(value)
  br label %6112

; <label>:6112                                    ; preds = %6102, %6100, %6090
  %6113 = phi float [ %6099, %6090 ], [ %6111, %6102 ], [ 0.000000e+00, %6100 ]
  %6114 = and i1 %6058, %6056
  %6115 = fsub fast float -0.000000e+00, %6113
  %6116 = select i1 %6114, float -0.000000e+00, float %6115
  %6117 = fmul fast float %4295, 0x3FF7154760000000
  %6118 = fmul fast float %6117, %6116
  %6119 = fmul fast float %4296, 0x3FF7154760000000
  %6120 = fmul fast float %6119, %6116
  %6121 = fmul fast float %4297, 0x3FF7154760000000
  %6122 = fmul fast float %6121, %6116
  %6123 = call float @dx.op.unary.f32(i32 21, float %6118)  ; Exp(value)
  %6124 = call float @dx.op.unary.f32(i32 21, float %6120)  ; Exp(value)
  %6125 = call float @dx.op.unary.f32(i32 21, float %6122)  ; Exp(value)
  %6126 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6127 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6128 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6129 = fmul fast float %6052, %6126
  %6130 = fmul fast float %6053, %6127
  %6131 = fmul fast float %6054, %6128
  %6132 = fsub fast float %6006, %4494
  %6133 = fsub fast float %6007, %4493
  %6134 = fsub fast float %6008, %4492
  %6135 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6133, float %6134, float %6132, float %6133, float %6134)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = call float @dx.op.unary.f32(i32 25, float %6135)  ; Rsqrt(value)
  %6137 = fmul fast float %6136, %6132
  %6138 = fmul fast float %6136, %6133
  %6139 = fmul fast float %6136, %6134
  %6140 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6007, float %6008, float %4495, float %4496, float %4497)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4490, float %4489, float %6137, float %6138, float %6139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6143 = fmul fast float %6142, %6013
  %6144 = fmul fast float %6142, %6142
  %6145 = fmul fast float %6144, %4548
  %6146 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6147 = fmul fast float %6143, %6146
  %6148 = bitcast float %6003 to i32
  %6149 = ashr i32 %6148, 1
  %6150 = sub nsw i32 1597463007, %6149
  %6151 = bitcast i32 %6150 to float
  %6152 = fmul fast float %6151, %6000
  %6153 = fmul fast float %6151, %6001
  %6154 = fmul fast float %6151, %6002
  %6155 = fsub fast float %6152, %4494
  %6156 = fsub fast float %6153, %4493
  %6157 = fsub fast float %6154, %4492
  %6158 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6157, float %6155, float %6156, float %6157)  ; Dot3(ax,ay,az,bx,by,bz)
  %6159 = call float @dx.op.unary.f32(i32 25, float %6158)  ; Rsqrt(value)
  %6160 = fmul fast float %6155, %6159
  %6161 = fmul fast float %6156, %6159
  %6162 = fmul fast float %6157, %6159
  %6163 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4497, float %6160, float %6161, float %6162)  ; Dot3(ax,ay,az,bx,by,bz)
  %6164 = fmul fast float %6163, %6163
  %6165 = call float @dx.op.unary.f32(i32 6, float %6140)  ; FAbs(value)
  %6166 = fsub fast float 1.000000e+00, %4541
  %6167 = fmul fast float %4523, %4523
  %6168 = fmul fast float %6167, %6166
  %6169 = fadd fast float %6168, %4541
  %6170 = bitcast float %6169 to i32
  %6171 = ashr i32 %6170, 1
  %6172 = add nsw i32 %6171, 532487669
  %6173 = bitcast i32 %6172 to float
  %6174 = fadd fast float %6173, %4523
  %6175 = fmul fast float %4541, %6164
  %6176 = fsub fast float 1.000000e+00, %6164
  %6177 = fadd fast float %6176, %6175
  %6178 = fmul fast float %6165, %6165
  %6179 = fmul fast float %6178, %6166
  %6180 = fadd fast float %6179, %4541
  %6181 = bitcast float %6180 to i32
  %6182 = ashr i32 %6181, 1
  %6183 = add nsw i32 %6182, 532487669
  %6184 = bitcast i32 %6183 to float
  %6185 = fadd fast float %6184, %6165
  %6186 = fmul fast float %6177, %6177
  %6187 = fmul fast float %6186, %6174
  %6188 = fmul fast float %6187, %6185
  %6189 = fdiv fast float 1.000000e+00, %6188
  %6190 = bitcast float %4541 to i32
  %6191 = sitofp i32 %6190 to float
  %6192 = fmul fast float %6191, 0x3FE7F73180000000
  %6193 = fadd fast float %6192, 0x41AFE27C40000000
  %6194 = fptosi float %6193 to i32
  %6195 = bitcast i32 %6194 to float
  %6196 = fmul fast float %5986, 0x3FD80E9D60000000
  %6197 = fmul fast float %6196, %6151
  %6198 = fadd fast float %6195, %6197
  %6199 = bitcast float %6198 to i32
  %6200 = sub nsw i32 2129859010, %6199
  %6201 = bitcast i32 %6200 to float
  %6202 = fmul fast float %4541, %6189
  %6203 = fmul fast float %6202, %6195
  %6204 = fmul fast float %6203, %6201
  %6205 = call float @dx.op.unary.f32(i32 6, float %6141)  ; FAbs(value)
  %6206 = fsub fast float 1.000000e+00, %6205
  %6207 = bitcast float %6206 to i32
  %6208 = sitofp i32 %6207 to float
  %6209 = fmul fast float %6208, 5.000000e+00
  %6210 = fadd fast float %6209, 0xC1EFBF8940000000
  %6211 = fptosi float %6210 to i32
  %6212 = bitcast i32 %6211 to float
  %6213 = fsub fast float 1.000000e+00, %4501
  %6214 = fsub fast float 1.000000e+00, %4502
  %6215 = fsub fast float 1.000000e+00, %4521
  %6216 = fmul fast float %6212, %6213
  %6217 = fmul fast float %6212, %6214
  %6218 = fmul fast float %6212, %6215
  %6219 = fadd fast float %6216, %4501
  %6220 = fadd fast float %6217, %4502
  %6221 = fadd fast float %6218, %4521
  %6222 = fmul fast float %6140, 9.843750e-01
  %6223 = fadd fast float %6222, 7.812500e-03
  %6224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6223, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6225 = extractvalue %dx.types.ResRet.f32 %6224, 2
  %6226 = extractvalue %dx.types.ResRet.f32 %6224, 3
  %6227 = fmul fast float %6225, %4501
  %6228 = fmul fast float %6225, %4502
  %6229 = fmul fast float %6225, %4521
  %6230 = fadd fast float %6227, %6226
  %6231 = fadd fast float %6228, %6226
  %6232 = fadd fast float %6229, %6226
  %6233 = call float @dx.op.binary.f32(i32 35, float %6231, float %6232)  ; FMax(a,b)
  %6234 = call float @dx.op.binary.f32(i32 35, float %6230, float %6233)  ; FMax(a,b)
  %6235 = fsub fast float 1.000000e+00, %6234
  %6236 = fsub fast float -0.000000e+00, %4495
  %6237 = fsub fast float -0.000000e+00, %4496
  %6238 = fsub fast float -0.000000e+00, %4497
  %6239 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6007, float %6008, float %6236, float %6237, float %6238)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6241 = fmul fast float %6240, %6013
  %6242 = fmul fast float %6240, 9.843750e-01
  %6243 = fadd fast float %6242, 7.812500e-03
  %6244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6243, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 3
  %6247 = fmul fast float %6245, %4501
  %6248 = fmul fast float %6245, %4502
  %6249 = fmul fast float %6245, %4521
  %6250 = fadd fast float %6247, %6246
  %6251 = fadd fast float %6248, %6246
  %6252 = fadd fast float %6249, %6246
  %6253 = call float @dx.op.binary.f32(i32 35, float %6251, float %6252)  ; FMax(a,b)
  %6254 = call float @dx.op.binary.f32(i32 35, float %6250, float %6253)  ; FMax(a,b)
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = fmul fast float %6241, %6255
  %6257 = fmul fast float %6256, %3917
  %6258 = fmul fast float %6256, %3918
  %6259 = fmul fast float %6256, %3919
  %6260 = fmul fast float %6235, %6147
  %6261 = fadd fast float %6257, %6260
  %6262 = fadd fast float %6258, %6260
  %6263 = fadd fast float %6259, %6260
  %6264 = fmul fast float %6129, %956
  %6265 = fmul fast float %6264, %6261
  %6266 = fmul fast float %6130, %956
  %6267 = fmul fast float %6266, %6262
  %6268 = fmul fast float %6131, %956
  %6269 = fmul fast float %6268, %6263
  %6270 = fadd fast float %6265, %5968
  %6271 = fadd fast float %6267, %5969
  %6272 = fadd fast float %6269, %5970
  %6273 = fmul fast float %6264, %6147
  %6274 = fmul fast float %6273, %6219
  %6275 = fmul fast float %6274, %6204
  %6276 = fmul fast float %6266, %6147
  %6277 = fmul fast float %6276, %6220
  %6278 = fmul fast float %6277, %6204
  %6279 = fmul fast float %6268, %6147
  %6280 = fmul fast float %6279, %6221
  %6281 = fmul fast float %6280, %6204
  %6282 = fadd fast float %6275, %5965
  %6283 = fadd fast float %6278, %5966
  %6284 = fadd fast float %6281, %5967
  br label %6043

; <label>:6285                                    ; preds = %6043
  br label %6286

; <label>:6286                                    ; preds = %6285, %5931
  %6287 = phi float [ %5933, %5931 ], [ %6044, %6285 ]
  %6288 = phi float [ %5934, %5931 ], [ %6045, %6285 ]
  %6289 = phi float [ %5935, %5931 ], [ %6046, %6285 ]
  %6290 = phi float [ %5936, %5931 ], [ %6047, %6285 ]
  %6291 = phi float [ %5937, %5931 ], [ %6048, %6285 ]
  %6292 = phi float [ %5938, %5931 ], [ %6049, %6285 ]
  %6293 = add i32 %5932, 1
  %6294 = icmp ugt i32 %6293, %5928
  br i1 %6294, label %6295, label %5931

; <label>:6295                                    ; preds = %6286
  br label %6296

; <label>:6296                                    ; preds = %6295, %5907, %5897
  %6297 = phi float [ %5898, %5897 ], [ %5898, %5907 ], [ %6287, %6295 ]
  %6298 = phi float [ %5899, %5897 ], [ %5899, %5907 ], [ %6288, %6295 ]
  %6299 = phi float [ %5900, %5897 ], [ %5900, %5907 ], [ %6289, %6295 ]
  %6300 = phi float [ %5901, %5897 ], [ %5901, %5907 ], [ %6290, %6295 ]
  %6301 = phi float [ %5902, %5897 ], [ %5902, %5907 ], [ %6291, %6295 ]
  %6302 = phi float [ %5903, %5897 ], [ %5903, %5907 ], [ %6292, %6295 ]
  %6303 = call float @dx.op.unary.f32(i32 24, float %4498)  ; Sqrt(value)
  %6304 = call float @dx.op.unary.f32(i32 24, float %4499)  ; Sqrt(value)
  %6305 = call float @dx.op.unary.f32(i32 24, float %4500)  ; Sqrt(value)
  %6306 = fmul fast float %6303, %6300
  %6307 = fmul fast float %6304, %6301
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  br i1 %181, label %6310, label %6334

; <label>:6310                                    ; preds = %6296
  %6311 = fadd fast float %6302, %3797
  %6312 = fmul fast float %6311, %3795
  %6313 = fsub fast float 1.000000e+00, %3795
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6317 = fmul fast float %6316, %6314
  %6318 = fsub fast float 1.000000e+00, %4523
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = fmul fast float %6320, %6318
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = fmul fast float %6322, %4519
  %6324 = fadd fast float %6307, %6306
  %6325 = fmul fast float %6309, %6324
  %6326 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6327 = fadd fast float %6317, %6312
  %6328 = fsub fast float %6327, %6321
  %6329 = fadd fast float %6328, %6323
  %6330 = fsub fast float %6329, %6326
  %6331 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6332 = fmul fast float %6330, %6331
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  br label %6350

; <label>:6334                                    ; preds = %6296
  %6335 = fmul fast float %6305, %6302
  %6336 = fmul fast float %6309, %6306
  %6337 = fmul fast float %6309, %6307
  %6338 = fmul fast float %6335, %6309
  %6339 = add i32 %42, 356
  %6340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6339, i32 undef)  ; BufferLoad(srv,index,wot)
  %6341 = extractvalue %dx.types.ResRet.i32 %6340, 0
  %6342 = and i32 %6341, 32
  %6343 = icmp eq i32 %6342, 0
  br i1 %6343, label %6350, label %6344

; <label>:6344                                    ; preds = %6334
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = fmul fast float %6346, 0x3FE99999A0000000
  %6348 = fadd fast float %6346, %6336
  %6349 = fadd fast float %6347, %6338
  br label %6350

; <label>:6350                                    ; preds = %6344, %6334, %6310
  %6351 = phi float [ %6325, %6310 ], [ %6348, %6344 ], [ %6336, %6334 ]
  %6352 = phi float [ %6333, %6310 ], [ %6337, %6344 ], [ %6337, %6334 ]
  %6353 = phi float [ 1.000000e+00, %6310 ], [ %6349, %6344 ], [ %6338, %6334 ]
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 0
  %6356 = fmul fast float %6355, %6298
  %6357 = fmul fast float %6355, %6299
  %6358 = fadd fast float %6298, %6297
  %6359 = select i1 %181, float %6358, float %6297
  %6360 = fmul float %6359, %6355
  %6361 = select i1 %181, float 0.000000e+00, float %6356
  %6362 = select i1 %181, float 0.000000e+00, float %6357
  %6363 = fmul fast float %6351, %6303
  %6364 = fmul fast float %6352, %6304
  %6365 = fmul fast float %6353, %6305
  %6366 = fadd fast float %6360, %6363
  %6367 = fadd fast float %6361, %6364
  %6368 = fadd fast float %6362, %6365
  %6369 = select i1 %181, float %6352, float %6367
  %6370 = select i1 %181, float %6353, float %6368
  %6371 = call float @dx.op.binary.f32(i32 36, float %6366, float 3.225500e+04)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6369, float 3.225500e+04)  ; FMin(a,b)
  %6373 = call float @dx.op.binary.f32(i32 36, float %6370, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6373)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !80}
!55 = !{!56, !78, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !77}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!61 = !{i32 3, i32 14}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 5, !"SH_RED", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!69 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!70 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!71 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 8, i8 0, !63}
!72 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!73 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 10, i8 0, !74}
!74 = !{i32 3, i32 5}
!75 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !58, i8 1, i32 1, i8 1, i32 11, i8 0, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!80 = !{i32 0, i64 24}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}

