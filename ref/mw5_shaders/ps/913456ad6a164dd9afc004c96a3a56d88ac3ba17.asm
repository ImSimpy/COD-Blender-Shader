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
; shader hash: 0c6e5c5d7720f274e1d7d836b2484e45
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %104 = fmul fast float %97, %65
  %105 = fmul fast float %100, %65
  %106 = fmul fast float %103, %65
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %81, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %82, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %76
  %141 = fmul fast float %137, %76
  %142 = fmul fast float %139, %76
  %143 = add i32 %42, 360
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = extractvalue %dx.types.ResRet.i32 %144, 1
  %147 = extractvalue %dx.types.ResRet.i32 %144, 2
  %148 = extractvalue %dx.types.ResRet.i32 %144, 3
  %149 = bitcast i32 %145 to float
  %150 = bitcast i32 %146 to float
  %151 = bitcast i32 %147 to float
  %152 = bitcast i32 %148 to float
  %153 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = call float @dx.op.unary.f32(i32 25, float %153)  ; Rsqrt(value)
  %155 = fmul fast float %154, %90
  %156 = fmul fast float %154, %92
  %157 = fmul fast float %154, %94
  %158 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = call float @dx.op.unary.f32(i32 25, float %158)  ; Rsqrt(value)
  %160 = fmul fast float %159, %140
  %161 = fmul fast float %159, %141
  %162 = fmul fast float %159, %142
  %163 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = fmul fast float %163, %163
  %165 = fmul fast float %164, %151
  %166 = fadd fast float %165, %152
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = fmul fast float %169, %158
  %171 = fsub fast float %149, %170
  %172 = fmul fast float %171, %150
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fmul fast float %173, %167
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = fmul fast float %176, %81
  %179 = fmul fast float %177, %82
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 114688
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %178, float 0.000000e+00
  %185 = select i1 %183, float %179, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, 2.550000e+02
  %189 = fptoui float %188 to i32
  %190 = select i1 %183, i32 %189, i32 0
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 3
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  %195 = and i32 %192, 4
  %196 = icmp ne i32 %195, 0
  %197 = and i1 %194, %196
  br i1 %197, label %198, label %207

; <label>:198                                     ; preds = %0
  %199 = fmul fast float %109, %82
  %200 = fmul fast float %108, %81
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %200, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fsub fast float 1.000000e+00, %202
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fcmp fast olt float %203, %205
  br label %215

; <label>:207                                     ; preds = %0
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %210 = and i32 %209, 3
  %211 = icmp ne i32 %210, 0
  %212 = and i32 %209, 4
  %213 = icmp eq i32 %212, 0
  %214 = and i1 %211, %213
  br label %215

; <label>:215                                     ; preds = %207, %198
  %216 = phi i1 [ %206, %198 ], [ %214, %207 ]
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fmul fast float %218, 0x3FE3C6EF40000000
  %220 = frem fast float %81, 2.560000e+02
  %221 = frem fast float %82, 2.560000e+02
  %222 = fptoui float %220 to i32
  %223 = fptoui float %221 to i32
  %224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = extractvalue %dx.types.ResRet.f32 %224, 1
  %227 = fadd fast float %225, %219
  %228 = fadd fast float %226, %219
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %231 = add i32 %42, 156
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %42, 216
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %245, 8
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %245, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = add i32 %42, 36
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %42, 288
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = add i32 %42, 172
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %275, 7
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %275, 22
  %283 = shl nuw nsw i32 %282, 5
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %42, 232
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F70101020000000
  %291 = lshr i32 %287, 8
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %287, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = add i32 %42, 52
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %42, 304
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %42, 188
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = shl i32 %317, 4
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %317, 7
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %317, 22
  %325 = shl nuw nsw i32 %324, 5
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %42, 248
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %329, 8
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %329, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = add i32 %42, 68
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %42, 320
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %42, 204
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %359, 4
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %359, 7
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %359, 22
  %367 = shl nuw nsw i32 %366, 5
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %42, 264
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %371, 8
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %371, 16
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = add i32 %42, 84
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = add i32 %42, 336
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = fmul fast float %394, 0x3F50624DE0000000
  %398 = fmul fast float %396, 0x3F50624DE0000000
  %399 = add i32 %42, 348
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 32
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %401, 64
  %405 = icmp eq i32 %404, 0
  %406 = and i32 %401, 128
  %407 = icmp eq i32 %406, 0
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 2
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %425, label %412

; <label>:412                                     ; preds = %215
  %413 = add i32 %42, 520
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = add i32 %415, 0
  %417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %417, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = fmul fast float %419, %71
  %423 = fmul fast float %420, %72
  %424 = fmul fast float %421, %73
  br label %425

; <label>:425                                     ; preds = %412, %215
  %426 = phi float [ %73, %215 ], [ %424, %412 ]
  %427 = phi float [ %72, %215 ], [ %423, %412 ]
  %428 = phi float [ %71, %215 ], [ %422, %412 ]
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %452, label %433

; <label>:433                                     ; preds = %425
  %434 = add i32 %42, 44
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 1
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %428, float 1.000000e+00
  %440 = add i32 %42, 60
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %427, float 1.000000e+00
  %446 = add i32 %42, 76
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %426, float 1.000000e+00
  br label %452

; <label>:452                                     ; preds = %433, %425
  %453 = phi float [ %426, %425 ], [ %451, %433 ]
  %454 = phi float [ %427, %425 ], [ %445, %433 ]
  %455 = phi float [ %428, %425 ], [ %439, %433 ]
  %456 = lshr i32 %430, 20
  %457 = and i32 %456, 3
  %458 = add nuw nsw i32 %457, 1
  %459 = add i32 %42, 24
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %42, 28
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = or i32 %464, %461
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %978, label %467

; <label>:467                                     ; preds = %452
  %468 = and i32 %461, 262144
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %44, float 1.000000e+00
  %471 = select i1 %469, float %45, float 0.000000e+00
  %472 = select i1 %469, float %46, float 0.000000e+00
  %473 = select i1 %469, float %47, float 1.000000e+00
  %474 = select i1 %469, float %48, float %69
  %475 = select i1 %469, float %49, float %70
  %476 = add i32 %42, 284
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = lshr i32 %478, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = fmul fast float %480, 0x3F50624DE0000000
  %482 = add i32 %42, 88
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  %487 = lshr i32 %484, 24
  %488 = add i32 %42, 292
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 65535
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %490, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = add i32 %42, 32
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = shl i32 %497, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %497, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %509 = fmul fast float %508, 1.000000e+03
  %510 = fmul fast float %271, %509
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = fadd fast float %511, %261
  %513 = fmul fast float %272, %509
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fadd fast float %514, %263
  %516 = fmul fast float %481, %509
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fmul fast float %517, 0x401921FB60000000
  %519 = fadd fast float %518, %500
  %520 = call float @dx.op.unary.f32(i32 13, float %519)  ; Sin(value)
  %521 = call float @dx.op.unary.f32(i32 12, float %519)  ; Cos(value)
  %522 = fsub fast float -0.000000e+00, %520
  %523 = fadd fast float %474, -5.000000e-01
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fmul fast float %492, %523
  %526 = fmul fast float %494, %524
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fmul fast float %503, %527
  %530 = fmul fast float %506, %528
  %531 = fmul fast float %521, %529
  %532 = call float @dx.op.tertiary.f32(i32 46, float %522, float %530, float %531)  ; FMad(a,b,c)
  %533 = fmul fast float %520, %529
  %534 = call float @dx.op.tertiary.f32(i32 46, float %521, float %530, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %512, %532
  %536 = fadd fast float %515, %534
  %537 = icmp ugt i32 %486, 1
  %538 = icmp ugt i32 %484, 33554431
  %539 = or i1 %538, %537
  br i1 %539, label %540, label %565

; <label>:540                                     ; preds = %467
  %541 = add i32 %42, 228
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = fmul fast float %508, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = mul nuw nsw i32 %486, %487
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %547, %549
  %551 = call float @dx.op.unary.f32(i32 27, float %550)  ; Round_ni(value)
  %552 = fptoui float %551 to i32
  %553 = urem i32 %552, %486
  %554 = udiv i32 %552, %487
  %555 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = uitofp i32 %553 to float
  %558 = uitofp i32 %554 to float
  %559 = fadd fast float %555, %557
  %560 = fadd fast float %556, %558
  %561 = uitofp i32 %486 to float
  %562 = uitofp i32 %487 to float
  %563 = fdiv fast float %559, %561
  %564 = fdiv fast float %560, %562
  br label %565

; <label>:565                                     ; preds = %540, %467
  %566 = phi float [ %563, %540 ], [ %535, %467 ]
  %567 = phi float [ %564, %540 ], [ %536, %467 ]
  %568 = and i32 %461, 16
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %766, label %570

; <label>:570                                     ; preds = %565
  %571 = add i32 %42, 408
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add i32 %573, 0
  %575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %575, %dx.types.Handle %77, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = extractvalue %dx.types.ResRet.f32 %576, 3
  %581 = and i32 %484, 255
  %582 = uitofp i32 %581 to float
  %583 = lshr i32 %484, 8
  %584 = and i32 %583, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %580, %582
  %587 = fadd fast float %586, %585
  %588 = fmul fast float %587, 0x3F70101000000000
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 512
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %601, label %593

; <label>:593                                     ; preds = %570
  %594 = add i32 %42, 488
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %78, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  br label %601

; <label>:601                                     ; preds = %593, %570
  %602 = phi float [ %600, %593 ], [ 1.000000e+00, %570 ]
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %604, 33554432
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %713, label %607

; <label>:607                                     ; preds = %601
  %608 = add i32 %42, 224
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 65535
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %610, 16
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = add i32 %42, 228
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 65535
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = lshr i32 %621, 24
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, 0x3F70101020000000
  %625 = and i32 %621, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %621, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %621, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = add i32 %42, 220
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = lshr i32 %638, 24
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = and i32 %638, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %638, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %638, 16
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = bitcast float %577 to i32
  %654 = ashr i32 %653, 1
  %655 = sub nsw i32 1597463174, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %577, 5.000000e-01
  %658 = fmul fast float %656, %656
  %659 = fmul fast float %658, %657
  %660 = fsub fast float 1.500000e+00, %659
  %661 = fmul fast float %656, %577
  %662 = fmul fast float %661, %660
  %663 = bitcast float %578 to i32
  %664 = ashr i32 %663, 1
  %665 = sub nsw i32 1597463174, %664
  %666 = bitcast i32 %665 to float
  %667 = fmul fast float %578, 5.000000e-01
  %668 = fmul fast float %666, %666
  %669 = fmul fast float %668, %667
  %670 = fsub fast float 1.500000e+00, %669
  %671 = fmul fast float %666, %578
  %672 = fmul fast float %671, %670
  %673 = bitcast float %579 to i32
  %674 = ashr i32 %673, 1
  %675 = sub nsw i32 1597463174, %674
  %676 = bitcast i32 %675 to float
  %677 = fmul fast float %579, 5.000000e-01
  %678 = fmul fast float %676, %676
  %679 = fmul fast float %678, %677
  %680 = fsub fast float 1.500000e+00, %679
  %681 = fmul fast float %676, %579
  %682 = fmul fast float %681, %680
  %683 = fsub fast float %662, %644
  %684 = fsub fast float %672, %648
  %685 = fsub fast float %682, %652
  %686 = fmul fast float %683, %612
  %687 = fmul fast float %684, %614
  %688 = fmul fast float %685, %619
  %689 = fadd fast float %686, %627
  %690 = fadd fast float %687, %631
  %691 = fadd fast float %688, %635
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %695 = fmul fast float %692, %692
  %696 = fmul fast float %693, %693
  %697 = fmul fast float %694, %694
  %698 = fsub fast float %695, %577
  %699 = fsub fast float %696, %578
  %700 = fsub fast float %697, %579
  %701 = fmul fast float %698, %602
  %702 = fmul fast float %699, %602
  %703 = fmul fast float %700, %602
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %702, %578
  %706 = fadd fast float %703, %579
  %707 = fadd fast float %624, %588
  %708 = fsub fast float %707, %641
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fsub fast float %709, %588
  %711 = fmul fast float %710, %602
  %712 = fadd fast float %711, %588
  br label %766

; <label>:713                                     ; preds = %601
  %714 = and i32 %604, 134217728
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %750, label %716

; <label>:716                                     ; preds = %713
  %717 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %718 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %719 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fadd fast float %718, -5.000000e-01
  %722 = fadd fast float %719, -5.000000e-01
  %723 = fmul fast float %720, %602
  %724 = fmul fast float %721, %602
  %725 = fmul fast float %722, %602
  %726 = fadd fast float %723, 5.000000e-01
  %727 = fadd fast float %724, 5.000000e-01
  %728 = fadd fast float %725, 5.000000e-01
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = call float @dx.op.unary.f32(i32 24, float %578)  ; Sqrt(value)
  %731 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %732 = fmul fast float %726, 2.000000e+00
  %733 = fsub fast float 1.000000e+00, %732
  %734 = fmul fast float %733, %729
  %735 = fadd fast float %734, %732
  %736 = fmul fast float %735, %729
  %737 = fmul fast float %727, 2.000000e+00
  %738 = fsub fast float 1.000000e+00, %737
  %739 = fmul fast float %738, %730
  %740 = fadd fast float %739, %737
  %741 = fmul fast float %740, %730
  %742 = fmul fast float %728, 2.000000e+00
  %743 = fsub fast float 1.000000e+00, %742
  %744 = fmul fast float %743, %731
  %745 = fadd fast float %744, %742
  %746 = fmul fast float %745, %731
  %747 = fmul fast float %736, %736
  %748 = fmul fast float %741, %741
  %749 = fmul fast float %746, %746
  br label %766

; <label>:750                                     ; preds = %713
  %751 = fmul fast float %248, %248
  %752 = fmul fast float %252, %252
  %753 = fmul fast float %256, %256
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fadd fast float %752, -1.000000e+00
  %756 = fadd fast float %753, -1.000000e+00
  %757 = fmul fast float %602, %754
  %758 = fmul fast float %602, %755
  %759 = fmul fast float %602, %756
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fadd fast float %758, 1.000000e+00
  %762 = fadd fast float %759, 1.000000e+00
  %763 = fmul fast float %760, %577
  %764 = fmul fast float %761, %578
  %765 = fmul fast float %762, %579
  br label %766

; <label>:766                                     ; preds = %750, %716, %607, %565
  %767 = phi float [ %712, %607 ], [ %588, %716 ], [ %588, %750 ], [ 0x3FA23C0BE0000000, %565 ]
  %768 = phi float [ %704, %607 ], [ %747, %716 ], [ %763, %750 ], [ 1.000000e+00, %565 ]
  %769 = phi float [ %705, %607 ], [ %748, %716 ], [ %764, %750 ], [ 1.000000e+00, %565 ]
  %770 = phi float [ %706, %607 ], [ %749, %716 ], [ %765, %750 ], [ 1.000000e+00, %565 ]
  %771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.i32 %771, 1
  %773 = and i32 %772, 1
  %774 = icmp ne i32 %773, 0
  %775 = add i32 %42, 356
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 32
  %779 = icmp ne i32 %778, 0
  %780 = and i1 %774, %779
  %781 = select i1 %780, float 1.000000e+00, float %768
  %782 = select i1 %780, float 0x3FD3333340000000, float %769
  %783 = select i1 %780, float 0x3FD3333340000000, float %770
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 32
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %860, label %788

; <label>:788                                     ; preds = %766
  %789 = add i32 %42, 92
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %42, 424
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %794, 0
  %796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %796, %dx.types.Handle %77, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = extractvalue %dx.types.ResRet.f32 %797, 1
  %800 = extractvalue %dx.types.ResRet.f32 %797, 2
  %801 = extractvalue %dx.types.ResRet.f32 %797, 3
  %802 = and i32 %791, 255
  %803 = uitofp i32 %802 to float
  %804 = lshr i32 %791, 8
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = lshr i32 %791, 16
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, 0x3F70101000000000
  %811 = fmul fast float %798, %803
  %812 = fadd fast float %811, %806
  %813 = fmul fast float %812, 0x3F70101000000000
  %814 = fadd fast float %799, -5.000000e-01
  %815 = fadd fast float %801, -5.000000e-01
  %816 = fmul fast float %814, %810
  %817 = fmul fast float %815, %810
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fmul fast float %818, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fmul fast float %819, 2.000000e+00
  %823 = fadd fast float %822, -1.000000e+00
  %824 = fadd fast float %821, %823
  %825 = fmul fast float %824, 5.000000e-01
  %826 = fsub fast float %821, %823
  %827 = fmul fast float %826, 5.000000e-01
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float 1.000000e+00, %828
  %830 = call float @dx.op.unary.f32(i32 6, float %827)  ; FAbs(value)
  %831 = fsub fast float %829, %830
  %832 = call float @dx.op.dot3.f32(i32 55, float %825, float %827, float %831, float %825, float %827, float %831)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = call float @dx.op.unary.f32(i32 25, float %832)  ; Rsqrt(value)
  %834 = fmul fast float %825, %833
  %835 = fmul fast float %827, %833
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 67108864
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %856, label %840

; <label>:840                                     ; preds = %788
  %841 = add i32 %42, 280
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 65535
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 65535
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = lshr i32 %843, 16
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = fsub fast float %813, %851
  %853 = fmul fast float %852, %845
  %854 = fadd fast float %853, %849
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  br label %856

; <label>:856                                     ; preds = %840, %788
  %857 = phi float [ %855, %840 ], [ %813, %788 ]
  %858 = call float @dx.op.dot2.f32(i32 54, float %834, float %835, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  %859 = call float @dx.op.dot2.f32(i32 54, float %834, float %835, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  br label %860

; <label>:860                                     ; preds = %856, %766
  %861 = phi float [ %857, %856 ], [ 0x3FD6666660000000, %766 ]
  %862 = phi float [ %858, %856 ], [ 0.000000e+00, %766 ]
  %863 = phi float [ %859, %856 ], [ 0.000000e+00, %766 ]
  %864 = phi float [ %800, %856 ], [ 1.000000e+00, %766 ]
  %865 = add i32 %42, 160
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = lshr i32 %867, 22
  %869 = shl nuw nsw i32 %868, 5
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 64
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %908, label %875

; <label>:875                                     ; preds = %860
  %876 = add i32 %42, 440
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %878, 0
  %880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 131072
  %884 = icmp eq i32 %883, 0
  %885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %880, %dx.types.Handle %77, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = fmul fast float %886, %236
  %890 = fmul fast float %887, %239
  %891 = fmul fast float %888, %242
  br i1 %884, label %898, label %892

; <label>:892                                     ; preds = %875
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %895 = fmul fast float %894, %889
  %896 = fmul fast float %894, %890
  %897 = fmul fast float %894, %891
  br label %898

; <label>:898                                     ; preds = %892, %875
  %899 = phi float [ %895, %892 ], [ %889, %875 ]
  %900 = phi float [ %896, %892 ], [ %890, %875 ]
  %901 = phi float [ %897, %892 ], [ %891, %875 ]
  %902 = fmul fast float %899, %870
  %903 = select i1 %216, float %902, float %899
  %904 = call float @dx.op.dot3.f32(i32 55, float %903, float %900, float %901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = select i1 %216, float 0.000000e+00, float %899
  %906 = select i1 %216, float %904, float %900
  %907 = select i1 %216, float 0.000000e+00, float %901
  br label %908

; <label>:908                                     ; preds = %898, %860
  %909 = phi float [ %905, %898 ], [ 0.000000e+00, %860 ]
  %910 = phi float [ %906, %898 ], [ 0.000000e+00, %860 ]
  %911 = phi float [ %907, %898 ], [ 0.000000e+00, %860 ]
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 10240
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %960, label %916

; <label>:916                                     ; preds = %908
  %917 = add i32 %42, 504
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %919, 0
  %921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %921, %dx.types.Handle %78, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 1
  %924 = extractvalue %dx.types.ResRet.f32 %922, 3
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 1048576
  %928 = icmp ne i32 %927, 0
  %929 = and i32 %926, 8192
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %946, label %931

; <label>:931                                     ; preds = %916
  %932 = extractvalue %dx.types.ResRet.f32 %922, 2
  %933 = select i1 %928, float %932, float %923
  %934 = extractvalue %dx.types.ResRet.f32 %922, 0
  %935 = select i1 %928, float %934, float %923
  %936 = add i32 %42, 96
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 16
  %940 = and i32 %939, 255
  %941 = uitofp i32 %940 to float
  %942 = fmul fast float %941, 0x3F80101020000000
  %943 = fmul fast float %942, %935
  %944 = fmul fast float %942, %923
  %945 = fmul fast float %942, %933
  br label %946

; <label>:946                                     ; preds = %931, %916
  %947 = phi float [ %943, %931 ], [ 0.000000e+00, %916 ]
  %948 = phi float [ %944, %931 ], [ 0.000000e+00, %916 ]
  %949 = phi float [ %945, %931 ], [ 0.000000e+00, %916 ]
  %950 = and i32 %926, 2048
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %960, label %952

; <label>:952                                     ; preds = %946
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = shl i32 %954, 4
  %956 = and i32 %955, 32752
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = fmul fast float %957, %924
  %959 = call float @dx.op.binary.f32(i32 35, float %958, float 0x3F70101020000000)  ; FMax(a,b)
  br label %960

; <label>:960                                     ; preds = %952, %946, %908
  %961 = phi float [ %947, %952 ], [ %947, %946 ], [ 0.000000e+00, %908 ]
  %962 = phi float [ %948, %952 ], [ %948, %946 ], [ 0.000000e+00, %908 ]
  %963 = phi float [ %949, %952 ], [ %949, %946 ], [ 0.000000e+00, %908 ]
  %964 = phi float [ %959, %952 ], [ 0x3F70101020000000, %946 ], [ 0x3F70101020000000, %908 ]
  %965 = add i32 %42, 96
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = lshr i32 %967, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = call float @dx.op.dot3.f32(i32 55, float %781, float %782, float %783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = fmul fast float %972, %973
  %975 = fadd fast float %974, %969
  %976 = fmul fast float %975, 0x3F70101020000000
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  br label %978

; <label>:978                                     ; preds = %960, %452
  %979 = phi float [ 0.000000e+00, %452 ], [ %862, %960 ]
  %980 = phi float [ 0.000000e+00, %452 ], [ %863, %960 ]
  %981 = phi float [ 0.000000e+00, %452 ], [ %909, %960 ]
  %982 = phi float [ 0.000000e+00, %452 ], [ %910, %960 ]
  %983 = phi float [ 0.000000e+00, %452 ], [ %911, %960 ]
  %984 = phi float [ 0.000000e+00, %452 ], [ %781, %960 ]
  %985 = phi float [ 0.000000e+00, %452 ], [ %782, %960 ]
  %986 = phi float [ 0.000000e+00, %452 ], [ %783, %960 ]
  %987 = phi float [ 0.000000e+00, %452 ], [ %961, %960 ]
  %988 = phi float [ 0.000000e+00, %452 ], [ %962, %960 ]
  %989 = phi float [ 0.000000e+00, %452 ], [ %963, %960 ]
  %990 = phi float [ 0.000000e+00, %452 ], [ %767, %960 ]
  %991 = phi float [ 0.000000e+00, %452 ], [ 1.000000e+00, %960 ]
  %992 = phi float [ 0.000000e+00, %452 ], [ %861, %960 ]
  %993 = phi float [ 0.000000e+00, %452 ], [ %864, %960 ]
  %994 = phi float [ 0.000000e+00, %452 ], [ %964, %960 ]
  %995 = phi float [ 0.000000e+00, %452 ], [ %977, %960 ]
  br i1 %403, label %1924, label %996

; <label>:996                                     ; preds = %978
  %997 = icmp ult i32 %458, 2
  %998 = add i32 %42, 40
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %42, 44
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = or i32 %1003, %1000
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1924, label %1006

; <label>:1006                                    ; preds = %996
  %1007 = and i32 %1000, 262144
  %1008 = icmp ne i32 %1007, 0
  %1009 = select i1 %1008, float %44, float 1.000000e+00
  %1010 = select i1 %1008, float %45, float 0.000000e+00
  %1011 = select i1 %1008, float %46, float 0.000000e+00
  %1012 = select i1 %1008, float %47, float 1.000000e+00
  %1013 = select i1 %1008, float %48, float %69
  %1014 = select i1 %1008, float %49, float %70
  %1015 = add i32 %42, 300
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = fmul fast float %1019, 0x3F50624DE0000000
  %1021 = add i32 %42, 104
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = and i32 %1024, 255
  %1026 = lshr i32 %1023, 24
  %1027 = add i32 %42, 308
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 65535
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1029, 16
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = add i32 %42, 48
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = lshr i32 %1036, 22
  %1038 = shl nuw nsw i32 %1037, 5
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = shl i32 %1036, 4
  %1041 = and i32 %1040, 32752
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 7
  %1044 = and i32 %1043, 32752
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1048 = fmul fast float %1047, 1.000000e+03
  %1049 = fmul fast float %313, %1048
  %1050 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1051 = fadd fast float %1050, %303
  %1052 = fmul fast float %314, %1048
  %1053 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1054 = fadd fast float %1053, %305
  %1055 = fmul fast float %1020, %1048
  %1056 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1057 = fmul fast float %1056, 0x401921FB60000000
  %1058 = fadd fast float %1057, %1039
  %1059 = call float @dx.op.unary.f32(i32 13, float %1058)  ; Sin(value)
  %1060 = call float @dx.op.unary.f32(i32 12, float %1058)  ; Cos(value)
  %1061 = fsub fast float -0.000000e+00, %1059
  %1062 = fadd fast float %1013, -5.000000e-01
  %1063 = fadd fast float %1014, -5.000000e-01
  %1064 = fmul fast float %1031, %1062
  %1065 = fmul fast float %1033, %1063
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fmul fast float %1042, %1066
  %1069 = fmul fast float %1045, %1067
  %1070 = fmul fast float %1060, %1068
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1061, float %1069, float %1070)  ; FMad(a,b,c)
  %1072 = fmul fast float %1059, %1068
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1060, float %1069, float %1072)  ; FMad(a,b,c)
  %1074 = fadd fast float %1051, %1071
  %1075 = fadd fast float %1054, %1073
  %1076 = icmp ugt i32 %1025, 1
  %1077 = icmp ugt i32 %1023, 33554431
  %1078 = or i1 %1077, %1076
  br i1 %1078, label %1079, label %1104

; <label>:1079                                    ; preds = %1006
  %1080 = add i32 %42, 244
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 16
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = fmul fast float %1047, %1084
  %1086 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1087 = mul nuw nsw i32 %1025, %1026
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1086, %1088
  %1090 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1091 = fptoui float %1090 to i32
  %1092 = urem i32 %1091, %1025
  %1093 = udiv i32 %1091, %1026
  %1094 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1095 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1096 = uitofp i32 %1092 to float
  %1097 = uitofp i32 %1093 to float
  %1098 = fadd fast float %1094, %1096
  %1099 = fadd fast float %1095, %1097
  %1100 = uitofp i32 %1025 to float
  %1101 = uitofp i32 %1026 to float
  %1102 = fdiv fast float %1098, %1100
  %1103 = fdiv fast float %1099, %1101
  br label %1104

; <label>:1104                                    ; preds = %1079, %1006
  %1105 = phi float [ %1102, %1079 ], [ %1074, %1006 ]
  %1106 = phi float [ %1103, %1079 ], [ %1075, %1006 ]
  %1107 = and i32 %1000, 16777216
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1218, label %1109

; <label>:1109                                    ; preds = %1104
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fadd fast float %1111, %140
  %1115 = fadd fast float %1112, %141
  %1116 = fadd fast float %1113, %142
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = icmp eq i32 %43, 65535
  br i1 %1120, label %1215, label %1121

; <label>:1121                                    ; preds = %1109
  %1122 = lshr i32 %43, 1
  %1123 = shl i32 %1122, 2
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %43, 1
  %1127 = icmp ne i32 %1126, 0
  %1128 = lshr i32 %1125, 16
  %1129 = and i32 %1125, 65535
  %1130 = select i1 %1127, i32 %1128, i32 %1129
  %1131 = icmp eq i32 %1130, 65535
  br i1 %1131, label %1211, label %1132

; <label>:1132                                    ; preds = %1121
  %1133 = mul nuw nsw i32 %1130, 40
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = add nuw nsw i32 %1133, 12
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = add nuw nsw i32 %1133, 24
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = add nuw nsw i32 %1133, 36
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = fsub fast float %1114, %1135
  %1152 = fsub fast float %1115, %1136
  %1153 = fsub fast float %1116, %1137
  %1154 = fmul fast float %1150, %1151
  %1155 = fmul fast float %1150, %1152
  %1156 = fmul fast float %1150, %1153
  %1157 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1158 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1159 = call float @dx.op.unary.f32(i32 27, float %1156)  ; Round_ni(value)
  %1160 = fadd fast float %1157, 5.000000e-01
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = fadd fast float %1159, 5.000000e-01
  %1163 = fmul fast float %1160, %1140
  %1164 = fmul fast float %1161, %1141
  %1165 = fmul fast float %1162, %1142
  %1166 = shl i32 %43, 2
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call float @dx.op.unary.f32(i32 22, float %1163)  ; Frc(value)
  %1172 = call float @dx.op.unary.f32(i32 22, float %1164)  ; Frc(value)
  %1173 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1170, %dx.types.Handle %37, float %1171, float %1172, float %1173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = fmul fast float %1175, 1.023000e+03
  %1179 = fmul fast float %1176, 1.023000e+03
  %1180 = fmul fast float %1177, 1.023000e+03
  %1181 = fadd fast float %1178, 5.000000e-01
  %1182 = fadd fast float %1179, 5.000000e-01
  %1183 = fadd fast float %1180, 5.000000e-01
  %1184 = call float @dx.op.unary.f32(i32 27, float %1181)  ; Round_ni(value)
  %1185 = call float @dx.op.unary.f32(i32 27, float %1182)  ; Round_ni(value)
  %1186 = call float @dx.op.unary.f32(i32 27, float %1183)  ; Round_ni(value)
  %1187 = fsub fast float %1154, %1157
  %1188 = fsub fast float %1155, %1158
  %1189 = fsub fast float %1156, %1159
  %1190 = fmul fast float %1187, 7.500000e-01
  %1191 = fmul fast float %1188, 7.500000e-01
  %1192 = fmul fast float %1189, 7.500000e-01
  %1193 = fadd fast float %1157, 1.250000e-01
  %1194 = fadd fast float %1193, %1190
  %1195 = fadd fast float %1194, %1184
  %1196 = fadd fast float %1158, 1.250000e-01
  %1197 = fadd fast float %1196, %1191
  %1198 = fadd fast float %1197, %1185
  %1199 = fadd fast float %1159, 1.250000e-01
  %1200 = fadd fast float %1199, %1192
  %1201 = fadd fast float %1200, %1186
  %1202 = fmul fast float %1195, %1145
  %1203 = fmul fast float %1198, %1146
  %1204 = fmul fast float %1201, %1147
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1208, %dx.types.Handle %35, float %1202, float %1203, float %1204, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  br label %1211

; <label>:1211                                    ; preds = %1132, %1121
  %1212 = phi float [ %1210, %1132 ], [ -1.000000e+00, %1121 ]
  %1213 = fadd fast float %1212, %1119
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  br label %1215

; <label>:1215                                    ; preds = %1211, %1109
  %1216 = phi float [ %1214, %1211 ], [ %1119, %1109 ]
  %1217 = fmul fast float %1216, %455
  br label %1218

; <label>:1218                                    ; preds = %1215, %1104
  %1219 = phi float [ %1217, %1215 ], [ %455, %1104 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 256
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1270, label %1224

; <label>:1224                                    ; preds = %1218
  %1225 = add i32 %42, 476
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = add i32 %1227, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1229, %dx.types.Handle %78, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = add i32 %42, 116
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = shl i32 %1234, 4
  %1236 = and i32 %1235, 32752
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = lshr i32 %1234, 7
  %1239 = and i32 %1238, 32752
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fsub fast float 1.000000e+00, %1219
  %1242 = call float @dx.op.binary.f32(i32 35, float %1241, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1243 = bitcast float %1219 to i32
  %1244 = sitofp i32 %1243 to float
  %1245 = fadd fast float %1244, 0xC1CFBF8940000000
  %1246 = fmul fast float %1240, %1245
  %1247 = fadd fast float %1246, 0x41CFBF8940000000
  %1248 = fptosi float %1247 to i32
  %1249 = bitcast i32 %1248 to float
  %1250 = bitcast float %1242 to i32
  %1251 = sitofp i32 %1250 to float
  %1252 = fadd fast float %1251, 0xC1CFBF8940000000
  %1253 = fmul fast float %1252, %1240
  %1254 = fadd fast float %1253, 0x41CFBF8940000000
  %1255 = fptosi float %1254 to i32
  %1256 = bitcast i32 %1255 to float
  %1257 = fmul fast float %1249, %1237
  %1258 = fmul fast float %1256, %1237
  %1259 = fsub fast float %1242, %1257
  %1260 = fadd fast float %1258, %1242
  %1261 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1262 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1263 = fsub fast float %1231, %1261
  %1264 = fsub fast float %1262, %1261
  %1265 = bitcast float %1264 to i32
  %1266 = sub nsw i32 2129859010, %1265
  %1267 = bitcast i32 %1266 to float
  %1268 = fmul fast float %1267, %1263
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  br label %1270

; <label>:1270                                    ; preds = %1224, %1218
  %1271 = phi float [ %1269, %1224 ], [ %1219, %1218 ]
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 128
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1292, label %1276

; <label>:1276                                    ; preds = %1270
  %1277 = add i32 %42, 460
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = add i32 %1279, 0
  %1281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1281, %dx.types.Handle %78, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 524288
  %1287 = icmp ne i32 %1286, 0
  %1288 = fcmp fast ogt float %1283, 0x3FE0101020000000
  %1289 = select i1 %1288, float 1.000000e+00, float 0.000000e+00
  %1290 = select i1 %1287, float %1289, float %1283
  %1291 = fmul fast float %1290, %1271
  br label %1292

; <label>:1292                                    ; preds = %1276, %1270
  %1293 = phi float [ %1291, %1276 ], [ %1271, %1270 ]
  %1294 = fcmp fast ult float %1293, 0x3F70101020000000
  br i1 %1294, label %1924, label %1295

; <label>:1295                                    ; preds = %1292
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 16
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1498, label %1300

; <label>:1300                                    ; preds = %1295
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %42, 412
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1307, %dx.types.Handle %77, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1313 = and i32 %1302, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = lshr i32 %1302, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1312, %1314
  %1319 = fadd fast float %1318, %1317
  %1320 = fmul fast float %1319, 0x3F70101000000000
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 512
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1333, label %1325

; <label>:1325                                    ; preds = %1300
  %1326 = add i32 %42, 492
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = add i32 %1328, 0
  %1330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1330, %dx.types.Handle %78, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  br label %1333

; <label>:1333                                    ; preds = %1325, %1300
  %1334 = phi float [ %1332, %1325 ], [ 1.000000e+00, %1300 ]
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 33554432
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1445, label %1339

; <label>:1339                                    ; preds = %1333
  %1340 = add i32 %42, 240
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 65535
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = lshr i32 %1342, 16
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = add i32 %42, 244
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = and i32 %1349, 65535
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = lshr i32 %1353, 24
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = and i32 %1353, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1358, 0x3F70101020000000
  %1360 = lshr i32 %1353, 8
  %1361 = and i32 %1360, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1362, 0x3F70101020000000
  %1364 = lshr i32 %1353, 16
  %1365 = and i32 %1364, 255
  %1366 = uitofp i32 %1365 to float
  %1367 = fmul fast float %1366, 0x3F70101020000000
  %1368 = add i32 %42, 236
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = lshr i32 %1370, 24
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3F70101020000000
  %1374 = and i32 %1370, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = fmul fast float %1375, 0x3F70101020000000
  %1377 = lshr i32 %1370, 8
  %1378 = and i32 %1377, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1379, 0x3F70101020000000
  %1381 = lshr i32 %1370, 16
  %1382 = and i32 %1381, 255
  %1383 = uitofp i32 %1382 to float
  %1384 = fmul fast float %1383, 0x3F70101020000000
  %1385 = bitcast float %1309 to i32
  %1386 = ashr i32 %1385, 1
  %1387 = sub nsw i32 1597463174, %1386
  %1388 = bitcast i32 %1387 to float
  %1389 = fmul fast float %1309, 5.000000e-01
  %1390 = fmul fast float %1388, %1388
  %1391 = fmul fast float %1390, %1389
  %1392 = fsub fast float 1.500000e+00, %1391
  %1393 = fmul fast float %1388, %1309
  %1394 = fmul fast float %1393, %1392
  %1395 = bitcast float %1310 to i32
  %1396 = ashr i32 %1395, 1
  %1397 = sub nsw i32 1597463174, %1396
  %1398 = bitcast i32 %1397 to float
  %1399 = fmul fast float %1310, 5.000000e-01
  %1400 = fmul fast float %1398, %1398
  %1401 = fmul fast float %1400, %1399
  %1402 = fsub fast float 1.500000e+00, %1401
  %1403 = fmul fast float %1398, %1310
  %1404 = fmul fast float %1403, %1402
  %1405 = bitcast float %1311 to i32
  %1406 = ashr i32 %1405, 1
  %1407 = sub nsw i32 1597463174, %1406
  %1408 = bitcast i32 %1407 to float
  %1409 = fmul fast float %1311, 5.000000e-01
  %1410 = fmul fast float %1408, %1408
  %1411 = fmul fast float %1410, %1409
  %1412 = fsub fast float 1.500000e+00, %1411
  %1413 = fmul fast float %1408, %1311
  %1414 = fmul fast float %1413, %1412
  %1415 = fsub fast float %1394, %1376
  %1416 = fsub fast float %1404, %1380
  %1417 = fsub fast float %1414, %1384
  %1418 = fmul fast float %1415, %1344
  %1419 = fmul fast float %1416, %1346
  %1420 = fmul fast float %1417, %1351
  %1421 = fadd fast float %1418, %1359
  %1422 = fadd fast float %1419, %1363
  %1423 = fadd fast float %1420, %1367
  %1424 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1425 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1426 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1427 = fmul fast float %1424, %1424
  %1428 = fmul fast float %1425, %1425
  %1429 = fmul fast float %1426, %1426
  %1430 = fsub fast float %1427, %1309
  %1431 = fsub fast float %1428, %1310
  %1432 = fsub fast float %1429, %1311
  %1433 = fmul fast float %1430, %1334
  %1434 = fmul fast float %1431, %1334
  %1435 = fmul fast float %1432, %1334
  %1436 = fadd fast float %1433, %1309
  %1437 = fadd fast float %1434, %1310
  %1438 = fadd fast float %1435, %1311
  %1439 = fadd fast float %1356, %1320
  %1440 = fsub fast float %1439, %1373
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fsub fast float %1441, %1320
  %1443 = fmul fast float %1442, %1334
  %1444 = fadd fast float %1443, %1320
  br label %1498

; <label>:1445                                    ; preds = %1333
  %1446 = and i32 %1336, 134217728
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1482, label %1448

; <label>:1448                                    ; preds = %1445
  %1449 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %1450 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1451 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1452 = fadd fast float %1449, -5.000000e-01
  %1453 = fadd fast float %1450, -5.000000e-01
  %1454 = fadd fast float %1451, -5.000000e-01
  %1455 = fmul fast float %1452, %1334
  %1456 = fmul fast float %1453, %1334
  %1457 = fmul fast float %1454, %1334
  %1458 = fadd fast float %1455, 5.000000e-01
  %1459 = fadd fast float %1456, 5.000000e-01
  %1460 = fadd fast float %1457, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 24, float %1309)  ; Sqrt(value)
  %1462 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1463 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1464 = fmul fast float %1458, 2.000000e+00
  %1465 = fsub fast float 1.000000e+00, %1464
  %1466 = fmul fast float %1465, %1461
  %1467 = fadd fast float %1466, %1464
  %1468 = fmul fast float %1467, %1461
  %1469 = fmul fast float %1459, 2.000000e+00
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1470, %1462
  %1472 = fadd fast float %1471, %1469
  %1473 = fmul fast float %1472, %1462
  %1474 = fmul fast float %1460, 2.000000e+00
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = fmul fast float %1475, %1463
  %1477 = fadd fast float %1476, %1474
  %1478 = fmul fast float %1477, %1463
  %1479 = fmul fast float %1468, %1468
  %1480 = fmul fast float %1473, %1473
  %1481 = fmul fast float %1478, %1478
  br label %1498

; <label>:1482                                    ; preds = %1445
  %1483 = fmul fast float %290, %290
  %1484 = fmul fast float %294, %294
  %1485 = fmul fast float %298, %298
  %1486 = fadd fast float %1483, -1.000000e+00
  %1487 = fadd fast float %1484, -1.000000e+00
  %1488 = fadd fast float %1485, -1.000000e+00
  %1489 = fmul fast float %1334, %1486
  %1490 = fmul fast float %1334, %1487
  %1491 = fmul fast float %1334, %1488
  %1492 = fadd fast float %1489, 1.000000e+00
  %1493 = fadd fast float %1490, 1.000000e+00
  %1494 = fadd fast float %1491, 1.000000e+00
  %1495 = fmul fast float %1492, %1309
  %1496 = fmul fast float %1493, %1310
  %1497 = fmul fast float %1494, %1311
  br label %1498

; <label>:1498                                    ; preds = %1482, %1448, %1339, %1295
  %1499 = phi float [ %1444, %1339 ], [ %1320, %1448 ], [ %1320, %1482 ], [ 0x3FA23C0BE0000000, %1295 ]
  %1500 = phi float [ %1436, %1339 ], [ %1479, %1448 ], [ %1495, %1482 ], [ 1.000000e+00, %1295 ]
  %1501 = phi float [ %1437, %1339 ], [ %1480, %1448 ], [ %1496, %1482 ], [ 1.000000e+00, %1295 ]
  %1502 = phi float [ %1438, %1339 ], [ %1481, %1448 ], [ %1497, %1482 ], [ 1.000000e+00, %1295 ]
  %1503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.i32 %1503, 1
  %1505 = and i32 %1504, 1
  %1506 = icmp ne i32 %1505, 0
  %1507 = add i32 %42, 356
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 32
  %1511 = icmp ne i32 %1510, 0
  %1512 = and i1 %1506, %1511
  %1513 = select i1 %1512, float 1.000000e+00, float %1500
  %1514 = select i1 %1512, float 0x3FD3333340000000, float %1501
  %1515 = select i1 %1512, float 0x3FD3333340000000, float %1502
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 32
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1592, label %1520

; <label>:1520                                    ; preds = %1498
  %1521 = add i32 %42, 108
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %42, 428
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %1526, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %77, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = extractvalue %dx.types.ResRet.f32 %1529, 3
  %1534 = and i32 %1523, 255
  %1535 = uitofp i32 %1534 to float
  %1536 = lshr i32 %1523, 8
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = lshr i32 %1523, 16
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1541, 0x3F70101000000000
  %1543 = fmul fast float %1530, %1535
  %1544 = fadd fast float %1543, %1538
  %1545 = fmul fast float %1544, 0x3F70101000000000
  %1546 = fadd fast float %1531, -5.000000e-01
  %1547 = fadd fast float %1533, -5.000000e-01
  %1548 = fmul fast float %1546, %1542
  %1549 = fmul fast float %1547, %1542
  %1550 = fadd fast float %1548, 5.000000e-01
  %1551 = fadd fast float %1549, 5.000000e-01
  %1552 = fmul fast float %1550, 2.000000e+00
  %1553 = fadd fast float %1552, -1.000000e+00
  %1554 = fmul fast float %1551, 2.000000e+00
  %1555 = fadd fast float %1554, -1.000000e+00
  %1556 = fadd fast float %1553, %1555
  %1557 = fmul fast float %1556, 5.000000e-01
  %1558 = fsub fast float %1553, %1555
  %1559 = fmul fast float %1558, 5.000000e-01
  %1560 = call float @dx.op.unary.f32(i32 6, float %1557)  ; FAbs(value)
  %1561 = fsub fast float 1.000000e+00, %1560
  %1562 = call float @dx.op.unary.f32(i32 6, float %1559)  ; FAbs(value)
  %1563 = fsub fast float %1561, %1562
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1559, float %1563, float %1557, float %1559, float %1563)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = call float @dx.op.unary.f32(i32 25, float %1564)  ; Rsqrt(value)
  %1566 = fmul fast float %1557, %1565
  %1567 = fmul fast float %1559, %1565
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 67108864
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1588, label %1572

; <label>:1572                                    ; preds = %1520
  %1573 = add i32 %42, 296
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 65535
  %1581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1580)  ; LegacyF16ToF32(value)
  %1582 = lshr i32 %1575, 16
  %1583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1582)  ; LegacyF16ToF32(value)
  %1584 = fsub fast float %1545, %1583
  %1585 = fmul fast float %1584, %1577
  %1586 = fadd fast float %1585, %1581
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  br label %1588

; <label>:1588                                    ; preds = %1572, %1520
  %1589 = phi float [ %1587, %1572 ], [ %1545, %1520 ]
  %1590 = call float @dx.op.dot2.f32(i32 54, float %1566, float %1567, float %1009, float %1010)  ; Dot2(ax,ay,bx,by)
  %1591 = call float @dx.op.dot2.f32(i32 54, float %1566, float %1567, float %1011, float %1012)  ; Dot2(ax,ay,bx,by)
  br label %1592

; <label>:1592                                    ; preds = %1588, %1498
  %1593 = phi float [ %1589, %1588 ], [ 0x3FD6666660000000, %1498 ]
  %1594 = phi float [ %1590, %1588 ], [ 0.000000e+00, %1498 ]
  %1595 = phi float [ %1591, %1588 ], [ 0.000000e+00, %1498 ]
  %1596 = phi float [ %1532, %1588 ], [ 1.000000e+00, %1498 ]
  %1597 = add i32 %42, 176
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = lshr i32 %1599, 22
  %1601 = shl nuw nsw i32 %1600, 5
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 64
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1640, label %1607

; <label>:1607                                    ; preds = %1592
  %1608 = add i32 %42, 444
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = add i32 %1610, 0
  %1612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 131072
  %1616 = icmp eq i32 %1615, 0
  %1617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1612, %dx.types.Handle %77, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = fmul fast float %1618, %278
  %1622 = fmul fast float %1619, %281
  %1623 = fmul fast float %1620, %284
  br i1 %1616, label %1630, label %1624

; <label>:1624                                    ; preds = %1607
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = fmul fast float %1626, %1621
  %1628 = fmul fast float %1626, %1622
  %1629 = fmul fast float %1626, %1623
  br label %1630

; <label>:1630                                    ; preds = %1624, %1607
  %1631 = phi float [ %1627, %1624 ], [ %1621, %1607 ]
  %1632 = phi float [ %1628, %1624 ], [ %1622, %1607 ]
  %1633 = phi float [ %1629, %1624 ], [ %1623, %1607 ]
  %1634 = fmul fast float %1631, %1602
  %1635 = select i1 %216, float %1634, float %1631
  %1636 = call float @dx.op.dot3.f32(i32 55, float %1635, float %1632, float %1633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1637 = select i1 %216, float 0.000000e+00, float %1631
  %1638 = select i1 %216, float %1636, float %1632
  %1639 = select i1 %216, float 0.000000e+00, float %1633
  br label %1640

; <label>:1640                                    ; preds = %1630, %1592
  %1641 = phi float [ %1637, %1630 ], [ 0.000000e+00, %1592 ]
  %1642 = phi float [ %1638, %1630 ], [ 0.000000e+00, %1592 ]
  %1643 = phi float [ %1639, %1630 ], [ 0.000000e+00, %1592 ]
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 10240
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1692, label %1648

; <label>:1648                                    ; preds = %1640
  %1649 = add i32 %42, 508
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = add i32 %1651, 0
  %1653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1653, %dx.types.Handle %78, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1655 = extractvalue %dx.types.ResRet.f32 %1654, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1654, 3
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 1048576
  %1660 = icmp ne i32 %1659, 0
  %1661 = and i32 %1658, 8192
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1678, label %1663

; <label>:1663                                    ; preds = %1648
  %1664 = extractvalue %dx.types.ResRet.f32 %1654, 2
  %1665 = select i1 %1660, float %1664, float %1655
  %1666 = extractvalue %dx.types.ResRet.f32 %1654, 0
  %1667 = select i1 %1660, float %1666, float %1655
  %1668 = add i32 %42, 112
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = lshr i32 %1670, 16
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F80101020000000
  %1675 = fmul fast float %1674, %1667
  %1676 = fmul fast float %1674, %1655
  %1677 = fmul fast float %1674, %1665
  br label %1678

; <label>:1678                                    ; preds = %1663, %1648
  %1679 = phi float [ %1675, %1663 ], [ 0.000000e+00, %1648 ]
  %1680 = phi float [ %1676, %1663 ], [ 0.000000e+00, %1648 ]
  %1681 = phi float [ %1677, %1663 ], [ 0.000000e+00, %1648 ]
  %1682 = and i32 %1658, 2048
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1692, label %1684

; <label>:1684                                    ; preds = %1678
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = shl i32 %1686, 4
  %1688 = and i32 %1687, 32752
  %1689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1688)  ; LegacyF16ToF32(value)
  %1690 = fmul fast float %1689, %1656
  %1691 = call float @dx.op.binary.f32(i32 35, float %1690, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1692

; <label>:1692                                    ; preds = %1684, %1678, %1640
  %1693 = phi float [ %1679, %1684 ], [ %1679, %1678 ], [ 0.000000e+00, %1640 ]
  %1694 = phi float [ %1680, %1684 ], [ %1680, %1678 ], [ 0.000000e+00, %1640 ]
  %1695 = phi float [ %1681, %1684 ], [ %1681, %1678 ], [ 0.000000e+00, %1640 ]
  %1696 = phi float [ %1691, %1684 ], [ 0x3F70101020000000, %1678 ], [ 0x3F70101020000000, %1640 ]
  %1697 = add i32 %42, 112
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 255
  %1701 = uitofp i32 %1700 to float
  %1702 = lshr i32 %1699, 8
  %1703 = and i32 %1702, 255
  %1704 = uitofp i32 %1703 to float
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1513, float %1514, float %1515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = fmul fast float %1704, %1705
  %1707 = fadd fast float %1706, %1701
  %1708 = fmul fast float %1707, 0x3F70101020000000
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  br i1 %997, label %1710, label %1718

; <label>:1710                                    ; preds = %1692
  %1711 = fsub fast float 1.000000e+00, %1293
  %1712 = fmul fast float %1711, %984
  %1713 = fmul fast float %1711, %985
  %1714 = fmul fast float %1711, %986
  %1715 = fmul fast float %1711, %981
  %1716 = fmul fast float %1711, %982
  %1717 = fmul fast float %1711, %983
  br label %1718

; <label>:1718                                    ; preds = %1710, %1692
  %1719 = phi float [ %1715, %1710 ], [ %981, %1692 ]
  %1720 = phi float [ %1716, %1710 ], [ %982, %1692 ]
  %1721 = phi float [ %1717, %1710 ], [ %983, %1692 ]
  %1722 = phi float [ %1712, %1710 ], [ %984, %1692 ]
  %1723 = phi float [ %1713, %1710 ], [ %985, %1692 ]
  %1724 = phi float [ %1714, %1710 ], [ %986, %1692 ]
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = and i32 %1726, 3
  %1728 = icmp eq i32 %1727, 3
  br i1 %1728, label %1807, label %1729

; <label>:1729                                    ; preds = %1718
  %1730 = and i32 %1726, 16
  %1731 = icmp ne i32 %1730, 0
  %1732 = select i1 %1731, float %1293, float 0.000000e+00
  %1733 = icmp eq i32 %1727, 0
  br i1 %1733, label %1734, label %1762

; <label>:1734                                    ; preds = %1729
  %1735 = and i32 %1726, 64
  %1736 = icmp ne i32 %1735, 0
  %1737 = select i1 %1736, float %1293, float 0.000000e+00
  %1738 = fsub fast float %1513, %1722
  %1739 = fsub fast float %1514, %1723
  %1740 = fsub fast float %1515, %1724
  %1741 = fmul fast float %1732, %1738
  %1742 = fmul fast float %1732, %1739
  %1743 = fmul fast float %1732, %1740
  %1744 = fadd fast float %1741, %1722
  %1745 = fadd fast float %1742, %1723
  %1746 = fadd fast float %1743, %1724
  %1747 = fsub fast float %1499, %990
  %1748 = fmul fast float %1732, %1747
  %1749 = fadd fast float %1748, %990
  %1750 = fsub fast float %1641, %1719
  %1751 = fsub fast float %1642, %1720
  %1752 = fsub fast float %1643, %1721
  %1753 = fmul fast float %1737, %1750
  %1754 = fmul fast float %1737, %1751
  %1755 = fmul fast float %1737, %1752
  %1756 = fadd fast float %1753, %1719
  %1757 = fadd fast float %1754, %1720
  %1758 = fadd fast float %1755, %1721
  %1759 = fsub fast float %1709, %995
  %1760 = fmul fast float %1732, %1759
  %1761 = fadd fast float %1760, %995
  br label %1807

; <label>:1762                                    ; preds = %1729
  %1763 = icmp eq i32 %1727, 1
  br i1 %1763, label %1764, label %1777

; <label>:1764                                    ; preds = %1762
  %1765 = fadd fast float %1513, -1.000000e+00
  %1766 = fadd fast float %1514, -1.000000e+00
  %1767 = fadd fast float %1515, -1.000000e+00
  %1768 = fmul fast float %1732, %1765
  %1769 = fmul fast float %1732, %1766
  %1770 = fmul fast float %1732, %1767
  %1771 = fadd fast float %1768, 1.000000e+00
  %1772 = fadd fast float %1769, 1.000000e+00
  %1773 = fadd fast float %1770, 1.000000e+00
  %1774 = fmul fast float %1771, %1722
  %1775 = fmul fast float %1772, %1723
  %1776 = fmul fast float %1773, %1724
  br label %1807

; <label>:1777                                    ; preds = %1762
  %1778 = icmp eq i32 %1727, 2
  br i1 %1778, label %1779, label %1807

; <label>:1779                                    ; preds = %1777
  %1780 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1781 = call float @dx.op.unary.f32(i32 24, float %1514)  ; Sqrt(value)
  %1782 = call float @dx.op.unary.f32(i32 24, float %1515)  ; Sqrt(value)
  %1783 = fadd fast float %1780, -5.000000e-01
  %1784 = fadd fast float %1781, -5.000000e-01
  %1785 = fadd fast float %1782, -5.000000e-01
  %1786 = fmul fast float %1783, %1732
  %1787 = fmul fast float %1784, %1732
  %1788 = fmul fast float %1785, %1732
  %1789 = fadd fast float %1786, 5.000000e-01
  %1790 = fadd fast float %1787, 5.000000e-01
  %1791 = fadd fast float %1788, 5.000000e-01
  %1792 = fmul fast float %1789, 2.000000e+00
  %1793 = fsub fast float 1.000000e+00, %1792
  %1794 = fmul fast float %1793, %1722
  %1795 = fadd fast float %1794, %1792
  %1796 = fmul fast float %1795, %1722
  %1797 = fmul fast float %1790, 2.000000e+00
  %1798 = fsub fast float 1.000000e+00, %1797
  %1799 = fmul fast float %1798, %1723
  %1800 = fadd fast float %1799, %1797
  %1801 = fmul fast float %1800, %1723
  %1802 = fmul fast float %1791, 2.000000e+00
  %1803 = fsub fast float 1.000000e+00, %1802
  %1804 = fmul fast float %1803, %1724
  %1805 = fadd fast float %1804, %1802
  %1806 = fmul fast float %1805, %1724
  br label %1807

; <label>:1807                                    ; preds = %1779, %1777, %1764, %1734, %1718
  %1808 = phi float [ %1719, %1718 ], [ %1719, %1779 ], [ %1719, %1777 ], [ %1719, %1764 ], [ %1756, %1734 ]
  %1809 = phi float [ %1720, %1718 ], [ %1720, %1779 ], [ %1720, %1777 ], [ %1720, %1764 ], [ %1757, %1734 ]
  %1810 = phi float [ %1721, %1718 ], [ %1721, %1779 ], [ %1721, %1777 ], [ %1721, %1764 ], [ %1758, %1734 ]
  %1811 = phi float [ %1722, %1718 ], [ %1796, %1779 ], [ %1722, %1777 ], [ %1774, %1764 ], [ %1744, %1734 ]
  %1812 = phi float [ %1723, %1718 ], [ %1801, %1779 ], [ %1723, %1777 ], [ %1775, %1764 ], [ %1745, %1734 ]
  %1813 = phi float [ %1724, %1718 ], [ %1806, %1779 ], [ %1724, %1777 ], [ %1776, %1764 ], [ %1746, %1734 ]
  %1814 = phi float [ %990, %1718 ], [ %990, %1779 ], [ %990, %1777 ], [ %990, %1764 ], [ %1749, %1734 ]
  %1815 = phi float [ %995, %1718 ], [ %995, %1779 ], [ %995, %1777 ], [ %995, %1764 ], [ %1761, %1734 ]
  %1816 = and i32 %1726, 12
  %1817 = icmp eq i32 %1816, 12
  br i1 %1817, label %1924, label %1818

; <label>:1818                                    ; preds = %1807
  %1819 = and i32 %1726, 2097184
  %1820 = icmp eq i32 %1819, 2097184
  %1821 = select i1 %1820, float %1293, float 0.000000e+00
  %1822 = and i32 %1726, 4194336
  %1823 = icmp eq i32 %1822, 4194336
  %1824 = select i1 %1823, float %1293, float 0.000000e+00
  %1825 = and i32 %1726, 8388640
  %1826 = icmp eq i32 %1825, 8388640
  %1827 = select i1 %1826, float %1293, float 0.000000e+00
  %1828 = and i32 %1726, 2048
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1293, float 0.000000e+00
  %1831 = and i32 %1726, 8192
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1293, float 0.000000e+00
  %1834 = icmp eq i32 %1816, 0
  br i1 %1834, label %1835, label %1860

; <label>:1835                                    ; preds = %1818
  %1836 = fsub fast float %1594, %979
  %1837 = fsub fast float %1595, %980
  %1838 = fmul fast float %1821, %1836
  %1839 = fmul fast float %1821, %1837
  %1840 = fadd fast float %1838, %979
  %1841 = fadd fast float %1839, %980
  %1842 = fsub fast float %1596, %993
  %1843 = fmul fast float %1824, %1842
  %1844 = fadd fast float %1843, %993
  %1845 = fsub fast float %1593, %992
  %1846 = fmul fast float %1827, %1845
  %1847 = fadd fast float %1846, %992
  %1848 = fsub fast float %1696, %994
  %1849 = fmul fast float %1830, %1848
  %1850 = fadd fast float %1849, %994
  %1851 = fsub fast float %1693, %987
  %1852 = fsub fast float %1694, %988
  %1853 = fsub fast float %1695, %989
  %1854 = fmul fast float %1833, %1851
  %1855 = fmul fast float %1833, %1852
  %1856 = fmul fast float %1833, %1853
  %1857 = fadd fast float %1854, %987
  %1858 = fadd fast float %1855, %988
  %1859 = fadd fast float %1856, %989
  br label %1924

; <label>:1860                                    ; preds = %1818
  %1861 = icmp eq i32 %1816, 4
  br i1 %1861, label %1862, label %1902

; <label>:1862                                    ; preds = %1860
  %1863 = fmul fast float %1821, %1594
  %1864 = fmul fast float %1821, %1595
  %1865 = fadd fast float %1863, %979
  %1866 = fadd fast float %1864, %980
  %1867 = call float @dx.op.binary.f32(i32 36, float %993, float %1596)  ; FMin(a,b)
  %1868 = fsub fast float %1867, %993
  %1869 = fmul fast float %1868, %1824
  %1870 = fadd fast float %1869, %993
  %1871 = fadd fast float %1593, %992
  %1872 = fmul fast float %1871, 0x3FF337FAE0000000
  %1873 = fmul fast float %992, %992
  %1874 = fmul fast float %1593, %1593
  %1875 = fadd fast float %1874, %1873
  %1876 = fmul fast float %1875, 0x3FE5152B00000000
  %1877 = fmul fast float %992, 0xBFCC1F85E0000000
  %1878 = fmul fast float %1877, %1593
  %1879 = fadd fast float %1878, 0xBFE1363700000000
  %1880 = fadd fast float %1879, %1872
  %1881 = fsub fast float %1880, %1876
  %1882 = fmul fast float %1871, 0x3FBA6F0D00000000
  %1883 = fmul fast float %1875, 0x3FD0432880000000
  %1884 = fmul fast float %992, 0xBFEF110800000000
  %1885 = fmul fast float %1884, %1593
  %1886 = fadd fast float %1885, 1.000000e+00
  %1887 = fsub fast float %1886, %1882
  %1888 = fadd fast float %1887, %1883
  %1889 = fdiv fast float %1881, %1888
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fsub fast float %1890, %992
  %1892 = fmul fast float %1891, %1827
  %1893 = fadd fast float %1892, %992
  %1894 = fmul fast float %1830, %1696
  %1895 = fadd fast float %1894, %994
  %1896 = fmul fast float %1833, %1693
  %1897 = fmul fast float %1833, %1694
  %1898 = fmul fast float %1833, %1695
  %1899 = fadd fast float %1896, %987
  %1900 = fadd fast float %1897, %988
  %1901 = fadd fast float %1898, %989
  br label %1924

; <label>:1902                                    ; preds = %1860
  %1903 = icmp eq i32 %1816, 8
  br i1 %1903, label %1904, label %1924

; <label>:1904                                    ; preds = %1902
  %1905 = fmul fast float %1821, %1594
  %1906 = fmul fast float %1821, %1595
  %1907 = fadd fast float %1905, %979
  %1908 = fadd fast float %1906, %980
  %1909 = call float @dx.op.binary.f32(i32 36, float %993, float %1596)  ; FMin(a,b)
  %1910 = fsub fast float %1909, %993
  %1911 = fmul fast float %1910, %1824
  %1912 = fadd fast float %1911, %993
  %1913 = fsub fast float %1593, %992
  %1914 = fmul fast float %1827, %1913
  %1915 = fadd fast float %1914, %992
  %1916 = fmul fast float %1830, %1696
  %1917 = fadd fast float %1916, %994
  %1918 = fmul fast float %1833, %1693
  %1919 = fmul fast float %1833, %1694
  %1920 = fmul fast float %1833, %1695
  %1921 = fadd fast float %1918, %987
  %1922 = fadd fast float %1919, %988
  %1923 = fadd fast float %1920, %989
  br label %1924

; <label>:1924                                    ; preds = %1904, %1902, %1862, %1835, %1807, %1292, %996, %978
  %1925 = phi float [ %979, %1807 ], [ %979, %1292 ], [ %979, %978 ], [ %1907, %1904 ], [ %979, %1902 ], [ %1865, %1862 ], [ %1840, %1835 ], [ %979, %996 ]
  %1926 = phi float [ %980, %1807 ], [ %980, %1292 ], [ %980, %978 ], [ %1908, %1904 ], [ %980, %1902 ], [ %1866, %1862 ], [ %1841, %1835 ], [ %980, %996 ]
  %1927 = phi float [ %1808, %1807 ], [ %981, %1292 ], [ %981, %978 ], [ %1808, %1904 ], [ %1808, %1902 ], [ %1808, %1862 ], [ %1808, %1835 ], [ %981, %996 ]
  %1928 = phi float [ %1809, %1807 ], [ %982, %1292 ], [ %982, %978 ], [ %1809, %1904 ], [ %1809, %1902 ], [ %1809, %1862 ], [ %1809, %1835 ], [ %982, %996 ]
  %1929 = phi float [ %1810, %1807 ], [ %983, %1292 ], [ %983, %978 ], [ %1810, %1904 ], [ %1810, %1902 ], [ %1810, %1862 ], [ %1810, %1835 ], [ %983, %996 ]
  %1930 = phi float [ %1811, %1807 ], [ %984, %1292 ], [ %984, %978 ], [ %1811, %1904 ], [ %1811, %1902 ], [ %1811, %1862 ], [ %1811, %1835 ], [ %984, %996 ]
  %1931 = phi float [ %1812, %1807 ], [ %985, %1292 ], [ %985, %978 ], [ %1812, %1904 ], [ %1812, %1902 ], [ %1812, %1862 ], [ %1812, %1835 ], [ %985, %996 ]
  %1932 = phi float [ %1813, %1807 ], [ %986, %1292 ], [ %986, %978 ], [ %1813, %1904 ], [ %1813, %1902 ], [ %1813, %1862 ], [ %1813, %1835 ], [ %986, %996 ]
  %1933 = phi float [ %987, %1807 ], [ %987, %1292 ], [ %987, %978 ], [ %1921, %1904 ], [ %987, %1902 ], [ %1899, %1862 ], [ %1857, %1835 ], [ %987, %996 ]
  %1934 = phi float [ %988, %1807 ], [ %988, %1292 ], [ %988, %978 ], [ %1922, %1904 ], [ %988, %1902 ], [ %1900, %1862 ], [ %1858, %1835 ], [ %988, %996 ]
  %1935 = phi float [ %989, %1807 ], [ %989, %1292 ], [ %989, %978 ], [ %1923, %1904 ], [ %989, %1902 ], [ %1901, %1862 ], [ %1859, %1835 ], [ %989, %996 ]
  %1936 = phi float [ %1814, %1807 ], [ %990, %1292 ], [ %990, %978 ], [ %1814, %1904 ], [ %1814, %1902 ], [ %1814, %1862 ], [ %1814, %1835 ], [ %990, %996 ]
  %1937 = phi float [ %992, %1807 ], [ %992, %1292 ], [ %992, %978 ], [ %1915, %1904 ], [ %992, %1902 ], [ %1893, %1862 ], [ %1847, %1835 ], [ %992, %996 ]
  %1938 = phi float [ %993, %1807 ], [ %993, %1292 ], [ %993, %978 ], [ %1912, %1904 ], [ %993, %1902 ], [ %1870, %1862 ], [ %1844, %1835 ], [ %993, %996 ]
  %1939 = phi float [ %994, %1807 ], [ %994, %1292 ], [ %994, %978 ], [ %1917, %1904 ], [ %994, %1902 ], [ %1895, %1862 ], [ %1850, %1835 ], [ %994, %996 ]
  %1940 = phi float [ %1815, %1807 ], [ %995, %1292 ], [ %995, %978 ], [ %1815, %1904 ], [ %1815, %1902 ], [ %1815, %1862 ], [ %1815, %1835 ], [ %995, %996 ]
  br i1 %405, label %2869, label %1941

; <label>:1941                                    ; preds = %1924
  %1942 = icmp ult i32 %458, 3
  %1943 = add i32 %42, 56
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = add i32 %42, 60
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = or i32 %1948, %1945
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %2869, label %1951

; <label>:1951                                    ; preds = %1941
  %1952 = and i32 %1945, 262144
  %1953 = icmp ne i32 %1952, 0
  %1954 = select i1 %1953, float %44, float 1.000000e+00
  %1955 = select i1 %1953, float %45, float 0.000000e+00
  %1956 = select i1 %1953, float %46, float 0.000000e+00
  %1957 = select i1 %1953, float %47, float 1.000000e+00
  %1958 = select i1 %1953, float %48, float %69
  %1959 = select i1 %1953, float %49, float %70
  %1960 = add i32 %42, 316
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = lshr i32 %1962, 16
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = fmul fast float %1964, 0x3F50624DE0000000
  %1966 = add i32 %42, 120
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = lshr i32 %1968, 16
  %1970 = and i32 %1969, 255
  %1971 = lshr i32 %1968, 24
  %1972 = add i32 %42, 324
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 65535
  %1976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1975)  ; LegacyF16ToF32(value)
  %1977 = lshr i32 %1974, 16
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = add i32 %42, 64
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = lshr i32 %1981, 22
  %1983 = shl nuw nsw i32 %1982, 5
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = shl i32 %1981, 4
  %1986 = and i32 %1985, 32752
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = lshr i32 %1981, 7
  %1989 = and i32 %1988, 32752
  %1990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1989)  ; LegacyF16ToF32(value)
  %1991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.f32 %1991, 3
  %1993 = fmul fast float %1992, 1.000000e+03
  %1994 = fmul fast float %355, %1993
  %1995 = call float @dx.op.unary.f32(i32 22, float %1994)  ; Frc(value)
  %1996 = fadd fast float %1995, %345
  %1997 = fmul fast float %356, %1993
  %1998 = call float @dx.op.unary.f32(i32 22, float %1997)  ; Frc(value)
  %1999 = fadd fast float %1998, %347
  %2000 = fmul fast float %1965, %1993
  %2001 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2002 = fmul fast float %2001, 0x401921FB60000000
  %2003 = fadd fast float %2002, %1984
  %2004 = call float @dx.op.unary.f32(i32 13, float %2003)  ; Sin(value)
  %2005 = call float @dx.op.unary.f32(i32 12, float %2003)  ; Cos(value)
  %2006 = fsub fast float -0.000000e+00, %2004
  %2007 = fadd fast float %1958, -5.000000e-01
  %2008 = fadd fast float %1959, -5.000000e-01
  %2009 = fmul fast float %1976, %2007
  %2010 = fmul fast float %1978, %2008
  %2011 = fadd fast float %2009, 5.000000e-01
  %2012 = fadd fast float %2010, 5.000000e-01
  %2013 = fmul fast float %1987, %2011
  %2014 = fmul fast float %1990, %2012
  %2015 = fmul fast float %2005, %2013
  %2016 = call float @dx.op.tertiary.f32(i32 46, float %2006, float %2014, float %2015)  ; FMad(a,b,c)
  %2017 = fmul fast float %2004, %2013
  %2018 = call float @dx.op.tertiary.f32(i32 46, float %2005, float %2014, float %2017)  ; FMad(a,b,c)
  %2019 = fadd fast float %1996, %2016
  %2020 = fadd fast float %1999, %2018
  %2021 = icmp ugt i32 %1970, 1
  %2022 = icmp ugt i32 %1968, 33554431
  %2023 = or i1 %2022, %2021
  br i1 %2023, label %2024, label %2049

; <label>:2024                                    ; preds = %1951
  %2025 = add i32 %42, 260
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = lshr i32 %2027, 16
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = fmul fast float %1992, %2029
  %2031 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  %2032 = mul nuw nsw i32 %1970, %1971
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %2031, %2033
  %2035 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2036 = fptoui float %2035 to i32
  %2037 = urem i32 %2036, %1970
  %2038 = udiv i32 %2036, %1971
  %2039 = call float @dx.op.unary.f32(i32 22, float %2019)  ; Frc(value)
  %2040 = call float @dx.op.unary.f32(i32 22, float %2020)  ; Frc(value)
  %2041 = uitofp i32 %2037 to float
  %2042 = uitofp i32 %2038 to float
  %2043 = fadd fast float %2039, %2041
  %2044 = fadd fast float %2040, %2042
  %2045 = uitofp i32 %1970 to float
  %2046 = uitofp i32 %1971 to float
  %2047 = fdiv fast float %2043, %2045
  %2048 = fdiv fast float %2044, %2046
  br label %2049

; <label>:2049                                    ; preds = %2024, %1951
  %2050 = phi float [ %2047, %2024 ], [ %2019, %1951 ]
  %2051 = phi float [ %2048, %2024 ], [ %2020, %1951 ]
  %2052 = and i32 %1945, 16777216
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2163, label %2054

; <label>:2054                                    ; preds = %2049
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2059 = fadd fast float %2056, %140
  %2060 = fadd fast float %2057, %141
  %2061 = fadd fast float %2058, %142
  %2062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2063 = extractvalue %dx.types.CBufRet.f32 %2062, 0
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = icmp eq i32 %43, 65535
  br i1 %2065, label %2160, label %2066

; <label>:2066                                    ; preds = %2054
  %2067 = lshr i32 %43, 1
  %2068 = shl i32 %2067, 2
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %43, 1
  %2072 = icmp ne i32 %2071, 0
  %2073 = lshr i32 %2070, 16
  %2074 = and i32 %2070, 65535
  %2075 = select i1 %2072, i32 %2073, i32 %2074
  %2076 = icmp eq i32 %2075, 65535
  br i1 %2076, label %2156, label %2077

; <label>:2077                                    ; preds = %2066
  %2078 = mul nuw nsw i32 %2075, 40
  %2079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2083 = add nuw nsw i32 %2078, 12
  %2084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = add nuw nsw i32 %2078, 24
  %2089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = add nuw nsw i32 %2078, 36
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = fsub fast float %2059, %2080
  %2097 = fsub fast float %2060, %2081
  %2098 = fsub fast float %2061, %2082
  %2099 = fmul fast float %2095, %2096
  %2100 = fmul fast float %2095, %2097
  %2101 = fmul fast float %2095, %2098
  %2102 = call float @dx.op.unary.f32(i32 27, float %2099)  ; Round_ni(value)
  %2103 = call float @dx.op.unary.f32(i32 27, float %2100)  ; Round_ni(value)
  %2104 = call float @dx.op.unary.f32(i32 27, float %2101)  ; Round_ni(value)
  %2105 = fadd fast float %2102, 5.000000e-01
  %2106 = fadd fast float %2103, 5.000000e-01
  %2107 = fadd fast float %2104, 5.000000e-01
  %2108 = fmul fast float %2105, %2085
  %2109 = fmul fast float %2106, %2086
  %2110 = fmul fast float %2107, %2087
  %2111 = shl i32 %43, 2
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = add i32 %2113, 0
  %2115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2116 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2117 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2118 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2115, %dx.types.Handle %37, float %2116, float %2117, float %2118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = extractvalue %dx.types.ResRet.f32 %2119, 1
  %2122 = extractvalue %dx.types.ResRet.f32 %2119, 2
  %2123 = fmul fast float %2120, 1.023000e+03
  %2124 = fmul fast float %2121, 1.023000e+03
  %2125 = fmul fast float %2122, 1.023000e+03
  %2126 = fadd fast float %2123, 5.000000e-01
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = call float @dx.op.unary.f32(i32 27, float %2126)  ; Round_ni(value)
  %2130 = call float @dx.op.unary.f32(i32 27, float %2127)  ; Round_ni(value)
  %2131 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2132 = fsub fast float %2099, %2102
  %2133 = fsub fast float %2100, %2103
  %2134 = fsub fast float %2101, %2104
  %2135 = fmul fast float %2132, 7.500000e-01
  %2136 = fmul fast float %2133, 7.500000e-01
  %2137 = fmul fast float %2134, 7.500000e-01
  %2138 = fadd fast float %2102, 1.250000e-01
  %2139 = fadd fast float %2138, %2135
  %2140 = fadd fast float %2139, %2129
  %2141 = fadd fast float %2103, 1.250000e-01
  %2142 = fadd fast float %2141, %2136
  %2143 = fadd fast float %2142, %2130
  %2144 = fadd fast float %2104, 1.250000e-01
  %2145 = fadd fast float %2144, %2137
  %2146 = fadd fast float %2145, %2131
  %2147 = fmul fast float %2140, %2090
  %2148 = fmul fast float %2143, %2091
  %2149 = fmul fast float %2146, %2092
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2153, %dx.types.Handle %35, float %2147, float %2148, float %2149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  br label %2156

; <label>:2156                                    ; preds = %2077, %2066
  %2157 = phi float [ %2155, %2077 ], [ -1.000000e+00, %2066 ]
  %2158 = fadd fast float %2157, %2064
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br label %2160

; <label>:2160                                    ; preds = %2156, %2054
  %2161 = phi float [ %2159, %2156 ], [ %2064, %2054 ]
  %2162 = fmul fast float %2161, %454
  br label %2163

; <label>:2163                                    ; preds = %2160, %2049
  %2164 = phi float [ %2162, %2160 ], [ %454, %2049 ]
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 256
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2215, label %2169

; <label>:2169                                    ; preds = %2163
  %2170 = add i32 %42, 480
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = add i32 %2172, 0
  %2174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2174, %dx.types.Handle %78, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = add i32 %42, 132
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = shl i32 %2179, 4
  %2181 = and i32 %2180, 32752
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = lshr i32 %2179, 7
  %2184 = and i32 %2183, 32752
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = fsub fast float 1.000000e+00, %2164
  %2187 = call float @dx.op.binary.f32(i32 35, float %2186, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2188 = bitcast float %2164 to i32
  %2189 = sitofp i32 %2188 to float
  %2190 = fadd fast float %2189, 0xC1CFBF8940000000
  %2191 = fmul fast float %2185, %2190
  %2192 = fadd fast float %2191, 0x41CFBF8940000000
  %2193 = fptosi float %2192 to i32
  %2194 = bitcast i32 %2193 to float
  %2195 = bitcast float %2187 to i32
  %2196 = sitofp i32 %2195 to float
  %2197 = fadd fast float %2196, 0xC1CFBF8940000000
  %2198 = fmul fast float %2197, %2185
  %2199 = fadd fast float %2198, 0x41CFBF8940000000
  %2200 = fptosi float %2199 to i32
  %2201 = bitcast i32 %2200 to float
  %2202 = fmul fast float %2194, %2182
  %2203 = fmul fast float %2201, %2182
  %2204 = fsub fast float %2187, %2202
  %2205 = fadd fast float %2203, %2187
  %2206 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2207 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2208 = fsub fast float %2176, %2206
  %2209 = fsub fast float %2207, %2206
  %2210 = bitcast float %2209 to i32
  %2211 = sub nsw i32 2129859010, %2210
  %2212 = bitcast i32 %2211 to float
  %2213 = fmul fast float %2212, %2208
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  br label %2215

; <label>:2215                                    ; preds = %2169, %2163
  %2216 = phi float [ %2214, %2169 ], [ %2164, %2163 ]
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 128
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2237, label %2221

; <label>:2221                                    ; preds = %2215
  %2222 = add i32 %42, 464
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = add i32 %2224, 0
  %2226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2226, %dx.types.Handle %78, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = and i32 %2230, 524288
  %2232 = icmp ne i32 %2231, 0
  %2233 = fcmp fast ogt float %2228, 0x3FE0101020000000
  %2234 = select i1 %2233, float 1.000000e+00, float 0.000000e+00
  %2235 = select i1 %2232, float %2234, float %2228
  %2236 = fmul fast float %2235, %2216
  br label %2237

; <label>:2237                                    ; preds = %2221, %2215
  %2238 = phi float [ %2236, %2221 ], [ %2216, %2215 ]
  %2239 = fcmp fast ult float %2238, 0x3F70101020000000
  br i1 %2239, label %2869, label %2240

; <label>:2240                                    ; preds = %2237
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = and i32 %2242, 16
  %2244 = icmp eq i32 %2243, 0
  br i1 %2244, label %2443, label %2245

; <label>:2245                                    ; preds = %2240
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = add i32 %42, 416
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = add i32 %2250, 0
  %2252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2252, %dx.types.Handle %77, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.ResRet.f32 %2253, 1
  %2256 = extractvalue %dx.types.ResRet.f32 %2253, 2
  %2257 = extractvalue %dx.types.ResRet.f32 %2253, 3
  %2258 = and i32 %2247, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = lshr i32 %2247, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2257, %2259
  %2264 = fadd fast float %2263, %2262
  %2265 = fmul fast float %2264, 0x3F70101000000000
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 512
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2278, label %2270

; <label>:2270                                    ; preds = %2245
  %2271 = add i32 %42, 496
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = add i32 %2273, 0
  %2275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2275, %dx.types.Handle %78, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  br label %2278

; <label>:2278                                    ; preds = %2270, %2245
  %2279 = phi float [ %2277, %2270 ], [ 1.000000e+00, %2245 ]
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 33554432
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2390, label %2284

; <label>:2284                                    ; preds = %2278
  %2285 = add i32 %42, 256
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = and i32 %2287, 65535
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = lshr i32 %2287, 16
  %2291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2290)  ; LegacyF16ToF32(value)
  %2292 = add i32 %42, 260
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 65535
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = lshr i32 %2298, 24
  %2300 = uitofp i32 %2299 to float
  %2301 = fmul fast float %2300, 0x3F70101020000000
  %2302 = and i32 %2298, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = lshr i32 %2298, 8
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = lshr i32 %2298, 16
  %2310 = and i32 %2309, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2311, 0x3F70101020000000
  %2313 = add i32 %42, 252
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = lshr i32 %2315, 24
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = and i32 %2315, 255
  %2320 = uitofp i32 %2319 to float
  %2321 = fmul fast float %2320, 0x3F70101020000000
  %2322 = lshr i32 %2315, 8
  %2323 = and i32 %2322, 255
  %2324 = uitofp i32 %2323 to float
  %2325 = fmul fast float %2324, 0x3F70101020000000
  %2326 = lshr i32 %2315, 16
  %2327 = and i32 %2326, 255
  %2328 = uitofp i32 %2327 to float
  %2329 = fmul fast float %2328, 0x3F70101020000000
  %2330 = bitcast float %2254 to i32
  %2331 = ashr i32 %2330, 1
  %2332 = sub nsw i32 1597463174, %2331
  %2333 = bitcast i32 %2332 to float
  %2334 = fmul fast float %2254, 5.000000e-01
  %2335 = fmul fast float %2333, %2333
  %2336 = fmul fast float %2335, %2334
  %2337 = fsub fast float 1.500000e+00, %2336
  %2338 = fmul fast float %2333, %2254
  %2339 = fmul fast float %2338, %2337
  %2340 = bitcast float %2255 to i32
  %2341 = ashr i32 %2340, 1
  %2342 = sub nsw i32 1597463174, %2341
  %2343 = bitcast i32 %2342 to float
  %2344 = fmul fast float %2255, 5.000000e-01
  %2345 = fmul fast float %2343, %2343
  %2346 = fmul fast float %2345, %2344
  %2347 = fsub fast float 1.500000e+00, %2346
  %2348 = fmul fast float %2343, %2255
  %2349 = fmul fast float %2348, %2347
  %2350 = bitcast float %2256 to i32
  %2351 = ashr i32 %2350, 1
  %2352 = sub nsw i32 1597463174, %2351
  %2353 = bitcast i32 %2352 to float
  %2354 = fmul fast float %2256, 5.000000e-01
  %2355 = fmul fast float %2353, %2353
  %2356 = fmul fast float %2355, %2354
  %2357 = fsub fast float 1.500000e+00, %2356
  %2358 = fmul fast float %2353, %2256
  %2359 = fmul fast float %2358, %2357
  %2360 = fsub fast float %2339, %2321
  %2361 = fsub fast float %2349, %2325
  %2362 = fsub fast float %2359, %2329
  %2363 = fmul fast float %2360, %2289
  %2364 = fmul fast float %2361, %2291
  %2365 = fmul fast float %2362, %2296
  %2366 = fadd fast float %2363, %2304
  %2367 = fadd fast float %2364, %2308
  %2368 = fadd fast float %2365, %2312
  %2369 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2370 = call float @dx.op.unary.f32(i32 7, float %2367)  ; Saturate(value)
  %2371 = call float @dx.op.unary.f32(i32 7, float %2368)  ; Saturate(value)
  %2372 = fmul fast float %2369, %2369
  %2373 = fmul fast float %2370, %2370
  %2374 = fmul fast float %2371, %2371
  %2375 = fsub fast float %2372, %2254
  %2376 = fsub fast float %2373, %2255
  %2377 = fsub fast float %2374, %2256
  %2378 = fmul fast float %2375, %2279
  %2379 = fmul fast float %2376, %2279
  %2380 = fmul fast float %2377, %2279
  %2381 = fadd fast float %2378, %2254
  %2382 = fadd fast float %2379, %2255
  %2383 = fadd fast float %2380, %2256
  %2384 = fadd fast float %2301, %2265
  %2385 = fsub fast float %2384, %2318
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2387 = fsub fast float %2386, %2265
  %2388 = fmul fast float %2387, %2279
  %2389 = fadd fast float %2388, %2265
  br label %2443

; <label>:2390                                    ; preds = %2278
  %2391 = and i32 %2281, 134217728
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2427, label %2393

; <label>:2393                                    ; preds = %2390
  %2394 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %2395 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2396 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2397 = fadd fast float %2394, -5.000000e-01
  %2398 = fadd fast float %2395, -5.000000e-01
  %2399 = fadd fast float %2396, -5.000000e-01
  %2400 = fmul fast float %2397, %2279
  %2401 = fmul fast float %2398, %2279
  %2402 = fmul fast float %2399, %2279
  %2403 = fadd fast float %2400, 5.000000e-01
  %2404 = fadd fast float %2401, 5.000000e-01
  %2405 = fadd fast float %2402, 5.000000e-01
  %2406 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2407 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2408 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2409 = fmul fast float %2403, 2.000000e+00
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fmul fast float %2410, %2406
  %2412 = fadd fast float %2411, %2409
  %2413 = fmul fast float %2412, %2406
  %2414 = fmul fast float %2404, 2.000000e+00
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = fmul fast float %2415, %2407
  %2417 = fadd fast float %2416, %2414
  %2418 = fmul fast float %2417, %2407
  %2419 = fmul fast float %2405, 2.000000e+00
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2420, %2408
  %2422 = fadd fast float %2421, %2419
  %2423 = fmul fast float %2422, %2408
  %2424 = fmul fast float %2413, %2413
  %2425 = fmul fast float %2418, %2418
  %2426 = fmul fast float %2423, %2423
  br label %2443

; <label>:2427                                    ; preds = %2390
  %2428 = fmul fast float %332, %332
  %2429 = fmul fast float %336, %336
  %2430 = fmul fast float %340, %340
  %2431 = fadd fast float %2428, -1.000000e+00
  %2432 = fadd fast float %2429, -1.000000e+00
  %2433 = fadd fast float %2430, -1.000000e+00
  %2434 = fmul fast float %2279, %2431
  %2435 = fmul fast float %2279, %2432
  %2436 = fmul fast float %2279, %2433
  %2437 = fadd fast float %2434, 1.000000e+00
  %2438 = fadd fast float %2435, 1.000000e+00
  %2439 = fadd fast float %2436, 1.000000e+00
  %2440 = fmul fast float %2437, %2254
  %2441 = fmul fast float %2438, %2255
  %2442 = fmul fast float %2439, %2256
  br label %2443

; <label>:2443                                    ; preds = %2427, %2393, %2284, %2240
  %2444 = phi float [ %2389, %2284 ], [ %2265, %2393 ], [ %2265, %2427 ], [ 0x3FA23C0BE0000000, %2240 ]
  %2445 = phi float [ %2381, %2284 ], [ %2424, %2393 ], [ %2440, %2427 ], [ 1.000000e+00, %2240 ]
  %2446 = phi float [ %2382, %2284 ], [ %2425, %2393 ], [ %2441, %2427 ], [ 1.000000e+00, %2240 ]
  %2447 = phi float [ %2383, %2284 ], [ %2426, %2393 ], [ %2442, %2427 ], [ 1.000000e+00, %2240 ]
  %2448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.i32 %2448, 1
  %2450 = and i32 %2449, 1
  %2451 = icmp ne i32 %2450, 0
  %2452 = add i32 %42, 356
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 32
  %2456 = icmp ne i32 %2455, 0
  %2457 = and i1 %2451, %2456
  %2458 = select i1 %2457, float 1.000000e+00, float %2445
  %2459 = select i1 %2457, float 0x3FD3333340000000, float %2446
  %2460 = select i1 %2457, float 0x3FD3333340000000, float %2447
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 32
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2537, label %2465

; <label>:2465                                    ; preds = %2443
  %2466 = add i32 %42, 124
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = add i32 %42, 432
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = add i32 %2471, 0
  %2473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2473, %dx.types.Handle %77, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.ResRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.ResRet.f32 %2474, 2
  %2478 = extractvalue %dx.types.ResRet.f32 %2474, 3
  %2479 = and i32 %2468, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = lshr i32 %2468, 8
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = lshr i32 %2468, 16
  %2485 = and i32 %2484, 255
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2486, 0x3F70101000000000
  %2488 = fmul fast float %2475, %2480
  %2489 = fadd fast float %2488, %2483
  %2490 = fmul fast float %2489, 0x3F70101000000000
  %2491 = fadd fast float %2476, -5.000000e-01
  %2492 = fadd fast float %2478, -5.000000e-01
  %2493 = fmul fast float %2491, %2487
  %2494 = fmul fast float %2492, %2487
  %2495 = fadd fast float %2493, 5.000000e-01
  %2496 = fadd fast float %2494, 5.000000e-01
  %2497 = fmul fast float %2495, 2.000000e+00
  %2498 = fadd fast float %2497, -1.000000e+00
  %2499 = fmul fast float %2496, 2.000000e+00
  %2500 = fadd fast float %2499, -1.000000e+00
  %2501 = fadd fast float %2498, %2500
  %2502 = fmul fast float %2501, 5.000000e-01
  %2503 = fsub fast float %2498, %2500
  %2504 = fmul fast float %2503, 5.000000e-01
  %2505 = call float @dx.op.unary.f32(i32 6, float %2502)  ; FAbs(value)
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = call float @dx.op.unary.f32(i32 6, float %2504)  ; FAbs(value)
  %2508 = fsub fast float %2506, %2507
  %2509 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2504, float %2508, float %2502, float %2504, float %2508)  ; Dot3(ax,ay,az,bx,by,bz)
  %2510 = call float @dx.op.unary.f32(i32 25, float %2509)  ; Rsqrt(value)
  %2511 = fmul fast float %2502, %2510
  %2512 = fmul fast float %2504, %2510
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 67108864
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2533, label %2517

; <label>:2517                                    ; preds = %2465
  %2518 = add i32 %42, 312
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 65535
  %2522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2521)  ; LegacyF16ToF32(value)
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 65535
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = lshr i32 %2520, 16
  %2528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2527)  ; LegacyF16ToF32(value)
  %2529 = fsub fast float %2490, %2528
  %2530 = fmul fast float %2529, %2522
  %2531 = fadd fast float %2530, %2526
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  br label %2533

; <label>:2533                                    ; preds = %2517, %2465
  %2534 = phi float [ %2532, %2517 ], [ %2490, %2465 ]
  %2535 = call float @dx.op.dot2.f32(i32 54, float %2511, float %2512, float %1954, float %1955)  ; Dot2(ax,ay,bx,by)
  %2536 = call float @dx.op.dot2.f32(i32 54, float %2511, float %2512, float %1956, float %1957)  ; Dot2(ax,ay,bx,by)
  br label %2537

; <label>:2537                                    ; preds = %2533, %2443
  %2538 = phi float [ %2534, %2533 ], [ 0x3FD6666660000000, %2443 ]
  %2539 = phi float [ %2535, %2533 ], [ 0.000000e+00, %2443 ]
  %2540 = phi float [ %2536, %2533 ], [ 0.000000e+00, %2443 ]
  %2541 = phi float [ %2477, %2533 ], [ 1.000000e+00, %2443 ]
  %2542 = add i32 %42, 192
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = lshr i32 %2544, 22
  %2546 = shl nuw nsw i32 %2545, 5
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 64
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2585, label %2552

; <label>:2552                                    ; preds = %2537
  %2553 = add i32 %42, 448
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = add i32 %2555, 0
  %2557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 131072
  %2561 = icmp eq i32 %2560, 0
  %2562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2557, %dx.types.Handle %77, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.ResRet.f32 %2562, 2
  %2566 = fmul fast float %2563, %320
  %2567 = fmul fast float %2564, %323
  %2568 = fmul fast float %2565, %326
  br i1 %2561, label %2575, label %2569

; <label>:2569                                    ; preds = %2552
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = fmul fast float %2571, %2566
  %2573 = fmul fast float %2571, %2567
  %2574 = fmul fast float %2571, %2568
  br label %2575

; <label>:2575                                    ; preds = %2569, %2552
  %2576 = phi float [ %2572, %2569 ], [ %2566, %2552 ]
  %2577 = phi float [ %2573, %2569 ], [ %2567, %2552 ]
  %2578 = phi float [ %2574, %2569 ], [ %2568, %2552 ]
  %2579 = fmul fast float %2576, %2547
  %2580 = select i1 %216, float %2579, float %2576
  %2581 = call float @dx.op.dot3.f32(i32 55, float %2580, float %2577, float %2578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2582 = select i1 %216, float 0.000000e+00, float %2576
  %2583 = select i1 %216, float %2581, float %2577
  %2584 = select i1 %216, float 0.000000e+00, float %2578
  br label %2585

; <label>:2585                                    ; preds = %2575, %2537
  %2586 = phi float [ %2582, %2575 ], [ 0.000000e+00, %2537 ]
  %2587 = phi float [ %2583, %2575 ], [ 0.000000e+00, %2537 ]
  %2588 = phi float [ %2584, %2575 ], [ 0.000000e+00, %2537 ]
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 10240
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2637, label %2593

; <label>:2593                                    ; preds = %2585
  %2594 = add i32 %42, 512
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = add i32 %2596, 0
  %2598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2598, %dx.types.Handle %78, float %2050, float %2051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2600 = extractvalue %dx.types.ResRet.f32 %2599, 1
  %2601 = extractvalue %dx.types.ResRet.f32 %2599, 3
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 1048576
  %2605 = icmp ne i32 %2604, 0
  %2606 = and i32 %2603, 8192
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2623, label %2608

; <label>:2608                                    ; preds = %2593
  %2609 = extractvalue %dx.types.ResRet.f32 %2599, 2
  %2610 = select i1 %2605, float %2609, float %2600
  %2611 = extractvalue %dx.types.ResRet.f32 %2599, 0
  %2612 = select i1 %2605, float %2611, float %2600
  %2613 = add i32 %42, 128
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 16
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = fmul fast float %2618, 0x3F80101020000000
  %2620 = fmul fast float %2619, %2612
  %2621 = fmul fast float %2619, %2600
  %2622 = fmul fast float %2619, %2610
  br label %2623

; <label>:2623                                    ; preds = %2608, %2593
  %2624 = phi float [ %2620, %2608 ], [ 0.000000e+00, %2593 ]
  %2625 = phi float [ %2621, %2608 ], [ 0.000000e+00, %2593 ]
  %2626 = phi float [ %2622, %2608 ], [ 0.000000e+00, %2593 ]
  %2627 = and i32 %2603, 2048
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2637, label %2629

; <label>:2629                                    ; preds = %2623
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = shl i32 %2631, 4
  %2633 = and i32 %2632, 32752
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = fmul fast float %2634, %2601
  %2636 = call float @dx.op.binary.f32(i32 35, float %2635, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2637

; <label>:2637                                    ; preds = %2629, %2623, %2585
  %2638 = phi float [ %2624, %2629 ], [ %2624, %2623 ], [ 0.000000e+00, %2585 ]
  %2639 = phi float [ %2625, %2629 ], [ %2625, %2623 ], [ 0.000000e+00, %2585 ]
  %2640 = phi float [ %2626, %2629 ], [ %2626, %2623 ], [ 0.000000e+00, %2585 ]
  %2641 = phi float [ %2636, %2629 ], [ 0x3F70101020000000, %2623 ], [ 0x3F70101020000000, %2585 ]
  %2642 = add i32 %42, 128
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = lshr i32 %2644, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2458, float %2459, float %2460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = fmul fast float %2649, %2650
  %2652 = fadd fast float %2651, %2646
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  br i1 %1942, label %2655, label %2663

; <label>:2655                                    ; preds = %2637
  %2656 = fsub fast float 1.000000e+00, %2238
  %2657 = fmul fast float %2656, %1930
  %2658 = fmul fast float %2656, %1931
  %2659 = fmul fast float %2656, %1932
  %2660 = fmul fast float %2656, %1927
  %2661 = fmul fast float %2656, %1928
  %2662 = fmul fast float %2656, %1929
  br label %2663

; <label>:2663                                    ; preds = %2655, %2637
  %2664 = phi float [ %2660, %2655 ], [ %1927, %2637 ]
  %2665 = phi float [ %2661, %2655 ], [ %1928, %2637 ]
  %2666 = phi float [ %2662, %2655 ], [ %1929, %2637 ]
  %2667 = phi float [ %2657, %2655 ], [ %1930, %2637 ]
  %2668 = phi float [ %2658, %2655 ], [ %1931, %2637 ]
  %2669 = phi float [ %2659, %2655 ], [ %1932, %2637 ]
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = and i32 %2671, 3
  %2673 = icmp eq i32 %2672, 3
  br i1 %2673, label %2752, label %2674

; <label>:2674                                    ; preds = %2663
  %2675 = and i32 %2671, 16
  %2676 = icmp ne i32 %2675, 0
  %2677 = select i1 %2676, float %2238, float 0.000000e+00
  %2678 = icmp eq i32 %2672, 0
  br i1 %2678, label %2679, label %2707

; <label>:2679                                    ; preds = %2674
  %2680 = and i32 %2671, 64
  %2681 = icmp ne i32 %2680, 0
  %2682 = select i1 %2681, float %2238, float 0.000000e+00
  %2683 = fsub fast float %2458, %2667
  %2684 = fsub fast float %2459, %2668
  %2685 = fsub fast float %2460, %2669
  %2686 = fmul fast float %2677, %2683
  %2687 = fmul fast float %2677, %2684
  %2688 = fmul fast float %2677, %2685
  %2689 = fadd fast float %2686, %2667
  %2690 = fadd fast float %2687, %2668
  %2691 = fadd fast float %2688, %2669
  %2692 = fsub fast float %2444, %1936
  %2693 = fmul fast float %2677, %2692
  %2694 = fadd fast float %2693, %1936
  %2695 = fsub fast float %2586, %2664
  %2696 = fsub fast float %2587, %2665
  %2697 = fsub fast float %2588, %2666
  %2698 = fmul fast float %2682, %2695
  %2699 = fmul fast float %2682, %2696
  %2700 = fmul fast float %2682, %2697
  %2701 = fadd fast float %2698, %2664
  %2702 = fadd fast float %2699, %2665
  %2703 = fadd fast float %2700, %2666
  %2704 = fsub fast float %2654, %1940
  %2705 = fmul fast float %2677, %2704
  %2706 = fadd fast float %2705, %1940
  br label %2752

; <label>:2707                                    ; preds = %2674
  %2708 = icmp eq i32 %2672, 1
  br i1 %2708, label %2709, label %2722

; <label>:2709                                    ; preds = %2707
  %2710 = fadd fast float %2458, -1.000000e+00
  %2711 = fadd fast float %2459, -1.000000e+00
  %2712 = fadd fast float %2460, -1.000000e+00
  %2713 = fmul fast float %2677, %2710
  %2714 = fmul fast float %2677, %2711
  %2715 = fmul fast float %2677, %2712
  %2716 = fadd fast float %2713, 1.000000e+00
  %2717 = fadd fast float %2714, 1.000000e+00
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fmul fast float %2716, %2667
  %2720 = fmul fast float %2717, %2668
  %2721 = fmul fast float %2718, %2669
  br label %2752

; <label>:2722                                    ; preds = %2707
  %2723 = icmp eq i32 %2672, 2
  br i1 %2723, label %2724, label %2752

; <label>:2724                                    ; preds = %2722
  %2725 = call float @dx.op.unary.f32(i32 24, float %2458)  ; Sqrt(value)
  %2726 = call float @dx.op.unary.f32(i32 24, float %2459)  ; Sqrt(value)
  %2727 = call float @dx.op.unary.f32(i32 24, float %2460)  ; Sqrt(value)
  %2728 = fadd fast float %2725, -5.000000e-01
  %2729 = fadd fast float %2726, -5.000000e-01
  %2730 = fadd fast float %2727, -5.000000e-01
  %2731 = fmul fast float %2728, %2677
  %2732 = fmul fast float %2729, %2677
  %2733 = fmul fast float %2730, %2677
  %2734 = fadd fast float %2731, 5.000000e-01
  %2735 = fadd fast float %2732, 5.000000e-01
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = fmul fast float %2734, 2.000000e+00
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2738, %2667
  %2740 = fadd fast float %2739, %2737
  %2741 = fmul fast float %2740, %2667
  %2742 = fmul fast float %2735, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2668
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2668
  %2747 = fmul fast float %2736, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2669
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2669
  br label %2752

; <label>:2752                                    ; preds = %2724, %2722, %2709, %2679, %2663
  %2753 = phi float [ %2664, %2663 ], [ %2664, %2724 ], [ %2664, %2722 ], [ %2664, %2709 ], [ %2701, %2679 ]
  %2754 = phi float [ %2665, %2663 ], [ %2665, %2724 ], [ %2665, %2722 ], [ %2665, %2709 ], [ %2702, %2679 ]
  %2755 = phi float [ %2666, %2663 ], [ %2666, %2724 ], [ %2666, %2722 ], [ %2666, %2709 ], [ %2703, %2679 ]
  %2756 = phi float [ %2667, %2663 ], [ %2741, %2724 ], [ %2667, %2722 ], [ %2719, %2709 ], [ %2689, %2679 ]
  %2757 = phi float [ %2668, %2663 ], [ %2746, %2724 ], [ %2668, %2722 ], [ %2720, %2709 ], [ %2690, %2679 ]
  %2758 = phi float [ %2669, %2663 ], [ %2751, %2724 ], [ %2669, %2722 ], [ %2721, %2709 ], [ %2691, %2679 ]
  %2759 = phi float [ %1936, %2663 ], [ %1936, %2724 ], [ %1936, %2722 ], [ %1936, %2709 ], [ %2694, %2679 ]
  %2760 = phi float [ %1940, %2663 ], [ %1940, %2724 ], [ %1940, %2722 ], [ %1940, %2709 ], [ %2706, %2679 ]
  %2761 = and i32 %2671, 12
  %2762 = icmp eq i32 %2761, 12
  br i1 %2762, label %2869, label %2763

; <label>:2763                                    ; preds = %2752
  %2764 = and i32 %2671, 2097184
  %2765 = icmp eq i32 %2764, 2097184
  %2766 = select i1 %2765, float %2238, float 0.000000e+00
  %2767 = and i32 %2671, 4194336
  %2768 = icmp eq i32 %2767, 4194336
  %2769 = select i1 %2768, float %2238, float 0.000000e+00
  %2770 = and i32 %2671, 8388640
  %2771 = icmp eq i32 %2770, 8388640
  %2772 = select i1 %2771, float %2238, float 0.000000e+00
  %2773 = and i32 %2671, 2048
  %2774 = icmp ne i32 %2773, 0
  %2775 = select i1 %2774, float %2238, float 0.000000e+00
  %2776 = and i32 %2671, 8192
  %2777 = icmp ne i32 %2776, 0
  %2778 = select i1 %2777, float %2238, float 0.000000e+00
  %2779 = icmp eq i32 %2761, 0
  br i1 %2779, label %2780, label %2805

; <label>:2780                                    ; preds = %2763
  %2781 = fsub fast float %2539, %1925
  %2782 = fsub fast float %2540, %1926
  %2783 = fmul fast float %2766, %2781
  %2784 = fmul fast float %2766, %2782
  %2785 = fadd fast float %2783, %1925
  %2786 = fadd fast float %2784, %1926
  %2787 = fsub fast float %2541, %1938
  %2788 = fmul fast float %2769, %2787
  %2789 = fadd fast float %2788, %1938
  %2790 = fsub fast float %2538, %1937
  %2791 = fmul fast float %2772, %2790
  %2792 = fadd fast float %2791, %1937
  %2793 = fsub fast float %2641, %1939
  %2794 = fmul fast float %2775, %2793
  %2795 = fadd fast float %2794, %1939
  %2796 = fsub fast float %2638, %1933
  %2797 = fsub fast float %2639, %1934
  %2798 = fsub fast float %2640, %1935
  %2799 = fmul fast float %2778, %2796
  %2800 = fmul fast float %2778, %2797
  %2801 = fmul fast float %2778, %2798
  %2802 = fadd fast float %2799, %1933
  %2803 = fadd fast float %2800, %1934
  %2804 = fadd fast float %2801, %1935
  br label %2869

; <label>:2805                                    ; preds = %2763
  %2806 = icmp eq i32 %2761, 4
  br i1 %2806, label %2807, label %2847

; <label>:2807                                    ; preds = %2805
  %2808 = fmul fast float %2766, %2539
  %2809 = fmul fast float %2766, %2540
  %2810 = fadd fast float %2808, %1925
  %2811 = fadd fast float %2809, %1926
  %2812 = call float @dx.op.binary.f32(i32 36, float %1938, float %2541)  ; FMin(a,b)
  %2813 = fsub fast float %2812, %1938
  %2814 = fmul fast float %2813, %2769
  %2815 = fadd fast float %2814, %1938
  %2816 = fadd fast float %2538, %1937
  %2817 = fmul fast float %2816, 0x3FF337FAE0000000
  %2818 = fmul fast float %1937, %1937
  %2819 = fmul fast float %2538, %2538
  %2820 = fadd fast float %2819, %2818
  %2821 = fmul fast float %2820, 0x3FE5152B00000000
  %2822 = fmul fast float %1937, 0xBFCC1F85E0000000
  %2823 = fmul fast float %2822, %2538
  %2824 = fadd fast float %2823, 0xBFE1363700000000
  %2825 = fadd fast float %2824, %2817
  %2826 = fsub fast float %2825, %2821
  %2827 = fmul fast float %2816, 0x3FBA6F0D00000000
  %2828 = fmul fast float %2820, 0x3FD0432880000000
  %2829 = fmul fast float %1937, 0xBFEF110800000000
  %2830 = fmul fast float %2829, %2538
  %2831 = fadd fast float %2830, 1.000000e+00
  %2832 = fsub fast float %2831, %2827
  %2833 = fadd fast float %2832, %2828
  %2834 = fdiv fast float %2826, %2833
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = fsub fast float %2835, %1937
  %2837 = fmul fast float %2836, %2772
  %2838 = fadd fast float %2837, %1937
  %2839 = fmul fast float %2775, %2641
  %2840 = fadd fast float %2839, %1939
  %2841 = fmul fast float %2778, %2638
  %2842 = fmul fast float %2778, %2639
  %2843 = fmul fast float %2778, %2640
  %2844 = fadd fast float %2841, %1933
  %2845 = fadd fast float %2842, %1934
  %2846 = fadd fast float %2843, %1935
  br label %2869

; <label>:2847                                    ; preds = %2805
  %2848 = icmp eq i32 %2761, 8
  br i1 %2848, label %2849, label %2869

; <label>:2849                                    ; preds = %2847
  %2850 = fmul fast float %2766, %2539
  %2851 = fmul fast float %2766, %2540
  %2852 = fadd fast float %2850, %1925
  %2853 = fadd fast float %2851, %1926
  %2854 = call float @dx.op.binary.f32(i32 36, float %1938, float %2541)  ; FMin(a,b)
  %2855 = fsub fast float %2854, %1938
  %2856 = fmul fast float %2855, %2769
  %2857 = fadd fast float %2856, %1938
  %2858 = fsub fast float %2538, %1937
  %2859 = fmul fast float %2772, %2858
  %2860 = fadd fast float %2859, %1937
  %2861 = fmul fast float %2775, %2641
  %2862 = fadd fast float %2861, %1939
  %2863 = fmul fast float %2778, %2638
  %2864 = fmul fast float %2778, %2639
  %2865 = fmul fast float %2778, %2640
  %2866 = fadd fast float %2863, %1933
  %2867 = fadd fast float %2864, %1934
  %2868 = fadd fast float %2865, %1935
  br label %2869

; <label>:2869                                    ; preds = %2849, %2847, %2807, %2780, %2752, %2237, %1941, %1924
  %2870 = phi float [ %1925, %2752 ], [ %1925, %2237 ], [ %1925, %1924 ], [ %2852, %2849 ], [ %1925, %2847 ], [ %2810, %2807 ], [ %2785, %2780 ], [ %1925, %1941 ]
  %2871 = phi float [ %1926, %2752 ], [ %1926, %2237 ], [ %1926, %1924 ], [ %2853, %2849 ], [ %1926, %2847 ], [ %2811, %2807 ], [ %2786, %2780 ], [ %1926, %1941 ]
  %2872 = phi float [ %2753, %2752 ], [ %1927, %2237 ], [ %1927, %1924 ], [ %2753, %2849 ], [ %2753, %2847 ], [ %2753, %2807 ], [ %2753, %2780 ], [ %1927, %1941 ]
  %2873 = phi float [ %2754, %2752 ], [ %1928, %2237 ], [ %1928, %1924 ], [ %2754, %2849 ], [ %2754, %2847 ], [ %2754, %2807 ], [ %2754, %2780 ], [ %1928, %1941 ]
  %2874 = phi float [ %2755, %2752 ], [ %1929, %2237 ], [ %1929, %1924 ], [ %2755, %2849 ], [ %2755, %2847 ], [ %2755, %2807 ], [ %2755, %2780 ], [ %1929, %1941 ]
  %2875 = phi float [ %2756, %2752 ], [ %1930, %2237 ], [ %1930, %1924 ], [ %2756, %2849 ], [ %2756, %2847 ], [ %2756, %2807 ], [ %2756, %2780 ], [ %1930, %1941 ]
  %2876 = phi float [ %2757, %2752 ], [ %1931, %2237 ], [ %1931, %1924 ], [ %2757, %2849 ], [ %2757, %2847 ], [ %2757, %2807 ], [ %2757, %2780 ], [ %1931, %1941 ]
  %2877 = phi float [ %2758, %2752 ], [ %1932, %2237 ], [ %1932, %1924 ], [ %2758, %2849 ], [ %2758, %2847 ], [ %2758, %2807 ], [ %2758, %2780 ], [ %1932, %1941 ]
  %2878 = phi float [ %1933, %2752 ], [ %1933, %2237 ], [ %1933, %1924 ], [ %2866, %2849 ], [ %1933, %2847 ], [ %2844, %2807 ], [ %2802, %2780 ], [ %1933, %1941 ]
  %2879 = phi float [ %1934, %2752 ], [ %1934, %2237 ], [ %1934, %1924 ], [ %2867, %2849 ], [ %1934, %2847 ], [ %2845, %2807 ], [ %2803, %2780 ], [ %1934, %1941 ]
  %2880 = phi float [ %1935, %2752 ], [ %1935, %2237 ], [ %1935, %1924 ], [ %2868, %2849 ], [ %1935, %2847 ], [ %2846, %2807 ], [ %2804, %2780 ], [ %1935, %1941 ]
  %2881 = phi float [ %2759, %2752 ], [ %1936, %2237 ], [ %1936, %1924 ], [ %2759, %2849 ], [ %2759, %2847 ], [ %2759, %2807 ], [ %2759, %2780 ], [ %1936, %1941 ]
  %2882 = phi float [ %1937, %2752 ], [ %1937, %2237 ], [ %1937, %1924 ], [ %2860, %2849 ], [ %1937, %2847 ], [ %2838, %2807 ], [ %2792, %2780 ], [ %1937, %1941 ]
  %2883 = phi float [ %1938, %2752 ], [ %1938, %2237 ], [ %1938, %1924 ], [ %2857, %2849 ], [ %1938, %2847 ], [ %2815, %2807 ], [ %2789, %2780 ], [ %1938, %1941 ]
  %2884 = phi float [ %1939, %2752 ], [ %1939, %2237 ], [ %1939, %1924 ], [ %2862, %2849 ], [ %1939, %2847 ], [ %2840, %2807 ], [ %2795, %2780 ], [ %1939, %1941 ]
  %2885 = phi float [ %2760, %2752 ], [ %1940, %2237 ], [ %1940, %1924 ], [ %2760, %2849 ], [ %2760, %2847 ], [ %2760, %2807 ], [ %2760, %2780 ], [ %1940, %1941 ]
  br i1 %407, label %3814, label %2886

; <label>:2886                                    ; preds = %2869
  %2887 = icmp ult i32 %458, 4
  %2888 = add i32 %42, 72
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = add i32 %42, 76
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = or i32 %2893, %2890
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %3814, label %2896

; <label>:2896                                    ; preds = %2886
  %2897 = and i32 %2890, 262144
  %2898 = icmp ne i32 %2897, 0
  %2899 = select i1 %2898, float %44, float 1.000000e+00
  %2900 = select i1 %2898, float %45, float 0.000000e+00
  %2901 = select i1 %2898, float %46, float 0.000000e+00
  %2902 = select i1 %2898, float %47, float 1.000000e+00
  %2903 = select i1 %2898, float %48, float %69
  %2904 = select i1 %2898, float %49, float %70
  %2905 = add i32 %42, 332
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = lshr i32 %2907, 16
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = fmul fast float %2909, 0x3F50624DE0000000
  %2911 = add i32 %42, 136
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 16
  %2915 = and i32 %2914, 255
  %2916 = lshr i32 %2913, 24
  %2917 = add i32 %42, 340
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 65535
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = lshr i32 %2919, 16
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = add i32 %42, 80
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = lshr i32 %2926, 22
  %2928 = shl nuw nsw i32 %2927, 5
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = shl i32 %2926, 4
  %2931 = and i32 %2930, 32752
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = lshr i32 %2926, 7
  %2934 = and i32 %2933, 32752
  %2935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2934)  ; LegacyF16ToF32(value)
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2938 = fmul fast float %2937, 1.000000e+03
  %2939 = fmul fast float %397, %2938
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = fadd fast float %2940, %387
  %2942 = fmul fast float %398, %2938
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = fadd fast float %2943, %389
  %2945 = fmul fast float %2910, %2938
  %2946 = call float @dx.op.unary.f32(i32 22, float %2945)  ; Frc(value)
  %2947 = fmul fast float %2946, 0x401921FB60000000
  %2948 = fadd fast float %2947, %2929
  %2949 = call float @dx.op.unary.f32(i32 13, float %2948)  ; Sin(value)
  %2950 = call float @dx.op.unary.f32(i32 12, float %2948)  ; Cos(value)
  %2951 = fsub fast float -0.000000e+00, %2949
  %2952 = fadd fast float %2903, -5.000000e-01
  %2953 = fadd fast float %2904, -5.000000e-01
  %2954 = fmul fast float %2921, %2952
  %2955 = fmul fast float %2923, %2953
  %2956 = fadd fast float %2954, 5.000000e-01
  %2957 = fadd fast float %2955, 5.000000e-01
  %2958 = fmul fast float %2932, %2956
  %2959 = fmul fast float %2935, %2957
  %2960 = fmul fast float %2950, %2958
  %2961 = call float @dx.op.tertiary.f32(i32 46, float %2951, float %2959, float %2960)  ; FMad(a,b,c)
  %2962 = fmul fast float %2949, %2958
  %2963 = call float @dx.op.tertiary.f32(i32 46, float %2950, float %2959, float %2962)  ; FMad(a,b,c)
  %2964 = fadd fast float %2941, %2961
  %2965 = fadd fast float %2944, %2963
  %2966 = icmp ugt i32 %2915, 1
  %2967 = icmp ugt i32 %2913, 33554431
  %2968 = or i1 %2967, %2966
  br i1 %2968, label %2969, label %2994

; <label>:2969                                    ; preds = %2896
  %2970 = add i32 %42, 276
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = lshr i32 %2972, 16
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = fmul fast float %2937, %2974
  %2976 = call float @dx.op.unary.f32(i32 22, float %2975)  ; Frc(value)
  %2977 = mul nuw nsw i32 %2915, %2916
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2976, %2978
  %2980 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2981 = fptoui float %2980 to i32
  %2982 = urem i32 %2981, %2915
  %2983 = udiv i32 %2981, %2916
  %2984 = call float @dx.op.unary.f32(i32 22, float %2964)  ; Frc(value)
  %2985 = call float @dx.op.unary.f32(i32 22, float %2965)  ; Frc(value)
  %2986 = uitofp i32 %2982 to float
  %2987 = uitofp i32 %2983 to float
  %2988 = fadd fast float %2984, %2986
  %2989 = fadd fast float %2985, %2987
  %2990 = uitofp i32 %2915 to float
  %2991 = uitofp i32 %2916 to float
  %2992 = fdiv fast float %2988, %2990
  %2993 = fdiv fast float %2989, %2991
  br label %2994

; <label>:2994                                    ; preds = %2969, %2896
  %2995 = phi float [ %2992, %2969 ], [ %2964, %2896 ]
  %2996 = phi float [ %2993, %2969 ], [ %2965, %2896 ]
  %2997 = and i32 %2890, 16777216
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3108, label %2999

; <label>:2999                                    ; preds = %2994
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.CBufRet.f32 %3000, 2
  %3004 = fadd fast float %3001, %140
  %3005 = fadd fast float %3002, %141
  %3006 = fadd fast float %3003, %142
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = icmp eq i32 %43, 65535
  br i1 %3010, label %3105, label %3011

; <label>:3011                                    ; preds = %2999
  %3012 = lshr i32 %43, 1
  %3013 = shl i32 %3012, 2
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = and i32 %43, 1
  %3017 = icmp ne i32 %3016, 0
  %3018 = lshr i32 %3015, 16
  %3019 = and i32 %3015, 65535
  %3020 = select i1 %3017, i32 %3018, i32 %3019
  %3021 = icmp eq i32 %3020, 65535
  br i1 %3021, label %3101, label %3022

; <label>:3022                                    ; preds = %3011
  %3023 = mul nuw nsw i32 %3020, 40
  %3024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.ResRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3024, 2
  %3028 = add nuw nsw i32 %3023, 12
  %3029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = add nuw nsw i32 %3023, 24
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = extractvalue %dx.types.ResRet.f32 %3034, 2
  %3038 = add nuw nsw i32 %3023, 36
  %3039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = fsub fast float %3004, %3025
  %3042 = fsub fast float %3005, %3026
  %3043 = fsub fast float %3006, %3027
  %3044 = fmul fast float %3040, %3041
  %3045 = fmul fast float %3040, %3042
  %3046 = fmul fast float %3040, %3043
  %3047 = call float @dx.op.unary.f32(i32 27, float %3044)  ; Round_ni(value)
  %3048 = call float @dx.op.unary.f32(i32 27, float %3045)  ; Round_ni(value)
  %3049 = call float @dx.op.unary.f32(i32 27, float %3046)  ; Round_ni(value)
  %3050 = fadd fast float %3047, 5.000000e-01
  %3051 = fadd fast float %3048, 5.000000e-01
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fmul fast float %3050, %3030
  %3054 = fmul fast float %3051, %3031
  %3055 = fmul fast float %3052, %3032
  %3056 = shl i32 %43, 2
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call float @dx.op.unary.f32(i32 22, float %3053)  ; Frc(value)
  %3062 = call float @dx.op.unary.f32(i32 22, float %3054)  ; Frc(value)
  %3063 = call float @dx.op.unary.f32(i32 22, float %3055)  ; Frc(value)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3060, %dx.types.Handle %37, float %3061, float %3062, float %3063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3068 = fmul fast float %3065, 1.023000e+03
  %3069 = fmul fast float %3066, 1.023000e+03
  %3070 = fmul fast float %3067, 1.023000e+03
  %3071 = fadd fast float %3068, 5.000000e-01
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = fadd fast float %3070, 5.000000e-01
  %3074 = call float @dx.op.unary.f32(i32 27, float %3071)  ; Round_ni(value)
  %3075 = call float @dx.op.unary.f32(i32 27, float %3072)  ; Round_ni(value)
  %3076 = call float @dx.op.unary.f32(i32 27, float %3073)  ; Round_ni(value)
  %3077 = fsub fast float %3044, %3047
  %3078 = fsub fast float %3045, %3048
  %3079 = fsub fast float %3046, %3049
  %3080 = fmul fast float %3077, 7.500000e-01
  %3081 = fmul fast float %3078, 7.500000e-01
  %3082 = fmul fast float %3079, 7.500000e-01
  %3083 = fadd fast float %3047, 1.250000e-01
  %3084 = fadd fast float %3083, %3080
  %3085 = fadd fast float %3084, %3074
  %3086 = fadd fast float %3048, 1.250000e-01
  %3087 = fadd fast float %3086, %3081
  %3088 = fadd fast float %3087, %3075
  %3089 = fadd fast float %3049, 1.250000e-01
  %3090 = fadd fast float %3089, %3082
  %3091 = fadd fast float %3090, %3076
  %3092 = fmul fast float %3085, %3035
  %3093 = fmul fast float %3088, %3036
  %3094 = fmul fast float %3091, %3037
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3098, %dx.types.Handle %35, float %3092, float %3093, float %3094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  br label %3101

; <label>:3101                                    ; preds = %3022, %3011
  %3102 = phi float [ %3100, %3022 ], [ -1.000000e+00, %3011 ]
  %3103 = fadd fast float %3102, %3009
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  br label %3105

; <label>:3105                                    ; preds = %3101, %2999
  %3106 = phi float [ %3104, %3101 ], [ %3009, %2999 ]
  %3107 = fmul fast float %3106, %453
  br label %3108

; <label>:3108                                    ; preds = %3105, %2994
  %3109 = phi float [ %3107, %3105 ], [ %453, %2994 ]
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 256
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3160, label %3114

; <label>:3114                                    ; preds = %3108
  %3115 = add i32 %42, 484
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %78, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = add i32 %42, 148
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = shl i32 %3124, 4
  %3126 = and i32 %3125, 32752
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = lshr i32 %3124, 7
  %3129 = and i32 %3128, 32752
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = fsub fast float 1.000000e+00, %3109
  %3132 = call float @dx.op.binary.f32(i32 35, float %3131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3133 = bitcast float %3109 to i32
  %3134 = sitofp i32 %3133 to float
  %3135 = fadd fast float %3134, 0xC1CFBF8940000000
  %3136 = fmul fast float %3130, %3135
  %3137 = fadd fast float %3136, 0x41CFBF8940000000
  %3138 = fptosi float %3137 to i32
  %3139 = bitcast i32 %3138 to float
  %3140 = bitcast float %3132 to i32
  %3141 = sitofp i32 %3140 to float
  %3142 = fadd fast float %3141, 0xC1CFBF8940000000
  %3143 = fmul fast float %3142, %3130
  %3144 = fadd fast float %3143, 0x41CFBF8940000000
  %3145 = fptosi float %3144 to i32
  %3146 = bitcast i32 %3145 to float
  %3147 = fmul fast float %3139, %3127
  %3148 = fmul fast float %3146, %3127
  %3149 = fsub fast float %3132, %3147
  %3150 = fadd fast float %3148, %3132
  %3151 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3153 = fsub fast float %3121, %3151
  %3154 = fsub fast float %3152, %3151
  %3155 = bitcast float %3154 to i32
  %3156 = sub nsw i32 2129859010, %3155
  %3157 = bitcast i32 %3156 to float
  %3158 = fmul fast float %3157, %3153
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  br label %3160

; <label>:3160                                    ; preds = %3114, %3108
  %3161 = phi float [ %3159, %3114 ], [ %3109, %3108 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 128
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3182, label %3166

; <label>:3166                                    ; preds = %3160
  %3167 = add i32 %42, 468
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = add i32 %3169, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3171, %dx.types.Handle %78, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 0
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 524288
  %3177 = icmp ne i32 %3176, 0
  %3178 = fcmp fast ogt float %3173, 0x3FE0101020000000
  %3179 = select i1 %3178, float 1.000000e+00, float 0.000000e+00
  %3180 = select i1 %3177, float %3179, float %3173
  %3181 = fmul fast float %3180, %3161
  br label %3182

; <label>:3182                                    ; preds = %3166, %3160
  %3183 = phi float [ %3181, %3166 ], [ %3161, %3160 ]
  %3184 = fcmp fast ult float %3183, 0x3F70101020000000
  br i1 %3184, label %3814, label %3185

; <label>:3185                                    ; preds = %3182
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 16
  %3189 = icmp eq i32 %3188, 0
  br i1 %3189, label %3388, label %3190

; <label>:3190                                    ; preds = %3185
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %42, 420
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = add i32 %3195, 0
  %3197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3197, %dx.types.Handle %77, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = extractvalue %dx.types.ResRet.f32 %3198, 3
  %3203 = and i32 %3192, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = lshr i32 %3192, 8
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3202, %3204
  %3209 = fadd fast float %3208, %3207
  %3210 = fmul fast float %3209, 0x3F70101000000000
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 512
  %3214 = icmp eq i32 %3213, 0
  br i1 %3214, label %3223, label %3215

; <label>:3215                                    ; preds = %3190
  %3216 = add i32 %42, 500
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = add i32 %3218, 0
  %3220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3220, %dx.types.Handle %78, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  br label %3223

; <label>:3223                                    ; preds = %3215, %3190
  %3224 = phi float [ %3222, %3215 ], [ 1.000000e+00, %3190 ]
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 33554432
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3335, label %3229

; <label>:3229                                    ; preds = %3223
  %3230 = add i32 %42, 272
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 65535
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = lshr i32 %3232, 16
  %3236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3235)  ; LegacyF16ToF32(value)
  %3237 = add i32 %42, 276
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 65535
  %3241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3240)  ; LegacyF16ToF32(value)
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = lshr i32 %3243, 24
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = and i32 %3243, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = fmul fast float %3248, 0x3F70101020000000
  %3250 = lshr i32 %3243, 8
  %3251 = and i32 %3250, 255
  %3252 = uitofp i32 %3251 to float
  %3253 = fmul fast float %3252, 0x3F70101020000000
  %3254 = lshr i32 %3243, 16
  %3255 = and i32 %3254, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = fmul fast float %3256, 0x3F70101020000000
  %3258 = add i32 %42, 268
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = lshr i32 %3260, 24
  %3262 = uitofp i32 %3261 to float
  %3263 = fmul fast float %3262, 0x3F70101020000000
  %3264 = and i32 %3260, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = fmul fast float %3265, 0x3F70101020000000
  %3267 = lshr i32 %3260, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101020000000
  %3271 = lshr i32 %3260, 16
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = bitcast float %3199 to i32
  %3276 = ashr i32 %3275, 1
  %3277 = sub nsw i32 1597463174, %3276
  %3278 = bitcast i32 %3277 to float
  %3279 = fmul fast float %3199, 5.000000e-01
  %3280 = fmul fast float %3278, %3278
  %3281 = fmul fast float %3280, %3279
  %3282 = fsub fast float 1.500000e+00, %3281
  %3283 = fmul fast float %3278, %3199
  %3284 = fmul fast float %3283, %3282
  %3285 = bitcast float %3200 to i32
  %3286 = ashr i32 %3285, 1
  %3287 = sub nsw i32 1597463174, %3286
  %3288 = bitcast i32 %3287 to float
  %3289 = fmul fast float %3200, 5.000000e-01
  %3290 = fmul fast float %3288, %3288
  %3291 = fmul fast float %3290, %3289
  %3292 = fsub fast float 1.500000e+00, %3291
  %3293 = fmul fast float %3288, %3200
  %3294 = fmul fast float %3293, %3292
  %3295 = bitcast float %3201 to i32
  %3296 = ashr i32 %3295, 1
  %3297 = sub nsw i32 1597463174, %3296
  %3298 = bitcast i32 %3297 to float
  %3299 = fmul fast float %3201, 5.000000e-01
  %3300 = fmul fast float %3298, %3298
  %3301 = fmul fast float %3300, %3299
  %3302 = fsub fast float 1.500000e+00, %3301
  %3303 = fmul fast float %3298, %3201
  %3304 = fmul fast float %3303, %3302
  %3305 = fsub fast float %3284, %3266
  %3306 = fsub fast float %3294, %3270
  %3307 = fsub fast float %3304, %3274
  %3308 = fmul fast float %3305, %3234
  %3309 = fmul fast float %3306, %3236
  %3310 = fmul fast float %3307, %3241
  %3311 = fadd fast float %3308, %3249
  %3312 = fadd fast float %3309, %3253
  %3313 = fadd fast float %3310, %3257
  %3314 = call float @dx.op.unary.f32(i32 7, float %3311)  ; Saturate(value)
  %3315 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3316 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3317 = fmul fast float %3314, %3314
  %3318 = fmul fast float %3315, %3315
  %3319 = fmul fast float %3316, %3316
  %3320 = fsub fast float %3317, %3199
  %3321 = fsub fast float %3318, %3200
  %3322 = fsub fast float %3319, %3201
  %3323 = fmul fast float %3320, %3224
  %3324 = fmul fast float %3321, %3224
  %3325 = fmul fast float %3322, %3224
  %3326 = fadd fast float %3323, %3199
  %3327 = fadd fast float %3324, %3200
  %3328 = fadd fast float %3325, %3201
  %3329 = fadd fast float %3246, %3210
  %3330 = fsub fast float %3329, %3263
  %3331 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3332 = fsub fast float %3331, %3210
  %3333 = fmul fast float %3332, %3224
  %3334 = fadd fast float %3333, %3210
  br label %3388

; <label>:3335                                    ; preds = %3223
  %3336 = and i32 %3226, 134217728
  %3337 = icmp eq i32 %3336, 0
  br i1 %3337, label %3372, label %3338

; <label>:3338                                    ; preds = %3335
  %3339 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %3340 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3342 = fadd fast float %3339, -5.000000e-01
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fmul fast float %3342, %3224
  %3346 = fmul fast float %3343, %3224
  %3347 = fmul fast float %3344, %3224
  %3348 = fadd fast float %3345, 5.000000e-01
  %3349 = fadd fast float %3346, 5.000000e-01
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = call float @dx.op.unary.f32(i32 24, float %3199)  ; Sqrt(value)
  %3352 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3201)  ; Sqrt(value)
  %3354 = fmul fast float %3348, 2.000000e+00
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = fmul fast float %3355, %3351
  %3357 = fadd fast float %3356, %3354
  %3358 = fmul fast float %3357, %3351
  %3359 = fmul fast float %3349, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3352
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3352
  %3364 = fmul fast float %3350, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3353
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3353
  %3369 = fmul fast float %3358, %3358
  %3370 = fmul fast float %3363, %3363
  %3371 = fmul fast float %3368, %3368
  br label %3388

; <label>:3372                                    ; preds = %3335
  %3373 = fmul fast float %374, %374
  %3374 = fmul fast float %378, %378
  %3375 = fmul fast float %382, %382
  %3376 = fadd fast float %3373, -1.000000e+00
  %3377 = fadd fast float %3374, -1.000000e+00
  %3378 = fadd fast float %3375, -1.000000e+00
  %3379 = fmul fast float %3224, %3376
  %3380 = fmul fast float %3224, %3377
  %3381 = fmul fast float %3224, %3378
  %3382 = fadd fast float %3379, 1.000000e+00
  %3383 = fadd fast float %3380, 1.000000e+00
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fmul fast float %3382, %3199
  %3386 = fmul fast float %3383, %3200
  %3387 = fmul fast float %3384, %3201
  br label %3388

; <label>:3388                                    ; preds = %3372, %3338, %3229, %3185
  %3389 = phi float [ %3334, %3229 ], [ %3210, %3338 ], [ %3210, %3372 ], [ 0x3FA23C0BE0000000, %3185 ]
  %3390 = phi float [ %3326, %3229 ], [ %3369, %3338 ], [ %3385, %3372 ], [ 1.000000e+00, %3185 ]
  %3391 = phi float [ %3327, %3229 ], [ %3370, %3338 ], [ %3386, %3372 ], [ 1.000000e+00, %3185 ]
  %3392 = phi float [ %3328, %3229 ], [ %3371, %3338 ], [ %3387, %3372 ], [ 1.000000e+00, %3185 ]
  %3393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.i32 %3393, 1
  %3395 = and i32 %3394, 1
  %3396 = icmp ne i32 %3395, 0
  %3397 = add i32 %42, 356
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 32
  %3401 = icmp ne i32 %3400, 0
  %3402 = and i1 %3396, %3401
  %3403 = select i1 %3402, float 1.000000e+00, float %3390
  %3404 = select i1 %3402, float 0x3FD3333340000000, float %3391
  %3405 = select i1 %3402, float 0x3FD3333340000000, float %3392
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 32
  %3409 = icmp eq i32 %3408, 0
  br i1 %3409, label %3482, label %3410

; <label>:3410                                    ; preds = %3388
  %3411 = add i32 %42, 140
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %42, 436
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = add i32 %3416, 0
  %3418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3418, %dx.types.Handle %77, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3424 = and i32 %3413, 255
  %3425 = uitofp i32 %3424 to float
  %3426 = lshr i32 %3413, 8
  %3427 = and i32 %3426, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = lshr i32 %3413, 16
  %3430 = and i32 %3429, 255
  %3431 = uitofp i32 %3430 to float
  %3432 = fmul fast float %3431, 0x3F70101000000000
  %3433 = fmul fast float %3420, %3425
  %3434 = fadd fast float %3433, %3428
  %3435 = fmul fast float %3434, 0x3F70101000000000
  %3436 = fadd fast float %3421, -5.000000e-01
  %3437 = fadd fast float %3423, -5.000000e-01
  %3438 = fmul fast float %3436, %3432
  %3439 = fmul fast float %3437, %3432
  %3440 = fadd fast float %3438, 5.000000e-01
  %3441 = fadd fast float %3439, 5.000000e-01
  %3442 = fmul fast float %3440, 2.000000e+00
  %3443 = fadd fast float %3442, -1.000000e+00
  %3444 = fmul fast float %3441, 2.000000e+00
  %3445 = fadd fast float %3444, -1.000000e+00
  %3446 = fadd fast float %3443, %3445
  %3447 = fmul fast float %3446, 5.000000e-01
  %3448 = fsub fast float %3443, %3445
  %3449 = fmul fast float %3448, 5.000000e-01
  %3450 = call float @dx.op.unary.f32(i32 6, float %3447)  ; FAbs(value)
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3453 = fsub fast float %3451, %3452
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3449, float %3453, float %3447, float %3449, float %3453)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = call float @dx.op.unary.f32(i32 25, float %3454)  ; Rsqrt(value)
  %3456 = fmul fast float %3447, %3455
  %3457 = fmul fast float %3449, %3455
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 67108864
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3478, label %3462

; <label>:3462                                    ; preds = %3410
  %3463 = add i32 %42, 328
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 65535
  %3467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3466)  ; LegacyF16ToF32(value)
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 65535
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = lshr i32 %3465, 16
  %3473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3472)  ; LegacyF16ToF32(value)
  %3474 = fsub fast float %3435, %3473
  %3475 = fmul fast float %3474, %3467
  %3476 = fadd fast float %3475, %3471
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  br label %3478

; <label>:3478                                    ; preds = %3462, %3410
  %3479 = phi float [ %3477, %3462 ], [ %3435, %3410 ]
  %3480 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %2899, float %2900)  ; Dot2(ax,ay,bx,by)
  %3481 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %2901, float %2902)  ; Dot2(ax,ay,bx,by)
  br label %3482

; <label>:3482                                    ; preds = %3478, %3388
  %3483 = phi float [ %3479, %3478 ], [ 0x3FD6666660000000, %3388 ]
  %3484 = phi float [ %3480, %3478 ], [ 0.000000e+00, %3388 ]
  %3485 = phi float [ %3481, %3478 ], [ 0.000000e+00, %3388 ]
  %3486 = phi float [ %3422, %3478 ], [ 1.000000e+00, %3388 ]
  %3487 = add i32 %42, 208
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = lshr i32 %3489, 22
  %3491 = shl nuw nsw i32 %3490, 5
  %3492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3491)  ; LegacyF16ToF32(value)
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 64
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3530, label %3497

; <label>:3497                                    ; preds = %3482
  %3498 = add i32 %42, 452
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = add i32 %3500, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 131072
  %3506 = icmp eq i32 %3505, 0
  %3507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3502, %dx.types.Handle %77, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = fmul fast float %3508, %362
  %3512 = fmul fast float %3509, %365
  %3513 = fmul fast float %3510, %368
  br i1 %3506, label %3520, label %3514

; <label>:3514                                    ; preds = %3497
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = fmul fast float %3516, %3511
  %3518 = fmul fast float %3516, %3512
  %3519 = fmul fast float %3516, %3513
  br label %3520

; <label>:3520                                    ; preds = %3514, %3497
  %3521 = phi float [ %3517, %3514 ], [ %3511, %3497 ]
  %3522 = phi float [ %3518, %3514 ], [ %3512, %3497 ]
  %3523 = phi float [ %3519, %3514 ], [ %3513, %3497 ]
  %3524 = fmul fast float %3521, %3492
  %3525 = select i1 %216, float %3524, float %3521
  %3526 = call float @dx.op.dot3.f32(i32 55, float %3525, float %3522, float %3523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3527 = select i1 %216, float 0.000000e+00, float %3521
  %3528 = select i1 %216, float %3526, float %3522
  %3529 = select i1 %216, float 0.000000e+00, float %3523
  br label %3530

; <label>:3530                                    ; preds = %3520, %3482
  %3531 = phi float [ %3527, %3520 ], [ 0.000000e+00, %3482 ]
  %3532 = phi float [ %3528, %3520 ], [ 0.000000e+00, %3482 ]
  %3533 = phi float [ %3529, %3520 ], [ 0.000000e+00, %3482 ]
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = and i32 %3535, 10240
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3582, label %3538

; <label>:3538                                    ; preds = %3530
  %3539 = add i32 %42, 516
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = add i32 %3541, 0
  %3543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3543, %dx.types.Handle %78, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 1048576
  %3550 = icmp ne i32 %3549, 0
  %3551 = and i32 %3548, 8192
  %3552 = icmp eq i32 %3551, 0
  br i1 %3552, label %3568, label %3553

; <label>:3553                                    ; preds = %3538
  %3554 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3555 = select i1 %3550, float %3554, float %3545
  %3556 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3557 = select i1 %3550, float %3556, float %3545
  %3558 = add i32 %42, 144
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = lshr i32 %3560, 16
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = fmul fast float %3563, 0x3F80101020000000
  %3565 = fmul fast float %3564, %3557
  %3566 = fmul fast float %3564, %3545
  %3567 = fmul fast float %3564, %3555
  br label %3568

; <label>:3568                                    ; preds = %3553, %3538
  %3569 = phi float [ %3565, %3553 ], [ 0.000000e+00, %3538 ]
  %3570 = phi float [ %3566, %3553 ], [ 0.000000e+00, %3538 ]
  %3571 = phi float [ %3567, %3553 ], [ 0.000000e+00, %3538 ]
  %3572 = and i32 %3548, 2048
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3582, label %3574

; <label>:3574                                    ; preds = %3568
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = shl i32 %3576, 4
  %3578 = and i32 %3577, 32752
  %3579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3578)  ; LegacyF16ToF32(value)
  %3580 = fmul fast float %3579, %3546
  %3581 = call float @dx.op.binary.f32(i32 35, float %3580, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3582

; <label>:3582                                    ; preds = %3574, %3568, %3530
  %3583 = phi float [ %3569, %3574 ], [ %3569, %3568 ], [ 0.000000e+00, %3530 ]
  %3584 = phi float [ %3570, %3574 ], [ %3570, %3568 ], [ 0.000000e+00, %3530 ]
  %3585 = phi float [ %3571, %3574 ], [ %3571, %3568 ], [ 0.000000e+00, %3530 ]
  %3586 = phi float [ %3581, %3574 ], [ 0x3F70101020000000, %3568 ], [ 0x3F70101020000000, %3530 ]
  %3587 = add i32 %42, 144
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 255
  %3591 = uitofp i32 %3590 to float
  %3592 = lshr i32 %3589, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3404, float %3405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3596 = fmul fast float %3594, %3595
  %3597 = fadd fast float %3596, %3591
  %3598 = fmul fast float %3597, 0x3F70101020000000
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  br i1 %2887, label %3600, label %3608

; <label>:3600                                    ; preds = %3582
  %3601 = fsub fast float 1.000000e+00, %3183
  %3602 = fmul fast float %3601, %2875
  %3603 = fmul fast float %3601, %2876
  %3604 = fmul fast float %3601, %2877
  %3605 = fmul fast float %3601, %2872
  %3606 = fmul fast float %3601, %2873
  %3607 = fmul fast float %3601, %2874
  br label %3608

; <label>:3608                                    ; preds = %3600, %3582
  %3609 = phi float [ %3605, %3600 ], [ %2872, %3582 ]
  %3610 = phi float [ %3606, %3600 ], [ %2873, %3582 ]
  %3611 = phi float [ %3607, %3600 ], [ %2874, %3582 ]
  %3612 = phi float [ %3602, %3600 ], [ %2875, %3582 ]
  %3613 = phi float [ %3603, %3600 ], [ %2876, %3582 ]
  %3614 = phi float [ %3604, %3600 ], [ %2877, %3582 ]
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 3
  %3618 = icmp eq i32 %3617, 3
  br i1 %3618, label %3697, label %3619

; <label>:3619                                    ; preds = %3608
  %3620 = and i32 %3616, 16
  %3621 = icmp ne i32 %3620, 0
  %3622 = select i1 %3621, float %3183, float 0.000000e+00
  %3623 = icmp eq i32 %3617, 0
  br i1 %3623, label %3624, label %3652

; <label>:3624                                    ; preds = %3619
  %3625 = and i32 %3616, 64
  %3626 = icmp ne i32 %3625, 0
  %3627 = select i1 %3626, float %3183, float 0.000000e+00
  %3628 = fsub fast float %3403, %3612
  %3629 = fsub fast float %3404, %3613
  %3630 = fsub fast float %3405, %3614
  %3631 = fmul fast float %3622, %3628
  %3632 = fmul fast float %3622, %3629
  %3633 = fmul fast float %3622, %3630
  %3634 = fadd fast float %3631, %3612
  %3635 = fadd fast float %3632, %3613
  %3636 = fadd fast float %3633, %3614
  %3637 = fsub fast float %3389, %2881
  %3638 = fmul fast float %3622, %3637
  %3639 = fadd fast float %3638, %2881
  %3640 = fsub fast float %3531, %3609
  %3641 = fsub fast float %3532, %3610
  %3642 = fsub fast float %3533, %3611
  %3643 = fmul fast float %3627, %3640
  %3644 = fmul fast float %3627, %3641
  %3645 = fmul fast float %3627, %3642
  %3646 = fadd fast float %3643, %3609
  %3647 = fadd fast float %3644, %3610
  %3648 = fadd fast float %3645, %3611
  %3649 = fsub fast float %3599, %2885
  %3650 = fmul fast float %3622, %3649
  %3651 = fadd fast float %3650, %2885
  br label %3697

; <label>:3652                                    ; preds = %3619
  %3653 = icmp eq i32 %3617, 1
  br i1 %3653, label %3654, label %3667

; <label>:3654                                    ; preds = %3652
  %3655 = fadd fast float %3403, -1.000000e+00
  %3656 = fadd fast float %3404, -1.000000e+00
  %3657 = fadd fast float %3405, -1.000000e+00
  %3658 = fmul fast float %3622, %3655
  %3659 = fmul fast float %3622, %3656
  %3660 = fmul fast float %3622, %3657
  %3661 = fadd fast float %3658, 1.000000e+00
  %3662 = fadd fast float %3659, 1.000000e+00
  %3663 = fadd fast float %3660, 1.000000e+00
  %3664 = fmul fast float %3661, %3612
  %3665 = fmul fast float %3662, %3613
  %3666 = fmul fast float %3663, %3614
  br label %3697

; <label>:3667                                    ; preds = %3652
  %3668 = icmp eq i32 %3617, 2
  br i1 %3668, label %3669, label %3697

; <label>:3669                                    ; preds = %3667
  %3670 = call float @dx.op.unary.f32(i32 24, float %3403)  ; Sqrt(value)
  %3671 = call float @dx.op.unary.f32(i32 24, float %3404)  ; Sqrt(value)
  %3672 = call float @dx.op.unary.f32(i32 24, float %3405)  ; Sqrt(value)
  %3673 = fadd fast float %3670, -5.000000e-01
  %3674 = fadd fast float %3671, -5.000000e-01
  %3675 = fadd fast float %3672, -5.000000e-01
  %3676 = fmul fast float %3673, %3622
  %3677 = fmul fast float %3674, %3622
  %3678 = fmul fast float %3675, %3622
  %3679 = fadd fast float %3676, 5.000000e-01
  %3680 = fadd fast float %3677, 5.000000e-01
  %3681 = fadd fast float %3678, 5.000000e-01
  %3682 = fmul fast float %3679, 2.000000e+00
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = fmul fast float %3683, %3612
  %3685 = fadd fast float %3684, %3682
  %3686 = fmul fast float %3685, %3612
  %3687 = fmul fast float %3680, 2.000000e+00
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = fmul fast float %3688, %3613
  %3690 = fadd fast float %3689, %3687
  %3691 = fmul fast float %3690, %3613
  %3692 = fmul fast float %3681, 2.000000e+00
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = fmul fast float %3693, %3614
  %3695 = fadd fast float %3694, %3692
  %3696 = fmul fast float %3695, %3614
  br label %3697

; <label>:3697                                    ; preds = %3669, %3667, %3654, %3624, %3608
  %3698 = phi float [ %3609, %3608 ], [ %3609, %3669 ], [ %3609, %3667 ], [ %3609, %3654 ], [ %3646, %3624 ]
  %3699 = phi float [ %3610, %3608 ], [ %3610, %3669 ], [ %3610, %3667 ], [ %3610, %3654 ], [ %3647, %3624 ]
  %3700 = phi float [ %3611, %3608 ], [ %3611, %3669 ], [ %3611, %3667 ], [ %3611, %3654 ], [ %3648, %3624 ]
  %3701 = phi float [ %3612, %3608 ], [ %3686, %3669 ], [ %3612, %3667 ], [ %3664, %3654 ], [ %3634, %3624 ]
  %3702 = phi float [ %3613, %3608 ], [ %3691, %3669 ], [ %3613, %3667 ], [ %3665, %3654 ], [ %3635, %3624 ]
  %3703 = phi float [ %3614, %3608 ], [ %3696, %3669 ], [ %3614, %3667 ], [ %3666, %3654 ], [ %3636, %3624 ]
  %3704 = phi float [ %2881, %3608 ], [ %2881, %3669 ], [ %2881, %3667 ], [ %2881, %3654 ], [ %3639, %3624 ]
  %3705 = phi float [ %2885, %3608 ], [ %2885, %3669 ], [ %2885, %3667 ], [ %2885, %3654 ], [ %3651, %3624 ]
  %3706 = and i32 %3616, 12
  %3707 = icmp eq i32 %3706, 12
  br i1 %3707, label %3814, label %3708

; <label>:3708                                    ; preds = %3697
  %3709 = and i32 %3616, 2097184
  %3710 = icmp eq i32 %3709, 2097184
  %3711 = select i1 %3710, float %3183, float 0.000000e+00
  %3712 = and i32 %3616, 4194336
  %3713 = icmp eq i32 %3712, 4194336
  %3714 = select i1 %3713, float %3183, float 0.000000e+00
  %3715 = and i32 %3616, 8388640
  %3716 = icmp eq i32 %3715, 8388640
  %3717 = select i1 %3716, float %3183, float 0.000000e+00
  %3718 = and i32 %3616, 2048
  %3719 = icmp ne i32 %3718, 0
  %3720 = select i1 %3719, float %3183, float 0.000000e+00
  %3721 = and i32 %3616, 8192
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float %3183, float 0.000000e+00
  %3724 = icmp eq i32 %3706, 0
  br i1 %3724, label %3725, label %3750

; <label>:3725                                    ; preds = %3708
  %3726 = fsub fast float %3484, %2870
  %3727 = fsub fast float %3485, %2871
  %3728 = fmul fast float %3711, %3726
  %3729 = fmul fast float %3711, %3727
  %3730 = fadd fast float %3728, %2870
  %3731 = fadd fast float %3729, %2871
  %3732 = fsub fast float %3486, %2883
  %3733 = fmul fast float %3714, %3732
  %3734 = fadd fast float %3733, %2883
  %3735 = fsub fast float %3483, %2882
  %3736 = fmul fast float %3717, %3735
  %3737 = fadd fast float %3736, %2882
  %3738 = fsub fast float %3586, %2884
  %3739 = fmul fast float %3720, %3738
  %3740 = fadd fast float %3739, %2884
  %3741 = fsub fast float %3583, %2878
  %3742 = fsub fast float %3584, %2879
  %3743 = fsub fast float %3585, %2880
  %3744 = fmul fast float %3723, %3741
  %3745 = fmul fast float %3723, %3742
  %3746 = fmul fast float %3723, %3743
  %3747 = fadd fast float %3744, %2878
  %3748 = fadd fast float %3745, %2879
  %3749 = fadd fast float %3746, %2880
  br label %3814

; <label>:3750                                    ; preds = %3708
  %3751 = icmp eq i32 %3706, 4
  br i1 %3751, label %3752, label %3792

; <label>:3752                                    ; preds = %3750
  %3753 = fmul fast float %3711, %3484
  %3754 = fmul fast float %3711, %3485
  %3755 = fadd fast float %3753, %2870
  %3756 = fadd fast float %3754, %2871
  %3757 = call float @dx.op.binary.f32(i32 36, float %2883, float %3486)  ; FMin(a,b)
  %3758 = fsub fast float %3757, %2883
  %3759 = fmul fast float %3758, %3714
  %3760 = fadd fast float %3759, %2883
  %3761 = fadd fast float %3483, %2882
  %3762 = fmul fast float %3761, 0x3FF337FAE0000000
  %3763 = fmul fast float %2882, %2882
  %3764 = fmul fast float %3483, %3483
  %3765 = fadd fast float %3764, %3763
  %3766 = fmul fast float %3765, 0x3FE5152B00000000
  %3767 = fmul fast float %2882, 0xBFCC1F85E0000000
  %3768 = fmul fast float %3767, %3483
  %3769 = fadd fast float %3768, 0xBFE1363700000000
  %3770 = fadd fast float %3769, %3762
  %3771 = fsub fast float %3770, %3766
  %3772 = fmul fast float %3761, 0x3FBA6F0D00000000
  %3773 = fmul fast float %3765, 0x3FD0432880000000
  %3774 = fmul fast float %2882, 0xBFEF110800000000
  %3775 = fmul fast float %3774, %3483
  %3776 = fadd fast float %3775, 1.000000e+00
  %3777 = fsub fast float %3776, %3772
  %3778 = fadd fast float %3777, %3773
  %3779 = fdiv fast float %3771, %3778
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fsub fast float %3780, %2882
  %3782 = fmul fast float %3781, %3717
  %3783 = fadd fast float %3782, %2882
  %3784 = fmul fast float %3720, %3586
  %3785 = fadd fast float %3784, %2884
  %3786 = fmul fast float %3723, %3583
  %3787 = fmul fast float %3723, %3584
  %3788 = fmul fast float %3723, %3585
  %3789 = fadd fast float %3786, %2878
  %3790 = fadd fast float %3787, %2879
  %3791 = fadd fast float %3788, %2880
  br label %3814

; <label>:3792                                    ; preds = %3750
  %3793 = icmp eq i32 %3706, 8
  br i1 %3793, label %3794, label %3814

; <label>:3794                                    ; preds = %3792
  %3795 = fmul fast float %3711, %3484
  %3796 = fmul fast float %3711, %3485
  %3797 = fadd fast float %3795, %2870
  %3798 = fadd fast float %3796, %2871
  %3799 = call float @dx.op.binary.f32(i32 36, float %2883, float %3486)  ; FMin(a,b)
  %3800 = fsub fast float %3799, %2883
  %3801 = fmul fast float %3800, %3714
  %3802 = fadd fast float %3801, %2883
  %3803 = fsub fast float %3483, %2882
  %3804 = fmul fast float %3717, %3803
  %3805 = fadd fast float %3804, %2882
  %3806 = fmul fast float %3720, %3586
  %3807 = fadd fast float %3806, %2884
  %3808 = fmul fast float %3723, %3583
  %3809 = fmul fast float %3723, %3584
  %3810 = fmul fast float %3723, %3585
  %3811 = fadd fast float %3808, %2878
  %3812 = fadd fast float %3809, %2879
  %3813 = fadd fast float %3810, %2880
  br label %3814

; <label>:3814                                    ; preds = %3794, %3792, %3752, %3725, %3697, %3182, %2886, %2869
  %3815 = phi float [ %2870, %3697 ], [ %2870, %3182 ], [ %2870, %2869 ], [ %2870, %2886 ], [ %3730, %3725 ], [ %3755, %3752 ], [ %2870, %3792 ], [ %3797, %3794 ]
  %3816 = phi float [ %2871, %3697 ], [ %2871, %3182 ], [ %2871, %2869 ], [ %2871, %2886 ], [ %3731, %3725 ], [ %3756, %3752 ], [ %2871, %3792 ], [ %3798, %3794 ]
  %3817 = phi float [ %3698, %3697 ], [ %2872, %3182 ], [ %2872, %2869 ], [ %2872, %2886 ], [ %3698, %3725 ], [ %3698, %3752 ], [ %3698, %3792 ], [ %3698, %3794 ]
  %3818 = phi float [ %3699, %3697 ], [ %2873, %3182 ], [ %2873, %2869 ], [ %2873, %2886 ], [ %3699, %3725 ], [ %3699, %3752 ], [ %3699, %3792 ], [ %3699, %3794 ]
  %3819 = phi float [ %3700, %3697 ], [ %2874, %3182 ], [ %2874, %2869 ], [ %2874, %2886 ], [ %3700, %3725 ], [ %3700, %3752 ], [ %3700, %3792 ], [ %3700, %3794 ]
  %3820 = phi float [ %3701, %3697 ], [ %2875, %3182 ], [ %2875, %2869 ], [ %2875, %2886 ], [ %3701, %3725 ], [ %3701, %3752 ], [ %3701, %3792 ], [ %3701, %3794 ]
  %3821 = phi float [ %3702, %3697 ], [ %2876, %3182 ], [ %2876, %2869 ], [ %2876, %2886 ], [ %3702, %3725 ], [ %3702, %3752 ], [ %3702, %3792 ], [ %3702, %3794 ]
  %3822 = phi float [ %3703, %3697 ], [ %2877, %3182 ], [ %2877, %2869 ], [ %2877, %2886 ], [ %3703, %3725 ], [ %3703, %3752 ], [ %3703, %3792 ], [ %3703, %3794 ]
  %3823 = phi float [ %2878, %3697 ], [ %2878, %3182 ], [ %2878, %2869 ], [ %2878, %2886 ], [ %3747, %3725 ], [ %3789, %3752 ], [ %2878, %3792 ], [ %3811, %3794 ]
  %3824 = phi float [ %2879, %3697 ], [ %2879, %3182 ], [ %2879, %2869 ], [ %2879, %2886 ], [ %3748, %3725 ], [ %3790, %3752 ], [ %2879, %3792 ], [ %3812, %3794 ]
  %3825 = phi float [ %2880, %3697 ], [ %2880, %3182 ], [ %2880, %2869 ], [ %2880, %2886 ], [ %3749, %3725 ], [ %3791, %3752 ], [ %2880, %3792 ], [ %3813, %3794 ]
  %3826 = phi float [ %3704, %3697 ], [ %2881, %3182 ], [ %2881, %2869 ], [ %2881, %2886 ], [ %3704, %3725 ], [ %3704, %3752 ], [ %3704, %3792 ], [ %3704, %3794 ]
  %3827 = phi float [ %2882, %3697 ], [ %2882, %3182 ], [ %2882, %2869 ], [ %2882, %2886 ], [ %3737, %3725 ], [ %3783, %3752 ], [ %2882, %3792 ], [ %3805, %3794 ]
  %3828 = phi float [ %2883, %3697 ], [ %2883, %3182 ], [ %2883, %2869 ], [ %2883, %2886 ], [ %3734, %3725 ], [ %3760, %3752 ], [ %2883, %3792 ], [ %3802, %3794 ]
  %3829 = phi float [ %2884, %3697 ], [ %2884, %3182 ], [ %2884, %2869 ], [ %2884, %2886 ], [ %3740, %3725 ], [ %3785, %3752 ], [ %2884, %3792 ], [ %3807, %3794 ]
  %3830 = phi float [ %3705, %3697 ], [ %2885, %3182 ], [ %2885, %2869 ], [ %2885, %2886 ], [ %3705, %3725 ], [ %3705, %3752 ], [ %3705, %3792 ], [ %3705, %3794 ]
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = call float @dx.op.dot2.f32(i32 54, float %3815, float %3816, float %3815, float %3816)  ; Dot2(ax,ay,bx,by)
  %3834 = fmul fast float %3833, 0x3FE3333340000000
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3835, float %3815, float %3816, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3837 = call float @dx.op.unary.f32(i32 25, float %3836)  ; Rsqrt(value)
  %3838 = fmul fast float %3837, %3815
  %3839 = fmul fast float %3837, %3816
  %3840 = fmul fast float %3835, %3837
  %3841 = fmul fast float %3840, %90
  %3842 = fmul fast float %3840, %92
  %3843 = fmul fast float %3840, %94
  %3844 = fmul fast float %3838, %62
  %3845 = fmul fast float %3838, %63
  %3846 = fmul fast float %3838, %64
  %3847 = fadd fast float %3841, %3844
  %3848 = fadd fast float %3842, %3845
  %3849 = fadd fast float %3843, %3846
  %3850 = fmul fast float %104, %3839
  %3851 = fmul fast float %105, %3839
  %3852 = fmul fast float %106, %3839
  %3853 = fadd fast float %3847, %3850
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = call float @dx.op.unary.f32(i32 25, float %3856)  ; Rsqrt(value)
  %3858 = fmul fast float %3853, %3857
  %3859 = fmul fast float %3854, %3857
  %3860 = fmul fast float %3855, %3857
  %3861 = add i32 %42, 392
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.i32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.i32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.i32 %3862, 3
  %3867 = bitcast i32 %3863 to float
  %3868 = bitcast i32 %3864 to float
  %3869 = bitcast i32 %3865 to float
  %3870 = bitcast i32 %3866 to float
  %3871 = fsub fast float %3820, %3867
  %3872 = fsub fast float %3821, %3868
  %3873 = fsub fast float %3822, %3869
  %3874 = fmul fast float %3871, %174
  %3875 = fmul fast float %3872, %174
  %3876 = fmul fast float %3873, %174
  %3877 = fadd fast float %3874, %3867
  %3878 = fadd fast float %3875, %3868
  %3879 = fadd fast float %3876, %3869
  %3880 = fsub fast float %991, %3870
  %3881 = fmul fast float %3880, %174
  %3882 = fadd fast float %3881, %3870
  %3883 = fadd fast float %3826, 0xBFB99999A0000000
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3884, 0x3FF1C71C80000000
  %3886 = call float @dx.op.binary.f32(i32 36, float %3826, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3887 = fsub fast float 1.000000e+00, %3885
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fmul fast float %3877, %3888
  %3890 = fmul fast float %3878, %3888
  %3891 = fmul fast float %3879, %3888
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3894 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3895 = fmul fast float %3877, %3885
  %3896 = fmul fast float %3878, %3885
  %3897 = fmul fast float %3879, %3885
  %3898 = fadd fast float %3895, %3886
  %3899 = fadd fast float %3896, %3886
  %3900 = fadd fast float %3897, %3886
  %3901 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.i32 %3905, 0
  %3907 = and i32 %3906, 1
  %3908 = icmp eq i32 %3907, 0
  br i1 %3908, label %3923, label %3909

; <label>:3909                                    ; preds = %3814
  %3910 = call float @dx.op.binary.f32(i32 35, float %3893, float %3894)  ; FMax(a,b)
  %3911 = call float @dx.op.binary.f32(i32 35, float %3892, float %3910)  ; FMax(a,b)
  %3912 = fcmp fast ogt float %3911, 0.000000e+00
  %3913 = bitcast float %3911 to i32
  %3914 = sub nsw i32 2129859010, %3913
  %3915 = bitcast i32 %3914 to float
  %3916 = select i1 %3912, float %3915, float 0.000000e+00
  %3917 = fmul fast float %3892, %3823
  %3918 = fmul fast float %3893, %3824
  %3919 = fmul fast float %3894, %3825
  %3920 = fmul fast float %3917, %3916
  %3921 = fmul fast float %3918, %3916
  %3922 = fmul fast float %3919, %3916
  br label %3923

; <label>:3923                                    ; preds = %3909, %3814
  %3924 = phi float [ %3920, %3909 ], [ %3823, %3814 ]
  %3925 = phi float [ %3921, %3909 ], [ %3824, %3814 ]
  %3926 = phi float [ %3922, %3909 ], [ %3825, %3814 ]
  %3927 = fadd fast float %3892, 0xBFD51EB860000000
  %3928 = fadd fast float %3893, 0xBFD51EB860000000
  %3929 = fadd fast float %3894, 0xBFD51EB860000000
  %3930 = fmul fast float %3927, %3927
  %3931 = fmul fast float %3928, %3928
  %3932 = fmul fast float %3929, %3929
  %3933 = fmul fast float %3930, %3930
  %3934 = fmul fast float %3933, 1.000000e+02
  %3935 = fmul fast float %3931, %3931
  %3936 = fmul fast float %3935, 1.000000e+02
  %3937 = fmul fast float %3932, %3932
  %3938 = fmul fast float %3937, 1.000000e+02
  %3939 = fadd fast float %3934, 3.500000e+00
  %3940 = fadd fast float %3936, 3.500000e+00
  %3941 = fadd fast float %3938, 3.500000e+00
  %3942 = call float @dx.op.binary.f32(i32 35, float %3924, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3943 = call float @dx.op.binary.f32(i32 35, float %3925, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3944 = call float @dx.op.binary.f32(i32 35, float %3926, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3945 = fdiv fast float %3939, %3942
  %3946 = fdiv fast float %3940, %3943
  %3947 = fdiv fast float %3941, %3944
  %3948 = fmul fast float %3829, 0xBFF7154760000000
  %3949 = fmul fast float %3948, %3945
  %3950 = call float @dx.op.unary.f32(i32 21, float %3949)  ; Exp(value)
  %3951 = fmul fast float %3950, 2.500000e-01
  %3952 = fmul fast float %3829, 0xBFDEC709E0000000
  %3953 = fmul fast float %3952, %3945
  %3954 = call float @dx.op.unary.f32(i32 21, float %3953)  ; Exp(value)
  %3955 = fmul fast float %3954, 7.500000e-01
  %3956 = fmul fast float %3948, %3946
  %3957 = call float @dx.op.unary.f32(i32 21, float %3956)  ; Exp(value)
  %3958 = fmul fast float %3957, 2.500000e-01
  %3959 = fmul fast float %3952, %3946
  %3960 = call float @dx.op.unary.f32(i32 21, float %3959)  ; Exp(value)
  %3961 = fmul fast float %3960, 7.500000e-01
  %3962 = fmul fast float %3948, %3947
  %3963 = call float @dx.op.unary.f32(i32 21, float %3962)  ; Exp(value)
  %3964 = fmul fast float %3963, 2.500000e-01
  %3965 = fmul fast float %3952, %3947
  %3966 = call float @dx.op.unary.f32(i32 21, float %3965)  ; Exp(value)
  %3967 = fmul fast float %3966, 7.500000e-01
  %3968 = fadd fast float %3951, %3955
  %3969 = fadd fast float %3958, %3961
  %3970 = fadd fast float %3964, %3967
  %3971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.i32 %3971, 3
  %3973 = and i32 %3972, 8
  %3974 = icmp ne i32 %3973, 0
  %3975 = call float @dx.op.binary.f32(i32 35, float %3892, float %3877)  ; FMax(a,b)
  %3976 = call float @dx.op.binary.f32(i32 35, float %3893, float %3877)  ; FMax(a,b)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3894, float %3877)  ; FMax(a,b)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3893, float %3894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = select i1 %216, float %3877, float %3892
  %3980 = select i1 %216, float %3978, float %3893
  %3981 = select i1 %216, float 1.000000e+00, float %3894
  %3982 = select i1 %3974, float %3975, float %3979
  %3983 = select i1 %3974, float %3976, float %3980
  %3984 = select i1 %3974, float %3977, float %3981
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %3989 = fadd fast float %3986, %140
  %3990 = fadd fast float %3987, %141
  %3991 = fadd fast float %3988, %142
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3995 = fsub fast float %3989, %3993
  %3996 = fsub fast float %3990, %3994
  %3997 = fmul fast float %3995, %3995
  %3998 = fmul fast float %3996, %3996
  %3999 = fadd fast float %3997, %3998
  %4000 = call float @dx.op.unary.f32(i32 24, float %3999)  ; Sqrt(value)
  %4001 = extractvalue %dx.types.CBufRet.f32 %3992, 2
  %4002 = fcmp fast olt float %4000, %4001
  br i1 %4002, label %4003, label %4070

; <label>:4003                                    ; preds = %3923
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4014 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4015 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4016 = fadd fast float %4013, %3989
  %4017 = fadd fast float %4014, %3990
  %4018 = fadd fast float %4015, %3991
  %4019 = fmul fast float %4016, %4005
  %4020 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4007, float %4019)  ; FMad(a,b,c)
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4009, float %4020)  ; FMad(a,b,c)
  %4022 = fmul fast float %4016, %4010
  %4023 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4011, float %4022)  ; FMad(a,b,c)
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4012, float %4023)  ; FMad(a,b,c)
  %4025 = fsub fast float %4021, %4013
  %4026 = fsub fast float %4024, %4014
  %4027 = fsub fast float %4025, %3993
  %4028 = fadd fast float %4027, %4001
  %4029 = fsub fast float %4026, %3994
  %4030 = fadd fast float %4029, %4001
  %4031 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %4032 = fmul fast float %4028, %4031
  %4033 = fmul fast float %4030, %4031
  %4034 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4036 = fsub fast float 1.000000e+00, %4034
  %4037 = fsub fast float 1.000000e+00, %4035
  %4038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = fcmp fast ugt float %4039, 0.000000e+00
  br i1 %4040, label %4041, label %4344

; <label>:4041                                    ; preds = %4003
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = fmul fast float %4043, %4039
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4046 = fadd fast float %4045, %4044
  %4047 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4048 = fadd fast float %4046, %4015
  %4049 = fmul fast float %4021, %4009
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4012, float %4049)  ; FMad(a,b,c)
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4047, float %4050)  ; FMad(a,b,c)
  %4052 = fsub fast float %4051, %4015
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4055 = fsub fast float %4052, %4054
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = fadd fast float %4061, %4057
  %4065 = fmul fast float %4064, 0x3F847AE140000000
  %4066 = fadd fast float %4062, %4058
  %4067 = fmul fast float %4066, 0x3F847AE140000000
  %4068 = fadd fast float %4063, %4059
  %4069 = fmul fast float %4068, 0x3F847AE140000000
  br label %4344

; <label>:4070                                    ; preds = %3923
  %4071 = and i32 %190, 1
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4344, label %4073

; <label>:4073                                    ; preds = %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4085 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4086 = fadd fast float %4083, %3989
  %4087 = fadd fast float %4084, %3990
  %4088 = fadd fast float %4085, %3991
  %4089 = fmul fast float %4086, %4075
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4077, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4079, float %4090)  ; FMad(a,b,c)
  %4092 = fmul fast float %4086, %4080
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4082, float %4093)  ; FMad(a,b,c)
  %4095 = fsub fast float %4091, %4083
  %4096 = fsub fast float %4094, %4084
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4106 = extractvalue %dx.types.CBufRet.i32 %4104, 1
  %4107 = udiv i32 %4106, %4105
  %4108 = fsub fast float %4095, %4098
  %4109 = fsub fast float %4096, %4099
  %4110 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4111 = call float @dx.op.binary.f32(i32 35, float %4109, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call float @dx.op.binary.f32(i32 36, float %4110, float %4100)  ; FMin(a,b)
  %4113 = call float @dx.op.binary.f32(i32 36, float %4111, float %4101)  ; FMin(a,b)
  %4114 = add i32 %4105, -1
  %4115 = add i32 %4107, -1
  %4116 = fmul fast float %4112, %4103
  %4117 = fmul fast float %4113, %4103
  %4118 = fptoui float %4116 to i32
  %4119 = fptoui float %4117 to i32
  %4120 = call i32 @dx.op.binary.i32(i32 40, i32 %4118, i32 %4114)  ; UMin(a,b)
  %4121 = call i32 @dx.op.binary.i32(i32 40, i32 %4119, i32 %4115)  ; UMin(a,b)
  %4122 = mul i32 %4121, %4105
  %4123 = add i32 %4122, %4120
  %4124 = shl i32 %4123, 2
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = icmp eq i32 %4126, -1
  br i1 %4127, label %4344, label %4128

; <label>:4128                                    ; preds = %4073
  %4129 = mul i32 %4126, 148
  %4130 = add i32 %4129, 4
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = add i32 %4129, 8
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = add i32 %4129, 36
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = add i32 %4129, 60
  %4140 = add i32 %4129, 92
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = add i32 %4129, 116
  %4144 = fsub fast float %4095, %4132
  %4145 = fsub fast float %4096, %4135
  %4146 = fmul fast float %4103, %4144
  %4147 = fmul fast float %4103, %4145
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4153 = call float @dx.op.unary.f32(i32 83, float %4148)  ; DerivCoarseX(value)
  %4154 = call float @dx.op.unary.f32(i32 83, float %4150)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 84, float %4148)  ; DerivCoarseY(value)
  %4156 = call float @dx.op.unary.f32(i32 84, float %4150)  ; DerivCoarseY(value)
  %4157 = fmul fast float %4153, %4152
  %4158 = fmul fast float %4154, %4152
  %4159 = fmul fast float %4155, %4152
  %4160 = fmul fast float %4156, %4152
  %4161 = call float @dx.op.dot2.f32(i32 54, float %4159, float %4160, float %4159, float %4160)  ; Dot2(ax,ay,bx,by)
  %4162 = call float @dx.op.dot2.f32(i32 54, float %4157, float %4158, float %4157, float %4158)  ; Dot2(ax,ay,bx,by)
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float %4161)  ; FMax(a,b)
  %4164 = call float @dx.op.unary.f32(i32 23, float %4163)  ; Log(value)
  %4165 = fmul fast float %4164, 5.000000e-01
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4168 = fadd fast float %4167, %4165
  %4169 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4172 = fadd fast float %4171, %4169
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = fadd fast float %4172, %4174
  %4176 = add i32 %4142, 0
  %4177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4177, i32 0)  ; GetDimensions(handle,mipLevel)
  %4179 = extractvalue %dx.types.Dimensions %4178, 0
  %4180 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4179)  ; FirstbitLo(value)
  %4181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.i32 %4181, 1
  %4183 = sub nsw i32 %4182, %4180
  %4184 = sitofp i32 %4183 to float
  %4185 = fsub fast float %4175, %4184
  %4186 = call float @dx.op.binary.f32(i32 35, float %4185, float 0.000000e+00)  ; FMax(a,b)
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4177, %dx.types.Handle %34, float %4148, float %4150, float %4138, float undef, i32 0, i32 0, i32 undef, float %4186)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = fcmp ule float %4188, 0x3FE0101020000000
  %4190 = extractvalue %dx.types.CBufRet.i32 %4181, 0
  %4191 = and i32 %4190, 128
  %4192 = icmp ne i32 %4191, 0
  %4193 = and i1 %4189, %4192
  br i1 %4193, label %4344, label %4194

; <label>:4194                                    ; preds = %4128
  %4195 = add i32 %4129, 20
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4129, 24
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = add i32 %4129, 40
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = add i32 %4129, 96
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4209 = fmul fast float %4208, %4148
  %4210 = fmul fast float %4208, %4150
  %4211 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4212 = fadd fast float %4209, %4211
  %4213 = fadd fast float %4210, %4211
  %4214 = add i32 %4206, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4215, i32 0)  ; GetDimensions(handle,mipLevel)
  %4217 = extractvalue %dx.types.Dimensions %4216, 0
  %4218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4217)  ; FirstbitLo(value)
  %4219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.i32 %4219, 1
  %4221 = sub nsw i32 %4220, %4218
  %4222 = sitofp i32 %4221 to float
  %4223 = fsub fast float %4172, %4222
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4215, %dx.types.Handle %34, float %4212, float %4213, float %4203, float undef, i32 0, i32 0, i32 undef, float %4224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = fmul fast float %4226, %4197
  %4228 = fadd fast float %4227, %4200
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4237 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4238 = fadd fast float %4234, %4095
  %4239 = fadd fast float %4236, %4096
  %4240 = fadd fast float %4228, %4237
  %4241 = fmul fast float %4238, %4230
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4231, float %4241)  ; FMad(a,b,c)
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4232, float %4242)  ; FMad(a,b,c)
  %4244 = fsub fast float %4243, %4237
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4247 = fsub fast float %4244, %4246
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 0
  %4250 = call i32 @dx.op.binary.i32(i32 40, i32 %4126, i32 %4249)  ; UMin(a,b)
  %4251 = mul i32 %4250, 36
  %4252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.i32 %4252, 0
  %4254 = add i32 %4251, 4
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = fmul fast float %4256, %4148
  %4258 = fmul fast float %4256, %4150
  %4259 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4260 = fadd fast float %4257, %4259
  %4261 = fadd fast float %4258, %4259
  %4262 = icmp eq i32 %4253, 0
  br i1 %4262, label %4331, label %4263

; <label>:4263                                    ; preds = %4194
  br label %4264

; <label>:4264                                    ; preds = %4321, %4263
  %4265 = phi float [ %4322, %4321 ], [ 0.000000e+00, %4263 ]
  %4266 = phi float [ %4323, %4321 ], [ 0.000000e+00, %4263 ]
  %4267 = phi float [ %4324, %4321 ], [ 0.000000e+00, %4263 ]
  %4268 = phi float [ %4325, %4321 ], [ 0.000000e+00, %4263 ]
  %4269 = phi float [ %4326, %4321 ], [ 0.000000e+00, %4263 ]
  %4270 = phi float [ %4327, %4321 ], [ 0.000000e+00, %4263 ]
  %4271 = phi i32 [ %4328, %4321 ], [ 0, %4263 ]
  %4272 = shl i32 %4271, 2
  %4273 = add i32 %4139, %4272
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4143, %4272
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = add i32 %4278, 0
  %4280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4280, i32 0)  ; GetDimensions(handle,mipLevel)
  %4282 = extractvalue %dx.types.Dimensions %4281, 0
  %4283 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4282)  ; FirstbitLo(value)
  %4284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.i32 %4284, 1
  %4286 = sub nsw i32 %4285, %4283
  %4287 = sitofp i32 %4286 to float
  %4288 = fsub fast float %4172, %4287
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4280, %dx.types.Handle %34, float %4260, float %4261, float %4275, float undef, i32 0, i32 0, i32 undef, float %4289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4321

; <label>:4293                                    ; preds = %4264
  %4294 = add i32 %4254, %4272
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4294, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, 32767
  %4298 = mul nuw nsw i32 %4297, 928
  %4299 = add nuw nsw i32 %4298, 48
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = add nuw nsw i32 %4298, 60
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = fmul fast float %4301, %4291
  %4310 = fmul fast float %4302, %4291
  %4311 = fmul fast float %4303, %4291
  %4312 = fadd fast float %4309, %4265
  %4313 = fadd fast float %4310, %4266
  %4314 = fadd fast float %4311, %4267
  %4315 = fmul fast float %4306, %4291
  %4316 = fmul fast float %4307, %4291
  %4317 = fmul fast float %4308, %4291
  %4318 = fadd fast float %4315, %4268
  %4319 = fadd fast float %4316, %4269
  %4320 = fadd fast float %4317, %4270
  br label %4321

; <label>:4321                                    ; preds = %4293, %4264
  %4322 = phi float [ %4312, %4293 ], [ %4265, %4264 ]
  %4323 = phi float [ %4313, %4293 ], [ %4266, %4264 ]
  %4324 = phi float [ %4314, %4293 ], [ %4267, %4264 ]
  %4325 = phi float [ %4318, %4293 ], [ %4268, %4264 ]
  %4326 = phi float [ %4319, %4293 ], [ %4269, %4264 ]
  %4327 = phi float [ %4320, %4293 ], [ %4270, %4264 ]
  %4328 = add nuw i32 %4271, 1
  %4329 = icmp eq i32 %4328, %4253
  br i1 %4329, label %4330, label %4264

; <label>:4330                                    ; preds = %4321
  br label %4331

; <label>:4331                                    ; preds = %4330, %4194
  %4332 = phi float [ 0.000000e+00, %4194 ], [ %4322, %4330 ]
  %4333 = phi float [ 0.000000e+00, %4194 ], [ %4323, %4330 ]
  %4334 = phi float [ 0.000000e+00, %4194 ], [ %4324, %4330 ]
  %4335 = phi float [ 0.000000e+00, %4194 ], [ %4325, %4330 ]
  %4336 = phi float [ 0.000000e+00, %4194 ], [ %4326, %4330 ]
  %4337 = phi float [ 0.000000e+00, %4194 ], [ %4327, %4330 ]
  %4338 = fadd fast float %4335, %4332
  %4339 = fmul fast float %4338, 0x3F847AE140000000
  %4340 = fadd fast float %4336, %4333
  %4341 = fmul fast float %4340, 0x3F847AE140000000
  %4342 = fadd fast float %4337, %4334
  %4343 = fmul fast float %4342, 0x3F847AE140000000
  br label %4344

; <label>:4344                                    ; preds = %4331, %4128, %4073, %4070, %4041, %4003
  %4345 = phi float [ %4055, %4041 ], [ -1.310720e+05, %4003 ], [ %4247, %4331 ], [ -1.310720e+05, %4073 ], [ -1.310720e+05, %4128 ], [ -1.310720e+05, %4070 ]
  %4346 = phi float [ %4065, %4041 ], [ 0.000000e+00, %4003 ], [ %4339, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4347 = phi float [ %4067, %4041 ], [ 0.000000e+00, %4003 ], [ %4341, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4348 = phi float [ %4069, %4041 ], [ 0.000000e+00, %4003 ], [ %4343, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4349 = phi i1 [ true, %4041 ], [ false, %4003 ], [ true, %4331 ], [ false, %4073 ], [ false, %4128 ], [ false, %4070 ]
  %4350 = and i32 %190, 3
  %4351 = icmp eq i32 %4350, 1
  %4352 = select i1 %4351, float 1.000000e+00, float 0.000000e+00
  %4353 = fsub fast float %4345, %142
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = select i1 %4349, float %4354, float 1.000000e+00
  %4356 = fmul fast float %4355, %4352
  %4357 = icmp eq i32 %4350, 3
  %4358 = select i1 %4357, float 1.000000e+00, float %4356
  %4359 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4358)  ; FMax(a,b)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fcmp fast une float %4360, 0.000000e+00
  %4362 = fsub fast float -0.000000e+00, %160
  %4363 = fsub fast float -0.000000e+00, %161
  %4364 = fsub fast float -0.000000e+00, %162
  br i1 %4361, label %4365, label %4527

; <label>:4365                                    ; preds = %4344
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = fmul fast float %4360, 2.500000e+00
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fmul fast float %4360, 0x4013FFFFE0000000
  %4370 = fadd fast float %4369, 0xBFFFFFFFE0000000
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fmul fast float %4360, 0x4004000020000000
  %4373 = fadd fast float %4372, 0xBFF8000040000000
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4376 = fmul fast float %3883, 1.000000e+01
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4378 = fmul fast float %4377, 2.000000e+00
  %4379 = fsub fast float 3.000000e+00, %4378
  %4380 = fmul fast float %4377, %4377
  %4381 = fmul fast float %4380, %4379
  %4382 = fsub fast float 1.000000e+00, %4381
  %4383 = fsub fast float 0x3FE3333340000000, %3904
  %4384 = fmul fast float %4383, 0x400AAAAAA0000000
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4382, %4385
  %4387 = fmul fast float %3982, 0x3FEA2B8620000000
  %4388 = fmul fast float %3983, 0x3FEA2B8620000000
  %4389 = fmul fast float %3984, 0x3FEA2B8620000000
  %4390 = fadd fast float %4387, 0x3FC81DFBA0000000
  %4391 = fmul fast float %4390, %3982
  %4392 = fadd fast float %4391, 0x3F910E6020000000
  %4393 = fadd fast float %4388, 0x3FC81DFBA0000000
  %4394 = fmul fast float %4393, %3983
  %4395 = fadd fast float %4394, 0x3F910E6020000000
  %4396 = fadd fast float %4389, 0x3FC81DFBA0000000
  %4397 = fmul fast float %4396, %3984
  %4398 = fadd fast float %4397, 0x3F910E6020000000
  %4399 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = fsub fast float %4399, %3982
  %4403 = fsub fast float %4400, %3983
  %4404 = fsub fast float %4401, %3984
  %4405 = fmul fast float %4402, %4375
  %4406 = fmul fast float %4405, %4386
  %4407 = fmul fast float %4403, %4375
  %4408 = fmul fast float %4407, %4386
  %4409 = fmul fast float %4404, %4375
  %4410 = fmul fast float %4409, %4386
  %4411 = fadd fast float %4406, %3982
  %4412 = fadd fast float %4408, %3983
  %4413 = fadd fast float %4410, %3984
  %4414 = fmul fast float %3828, %3828
  %4415 = fmul fast float %4414, %4414
  %4416 = fadd fast float %4371, 1.000000e+00
  %4417 = fsub fast float %4416, %4386
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fsub fast float 1.000000e+00, %4415
  %4422 = call float @dx.op.binary.f32(i32 36, float %4418, float %4421)  ; FMin(a,b)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4424 = call float @dx.op.binary.f32(i32 35, float %4422, float %4423)  ; FMax(a,b)
  %4425 = fadd fast float %4420, 0xBFE4CCCCC0000000
  %4426 = fmul fast float %4425, 0x4006DB6DA0000000
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4427, 2.000000e+00
  %4429 = fsub fast float 3.000000e+00, %4428
  %4430 = bitcast float %3901 to i32
  %4431 = ashr i32 %4430, 1
  %4432 = add nsw i32 %4431, 532487669
  %4433 = bitcast i32 %4432 to float
  %4434 = fsub fast float 1.000000e+00, %4433
  %4435 = bitcast float %4434 to i32
  %4436 = sub nsw i32 2129859010, %4435
  %4437 = bitcast i32 %4436 to float
  %4438 = fmul fast float %4437, 2.000000e+00
  %4439 = bitcast float %3902 to i32
  %4440 = ashr i32 %4439, 1
  %4441 = add nsw i32 %4440, 532487669
  %4442 = bitcast i32 %4441 to float
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = bitcast float %4443 to i32
  %4445 = sub nsw i32 2129859010, %4444
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %4446, 2.000000e+00
  %4448 = bitcast float %3903 to i32
  %4449 = ashr i32 %4448, 1
  %4450 = add nsw i32 %4449, 532487669
  %4451 = bitcast i32 %4450 to float
  %4452 = fsub fast float 1.000000e+00, %4451
  %4453 = bitcast float %4452 to i32
  %4454 = sub nsw i32 2129859010, %4453
  %4455 = bitcast i32 %4454 to float
  %4456 = fmul fast float %4455, 2.000000e+00
  %4457 = fsub fast float 0x4002A9FBE0000000, %4438
  %4458 = fadd fast float %4438, 0x3FD54FDF00000000
  %4459 = bitcast float %4458 to i32
  %4460 = sub nsw i32 2129859010, %4459
  %4461 = bitcast i32 %4460 to float
  %4462 = fmul fast float %4461, %4457
  %4463 = fmul fast float %4462, %4462
  %4464 = fsub fast float 0x4002A9FBE0000000, %4447
  %4465 = fadd fast float %4447, 0x3FD54FDF00000000
  %4466 = bitcast float %4465 to i32
  %4467 = sub nsw i32 2129859010, %4466
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4468, %4464
  %4470 = fmul fast float %4469, %4469
  %4471 = fsub fast float 0x4002A9FBE0000000, %4456
  %4472 = fadd fast float %4456, 0x3FD54FDF00000000
  %4473 = bitcast float %4472 to i32
  %4474 = sub nsw i32 2129859010, %4473
  %4475 = bitcast i32 %4474 to float
  %4476 = fmul fast float %4475, %4471
  %4477 = fmul fast float %4476, %4476
  %4478 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4463)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4470)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4477)  ; FMax(a,b)
  %4481 = fsub fast float 1.000000e+00, %4366
  %4482 = fadd fast float %4481, %4382
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fsub fast float 1.000000e+00, %4358
  %4485 = fmul fast float %4424, %4484
  %4486 = fmul fast float %4427, %4427
  %4487 = fmul fast float %4486, %4485
  %4488 = fmul fast float %4487, %4429
  %4489 = fmul fast float %4484, 0xBFE99999A0000000
  %4490 = fmul fast float %4489, %4375
  %4491 = fmul fast float %4490, %4386
  %4492 = fadd fast float %4491, 1.000000e+00
  %4493 = fadd fast float %3904, -1.000000e+00
  %4494 = fmul fast float %4492, %4493
  %4495 = fadd fast float %4494, 1.000000e+00
  %4496 = fsub fast float %4478, %3901
  %4497 = fsub fast float %4479, %3902
  %4498 = fsub fast float %4480, %3903
  %4499 = fmul fast float %4488, %4496
  %4500 = fmul fast float %4488, %4497
  %4501 = fmul fast float %4488, %4498
  %4502 = fadd fast float %4499, %3901
  %4503 = fadd fast float %4500, %3902
  %4504 = fadd fast float %4501, %3903
  %4505 = fsub fast float %90, %3858
  %4506 = fsub fast float %92, %3859
  %4507 = fsub fast float %94, %3860
  %4508 = fmul fast float %4488, %4505
  %4509 = fmul fast float %4488, %4506
  %4510 = fmul fast float %4488, %4507
  %4511 = fadd fast float %4508, %3858
  %4512 = fadd fast float %4509, %3859
  %4513 = fadd fast float %4510, %3860
  %4514 = fmul fast float %4488, %4483
  %4515 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4516 = fsub fast float 1.000000e+00, %4515
  %4517 = fmul fast float %4514, %4516
  %4518 = fadd fast float %4517, %4515
  %4519 = fsub fast float 1.000000e+00, %3828
  %4520 = fmul fast float %4488, %4519
  %4521 = fadd fast float %4520, %3828
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4511, float %4512, float %4513, float %4511, float %4512, float %4513)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = call float @dx.op.unary.f32(i32 25, float %4522)  ; Rsqrt(value)
  %4524 = fmul fast float %4511, %4523
  %4525 = fmul fast float %4512, %4523
  %4526 = fmul fast float %4513, %4523
  br label %4527

; <label>:4527                                    ; preds = %4365, %4344
  %4528 = phi float [ %4411, %4365 ], [ %3982, %4344 ]
  %4529 = phi float [ %4412, %4365 ], [ %3983, %4344 ]
  %4530 = phi float [ %4413, %4365 ], [ %3984, %4344 ]
  %4531 = phi float [ %4502, %4365 ], [ %3901, %4344 ]
  %4532 = phi float [ %4503, %4365 ], [ %3902, %4344 ]
  %4533 = phi float [ %4504, %4365 ], [ %3903, %4344 ]
  %4534 = phi float [ %4524, %4365 ], [ %3858, %4344 ]
  %4535 = phi float [ %4525, %4365 ], [ %3859, %4344 ]
  %4536 = phi float [ %4526, %4365 ], [ %3860, %4344 ]
  %4537 = phi float [ %4518, %4365 ], [ %3904, %4344 ]
  %4538 = phi float [ %4521, %4365 ], [ %3828, %4344 ]
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4542 = fmul fast float %4540, %81
  %4543 = fmul fast float %4541, %82
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4542, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = fmul fast float %4548, %4546
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = fmul fast float %4551, %4545
  %4553 = fadd fast float %4552, 1.000000e+00
  %4554 = select i1 %216, float 0.000000e+00, float %4533
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float %4362, float %4363, float %4364)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = fmul fast float %4557, 2.000000e+00
  %4559 = fmul fast float %4558, %4534
  %4560 = fmul fast float %4558, %4535
  %4561 = fmul fast float %4558, %4536
  %4562 = fsub fast float %160, %4559
  %4563 = fsub fast float %161, %4560
  %4564 = fsub fast float %162, %4561
  %4565 = call float @dx.op.binary.f32(i32 36, float %4538, float %4553)  ; FMin(a,b)
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = bitcast float %4566 to i32
  %4568 = ashr i32 %4567, 1
  %4569 = add nsw i32 %4568, 532487669
  %4570 = bitcast i32 %4569 to float
  %4571 = fsub fast float 1.000000e+00, %4537
  %4572 = call float @dx.op.binary.f32(i32 35, float %4571, float 0x3F847AE140000000)  ; FMax(a,b)
  %4573 = fmul fast float %4572, %4572
  %4574 = fmul fast float %4573, %4573
  %4575 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4570, float %4574, float %4575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = fsub fast float 1.000000e+00, %4538
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = call float @dx.op.dot3.f32(i32 55, float %58, float %54, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4582, 0x3FD20DD760000000
  %4584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4585 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = fcmp fast oeq float %4585, 0.000000e+00
  %4587 = fcmp fast oeq float %4584, 0.000000e+00
  %4588 = or i1 %4587, %4586
  br i1 %4588, label %4618, label %4589

; <label>:4589                                    ; preds = %4527
  %4590 = fsub fast float -0.000000e+00, %61
  %4591 = fsub fast float -0.000000e+00, %59
  %4592 = call float @dx.op.unary.f32(i32 24, float %4585)  ; Sqrt(value)
  %4593 = fdiv fast float %4592, %4584
  %4594 = fcmp fast ogt float %4593, 0x3FFB6F8900000000
  %4595 = select i1 %4594, float 0x3FFB6F8900000000, float %4593
  %4596 = fmul fast float %4595, 0x3FE8A23460000000
  %4597 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4598 = call float @dx.op.binary.f32(i32 35, float %4595, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4599 = fmul fast float %4597, %4584
  %4600 = fmul fast float %4598, 0x3FF279A740000000
  %4601 = fadd fast float %4600, -1.000000e+00
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %60, float %4590, float %4591, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.unary.f32(i32 25, float %4602)  ; Rsqrt(value)
  %4604 = fmul fast float %4603, %4590
  %4605 = fmul fast float %4603, %4591
  %4606 = fmul fast float %4603, %60
  %4607 = fmul fast float %4601, %4601
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = fmul fast float %4598, 0x40005F8BE0000000
  %4610 = fsub fast float 0x400C5BF8A0000000, %4609
  %4611 = fdiv fast float %4599, %4610
  %4612 = fmul fast float %4611, 0x3FEE31C3C0000000
  %4613 = fmul fast float %4612, %4608
  %4614 = fmul fast float %4598, 0x3FDACB7480000000
  %4615 = fadd fast float %4614, 0xBFD7347680000000
  %4616 = fmul fast float %4615, %4611
  %4617 = fmul fast float %4616, %4608
  br label %4618

; <label>:4618                                    ; preds = %4589, %4527
  %4619 = phi float [ %4604, %4589 ], [ 0.000000e+00, %4527 ]
  %4620 = phi float [ %4605, %4589 ], [ 0.000000e+00, %4527 ]
  %4621 = phi float [ %4606, %4589 ], [ 0.000000e+00, %4527 ]
  %4622 = phi float [ %4613, %4589 ], [ 0.000000e+00, %4527 ]
  %4623 = phi float [ %4617, %4589 ], [ 0.000000e+00, %4527 ]
  %4624 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4621, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = fmul fast float %4624, 0x3FDF454380000000
  %4626 = fmul fast float %4624, %4624
  %4627 = fmul fast float %4626, 0x3FEE471020000000
  %4628 = fadd fast float %4627, 0xBFD42F6020000000
  %4629 = fmul fast float %4584, 0x3FD20DD760000000
  %4630 = fmul fast float %4628, %4623
  %4631 = fadd fast float %4630, %4629
  %4632 = fmul fast float %4625, %4622
  %4633 = fadd fast float %4631, %4632
  %4634 = fsub fast float %4631, %4632
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4620, float %4621, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fmul fast float %4635, 0x3FDF454380000000
  %4637 = fmul fast float %4635, %4635
  %4638 = fmul fast float %4637, 0x3FEE471020000000
  %4639 = fadd fast float %4638, 0xBFD42F6020000000
  %4640 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4622, float %4623, float 0x3FD20DD760000000, float %4636, float %4639)  ; Dot3(ax,ay,az,bx,by,bz)
  %4641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4642 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = fcmp fast oeq float %4642, 0.000000e+00
  %4644 = fcmp fast oeq float %4641, 0.000000e+00
  %4645 = or i1 %4644, %4643
  br i1 %4645, label %4675, label %4646

; <label>:4646                                    ; preds = %4618
  %4647 = fsub fast float -0.000000e+00, %57
  %4648 = fsub fast float -0.000000e+00, %55
  %4649 = call float @dx.op.unary.f32(i32 24, float %4642)  ; Sqrt(value)
  %4650 = fdiv fast float %4649, %4641
  %4651 = fcmp fast ogt float %4650, 0x3FFB6F8900000000
  %4652 = select i1 %4651, float 0x3FFB6F8900000000, float %4650
  %4653 = fmul fast float %4652, 0x3FE8A23460000000
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = call float @dx.op.binary.f32(i32 35, float %4652, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4656 = fmul fast float %4654, %4641
  %4657 = fmul fast float %4655, 0x3FF279A740000000
  %4658 = fadd fast float %4657, -1.000000e+00
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %56, float %4647, float %4648, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 25, float %4659)  ; Rsqrt(value)
  %4661 = fmul fast float %4660, %4647
  %4662 = fmul fast float %4660, %4648
  %4663 = fmul fast float %4660, %56
  %4664 = fmul fast float %4658, %4658
  %4665 = fsub fast float 1.000000e+00, %4664
  %4666 = fmul fast float %4655, 0x40005F8BE0000000
  %4667 = fsub fast float 0x400C5BF8A0000000, %4666
  %4668 = fdiv fast float %4656, %4667
  %4669 = fmul fast float %4668, 0x3FEE31C3C0000000
  %4670 = fmul fast float %4669, %4665
  %4671 = fmul fast float %4655, 0x3FDACB7480000000
  %4672 = fadd fast float %4671, 0xBFD7347680000000
  %4673 = fmul fast float %4672, %4668
  %4674 = fmul fast float %4673, %4665
  br label %4675

; <label>:4675                                    ; preds = %4646, %4618
  %4676 = phi float [ %4661, %4646 ], [ 0.000000e+00, %4618 ]
  %4677 = phi float [ %4662, %4646 ], [ 0.000000e+00, %4618 ]
  %4678 = phi float [ %4663, %4646 ], [ 0.000000e+00, %4618 ]
  %4679 = phi float [ %4670, %4646 ], [ 0.000000e+00, %4618 ]
  %4680 = phi float [ %4674, %4646 ], [ 0.000000e+00, %4618 ]
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = fmul fast float %4681, 0x3FDF454380000000
  %4683 = fmul fast float %4681, %4681
  %4684 = fmul fast float %4683, 0x3FEE471020000000
  %4685 = fadd fast float %4684, 0xBFD42F6020000000
  %4686 = fmul fast float %4641, 0x3FD20DD760000000
  %4687 = fmul fast float %4685, %4680
  %4688 = fadd fast float %4687, %4686
  %4689 = fmul fast float %4682, %4679
  %4690 = fadd fast float %4688, %4689
  %4691 = fsub fast float %4688, %4689
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = fmul fast float %4692, 0x3FDF454380000000
  %4694 = fmul fast float %4692, %4692
  %4695 = fmul fast float %4694, 0x3FEE471020000000
  %4696 = fadd fast float %4695, 0xBFD42F6020000000
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4679, float %4680, float 0x3FD20DD760000000, float %4693, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4699 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = fcmp fast oeq float %4699, 0.000000e+00
  %4701 = fcmp fast oeq float %4698, 0.000000e+00
  %4702 = or i1 %4701, %4700
  br i1 %4702, label %4732, label %4703

; <label>:4703                                    ; preds = %4675
  %4704 = fsub fast float -0.000000e+00, %53
  %4705 = fsub fast float -0.000000e+00, %51
  %4706 = call float @dx.op.unary.f32(i32 24, float %4699)  ; Sqrt(value)
  %4707 = fdiv fast float %4706, %4698
  %4708 = fcmp fast ogt float %4707, 0x3FFB6F8900000000
  %4709 = select i1 %4708, float 0x3FFB6F8900000000, float %4707
  %4710 = fmul fast float %4709, 0x3FE8A23460000000
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = call float @dx.op.binary.f32(i32 35, float %4709, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4713 = fmul fast float %4711, %4698
  %4714 = fmul fast float %4712, 0x3FF279A740000000
  %4715 = fadd fast float %4714, -1.000000e+00
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4704, float %4705, float %52, float %4704, float %4705, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.unary.f32(i32 25, float %4716)  ; Rsqrt(value)
  %4718 = fmul fast float %4717, %4704
  %4719 = fmul fast float %4717, %4705
  %4720 = fmul fast float %4717, %52
  %4721 = fmul fast float %4715, %4715
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = fmul fast float %4712, 0x40005F8BE0000000
  %4724 = fsub fast float 0x400C5BF8A0000000, %4723
  %4725 = fdiv fast float %4713, %4724
  %4726 = fmul fast float %4725, 0x3FEE31C3C0000000
  %4727 = fmul fast float %4726, %4722
  %4728 = fmul fast float %4712, 0x3FDACB7480000000
  %4729 = fadd fast float %4728, 0xBFD7347680000000
  %4730 = fmul fast float %4729, %4725
  %4731 = fmul fast float %4730, %4722
  br label %4732

; <label>:4732                                    ; preds = %4703, %4675
  %4733 = phi float [ %4718, %4703 ], [ 0.000000e+00, %4675 ]
  %4734 = phi float [ %4719, %4703 ], [ 0.000000e+00, %4675 ]
  %4735 = phi float [ %4720, %4703 ], [ 0.000000e+00, %4675 ]
  %4736 = phi float [ %4727, %4703 ], [ 0.000000e+00, %4675 ]
  %4737 = phi float [ %4731, %4703 ], [ 0.000000e+00, %4675 ]
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fmul fast float %4738, 0x3FDF454380000000
  %4740 = fmul fast float %4738, %4738
  %4741 = fmul fast float %4740, 0x3FEE471020000000
  %4742 = fadd fast float %4741, 0xBFD42F6020000000
  %4743 = fmul fast float %4698, 0x3FD20DD760000000
  %4744 = fmul fast float %4742, %4737
  %4745 = fadd fast float %4744, %4743
  %4746 = fmul fast float %4739, %4736
  %4747 = fadd fast float %4745, %4746
  %4748 = fsub fast float %4745, %4746
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4734, float %4735, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = fmul fast float %4749, 0x3FDF454380000000
  %4751 = fmul fast float %4749, %4749
  %4752 = fmul fast float %4751, 0x3FEE471020000000
  %4753 = fadd fast float %4752, 0xBFD42F6020000000
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4736, float %4737, float 0x3FD20DD760000000, float %4750, float %4753)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.binary.f32(i32 35, float %4633, float 0.000000e+00)  ; FMax(a,b)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4690, float 0.000000e+00)  ; FMax(a,b)
  %4757 = call float @dx.op.binary.f32(i32 35, float %4747, float 0.000000e+00)  ; FMax(a,b)
  %4758 = call float @dx.op.binary.f32(i32 35, float %4634, float 0.000000e+00)  ; FMax(a,b)
  %4759 = call float @dx.op.binary.f32(i32 35, float %4691, float 0.000000e+00)  ; FMax(a,b)
  %4760 = call float @dx.op.binary.f32(i32 35, float %4748, float 0.000000e+00)  ; FMax(a,b)
  %4761 = call float @dx.op.binary.f32(i32 35, float %4640, float 0.000000e+00)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4697, float 0.000000e+00)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4754, float 0.000000e+00)  ; FMax(a,b)
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4766 = call float @dx.op.binary.f32(i32 36, float %4528, float %4765)  ; FMin(a,b)
  %4767 = fmul fast float %4766, %4566
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = bitcast float %4768 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = call float @dx.op.binary.f32(i32 36, float %4529, float %4765)  ; FMin(a,b)
  %4773 = fmul fast float %4772, %4566
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = call float @dx.op.binary.f32(i32 36, float %4530, float %4765)  ; FMin(a,b)
  %4779 = fmul fast float %4778, %4566
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = bitcast float %4780 to i32
  %4782 = sub nsw i32 2129859010, %4781
  %4783 = bitcast i32 %4782 to float
  %4784 = fmul fast float %4755, %4565
  %4785 = fmul fast float %4784, %4771
  %4786 = fmul fast float %4756, %4565
  %4787 = fmul fast float %4786, %4777
  %4788 = fmul fast float %4757, %4565
  %4789 = fmul fast float %4788, %4783
  %4790 = call float @dx.op.binary.f32(i32 36, float %4531, float %4765)  ; FMin(a,b)
  %4791 = fmul fast float %4790, %4566
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = bitcast float %4792 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = call float @dx.op.binary.f32(i32 36, float %4532, float %4765)  ; FMin(a,b)
  %4797 = fmul fast float %4796, %4566
  %4798 = fsub fast float 1.000000e+00, %4797
  %4799 = bitcast float %4798 to i32
  %4800 = sub nsw i32 2129859010, %4799
  %4801 = bitcast i32 %4800 to float
  %4802 = call float @dx.op.binary.f32(i32 36, float %4554, float %4765)  ; FMin(a,b)
  %4803 = fmul fast float %4802, %4566
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = fmul fast float %4761, %4565
  %4809 = fmul fast float %4808, %4795
  %4810 = fmul fast float %4762, %4565
  %4811 = fmul fast float %4810, %4801
  %4812 = fmul fast float %4763, %4565
  %4813 = fmul fast float %4812, %4807
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4787, float %4789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %216, float 0.000000e+00, float %4785
  %4816 = select i1 %216, float %4814, float %4787
  %4817 = select i1 %216, float 0.000000e+00, float %4789
  %4818 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4759, float %4760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4819 = select i1 %216, float 0.000000e+00, float %4758
  %4820 = select i1 %216, float %4818, float %4759
  %4821 = select i1 %216, float 0.000000e+00, float %4760
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4811, float %4813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = select i1 %216, float 0.000000e+00, float %4809
  %4824 = select i1 %216, float %4822, float %4811
  %4825 = select i1 %216, float 0.000000e+00, float %4813
  %4826 = fmul fast float %4556, 9.843750e-01
  %4827 = fmul fast float %4537, 9.843750e-01
  %4828 = fadd fast float %4826, 7.812500e-03
  %4829 = fadd fast float %4827, 7.812500e-03
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4828, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4833 = fmul fast float %4831, %4531
  %4834 = fmul fast float %4831, %4532
  %4835 = fmul fast float %4831, %4554
  %4836 = fadd fast float %4833, %4832
  %4837 = fadd fast float %4834, %4832
  %4838 = fadd fast float %4835, %4832
  %4839 = call float @dx.op.binary.f32(i32 35, float %4837, float %4838)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4836, float %4839)  ; FMax(a,b)
  %4841 = fsub fast float 1.000000e+00, %4840
  %4842 = fmul fast float %4840, %4537
  %4843 = fadd fast float %4842, %4537
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4847 = extractvalue %dx.types.CBufRet.f32 %4844, 2
  %4848 = extractvalue %dx.types.CBufRet.f32 %4844, 3
  %4849 = fmul fast float %4843, %4845
  %4850 = fadd fast float %4849, %4846
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = fmul fast float %4847, %4843
  %4853 = fadd fast float %4852, %4848
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fsub fast float 1.000000e+00, %4577
  %4856 = fadd fast float %4855, %4854
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fcmp fast olt float %4857, 1.000000e+00
  br i1 %4858, label %4859, label %5714

; <label>:4859                                    ; preds = %4732
  %4860 = fcmp fast olt float %4851, 1.000000e+00
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = fcmp fast ogt float %4862, 0.000000e+00
  %4864 = or i1 %4860, %4863
  %4865 = or i1 %4860, %4863
  %4866 = xor i1 %4865, true
  %4867 = zext i1 %4866 to i32
  br i1 %4864, label %4868, label %5111

; <label>:4868                                    ; preds = %4859
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4892 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4893 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.unary.f32(i32 6, float %4900)  ; FAbs(value)
  %4902 = fmul fast float %4901, 8.000000e+00
  %4903 = fadd fast float %4902, -6.000000e+00
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4899, 8.000000e+00
  %4906 = fmul fast float %4905, %4862
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fcmp fast ogt float %4907, 0.000000e+00
  br i1 %4908, label %4909, label %5086, !dx.controlflow.hints !81

; <label>:4909                                    ; preds = %4868
  %4910 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4911 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4912 = fsub fast float %4910, %4911
  %4913 = fmul fast float %4912, %4537
  %4914 = fadd fast float %4913, %4911
  %4915 = fmul fast float %229, 2.000000e+00
  %4916 = fmul fast float %230, 2.000000e+00
  %4917 = fadd fast float %4915, -1.000000e+00
  %4918 = fadd fast float %4916, -1.000000e+00
  %4919 = fmul fast float %4914, %4917
  %4920 = fmul fast float %4914, %4918
  %4921 = fadd fast float %4919, %81
  %4922 = fadd fast float %4920, %82
  %4923 = fmul fast float %4921, %4540
  %4924 = fmul fast float %4922, %4541
  %4925 = fadd fast float %4537, 0xBFE3333340000000
  %4926 = fmul fast float %4925, 0x4004000020000000
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, 3.000000e+00
  %4930 = fadd fast float %4929, %229
  %4931 = call float @dx.op.unary.f32(i32 27, float %4930)  ; Round_ni(value)
  %4932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4923, float %4924, float %4931, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 0
  %4934 = fcmp fast une float %4933, 0xFFF0000000000000
  %4935 = fcmp fast une float %4933, 0x7FF0000000000000
  %4936 = and i1 %4934, %4935
  %4937 = fcmp fast olt float %4933, 0.000000e+00
  %4938 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = select i1 %4936, float 1.000000e+00, float 0.000000e+00
  %4941 = fmul fast float %4940, %4907
  %4942 = fcmp fast ogt float %4941, 0.000000e+00
  br i1 %4942, label %4943, label %5086, !dx.controlflow.hints !82

; <label>:4943                                    ; preds = %4909
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4944, 2
  %4948 = select i1 %4937, float 0.000000e+00, float %4945
  %4949 = select i1 %4937, float 0.000000e+00, float %4946
  %4950 = select i1 %4937, float 0.000000e+00, float %4947
  %4951 = select i1 %4937, float %4870, float %4885
  %4952 = select i1 %4937, float %4875, float %4890
  %4953 = select i1 %4937, float %4880, float %4895
  %4954 = select i1 %4937, float %4871, float %4886
  %4955 = select i1 %4937, float %4876, float %4891
  %4956 = select i1 %4937, float %4881, float %4896
  %4957 = select i1 %4937, float %4872, float %4887
  %4958 = select i1 %4937, float %4877, float %4892
  %4959 = select i1 %4937, float %4882, float %4897
  %4960 = select i1 %4937, float %4873, float %4888
  %4961 = select i1 %4937, float %4878, float %4893
  %4962 = select i1 %4937, float %4883, float %4898
  %4963 = fadd fast float %4948, %140
  %4964 = fadd fast float %4949, %141
  %4965 = fadd fast float %4950, %142
  %4966 = fmul fast float %4963, %4951
  %4967 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4954, float %4966)  ; FMad(a,b,c)
  %4968 = call float @dx.op.tertiary.f32(i32 46, float %4965, float %4957, float %4967)  ; FMad(a,b,c)
  %4969 = fadd fast float %4968, %4960
  %4970 = fmul fast float %4963, %4952
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4955, float %4970)  ; FMad(a,b,c)
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4965, float %4958, float %4971)  ; FMad(a,b,c)
  %4973 = fadd fast float %4972, %4961
  %4974 = fmul fast float %4963, %4953
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4964, float %4956, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4965, float %4959, float %4975)  ; FMad(a,b,c)
  %4977 = fadd fast float %4976, %4962
  %4978 = fdiv fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4978, %4969
  %4980 = fmul fast float %4978, %4973
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = fmul fast float %4979, %4982
  %4985 = fmul fast float %4980, %4983
  %4986 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4987 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4988 = fadd fast float %4984, %4986
  %4989 = fadd fast float %4985, %4987
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4992 = fmul fast float %4991, %4562
  %4993 = fmul fast float %4991, %4563
  %4994 = fmul fast float %4991, %4564
  %4995 = fadd fast float %4992, %4963
  %4996 = fadd fast float %4993, %4964
  %4997 = fadd fast float %4994, %4965
  %4998 = fmul fast float %4995, %4951
  %4999 = call float @dx.op.tertiary.f32(i32 46, float %4996, float %4954, float %4998)  ; FMad(a,b,c)
  %5000 = call float @dx.op.tertiary.f32(i32 46, float %4997, float %4957, float %4999)  ; FMad(a,b,c)
  %5001 = fadd fast float %5000, %4960
  %5002 = fmul fast float %4995, %4952
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %4996, float %4955, float %5002)  ; FMad(a,b,c)
  %5004 = call float @dx.op.tertiary.f32(i32 46, float %4997, float %4958, float %5003)  ; FMad(a,b,c)
  %5005 = fadd fast float %5004, %4961
  %5006 = fmul fast float %4995, %4953
  %5007 = call float @dx.op.tertiary.f32(i32 46, float %4996, float %4956, float %5006)  ; FMad(a,b,c)
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %4997, float %4959, float %5007)  ; FMad(a,b,c)
  %5009 = fadd fast float %5008, %4962
  %5010 = fdiv fast float 1.000000e+00, %5009
  %5011 = fmul fast float %5010, %5001
  %5012 = fmul fast float %5010, %5005
  %5013 = fmul fast float %4988, 2.000000e+00
  %5014 = fadd fast float %5013, -1.000000e+00
  %5015 = call float @dx.op.unary.f32(i32 6, float %5014)  ; FAbs(value)
  %5016 = fmul fast float %5015, 5.000000e+00
  %5017 = fadd fast float %5016, -4.000000e+00
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, %4904
  %5020 = fsub fast float %4979, %5011
  %5021 = fmul fast float %4982, %5020
  %5022 = fmul fast float %5019, %5021
  %5023 = fsub fast float %5011, %4979
  %5024 = fmul fast float %4982, %5023
  %5025 = fadd fast float %5024, %5022
  %5026 = fsub fast float %5012, %4980
  %5027 = fmul fast float %4983, %5026
  %5028 = fmul fast float %5025, %4939
  %5029 = fmul fast float %5027, %4939
  %5030 = fadd fast float %5028, %4988
  %5031 = fadd fast float %5029, %4989
  %5032 = fsub fast float %5010, %4978
  %5033 = fmul fast float %5032, %4939
  %5034 = fadd fast float %5033, %4978
  %5035 = fdiv fast float 1.000000e+00, %5034
  %5036 = fadd fast float %4537, -1.000000e+00
  %5037 = fsub fast float %5035, %4977
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5040 = fmul fast float %5039, %5035
  %5041 = fdiv fast float 1.600000e+02, %5040
  %5042 = fmul fast float %5036, %5036
  %5043 = fmul fast float %5042, 0xBFB5B17960000000
  %5044 = fmul fast float %5043, %5037
  %5045 = fmul fast float %5044, %5041
  %5046 = call float @dx.op.unary.f32(i32 21, float %5045)  ; Exp(value)
  %5047 = fmul fast float %5046, 0x3FF04B2960000000
  %5048 = fsub fast float 0x3FF04B2960000000, %5047
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fmul fast float %5049, 4.000000e+00
  %5051 = fadd fast float %229, -5.000000e-01
  %5052 = fadd fast float %230, -5.000000e-01
  %5053 = fmul fast float %5049, 0x3FBEB851E0000000
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, %5051
  %5056 = fmul fast float %5054, %5052
  %5057 = fadd fast float %5030, %5055
  %5058 = fadd fast float %5031, %5056
  %5059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5057, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float %5050)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.ResRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.ResRet.f32 %5059, 2
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5065 = fmul fast float %5064, %5060
  %5066 = fmul fast float %5064, %5061
  %5067 = fmul fast float %5064, %5062
  %5068 = select i1 %216, float 0.000000e+00, float %5066
  %5069 = select i1 %216, float 0.000000e+00, float %5067
  %5070 = fmul fast float %5057, 2.000000e+00
  %5071 = fmul fast float %5058, 2.000000e+00
  %5072 = fadd fast float %5070, -1.000000e+00
  %5073 = fadd fast float %5071, -1.000000e+00
  %5074 = fmul fast float %5072, %5072
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fmul fast float %5077, %4904
  %5079 = fadd fast float %5078, %5076
  %5080 = fmul fast float %5073, %5073
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %5079, %5082
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, %4941
  br label %5086

; <label>:5086                                    ; preds = %4943, %4909, %4868
  %5087 = phi float [ %5065, %4943 ], [ 0.000000e+00, %4909 ], [ 0.000000e+00, %4868 ]
  %5088 = phi float [ %5068, %4943 ], [ 0.000000e+00, %4909 ], [ 0.000000e+00, %4868 ]
  %5089 = phi float [ %5069, %4943 ], [ 0.000000e+00, %4909 ], [ 0.000000e+00, %4868 ]
  %5090 = phi float [ %5085, %4943 ], [ 0.000000e+00, %4909 ], [ 0.000000e+00, %4868 ]
  %5091 = fcmp fast olt float %5090, 1.000000e+00
  %5092 = or i1 %5091, %4866
  %5093 = zext i1 %5092 to i32
  %5094 = fmul fast float %5090, %4851
  %5095 = fsub fast float %5090, %5094
  %5096 = fsub fast float 1.000000e+00, %4857
  %5097 = fmul fast float %5095, %5096
  %5098 = fadd fast float %5097, %4857
  %5099 = fsub fast float %5098, %5095
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5100, %4823
  %5102 = fmul fast float %5100, %4824
  %5103 = fmul fast float %5100, %4825
  %5104 = fsub fast float -0.000000e+00, %5098
  %5105 = fmul fast float %5095, %5087
  %5106 = fmul fast float %5095, %5088
  %5107 = fmul fast float %5095, %5089
  %5108 = fadd fast float %5105, %5101
  %5109 = fadd fast float %5106, %5102
  %5110 = fadd fast float %5107, %5103
  br label %5111

; <label>:5111                                    ; preds = %5086, %4859
  %5112 = phi float [ %4857, %4859 ], [ %5104, %5086 ]
  %5113 = phi float [ %4823, %4859 ], [ %5108, %5086 ]
  %5114 = phi float [ %4824, %4859 ], [ %5109, %5086 ]
  %5115 = phi float [ %4825, %4859 ], [ %5110, %5086 ]
  %5116 = phi i32 [ %4867, %4859 ], [ %5093, %5086 ]
  %5117 = icmp eq i32 %5116, 0
  br i1 %5117, label %5714, label %5118

; <label>:5118                                    ; preds = %5111
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5122 = fmul fast float %5120, %81
  %5123 = fmul fast float %5121, %82
  %5124 = fptoui float %5122 to i32
  %5125 = fptoui float %5123 to i32
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.CBufRet.f32 %5126, 2
  %5129 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5130 = fadd fast float %76, -4.000000e+00
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float 0.000000e+00)  ; FMax(a,b)
  %5132 = fadd fast float %5131, %5127
  %5133 = fmul fast float %5132, %5128
  %5134 = call float @dx.op.unary.f32(i32 23, float %5133)  ; Log(value)
  %5135 = fmul fast float %5134, %5129
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5138 = fmul fast float %5135, %5137
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.i32 %5140, 1
  %5142 = add i32 %5141, -1
  %5143 = uitofp i32 %5141 to float
  %5144 = fmul fast float %5143, %5139
  %5145 = fptoui float %5144 to i32
  %5146 = call i32 @dx.op.binary.i32(i32 40, i32 %5145, i32 %5142)  ; UMin(a,b)
  %5147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.i32 %5147, 2
  %5149 = extractvalue %dx.types.CBufRet.i32 %5147, 3
  %5150 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5125, i32 %5148, i32 %5124)  ; UMad(a,b,c)
  %5151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5146, i32 %5149, i32 %5150)  ; UMad(a,b,c)
  %5152 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5153 = fptoui float %5152 to i32
  %5154 = lshr i32 %5153, 5
  %5155 = call i32 @dx.op.binary.i32(i32 40, i32 %5154, i32 8191)  ; UMin(a,b)
  %5156 = fcmp fast ogt float %4354, 0.000000e+00
  %5157 = fcmp fast ogt float %4564, 0.000000e+00
  %5158 = and i1 %5157, %5156
  br i1 %5158, label %5159, label %5188

; <label>:5159                                    ; preds = %5118
  %5160 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = call float @dx.op.binary.f32(i32 35, float %5160, float -1.000000e+00)  ; FMax(a,b)
  %5162 = call float @dx.op.binary.f32(i32 36, float %5161, float 1.000000e+00)  ; FMin(a,b)
  %5163 = fmul fast float %5162, %5162
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = fmul fast float %5164, 0x3FFC6E2300000000
  %5166 = fsub fast float 1.000000e+00, %5165
  %5167 = fcmp fast ogt float %5166, 0.000000e+00
  %5168 = call float @dx.op.unary.f32(i32 24, float %5166)  ; Sqrt(value)
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = call float @dx.op.unary.f32(i32 23, float %5169)  ; Log(value)
  %5171 = fmul fast float %5170, 5.000000e+00
  %5172 = call float @dx.op.unary.f32(i32 21, float %5171)  ; Exp(value)
  %5173 = fmul fast float %5172, 0x3FEF591A60000000
  %5174 = fadd fast float %5173, 0x3F94DCB540000000
  %5175 = select i1 %5167, float %5174, float 1.000000e+00
  %5176 = fcmp fast oge float %5175, 1.000000e+00
  %5177 = fmul fast float %5160, 2.000000e+00
  %5178 = fadd fast float %5177, %4564
  %5179 = select i1 %5176, float %5178, float %4564
  %5180 = fsub fast float %5179, %4564
  %5181 = fmul fast float %5180, %4354
  %5182 = fadd fast float %5181, %4564
  %5183 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %5182, float %4562, float %4563, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = call float @dx.op.unary.f32(i32 25, float %5183)  ; Rsqrt(value)
  %5185 = fmul fast float %5184, %4562
  %5186 = fmul fast float %5184, %4563
  %5187 = fmul fast float %5182, %5184
  br label %5188

; <label>:5188                                    ; preds = %5159, %5118
  %5189 = phi float [ %5185, %5159 ], [ %4562, %5118 ]
  %5190 = phi float [ %5186, %5159 ], [ %4563, %5118 ]
  %5191 = phi float [ %5187, %5159 ], [ %4564, %5118 ]
  %5192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.i32 %5192, 2
  %5194 = add nsw i32 %5193, -1
  %5195 = call i32 @dx.op.binary.i32(i32 37, i32 %5194, i32 0)  ; IMax(a,b)
  %5196 = shl i32 %5155, 2
  %5197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5196, i32 undef)  ; BufferLoad(srv,index,wot)
  %5198 = extractvalue %dx.types.ResRet.i32 %5197, 0
  %5199 = lshr i32 %5198, 16
  %5200 = and i32 %5198, 65535
  %5201 = lshr i32 %5198, 21
  %5202 = lshr i32 %5200, 5
  %5203 = call i32 @dx.op.binary.i32(i32 40, i32 %5202, i32 %5195)  ; UMin(a,b)
  %5204 = icmp ugt i32 %5201, %5203
  br i1 %5204, label %5586, label %5205

; <label>:5205                                    ; preds = %5188
  br label %5206

; <label>:5206                                    ; preds = %5575, %5205
  %5207 = phi float [ %5576, %5575 ], [ 0.000000e+00, %5205 ]
  %5208 = phi float [ %5577, %5575 ], [ 0.000000e+00, %5205 ]
  %5209 = phi float [ %5578, %5575 ], [ 0.000000e+00, %5205 ]
  %5210 = phi float [ %5579, %5575 ], [ 1.000000e+00, %5205 ]
  %5211 = phi i32 [ %5583, %5575 ], [ %5201, %5205 ]
  %5212 = phi float [ %5580, %5575 ], [ 0.000000e+00, %5205 ]
  %5213 = phi float [ %5581, %5575 ], [ 0.000000e+00, %5205 ]
  %5214 = phi float [ %5582, %5575 ], [ 0.000000e+00, %5205 ]
  %5215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.i32 %5215, 2
  %5217 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5151, i32 %5216, i32 %5211)  ; UMad(a,b,c)
  %5218 = shl i32 %5217, 2
  %5219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5218, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.i32 %5219, 0
  %5221 = shl i32 %5211, 5
  %5222 = sub nsw i32 %5199, %5221
  %5223 = call i32 @dx.op.binary.i32(i32 37, i32 %5222, i32 0)  ; IMax(a,b)
  %5224 = call i32 @dx.op.binary.i32(i32 38, i32 %5223, i32 31)  ; IMin(a,b)
  %5225 = sub nsw i32 1, %5199
  %5226 = add nsw i32 %5225, %5200
  %5227 = call i32 @dx.op.binary.i32(i32 37, i32 %5226, i32 0)  ; IMax(a,b)
  %5228 = call i32 @dx.op.binary.i32(i32 38, i32 %5227, i32 32)  ; IMin(a,b)
  %5229 = and i32 %5228, 31
  %5230 = shl i32 -1, %5229
  %5231 = xor i32 %5230, -1
  %5232 = and i32 %5224, 31
  %5233 = shl i32 %5231, %5232
  %5234 = icmp eq i32 %5228, 32
  %5235 = select i1 %5234, i32 -1, i32 %5233
  %5236 = and i32 %5235, %5220
  %5237 = icmp eq i32 %5236, 0
  br i1 %5237, label %5575, label %5238

; <label>:5238                                    ; preds = %5206
  br label %5239

; <label>:5239                                    ; preds = %5349, %5238
  %5240 = phi float [ %5350, %5349 ], [ %5207, %5238 ]
  %5241 = phi float [ %5351, %5349 ], [ %5208, %5238 ]
  %5242 = phi float [ %5352, %5349 ], [ %5209, %5238 ]
  %5243 = phi float [ %5353, %5349 ], [ %5210, %5238 ]
  %5244 = phi i32 [ %5252, %5349 ], [ %5236, %5238 ]
  %5245 = phi float [ %5354, %5349 ], [ %5212, %5238 ]
  %5246 = phi float [ %5355, %5349 ], [ %5213, %5238 ]
  %5247 = phi float [ %5356, %5349 ], [ %5214, %5238 ]
  %5248 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5244)  ; FirstbitLo(value)
  %5249 = add i32 %5248, %5221
  %5250 = and i32 %5248, 31
  %5251 = shl i32 1, %5250
  %5252 = xor i32 %5251, %5244
  %5253 = mul i32 %5249, 72
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.ResRet.f32 %5254, 2
  %5258 = add i32 %5253, 12
  %5259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.i32 %5259, 0
  %5261 = add i32 %5253, 16
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5261, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = add i32 %5253, 28
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = add i32 %5253, 32
  %5270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5271 = extractvalue %dx.types.ResRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.ResRet.f32 %5270, 1
  %5273 = extractvalue %dx.types.ResRet.f32 %5270, 2
  %5274 = extractvalue %dx.types.ResRet.f32 %5270, 3
  %5275 = add i32 %5253, 48
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5279 = add i32 %5253, 56
  %5280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = add i32 %5253, 64
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = mul i32 %5249, 60
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = add i32 %5287, 12
  %5293 = add i32 %5287, 48
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = and i32 %5260, 32767
  %5299 = bitcast float %5255 to i32
  %5300 = icmp eq i32 %5299, -1
  %5301 = bitcast float %5256 to i32
  %5302 = and i32 %5260, 32768
  %5303 = icmp ne i32 %5302, 0
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5307 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5308 = fsub fast float %5289, %5305
  %5309 = fsub fast float %5290, %5306
  %5310 = fsub fast float %5291, %5307
  %5311 = fsub fast float %140, %5308
  %5312 = fsub fast float %141, %5309
  %5313 = fsub fast float %142, %5310
  %5314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = add i32 %5287, 24
  %5320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = extractvalue %dx.types.ResRet.f32 %5320, 1
  %5323 = extractvalue %dx.types.ResRet.f32 %5320, 2
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = add i32 %5287, 36
  %5326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.ResRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.ResRet.f32 %5326, 2
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = call float @dx.op.unary.f32(i32 6, float %5318)  ; FAbs(value)
  %5332 = call float @dx.op.unary.f32(i32 6, float %5324)  ; FAbs(value)
  %5333 = call float @dx.op.unary.f32(i32 6, float %5330)  ; FAbs(value)
  %5334 = fsub fast float %5295, %5331
  %5335 = fsub fast float %5296, %5332
  %5336 = fsub fast float %5297, %5333
  %5337 = fmul fast float %5334, %5263
  %5338 = fmul fast float %5335, %5264
  %5339 = fmul fast float %5336, %5265
  %5340 = call float @dx.op.binary.f32(i32 36, float %5338, float %5339)  ; FMin(a,b)
  %5341 = call float @dx.op.binary.f32(i32 36, float %5337, float %5340)  ; FMin(a,b)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call float @dx.op.binary.f32(i32 36, float %5243, float %5342)  ; FMin(a,b)
  %5344 = uitofp i1 %5303 to float
  %5345 = fadd fast float %4354, 1.000000e+00
  %5346 = fsub fast float %5345, %5344
  %5347 = fmul fast float %5343, %5346
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  br i1 %5348, label %5358, label %5349

; <label>:5349                                    ; preds = %5500, %5239
  %5350 = phi float [ %5564, %5500 ], [ %5240, %5239 ]
  %5351 = phi float [ %5565, %5500 ], [ %5241, %5239 ]
  %5352 = phi float [ %5566, %5500 ], [ %5242, %5239 ]
  %5353 = phi float [ %5573, %5500 ], [ %5243, %5239 ]
  %5354 = phi float [ %5570, %5500 ], [ %5245, %5239 ]
  %5355 = phi float [ %5571, %5500 ], [ %5246, %5239 ]
  %5356 = phi float [ %5572, %5500 ], [ %5247, %5239 ]
  %5357 = icmp eq i32 %5244, %5251
  br i1 %5357, label %5574, label %5239

; <label>:5358                                    ; preds = %5239
  br i1 %5300, label %5416, label %5359

; <label>:5359                                    ; preds = %5358
  %5360 = fsub fast float -0.000000e+00, %5315
  %5361 = fsub fast float -0.000000e+00, %5316
  %5362 = fsub fast float -0.000000e+00, %5317
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fadd fast float %5365, %5278
  %5367 = fadd fast float %5277, %5365
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = fcmp ogt float %5363, -0.000000e+00
  %5370 = select i1 %5369, float %5368, float %5366
  %5371 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5372 = fdiv fast float 1.000000e+00, %5371
  %5373 = fmul fast float %5370, %5372
  %5374 = call float @dx.op.binary.f32(i32 35, float %5373, float 0.000000e+00)  ; FMax(a,b)
  %5375 = fsub fast float -0.000000e+00, %5321
  %5376 = fsub fast float -0.000000e+00, %5322
  %5377 = fsub fast float -0.000000e+00, %5323
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fadd fast float %5380, %5282
  %5382 = fadd fast float %5281, %5380
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = fcmp ogt float %5378, -0.000000e+00
  %5385 = select i1 %5384, float %5383, float %5381
  %5386 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5387 = fdiv fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5390 = fsub fast float -0.000000e+00, %5327
  %5391 = fsub fast float -0.000000e+00, %5328
  %5392 = fsub fast float -0.000000e+00, %5329
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fsub fast float -0.000000e+00, %5393
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fadd fast float %5395, %5286
  %5397 = fadd fast float %5285, %5395
  %5398 = fsub fast float -0.000000e+00, %5397
  %5399 = fcmp ogt float %5393, -0.000000e+00
  %5400 = select i1 %5399, float %5398, float %5396
  %5401 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5402 = fdiv fast float 1.000000e+00, %5401
  %5403 = fmul fast float %5400, %5402
  %5404 = call float @dx.op.binary.f32(i32 35, float %5403, float 0.000000e+00)  ; FMax(a,b)
  %5405 = call float @dx.op.binary.f32(i32 36, float %5389, float %5404)  ; FMin(a,b)
  %5406 = call float @dx.op.binary.f32(i32 36, float %5374, float %5405)  ; FMin(a,b)
  %5407 = fmul fast float %5406, %5189
  %5408 = fmul fast float %5406, %5190
  %5409 = fmul fast float %5406, %5191
  %5410 = fadd fast float %5407, %140
  %5411 = fadd fast float %5408, %141
  %5412 = fadd fast float %5409, %142
  %5413 = fsub fast float %5410, %5255
  %5414 = fsub fast float %5411, %5256
  %5415 = fsub fast float %5412, %5257
  br label %5423

; <label>:5416                                    ; preds = %5358
  %5417 = fmul fast float %5189, 8.096000e+03
  %5418 = fmul fast float %5190, 8.096000e+03
  %5419 = fmul fast float %5191, 8.096000e+03
  %5420 = fadd fast float %5417, %140
  %5421 = fadd fast float %5418, %141
  %5422 = fadd fast float %5419, %142
  br label %5423

; <label>:5423                                    ; preds = %5416, %5359
  %5424 = phi float [ %5189, %5416 ], [ %5413, %5359 ]
  %5425 = phi float [ %5190, %5416 ], [ %5414, %5359 ]
  %5426 = phi float [ %5191, %5416 ], [ %5415, %5359 ]
  %5427 = phi float [ %5420, %5416 ], [ %5410, %5359 ]
  %5428 = phi float [ %5421, %5416 ], [ %5411, %5359 ]
  %5429 = phi float [ %5422, %5416 ], [ %5412, %5359 ]
  %5430 = fcmp fast olt float %5274, 1.000000e+00
  br i1 %5430, label %5431, label %5462, !dx.controlflow.hints !83

; <label>:5431                                    ; preds = %5423
  %5432 = fmul fast float %5426, %5272
  %5433 = fmul fast float %5425, %5273
  %5434 = fsub fast float %5432, %5433
  %5435 = fmul fast float %5424, %5273
  %5436 = fmul fast float %5426, %5271
  %5437 = fsub fast float %5435, %5436
  %5438 = fmul fast float %5425, %5271
  %5439 = fmul fast float %5424, %5272
  %5440 = fsub fast float %5438, %5439
  %5441 = fmul fast float %5434, 2.000000e+00
  %5442 = fmul fast float %5437, 2.000000e+00
  %5443 = fmul fast float %5440, 2.000000e+00
  %5444 = fmul fast float %5441, %5274
  %5445 = fmul fast float %5442, %5274
  %5446 = fmul fast float %5443, %5274
  %5447 = fmul fast float %5443, %5272
  %5448 = fmul fast float %5442, %5273
  %5449 = fmul fast float %5441, %5273
  %5450 = fmul fast float %5443, %5271
  %5451 = fmul fast float %5442, %5271
  %5452 = fmul fast float %5441, %5272
  %5453 = fadd fast float %5447, %5424
  %5454 = fadd fast float %5453, %5444
  %5455 = fsub fast float %5454, %5448
  %5456 = fsub fast float %5425, %5450
  %5457 = fadd fast float %5456, %5445
  %5458 = fadd fast float %5457, %5449
  %5459 = fadd fast float %5446, %5426
  %5460 = fsub fast float %5459, %5452
  %5461 = fadd fast float %5460, %5451
  br label %5462

; <label>:5462                                    ; preds = %5431, %5423
  %5463 = phi float [ %5455, %5431 ], [ %5424, %5423 ]
  %5464 = phi float [ %5458, %5431 ], [ %5425, %5423 ]
  %5465 = phi float [ %5461, %5431 ], [ %5426, %5423 ]
  br i1 %5300, label %5497, label %5466

; <label>:5466                                    ; preds = %5462
  %5467 = fmul fast float %4537, 0x400187C840000000
  %5468 = fadd fast float %5467, 0xC00EFC2120000000
  %5469 = fmul fast float %5468, %4537
  %5470 = fadd fast float %5469, 0x3FE5D16340000000
  %5471 = fmul fast float %5470, %4537
  %5472 = fadd fast float %5471, 1.000000e+00
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fsub fast float %5427, %140
  %5475 = fsub fast float %5428, %141
  %5476 = fsub fast float %5429, %142
  %5477 = fsub fast float %5427, %5255
  %5478 = fsub fast float %5428, %5256
  %5479 = fsub fast float %5429, %5257
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fadd fast float %5481, 0x3EE4F8B580000000
  %5483 = fdiv fast float %5480, %5482
  %5484 = bitcast float %5483 to i32
  %5485 = ashr i32 %5484, 1
  %5486 = add nsw i32 %5485, 532487669
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5487, %5473
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = fmul fast float %5489, 0x4009981AE0000000
  %5491 = fsub fast float 0x40111BBD80000000, %5490
  %5492 = fmul fast float %5491, %5489
  %5493 = fadd fast float %5492, 0xC0009F6020000000
  %5494 = fmul fast float %5493, %5489
  %5495 = fadd fast float %5494, 1.000000e+00
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  br label %5500

; <label>:5497                                    ; preds = %5462
  %5498 = icmp ne i32 %5301, -1
  %5499 = zext i1 %5498 to i32
  br label %5500

; <label>:5500                                    ; preds = %5497, %5466
  %5501 = phi float [ %4537, %5497 ], [ %5496, %5466 ]
  %5502 = phi i32 [ %5499, %5497 ], [ 0, %5466 ]
  %5503 = fmul float %5501, 5.000000e+00
  %5504 = fsub float 5.000000e+00, %5503
  %5505 = icmp ne i32 %5502, 0
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5508 = fadd fast float %5507, %5504
  %5509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5508)  ; FMax(a,b)
  %5510 = call float @dx.op.unary.f32(i32 6, float %5463)  ; FAbs(value)
  %5511 = call float @dx.op.unary.f32(i32 6, float %5464)  ; FAbs(value)
  %5512 = fadd fast float %5511, %5510
  %5513 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5514 = fadd fast float %5512, %5513
  %5515 = fcmp fast oeq float %5514, 0.000000e+00
  %5516 = fdiv fast float 1.000000e+00, %5514
  %5517 = select i1 %5515, float 1.000000e+00, float %5516
  %5518 = fmul fast float %5517, %5463
  %5519 = fmul fast float %5517, %5464
  %5520 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5521 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5522 = fsub fast float 1.000000e+00, %5520
  %5523 = fsub fast float 1.000000e+00, %5521
  %5524 = fcmp fast oge float %5518, 0.000000e+00
  %5525 = fcmp fast oge float %5519, 0.000000e+00
  %5526 = select i1 %5524, float 1.000000e+00, float -1.000000e+00
  %5527 = select i1 %5525, float 1.000000e+00, float -1.000000e+00
  %5528 = fcmp fast ole float %5465, 0.000000e+00
  %5529 = fmul fast float %5526, %5522
  %5530 = fmul fast float %5527, %5523
  %5531 = select i1 %5528, float %5529, float %5518
  %5532 = select i1 %5528, float %5530, float %5519
  %5533 = fmul fast float %5531, 5.000000e-01
  %5534 = fmul fast float %5532, 5.000000e-01
  %5535 = fadd fast float %5533, 5.000000e-01
  %5536 = fadd fast float %5534, 5.000000e-01
  %5537 = uitofp i32 %5298 to float
  %5538 = call float @dx.op.binary.f32(i32 36, float %5509, float 3.000000e+00)  ; FMin(a,b)
  %5539 = fadd fast float %5538, 2.000000e+00
  %5540 = call float @dx.op.unary.f32(i32 21, float %5539)  ; Exp(value)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5542 = fmul fast float %5541, %5540
  %5543 = fmul fast float %5542, 2.000000e+00
  %5544 = fsub fast float 1.000000e+00, %5543
  %5545 = fmul fast float %5535, %5544
  %5546 = fmul fast float %5536, %5544
  %5547 = fadd fast float %5545, %5542
  %5548 = fadd fast float %5546, %5542
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5547, float %5548, float %5537, float undef, i32 0, i32 0, i32 undef, float %5509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 3
  %5555 = fmul fast float %5554, %5268
  %5556 = call float @dx.op.binary.f32(i32 36, float %4583, float %5555)  ; FMin(a,b)
  %5557 = select i1 %5505, float %5556, float %5555
  %5558 = fmul fast float %5550, %5347
  %5559 = fmul fast float %5558, %5557
  %5560 = fmul fast float %5551, %5347
  %5561 = fmul fast float %5560, %5557
  %5562 = fmul fast float %5552, %5347
  %5563 = fmul fast float %5562, %5557
  %5564 = fadd fast float %5559, %5240
  %5565 = fadd fast float %5561, %5241
  %5566 = fadd fast float %5563, %5242
  %5567 = fmul fast float %5427, %5347
  %5568 = fmul fast float %5428, %5347
  %5569 = fmul fast float %5429, %5347
  %5570 = fadd fast float %5567, %5245
  %5571 = fadd fast float %5568, %5246
  %5572 = fadd fast float %5569, %5247
  %5573 = fsub fast float %5243, %5347
  br label %5349

; <label>:5574                                    ; preds = %5349
  br label %5575

; <label>:5575                                    ; preds = %5574, %5206
  %5576 = phi float [ %5207, %5206 ], [ %5350, %5574 ]
  %5577 = phi float [ %5208, %5206 ], [ %5351, %5574 ]
  %5578 = phi float [ %5209, %5206 ], [ %5352, %5574 ]
  %5579 = phi float [ %5210, %5206 ], [ %5353, %5574 ]
  %5580 = phi float [ %5212, %5206 ], [ %5354, %5574 ]
  %5581 = phi float [ %5213, %5206 ], [ %5355, %5574 ]
  %5582 = phi float [ %5214, %5206 ], [ %5356, %5574 ]
  %5583 = add i32 %5211, 1
  %5584 = icmp ugt i32 %5583, %5203
  br i1 %5584, label %5585, label %5206, !llvm.loop !84

; <label>:5585                                    ; preds = %5575
  br label %5586

; <label>:5586                                    ; preds = %5585, %5188
  %5587 = phi float [ 0.000000e+00, %5188 ], [ %5576, %5585 ]
  %5588 = phi float [ 0.000000e+00, %5188 ], [ %5577, %5585 ]
  %5589 = phi float [ 0.000000e+00, %5188 ], [ %5578, %5585 ]
  %5590 = phi float [ 0.000000e+00, %5188 ], [ %5580, %5585 ]
  %5591 = phi float [ 0.000000e+00, %5188 ], [ %5581, %5585 ]
  %5592 = phi float [ 0.000000e+00, %5188 ], [ %5582, %5585 ]
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = select i1 %216, float 0.000000e+00, float %5587
  %5595 = select i1 %216, float %5593, float %5588
  %5596 = select i1 %216, float 0.000000e+00, float %5589
  %5597 = fcmp fast olt float %5112, 0.000000e+00
  %5598 = call float @dx.op.unary.f32(i32 6, float %5112)  ; FAbs(value)
  %5599 = fmul fast float %5598, %5113
  %5600 = fmul fast float %5598, %5114
  %5601 = fmul fast float %5598, %5115
  %5602 = select i1 %5597, float %5113, float %5599
  %5603 = select i1 %5597, float %5114, float %5600
  %5604 = select i1 %5597, float %5115, float %5601
  %5605 = fsub fast float 1.000000e+00, %5598
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5606, %5594
  %5608 = fmul fast float %5606, %5595
  %5609 = fmul fast float %5606, %5596
  %5610 = fadd fast float %5602, %5607
  %5611 = fadd fast float %5603, %5608
  %5612 = fadd fast float %5604, %5609
  %5613 = fcmp fast une float %4862, 0.000000e+00
  br i1 %5613, label %5714, label %5614

; <label>:5614                                    ; preds = %5586
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5619 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.CBufRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = fadd fast float %4537, -1.000000e+00
  %5634 = fsub fast float %5631, %5632
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5637 = fmul fast float %5636, %5631
  %5638 = fdiv fast float 1.600000e+02, %5637
  %5639 = fmul fast float %5633, %5633
  %5640 = fmul fast float %5639, 0xBFB5B17960000000
  %5641 = fmul fast float %5640, %5634
  %5642 = fmul fast float %5641, %5638
  %5643 = call float @dx.op.unary.f32(i32 21, float %5642)  ; Exp(value)
  %5644 = fmul fast float %5643, 0x3FF04B2960000000
  %5645 = fsub fast float 0x3FF04B2960000000, %5644
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5646, 4.000000e+00
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.CBufRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5652 = fadd fast float %5649, %5590
  %5653 = fadd fast float %5650, %5591
  %5654 = fadd fast float %5651, %5592
  %5655 = fmul fast float %5652, %5616
  %5656 = call float @dx.op.tertiary.f32(i32 46, float %5653, float %5617, float %5655)  ; FMad(a,b,c)
  %5657 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5618, float %5656)  ; FMad(a,b,c)
  %5658 = fadd fast float %5657, %5619
  %5659 = fmul fast float %5652, %5621
  %5660 = call float @dx.op.tertiary.f32(i32 46, float %5653, float %5622, float %5659)  ; FMad(a,b,c)
  %5661 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5623, float %5660)  ; FMad(a,b,c)
  %5662 = fadd fast float %5661, %5624
  %5663 = fmul fast float %5652, %5626
  %5664 = call float @dx.op.tertiary.f32(i32 46, float %5653, float %5627, float %5663)  ; FMad(a,b,c)
  %5665 = call float @dx.op.tertiary.f32(i32 46, float %5654, float %5628, float %5664)  ; FMad(a,b,c)
  %5666 = fadd fast float %5665, %5629
  %5667 = fdiv fast float %5658, %5666
  %5668 = fdiv fast float %5662, %5666
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = fmul fast float %5670, %5667
  %5673 = fmul fast float %5671, %5668
  %5674 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5675 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5676 = fadd fast float %5672, %5674
  %5677 = fadd fast float %5673, %5675
  %5678 = fmul fast float %5630, 8.000000e+00
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5676, 2.000000e+00
  %5681 = fmul fast float %5677, 2.000000e+00
  %5682 = fadd fast float %5680, -1.000000e+00
  %5683 = fadd fast float %5681, -1.000000e+00
  %5684 = fmul fast float %5682, %5682
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = fmul fast float %5683, %5683
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %4862, %5686
  %5691 = fmul fast float %5690, %5689
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5692, %5679
  %5694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5676, float %5677, float undef, float undef, i32 0, i32 0, i32 undef, float %5647)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5695 = extractvalue %dx.types.ResRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.ResRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.ResRet.f32 %5694, 2
  %5698 = select i1 %216, float 0.000000e+00, float %5696
  %5699 = select i1 %216, float 0.000000e+00, float %5697
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 2
  %5702 = fmul fast float %5701, %5695
  %5703 = fmul fast float %5698, %5701
  %5704 = fmul fast float %5699, %5701
  %5705 = fsub fast float %5702, %5594
  %5706 = fsub fast float %5703, %5595
  %5707 = fsub fast float %5704, %5596
  %5708 = fmul fast float %5705, %5693
  %5709 = fmul fast float %5706, %5693
  %5710 = fmul fast float %5707, %5693
  %5711 = fadd fast float %5708, %5594
  %5712 = fadd fast float %5709, %5595
  %5713 = fadd fast float %5710, %5596
  br label %5714

; <label>:5714                                    ; preds = %5614, %5586, %5111, %4732
  %5715 = phi float [ %5113, %5111 ], [ %5610, %5586 ], [ %4823, %4732 ], [ %5711, %5614 ]
  %5716 = phi float [ %5114, %5111 ], [ %5611, %5586 ], [ %4824, %4732 ], [ %5712, %5614 ]
  %5717 = phi float [ %5115, %5111 ], [ %5612, %5586 ], [ %4825, %4732 ], [ %5713, %5614 ]
  %5718 = fmul fast float %5715, %4836
  %5719 = fmul fast float %5716, %4837
  %5720 = fmul fast float %5717, %4838
  %5721 = fadd fast float %5718, %3817
  %5722 = fmul fast float %5721, %3882
  %5723 = fadd fast float %5719, %3818
  %5724 = fmul fast float %5723, %3882
  %5725 = fadd fast float %5720, %3819
  %5726 = fmul fast float %5725, %3882
  %5727 = fmul fast float %4841, %4817
  %5728 = fmul fast float %4841, %4816
  %5729 = fmul fast float %4841, %4815
  %5730 = fmul fast float %4841, %3970
  %5731 = fadd fast float %5730, -1.000000e+00
  %5732 = fmul fast float %5731, %3882
  %5733 = fadd fast float %5732, 1.000000e+00
  %5734 = fmul fast float %4841, %3969
  %5735 = fadd fast float %5734, -1.000000e+00
  %5736 = fmul fast float %5735, %3882
  %5737 = fadd fast float %5736, 1.000000e+00
  %5738 = fmul fast float %4841, %3968
  %5739 = fadd fast float %5738, -1.000000e+00
  %5740 = fmul fast float %5739, %3882
  %5741 = fadd fast float %5740, 1.000000e+00
  %5742 = fmul fast float %5741, %4819
  %5743 = fmul fast float %5737, %4820
  %5744 = fmul fast float %5733, %4821
  %5745 = fadd fast float %5742, %5729
  %5746 = fmul fast float %5745, %3882
  %5747 = fadd fast float %5743, %5728
  %5748 = fmul fast float %5747, %3882
  %5749 = fadd fast float %5744, %5727
  %5750 = fmul fast float %5749, %3882
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5753 = fcmp fast oeq float %5752, 0.000000e+00
  br i1 %5753, label %5930, label %5754

; <label>:5754                                    ; preds = %5714
  %5755 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5756 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5757 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = select i1 %216, float %5763, float %5759
  %5767 = select i1 %216, float %5765, float %5760
  %5768 = select i1 %216, float %5764, float %5761
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5771 = fcmp fast une float %5770, 0.000000e+00
  br i1 %5771, label %5772, label %5789

; <label>:5772                                    ; preds = %5754
  %5773 = fptoui float %81 to i32
  %5774 = fptoui float %82 to i32
  %5775 = lshr i32 %5773, 4
  %5776 = lshr i32 %5774, 4
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = fptoui float %5778 to i32
  %5780 = add i32 %5779, 15
  %5781 = lshr i32 %5780, 4
  %5782 = mul i32 %5781, %5776
  %5783 = add i32 %5782, %5775
  %5784 = shl i32 %5783, 3
  %5785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.i32 %5785, 0
  %5787 = and i32 %5786, -268435456
  %5788 = icmp eq i32 %5787, -1342177280
  br i1 %5788, label %5794, label %5789

; <label>:5789                                    ; preds = %5772, %5754
  %5790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4542, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5791 = extractvalue %dx.types.ResRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.ResRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.ResRet.f32 %5790, 2
  br label %5794

; <label>:5794                                    ; preds = %5789, %5772
  %5795 = phi float [ %5791, %5789 ], [ 0.000000e+00, %5772 ]
  %5796 = phi float [ %5792, %5789 ], [ 0.000000e+00, %5772 ]
  %5797 = phi float [ %5793, %5789 ], [ 0.000000e+00, %5772 ]
  %5798 = call float @dx.op.binary.f32(i32 36, float %5796, float %5797)  ; FMin(a,b)
  %5799 = call float @dx.op.binary.f32(i32 36, float %5795, float %5798)  ; FMin(a,b)
  %5800 = fcmp fast ogt float %5799, 0.000000e+00
  br i1 %5800, label %5801, label %5930, !dx.controlflow.hints !86

; <label>:5801                                    ; preds = %5794
  %5802 = fmul fast float %5795, %5766
  %5803 = fmul fast float %5796, %5767
  %5804 = fmul fast float %5797, %5768
  %5805 = fsub fast float %5755, %160
  %5806 = fsub fast float %5756, %161
  %5807 = fsub fast float %5757, %162
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5806, float %5807, float %5805, float %5806, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.unary.f32(i32 25, float %5808)  ; Rsqrt(value)
  %5810 = fmul fast float %5809, %5805
  %5811 = fmul fast float %5809, %5806
  %5812 = fmul fast float %5809, %5807
  %5813 = call float @dx.op.dot3.f32(i32 55, float %5755, float %5756, float %5757, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %5810, float %5811, float %5812)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5816 = fmul fast float %5815, %5815
  %5817 = fmul fast float %5816, %4581
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = fmul fast float %5818, %5815
  %5820 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float %5810, float %5811, float %5812)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fmul fast float %5820, %5820
  %5822 = call float @dx.op.unary.f32(i32 6, float %5813)  ; FAbs(value)
  %5823 = fsub fast float 1.000000e+00, %4574
  %5824 = fmul fast float %4556, %4556
  %5825 = fmul fast float %5824, %5823
  %5826 = fadd fast float %5825, %4574
  %5827 = bitcast float %5826 to i32
  %5828 = ashr i32 %5827, 1
  %5829 = add nsw i32 %5828, 532487669
  %5830 = bitcast i32 %5829 to float
  %5831 = fadd fast float %5830, %4556
  %5832 = fmul fast float %4574, %5821
  %5833 = fsub fast float 1.000000e+00, %5821
  %5834 = fadd fast float %5833, %5832
  %5835 = fmul fast float %5822, %5822
  %5836 = fmul fast float %5835, %5823
  %5837 = fadd fast float %5836, %4574
  %5838 = bitcast float %5837 to i32
  %5839 = ashr i32 %5838, 1
  %5840 = add nsw i32 %5839, 532487669
  %5841 = bitcast i32 %5840 to float
  %5842 = fadd fast float %5841, %5822
  %5843 = fmul fast float %5834, %5834
  %5844 = fmul fast float %5843, %5831
  %5845 = fmul fast float %5844, %5842
  %5846 = fdiv fast float 0x3FF0A00000000000, %5845
  %5847 = fmul fast float %5846, %4574
  %5848 = call float @dx.op.unary.f32(i32 6, float %5814)  ; FAbs(value)
  %5849 = fsub fast float 1.000000e+00, %5848
  %5850 = bitcast float %5849 to i32
  %5851 = sitofp i32 %5850 to float
  %5852 = fmul fast float %5851, 5.000000e+00
  %5853 = fadd fast float %5852, 0xC1EFBF8940000000
  %5854 = fptosi float %5853 to i32
  %5855 = bitcast i32 %5854 to float
  %5856 = fsub fast float 1.000000e+00, %4531
  %5857 = fsub fast float 1.000000e+00, %4532
  %5858 = fsub fast float 1.000000e+00, %4554
  %5859 = fmul fast float %5855, %5856
  %5860 = fmul fast float %5855, %5857
  %5861 = fmul fast float %5855, %5858
  %5862 = fadd fast float %5859, %4531
  %5863 = fadd fast float %5860, %4532
  %5864 = fadd fast float %5861, %4554
  %5865 = fmul fast float %5813, 9.843750e-01
  %5866 = fadd fast float %5865, 7.812500e-03
  %5867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5866, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5868 = extractvalue %dx.types.ResRet.f32 %5867, 2
  %5869 = extractvalue %dx.types.ResRet.f32 %5867, 3
  %5870 = fmul fast float %5868, %4531
  %5871 = fmul fast float %5868, %4532
  %5872 = fmul fast float %5868, %4554
  %5873 = fadd fast float %5870, %5869
  %5874 = fadd fast float %5871, %5869
  %5875 = fadd fast float %5872, %5869
  %5876 = call float @dx.op.binary.f32(i32 35, float %5874, float %5875)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5873, float %5876)  ; FMax(a,b)
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fsub fast float -0.000000e+00, %4534
  %5880 = fsub fast float -0.000000e+00, %4535
  %5881 = fsub fast float -0.000000e+00, %4536
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5755, float %5756, float %5757, float %5879, float %5880, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5884 = fmul fast float %5883, 9.843750e-01
  %5885 = fadd fast float %5884, 7.812500e-03
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5885, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 3
  %5889 = fmul fast float %5887, %4531
  %5890 = fmul fast float %5887, %4532
  %5891 = fmul fast float %5887, %4554
  %5892 = fadd fast float %5889, %5888
  %5893 = fadd fast float %5890, %5888
  %5894 = fadd fast float %5891, %5888
  %5895 = call float @dx.op.binary.f32(i32 35, float %5893, float %5894)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5892, float %5895)  ; FMax(a,b)
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5897, %5883
  %5899 = fmul fast float %5898, %3968
  %5900 = fmul fast float %5898, %3969
  %5901 = fmul fast float %5898, %3970
  %5902 = fmul fast float %5878, %5819
  %5903 = fadd fast float %5899, %5902
  %5904 = fadd fast float %5900, %5902
  %5905 = fadd fast float %5901, %5902
  %5906 = fmul fast float %5903, %5802
  %5907 = fmul fast float %5904, %5803
  %5908 = fmul fast float %5905, %5804
  %5909 = fmul fast float %5819, %5802
  %5910 = fmul fast float %5909, %5847
  %5911 = fmul fast float %5910, %5862
  %5912 = fmul fast float %5819, %5803
  %5913 = fmul fast float %5912, %5847
  %5914 = fmul fast float %5913, %5863
  %5915 = fmul fast float %5819, %5804
  %5916 = fmul fast float %5915, %5847
  %5917 = fmul fast float %5916, %5864
  %5918 = fadd fast float %5906, %5745
  %5919 = fmul fast float %5918, %3882
  %5920 = fadd fast float %5907, %5747
  %5921 = fmul fast float %5920, %3882
  %5922 = fadd fast float %5908, %5749
  %5923 = fmul fast float %5922, %3882
  %5924 = fadd fast float %5911, %5721
  %5925 = fmul fast float %5924, %3882
  %5926 = fadd fast float %5914, %5723
  %5927 = fmul fast float %5926, %3882
  %5928 = fadd fast float %5917, %5725
  %5929 = fmul fast float %5928, %3882
  br label %5930

; <label>:5930                                    ; preds = %5801, %5794, %5714
  %5931 = phi float [ %5722, %5714 ], [ %5722, %5794 ], [ %5925, %5801 ]
  %5932 = phi float [ %5724, %5714 ], [ %5724, %5794 ], [ %5927, %5801 ]
  %5933 = phi float [ %5726, %5714 ], [ %5726, %5794 ], [ %5929, %5801 ]
  %5934 = phi float [ %5746, %5714 ], [ %5746, %5794 ], [ %5919, %5801 ]
  %5935 = phi float [ %5748, %5714 ], [ %5748, %5794 ], [ %5921, %5801 ]
  %5936 = phi float [ %5750, %5714 ], [ %5750, %5794 ], [ %5923, %5801 ]
  %5937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.i32 %5937, 0
  %5939 = icmp eq i32 %5938, 0
  br i1 %5939, label %6329, label %5940

; <label>:5940                                    ; preds = %5930
  %5941 = fptoui float %81 to i32
  %5942 = fptoui float %82 to i32
  %5943 = lshr i32 %5941, 4
  %5944 = lshr i32 %5942, 4
  %5945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.i32 %5945, 0
  %5947 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5944, i32 %5946, i32 %5943)  ; UMad(a,b,c)
  %5948 = add nsw i32 %5938, -1
  %5949 = call i32 @dx.op.binary.i32(i32 37, i32 %5948, i32 0)  ; IMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5951 = fptoui float %5950 to i32
  %5952 = lshr i32 %5951, 5
  %5953 = call i32 @dx.op.binary.i32(i32 40, i32 %5952, i32 8191)  ; UMin(a,b)
  %5954 = shl i32 %5953, 2
  %5955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.i32 %5955, 0
  %5957 = lshr i32 %5956, 16
  %5958 = and i32 %5956, 65535
  %5959 = lshr i32 %5956, 21
  %5960 = lshr i32 %5958, 5
  %5961 = call i32 @dx.op.binary.i32(i32 40, i32 %5960, i32 %5949)  ; UMin(a,b)
  %5962 = icmp ugt i32 %5959, %5961
  br i1 %5962, label %6329, label %5963

; <label>:5963                                    ; preds = %5940
  br label %5964

; <label>:5964                                    ; preds = %6319, %5963
  %5965 = phi i32 [ %6326, %6319 ], [ %5959, %5963 ]
  %5966 = phi float [ %6320, %6319 ], [ %5931, %5963 ]
  %5967 = phi float [ %6321, %6319 ], [ %5932, %5963 ]
  %5968 = phi float [ %6322, %6319 ], [ %5933, %5963 ]
  %5969 = phi float [ %6323, %6319 ], [ %5934, %5963 ]
  %5970 = phi float [ %6324, %6319 ], [ %5935, %5963 ]
  %5971 = phi float [ %6325, %6319 ], [ %5936, %5963 ]
  %5972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.i32 %5972, 0
  %5974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5947, i32 %5973, i32 %5965)  ; UMad(a,b,c)
  %5975 = shl i32 %5974, 2
  %5976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.i32 %5976, 0
  %5978 = shl i32 %5965, 5
  %5979 = sub nsw i32 %5957, %5978
  %5980 = call i32 @dx.op.binary.i32(i32 37, i32 %5979, i32 0)  ; IMax(a,b)
  %5981 = call i32 @dx.op.binary.i32(i32 38, i32 %5980, i32 31)  ; IMin(a,b)
  %5982 = sub nsw i32 1, %5957
  %5983 = add nsw i32 %5982, %5958
  %5984 = call i32 @dx.op.binary.i32(i32 37, i32 %5983, i32 0)  ; IMax(a,b)
  %5985 = call i32 @dx.op.binary.i32(i32 38, i32 %5984, i32 32)  ; IMin(a,b)
  %5986 = and i32 %5985, 31
  %5987 = shl i32 -1, %5986
  %5988 = xor i32 %5987, -1
  %5989 = and i32 %5981, 31
  %5990 = shl i32 %5988, %5989
  %5991 = icmp eq i32 %5985, 32
  %5992 = select i1 %5991, i32 -1, i32 %5990
  %5993 = and i32 %5992, %5977
  %5994 = icmp eq i32 %5993, 0
  br i1 %5994, label %6319, label %5995

; <label>:5995                                    ; preds = %5964
  br label %5996

; <label>:5996                                    ; preds = %6076, %5995
  %5997 = phi i32 [ %6008, %6076 ], [ %5993, %5995 ]
  %5998 = phi float [ %6077, %6076 ], [ %5966, %5995 ]
  %5999 = phi float [ %6078, %6076 ], [ %5967, %5995 ]
  %6000 = phi float [ %6079, %6076 ], [ %5968, %5995 ]
  %6001 = phi float [ %6080, %6076 ], [ %5969, %5995 ]
  %6002 = phi float [ %6081, %6076 ], [ %5970, %5995 ]
  %6003 = phi float [ %6082, %6076 ], [ %5971, %5995 ]
  %6004 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5997)  ; FirstbitLo(value)
  %6005 = add i32 %6004, %5978
  %6006 = and i32 %6004, 31
  %6007 = shl i32 1, %6006
  %6008 = xor i32 %6007, %5997
  %6009 = mul i32 %6005, 112
  %6010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6009, i32 undef)  ; BufferLoad(srv,index,wot)
  %6011 = extractvalue %dx.types.ResRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.ResRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.ResRet.f32 %6010, 2
  %6014 = or i32 %6009, 12
  %6015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = add i32 %6009, 44
  %6018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6017, i32 undef)  ; BufferLoad(srv,index,wot)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = add i32 %6009, 48
  %6021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = add i32 %6009, 80
  %6026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6025, i32 undef)  ; BufferLoad(srv,index,wot)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 2
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6011, float %6012, float %6013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = select i1 %216, float %6027, float %6011
  %6031 = select i1 %216, float %6029, float %6012
  %6032 = select i1 %216, float %6028, float %6013
  %6033 = fsub fast float %6022, %140
  %6034 = fsub fast float %6023, %141
  %6035 = fsub fast float %6024, %142
  %6036 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6035, float %6033, float %6034, float %6035)  ; Dot3(ax,ay,az,bx,by,bz)
  %6037 = call float @dx.op.unary.f32(i32 24, float %6036)  ; Sqrt(value)
  %6038 = fdiv fast float 1.000000e+00, %6037
  %6039 = fmul fast float %6038, %6033
  %6040 = fmul fast float %6038, %6034
  %6041 = fmul fast float %6038, %6035
  %6042 = fadd fast float %6037, %6016
  %6043 = fdiv fast float 1.000000e+00, %6042
  %6044 = fmul float %6019, %6043
  %6045 = fmul float %6044, %6044
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = and i32 %6007, %5993
  %6048 = icmp eq i32 %6047, 0
  br i1 %6048, label %6071, label %6049, !dx.controlflow.hints !87

; <label>:6049                                    ; preds = %5996
  %6050 = lshr i32 %5941, 5
  %6051 = lshr i32 %5942, 5
  %6052 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %6050, i32 %6051, i32 %6005, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 3
  %6055 = icmp eq i32 %6054, 0
  %6056 = select i1 %6055, float 1.000000e+00, float 0.000000e+00
  %6057 = icmp eq i32 %6054, 3
  br i1 %6057, label %6058, label %6071

; <label>:6058                                    ; preds = %6049
  %6059 = lshr i32 %6053, 10
  %6060 = and i32 %6059, 8160
  %6061 = and i32 %5942, 31
  %6062 = or i32 %6060, %6061
  %6063 = lshr i32 %6053, 1
  %6064 = and i32 %6063, 16352
  %6065 = and i32 %5941, 31
  %6066 = or i32 %6064, %6065
  %6067 = lshr i32 %6053, 23
  %6068 = and i32 %6067, 255
  %6069 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %6066, i32 %6062, i32 %6068, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6070 = extractvalue %dx.types.ResRet.f32 %6069, 0
  br label %6071

; <label>:6071                                    ; preds = %6058, %6049, %5996
  %6072 = phi float [ %6070, %6058 ], [ %6056, %6049 ], [ 0.000000e+00, %5996 ]
  %6073 = call float @dx.op.binary.f32(i32 36, float %6072, float %6072)  ; FMin(a,b)
  %6074 = call float @dx.op.binary.f32(i32 36, float %6072, float %6073)  ; FMin(a,b)
  %6075 = fcmp fast ogt float %6074, 0.000000e+00
  br i1 %6075, label %6084, label %6076, !dx.controlflow.hints !88

; <label>:6076                                    ; preds = %6145, %6071
  %6077 = phi float [ %5998, %6071 ], [ %6315, %6145 ]
  %6078 = phi float [ %5999, %6071 ], [ %6316, %6145 ]
  %6079 = phi float [ %6000, %6071 ], [ %6317, %6145 ]
  %6080 = phi float [ %6001, %6071 ], [ %6303, %6145 ]
  %6081 = phi float [ %6002, %6071 ], [ %6304, %6145 ]
  %6082 = phi float [ %6003, %6071 ], [ %6305, %6145 ]
  %6083 = icmp eq i32 %5997, %6007
  br i1 %6083, label %6318, label %5996

; <label>:6084                                    ; preds = %6071
  %6085 = fmul fast float %6072, %6030
  %6086 = fmul fast float %6072, %6031
  %6087 = fmul fast float %6072, %6032
  %6088 = fsub fast float %6024, %4345
  %6089 = fcmp fast ogt float %6088, 0.000000e+00
  %6090 = fsub fast float %142, %4345
  %6091 = fcmp fast ogt float %6090, 0.000000e+00
  %6092 = xor i1 %6091, %6089
  %6093 = fsub fast float %4345, %6024
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fadd fast float %6094, %6024
  %6096 = select i1 %6092, float %6024, float %6095
  %6097 = fsub fast float %6096, %142
  %6098 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6097, float %6033, float %6034, float %6097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = call float @dx.op.unary.f32(i32 25, float %6098)  ; Rsqrt(value)
  %6100 = fmul fast float %6099, %6033
  %6101 = fmul fast float %6099, %6034
  %6102 = fmul fast float %6099, %6097
  %6103 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4353)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6100, float %6101, float %6102)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = fdiv fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6105, %6103
  %6107 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6090, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = fcmp fast ogt float %6107, 0.000000e+00
  %6109 = fcmp fast olt float %6107, 0.000000e+00
  %6110 = zext i1 %6108 to i32
  %6111 = zext i1 %6109 to i32
  %6112 = sub nsw i32 %6110, %6111
  %6113 = sitofp i32 %6112 to float
  %6114 = fsub fast float %6096, %4345
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6034, float %6114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = fcmp fast ogt float %6115, 0.000000e+00
  %6117 = fcmp fast olt float %6115, 0.000000e+00
  %6118 = zext i1 %6116 to i32
  %6119 = zext i1 %6117 to i32
  %6120 = sub nsw i32 %6118, %6119
  %6121 = sitofp i32 %6120 to float
  %6122 = fcmp fast une float %6113, %6121
  br i1 %6122, label %6123, label %6133

; <label>:6123                                    ; preds = %6084
  %6124 = fmul fast float %6106, %6102
  %6125 = fmul fast float %6106, %6101
  %6126 = fmul fast float %6106, %6100
  %6127 = fmul fast float %6126, %6126
  %6128 = fmul fast float %6125, %6125
  %6129 = fadd fast float %6127, %6128
  %6130 = fmul fast float %6124, %6124
  %6131 = fadd fast float %6129, %6130
  %6132 = call float @dx.op.unary.f32(i32 24, float %6131)  ; Sqrt(value)
  br label %6145

; <label>:6133                                    ; preds = %6084
  %6134 = icmp slt i32 %6112, 0
  br i1 %6134, label %6135, label %6145

; <label>:6135                                    ; preds = %6133
  %6136 = fsub fast float %140, %6022
  %6137 = fsub fast float %141, %6023
  %6138 = fsub fast float %142, %6096
  %6139 = fmul fast float %6136, %6136
  %6140 = fmul fast float %6137, %6137
  %6141 = fadd fast float %6139, %6140
  %6142 = fmul fast float %6138, %6138
  %6143 = fadd fast float %6141, %6142
  %6144 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  br label %6145

; <label>:6145                                    ; preds = %6135, %6133, %6123
  %6146 = phi float [ %6132, %6123 ], [ %6144, %6135 ], [ 0.000000e+00, %6133 ]
  %6147 = and i1 %6091, %6089
  %6148 = fsub fast float -0.000000e+00, %6146
  %6149 = select i1 %6147, float -0.000000e+00, float %6148
  %6150 = fmul fast float %4346, 0x3FF7154760000000
  %6151 = fmul fast float %6150, %6149
  %6152 = fmul fast float %4347, 0x3FF7154760000000
  %6153 = fmul fast float %6152, %6149
  %6154 = fmul fast float %4348, 0x3FF7154760000000
  %6155 = fmul fast float %6154, %6149
  %6156 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6157 = call float @dx.op.unary.f32(i32 21, float %6153)  ; Exp(value)
  %6158 = call float @dx.op.unary.f32(i32 21, float %6155)  ; Exp(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6161 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6162 = fmul fast float %6085, %6159
  %6163 = fmul fast float %6086, %6160
  %6164 = fmul fast float %6087, %6161
  %6165 = fsub fast float %6039, %160
  %6166 = fsub fast float %6040, %161
  %6167 = fsub fast float %6041, %162
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6165, float %6166, float %6167, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.unary.f32(i32 25, float %6168)  ; Rsqrt(value)
  %6170 = fmul fast float %6169, %6165
  %6171 = fmul fast float %6169, %6166
  %6172 = fmul fast float %6169, %6167
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6039, float %6040, float %6041, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %6170, float %6171, float %6172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6176 = fmul fast float %6175, %6046
  %6177 = fmul fast float %6175, %6175
  %6178 = fmul fast float %6177, %4581
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = fmul fast float %6176, %6179
  %6181 = bitcast float %6036 to i32
  %6182 = ashr i32 %6181, 1
  %6183 = sub nsw i32 1597463007, %6182
  %6184 = bitcast i32 %6183 to float
  %6185 = fmul fast float %6184, %6033
  %6186 = fmul fast float %6184, %6034
  %6187 = fmul fast float %6184, %6035
  %6188 = fsub fast float %6185, %160
  %6189 = fsub fast float %6186, %161
  %6190 = fsub fast float %6187, %162
  %6191 = call float @dx.op.dot3.f32(i32 55, float %6188, float %6189, float %6190, float %6188, float %6189, float %6190)  ; Dot3(ax,ay,az,bx,by,bz)
  %6192 = call float @dx.op.unary.f32(i32 25, float %6191)  ; Rsqrt(value)
  %6193 = fmul fast float %6188, %6192
  %6194 = fmul fast float %6189, %6192
  %6195 = fmul fast float %6190, %6192
  %6196 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fmul fast float %6196, %6196
  %6198 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6199 = fsub fast float 1.000000e+00, %4574
  %6200 = fmul fast float %4556, %4556
  %6201 = fmul fast float %6200, %6199
  %6202 = fadd fast float %6201, %4574
  %6203 = bitcast float %6202 to i32
  %6204 = ashr i32 %6203, 1
  %6205 = add nsw i32 %6204, 532487669
  %6206 = bitcast i32 %6205 to float
  %6207 = fadd fast float %6206, %4556
  %6208 = fmul fast float %4574, %6197
  %6209 = fsub fast float 1.000000e+00, %6197
  %6210 = fadd fast float %6209, %6208
  %6211 = fmul fast float %6198, %6198
  %6212 = fmul fast float %6211, %6199
  %6213 = fadd fast float %6212, %4574
  %6214 = bitcast float %6213 to i32
  %6215 = ashr i32 %6214, 1
  %6216 = add nsw i32 %6215, 532487669
  %6217 = bitcast i32 %6216 to float
  %6218 = fadd fast float %6217, %6198
  %6219 = fmul fast float %6210, %6210
  %6220 = fmul fast float %6219, %6207
  %6221 = fmul fast float %6220, %6218
  %6222 = fdiv fast float 1.000000e+00, %6221
  %6223 = bitcast float %4574 to i32
  %6224 = sitofp i32 %6223 to float
  %6225 = fmul fast float %6224, 0x3FE7F73180000000
  %6226 = fadd fast float %6225, 0x41AFE27C40000000
  %6227 = fptosi float %6226 to i32
  %6228 = bitcast i32 %6227 to float
  %6229 = fmul fast float %6019, 0x3FD80E9D60000000
  %6230 = fmul fast float %6229, %6184
  %6231 = fadd fast float %6228, %6230
  %6232 = bitcast float %6231 to i32
  %6233 = sub nsw i32 2129859010, %6232
  %6234 = bitcast i32 %6233 to float
  %6235 = fmul fast float %4574, %6222
  %6236 = fmul fast float %6235, %6228
  %6237 = fmul fast float %6236, %6234
  %6238 = call float @dx.op.unary.f32(i32 6, float %6174)  ; FAbs(value)
  %6239 = fsub fast float 1.000000e+00, %6238
  %6240 = bitcast float %6239 to i32
  %6241 = sitofp i32 %6240 to float
  %6242 = fmul fast float %6241, 5.000000e+00
  %6243 = fadd fast float %6242, 0xC1EFBF8940000000
  %6244 = fptosi float %6243 to i32
  %6245 = bitcast i32 %6244 to float
  %6246 = fsub fast float 1.000000e+00, %4531
  %6247 = fsub fast float 1.000000e+00, %4532
  %6248 = fsub fast float 1.000000e+00, %4554
  %6249 = fmul fast float %6245, %6246
  %6250 = fmul fast float %6245, %6247
  %6251 = fmul fast float %6245, %6248
  %6252 = fadd fast float %6249, %4531
  %6253 = fadd fast float %6250, %4532
  %6254 = fadd fast float %6251, %4554
  %6255 = fmul fast float %6173, 9.843750e-01
  %6256 = fadd fast float %6255, 7.812500e-03
  %6257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6256, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 3
  %6260 = fmul fast float %6258, %4531
  %6261 = fmul fast float %6258, %4532
  %6262 = fmul fast float %6258, %4554
  %6263 = fadd fast float %6260, %6259
  %6264 = fadd fast float %6261, %6259
  %6265 = fadd fast float %6262, %6259
  %6266 = call float @dx.op.binary.f32(i32 35, float %6264, float %6265)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 35, float %6263, float %6266)  ; FMax(a,b)
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = fsub fast float -0.000000e+00, %4534
  %6270 = fsub fast float -0.000000e+00, %4535
  %6271 = fsub fast float -0.000000e+00, %4536
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6039, float %6040, float %6041, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, %6046
  %6275 = fmul fast float %6273, 9.843750e-01
  %6276 = fadd fast float %6275, 7.812500e-03
  %6277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %6276, float %4829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 3
  %6280 = fmul fast float %6278, %4531
  %6281 = fmul fast float %6278, %4532
  %6282 = fmul fast float %6278, %4554
  %6283 = fadd fast float %6280, %6279
  %6284 = fadd fast float %6281, %6279
  %6285 = fadd fast float %6282, %6279
  %6286 = call float @dx.op.binary.f32(i32 35, float %6284, float %6285)  ; FMax(a,b)
  %6287 = call float @dx.op.binary.f32(i32 35, float %6283, float %6286)  ; FMax(a,b)
  %6288 = fsub fast float 1.000000e+00, %6287
  %6289 = fmul fast float %6274, %6288
  %6290 = fmul fast float %6289, %3968
  %6291 = fmul fast float %6289, %3969
  %6292 = fmul fast float %6289, %3970
  %6293 = fmul fast float %6268, %6180
  %6294 = fadd fast float %6290, %6293
  %6295 = fadd fast float %6291, %6293
  %6296 = fadd fast float %6292, %6293
  %6297 = fmul fast float %6162, %3882
  %6298 = fmul fast float %6297, %6294
  %6299 = fmul fast float %6163, %3882
  %6300 = fmul fast float %6299, %6295
  %6301 = fmul fast float %6164, %3882
  %6302 = fmul fast float %6301, %6296
  %6303 = fadd fast float %6298, %6001
  %6304 = fadd fast float %6300, %6002
  %6305 = fadd fast float %6302, %6003
  %6306 = fmul fast float %6297, %6180
  %6307 = fmul fast float %6306, %6252
  %6308 = fmul fast float %6307, %6237
  %6309 = fmul fast float %6299, %6180
  %6310 = fmul fast float %6309, %6253
  %6311 = fmul fast float %6310, %6237
  %6312 = fmul fast float %6301, %6180
  %6313 = fmul fast float %6312, %6254
  %6314 = fmul fast float %6313, %6237
  %6315 = fadd fast float %6308, %5998
  %6316 = fadd fast float %6311, %5999
  %6317 = fadd fast float %6314, %6000
  br label %6076

; <label>:6318                                    ; preds = %6076
  br label %6319

; <label>:6319                                    ; preds = %6318, %5964
  %6320 = phi float [ %5966, %5964 ], [ %6077, %6318 ]
  %6321 = phi float [ %5967, %5964 ], [ %6078, %6318 ]
  %6322 = phi float [ %5968, %5964 ], [ %6079, %6318 ]
  %6323 = phi float [ %5969, %5964 ], [ %6080, %6318 ]
  %6324 = phi float [ %5970, %5964 ], [ %6081, %6318 ]
  %6325 = phi float [ %5971, %5964 ], [ %6082, %6318 ]
  %6326 = add i32 %5965, 1
  %6327 = icmp ugt i32 %6326, %5961
  br i1 %6327, label %6328, label %5964

; <label>:6328                                    ; preds = %6319
  br label %6329

; <label>:6329                                    ; preds = %6328, %5940, %5930
  %6330 = phi float [ %5931, %5930 ], [ %5931, %5940 ], [ %6320, %6328 ]
  %6331 = phi float [ %5932, %5930 ], [ %5932, %5940 ], [ %6321, %6328 ]
  %6332 = phi float [ %5933, %5930 ], [ %5933, %5940 ], [ %6322, %6328 ]
  %6333 = phi float [ %5934, %5930 ], [ %5934, %5940 ], [ %6323, %6328 ]
  %6334 = phi float [ %5935, %5930 ], [ %5935, %5940 ], [ %6324, %6328 ]
  %6335 = phi float [ %5936, %5930 ], [ %5936, %5940 ], [ %6325, %6328 ]
  %6336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %6337 = extractvalue %dx.types.ResRet.i32 %6336, 3
  %6338 = bitcast i32 %6337 to float
  %6339 = fsub fast float 1.000000e+00, %6338
  %6340 = fmul fast float %6339, %174
  %6341 = fadd fast float %6340, %6338
  %6342 = call float @dx.op.unary.f32(i32 24, float %4528)  ; Sqrt(value)
  %6343 = call float @dx.op.unary.f32(i32 24, float %4529)  ; Sqrt(value)
  %6344 = call float @dx.op.unary.f32(i32 24, float %4530)  ; Sqrt(value)
  %6345 = fmul fast float %6342, %6333
  %6346 = fmul fast float %6343, %6334
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  br i1 %216, label %6349, label %6382

; <label>:6349                                    ; preds = %6329
  %6350 = fadd fast float %6335, %3832
  %6351 = fmul fast float %6350, %3830
  %6352 = fsub fast float 1.000000e+00, %3830
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 3
  %6356 = fmul fast float %6355, %6353
  %6357 = fsub fast float 1.000000e+00, %4556
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = fmul fast float %6359, %6357
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6362 = fmul fast float %6361, %4552
  %6363 = fadd fast float %6346, %6345
  %6364 = fmul fast float %6348, %6363
  %6365 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6366 = fadd fast float %6356, %6351
  %6367 = fsub fast float %6366, %6360
  %6368 = fadd fast float %6367, %6362
  %6369 = fsub fast float %6368, %6365
  %6370 = extractvalue %dx.types.CBufRet.f32 %6354, 2
  %6371 = fmul fast float %6369, %6370
  %6372 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = fsub fast float %6372, %6374
  %6376 = fmul fast float %6375, 1.000000e+01
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fsub fast float 1.000000e+00, %6341
  %6379 = fmul fast float %6377, %6378
  %6380 = fadd fast float %6379, %6341
  %6381 = fmul fast float %6380, %6372
  br label %6398

; <label>:6382                                    ; preds = %6329
  %6383 = fmul fast float %6344, %6335
  %6384 = fmul fast float %6348, %6345
  %6385 = fmul fast float %6348, %6346
  %6386 = fmul fast float %6383, %6348
  %6387 = add i32 %42, 356
  %6388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6387, i32 undef)  ; BufferLoad(srv,index,wot)
  %6389 = extractvalue %dx.types.ResRet.i32 %6388, 0
  %6390 = and i32 %6389, 32
  %6391 = icmp eq i32 %6390, 0
  br i1 %6391, label %6398, label %6392

; <label>:6392                                    ; preds = %6382
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = fmul fast float %6394, 0x3FE99999A0000000
  %6396 = fadd fast float %6394, %6384
  %6397 = fadd fast float %6395, %6386
  br label %6398

; <label>:6398                                    ; preds = %6392, %6382, %6349
  %6399 = phi float [ %6364, %6349 ], [ %6396, %6392 ], [ %6384, %6382 ]
  %6400 = phi float [ %6381, %6349 ], [ %6385, %6392 ], [ %6385, %6382 ]
  %6401 = phi float [ %6380, %6349 ], [ %6397, %6392 ], [ %6386, %6382 ]
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = fmul fast float %6403, %6331
  %6405 = fmul fast float %6403, %6332
  %6406 = fadd fast float %6331, %6330
  %6407 = select i1 %216, float %6406, float %6330
  %6408 = fmul float %6407, %6403
  %6409 = select i1 %216, float 0.000000e+00, float %6404
  %6410 = select i1 %216, float 0.000000e+00, float %6405
  %6411 = fmul fast float %6399, %6342
  %6412 = fmul fast float %6400, %6343
  %6413 = fmul fast float %6401, %6344
  %6414 = fadd fast float %6408, %6411
  %6415 = fadd fast float %6409, %6412
  %6416 = fadd fast float %6410, %6413
  %6417 = select i1 %216, float %6400, float %6415
  %6418 = select i1 %216, float %6401, float %6416
  %6419 = call float @dx.op.binary.f32(i32 36, float %6414, float 3.225500e+04)  ; FMin(a,b)
  %6420 = call float @dx.op.binary.f32(i32 36, float %6417, float 3.225500e+04)  ; FMin(a,b)
  %6421 = call float @dx.op.binary.f32(i32 36, float %6418, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
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

