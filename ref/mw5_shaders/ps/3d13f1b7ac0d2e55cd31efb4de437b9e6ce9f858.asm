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
; shader hash: 070b9c491aa87bf94467537299fd3a19
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
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %81
  %147 = fmul fast float %145, %82
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 114688
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float %146, float 0.000000e+00
  %153 = select i1 %151, float %147, float 0.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %155, 2.550000e+02
  %157 = fptoui float %156 to i32
  %158 = select i1 %151, i32 %157, i32 0
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 4
  %164 = icmp ne i32 %163, 0
  %165 = and i1 %162, %164
  br i1 %165, label %166, label %175

; <label>:166                                     ; preds = %0
  %167 = fmul fast float %109, %82
  %168 = fmul fast float %108, %81
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %168, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fsub fast float 1.000000e+00, %170
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = fcmp fast olt float %171, %173
  br label %183

; <label>:175                                     ; preds = %0
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 3
  %178 = and i32 %177, 3
  %179 = icmp ne i32 %178, 0
  %180 = and i32 %177, 4
  %181 = icmp eq i32 %180, 0
  %182 = and i1 %179, %181
  br label %183

; <label>:183                                     ; preds = %175, %166
  %184 = phi i1 [ %174, %166 ], [ %182, %175 ]
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %187 = fmul fast float %186, 0x3FE3C6EF40000000
  %188 = frem fast float %81, 2.560000e+02
  %189 = frem fast float %82, 2.560000e+02
  %190 = fptoui float %188 to i32
  %191 = fptoui float %189 to i32
  %192 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = fadd fast float %193, %187
  %196 = fadd fast float %194, %187
  %197 = call float @dx.op.unary.f32(i32 22, float %195)  ; Frc(value)
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = add i32 %42, 156
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = shl i32 %201, 4
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %201, 7
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %201, 22
  %209 = shl nuw nsw i32 %208, 5
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = add i32 %42, 216
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 255
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F70101020000000
  %217 = lshr i32 %213, 8
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = lshr i32 %213, 16
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = add i32 %42, 36
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 65535
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %227, 16
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %42, 288
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %236, 0x3F50624DE0000000
  %240 = fmul fast float %238, 0x3F50624DE0000000
  %241 = add i32 %42, 172
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = shl i32 %243, 4
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %243, 7
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %243, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %42, 232
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %255, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %255, 16
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = add i32 %42, 52
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %42, 304
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %278, 0x3F50624DE0000000
  %282 = fmul fast float %280, 0x3F50624DE0000000
  %283 = add i32 %42, 188
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = shl i32 %285, 4
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %285, 7
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %285, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %42, 248
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %297, 8
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %297, 16
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = add i32 %42, 68
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %42, 320
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %320, 0x3F50624DE0000000
  %324 = fmul fast float %322, 0x3F50624DE0000000
  %325 = add i32 %42, 204
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = shl i32 %327, 4
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %327, 7
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 22
  %335 = shl nuw nsw i32 %334, 5
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %42, 264
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %339, 8
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = lshr i32 %339, 16
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = add i32 %42, 84
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %42, 336
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = fmul fast float %362, 0x3F50624DE0000000
  %366 = fmul fast float %364, 0x3F50624DE0000000
  %367 = add i32 %42, 348
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 32
  %371 = icmp eq i32 %370, 0
  %372 = and i32 %369, 64
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %369, 128
  %375 = icmp eq i32 %374, 0
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 2
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %393, label %380

; <label>:380                                     ; preds = %183
  %381 = add i32 %42, 552
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %385, %dx.types.Handle %78, float %69, float %70, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = extractvalue %dx.types.ResRet.f32 %386, 1
  %389 = extractvalue %dx.types.ResRet.f32 %386, 2
  %390 = fmul fast float %387, %71
  %391 = fmul fast float %388, %72
  %392 = fmul fast float %389, %73
  br label %393

; <label>:393                                     ; preds = %380, %183
  %394 = phi float [ %73, %183 ], [ %392, %380 ]
  %395 = phi float [ %72, %183 ], [ %391, %380 ]
  %396 = phi float [ %71, %183 ], [ %390, %380 ]
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 2
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %420, label %401

; <label>:401                                     ; preds = %393
  %402 = add i32 %42, 44
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 1
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %396, float 1.000000e+00
  %408 = add i32 %42, 60
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 1
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %395, float 1.000000e+00
  %414 = add i32 %42, 76
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  %419 = select i1 %418, float %394, float 1.000000e+00
  br label %420

; <label>:420                                     ; preds = %401, %393
  %421 = phi float [ %394, %393 ], [ %419, %401 ]
  %422 = phi float [ %395, %393 ], [ %413, %401 ]
  %423 = phi float [ %396, %393 ], [ %407, %401 ]
  %424 = lshr i32 %398, 20
  %425 = and i32 %424, 3
  %426 = add nuw nsw i32 %425, 1
  %427 = add i32 %42, 24
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %42, 28
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = or i32 %432, %429
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %893, label %435

; <label>:435                                     ; preds = %420
  %436 = and i32 %429, 262144
  %437 = icmp ne i32 %436, 0
  %438 = select i1 %437, float %44, float 1.000000e+00
  %439 = select i1 %437, float %45, float 0.000000e+00
  %440 = select i1 %437, float %46, float 0.000000e+00
  %441 = select i1 %437, float %47, float 1.000000e+00
  %442 = select i1 %437, float %48, float %69
  %443 = select i1 %437, float %49, float %70
  %444 = add i32 %42, 284
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = lshr i32 %446, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = fmul fast float %448, 0x3F50624DE0000000
  %450 = add i32 %42, 88
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = lshr i32 %452, 24
  %456 = add i32 %42, 292
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %42, 32
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = lshr i32 %465, 22
  %467 = shl nuw nsw i32 %466, 5
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = shl i32 %465, 4
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %465, 7
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 3
  %477 = fmul fast float %476, 1.000000e+03
  %478 = fmul fast float %239, %477
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %229
  %481 = fmul fast float %240, %477
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fadd fast float %482, %231
  %484 = fmul fast float %449, %477
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fmul fast float %485, 0x401921FB60000000
  %487 = fadd fast float %486, %468
  %488 = call float @dx.op.unary.f32(i32 13, float %487)  ; Sin(value)
  %489 = call float @dx.op.unary.f32(i32 12, float %487)  ; Cos(value)
  %490 = fsub fast float -0.000000e+00, %488
  %491 = fadd fast float %442, -5.000000e-01
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fmul fast float %460, %491
  %494 = fmul fast float %462, %492
  %495 = fadd fast float %493, 5.000000e-01
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fmul fast float %471, %495
  %498 = fmul fast float %474, %496
  %499 = fmul fast float %489, %497
  %500 = call float @dx.op.tertiary.f32(i32 46, float %490, float %498, float %499)  ; FMad(a,b,c)
  %501 = fmul fast float %488, %497
  %502 = call float @dx.op.tertiary.f32(i32 46, float %489, float %498, float %501)  ; FMad(a,b,c)
  %503 = fadd fast float %480, %500
  %504 = fadd fast float %483, %502
  %505 = icmp ugt i32 %454, 1
  %506 = icmp ugt i32 %452, 33554431
  %507 = or i1 %506, %505
  br i1 %507, label %508, label %533

; <label>:508                                     ; preds = %435
  %509 = add i32 %42, 228
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = fmul fast float %476, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = mul nuw nsw i32 %454, %455
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %515, %517
  %519 = call float @dx.op.unary.f32(i32 27, float %518)  ; Round_ni(value)
  %520 = fptoui float %519 to i32
  %521 = urem i32 %520, %454
  %522 = udiv i32 %520, %455
  %523 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = uitofp i32 %521 to float
  %526 = uitofp i32 %522 to float
  %527 = fadd fast float %523, %525
  %528 = fadd fast float %524, %526
  %529 = uitofp i32 %454 to float
  %530 = uitofp i32 %455 to float
  %531 = fdiv fast float %527, %529
  %532 = fdiv fast float %528, %530
  br label %533

; <label>:533                                     ; preds = %508, %435
  %534 = phi float [ %531, %508 ], [ %503, %435 ]
  %535 = phi float [ %532, %508 ], [ %504, %435 ]
  %536 = and i32 %429, 16
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %734, label %538

; <label>:538                                     ; preds = %533
  %539 = add i32 %42, 440
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = extractvalue %dx.types.ResRet.f32 %544, 3
  %549 = and i32 %452, 255
  %550 = uitofp i32 %549 to float
  %551 = lshr i32 %452, 8
  %552 = and i32 %551, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %548, %550
  %555 = fadd fast float %554, %553
  %556 = fmul fast float %555, 0x3F70101000000000
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 512
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %569, label %561

; <label>:561                                     ; preds = %538
  %562 = add i32 %42, 520
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = add i32 %564, 0
  %566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %566, %dx.types.Handle %78, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  br label %569

; <label>:569                                     ; preds = %561, %538
  %570 = phi float [ %568, %561 ], [ 1.000000e+00, %538 ]
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 33554432
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %681, label %575

; <label>:575                                     ; preds = %569
  %576 = add i32 %42, 224
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 65535
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %578, 16
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = add i32 %42, 228
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 24
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = and i32 %589, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = lshr i32 %589, 8
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = lshr i32 %589, 16
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F70101020000000
  %604 = add i32 %42, 220
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = lshr i32 %606, 24
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = and i32 %606, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = lshr i32 %606, 8
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = lshr i32 %606, 16
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, 0x3F70101020000000
  %621 = bitcast float %545 to i32
  %622 = ashr i32 %621, 1
  %623 = sub nsw i32 1597463174, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %545, 5.000000e-01
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.500000e+00, %627
  %629 = fmul fast float %624, %545
  %630 = fmul fast float %629, %628
  %631 = bitcast float %546 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %546, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %546
  %640 = fmul fast float %639, %638
  %641 = bitcast float %547 to i32
  %642 = ashr i32 %641, 1
  %643 = sub nsw i32 1597463174, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %547, 5.000000e-01
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %646, %645
  %648 = fsub fast float 1.500000e+00, %647
  %649 = fmul fast float %644, %547
  %650 = fmul fast float %649, %648
  %651 = fsub fast float %630, %612
  %652 = fsub fast float %640, %616
  %653 = fsub fast float %650, %620
  %654 = fmul fast float %651, %580
  %655 = fmul fast float %652, %582
  %656 = fmul fast float %653, %587
  %657 = fadd fast float %654, %595
  %658 = fadd fast float %655, %599
  %659 = fadd fast float %656, %603
  %660 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = fmul fast float %660, %660
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fsub fast float %663, %545
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fmul fast float %666, %570
  %670 = fmul fast float %667, %570
  %671 = fmul fast float %668, %570
  %672 = fadd fast float %669, %545
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %592, %556
  %676 = fsub fast float %675, %609
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = fsub fast float %677, %556
  %679 = fmul fast float %678, %570
  %680 = fadd fast float %679, %556
  br label %734

; <label>:681                                     ; preds = %569
  %682 = and i32 %572, 134217728
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %718, label %684

; <label>:684                                     ; preds = %681
  %685 = call float @dx.op.unary.f32(i32 24, float %216)  ; Sqrt(value)
  %686 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %688 = fadd fast float %685, -5.000000e-01
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fmul fast float %688, %570
  %692 = fmul fast float %689, %570
  %693 = fmul fast float %690, %570
  %694 = fadd fast float %691, 5.000000e-01
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = fmul fast float %694, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %697
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %697
  %705 = fmul fast float %695, 2.000000e+00
  %706 = fsub fast float 1.000000e+00, %705
  %707 = fmul fast float %706, %698
  %708 = fadd fast float %707, %705
  %709 = fmul fast float %708, %698
  %710 = fmul fast float %696, 2.000000e+00
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %711, %699
  %713 = fadd fast float %712, %710
  %714 = fmul fast float %713, %699
  %715 = fmul fast float %704, %704
  %716 = fmul fast float %709, %709
  %717 = fmul fast float %714, %714
  br label %734

; <label>:718                                     ; preds = %681
  %719 = fmul fast float %216, %216
  %720 = fmul fast float %220, %220
  %721 = fmul fast float %224, %224
  %722 = fadd fast float %719, -1.000000e+00
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fmul fast float %570, %722
  %726 = fmul fast float %570, %723
  %727 = fmul fast float %570, %724
  %728 = fadd fast float %725, 1.000000e+00
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fmul fast float %728, %545
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  br label %734

; <label>:734                                     ; preds = %718, %684, %575, %533
  %735 = phi float [ %680, %575 ], [ %556, %684 ], [ %556, %718 ], [ 0x3FA23C0BE0000000, %533 ]
  %736 = phi float [ %672, %575 ], [ %715, %684 ], [ %731, %718 ], [ 1.000000e+00, %533 ]
  %737 = phi float [ %673, %575 ], [ %716, %684 ], [ %732, %718 ], [ 1.000000e+00, %533 ]
  %738 = phi float [ %674, %575 ], [ %717, %684 ], [ %733, %718 ], [ 1.000000e+00, %533 ]
  %739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.i32 %739, 1
  %741 = and i32 %740, 1
  %742 = icmp ne i32 %741, 0
  %743 = add i32 %42, 356
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 32
  %747 = icmp ne i32 %746, 0
  %748 = and i1 %742, %747
  %749 = select i1 %748, float 1.000000e+00, float %736
  %750 = select i1 %748, float 0x3FD3333340000000, float %737
  %751 = select i1 %748, float 0x3FD3333340000000, float %738
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 32
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %828, label %756

; <label>:756                                     ; preds = %734
  %757 = add i32 %42, 92
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %42, 456
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %762, 0
  %764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %764, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = extractvalue %dx.types.ResRet.f32 %765, 3
  %770 = and i32 %759, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %759, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %759, 16
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fmul fast float %766, %771
  %780 = fadd fast float %779, %774
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = fadd fast float %767, -5.000000e-01
  %783 = fadd fast float %769, -5.000000e-01
  %784 = fmul fast float %782, %778
  %785 = fmul fast float %783, %778
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fmul fast float %786, 2.000000e+00
  %789 = fadd fast float %788, -1.000000e+00
  %790 = fmul fast float %787, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fadd fast float %789, %791
  %793 = fmul fast float %792, 5.000000e-01
  %794 = fsub fast float %789, %791
  %795 = fmul fast float %794, 5.000000e-01
  %796 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %797 = fsub fast float 1.000000e+00, %796
  %798 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %799 = fsub fast float %797, %798
  %800 = call float @dx.op.dot3.f32(i32 55, float %793, float %795, float %799, float %793, float %795, float %799)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 25, float %800)  ; Rsqrt(value)
  %802 = fmul fast float %793, %801
  %803 = fmul fast float %795, %801
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 67108864
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %824, label %808

; <label>:808                                     ; preds = %756
  %809 = add i32 %42, 280
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 65535
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %811, 16
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = fsub fast float %781, %819
  %821 = fmul fast float %820, %813
  %822 = fadd fast float %821, %817
  %823 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  br label %824

; <label>:824                                     ; preds = %808, %756
  %825 = phi float [ %823, %808 ], [ %781, %756 ]
  %826 = call float @dx.op.dot2.f32(i32 54, float %802, float %803, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  %827 = call float @dx.op.dot2.f32(i32 54, float %802, float %803, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  br label %828

; <label>:828                                     ; preds = %824, %734
  %829 = phi float [ %825, %824 ], [ 0x3FD6666660000000, %734 ]
  %830 = phi float [ %826, %824 ], [ 0.000000e+00, %734 ]
  %831 = phi float [ %827, %824 ], [ 0.000000e+00, %734 ]
  %832 = phi float [ %768, %824 ], [ 1.000000e+00, %734 ]
  %833 = add i32 %42, 160
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 22
  %837 = shl nuw nsw i32 %836, 5
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 64
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %876, label %843

; <label>:843                                     ; preds = %828
  %844 = add i32 %42, 472
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = add i32 %846, 0
  %848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 131072
  %852 = icmp eq i32 %851, 0
  %853 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %848, %dx.types.Handle %77, float %534, float %535, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  %855 = extractvalue %dx.types.ResRet.f32 %853, 1
  %856 = extractvalue %dx.types.ResRet.f32 %853, 2
  %857 = fmul fast float %854, %204
  %858 = fmul fast float %855, %207
  %859 = fmul fast float %856, %210
  br i1 %852, label %866, label %860

; <label>:860                                     ; preds = %843
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fmul fast float %862, %857
  %864 = fmul fast float %862, %858
  %865 = fmul fast float %862, %859
  br label %866

; <label>:866                                     ; preds = %860, %843
  %867 = phi float [ %863, %860 ], [ %857, %843 ]
  %868 = phi float [ %864, %860 ], [ %858, %843 ]
  %869 = phi float [ %865, %860 ], [ %859, %843 ]
  %870 = fmul fast float %867, %838
  %871 = select i1 %184, float %870, float %867
  %872 = call float @dx.op.dot3.f32(i32 55, float %871, float %868, float %869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = select i1 %184, float 0.000000e+00, float %867
  %874 = select i1 %184, float %872, float %868
  %875 = select i1 %184, float 0.000000e+00, float %869
  br label %876

; <label>:876                                     ; preds = %866, %828
  %877 = phi float [ %873, %866 ], [ 0.000000e+00, %828 ]
  %878 = phi float [ %874, %866 ], [ 0.000000e+00, %828 ]
  %879 = phi float [ %875, %866 ], [ 0.000000e+00, %828 ]
  %880 = add i32 %42, 96
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = lshr i32 %882, 8
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = call float @dx.op.dot3.f32(i32 55, float %749, float %750, float %751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = fmul fast float %887, %888
  %890 = fadd fast float %889, %884
  %891 = fmul fast float %890, 0x3F70101020000000
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  br label %893

; <label>:893                                     ; preds = %876, %420
  %894 = phi float [ 0.000000e+00, %420 ], [ %830, %876 ]
  %895 = phi float [ 0.000000e+00, %420 ], [ %831, %876 ]
  %896 = phi float [ 0.000000e+00, %420 ], [ %877, %876 ]
  %897 = phi float [ 0.000000e+00, %420 ], [ %878, %876 ]
  %898 = phi float [ 0.000000e+00, %420 ], [ %879, %876 ]
  %899 = phi float [ 0.000000e+00, %420 ], [ %749, %876 ]
  %900 = phi float [ 0.000000e+00, %420 ], [ %750, %876 ]
  %901 = phi float [ 0.000000e+00, %420 ], [ %751, %876 ]
  %902 = phi float [ 0.000000e+00, %420 ], [ %735, %876 ]
  %903 = phi float [ 0.000000e+00, %420 ], [ 1.000000e+00, %876 ]
  %904 = phi float [ 0.000000e+00, %420 ], [ %829, %876 ]
  %905 = phi float [ 0.000000e+00, %420 ], [ %832, %876 ]
  %906 = phi float [ 0.000000e+00, %420 ], [ %892, %876 ]
  br i1 %371, label %1748, label %907

; <label>:907                                     ; preds = %893
  %908 = icmp ult i32 %426, 2
  %909 = add i32 %42, 40
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %42, 44
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = or i32 %914, %911
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %1748, label %917

; <label>:917                                     ; preds = %907
  %918 = and i32 %911, 262144
  %919 = icmp ne i32 %918, 0
  %920 = select i1 %919, float %44, float 1.000000e+00
  %921 = select i1 %919, float %45, float 0.000000e+00
  %922 = select i1 %919, float %46, float 0.000000e+00
  %923 = select i1 %919, float %47, float 1.000000e+00
  %924 = select i1 %919, float %48, float %69
  %925 = select i1 %919, float %49, float %70
  %926 = add i32 %42, 300
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = lshr i32 %928, 16
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = fmul fast float %930, 0x3F50624DE0000000
  %932 = add i32 %42, 104
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = lshr i32 %934, 16
  %936 = and i32 %935, 255
  %937 = lshr i32 %934, 24
  %938 = add i32 %42, 308
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 65535
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = lshr i32 %940, 16
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = add i32 %42, 48
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = lshr i32 %947, 22
  %949 = shl nuw nsw i32 %948, 5
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = shl i32 %947, 4
  %952 = and i32 %951, 32752
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = lshr i32 %947, 7
  %955 = and i32 %954, 32752
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %959 = fmul fast float %958, 1.000000e+03
  %960 = fmul fast float %281, %959
  %961 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %962 = fadd fast float %961, %271
  %963 = fmul fast float %282, %959
  %964 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %965 = fadd fast float %964, %273
  %966 = fmul fast float %931, %959
  %967 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %968 = fmul fast float %967, 0x401921FB60000000
  %969 = fadd fast float %968, %950
  %970 = call float @dx.op.unary.f32(i32 13, float %969)  ; Sin(value)
  %971 = call float @dx.op.unary.f32(i32 12, float %969)  ; Cos(value)
  %972 = fsub fast float -0.000000e+00, %970
  %973 = fadd fast float %924, -5.000000e-01
  %974 = fadd fast float %925, -5.000000e-01
  %975 = fmul fast float %942, %973
  %976 = fmul fast float %944, %974
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fmul fast float %953, %977
  %980 = fmul fast float %956, %978
  %981 = fmul fast float %971, %979
  %982 = call float @dx.op.tertiary.f32(i32 46, float %972, float %980, float %981)  ; FMad(a,b,c)
  %983 = fmul fast float %970, %979
  %984 = call float @dx.op.tertiary.f32(i32 46, float %971, float %980, float %983)  ; FMad(a,b,c)
  %985 = fadd fast float %962, %982
  %986 = fadd fast float %965, %984
  %987 = icmp ugt i32 %936, 1
  %988 = icmp ugt i32 %934, 33554431
  %989 = or i1 %988, %987
  br i1 %989, label %990, label %1015

; <label>:990                                     ; preds = %917
  %991 = add i32 %42, 244
  %992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.i32 %992, 0
  %994 = lshr i32 %993, 16
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = fmul fast float %958, %995
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = mul nuw nsw i32 %936, %937
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %997, %999
  %1001 = call float @dx.op.unary.f32(i32 27, float %1000)  ; Round_ni(value)
  %1002 = fptoui float %1001 to i32
  %1003 = urem i32 %1002, %936
  %1004 = udiv i32 %1002, %937
  %1005 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %1006 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %1007 = uitofp i32 %1003 to float
  %1008 = uitofp i32 %1004 to float
  %1009 = fadd fast float %1005, %1007
  %1010 = fadd fast float %1006, %1008
  %1011 = uitofp i32 %936 to float
  %1012 = uitofp i32 %937 to float
  %1013 = fdiv fast float %1009, %1011
  %1014 = fdiv fast float %1010, %1012
  br label %1015

; <label>:1015                                    ; preds = %990, %917
  %1016 = phi float [ %1013, %990 ], [ %985, %917 ]
  %1017 = phi float [ %1014, %990 ], [ %986, %917 ]
  %1018 = and i32 %911, 16777216
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1129, label %1020

; <label>:1020                                    ; preds = %1015
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1025 = fadd fast float %1022, %140
  %1026 = fadd fast float %1023, %141
  %1027 = fadd fast float %1024, %142
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  %1031 = icmp eq i32 %43, 65535
  br i1 %1031, label %1126, label %1032

; <label>:1032                                    ; preds = %1020
  %1033 = lshr i32 %43, 1
  %1034 = shl i32 %1033, 2
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %43, 1
  %1038 = icmp ne i32 %1037, 0
  %1039 = lshr i32 %1036, 16
  %1040 = and i32 %1036, 65535
  %1041 = select i1 %1038, i32 %1039, i32 %1040
  %1042 = icmp eq i32 %1041, 65535
  br i1 %1042, label %1122, label %1043

; <label>:1043                                    ; preds = %1032
  %1044 = mul nuw nsw i32 %1041, 40
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = add nuw nsw i32 %1044, 12
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = add nuw nsw i32 %1044, 24
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = add nuw nsw i32 %1044, 36
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = fsub fast float %1025, %1046
  %1063 = fsub fast float %1026, %1047
  %1064 = fsub fast float %1027, %1048
  %1065 = fmul fast float %1061, %1062
  %1066 = fmul fast float %1061, %1063
  %1067 = fmul fast float %1061, %1064
  %1068 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fmul fast float %1071, %1051
  %1075 = fmul fast float %1072, %1052
  %1076 = fmul fast float %1073, %1053
  %1077 = shl i32 %43, 2
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = add i32 %1079, 0
  %1081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1082 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1081, %dx.types.Handle %37, float %1082, float %1083, float %1084, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = fmul fast float %1086, 1.023000e+03
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fadd fast float %1089, 5.000000e-01
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = fsub fast float %1065, %1068
  %1099 = fsub fast float %1066, %1069
  %1100 = fsub fast float %1067, %1070
  %1101 = fmul fast float %1098, 7.500000e-01
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fadd fast float %1068, 1.250000e-01
  %1105 = fadd fast float %1104, %1101
  %1106 = fadd fast float %1105, %1095
  %1107 = fadd fast float %1069, 1.250000e-01
  %1108 = fadd fast float %1107, %1102
  %1109 = fadd fast float %1108, %1096
  %1110 = fadd fast float %1070, 1.250000e-01
  %1111 = fadd fast float %1110, %1103
  %1112 = fadd fast float %1111, %1097
  %1113 = fmul fast float %1106, %1056
  %1114 = fmul fast float %1109, %1057
  %1115 = fmul fast float %1112, %1058
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1119, %dx.types.Handle %35, float %1113, float %1114, float %1115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  br label %1122

; <label>:1122                                    ; preds = %1043, %1032
  %1123 = phi float [ %1121, %1043 ], [ -1.000000e+00, %1032 ]
  %1124 = fadd fast float %1123, %1030
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  br label %1126

; <label>:1126                                    ; preds = %1122, %1020
  %1127 = phi float [ %1125, %1122 ], [ %1030, %1020 ]
  %1128 = fmul fast float %1127, %423
  br label %1129

; <label>:1129                                    ; preds = %1126, %1015
  %1130 = phi float [ %1128, %1126 ], [ %423, %1015 ]
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 256
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1181, label %1135

; <label>:1135                                    ; preds = %1129
  %1136 = add i32 %42, 508
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %1138, 0
  %1140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1140, %dx.types.Handle %78, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = add i32 %42, 116
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = shl i32 %1145, 4
  %1147 = and i32 %1146, 32752
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = lshr i32 %1145, 7
  %1150 = and i32 %1149, 32752
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = fsub fast float 1.000000e+00, %1130
  %1153 = call float @dx.op.binary.f32(i32 35, float %1152, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1154 = bitcast float %1130 to i32
  %1155 = sitofp i32 %1154 to float
  %1156 = fadd fast float %1155, 0xC1CFBF8940000000
  %1157 = fmul fast float %1151, %1156
  %1158 = fadd fast float %1157, 0x41CFBF8940000000
  %1159 = fptosi float %1158 to i32
  %1160 = bitcast i32 %1159 to float
  %1161 = bitcast float %1153 to i32
  %1162 = sitofp i32 %1161 to float
  %1163 = fadd fast float %1162, 0xC1CFBF8940000000
  %1164 = fmul fast float %1163, %1151
  %1165 = fadd fast float %1164, 0x41CFBF8940000000
  %1166 = fptosi float %1165 to i32
  %1167 = bitcast i32 %1166 to float
  %1168 = fmul fast float %1160, %1148
  %1169 = fmul fast float %1167, %1148
  %1170 = fsub fast float %1153, %1168
  %1171 = fadd fast float %1169, %1153
  %1172 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1173 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1174 = fsub fast float %1142, %1172
  %1175 = fsub fast float %1173, %1172
  %1176 = bitcast float %1175 to i32
  %1177 = sub nsw i32 2129859010, %1176
  %1178 = bitcast i32 %1177 to float
  %1179 = fmul fast float %1178, %1174
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  br label %1181

; <label>:1181                                    ; preds = %1135, %1129
  %1182 = phi float [ %1180, %1135 ], [ %1130, %1129 ]
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = and i32 %1184, 128
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1203, label %1187

; <label>:1187                                    ; preds = %1181
  %1188 = add i32 %42, 492
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1190, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1192, %dx.types.Handle %78, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 524288
  %1198 = icmp ne i32 %1197, 0
  %1199 = fcmp fast ogt float %1194, 0x3FE0101020000000
  %1200 = select i1 %1199, float 1.000000e+00, float 0.000000e+00
  %1201 = select i1 %1198, float %1200, float %1194
  %1202 = fmul fast float %1201, %1182
  br label %1203

; <label>:1203                                    ; preds = %1187, %1181
  %1204 = phi float [ %1202, %1187 ], [ %1182, %1181 ]
  %1205 = fcmp fast ult float %1204, 0x3F70101020000000
  br i1 %1205, label %1748, label %1206

; <label>:1206                                    ; preds = %1203
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 16
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1409, label %1211

; <label>:1211                                    ; preds = %1206
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %42, 444
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %77, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = extractvalue %dx.types.ResRet.f32 %1219, 3
  %1224 = and i32 %1213, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1213, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1223, %1225
  %1230 = fadd fast float %1229, %1228
  %1231 = fmul fast float %1230, 0x3F70101000000000
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 512
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1244, label %1236

; <label>:1236                                    ; preds = %1211
  %1237 = add i32 %42, 524
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = add i32 %1239, 0
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1241, %dx.types.Handle %78, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  br label %1244

; <label>:1244                                    ; preds = %1236, %1211
  %1245 = phi float [ %1243, %1236 ], [ 1.000000e+00, %1211 ]
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, 33554432
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1356, label %1250

; <label>:1250                                    ; preds = %1244
  %1251 = add i32 %42, 240
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 65535
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1253, 16
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = add i32 %42, 244
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 65535
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = lshr i32 %1264, 24
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F70101020000000
  %1268 = and i32 %1264, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = lshr i32 %1264, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = lshr i32 %1264, 16
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101020000000
  %1279 = add i32 %42, 236
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = lshr i32 %1281, 24
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = and i32 %1281, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = lshr i32 %1281, 8
  %1289 = and i32 %1288, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = lshr i32 %1281, 16
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = bitcast float %1220 to i32
  %1297 = ashr i32 %1296, 1
  %1298 = sub nsw i32 1597463174, %1297
  %1299 = bitcast i32 %1298 to float
  %1300 = fmul fast float %1220, 5.000000e-01
  %1301 = fmul fast float %1299, %1299
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float 1.500000e+00, %1302
  %1304 = fmul fast float %1299, %1220
  %1305 = fmul fast float %1304, %1303
  %1306 = bitcast float %1221 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1221, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1221
  %1315 = fmul fast float %1314, %1313
  %1316 = bitcast float %1222 to i32
  %1317 = ashr i32 %1316, 1
  %1318 = sub nsw i32 1597463174, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1222, 5.000000e-01
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float 1.500000e+00, %1322
  %1324 = fmul fast float %1319, %1222
  %1325 = fmul fast float %1324, %1323
  %1326 = fsub fast float %1305, %1287
  %1327 = fsub fast float %1315, %1291
  %1328 = fsub fast float %1325, %1295
  %1329 = fmul fast float %1326, %1255
  %1330 = fmul fast float %1327, %1257
  %1331 = fmul fast float %1328, %1262
  %1332 = fadd fast float %1329, %1270
  %1333 = fadd fast float %1330, %1274
  %1334 = fadd fast float %1331, %1278
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fsub fast float %1338, %1220
  %1342 = fsub fast float %1339, %1221
  %1343 = fsub fast float %1340, %1222
  %1344 = fmul fast float %1341, %1245
  %1345 = fmul fast float %1342, %1245
  %1346 = fmul fast float %1343, %1245
  %1347 = fadd fast float %1344, %1220
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1267, %1231
  %1351 = fsub fast float %1350, %1284
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = fsub fast float %1352, %1231
  %1354 = fmul fast float %1353, %1245
  %1355 = fadd fast float %1354, %1231
  br label %1409

; <label>:1356                                    ; preds = %1244
  %1357 = and i32 %1247, 134217728
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1393, label %1359

; <label>:1359                                    ; preds = %1356
  %1360 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %1361 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %1362 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %1363 = fadd fast float %1360, -5.000000e-01
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fmul fast float %1363, %1245
  %1367 = fmul fast float %1364, %1245
  %1368 = fmul fast float %1365, %1245
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = call float @dx.op.unary.f32(i32 24, float %1220)  ; Sqrt(value)
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = fmul fast float %1369, 2.000000e+00
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %1376, %1372
  %1378 = fadd fast float %1377, %1375
  %1379 = fmul fast float %1378, %1372
  %1380 = fmul fast float %1370, 2.000000e+00
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1381, %1373
  %1383 = fadd fast float %1382, %1380
  %1384 = fmul fast float %1383, %1373
  %1385 = fmul fast float %1371, 2.000000e+00
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = fmul fast float %1386, %1374
  %1388 = fadd fast float %1387, %1385
  %1389 = fmul fast float %1388, %1374
  %1390 = fmul fast float %1379, %1379
  %1391 = fmul fast float %1384, %1384
  %1392 = fmul fast float %1389, %1389
  br label %1409

; <label>:1393                                    ; preds = %1356
  %1394 = fmul fast float %258, %258
  %1395 = fmul fast float %262, %262
  %1396 = fmul fast float %266, %266
  %1397 = fadd fast float %1394, -1.000000e+00
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fmul fast float %1245, %1397
  %1401 = fmul fast float %1245, %1398
  %1402 = fmul fast float %1245, %1399
  %1403 = fadd fast float %1400, 1.000000e+00
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fmul fast float %1403, %1220
  %1407 = fmul fast float %1404, %1221
  %1408 = fmul fast float %1405, %1222
  br label %1409

; <label>:1409                                    ; preds = %1393, %1359, %1250, %1206
  %1410 = phi float [ %1355, %1250 ], [ %1231, %1359 ], [ %1231, %1393 ], [ 0x3FA23C0BE0000000, %1206 ]
  %1411 = phi float [ %1347, %1250 ], [ %1390, %1359 ], [ %1406, %1393 ], [ 1.000000e+00, %1206 ]
  %1412 = phi float [ %1348, %1250 ], [ %1391, %1359 ], [ %1407, %1393 ], [ 1.000000e+00, %1206 ]
  %1413 = phi float [ %1349, %1250 ], [ %1392, %1359 ], [ %1408, %1393 ], [ 1.000000e+00, %1206 ]
  %1414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.i32 %1414, 1
  %1416 = and i32 %1415, 1
  %1417 = icmp ne i32 %1416, 0
  %1418 = add i32 %42, 356
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 32
  %1422 = icmp ne i32 %1421, 0
  %1423 = and i1 %1417, %1422
  %1424 = select i1 %1423, float 1.000000e+00, float %1411
  %1425 = select i1 %1423, float 0x3FD3333340000000, float %1412
  %1426 = select i1 %1423, float 0x3FD3333340000000, float %1413
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 32
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1503, label %1431

; <label>:1431                                    ; preds = %1409
  %1432 = add i32 %42, 108
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %42, 460
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = add i32 %1437, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1439, %dx.types.Handle %77, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.ResRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1444 = extractvalue %dx.types.ResRet.f32 %1440, 3
  %1445 = and i32 %1434, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = lshr i32 %1434, 8
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = lshr i32 %1434, 16
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = fmul fast float %1452, 0x3F70101000000000
  %1454 = fmul fast float %1441, %1446
  %1455 = fadd fast float %1454, %1449
  %1456 = fmul fast float %1455, 0x3F70101000000000
  %1457 = fadd fast float %1442, -5.000000e-01
  %1458 = fadd fast float %1444, -5.000000e-01
  %1459 = fmul fast float %1457, %1453
  %1460 = fmul fast float %1458, %1453
  %1461 = fadd fast float %1459, 5.000000e-01
  %1462 = fadd fast float %1460, 5.000000e-01
  %1463 = fmul fast float %1461, 2.000000e+00
  %1464 = fadd fast float %1463, -1.000000e+00
  %1465 = fmul fast float %1462, 2.000000e+00
  %1466 = fadd fast float %1465, -1.000000e+00
  %1467 = fadd fast float %1464, %1466
  %1468 = fmul fast float %1467, 5.000000e-01
  %1469 = fsub fast float %1464, %1466
  %1470 = fmul fast float %1469, 5.000000e-01
  %1471 = call float @dx.op.unary.f32(i32 6, float %1468)  ; FAbs(value)
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1474 = fsub fast float %1472, %1473
  %1475 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1470, float %1474, float %1468, float %1470, float %1474)  ; Dot3(ax,ay,az,bx,by,bz)
  %1476 = call float @dx.op.unary.f32(i32 25, float %1475)  ; Rsqrt(value)
  %1477 = fmul fast float %1468, %1476
  %1478 = fmul fast float %1470, %1476
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 67108864
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1499, label %1483

; <label>:1483                                    ; preds = %1431
  %1484 = add i32 %42, 296
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 65535
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = lshr i32 %1486, 16
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = fsub fast float %1456, %1494
  %1496 = fmul fast float %1495, %1488
  %1497 = fadd fast float %1496, %1492
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  br label %1499

; <label>:1499                                    ; preds = %1483, %1431
  %1500 = phi float [ %1498, %1483 ], [ %1456, %1431 ]
  %1501 = call float @dx.op.dot2.f32(i32 54, float %1477, float %1478, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  %1502 = call float @dx.op.dot2.f32(i32 54, float %1477, float %1478, float %922, float %923)  ; Dot2(ax,ay,bx,by)
  br label %1503

; <label>:1503                                    ; preds = %1499, %1409
  %1504 = phi float [ %1500, %1499 ], [ 0x3FD6666660000000, %1409 ]
  %1505 = phi float [ %1501, %1499 ], [ 0.000000e+00, %1409 ]
  %1506 = phi float [ %1502, %1499 ], [ 0.000000e+00, %1409 ]
  %1507 = phi float [ %1443, %1499 ], [ 1.000000e+00, %1409 ]
  %1508 = add i32 %42, 176
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = lshr i32 %1510, 22
  %1512 = shl nuw nsw i32 %1511, 5
  %1513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1512)  ; LegacyF16ToF32(value)
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 64
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1551, label %1518

; <label>:1518                                    ; preds = %1503
  %1519 = add i32 %42, 476
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 131072
  %1527 = icmp eq i32 %1526, 0
  %1528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1523, %dx.types.Handle %77, float %1016, float %1017, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1529 = extractvalue %dx.types.ResRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.ResRet.f32 %1528, 1
  %1531 = extractvalue %dx.types.ResRet.f32 %1528, 2
  %1532 = fmul fast float %1529, %246
  %1533 = fmul fast float %1530, %249
  %1534 = fmul fast float %1531, %252
  br i1 %1527, label %1541, label %1535

; <label>:1535                                    ; preds = %1518
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 0
  %1538 = fmul fast float %1537, %1532
  %1539 = fmul fast float %1537, %1533
  %1540 = fmul fast float %1537, %1534
  br label %1541

; <label>:1541                                    ; preds = %1535, %1518
  %1542 = phi float [ %1538, %1535 ], [ %1532, %1518 ]
  %1543 = phi float [ %1539, %1535 ], [ %1533, %1518 ]
  %1544 = phi float [ %1540, %1535 ], [ %1534, %1518 ]
  %1545 = fmul fast float %1542, %1513
  %1546 = select i1 %184, float %1545, float %1542
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1546, float %1543, float %1544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = select i1 %184, float 0.000000e+00, float %1542
  %1549 = select i1 %184, float %1547, float %1543
  %1550 = select i1 %184, float 0.000000e+00, float %1544
  br label %1551

; <label>:1551                                    ; preds = %1541, %1503
  %1552 = phi float [ %1548, %1541 ], [ 0.000000e+00, %1503 ]
  %1553 = phi float [ %1549, %1541 ], [ 0.000000e+00, %1503 ]
  %1554 = phi float [ %1550, %1541 ], [ 0.000000e+00, %1503 ]
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %42, 112
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = lshr i32 %1559, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1424, float %1425, float %1426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = fmul fast float %1564, %1565
  %1567 = fadd fast float %1566, %1561
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  br i1 %908, label %1570, label %1578

; <label>:1570                                    ; preds = %1551
  %1571 = fsub fast float 1.000000e+00, %1204
  %1572 = fmul fast float %1571, %899
  %1573 = fmul fast float %1571, %900
  %1574 = fmul fast float %1571, %901
  %1575 = fmul fast float %1571, %896
  %1576 = fmul fast float %1571, %897
  %1577 = fmul fast float %1571, %898
  br label %1578

; <label>:1578                                    ; preds = %1570, %1551
  %1579 = phi float [ %1575, %1570 ], [ %896, %1551 ]
  %1580 = phi float [ %1576, %1570 ], [ %897, %1551 ]
  %1581 = phi float [ %1577, %1570 ], [ %898, %1551 ]
  %1582 = phi float [ %1572, %1570 ], [ %899, %1551 ]
  %1583 = phi float [ %1573, %1570 ], [ %900, %1551 ]
  %1584 = phi float [ %1574, %1570 ], [ %901, %1551 ]
  %1585 = and i32 %1556, 3
  %1586 = icmp eq i32 %1585, 3
  br i1 %1586, label %1665, label %1587

; <label>:1587                                    ; preds = %1578
  %1588 = and i32 %1556, 16
  %1589 = icmp ne i32 %1588, 0
  %1590 = select i1 %1589, float %1204, float 0.000000e+00
  %1591 = icmp eq i32 %1585, 0
  br i1 %1591, label %1592, label %1620

; <label>:1592                                    ; preds = %1587
  %1593 = and i32 %1556, 64
  %1594 = icmp ne i32 %1593, 0
  %1595 = select i1 %1594, float %1204, float 0.000000e+00
  %1596 = fsub fast float %1424, %1582
  %1597 = fsub fast float %1425, %1583
  %1598 = fsub fast float %1426, %1584
  %1599 = fmul fast float %1590, %1596
  %1600 = fmul fast float %1590, %1597
  %1601 = fmul fast float %1590, %1598
  %1602 = fadd fast float %1599, %1582
  %1603 = fadd fast float %1600, %1583
  %1604 = fadd fast float %1601, %1584
  %1605 = fsub fast float %1410, %902
  %1606 = fmul fast float %1590, %1605
  %1607 = fadd fast float %1606, %902
  %1608 = fsub fast float %1552, %1579
  %1609 = fsub fast float %1553, %1580
  %1610 = fsub fast float %1554, %1581
  %1611 = fmul fast float %1595, %1608
  %1612 = fmul fast float %1595, %1609
  %1613 = fmul fast float %1595, %1610
  %1614 = fadd fast float %1611, %1579
  %1615 = fadd fast float %1612, %1580
  %1616 = fadd fast float %1613, %1581
  %1617 = fsub fast float %1569, %906
  %1618 = fmul fast float %1590, %1617
  %1619 = fadd fast float %1618, %906
  br label %1665

; <label>:1620                                    ; preds = %1587
  %1621 = icmp eq i32 %1585, 1
  br i1 %1621, label %1622, label %1635

; <label>:1622                                    ; preds = %1620
  %1623 = fadd fast float %1424, -1.000000e+00
  %1624 = fadd fast float %1425, -1.000000e+00
  %1625 = fadd fast float %1426, -1.000000e+00
  %1626 = fmul fast float %1590, %1623
  %1627 = fmul fast float %1590, %1624
  %1628 = fmul fast float %1590, %1625
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fmul fast float %1629, %1582
  %1633 = fmul fast float %1630, %1583
  %1634 = fmul fast float %1631, %1584
  br label %1665

; <label>:1635                                    ; preds = %1620
  %1636 = icmp eq i32 %1585, 2
  br i1 %1636, label %1637, label %1665

; <label>:1637                                    ; preds = %1635
  %1638 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1639 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1640 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fmul fast float %1641, %1590
  %1645 = fmul fast float %1642, %1590
  %1646 = fmul fast float %1643, %1590
  %1647 = fadd fast float %1644, 5.000000e-01
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fmul fast float %1647, 2.000000e+00
  %1651 = fsub fast float 1.000000e+00, %1650
  %1652 = fmul fast float %1651, %1582
  %1653 = fadd fast float %1652, %1650
  %1654 = fmul fast float %1653, %1582
  %1655 = fmul fast float %1648, 2.000000e+00
  %1656 = fsub fast float 1.000000e+00, %1655
  %1657 = fmul fast float %1656, %1583
  %1658 = fadd fast float %1657, %1655
  %1659 = fmul fast float %1658, %1583
  %1660 = fmul fast float %1649, 2.000000e+00
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = fmul fast float %1661, %1584
  %1663 = fadd fast float %1662, %1660
  %1664 = fmul fast float %1663, %1584
  br label %1665

; <label>:1665                                    ; preds = %1637, %1635, %1622, %1592, %1578
  %1666 = phi float [ %1579, %1578 ], [ %1579, %1637 ], [ %1579, %1635 ], [ %1579, %1622 ], [ %1614, %1592 ]
  %1667 = phi float [ %1580, %1578 ], [ %1580, %1637 ], [ %1580, %1635 ], [ %1580, %1622 ], [ %1615, %1592 ]
  %1668 = phi float [ %1581, %1578 ], [ %1581, %1637 ], [ %1581, %1635 ], [ %1581, %1622 ], [ %1616, %1592 ]
  %1669 = phi float [ %1582, %1578 ], [ %1654, %1637 ], [ %1582, %1635 ], [ %1632, %1622 ], [ %1602, %1592 ]
  %1670 = phi float [ %1583, %1578 ], [ %1659, %1637 ], [ %1583, %1635 ], [ %1633, %1622 ], [ %1603, %1592 ]
  %1671 = phi float [ %1584, %1578 ], [ %1664, %1637 ], [ %1584, %1635 ], [ %1634, %1622 ], [ %1604, %1592 ]
  %1672 = phi float [ %902, %1578 ], [ %902, %1637 ], [ %902, %1635 ], [ %902, %1622 ], [ %1607, %1592 ]
  %1673 = phi float [ %906, %1578 ], [ %906, %1637 ], [ %906, %1635 ], [ %906, %1622 ], [ %1619, %1592 ]
  %1674 = and i32 %1556, 12
  %1675 = icmp eq i32 %1674, 12
  br i1 %1675, label %1748, label %1676

; <label>:1676                                    ; preds = %1665
  %1677 = and i32 %1556, 2097184
  %1678 = icmp eq i32 %1677, 2097184
  %1679 = select i1 %1678, float %1204, float 0.000000e+00
  %1680 = and i32 %1556, 4194336
  %1681 = icmp eq i32 %1680, 4194336
  %1682 = select i1 %1681, float %1204, float 0.000000e+00
  %1683 = and i32 %1556, 8388640
  %1684 = icmp eq i32 %1683, 8388640
  %1685 = select i1 %1684, float %1204, float 0.000000e+00
  %1686 = icmp eq i32 %1674, 0
  br i1 %1686, label %1687, label %1700

; <label>:1687                                    ; preds = %1676
  %1688 = fsub fast float %1505, %894
  %1689 = fsub fast float %1506, %895
  %1690 = fmul fast float %1679, %1688
  %1691 = fmul fast float %1679, %1689
  %1692 = fadd fast float %1690, %894
  %1693 = fadd fast float %1691, %895
  %1694 = fsub fast float %1507, %905
  %1695 = fmul fast float %1682, %1694
  %1696 = fadd fast float %1695, %905
  %1697 = fsub fast float %1504, %904
  %1698 = fmul fast float %1685, %1697
  %1699 = fadd fast float %1698, %904
  br label %1748

; <label>:1700                                    ; preds = %1676
  %1701 = icmp eq i32 %1674, 4
  br i1 %1701, label %1702, label %1734

; <label>:1702                                    ; preds = %1700
  %1703 = fmul fast float %1679, %1505
  %1704 = fmul fast float %1679, %1506
  %1705 = fadd fast float %1703, %894
  %1706 = fadd fast float %1704, %895
  %1707 = call float @dx.op.binary.f32(i32 36, float %905, float %1507)  ; FMin(a,b)
  %1708 = fsub fast float %1707, %905
  %1709 = fmul fast float %1708, %1682
  %1710 = fadd fast float %1709, %905
  %1711 = fadd fast float %1504, %904
  %1712 = fmul fast float %1711, 0x3FF337FAE0000000
  %1713 = fmul fast float %904, %904
  %1714 = fmul fast float %1504, %1504
  %1715 = fadd fast float %1714, %1713
  %1716 = fmul fast float %1715, 0x3FE5152B00000000
  %1717 = fmul fast float %904, 0xBFCC1F85E0000000
  %1718 = fmul fast float %1717, %1504
  %1719 = fadd fast float %1718, 0xBFE1363700000000
  %1720 = fadd fast float %1719, %1712
  %1721 = fsub fast float %1720, %1716
  %1722 = fmul fast float %1711, 0x3FBA6F0D00000000
  %1723 = fmul fast float %1715, 0x3FD0432880000000
  %1724 = fmul fast float %904, 0xBFEF110800000000
  %1725 = fmul fast float %1724, %1504
  %1726 = fadd fast float %1725, 1.000000e+00
  %1727 = fsub fast float %1726, %1722
  %1728 = fadd fast float %1727, %1723
  %1729 = fdiv fast float %1721, %1728
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = fsub fast float %1730, %904
  %1732 = fmul fast float %1731, %1685
  %1733 = fadd fast float %1732, %904
  br label %1748

; <label>:1734                                    ; preds = %1700
  %1735 = icmp eq i32 %1674, 8
  br i1 %1735, label %1736, label %1748

; <label>:1736                                    ; preds = %1734
  %1737 = fmul fast float %1679, %1505
  %1738 = fmul fast float %1679, %1506
  %1739 = fadd fast float %1737, %894
  %1740 = fadd fast float %1738, %895
  %1741 = call float @dx.op.binary.f32(i32 36, float %905, float %1507)  ; FMin(a,b)
  %1742 = fsub fast float %1741, %905
  %1743 = fmul fast float %1742, %1682
  %1744 = fadd fast float %1743, %905
  %1745 = fsub fast float %1504, %904
  %1746 = fmul fast float %1685, %1745
  %1747 = fadd fast float %1746, %904
  br label %1748

; <label>:1748                                    ; preds = %1736, %1734, %1702, %1687, %1665, %1203, %907, %893
  %1749 = phi float [ %894, %1665 ], [ %894, %1203 ], [ %894, %893 ], [ %1739, %1736 ], [ %894, %1734 ], [ %1705, %1702 ], [ %1692, %1687 ], [ %894, %907 ]
  %1750 = phi float [ %895, %1665 ], [ %895, %1203 ], [ %895, %893 ], [ %1740, %1736 ], [ %895, %1734 ], [ %1706, %1702 ], [ %1693, %1687 ], [ %895, %907 ]
  %1751 = phi float [ %1666, %1665 ], [ %896, %1203 ], [ %896, %893 ], [ %1666, %1736 ], [ %1666, %1734 ], [ %1666, %1702 ], [ %1666, %1687 ], [ %896, %907 ]
  %1752 = phi float [ %1667, %1665 ], [ %897, %1203 ], [ %897, %893 ], [ %1667, %1736 ], [ %1667, %1734 ], [ %1667, %1702 ], [ %1667, %1687 ], [ %897, %907 ]
  %1753 = phi float [ %1668, %1665 ], [ %898, %1203 ], [ %898, %893 ], [ %1668, %1736 ], [ %1668, %1734 ], [ %1668, %1702 ], [ %1668, %1687 ], [ %898, %907 ]
  %1754 = phi float [ %1669, %1665 ], [ %899, %1203 ], [ %899, %893 ], [ %1669, %1736 ], [ %1669, %1734 ], [ %1669, %1702 ], [ %1669, %1687 ], [ %899, %907 ]
  %1755 = phi float [ %1670, %1665 ], [ %900, %1203 ], [ %900, %893 ], [ %1670, %1736 ], [ %1670, %1734 ], [ %1670, %1702 ], [ %1670, %1687 ], [ %900, %907 ]
  %1756 = phi float [ %1671, %1665 ], [ %901, %1203 ], [ %901, %893 ], [ %1671, %1736 ], [ %1671, %1734 ], [ %1671, %1702 ], [ %1671, %1687 ], [ %901, %907 ]
  %1757 = phi float [ %1672, %1665 ], [ %902, %1203 ], [ %902, %893 ], [ %1672, %1736 ], [ %1672, %1734 ], [ %1672, %1702 ], [ %1672, %1687 ], [ %902, %907 ]
  %1758 = phi float [ %904, %1665 ], [ %904, %1203 ], [ %904, %893 ], [ %1747, %1736 ], [ %904, %1734 ], [ %1733, %1702 ], [ %1699, %1687 ], [ %904, %907 ]
  %1759 = phi float [ %905, %1665 ], [ %905, %1203 ], [ %905, %893 ], [ %1744, %1736 ], [ %905, %1734 ], [ %1710, %1702 ], [ %1696, %1687 ], [ %905, %907 ]
  %1760 = phi float [ %1673, %1665 ], [ %906, %1203 ], [ %906, %893 ], [ %1673, %1736 ], [ %1673, %1734 ], [ %1673, %1702 ], [ %1673, %1687 ], [ %906, %907 ]
  br i1 %373, label %2602, label %1761

; <label>:1761                                    ; preds = %1748
  %1762 = icmp ult i32 %426, 3
  %1763 = add i32 %42, 56
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = add i32 %42, 60
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = or i32 %1768, %1765
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %2602, label %1771

; <label>:1771                                    ; preds = %1761
  %1772 = and i32 %1765, 262144
  %1773 = icmp ne i32 %1772, 0
  %1774 = select i1 %1773, float %44, float 1.000000e+00
  %1775 = select i1 %1773, float %45, float 0.000000e+00
  %1776 = select i1 %1773, float %46, float 0.000000e+00
  %1777 = select i1 %1773, float %47, float 1.000000e+00
  %1778 = select i1 %1773, float %48, float %69
  %1779 = select i1 %1773, float %49, float %70
  %1780 = add i32 %42, 316
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = lshr i32 %1782, 16
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = fmul fast float %1784, 0x3F50624DE0000000
  %1786 = add i32 %42, 120
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = lshr i32 %1788, 16
  %1790 = and i32 %1789, 255
  %1791 = lshr i32 %1788, 24
  %1792 = add i32 %42, 324
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 65535
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = lshr i32 %1794, 16
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = add i32 %42, 64
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = lshr i32 %1801, 22
  %1803 = shl nuw nsw i32 %1802, 5
  %1804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1803)  ; LegacyF16ToF32(value)
  %1805 = shl i32 %1801, 4
  %1806 = and i32 %1805, 32752
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = lshr i32 %1801, 7
  %1809 = and i32 %1808, 32752
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 3
  %1813 = fmul fast float %1812, 1.000000e+03
  %1814 = fmul fast float %323, %1813
  %1815 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1816 = fadd fast float %1815, %313
  %1817 = fmul fast float %324, %1813
  %1818 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1819 = fadd fast float %1818, %315
  %1820 = fmul fast float %1785, %1813
  %1821 = call float @dx.op.unary.f32(i32 22, float %1820)  ; Frc(value)
  %1822 = fmul fast float %1821, 0x401921FB60000000
  %1823 = fadd fast float %1822, %1804
  %1824 = call float @dx.op.unary.f32(i32 13, float %1823)  ; Sin(value)
  %1825 = call float @dx.op.unary.f32(i32 12, float %1823)  ; Cos(value)
  %1826 = fsub fast float -0.000000e+00, %1824
  %1827 = fadd fast float %1778, -5.000000e-01
  %1828 = fadd fast float %1779, -5.000000e-01
  %1829 = fmul fast float %1796, %1827
  %1830 = fmul fast float %1798, %1828
  %1831 = fadd fast float %1829, 5.000000e-01
  %1832 = fadd fast float %1830, 5.000000e-01
  %1833 = fmul fast float %1807, %1831
  %1834 = fmul fast float %1810, %1832
  %1835 = fmul fast float %1825, %1833
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1826, float %1834, float %1835)  ; FMad(a,b,c)
  %1837 = fmul fast float %1824, %1833
  %1838 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1834, float %1837)  ; FMad(a,b,c)
  %1839 = fadd fast float %1816, %1836
  %1840 = fadd fast float %1819, %1838
  %1841 = icmp ugt i32 %1790, 1
  %1842 = icmp ugt i32 %1788, 33554431
  %1843 = or i1 %1842, %1841
  br i1 %1843, label %1844, label %1869

; <label>:1844                                    ; preds = %1771
  %1845 = add i32 %42, 260
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = lshr i32 %1847, 16
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = fmul fast float %1812, %1849
  %1851 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1852 = mul nuw nsw i32 %1790, %1791
  %1853 = uitofp i32 %1852 to float
  %1854 = fmul fast float %1851, %1853
  %1855 = call float @dx.op.unary.f32(i32 27, float %1854)  ; Round_ni(value)
  %1856 = fptoui float %1855 to i32
  %1857 = urem i32 %1856, %1790
  %1858 = udiv i32 %1856, %1791
  %1859 = call float @dx.op.unary.f32(i32 22, float %1839)  ; Frc(value)
  %1860 = call float @dx.op.unary.f32(i32 22, float %1840)  ; Frc(value)
  %1861 = uitofp i32 %1857 to float
  %1862 = uitofp i32 %1858 to float
  %1863 = fadd fast float %1859, %1861
  %1864 = fadd fast float %1860, %1862
  %1865 = uitofp i32 %1790 to float
  %1866 = uitofp i32 %1791 to float
  %1867 = fdiv fast float %1863, %1865
  %1868 = fdiv fast float %1864, %1866
  br label %1869

; <label>:1869                                    ; preds = %1844, %1771
  %1870 = phi float [ %1867, %1844 ], [ %1839, %1771 ]
  %1871 = phi float [ %1868, %1844 ], [ %1840, %1771 ]
  %1872 = and i32 %1765, 16777216
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1983, label %1874

; <label>:1874                                    ; preds = %1869
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = fadd fast float %1876, %140
  %1880 = fadd fast float %1877, %141
  %1881 = fadd fast float %1878, %142
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1885 = icmp eq i32 %43, 65535
  br i1 %1885, label %1980, label %1886

; <label>:1886                                    ; preds = %1874
  %1887 = lshr i32 %43, 1
  %1888 = shl i32 %1887, 2
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %43, 1
  %1892 = icmp ne i32 %1891, 0
  %1893 = lshr i32 %1890, 16
  %1894 = and i32 %1890, 65535
  %1895 = select i1 %1892, i32 %1893, i32 %1894
  %1896 = icmp eq i32 %1895, 65535
  br i1 %1896, label %1976, label %1897

; <label>:1897                                    ; preds = %1886
  %1898 = mul nuw nsw i32 %1895, 40
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = add nuw nsw i32 %1898, 12
  %1904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = add nuw nsw i32 %1898, 24
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = add nuw nsw i32 %1898, 36
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = fsub fast float %1879, %1900
  %1917 = fsub fast float %1880, %1901
  %1918 = fsub fast float %1881, %1902
  %1919 = fmul fast float %1915, %1916
  %1920 = fmul fast float %1915, %1917
  %1921 = fmul fast float %1915, %1918
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fmul fast float %1925, %1905
  %1929 = fmul fast float %1926, %1906
  %1930 = fmul fast float %1927, %1907
  %1931 = shl i32 %43, 2
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = add i32 %1933, 0
  %1935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1935, %dx.types.Handle %37, float %1936, float %1937, float %1938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1943 = fmul fast float %1940, 1.023000e+03
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fmul fast float %1942, 1.023000e+03
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1952 = fsub fast float %1919, %1922
  %1953 = fsub fast float %1920, %1923
  %1954 = fsub fast float %1921, %1924
  %1955 = fmul fast float %1952, 7.500000e-01
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fmul fast float %1954, 7.500000e-01
  %1958 = fadd fast float %1922, 1.250000e-01
  %1959 = fadd fast float %1958, %1955
  %1960 = fadd fast float %1959, %1949
  %1961 = fadd fast float %1923, 1.250000e-01
  %1962 = fadd fast float %1961, %1956
  %1963 = fadd fast float %1962, %1950
  %1964 = fadd fast float %1924, 1.250000e-01
  %1965 = fadd fast float %1964, %1957
  %1966 = fadd fast float %1965, %1951
  %1967 = fmul fast float %1960, %1910
  %1968 = fmul fast float %1963, %1911
  %1969 = fmul fast float %1966, %1912
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1973, %dx.types.Handle %35, float %1967, float %1968, float %1969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  br label %1976

; <label>:1976                                    ; preds = %1897, %1886
  %1977 = phi float [ %1975, %1897 ], [ -1.000000e+00, %1886 ]
  %1978 = fadd fast float %1977, %1884
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  br label %1980

; <label>:1980                                    ; preds = %1976, %1874
  %1981 = phi float [ %1979, %1976 ], [ %1884, %1874 ]
  %1982 = fmul fast float %1981, %422
  br label %1983

; <label>:1983                                    ; preds = %1980, %1869
  %1984 = phi float [ %1982, %1980 ], [ %422, %1869 ]
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = and i32 %1986, 256
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2035, label %1989

; <label>:1989                                    ; preds = %1983
  %1990 = add i32 %42, 512
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %1992, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1994, %dx.types.Handle %78, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = add i32 %42, 132
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = shl i32 %1999, 4
  %2001 = and i32 %2000, 32752
  %2002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2001)  ; LegacyF16ToF32(value)
  %2003 = lshr i32 %1999, 7
  %2004 = and i32 %2003, 32752
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = fsub fast float 1.000000e+00, %1984
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2008 = bitcast float %1984 to i32
  %2009 = sitofp i32 %2008 to float
  %2010 = fadd fast float %2009, 0xC1CFBF8940000000
  %2011 = fmul fast float %2005, %2010
  %2012 = fadd fast float %2011, 0x41CFBF8940000000
  %2013 = fptosi float %2012 to i32
  %2014 = bitcast i32 %2013 to float
  %2015 = bitcast float %2007 to i32
  %2016 = sitofp i32 %2015 to float
  %2017 = fadd fast float %2016, 0xC1CFBF8940000000
  %2018 = fmul fast float %2017, %2005
  %2019 = fadd fast float %2018, 0x41CFBF8940000000
  %2020 = fptosi float %2019 to i32
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %2014, %2002
  %2023 = fmul fast float %2021, %2002
  %2024 = fsub fast float %2007, %2022
  %2025 = fadd fast float %2023, %2007
  %2026 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2028 = fsub fast float %1996, %2026
  %2029 = fsub fast float %2027, %2026
  %2030 = bitcast float %2029 to i32
  %2031 = sub nsw i32 2129859010, %2030
  %2032 = bitcast i32 %2031 to float
  %2033 = fmul fast float %2032, %2028
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  br label %2035

; <label>:2035                                    ; preds = %1989, %1983
  %2036 = phi float [ %2034, %1989 ], [ %1984, %1983 ]
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 128
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2057, label %2041

; <label>:2041                                    ; preds = %2035
  %2042 = add i32 %42, 496
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %2044, 0
  %2046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2046, %dx.types.Handle %78, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = and i32 %2050, 524288
  %2052 = icmp ne i32 %2051, 0
  %2053 = fcmp fast ogt float %2048, 0x3FE0101020000000
  %2054 = select i1 %2053, float 1.000000e+00, float 0.000000e+00
  %2055 = select i1 %2052, float %2054, float %2048
  %2056 = fmul fast float %2055, %2036
  br label %2057

; <label>:2057                                    ; preds = %2041, %2035
  %2058 = phi float [ %2056, %2041 ], [ %2036, %2035 ]
  %2059 = fcmp fast ult float %2058, 0x3F70101020000000
  br i1 %2059, label %2602, label %2060

; <label>:2060                                    ; preds = %2057
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 16
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2263, label %2065

; <label>:2065                                    ; preds = %2060
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %42, 448
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = add i32 %2070, 0
  %2072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2072, %dx.types.Handle %77, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = extractvalue %dx.types.ResRet.f32 %2073, 3
  %2078 = and i32 %2067, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = lshr i32 %2067, 8
  %2081 = and i32 %2080, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2077, %2079
  %2084 = fadd fast float %2083, %2082
  %2085 = fmul fast float %2084, 0x3F70101000000000
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 512
  %2089 = icmp eq i32 %2088, 0
  br i1 %2089, label %2098, label %2090

; <label>:2090                                    ; preds = %2065
  %2091 = add i32 %42, 528
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = add i32 %2093, 0
  %2095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2095, %dx.types.Handle %78, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2097 = extractvalue %dx.types.ResRet.f32 %2096, 0
  br label %2098

; <label>:2098                                    ; preds = %2090, %2065
  %2099 = phi float [ %2097, %2090 ], [ 1.000000e+00, %2065 ]
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = and i32 %2101, 33554432
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2210, label %2104

; <label>:2104                                    ; preds = %2098
  %2105 = add i32 %42, 256
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 65535
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = lshr i32 %2107, 16
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = add i32 %42, 260
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = and i32 %2114, 65535
  %2116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2115)  ; LegacyF16ToF32(value)
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = lshr i32 %2118, 24
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = and i32 %2118, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = lshr i32 %2118, 8
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = lshr i32 %2118, 16
  %2130 = and i32 %2129, 255
  %2131 = uitofp i32 %2130 to float
  %2132 = fmul fast float %2131, 0x3F70101020000000
  %2133 = add i32 %42, 252
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = lshr i32 %2135, 24
  %2137 = uitofp i32 %2136 to float
  %2138 = fmul fast float %2137, 0x3F70101020000000
  %2139 = and i32 %2135, 255
  %2140 = uitofp i32 %2139 to float
  %2141 = fmul fast float %2140, 0x3F70101020000000
  %2142 = lshr i32 %2135, 8
  %2143 = and i32 %2142, 255
  %2144 = uitofp i32 %2143 to float
  %2145 = fmul fast float %2144, 0x3F70101020000000
  %2146 = lshr i32 %2135, 16
  %2147 = and i32 %2146, 255
  %2148 = uitofp i32 %2147 to float
  %2149 = fmul fast float %2148, 0x3F70101020000000
  %2150 = bitcast float %2074 to i32
  %2151 = ashr i32 %2150, 1
  %2152 = sub nsw i32 1597463174, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2074, 5.000000e-01
  %2155 = fmul fast float %2153, %2153
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float 1.500000e+00, %2156
  %2158 = fmul fast float %2153, %2074
  %2159 = fmul fast float %2158, %2157
  %2160 = bitcast float %2075 to i32
  %2161 = ashr i32 %2160, 1
  %2162 = sub nsw i32 1597463174, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2075, 5.000000e-01
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float 1.500000e+00, %2166
  %2168 = fmul fast float %2163, %2075
  %2169 = fmul fast float %2168, %2167
  %2170 = bitcast float %2076 to i32
  %2171 = ashr i32 %2170, 1
  %2172 = sub nsw i32 1597463174, %2171
  %2173 = bitcast i32 %2172 to float
  %2174 = fmul fast float %2076, 5.000000e-01
  %2175 = fmul fast float %2173, %2173
  %2176 = fmul fast float %2175, %2174
  %2177 = fsub fast float 1.500000e+00, %2176
  %2178 = fmul fast float %2173, %2076
  %2179 = fmul fast float %2178, %2177
  %2180 = fsub fast float %2159, %2141
  %2181 = fsub fast float %2169, %2145
  %2182 = fsub fast float %2179, %2149
  %2183 = fmul fast float %2180, %2109
  %2184 = fmul fast float %2181, %2111
  %2185 = fmul fast float %2182, %2116
  %2186 = fadd fast float %2183, %2124
  %2187 = fadd fast float %2184, %2128
  %2188 = fadd fast float %2185, %2132
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = fmul fast float %2189, %2189
  %2193 = fmul fast float %2190, %2190
  %2194 = fmul fast float %2191, %2191
  %2195 = fsub fast float %2192, %2074
  %2196 = fsub fast float %2193, %2075
  %2197 = fsub fast float %2194, %2076
  %2198 = fmul fast float %2195, %2099
  %2199 = fmul fast float %2196, %2099
  %2200 = fmul fast float %2197, %2099
  %2201 = fadd fast float %2198, %2074
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2121, %2085
  %2205 = fsub fast float %2204, %2138
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fsub fast float %2206, %2085
  %2208 = fmul fast float %2207, %2099
  %2209 = fadd fast float %2208, %2085
  br label %2263

; <label>:2210                                    ; preds = %2098
  %2211 = and i32 %2101, 134217728
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2247, label %2213

; <label>:2213                                    ; preds = %2210
  %2214 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %2216 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %2217 = fadd fast float %2214, -5.000000e-01
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fmul fast float %2217, %2099
  %2221 = fmul fast float %2218, %2099
  %2222 = fmul fast float %2219, %2099
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = fmul fast float %2223, 2.000000e+00
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2230, %2226
  %2232 = fadd fast float %2231, %2229
  %2233 = fmul fast float %2232, %2226
  %2234 = fmul fast float %2224, 2.000000e+00
  %2235 = fsub fast float 1.000000e+00, %2234
  %2236 = fmul fast float %2235, %2227
  %2237 = fadd fast float %2236, %2234
  %2238 = fmul fast float %2237, %2227
  %2239 = fmul fast float %2225, 2.000000e+00
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %2240, %2228
  %2242 = fadd fast float %2241, %2239
  %2243 = fmul fast float %2242, %2228
  %2244 = fmul fast float %2233, %2233
  %2245 = fmul fast float %2238, %2238
  %2246 = fmul fast float %2243, %2243
  br label %2263

; <label>:2247                                    ; preds = %2210
  %2248 = fmul fast float %300, %300
  %2249 = fmul fast float %304, %304
  %2250 = fmul fast float %308, %308
  %2251 = fadd fast float %2248, -1.000000e+00
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fmul fast float %2099, %2251
  %2255 = fmul fast float %2099, %2252
  %2256 = fmul fast float %2099, %2253
  %2257 = fadd fast float %2254, 1.000000e+00
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fmul fast float %2257, %2074
  %2261 = fmul fast float %2258, %2075
  %2262 = fmul fast float %2259, %2076
  br label %2263

; <label>:2263                                    ; preds = %2247, %2213, %2104, %2060
  %2264 = phi float [ %2209, %2104 ], [ %2085, %2213 ], [ %2085, %2247 ], [ 0x3FA23C0BE0000000, %2060 ]
  %2265 = phi float [ %2201, %2104 ], [ %2244, %2213 ], [ %2260, %2247 ], [ 1.000000e+00, %2060 ]
  %2266 = phi float [ %2202, %2104 ], [ %2245, %2213 ], [ %2261, %2247 ], [ 1.000000e+00, %2060 ]
  %2267 = phi float [ %2203, %2104 ], [ %2246, %2213 ], [ %2262, %2247 ], [ 1.000000e+00, %2060 ]
  %2268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.i32 %2268, 1
  %2270 = and i32 %2269, 1
  %2271 = icmp ne i32 %2270, 0
  %2272 = add i32 %42, 356
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 32
  %2276 = icmp ne i32 %2275, 0
  %2277 = and i1 %2271, %2276
  %2278 = select i1 %2277, float 1.000000e+00, float %2265
  %2279 = select i1 %2277, float 0x3FD3333340000000, float %2266
  %2280 = select i1 %2277, float 0x3FD3333340000000, float %2267
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 32
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2357, label %2285

; <label>:2285                                    ; preds = %2263
  %2286 = add i32 %42, 124
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = add i32 %42, 464
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %77, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = extractvalue %dx.types.ResRet.f32 %2294, 3
  %2299 = and i32 %2288, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = lshr i32 %2288, 8
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = lshr i32 %2288, 16
  %2305 = and i32 %2304, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = fmul fast float %2306, 0x3F70101000000000
  %2308 = fmul fast float %2295, %2300
  %2309 = fadd fast float %2308, %2303
  %2310 = fmul fast float %2309, 0x3F70101000000000
  %2311 = fadd fast float %2296, -5.000000e-01
  %2312 = fadd fast float %2298, -5.000000e-01
  %2313 = fmul fast float %2311, %2307
  %2314 = fmul fast float %2312, %2307
  %2315 = fadd fast float %2313, 5.000000e-01
  %2316 = fadd fast float %2314, 5.000000e-01
  %2317 = fmul fast float %2315, 2.000000e+00
  %2318 = fadd fast float %2317, -1.000000e+00
  %2319 = fmul fast float %2316, 2.000000e+00
  %2320 = fadd fast float %2319, -1.000000e+00
  %2321 = fadd fast float %2318, %2320
  %2322 = fmul fast float %2321, 5.000000e-01
  %2323 = fsub fast float %2318, %2320
  %2324 = fmul fast float %2323, 5.000000e-01
  %2325 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2328 = fsub fast float %2326, %2327
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2322, float %2324, float %2328, float %2322, float %2324, float %2328)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = call float @dx.op.unary.f32(i32 25, float %2329)  ; Rsqrt(value)
  %2331 = fmul fast float %2322, %2330
  %2332 = fmul fast float %2324, %2330
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 67108864
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2353, label %2337

; <label>:2337                                    ; preds = %2285
  %2338 = add i32 %42, 312
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = lshr i32 %2340, 16
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = fsub fast float %2310, %2348
  %2350 = fmul fast float %2349, %2342
  %2351 = fadd fast float %2350, %2346
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  br label %2353

; <label>:2353                                    ; preds = %2337, %2285
  %2354 = phi float [ %2352, %2337 ], [ %2310, %2285 ]
  %2355 = call float @dx.op.dot2.f32(i32 54, float %2331, float %2332, float %1774, float %1775)  ; Dot2(ax,ay,bx,by)
  %2356 = call float @dx.op.dot2.f32(i32 54, float %2331, float %2332, float %1776, float %1777)  ; Dot2(ax,ay,bx,by)
  br label %2357

; <label>:2357                                    ; preds = %2353, %2263
  %2358 = phi float [ %2354, %2353 ], [ 0x3FD6666660000000, %2263 ]
  %2359 = phi float [ %2355, %2353 ], [ 0.000000e+00, %2263 ]
  %2360 = phi float [ %2356, %2353 ], [ 0.000000e+00, %2263 ]
  %2361 = phi float [ %2297, %2353 ], [ 1.000000e+00, %2263 ]
  %2362 = add i32 %42, 192
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = lshr i32 %2364, 22
  %2366 = shl nuw nsw i32 %2365, 5
  %2367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2366)  ; LegacyF16ToF32(value)
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 64
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2405, label %2372

; <label>:2372                                    ; preds = %2357
  %2373 = add i32 %42, 480
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = add i32 %2375, 0
  %2377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 131072
  %2381 = icmp eq i32 %2380, 0
  %2382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2377, %dx.types.Handle %77, float %1870, float %1871, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = extractvalue %dx.types.ResRet.f32 %2382, 2
  %2386 = fmul fast float %2383, %288
  %2387 = fmul fast float %2384, %291
  %2388 = fmul fast float %2385, %294
  br i1 %2381, label %2395, label %2389

; <label>:2389                                    ; preds = %2372
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = fmul fast float %2391, %2386
  %2393 = fmul fast float %2391, %2387
  %2394 = fmul fast float %2391, %2388
  br label %2395

; <label>:2395                                    ; preds = %2389, %2372
  %2396 = phi float [ %2392, %2389 ], [ %2386, %2372 ]
  %2397 = phi float [ %2393, %2389 ], [ %2387, %2372 ]
  %2398 = phi float [ %2394, %2389 ], [ %2388, %2372 ]
  %2399 = fmul fast float %2396, %2367
  %2400 = select i1 %184, float %2399, float %2396
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2400, float %2397, float %2398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = select i1 %184, float 0.000000e+00, float %2396
  %2403 = select i1 %184, float %2401, float %2397
  %2404 = select i1 %184, float 0.000000e+00, float %2398
  br label %2405

; <label>:2405                                    ; preds = %2395, %2357
  %2406 = phi float [ %2402, %2395 ], [ 0.000000e+00, %2357 ]
  %2407 = phi float [ %2403, %2395 ], [ 0.000000e+00, %2357 ]
  %2408 = phi float [ %2404, %2395 ], [ 0.000000e+00, %2357 ]
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %42, 128
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = lshr i32 %2413, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = fmul fast float %2418, %2419
  %2421 = fadd fast float %2420, %2415
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br i1 %1762, label %2424, label %2432

; <label>:2424                                    ; preds = %2405
  %2425 = fsub fast float 1.000000e+00, %2058
  %2426 = fmul fast float %2425, %1754
  %2427 = fmul fast float %2425, %1755
  %2428 = fmul fast float %2425, %1756
  %2429 = fmul fast float %2425, %1751
  %2430 = fmul fast float %2425, %1752
  %2431 = fmul fast float %2425, %1753
  br label %2432

; <label>:2432                                    ; preds = %2424, %2405
  %2433 = phi float [ %2429, %2424 ], [ %1751, %2405 ]
  %2434 = phi float [ %2430, %2424 ], [ %1752, %2405 ]
  %2435 = phi float [ %2431, %2424 ], [ %1753, %2405 ]
  %2436 = phi float [ %2426, %2424 ], [ %1754, %2405 ]
  %2437 = phi float [ %2427, %2424 ], [ %1755, %2405 ]
  %2438 = phi float [ %2428, %2424 ], [ %1756, %2405 ]
  %2439 = and i32 %2410, 3
  %2440 = icmp eq i32 %2439, 3
  br i1 %2440, label %2519, label %2441

; <label>:2441                                    ; preds = %2432
  %2442 = and i32 %2410, 16
  %2443 = icmp ne i32 %2442, 0
  %2444 = select i1 %2443, float %2058, float 0.000000e+00
  %2445 = icmp eq i32 %2439, 0
  br i1 %2445, label %2446, label %2474

; <label>:2446                                    ; preds = %2441
  %2447 = and i32 %2410, 64
  %2448 = icmp ne i32 %2447, 0
  %2449 = select i1 %2448, float %2058, float 0.000000e+00
  %2450 = fsub fast float %2278, %2436
  %2451 = fsub fast float %2279, %2437
  %2452 = fsub fast float %2280, %2438
  %2453 = fmul fast float %2444, %2450
  %2454 = fmul fast float %2444, %2451
  %2455 = fmul fast float %2444, %2452
  %2456 = fadd fast float %2453, %2436
  %2457 = fadd fast float %2454, %2437
  %2458 = fadd fast float %2455, %2438
  %2459 = fsub fast float %2264, %1757
  %2460 = fmul fast float %2444, %2459
  %2461 = fadd fast float %2460, %1757
  %2462 = fsub fast float %2406, %2433
  %2463 = fsub fast float %2407, %2434
  %2464 = fsub fast float %2408, %2435
  %2465 = fmul fast float %2449, %2462
  %2466 = fmul fast float %2449, %2463
  %2467 = fmul fast float %2449, %2464
  %2468 = fadd fast float %2465, %2433
  %2469 = fadd fast float %2466, %2434
  %2470 = fadd fast float %2467, %2435
  %2471 = fsub fast float %2423, %1760
  %2472 = fmul fast float %2444, %2471
  %2473 = fadd fast float %2472, %1760
  br label %2519

; <label>:2474                                    ; preds = %2441
  %2475 = icmp eq i32 %2439, 1
  br i1 %2475, label %2476, label %2489

; <label>:2476                                    ; preds = %2474
  %2477 = fadd fast float %2278, -1.000000e+00
  %2478 = fadd fast float %2279, -1.000000e+00
  %2479 = fadd fast float %2280, -1.000000e+00
  %2480 = fmul fast float %2444, %2477
  %2481 = fmul fast float %2444, %2478
  %2482 = fmul fast float %2444, %2479
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fmul fast float %2483, %2436
  %2487 = fmul fast float %2484, %2437
  %2488 = fmul fast float %2485, %2438
  br label %2519

; <label>:2489                                    ; preds = %2474
  %2490 = icmp eq i32 %2439, 2
  br i1 %2490, label %2491, label %2519

; <label>:2491                                    ; preds = %2489
  %2492 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2494 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fmul fast float %2495, %2444
  %2499 = fmul fast float %2496, %2444
  %2500 = fmul fast float %2497, %2444
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fmul fast float %2501, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2436
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2436
  %2509 = fmul fast float %2502, 2.000000e+00
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2437
  %2512 = fadd fast float %2511, %2509
  %2513 = fmul fast float %2512, %2437
  %2514 = fmul fast float %2503, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2438
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2438
  br label %2519

; <label>:2519                                    ; preds = %2491, %2489, %2476, %2446, %2432
  %2520 = phi float [ %2433, %2432 ], [ %2433, %2491 ], [ %2433, %2489 ], [ %2433, %2476 ], [ %2468, %2446 ]
  %2521 = phi float [ %2434, %2432 ], [ %2434, %2491 ], [ %2434, %2489 ], [ %2434, %2476 ], [ %2469, %2446 ]
  %2522 = phi float [ %2435, %2432 ], [ %2435, %2491 ], [ %2435, %2489 ], [ %2435, %2476 ], [ %2470, %2446 ]
  %2523 = phi float [ %2436, %2432 ], [ %2508, %2491 ], [ %2436, %2489 ], [ %2486, %2476 ], [ %2456, %2446 ]
  %2524 = phi float [ %2437, %2432 ], [ %2513, %2491 ], [ %2437, %2489 ], [ %2487, %2476 ], [ %2457, %2446 ]
  %2525 = phi float [ %2438, %2432 ], [ %2518, %2491 ], [ %2438, %2489 ], [ %2488, %2476 ], [ %2458, %2446 ]
  %2526 = phi float [ %1757, %2432 ], [ %1757, %2491 ], [ %1757, %2489 ], [ %1757, %2476 ], [ %2461, %2446 ]
  %2527 = phi float [ %1760, %2432 ], [ %1760, %2491 ], [ %1760, %2489 ], [ %1760, %2476 ], [ %2473, %2446 ]
  %2528 = and i32 %2410, 12
  %2529 = icmp eq i32 %2528, 12
  br i1 %2529, label %2602, label %2530

; <label>:2530                                    ; preds = %2519
  %2531 = and i32 %2410, 2097184
  %2532 = icmp eq i32 %2531, 2097184
  %2533 = select i1 %2532, float %2058, float 0.000000e+00
  %2534 = and i32 %2410, 4194336
  %2535 = icmp eq i32 %2534, 4194336
  %2536 = select i1 %2535, float %2058, float 0.000000e+00
  %2537 = and i32 %2410, 8388640
  %2538 = icmp eq i32 %2537, 8388640
  %2539 = select i1 %2538, float %2058, float 0.000000e+00
  %2540 = icmp eq i32 %2528, 0
  br i1 %2540, label %2541, label %2554

; <label>:2541                                    ; preds = %2530
  %2542 = fsub fast float %2359, %1749
  %2543 = fsub fast float %2360, %1750
  %2544 = fmul fast float %2533, %2542
  %2545 = fmul fast float %2533, %2543
  %2546 = fadd fast float %2544, %1749
  %2547 = fadd fast float %2545, %1750
  %2548 = fsub fast float %2361, %1759
  %2549 = fmul fast float %2536, %2548
  %2550 = fadd fast float %2549, %1759
  %2551 = fsub fast float %2358, %1758
  %2552 = fmul fast float %2539, %2551
  %2553 = fadd fast float %2552, %1758
  br label %2602

; <label>:2554                                    ; preds = %2530
  %2555 = icmp eq i32 %2528, 4
  br i1 %2555, label %2556, label %2588

; <label>:2556                                    ; preds = %2554
  %2557 = fmul fast float %2533, %2359
  %2558 = fmul fast float %2533, %2360
  %2559 = fadd fast float %2557, %1749
  %2560 = fadd fast float %2558, %1750
  %2561 = call float @dx.op.binary.f32(i32 36, float %1759, float %2361)  ; FMin(a,b)
  %2562 = fsub fast float %2561, %1759
  %2563 = fmul fast float %2562, %2536
  %2564 = fadd fast float %2563, %1759
  %2565 = fadd fast float %2358, %1758
  %2566 = fmul fast float %2565, 0x3FF337FAE0000000
  %2567 = fmul fast float %1758, %1758
  %2568 = fmul fast float %2358, %2358
  %2569 = fadd fast float %2568, %2567
  %2570 = fmul fast float %2569, 0x3FE5152B00000000
  %2571 = fmul fast float %1758, 0xBFCC1F85E0000000
  %2572 = fmul fast float %2571, %2358
  %2573 = fadd fast float %2572, 0xBFE1363700000000
  %2574 = fadd fast float %2573, %2566
  %2575 = fsub fast float %2574, %2570
  %2576 = fmul fast float %2565, 0x3FBA6F0D00000000
  %2577 = fmul fast float %2569, 0x3FD0432880000000
  %2578 = fmul fast float %1758, 0xBFEF110800000000
  %2579 = fmul fast float %2578, %2358
  %2580 = fadd fast float %2579, 1.000000e+00
  %2581 = fsub fast float %2580, %2576
  %2582 = fadd fast float %2581, %2577
  %2583 = fdiv fast float %2575, %2582
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = fsub fast float %2584, %1758
  %2586 = fmul fast float %2585, %2539
  %2587 = fadd fast float %2586, %1758
  br label %2602

; <label>:2588                                    ; preds = %2554
  %2589 = icmp eq i32 %2528, 8
  br i1 %2589, label %2590, label %2602

; <label>:2590                                    ; preds = %2588
  %2591 = fmul fast float %2533, %2359
  %2592 = fmul fast float %2533, %2360
  %2593 = fadd fast float %2591, %1749
  %2594 = fadd fast float %2592, %1750
  %2595 = call float @dx.op.binary.f32(i32 36, float %1759, float %2361)  ; FMin(a,b)
  %2596 = fsub fast float %2595, %1759
  %2597 = fmul fast float %2596, %2536
  %2598 = fadd fast float %2597, %1759
  %2599 = fsub fast float %2358, %1758
  %2600 = fmul fast float %2539, %2599
  %2601 = fadd fast float %2600, %1758
  br label %2602

; <label>:2602                                    ; preds = %2590, %2588, %2556, %2541, %2519, %2057, %1761, %1748
  %2603 = phi float [ %1749, %2519 ], [ %1749, %2057 ], [ %1749, %1748 ], [ %2593, %2590 ], [ %1749, %2588 ], [ %2559, %2556 ], [ %2546, %2541 ], [ %1749, %1761 ]
  %2604 = phi float [ %1750, %2519 ], [ %1750, %2057 ], [ %1750, %1748 ], [ %2594, %2590 ], [ %1750, %2588 ], [ %2560, %2556 ], [ %2547, %2541 ], [ %1750, %1761 ]
  %2605 = phi float [ %2520, %2519 ], [ %1751, %2057 ], [ %1751, %1748 ], [ %2520, %2590 ], [ %2520, %2588 ], [ %2520, %2556 ], [ %2520, %2541 ], [ %1751, %1761 ]
  %2606 = phi float [ %2521, %2519 ], [ %1752, %2057 ], [ %1752, %1748 ], [ %2521, %2590 ], [ %2521, %2588 ], [ %2521, %2556 ], [ %2521, %2541 ], [ %1752, %1761 ]
  %2607 = phi float [ %2522, %2519 ], [ %1753, %2057 ], [ %1753, %1748 ], [ %2522, %2590 ], [ %2522, %2588 ], [ %2522, %2556 ], [ %2522, %2541 ], [ %1753, %1761 ]
  %2608 = phi float [ %2523, %2519 ], [ %1754, %2057 ], [ %1754, %1748 ], [ %2523, %2590 ], [ %2523, %2588 ], [ %2523, %2556 ], [ %2523, %2541 ], [ %1754, %1761 ]
  %2609 = phi float [ %2524, %2519 ], [ %1755, %2057 ], [ %1755, %1748 ], [ %2524, %2590 ], [ %2524, %2588 ], [ %2524, %2556 ], [ %2524, %2541 ], [ %1755, %1761 ]
  %2610 = phi float [ %2525, %2519 ], [ %1756, %2057 ], [ %1756, %1748 ], [ %2525, %2590 ], [ %2525, %2588 ], [ %2525, %2556 ], [ %2525, %2541 ], [ %1756, %1761 ]
  %2611 = phi float [ %2526, %2519 ], [ %1757, %2057 ], [ %1757, %1748 ], [ %2526, %2590 ], [ %2526, %2588 ], [ %2526, %2556 ], [ %2526, %2541 ], [ %1757, %1761 ]
  %2612 = phi float [ %1758, %2519 ], [ %1758, %2057 ], [ %1758, %1748 ], [ %2601, %2590 ], [ %1758, %2588 ], [ %2587, %2556 ], [ %2553, %2541 ], [ %1758, %1761 ]
  %2613 = phi float [ %1759, %2519 ], [ %1759, %2057 ], [ %1759, %1748 ], [ %2598, %2590 ], [ %1759, %2588 ], [ %2564, %2556 ], [ %2550, %2541 ], [ %1759, %1761 ]
  %2614 = phi float [ %2527, %2519 ], [ %1760, %2057 ], [ %1760, %1748 ], [ %2527, %2590 ], [ %2527, %2588 ], [ %2527, %2556 ], [ %2527, %2541 ], [ %1760, %1761 ]
  br i1 %375, label %3456, label %2615

; <label>:2615                                    ; preds = %2602
  %2616 = icmp ult i32 %426, 4
  %2617 = add i32 %42, 72
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = add i32 %42, 76
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = or i32 %2622, %2619
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %3456, label %2625

; <label>:2625                                    ; preds = %2615
  %2626 = and i32 %2619, 262144
  %2627 = icmp ne i32 %2626, 0
  %2628 = select i1 %2627, float %44, float 1.000000e+00
  %2629 = select i1 %2627, float %45, float 0.000000e+00
  %2630 = select i1 %2627, float %46, float 0.000000e+00
  %2631 = select i1 %2627, float %47, float 1.000000e+00
  %2632 = select i1 %2627, float %48, float %69
  %2633 = select i1 %2627, float %49, float %70
  %2634 = add i32 %42, 332
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = lshr i32 %2636, 16
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = fmul fast float %2638, 0x3F50624DE0000000
  %2640 = add i32 %42, 136
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = lshr i32 %2642, 16
  %2644 = and i32 %2643, 255
  %2645 = lshr i32 %2642, 24
  %2646 = add i32 %42, 340
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 65535
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = lshr i32 %2648, 16
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = add i32 %42, 80
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 22
  %2657 = shl nuw nsw i32 %2656, 5
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = shl i32 %2655, 4
  %2660 = and i32 %2659, 32752
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = lshr i32 %2655, 7
  %2663 = and i32 %2662, 32752
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2667 = fmul fast float %2666, 1.000000e+03
  %2668 = fmul fast float %365, %2667
  %2669 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2670 = fadd fast float %2669, %355
  %2671 = fmul fast float %366, %2667
  %2672 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2673 = fadd fast float %2672, %357
  %2674 = fmul fast float %2639, %2667
  %2675 = call float @dx.op.unary.f32(i32 22, float %2674)  ; Frc(value)
  %2676 = fmul fast float %2675, 0x401921FB60000000
  %2677 = fadd fast float %2676, %2658
  %2678 = call float @dx.op.unary.f32(i32 13, float %2677)  ; Sin(value)
  %2679 = call float @dx.op.unary.f32(i32 12, float %2677)  ; Cos(value)
  %2680 = fsub fast float -0.000000e+00, %2678
  %2681 = fadd fast float %2632, -5.000000e-01
  %2682 = fadd fast float %2633, -5.000000e-01
  %2683 = fmul fast float %2650, %2681
  %2684 = fmul fast float %2652, %2682
  %2685 = fadd fast float %2683, 5.000000e-01
  %2686 = fadd fast float %2684, 5.000000e-01
  %2687 = fmul fast float %2661, %2685
  %2688 = fmul fast float %2664, %2686
  %2689 = fmul fast float %2679, %2687
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2680, float %2688, float %2689)  ; FMad(a,b,c)
  %2691 = fmul fast float %2678, %2687
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2688, float %2691)  ; FMad(a,b,c)
  %2693 = fadd fast float %2670, %2690
  %2694 = fadd fast float %2673, %2692
  %2695 = icmp ugt i32 %2644, 1
  %2696 = icmp ugt i32 %2642, 33554431
  %2697 = or i1 %2696, %2695
  br i1 %2697, label %2698, label %2723

; <label>:2698                                    ; preds = %2625
  %2699 = add i32 %42, 276
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = lshr i32 %2701, 16
  %2703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2702)  ; LegacyF16ToF32(value)
  %2704 = fmul fast float %2666, %2703
  %2705 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2706 = mul nuw nsw i32 %2644, %2645
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2705, %2707
  %2709 = call float @dx.op.unary.f32(i32 27, float %2708)  ; Round_ni(value)
  %2710 = fptoui float %2709 to i32
  %2711 = urem i32 %2710, %2644
  %2712 = udiv i32 %2710, %2645
  %2713 = call float @dx.op.unary.f32(i32 22, float %2693)  ; Frc(value)
  %2714 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2715 = uitofp i32 %2711 to float
  %2716 = uitofp i32 %2712 to float
  %2717 = fadd fast float %2713, %2715
  %2718 = fadd fast float %2714, %2716
  %2719 = uitofp i32 %2644 to float
  %2720 = uitofp i32 %2645 to float
  %2721 = fdiv fast float %2717, %2719
  %2722 = fdiv fast float %2718, %2720
  br label %2723

; <label>:2723                                    ; preds = %2698, %2625
  %2724 = phi float [ %2721, %2698 ], [ %2693, %2625 ]
  %2725 = phi float [ %2722, %2698 ], [ %2694, %2625 ]
  %2726 = and i32 %2619, 16777216
  %2727 = icmp eq i32 %2726, 0
  br i1 %2727, label %2837, label %2728

; <label>:2728                                    ; preds = %2723
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = fadd fast float %2730, %140
  %2734 = fadd fast float %2731, %141
  %2735 = fadd fast float %2732, %142
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2739 = icmp eq i32 %43, 65535
  br i1 %2739, label %2834, label %2740

; <label>:2740                                    ; preds = %2728
  %2741 = lshr i32 %43, 1
  %2742 = shl i32 %2741, 2
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = and i32 %43, 1
  %2746 = icmp ne i32 %2745, 0
  %2747 = lshr i32 %2744, 16
  %2748 = and i32 %2744, 65535
  %2749 = select i1 %2746, i32 %2747, i32 %2748
  %2750 = icmp eq i32 %2749, 65535
  br i1 %2750, label %2830, label %2751

; <label>:2751                                    ; preds = %2740
  %2752 = mul nuw nsw i32 %2749, 40
  %2753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = add nuw nsw i32 %2752, 12
  %2758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = add nuw nsw i32 %2752, 24
  %2763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.ResRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.ResRet.f32 %2763, 2
  %2767 = add nuw nsw i32 %2752, 36
  %2768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = fsub fast float %2733, %2754
  %2771 = fsub fast float %2734, %2755
  %2772 = fsub fast float %2735, %2756
  %2773 = fmul fast float %2769, %2770
  %2774 = fmul fast float %2769, %2771
  %2775 = fmul fast float %2769, %2772
  %2776 = call float @dx.op.unary.f32(i32 27, float %2773)  ; Round_ni(value)
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fmul fast float %2779, %2759
  %2783 = fmul fast float %2780, %2760
  %2784 = fmul fast float %2781, %2761
  %2785 = shl i32 %43, 2
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = add i32 %2787, 0
  %2789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2790 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2791 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2792 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2789, %dx.types.Handle %37, float %2790, float %2791, float %2792, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  %2797 = fmul fast float %2794, 1.023000e+03
  %2798 = fmul fast float %2795, 1.023000e+03
  %2799 = fmul fast float %2796, 1.023000e+03
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = call float @dx.op.unary.f32(i32 27, float %2802)  ; Round_ni(value)
  %2806 = fsub fast float %2773, %2776
  %2807 = fsub fast float %2774, %2777
  %2808 = fsub fast float %2775, %2778
  %2809 = fmul fast float %2806, 7.500000e-01
  %2810 = fmul fast float %2807, 7.500000e-01
  %2811 = fmul fast float %2808, 7.500000e-01
  %2812 = fadd fast float %2776, 1.250000e-01
  %2813 = fadd fast float %2812, %2809
  %2814 = fadd fast float %2813, %2803
  %2815 = fadd fast float %2777, 1.250000e-01
  %2816 = fadd fast float %2815, %2810
  %2817 = fadd fast float %2816, %2804
  %2818 = fadd fast float %2778, 1.250000e-01
  %2819 = fadd fast float %2818, %2811
  %2820 = fadd fast float %2819, %2805
  %2821 = fmul fast float %2814, %2764
  %2822 = fmul fast float %2817, %2765
  %2823 = fmul fast float %2820, %2766
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = add i32 %2825, 0
  %2827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2827, %dx.types.Handle %35, float %2821, float %2822, float %2823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  br label %2830

; <label>:2830                                    ; preds = %2751, %2740
  %2831 = phi float [ %2829, %2751 ], [ -1.000000e+00, %2740 ]
  %2832 = fadd fast float %2831, %2738
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  br label %2834

; <label>:2834                                    ; preds = %2830, %2728
  %2835 = phi float [ %2833, %2830 ], [ %2738, %2728 ]
  %2836 = fmul fast float %2835, %421
  br label %2837

; <label>:2837                                    ; preds = %2834, %2723
  %2838 = phi float [ %2836, %2834 ], [ %421, %2723 ]
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = and i32 %2840, 256
  %2842 = icmp eq i32 %2841, 0
  br i1 %2842, label %2889, label %2843

; <label>:2843                                    ; preds = %2837
  %2844 = add i32 %42, 516
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %2846, 0
  %2848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2848, %dx.types.Handle %78, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = add i32 %42, 148
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = shl i32 %2853, 4
  %2855 = and i32 %2854, 32752
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = lshr i32 %2853, 7
  %2858 = and i32 %2857, 32752
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = fsub fast float 1.000000e+00, %2838
  %2861 = call float @dx.op.binary.f32(i32 35, float %2860, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2862 = bitcast float %2838 to i32
  %2863 = sitofp i32 %2862 to float
  %2864 = fadd fast float %2863, 0xC1CFBF8940000000
  %2865 = fmul fast float %2859, %2864
  %2866 = fadd fast float %2865, 0x41CFBF8940000000
  %2867 = fptosi float %2866 to i32
  %2868 = bitcast i32 %2867 to float
  %2869 = bitcast float %2861 to i32
  %2870 = sitofp i32 %2869 to float
  %2871 = fadd fast float %2870, 0xC1CFBF8940000000
  %2872 = fmul fast float %2871, %2859
  %2873 = fadd fast float %2872, 0x41CFBF8940000000
  %2874 = fptosi float %2873 to i32
  %2875 = bitcast i32 %2874 to float
  %2876 = fmul fast float %2868, %2856
  %2877 = fmul fast float %2875, %2856
  %2878 = fsub fast float %2861, %2876
  %2879 = fadd fast float %2877, %2861
  %2880 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2881 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2882 = fsub fast float %2850, %2880
  %2883 = fsub fast float %2881, %2880
  %2884 = bitcast float %2883 to i32
  %2885 = sub nsw i32 2129859010, %2884
  %2886 = bitcast i32 %2885 to float
  %2887 = fmul fast float %2886, %2882
  %2888 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  br label %2889

; <label>:2889                                    ; preds = %2843, %2837
  %2890 = phi float [ %2888, %2843 ], [ %2838, %2837 ]
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 128
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2911, label %2895

; <label>:2895                                    ; preds = %2889
  %2896 = add i32 %42, 500
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %2898, 0
  %2900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2900, %dx.types.Handle %78, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 524288
  %2906 = icmp ne i32 %2905, 0
  %2907 = fcmp fast ogt float %2902, 0x3FE0101020000000
  %2908 = select i1 %2907, float 1.000000e+00, float 0.000000e+00
  %2909 = select i1 %2906, float %2908, float %2902
  %2910 = fmul fast float %2909, %2890
  br label %2911

; <label>:2911                                    ; preds = %2895, %2889
  %2912 = phi float [ %2910, %2895 ], [ %2890, %2889 ]
  %2913 = fcmp fast ult float %2912, 0x3F70101020000000
  br i1 %2913, label %3456, label %2914

; <label>:2914                                    ; preds = %2911
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 16
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %3117, label %2919

; <label>:2919                                    ; preds = %2914
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %42, 452
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %2924, 0
  %2926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2926, %dx.types.Handle %77, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = extractvalue %dx.types.ResRet.f32 %2927, 3
  %2932 = and i32 %2921, 255
  %2933 = uitofp i32 %2932 to float
  %2934 = lshr i32 %2921, 8
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2931, %2933
  %2938 = fadd fast float %2937, %2936
  %2939 = fmul fast float %2938, 0x3F70101000000000
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = and i32 %2941, 512
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %2952, label %2944

; <label>:2944                                    ; preds = %2919
  %2945 = add i32 %42, 532
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = add i32 %2947, 0
  %2949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2950 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2949, %dx.types.Handle %78, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  br label %2952

; <label>:2952                                    ; preds = %2944, %2919
  %2953 = phi float [ %2951, %2944 ], [ 1.000000e+00, %2919 ]
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 33554432
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %3064, label %2958

; <label>:2958                                    ; preds = %2952
  %2959 = add i32 %42, 272
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = lshr i32 %2961, 16
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = add i32 %42, 276
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 65535
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = lshr i32 %2972, 24
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = and i32 %2972, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = lshr i32 %2972, 8
  %2980 = and i32 %2979, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = lshr i32 %2972, 16
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101020000000
  %2987 = add i32 %42, 268
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = lshr i32 %2989, 24
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = and i32 %2989, 255
  %2994 = uitofp i32 %2993 to float
  %2995 = fmul fast float %2994, 0x3F70101020000000
  %2996 = lshr i32 %2989, 8
  %2997 = and i32 %2996, 255
  %2998 = uitofp i32 %2997 to float
  %2999 = fmul fast float %2998, 0x3F70101020000000
  %3000 = lshr i32 %2989, 16
  %3001 = and i32 %3000, 255
  %3002 = uitofp i32 %3001 to float
  %3003 = fmul fast float %3002, 0x3F70101020000000
  %3004 = bitcast float %2928 to i32
  %3005 = ashr i32 %3004, 1
  %3006 = sub nsw i32 1597463174, %3005
  %3007 = bitcast i32 %3006 to float
  %3008 = fmul fast float %2928, 5.000000e-01
  %3009 = fmul fast float %3007, %3007
  %3010 = fmul fast float %3009, %3008
  %3011 = fsub fast float 1.500000e+00, %3010
  %3012 = fmul fast float %3007, %2928
  %3013 = fmul fast float %3012, %3011
  %3014 = bitcast float %2929 to i32
  %3015 = ashr i32 %3014, 1
  %3016 = sub nsw i32 1597463174, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %2929, 5.000000e-01
  %3019 = fmul fast float %3017, %3017
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float 1.500000e+00, %3020
  %3022 = fmul fast float %3017, %2929
  %3023 = fmul fast float %3022, %3021
  %3024 = bitcast float %2930 to i32
  %3025 = ashr i32 %3024, 1
  %3026 = sub nsw i32 1597463174, %3025
  %3027 = bitcast i32 %3026 to float
  %3028 = fmul fast float %2930, 5.000000e-01
  %3029 = fmul fast float %3027, %3027
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float 1.500000e+00, %3030
  %3032 = fmul fast float %3027, %2930
  %3033 = fmul fast float %3032, %3031
  %3034 = fsub fast float %3013, %2995
  %3035 = fsub fast float %3023, %2999
  %3036 = fsub fast float %3033, %3003
  %3037 = fmul fast float %3034, %2963
  %3038 = fmul fast float %3035, %2965
  %3039 = fmul fast float %3036, %2970
  %3040 = fadd fast float %3037, %2978
  %3041 = fadd fast float %3038, %2982
  %3042 = fadd fast float %3039, %2986
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3046 = fmul fast float %3043, %3043
  %3047 = fmul fast float %3044, %3044
  %3048 = fmul fast float %3045, %3045
  %3049 = fsub fast float %3046, %2928
  %3050 = fsub fast float %3047, %2929
  %3051 = fsub fast float %3048, %2930
  %3052 = fmul fast float %3049, %2953
  %3053 = fmul fast float %3050, %2953
  %3054 = fmul fast float %3051, %2953
  %3055 = fadd fast float %3052, %2928
  %3056 = fadd fast float %3053, %2929
  %3057 = fadd fast float %3054, %2930
  %3058 = fadd fast float %2975, %2939
  %3059 = fsub fast float %3058, %2992
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3061 = fsub fast float %3060, %2939
  %3062 = fmul fast float %3061, %2953
  %3063 = fadd fast float %3062, %2939
  br label %3117

; <label>:3064                                    ; preds = %2952
  %3065 = and i32 %2955, 134217728
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3101, label %3067

; <label>:3067                                    ; preds = %3064
  %3068 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %3070 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fmul fast float %3071, %2953
  %3075 = fmul fast float %3072, %2953
  %3076 = fmul fast float %3073, %2953
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3081 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3082 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3083 = fmul fast float %3077, 2.000000e+00
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = fmul fast float %3084, %3080
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, %3080
  %3088 = fmul fast float %3078, 2.000000e+00
  %3089 = fsub fast float 1.000000e+00, %3088
  %3090 = fmul fast float %3089, %3081
  %3091 = fadd fast float %3090, %3088
  %3092 = fmul fast float %3091, %3081
  %3093 = fmul fast float %3079, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3082
  %3096 = fadd fast float %3095, %3093
  %3097 = fmul fast float %3096, %3082
  %3098 = fmul fast float %3087, %3087
  %3099 = fmul fast float %3092, %3092
  %3100 = fmul fast float %3097, %3097
  br label %3117

; <label>:3101                                    ; preds = %3064
  %3102 = fmul fast float %342, %342
  %3103 = fmul fast float %346, %346
  %3104 = fmul fast float %350, %350
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fadd fast float %3104, -1.000000e+00
  %3108 = fmul fast float %2953, %3105
  %3109 = fmul fast float %2953, %3106
  %3110 = fmul fast float %2953, %3107
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fmul fast float %3111, %2928
  %3115 = fmul fast float %3112, %2929
  %3116 = fmul fast float %3113, %2930
  br label %3117

; <label>:3117                                    ; preds = %3101, %3067, %2958, %2914
  %3118 = phi float [ %3063, %2958 ], [ %2939, %3067 ], [ %2939, %3101 ], [ 0x3FA23C0BE0000000, %2914 ]
  %3119 = phi float [ %3055, %2958 ], [ %3098, %3067 ], [ %3114, %3101 ], [ 1.000000e+00, %2914 ]
  %3120 = phi float [ %3056, %2958 ], [ %3099, %3067 ], [ %3115, %3101 ], [ 1.000000e+00, %2914 ]
  %3121 = phi float [ %3057, %2958 ], [ %3100, %3067 ], [ %3116, %3101 ], [ 1.000000e+00, %2914 ]
  %3122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3123 = extractvalue %dx.types.CBufRet.i32 %3122, 1
  %3124 = and i32 %3123, 1
  %3125 = icmp ne i32 %3124, 0
  %3126 = add i32 %42, 356
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 32
  %3130 = icmp ne i32 %3129, 0
  %3131 = and i1 %3125, %3130
  %3132 = select i1 %3131, float 1.000000e+00, float %3119
  %3133 = select i1 %3131, float 0x3FD3333340000000, float %3120
  %3134 = select i1 %3131, float 0x3FD3333340000000, float %3121
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 32
  %3138 = icmp eq i32 %3137, 0
  br i1 %3138, label %3211, label %3139

; <label>:3139                                    ; preds = %3117
  %3140 = add i32 %42, 140
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %42, 468
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %77, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.ResRet.f32 %3148, 1
  %3151 = extractvalue %dx.types.ResRet.f32 %3148, 2
  %3152 = extractvalue %dx.types.ResRet.f32 %3148, 3
  %3153 = and i32 %3142, 255
  %3154 = uitofp i32 %3153 to float
  %3155 = lshr i32 %3142, 8
  %3156 = and i32 %3155, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = lshr i32 %3142, 16
  %3159 = and i32 %3158, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = fmul fast float %3160, 0x3F70101000000000
  %3162 = fmul fast float %3149, %3154
  %3163 = fadd fast float %3162, %3157
  %3164 = fmul fast float %3163, 0x3F70101000000000
  %3165 = fadd fast float %3150, -5.000000e-01
  %3166 = fadd fast float %3152, -5.000000e-01
  %3167 = fmul fast float %3165, %3161
  %3168 = fmul fast float %3166, %3161
  %3169 = fadd fast float %3167, 5.000000e-01
  %3170 = fadd fast float %3168, 5.000000e-01
  %3171 = fmul fast float %3169, 2.000000e+00
  %3172 = fadd fast float %3171, -1.000000e+00
  %3173 = fmul fast float %3170, 2.000000e+00
  %3174 = fadd fast float %3173, -1.000000e+00
  %3175 = fadd fast float %3172, %3174
  %3176 = fmul fast float %3175, 5.000000e-01
  %3177 = fsub fast float %3172, %3174
  %3178 = fmul fast float %3177, 5.000000e-01
  %3179 = call float @dx.op.unary.f32(i32 6, float %3176)  ; FAbs(value)
  %3180 = fsub fast float 1.000000e+00, %3179
  %3181 = call float @dx.op.unary.f32(i32 6, float %3178)  ; FAbs(value)
  %3182 = fsub fast float %3180, %3181
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3176, float %3178, float %3182, float %3176, float %3178, float %3182)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = call float @dx.op.unary.f32(i32 25, float %3183)  ; Rsqrt(value)
  %3185 = fmul fast float %3176, %3184
  %3186 = fmul fast float %3178, %3184
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 67108864
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3207, label %3191

; <label>:3191                                    ; preds = %3139
  %3192 = add i32 %42, 328
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = and i32 %3194, 65535
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 65535
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = lshr i32 %3194, 16
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = fsub fast float %3164, %3202
  %3204 = fmul fast float %3203, %3196
  %3205 = fadd fast float %3204, %3200
  %3206 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  br label %3207

; <label>:3207                                    ; preds = %3191, %3139
  %3208 = phi float [ %3206, %3191 ], [ %3164, %3139 ]
  %3209 = call float @dx.op.dot2.f32(i32 54, float %3185, float %3186, float %2628, float %2629)  ; Dot2(ax,ay,bx,by)
  %3210 = call float @dx.op.dot2.f32(i32 54, float %3185, float %3186, float %2630, float %2631)  ; Dot2(ax,ay,bx,by)
  br label %3211

; <label>:3211                                    ; preds = %3207, %3117
  %3212 = phi float [ %3208, %3207 ], [ 0x3FD6666660000000, %3117 ]
  %3213 = phi float [ %3209, %3207 ], [ 0.000000e+00, %3117 ]
  %3214 = phi float [ %3210, %3207 ], [ 0.000000e+00, %3117 ]
  %3215 = phi float [ %3151, %3207 ], [ 1.000000e+00, %3117 ]
  %3216 = add i32 %42, 208
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = lshr i32 %3218, 22
  %3220 = shl nuw nsw i32 %3219, 5
  %3221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3220)  ; LegacyF16ToF32(value)
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 64
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3259, label %3226

; <label>:3226                                    ; preds = %3211
  %3227 = add i32 %42, 484
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %3229, 0
  %3231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = and i32 %3233, 131072
  %3235 = icmp eq i32 %3234, 0
  %3236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3231, %dx.types.Handle %77, float %2724, float %2725, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = fmul fast float %3237, %330
  %3241 = fmul fast float %3238, %333
  %3242 = fmul fast float %3239, %336
  br i1 %3235, label %3249, label %3243

; <label>:3243                                    ; preds = %3226
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 0
  %3246 = fmul fast float %3245, %3240
  %3247 = fmul fast float %3245, %3241
  %3248 = fmul fast float %3245, %3242
  br label %3249

; <label>:3249                                    ; preds = %3243, %3226
  %3250 = phi float [ %3246, %3243 ], [ %3240, %3226 ]
  %3251 = phi float [ %3247, %3243 ], [ %3241, %3226 ]
  %3252 = phi float [ %3248, %3243 ], [ %3242, %3226 ]
  %3253 = fmul fast float %3250, %3221
  %3254 = select i1 %184, float %3253, float %3250
  %3255 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3251, float %3252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3256 = select i1 %184, float 0.000000e+00, float %3250
  %3257 = select i1 %184, float %3255, float %3251
  %3258 = select i1 %184, float 0.000000e+00, float %3252
  br label %3259

; <label>:3259                                    ; preds = %3249, %3211
  %3260 = phi float [ %3256, %3249 ], [ 0.000000e+00, %3211 ]
  %3261 = phi float [ %3257, %3249 ], [ 0.000000e+00, %3211 ]
  %3262 = phi float [ %3258, %3249 ], [ 0.000000e+00, %3211 ]
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = add i32 %42, 144
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = lshr i32 %3267, 8
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3132, float %3133, float %3134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = fmul fast float %3272, %3273
  %3275 = fadd fast float %3274, %3269
  %3276 = fmul fast float %3275, 0x3F70101020000000
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  br i1 %2616, label %3278, label %3286

; <label>:3278                                    ; preds = %3259
  %3279 = fsub fast float 1.000000e+00, %2912
  %3280 = fmul fast float %3279, %2608
  %3281 = fmul fast float %3279, %2609
  %3282 = fmul fast float %3279, %2610
  %3283 = fmul fast float %3279, %2605
  %3284 = fmul fast float %3279, %2606
  %3285 = fmul fast float %3279, %2607
  br label %3286

; <label>:3286                                    ; preds = %3278, %3259
  %3287 = phi float [ %3283, %3278 ], [ %2605, %3259 ]
  %3288 = phi float [ %3284, %3278 ], [ %2606, %3259 ]
  %3289 = phi float [ %3285, %3278 ], [ %2607, %3259 ]
  %3290 = phi float [ %3280, %3278 ], [ %2608, %3259 ]
  %3291 = phi float [ %3281, %3278 ], [ %2609, %3259 ]
  %3292 = phi float [ %3282, %3278 ], [ %2610, %3259 ]
  %3293 = and i32 %3264, 3
  %3294 = icmp eq i32 %3293, 3
  br i1 %3294, label %3373, label %3295

; <label>:3295                                    ; preds = %3286
  %3296 = and i32 %3264, 16
  %3297 = icmp ne i32 %3296, 0
  %3298 = select i1 %3297, float %2912, float 0.000000e+00
  %3299 = icmp eq i32 %3293, 0
  br i1 %3299, label %3300, label %3328

; <label>:3300                                    ; preds = %3295
  %3301 = and i32 %3264, 64
  %3302 = icmp ne i32 %3301, 0
  %3303 = select i1 %3302, float %2912, float 0.000000e+00
  %3304 = fsub fast float %3132, %3290
  %3305 = fsub fast float %3133, %3291
  %3306 = fsub fast float %3134, %3292
  %3307 = fmul fast float %3298, %3304
  %3308 = fmul fast float %3298, %3305
  %3309 = fmul fast float %3298, %3306
  %3310 = fadd fast float %3307, %3290
  %3311 = fadd fast float %3308, %3291
  %3312 = fadd fast float %3309, %3292
  %3313 = fsub fast float %3118, %2611
  %3314 = fmul fast float %3298, %3313
  %3315 = fadd fast float %3314, %2611
  %3316 = fsub fast float %3260, %3287
  %3317 = fsub fast float %3261, %3288
  %3318 = fsub fast float %3262, %3289
  %3319 = fmul fast float %3303, %3316
  %3320 = fmul fast float %3303, %3317
  %3321 = fmul fast float %3303, %3318
  %3322 = fadd fast float %3319, %3287
  %3323 = fadd fast float %3320, %3288
  %3324 = fadd fast float %3321, %3289
  %3325 = fsub fast float %3277, %2614
  %3326 = fmul fast float %3298, %3325
  %3327 = fadd fast float %3326, %2614
  br label %3373

; <label>:3328                                    ; preds = %3295
  %3329 = icmp eq i32 %3293, 1
  br i1 %3329, label %3330, label %3343

; <label>:3330                                    ; preds = %3328
  %3331 = fadd fast float %3132, -1.000000e+00
  %3332 = fadd fast float %3133, -1.000000e+00
  %3333 = fadd fast float %3134, -1.000000e+00
  %3334 = fmul fast float %3298, %3331
  %3335 = fmul fast float %3298, %3332
  %3336 = fmul fast float %3298, %3333
  %3337 = fadd fast float %3334, 1.000000e+00
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fmul fast float %3337, %3290
  %3341 = fmul fast float %3338, %3291
  %3342 = fmul fast float %3339, %3292
  br label %3373

; <label>:3343                                    ; preds = %3328
  %3344 = icmp eq i32 %3293, 2
  br i1 %3344, label %3345, label %3373

; <label>:3345                                    ; preds = %3343
  %3346 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3347 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3348 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fmul fast float %3349, %3298
  %3353 = fmul fast float %3350, %3298
  %3354 = fmul fast float %3351, %3298
  %3355 = fadd fast float %3352, 5.000000e-01
  %3356 = fadd fast float %3353, 5.000000e-01
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = fmul fast float %3355, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3290
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3290
  %3363 = fmul fast float %3356, 2.000000e+00
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3364, %3291
  %3366 = fadd fast float %3365, %3363
  %3367 = fmul fast float %3366, %3291
  %3368 = fmul fast float %3357, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3292
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3292
  br label %3373

; <label>:3373                                    ; preds = %3345, %3343, %3330, %3300, %3286
  %3374 = phi float [ %3287, %3286 ], [ %3287, %3345 ], [ %3287, %3343 ], [ %3287, %3330 ], [ %3322, %3300 ]
  %3375 = phi float [ %3288, %3286 ], [ %3288, %3345 ], [ %3288, %3343 ], [ %3288, %3330 ], [ %3323, %3300 ]
  %3376 = phi float [ %3289, %3286 ], [ %3289, %3345 ], [ %3289, %3343 ], [ %3289, %3330 ], [ %3324, %3300 ]
  %3377 = phi float [ %3290, %3286 ], [ %3362, %3345 ], [ %3290, %3343 ], [ %3340, %3330 ], [ %3310, %3300 ]
  %3378 = phi float [ %3291, %3286 ], [ %3367, %3345 ], [ %3291, %3343 ], [ %3341, %3330 ], [ %3311, %3300 ]
  %3379 = phi float [ %3292, %3286 ], [ %3372, %3345 ], [ %3292, %3343 ], [ %3342, %3330 ], [ %3312, %3300 ]
  %3380 = phi float [ %2611, %3286 ], [ %2611, %3345 ], [ %2611, %3343 ], [ %2611, %3330 ], [ %3315, %3300 ]
  %3381 = phi float [ %2614, %3286 ], [ %2614, %3345 ], [ %2614, %3343 ], [ %2614, %3330 ], [ %3327, %3300 ]
  %3382 = and i32 %3264, 12
  %3383 = icmp eq i32 %3382, 12
  br i1 %3383, label %3456, label %3384

; <label>:3384                                    ; preds = %3373
  %3385 = and i32 %3264, 2097184
  %3386 = icmp eq i32 %3385, 2097184
  %3387 = select i1 %3386, float %2912, float 0.000000e+00
  %3388 = and i32 %3264, 4194336
  %3389 = icmp eq i32 %3388, 4194336
  %3390 = select i1 %3389, float %2912, float 0.000000e+00
  %3391 = and i32 %3264, 8388640
  %3392 = icmp eq i32 %3391, 8388640
  %3393 = select i1 %3392, float %2912, float 0.000000e+00
  %3394 = icmp eq i32 %3382, 0
  br i1 %3394, label %3395, label %3408

; <label>:3395                                    ; preds = %3384
  %3396 = fsub fast float %3213, %2603
  %3397 = fsub fast float %3214, %2604
  %3398 = fmul fast float %3387, %3396
  %3399 = fmul fast float %3387, %3397
  %3400 = fadd fast float %3398, %2603
  %3401 = fadd fast float %3399, %2604
  %3402 = fsub fast float %3215, %2613
  %3403 = fmul fast float %3390, %3402
  %3404 = fadd fast float %3403, %2613
  %3405 = fsub fast float %3212, %2612
  %3406 = fmul fast float %3393, %3405
  %3407 = fadd fast float %3406, %2612
  br label %3456

; <label>:3408                                    ; preds = %3384
  %3409 = icmp eq i32 %3382, 4
  br i1 %3409, label %3410, label %3442

; <label>:3410                                    ; preds = %3408
  %3411 = fmul fast float %3387, %3213
  %3412 = fmul fast float %3387, %3214
  %3413 = fadd fast float %3411, %2603
  %3414 = fadd fast float %3412, %2604
  %3415 = call float @dx.op.binary.f32(i32 36, float %2613, float %3215)  ; FMin(a,b)
  %3416 = fsub fast float %3415, %2613
  %3417 = fmul fast float %3416, %3390
  %3418 = fadd fast float %3417, %2613
  %3419 = fadd fast float %3212, %2612
  %3420 = fmul fast float %3419, 0x3FF337FAE0000000
  %3421 = fmul fast float %2612, %2612
  %3422 = fmul fast float %3212, %3212
  %3423 = fadd fast float %3422, %3421
  %3424 = fmul fast float %3423, 0x3FE5152B00000000
  %3425 = fmul fast float %2612, 0xBFCC1F85E0000000
  %3426 = fmul fast float %3425, %3212
  %3427 = fadd fast float %3426, 0xBFE1363700000000
  %3428 = fadd fast float %3427, %3420
  %3429 = fsub fast float %3428, %3424
  %3430 = fmul fast float %3419, 0x3FBA6F0D00000000
  %3431 = fmul fast float %3423, 0x3FD0432880000000
  %3432 = fmul fast float %2612, 0xBFEF110800000000
  %3433 = fmul fast float %3432, %3212
  %3434 = fadd fast float %3433, 1.000000e+00
  %3435 = fsub fast float %3434, %3430
  %3436 = fadd fast float %3435, %3431
  %3437 = fdiv fast float %3429, %3436
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = fsub fast float %3438, %2612
  %3440 = fmul fast float %3439, %3393
  %3441 = fadd fast float %3440, %2612
  br label %3456

; <label>:3442                                    ; preds = %3408
  %3443 = icmp eq i32 %3382, 8
  br i1 %3443, label %3444, label %3456

; <label>:3444                                    ; preds = %3442
  %3445 = fmul fast float %3387, %3213
  %3446 = fmul fast float %3387, %3214
  %3447 = fadd fast float %3445, %2603
  %3448 = fadd fast float %3446, %2604
  %3449 = call float @dx.op.binary.f32(i32 36, float %2613, float %3215)  ; FMin(a,b)
  %3450 = fsub fast float %3449, %2613
  %3451 = fmul fast float %3450, %3390
  %3452 = fadd fast float %3451, %2613
  %3453 = fsub fast float %3212, %2612
  %3454 = fmul fast float %3393, %3453
  %3455 = fadd fast float %3454, %2612
  br label %3456

; <label>:3456                                    ; preds = %3444, %3442, %3410, %3395, %3373, %2911, %2615, %2602
  %3457 = phi float [ %2603, %3373 ], [ %2603, %2911 ], [ %2603, %2602 ], [ %2603, %2615 ], [ %3400, %3395 ], [ %3413, %3410 ], [ %2603, %3442 ], [ %3447, %3444 ]
  %3458 = phi float [ %2604, %3373 ], [ %2604, %2911 ], [ %2604, %2602 ], [ %2604, %2615 ], [ %3401, %3395 ], [ %3414, %3410 ], [ %2604, %3442 ], [ %3448, %3444 ]
  %3459 = phi float [ %3374, %3373 ], [ %2605, %2911 ], [ %2605, %2602 ], [ %2605, %2615 ], [ %3374, %3395 ], [ %3374, %3410 ], [ %3374, %3442 ], [ %3374, %3444 ]
  %3460 = phi float [ %3375, %3373 ], [ %2606, %2911 ], [ %2606, %2602 ], [ %2606, %2615 ], [ %3375, %3395 ], [ %3375, %3410 ], [ %3375, %3442 ], [ %3375, %3444 ]
  %3461 = phi float [ %3376, %3373 ], [ %2607, %2911 ], [ %2607, %2602 ], [ %2607, %2615 ], [ %3376, %3395 ], [ %3376, %3410 ], [ %3376, %3442 ], [ %3376, %3444 ]
  %3462 = phi float [ %3377, %3373 ], [ %2608, %2911 ], [ %2608, %2602 ], [ %2608, %2615 ], [ %3377, %3395 ], [ %3377, %3410 ], [ %3377, %3442 ], [ %3377, %3444 ]
  %3463 = phi float [ %3378, %3373 ], [ %2609, %2911 ], [ %2609, %2602 ], [ %2609, %2615 ], [ %3378, %3395 ], [ %3378, %3410 ], [ %3378, %3442 ], [ %3378, %3444 ]
  %3464 = phi float [ %3379, %3373 ], [ %2610, %2911 ], [ %2610, %2602 ], [ %2610, %2615 ], [ %3379, %3395 ], [ %3379, %3410 ], [ %3379, %3442 ], [ %3379, %3444 ]
  %3465 = phi float [ %3380, %3373 ], [ %2611, %2911 ], [ %2611, %2602 ], [ %2611, %2615 ], [ %3380, %3395 ], [ %3380, %3410 ], [ %3380, %3442 ], [ %3380, %3444 ]
  %3466 = phi float [ %2612, %3373 ], [ %2612, %2911 ], [ %2612, %2602 ], [ %2612, %2615 ], [ %3407, %3395 ], [ %3441, %3410 ], [ %2612, %3442 ], [ %3455, %3444 ]
  %3467 = phi float [ %2613, %3373 ], [ %2613, %2911 ], [ %2613, %2602 ], [ %2613, %2615 ], [ %3404, %3395 ], [ %3418, %3410 ], [ %2613, %3442 ], [ %3452, %3444 ]
  %3468 = phi float [ %3381, %3373 ], [ %2614, %2911 ], [ %2614, %2602 ], [ %2614, %2615 ], [ %3381, %3395 ], [ %3381, %3410 ], [ %3381, %3442 ], [ %3381, %3444 ]
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3471 = call float @dx.op.dot2.f32(i32 54, float %3457, float %3458, float %3457, float %3458)  ; Dot2(ax,ay,bx,by)
  %3472 = fmul fast float %3471, 0x3FE3333340000000
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = call float @dx.op.dot3.f32(i32 55, float %3457, float %3458, float %3473, float %3457, float %3458, float %3473)  ; Dot3(ax,ay,az,bx,by,bz)
  %3475 = call float @dx.op.unary.f32(i32 25, float %3474)  ; Rsqrt(value)
  %3476 = fmul fast float %3475, %3457
  %3477 = fmul fast float %3475, %3458
  %3478 = fmul fast float %3473, %3475
  %3479 = fmul fast float %3478, %90
  %3480 = fmul fast float %3478, %92
  %3481 = fmul fast float %3478, %94
  %3482 = fmul fast float %3476, %62
  %3483 = fmul fast float %3476, %63
  %3484 = fmul fast float %3476, %64
  %3485 = fadd fast float %3479, %3482
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fmul fast float %104, %3477
  %3489 = fmul fast float %105, %3477
  %3490 = fmul fast float %106, %3477
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3491, float %3492, float %3493, float %3491, float %3492, float %3493)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = call float @dx.op.unary.f32(i32 25, float %3494)  ; Rsqrt(value)
  %3496 = fmul fast float %3491, %3495
  %3497 = fmul fast float %3492, %3495
  %3498 = fmul fast float %3493, %3495
  %3499 = fadd fast float %3465, 0xBFB99999A0000000
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = fmul fast float %3500, 0x3FF1C71C80000000
  %3502 = call float @dx.op.binary.f32(i32 36, float %3465, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3503 = fsub fast float 1.000000e+00, %3501
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3505 = fmul fast float %3504, %3462
  %3506 = fmul fast float %3504, %3463
  %3507 = fmul fast float %3504, %3464
  %3508 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3511 = fmul fast float %3501, %3462
  %3512 = fmul fast float %3501, %3463
  %3513 = fmul fast float %3501, %3464
  %3514 = fadd fast float %3511, %3502
  %3515 = fadd fast float %3512, %3502
  %3516 = fadd fast float %3513, %3502
  %3517 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3518 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3519 = call float @dx.op.unary.f32(i32 7, float %3516)  ; Saturate(value)
  %3520 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.i32 %3521, 3
  %3523 = and i32 %3522, 8
  %3524 = icmp ne i32 %3523, 0
  %3525 = call float @dx.op.binary.f32(i32 35, float %3508, float %3462)  ; FMax(a,b)
  %3526 = call float @dx.op.binary.f32(i32 35, float %3509, float %3462)  ; FMax(a,b)
  %3527 = call float @dx.op.binary.f32(i32 35, float %3510, float %3462)  ; FMax(a,b)
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3508, float %3509, float %3510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = select i1 %184, float %3462, float %3508
  %3530 = select i1 %184, float %3528, float %3509
  %3531 = select i1 %184, float 1.000000e+00, float %3510
  %3532 = select i1 %3524, float %3525, float %3529
  %3533 = select i1 %3524, float %3526, float %3530
  %3534 = select i1 %3524, float %3527, float %3531
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.CBufRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.CBufRet.f32 %3535, 2
  %3539 = fadd fast float %3536, %140
  %3540 = fadd fast float %3537, %141
  %3541 = fadd fast float %3538, %142
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = fsub fast float %3539, %3543
  %3546 = fsub fast float %3540, %3544
  %3547 = fmul fast float %3545, %3545
  %3548 = fmul fast float %3546, %3546
  %3549 = fadd fast float %3547, %3548
  %3550 = call float @dx.op.unary.f32(i32 24, float %3549)  ; Sqrt(value)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3552 = fcmp fast olt float %3550, %3551
  br i1 %3552, label %3553, label %3620

; <label>:3553                                    ; preds = %3456
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3561 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3562 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3563 = extractvalue %dx.types.CBufRet.f32 %3554, 3
  %3564 = extractvalue %dx.types.CBufRet.f32 %3556, 3
  %3565 = extractvalue %dx.types.CBufRet.f32 %3558, 3
  %3566 = fadd fast float %3563, %3539
  %3567 = fadd fast float %3564, %3540
  %3568 = fadd fast float %3565, %3541
  %3569 = fmul fast float %3566, %3555
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3567, float %3557, float %3569)  ; FMad(a,b,c)
  %3571 = call float @dx.op.tertiary.f32(i32 46, float %3568, float %3559, float %3570)  ; FMad(a,b,c)
  %3572 = fmul fast float %3566, %3560
  %3573 = call float @dx.op.tertiary.f32(i32 46, float %3567, float %3561, float %3572)  ; FMad(a,b,c)
  %3574 = call float @dx.op.tertiary.f32(i32 46, float %3568, float %3562, float %3573)  ; FMad(a,b,c)
  %3575 = fsub fast float %3571, %3563
  %3576 = fsub fast float %3574, %3564
  %3577 = fsub fast float %3575, %3543
  %3578 = fadd fast float %3577, %3551
  %3579 = fsub fast float %3576, %3544
  %3580 = fadd fast float %3579, %3551
  %3581 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3582 = fmul fast float %3578, %3581
  %3583 = fmul fast float %3580, %3581
  %3584 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3585 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3586 = fsub fast float 1.000000e+00, %3584
  %3587 = fsub fast float 1.000000e+00, %3585
  %3588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3586, float %3587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = fcmp fast ugt float %3589, 0.000000e+00
  br i1 %3590, label %3591, label %3894

; <label>:3591                                    ; preds = %3553
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 2
  %3594 = fmul fast float %3593, %3589
  %3595 = extractvalue %dx.types.CBufRet.f32 %3592, 3
  %3596 = fadd fast float %3595, %3594
  %3597 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3598 = fadd fast float %3596, %3565
  %3599 = fmul fast float %3571, %3559
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3562, float %3599)  ; FMad(a,b,c)
  %3601 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3597, float %3600)  ; FMad(a,b,c)
  %3602 = fsub fast float %3601, %3565
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 2
  %3605 = fsub fast float %3602, %3604
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3586, float %3587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3586, float %3587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3614 = fadd fast float %3611, %3607
  %3615 = fmul fast float %3614, 0x3F847AE140000000
  %3616 = fadd fast float %3612, %3608
  %3617 = fmul fast float %3616, 0x3F847AE140000000
  %3618 = fadd fast float %3613, %3609
  %3619 = fmul fast float %3618, 0x3F847AE140000000
  br label %3894

; <label>:3620                                    ; preds = %3456
  %3621 = and i32 %158, 1
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3894, label %3623

; <label>:3623                                    ; preds = %3620
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3631 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3632 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3633 = extractvalue %dx.types.CBufRet.f32 %3624, 3
  %3634 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3635 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3636 = fadd fast float %3633, %3539
  %3637 = fadd fast float %3634, %3540
  %3638 = fadd fast float %3635, %3541
  %3639 = fmul fast float %3636, %3625
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3627, float %3639)  ; FMad(a,b,c)
  %3641 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3629, float %3640)  ; FMad(a,b,c)
  %3642 = fmul fast float %3636, %3630
  %3643 = call float @dx.op.tertiary.f32(i32 46, float %3637, float %3631, float %3642)  ; FMad(a,b,c)
  %3644 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3632, float %3643)  ; FMad(a,b,c)
  %3645 = fsub fast float %3641, %3633
  %3646 = fsub fast float %3644, %3634
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 3
  %3654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.i32 %3654, 0
  %3656 = extractvalue %dx.types.CBufRet.i32 %3654, 1
  %3657 = udiv i32 %3656, %3655
  %3658 = fsub fast float %3645, %3648
  %3659 = fsub fast float %3646, %3649
  %3660 = call float @dx.op.binary.f32(i32 35, float %3658, float 0.000000e+00)  ; FMax(a,b)
  %3661 = call float @dx.op.binary.f32(i32 35, float %3659, float 0.000000e+00)  ; FMax(a,b)
  %3662 = call float @dx.op.binary.f32(i32 36, float %3660, float %3650)  ; FMin(a,b)
  %3663 = call float @dx.op.binary.f32(i32 36, float %3661, float %3651)  ; FMin(a,b)
  %3664 = add i32 %3655, -1
  %3665 = add i32 %3657, -1
  %3666 = fmul fast float %3662, %3653
  %3667 = fmul fast float %3663, %3653
  %3668 = fptoui float %3666 to i32
  %3669 = fptoui float %3667 to i32
  %3670 = call i32 @dx.op.binary.i32(i32 40, i32 %3668, i32 %3664)  ; UMin(a,b)
  %3671 = call i32 @dx.op.binary.i32(i32 40, i32 %3669, i32 %3665)  ; UMin(a,b)
  %3672 = mul i32 %3671, %3655
  %3673 = add i32 %3672, %3670
  %3674 = shl i32 %3673, 2
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = icmp eq i32 %3676, -1
  br i1 %3677, label %3894, label %3678

; <label>:3678                                    ; preds = %3623
  %3679 = mul i32 %3676, 148
  %3680 = add i32 %3679, 4
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = add i32 %3679, 8
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = add i32 %3679, 36
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = add i32 %3679, 60
  %3690 = add i32 %3679, 92
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = add i32 %3679, 116
  %3694 = fsub fast float %3645, %3682
  %3695 = fsub fast float %3646, %3685
  %3696 = fmul fast float %3653, %3694
  %3697 = fmul fast float %3653, %3695
  %3698 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3699 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 2
  %3703 = call float @dx.op.unary.f32(i32 83, float %3698)  ; DerivCoarseX(value)
  %3704 = call float @dx.op.unary.f32(i32 83, float %3700)  ; DerivCoarseX(value)
  %3705 = call float @dx.op.unary.f32(i32 84, float %3698)  ; DerivCoarseY(value)
  %3706 = call float @dx.op.unary.f32(i32 84, float %3700)  ; DerivCoarseY(value)
  %3707 = fmul fast float %3703, %3702
  %3708 = fmul fast float %3704, %3702
  %3709 = fmul fast float %3705, %3702
  %3710 = fmul fast float %3706, %3702
  %3711 = call float @dx.op.dot2.f32(i32 54, float %3709, float %3710, float %3709, float %3710)  ; Dot2(ax,ay,bx,by)
  %3712 = call float @dx.op.dot2.f32(i32 54, float %3707, float %3708, float %3707, float %3708)  ; Dot2(ax,ay,bx,by)
  %3713 = call float @dx.op.binary.f32(i32 35, float %3712, float %3711)  ; FMax(a,b)
  %3714 = call float @dx.op.unary.f32(i32 23, float %3713)  ; Log(value)
  %3715 = fmul fast float %3714, 5.000000e-01
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3718 = fadd fast float %3717, %3715
  %3719 = call float @dx.op.binary.f32(i32 35, float %3718, float 0.000000e+00)  ; FMax(a,b)
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3722 = fadd fast float %3721, %3719
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 3
  %3725 = fadd fast float %3722, %3724
  %3726 = add i32 %3692, 0
  %3727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3728 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3727, i32 0)  ; GetDimensions(handle,mipLevel)
  %3729 = extractvalue %dx.types.Dimensions %3728, 0
  %3730 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3729)  ; FirstbitLo(value)
  %3731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.i32 %3731, 1
  %3733 = sub nsw i32 %3732, %3730
  %3734 = sitofp i32 %3733 to float
  %3735 = fsub fast float %3725, %3734
  %3736 = call float @dx.op.binary.f32(i32 35, float %3735, float 0.000000e+00)  ; FMax(a,b)
  %3737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3727, %dx.types.Handle %34, float %3698, float %3700, float %3688, float undef, i32 0, i32 0, i32 undef, float %3736)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = fcmp ule float %3738, 0x3FE0101020000000
  %3740 = extractvalue %dx.types.CBufRet.i32 %3731, 0
  %3741 = and i32 %3740, 128
  %3742 = icmp ne i32 %3741, 0
  %3743 = and i1 %3739, %3742
  br i1 %3743, label %3894, label %3744

; <label>:3744                                    ; preds = %3678
  %3745 = add i32 %3679, 20
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = add i32 %3679, 24
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = add i32 %3679, 40
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = add i32 %3679, 96
  %3755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.i32 %3755, 0
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 2
  %3759 = fmul fast float %3758, %3698
  %3760 = fmul fast float %3758, %3700
  %3761 = extractvalue %dx.types.CBufRet.f32 %3757, 3
  %3762 = fadd fast float %3759, %3761
  %3763 = fadd fast float %3760, %3761
  %3764 = add i32 %3756, 0
  %3765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3764, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3766 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3765, i32 0)  ; GetDimensions(handle,mipLevel)
  %3767 = extractvalue %dx.types.Dimensions %3766, 0
  %3768 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3767)  ; FirstbitLo(value)
  %3769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.i32 %3769, 1
  %3771 = sub nsw i32 %3770, %3768
  %3772 = sitofp i32 %3771 to float
  %3773 = fsub fast float %3722, %3772
  %3774 = call float @dx.op.binary.f32(i32 35, float %3773, float 0.000000e+00)  ; FMax(a,b)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3765, %dx.types.Handle %34, float %3762, float %3763, float %3753, float undef, i32 0, i32 0, i32 undef, float %3774)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = fmul fast float %3776, %3747
  %3778 = fadd fast float %3777, %3750
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.CBufRet.f32 %3779, 2
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3787 = extractvalue %dx.types.CBufRet.f32 %3779, 3
  %3788 = fadd fast float %3784, %3645
  %3789 = fadd fast float %3786, %3646
  %3790 = fadd fast float %3778, %3787
  %3791 = fmul fast float %3788, %3780
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3781, float %3791)  ; FMad(a,b,c)
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3782, float %3792)  ; FMad(a,b,c)
  %3794 = fsub fast float %3793, %3787
  %3795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.f32 %3795, 2
  %3797 = fsub fast float %3794, %3796
  %3798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.i32 %3798, 0
  %3800 = call i32 @dx.op.binary.i32(i32 40, i32 %3676, i32 %3799)  ; UMin(a,b)
  %3801 = mul i32 %3800, 36
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = add i32 %3801, 4
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3807 = fmul fast float %3806, %3698
  %3808 = fmul fast float %3806, %3700
  %3809 = extractvalue %dx.types.CBufRet.f32 %3805, 1
  %3810 = fadd fast float %3807, %3809
  %3811 = fadd fast float %3808, %3809
  %3812 = icmp eq i32 %3803, 0
  br i1 %3812, label %3881, label %3813

; <label>:3813                                    ; preds = %3744
  br label %3814

; <label>:3814                                    ; preds = %3871, %3813
  %3815 = phi float [ %3872, %3871 ], [ 0.000000e+00, %3813 ]
  %3816 = phi float [ %3873, %3871 ], [ 0.000000e+00, %3813 ]
  %3817 = phi float [ %3874, %3871 ], [ 0.000000e+00, %3813 ]
  %3818 = phi float [ %3875, %3871 ], [ 0.000000e+00, %3813 ]
  %3819 = phi float [ %3876, %3871 ], [ 0.000000e+00, %3813 ]
  %3820 = phi float [ %3877, %3871 ], [ 0.000000e+00, %3813 ]
  %3821 = phi i32 [ %3878, %3871 ], [ 0, %3813 ]
  %3822 = shl i32 %3821, 2
  %3823 = add i32 %3689, %3822
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = add i32 %3693, %3822
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = add i32 %3828, 0
  %3830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3829, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3831 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3830, i32 0)  ; GetDimensions(handle,mipLevel)
  %3832 = extractvalue %dx.types.Dimensions %3831, 0
  %3833 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3832)  ; FirstbitLo(value)
  %3834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.i32 %3834, 1
  %3836 = sub nsw i32 %3835, %3833
  %3837 = sitofp i32 %3836 to float
  %3838 = fsub fast float %3722, %3837
  %3839 = call float @dx.op.binary.f32(i32 35, float %3838, float 0.000000e+00)  ; FMax(a,b)
  %3840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3830, %dx.types.Handle %34, float %3810, float %3811, float %3825, float undef, i32 0, i32 0, i32 undef, float %3839)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = fcmp fast ogt float %3841, 0.000000e+00
  br i1 %3842, label %3843, label %3871

; <label>:3843                                    ; preds = %3814
  %3844 = add i32 %3804, %3822
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = and i32 %3846, 32767
  %3848 = mul nuw nsw i32 %3847, 928
  %3849 = add nuw nsw i32 %3848, 48
  %3850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = add nuw nsw i32 %3848, 60
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = fmul fast float %3851, %3841
  %3860 = fmul fast float %3852, %3841
  %3861 = fmul fast float %3853, %3841
  %3862 = fadd fast float %3859, %3815
  %3863 = fadd fast float %3860, %3816
  %3864 = fadd fast float %3861, %3817
  %3865 = fmul fast float %3856, %3841
  %3866 = fmul fast float %3857, %3841
  %3867 = fmul fast float %3858, %3841
  %3868 = fadd fast float %3865, %3818
  %3869 = fadd fast float %3866, %3819
  %3870 = fadd fast float %3867, %3820
  br label %3871

; <label>:3871                                    ; preds = %3843, %3814
  %3872 = phi float [ %3862, %3843 ], [ %3815, %3814 ]
  %3873 = phi float [ %3863, %3843 ], [ %3816, %3814 ]
  %3874 = phi float [ %3864, %3843 ], [ %3817, %3814 ]
  %3875 = phi float [ %3868, %3843 ], [ %3818, %3814 ]
  %3876 = phi float [ %3869, %3843 ], [ %3819, %3814 ]
  %3877 = phi float [ %3870, %3843 ], [ %3820, %3814 ]
  %3878 = add nuw i32 %3821, 1
  %3879 = icmp eq i32 %3878, %3803
  br i1 %3879, label %3880, label %3814

; <label>:3880                                    ; preds = %3871
  br label %3881

; <label>:3881                                    ; preds = %3880, %3744
  %3882 = phi float [ 0.000000e+00, %3744 ], [ %3872, %3880 ]
  %3883 = phi float [ 0.000000e+00, %3744 ], [ %3873, %3880 ]
  %3884 = phi float [ 0.000000e+00, %3744 ], [ %3874, %3880 ]
  %3885 = phi float [ 0.000000e+00, %3744 ], [ %3875, %3880 ]
  %3886 = phi float [ 0.000000e+00, %3744 ], [ %3876, %3880 ]
  %3887 = phi float [ 0.000000e+00, %3744 ], [ %3877, %3880 ]
  %3888 = fadd fast float %3885, %3882
  %3889 = fmul fast float %3888, 0x3F847AE140000000
  %3890 = fadd fast float %3886, %3883
  %3891 = fmul fast float %3890, 0x3F847AE140000000
  %3892 = fadd fast float %3887, %3884
  %3893 = fmul fast float %3892, 0x3F847AE140000000
  br label %3894

; <label>:3894                                    ; preds = %3881, %3678, %3623, %3620, %3591, %3553
  %3895 = phi float [ %3605, %3591 ], [ -1.310720e+05, %3553 ], [ %3797, %3881 ], [ -1.310720e+05, %3623 ], [ -1.310720e+05, %3678 ], [ -1.310720e+05, %3620 ]
  %3896 = phi float [ %3615, %3591 ], [ 0.000000e+00, %3553 ], [ %3889, %3881 ], [ 0.000000e+00, %3623 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3620 ]
  %3897 = phi float [ %3617, %3591 ], [ 0.000000e+00, %3553 ], [ %3891, %3881 ], [ 0.000000e+00, %3623 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3620 ]
  %3898 = phi float [ %3619, %3591 ], [ 0.000000e+00, %3553 ], [ %3893, %3881 ], [ 0.000000e+00, %3623 ], [ 0.000000e+00, %3678 ], [ 0.000000e+00, %3620 ]
  %3899 = phi i1 [ true, %3591 ], [ false, %3553 ], [ true, %3881 ], [ false, %3623 ], [ false, %3678 ], [ false, %3620 ]
  %3900 = and i32 %158, 3
  %3901 = icmp eq i32 %3900, 1
  %3902 = select i1 %3901, float 1.000000e+00, float 0.000000e+00
  %3903 = fsub fast float %3895, %142
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = select i1 %3899, float %3904, float 1.000000e+00
  %3906 = fmul fast float %3905, %3902
  %3907 = icmp eq i32 %3900, 3
  %3908 = select i1 %3907, float 1.000000e+00, float %3906
  %3909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3908)  ; FMax(a,b)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fcmp fast une float %3910, 0.000000e+00
  %3912 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3913 = call float @dx.op.unary.f32(i32 25, float %3912)  ; Rsqrt(value)
  br i1 %3911, label %3921, label %3914

; <label>:3914                                    ; preds = %3894
  %3915 = fmul fast float %3913, %140
  %3916 = fmul fast float %3913, %141
  %3917 = fmul fast float %3913, %142
  %3918 = fsub fast float -0.000000e+00, %3915
  %3919 = fsub fast float -0.000000e+00, %3916
  %3920 = fsub fast float -0.000000e+00, %3917
  br label %4089

; <label>:3921                                    ; preds = %3894
  %3922 = fmul fast float %140, %3913
  %3923 = fsub fast float -0.000000e+00, %3922
  %3924 = fmul fast float %141, %3913
  %3925 = fsub fast float -0.000000e+00, %3924
  %3926 = fmul fast float %142, %3913
  %3927 = fsub fast float -0.000000e+00, %3926
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3925, float %3927, float %90, float %92, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = fmul fast float %3910, 2.500000e+00
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fmul fast float %3910, 0x4013FFFFE0000000
  %3932 = fadd fast float %3931, 0xBFFFFFFFE0000000
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = fmul fast float %3910, 0x4004000020000000
  %3935 = fadd fast float %3934, 0xBFF8000040000000
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3938 = fmul fast float %3499, 1.000000e+01
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fmul fast float %3939, 2.000000e+00
  %3941 = fsub fast float 3.000000e+00, %3940
  %3942 = fmul fast float %3939, %3939
  %3943 = fmul fast float %3942, %3941
  %3944 = fsub fast float 1.000000e+00, %3943
  %3945 = fsub fast float 0x3FE3333340000000, %3520
  %3946 = fmul fast float %3945, 0x400AAAAAA0000000
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = fmul fast float %3944, %3947
  %3949 = fmul fast float %3532, 0x3FEA2B8620000000
  %3950 = fmul fast float %3533, 0x3FEA2B8620000000
  %3951 = fmul fast float %3534, 0x3FEA2B8620000000
  %3952 = fadd fast float %3949, 0x3FC81DFBA0000000
  %3953 = fmul fast float %3952, %3532
  %3954 = fadd fast float %3953, 0x3F910E6020000000
  %3955 = fadd fast float %3950, 0x3FC81DFBA0000000
  %3956 = fmul fast float %3955, %3533
  %3957 = fadd fast float %3956, 0x3F910E6020000000
  %3958 = fadd fast float %3951, 0x3FC81DFBA0000000
  %3959 = fmul fast float %3958, %3534
  %3960 = fadd fast float %3959, 0x3F910E6020000000
  %3961 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3962 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3963 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3964 = fsub fast float %3961, %3532
  %3965 = fsub fast float %3962, %3533
  %3966 = fsub fast float %3963, %3534
  %3967 = fmul fast float %3964, %3937
  %3968 = fmul fast float %3967, %3948
  %3969 = fmul fast float %3965, %3937
  %3970 = fmul fast float %3969, %3948
  %3971 = fmul fast float %3966, %3937
  %3972 = fmul fast float %3971, %3948
  %3973 = fadd fast float %3968, %3532
  %3974 = fadd fast float %3970, %3533
  %3975 = fadd fast float %3972, %3534
  %3976 = fmul fast float %3467, %3467
  %3977 = fmul fast float %3976, %3976
  %3978 = fadd fast float %3933, 1.000000e+00
  %3979 = fsub fast float %3978, %3948
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = call float @dx.op.dot3.f32(i32 55, float %90, float %92, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fsub fast float 1.000000e+00, %3977
  %3984 = call float @dx.op.binary.f32(i32 36, float %3980, float %3983)  ; FMin(a,b)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3984, float %3985)  ; FMax(a,b)
  %3987 = fadd fast float %3982, 0xBFE4CCCCC0000000
  %3988 = fmul fast float %3987, 0x4006DB6DA0000000
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3989, 2.000000e+00
  %3991 = fsub fast float 3.000000e+00, %3990
  %3992 = bitcast float %3517 to i32
  %3993 = ashr i32 %3992, 1
  %3994 = add nsw i32 %3993, 532487669
  %3995 = bitcast i32 %3994 to float
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = bitcast float %3996 to i32
  %3998 = sub nsw i32 2129859010, %3997
  %3999 = bitcast i32 %3998 to float
  %4000 = fmul fast float %3999, 2.000000e+00
  %4001 = bitcast float %3518 to i32
  %4002 = ashr i32 %4001, 1
  %4003 = add nsw i32 %4002, 532487669
  %4004 = bitcast i32 %4003 to float
  %4005 = fsub fast float 1.000000e+00, %4004
  %4006 = bitcast float %4005 to i32
  %4007 = sub nsw i32 2129859010, %4006
  %4008 = bitcast i32 %4007 to float
  %4009 = fmul fast float %4008, 2.000000e+00
  %4010 = bitcast float %3519 to i32
  %4011 = ashr i32 %4010, 1
  %4012 = add nsw i32 %4011, 532487669
  %4013 = bitcast i32 %4012 to float
  %4014 = fsub fast float 1.000000e+00, %4013
  %4015 = bitcast float %4014 to i32
  %4016 = sub nsw i32 2129859010, %4015
  %4017 = bitcast i32 %4016 to float
  %4018 = fmul fast float %4017, 2.000000e+00
  %4019 = fsub fast float 0x4002A9FBE0000000, %4000
  %4020 = fadd fast float %4000, 0x3FD54FDF00000000
  %4021 = bitcast float %4020 to i32
  %4022 = sub nsw i32 2129859010, %4021
  %4023 = bitcast i32 %4022 to float
  %4024 = fmul fast float %4023, %4019
  %4025 = fmul fast float %4024, %4024
  %4026 = fsub fast float 0x4002A9FBE0000000, %4009
  %4027 = fadd fast float %4009, 0x3FD54FDF00000000
  %4028 = bitcast float %4027 to i32
  %4029 = sub nsw i32 2129859010, %4028
  %4030 = bitcast i32 %4029 to float
  %4031 = fmul fast float %4030, %4026
  %4032 = fmul fast float %4031, %4031
  %4033 = fsub fast float 0x4002A9FBE0000000, %4018
  %4034 = fadd fast float %4018, 0x3FD54FDF00000000
  %4035 = bitcast float %4034 to i32
  %4036 = sub nsw i32 2129859010, %4035
  %4037 = bitcast i32 %4036 to float
  %4038 = fmul fast float %4037, %4033
  %4039 = fmul fast float %4038, %4038
  %4040 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4025)  ; FMax(a,b)
  %4041 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4032)  ; FMax(a,b)
  %4042 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4039)  ; FMax(a,b)
  %4043 = fsub fast float 1.000000e+00, %3928
  %4044 = fadd fast float %4043, %3944
  %4045 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4046 = fsub fast float 1.000000e+00, %3908
  %4047 = fmul fast float %3986, %4046
  %4048 = fmul fast float %3989, %3989
  %4049 = fmul fast float %4048, %4047
  %4050 = fmul fast float %4049, %3991
  %4051 = fmul fast float %4046, 0xBFE99999A0000000
  %4052 = fmul fast float %4051, %3937
  %4053 = fmul fast float %4052, %3948
  %4054 = fadd fast float %4053, 1.000000e+00
  %4055 = fadd fast float %3520, -1.000000e+00
  %4056 = fmul fast float %4054, %4055
  %4057 = fadd fast float %4056, 1.000000e+00
  %4058 = fsub fast float %4040, %3517
  %4059 = fsub fast float %4041, %3518
  %4060 = fsub fast float %4042, %3519
  %4061 = fmul fast float %4050, %4058
  %4062 = fmul fast float %4050, %4059
  %4063 = fmul fast float %4050, %4060
  %4064 = fadd fast float %4061, %3517
  %4065 = fadd fast float %4062, %3518
  %4066 = fadd fast float %4063, %3519
  %4067 = fsub fast float %90, %3496
  %4068 = fsub fast float %92, %3497
  %4069 = fsub fast float %94, %3498
  %4070 = fmul fast float %4050, %4067
  %4071 = fmul fast float %4050, %4068
  %4072 = fmul fast float %4050, %4069
  %4073 = fadd fast float %4070, %3496
  %4074 = fadd fast float %4071, %3497
  %4075 = fadd fast float %4072, %3498
  %4076 = fmul fast float %4050, %4045
  %4077 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = fmul fast float %4076, %4078
  %4080 = fadd fast float %4079, %4077
  %4081 = fsub fast float 1.000000e+00, %3467
  %4082 = fmul fast float %4050, %4081
  %4083 = fadd fast float %4082, %3467
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4073, float %4074, float %4075, float %4073, float %4074, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4073, %4085
  %4087 = fmul fast float %4074, %4085
  %4088 = fmul fast float %4075, %4085
  br label %4089

; <label>:4089                                    ; preds = %3921, %3914
  %4090 = phi float [ %3920, %3914 ], [ %3927, %3921 ]
  %4091 = phi float [ %3919, %3914 ], [ %3925, %3921 ]
  %4092 = phi float [ %3918, %3914 ], [ %3923, %3921 ]
  %4093 = phi float [ %3917, %3914 ], [ %3926, %3921 ]
  %4094 = phi float [ %3916, %3914 ], [ %3924, %3921 ]
  %4095 = phi float [ %3915, %3914 ], [ %3922, %3921 ]
  %4096 = phi float [ %3532, %3914 ], [ %3973, %3921 ]
  %4097 = phi float [ %3533, %3914 ], [ %3974, %3921 ]
  %4098 = phi float [ %3534, %3914 ], [ %3975, %3921 ]
  %4099 = phi float [ %3517, %3914 ], [ %4064, %3921 ]
  %4100 = phi float [ %3518, %3914 ], [ %4065, %3921 ]
  %4101 = phi float [ %3519, %3914 ], [ %4066, %3921 ]
  %4102 = phi float [ %3496, %3914 ], [ %4086, %3921 ]
  %4103 = phi float [ %3497, %3914 ], [ %4087, %3921 ]
  %4104 = phi float [ %3498, %3914 ], [ %4088, %3921 ]
  %4105 = phi float [ %3520, %3914 ], [ %4080, %3921 ]
  %4106 = phi float [ %3467, %3914 ], [ %4083, %3921 ]
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4110 = fmul fast float %4108, %81
  %4111 = fmul fast float %4109, %82
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = fmul fast float %4116, %4114
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = fadd fast float %4118, -1.000000e+00
  %4120 = fmul fast float %4119, %4113
  %4121 = fadd fast float %4120, 1.000000e+00
  %4122 = select i1 %184, float 0.000000e+00, float %4101
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %4092, float %4091, float %4090)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4095, float %4094, float %4093, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = fmul fast float %4125, 2.000000e+00
  %4127 = fmul fast float %4126, %4102
  %4128 = fmul fast float %4126, %4103
  %4129 = fmul fast float %4126, %4104
  %4130 = fsub fast float %4095, %4127
  %4131 = fsub fast float %4094, %4128
  %4132 = fsub fast float %4093, %4129
  %4133 = call float @dx.op.binary.f32(i32 36, float %4106, float %4121)  ; FMin(a,b)
  %4134 = fsub fast float 1.000000e+00, %4133
  %4135 = bitcast float %4134 to i32
  %4136 = ashr i32 %4135, 1
  %4137 = add nsw i32 %4136, 532487669
  %4138 = bitcast i32 %4137 to float
  %4139 = fsub fast float 1.000000e+00, %4105
  %4140 = call float @dx.op.binary.f32(i32 35, float %4139, float 0x3F847AE140000000)  ; FMax(a,b)
  %4141 = fmul fast float %4140, %4140
  %4142 = fmul fast float %4141, %4141
  %4143 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4138, float %4142, float %4143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = fsub fast float 1.000000e+00, %4106
  %4147 = bitcast float %4146 to i32
  %4148 = sub nsw i32 2129859010, %4147
  %4149 = bitcast i32 %4148 to float
  %4150 = call float @dx.op.dot3.f32(i32 55, float %58, float %54, float %50, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = fmul fast float %4150, 0x3FD20DD760000000
  %4152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4153 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4154 = fcmp fast oeq float %4153, 0.000000e+00
  %4155 = fcmp fast oeq float %4152, 0.000000e+00
  %4156 = or i1 %4155, %4154
  br i1 %4156, label %4186, label %4157

; <label>:4157                                    ; preds = %4089
  %4158 = fsub fast float -0.000000e+00, %61
  %4159 = fsub fast float -0.000000e+00, %59
  %4160 = call float @dx.op.unary.f32(i32 24, float %4153)  ; Sqrt(value)
  %4161 = fdiv fast float %4160, %4152
  %4162 = fcmp fast ogt float %4161, 0x3FFB6F8900000000
  %4163 = select i1 %4162, float 0x3FFB6F8900000000, float %4161
  %4164 = fmul fast float %4163, 0x3FE8A23460000000
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = call float @dx.op.binary.f32(i32 35, float %4163, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4167 = fmul fast float %4165, %4152
  %4168 = fmul fast float %4166, 0x3FF279A740000000
  %4169 = fadd fast float %4168, -1.000000e+00
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4158, float %4159, float %60, float %4158, float %4159, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = call float @dx.op.unary.f32(i32 25, float %4170)  ; Rsqrt(value)
  %4172 = fmul fast float %4171, %4158
  %4173 = fmul fast float %4171, %4159
  %4174 = fmul fast float %4171, %60
  %4175 = fmul fast float %4169, %4169
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = fmul fast float %4166, 0x40005F8BE0000000
  %4178 = fsub fast float 0x400C5BF8A0000000, %4177
  %4179 = fdiv fast float %4167, %4178
  %4180 = fmul fast float %4179, 0x3FEE31C3C0000000
  %4181 = fmul fast float %4180, %4176
  %4182 = fmul fast float %4166, 0x3FDACB7480000000
  %4183 = fadd fast float %4182, 0xBFD7347680000000
  %4184 = fmul fast float %4183, %4179
  %4185 = fmul fast float %4184, %4176
  br label %4186

; <label>:4186                                    ; preds = %4157, %4089
  %4187 = phi float [ %4172, %4157 ], [ 0.000000e+00, %4089 ]
  %4188 = phi float [ %4173, %4157 ], [ 0.000000e+00, %4089 ]
  %4189 = phi float [ %4174, %4157 ], [ 0.000000e+00, %4089 ]
  %4190 = phi float [ %4181, %4157 ], [ 0.000000e+00, %4089 ]
  %4191 = phi float [ %4185, %4157 ], [ 0.000000e+00, %4089 ]
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = fmul fast float %4192, %4192
  %4194 = fmul fast float %4193, 0x3FEE471020000000
  %4195 = fadd fast float %4194, 0xBFD42F6020000000
  %4196 = fmul fast float %4152, 0x3FD20DD760000000
  %4197 = fmul fast float %4195, %4191
  %4198 = fmul fast float %4190, 0x3FDF454380000000
  %4199 = fmul fast float %4198, %4192
  %4200 = fadd fast float %4199, %4196
  %4201 = fadd fast float %4200, %4197
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float %4130, float %4131, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = fmul fast float %4202, 0x3FDF454380000000
  %4204 = fmul fast float %4202, %4202
  %4205 = fmul fast float %4204, 0x3FEE471020000000
  %4206 = fadd fast float %4205, 0xBFD42F6020000000
  %4207 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4190, float %4191, float 0x3FD20DD760000000, float %4203, float %4206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4209 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = fcmp fast oeq float %4209, 0.000000e+00
  %4211 = fcmp fast oeq float %4208, 0.000000e+00
  %4212 = or i1 %4211, %4210
  br i1 %4212, label %4242, label %4213

; <label>:4213                                    ; preds = %4186
  %4214 = fsub fast float -0.000000e+00, %57
  %4215 = fsub fast float -0.000000e+00, %55
  %4216 = call float @dx.op.unary.f32(i32 24, float %4209)  ; Sqrt(value)
  %4217 = fdiv fast float %4216, %4208
  %4218 = fcmp fast ogt float %4217, 0x3FFB6F8900000000
  %4219 = select i1 %4218, float 0x3FFB6F8900000000, float %4217
  %4220 = fmul fast float %4219, 0x3FE8A23460000000
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4222 = call float @dx.op.binary.f32(i32 35, float %4219, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4223 = fmul fast float %4221, %4208
  %4224 = fmul fast float %4222, 0x3FF279A740000000
  %4225 = fadd fast float %4224, -1.000000e+00
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %56, float %4214, float %4215, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = call float @dx.op.unary.f32(i32 25, float %4226)  ; Rsqrt(value)
  %4228 = fmul fast float %4227, %4214
  %4229 = fmul fast float %4227, %4215
  %4230 = fmul fast float %4227, %56
  %4231 = fmul fast float %4225, %4225
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = fmul fast float %4222, 0x40005F8BE0000000
  %4234 = fsub fast float 0x400C5BF8A0000000, %4233
  %4235 = fdiv fast float %4223, %4234
  %4236 = fmul fast float %4235, 0x3FEE31C3C0000000
  %4237 = fmul fast float %4236, %4232
  %4238 = fmul fast float %4222, 0x3FDACB7480000000
  %4239 = fadd fast float %4238, 0xBFD7347680000000
  %4240 = fmul fast float %4239, %4235
  %4241 = fmul fast float %4240, %4232
  br label %4242

; <label>:4242                                    ; preds = %4213, %4186
  %4243 = phi float [ %4228, %4213 ], [ 0.000000e+00, %4186 ]
  %4244 = phi float [ %4229, %4213 ], [ 0.000000e+00, %4186 ]
  %4245 = phi float [ %4230, %4213 ], [ 0.000000e+00, %4186 ]
  %4246 = phi float [ %4237, %4213 ], [ 0.000000e+00, %4186 ]
  %4247 = phi float [ %4241, %4213 ], [ 0.000000e+00, %4186 ]
  %4248 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4244, float %4245, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4249 = fmul fast float %4248, %4248
  %4250 = fmul fast float %4249, 0x3FEE471020000000
  %4251 = fadd fast float %4250, 0xBFD42F6020000000
  %4252 = fmul fast float %4208, 0x3FD20DD760000000
  %4253 = fmul fast float %4251, %4247
  %4254 = fmul fast float %4246, 0x3FDF454380000000
  %4255 = fmul fast float %4254, %4248
  %4256 = fadd fast float %4255, %4252
  %4257 = fadd fast float %4256, %4253
  %4258 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4244, float %4245, float %4130, float %4131, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4259 = fmul fast float %4258, 0x3FDF454380000000
  %4260 = fmul fast float %4258, %4258
  %4261 = fmul fast float %4260, 0x3FEE471020000000
  %4262 = fadd fast float %4261, 0xBFD42F6020000000
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4208, float %4246, float %4247, float 0x3FD20DD760000000, float %4259, float %4262)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %4265 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = fcmp fast oeq float %4265, 0.000000e+00
  %4267 = fcmp fast oeq float %4264, 0.000000e+00
  %4268 = or i1 %4267, %4266
  br i1 %4268, label %4298, label %4269

; <label>:4269                                    ; preds = %4242
  %4270 = fsub fast float -0.000000e+00, %53
  %4271 = fsub fast float -0.000000e+00, %51
  %4272 = call float @dx.op.unary.f32(i32 24, float %4265)  ; Sqrt(value)
  %4273 = fdiv fast float %4272, %4264
  %4274 = fcmp fast ogt float %4273, 0x3FFB6F8900000000
  %4275 = select i1 %4274, float 0x3FFB6F8900000000, float %4273
  %4276 = fmul fast float %4275, 0x3FE8A23460000000
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = call float @dx.op.binary.f32(i32 35, float %4275, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4279 = fmul fast float %4277, %4264
  %4280 = fmul fast float %4278, 0x3FF279A740000000
  %4281 = fadd fast float %4280, -1.000000e+00
  %4282 = call float @dx.op.dot3.f32(i32 55, float %4270, float %4271, float %52, float %4270, float %4271, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4283 = call float @dx.op.unary.f32(i32 25, float %4282)  ; Rsqrt(value)
  %4284 = fmul fast float %4283, %4270
  %4285 = fmul fast float %4283, %4271
  %4286 = fmul fast float %4283, %52
  %4287 = fmul fast float %4281, %4281
  %4288 = fsub fast float 1.000000e+00, %4287
  %4289 = fmul fast float %4278, 0x40005F8BE0000000
  %4290 = fsub fast float 0x400C5BF8A0000000, %4289
  %4291 = fdiv fast float %4279, %4290
  %4292 = fmul fast float %4291, 0x3FEE31C3C0000000
  %4293 = fmul fast float %4292, %4288
  %4294 = fmul fast float %4278, 0x3FDACB7480000000
  %4295 = fadd fast float %4294, 0xBFD7347680000000
  %4296 = fmul fast float %4295, %4291
  %4297 = fmul fast float %4296, %4288
  br label %4298

; <label>:4298                                    ; preds = %4269, %4242
  %4299 = phi float [ %4284, %4269 ], [ 0.000000e+00, %4242 ]
  %4300 = phi float [ %4285, %4269 ], [ 0.000000e+00, %4242 ]
  %4301 = phi float [ %4286, %4269 ], [ 0.000000e+00, %4242 ]
  %4302 = phi float [ %4293, %4269 ], [ 0.000000e+00, %4242 ]
  %4303 = phi float [ %4297, %4269 ], [ 0.000000e+00, %4242 ]
  %4304 = call float @dx.op.dot3.f32(i32 55, float %4299, float %4300, float %4301, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4305 = fmul fast float %4304, %4304
  %4306 = fmul fast float %4305, 0x3FEE471020000000
  %4307 = fadd fast float %4306, 0xBFD42F6020000000
  %4308 = fmul fast float %4264, 0x3FD20DD760000000
  %4309 = fmul fast float %4307, %4303
  %4310 = fmul fast float %4302, 0x3FDF454380000000
  %4311 = fmul fast float %4310, %4304
  %4312 = fadd fast float %4311, %4308
  %4313 = fadd fast float %4312, %4309
  %4314 = call float @dx.op.dot3.f32(i32 55, float %4299, float %4300, float %4301, float %4130, float %4131, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4315 = fmul fast float %4314, 0x3FDF454380000000
  %4316 = fmul fast float %4314, %4314
  %4317 = fmul fast float %4316, 0x3FEE471020000000
  %4318 = fadd fast float %4317, 0xBFD42F6020000000
  %4319 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4302, float %4303, float 0x3FD20DD760000000, float %4315, float %4318)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = call float @dx.op.binary.f32(i32 35, float %4201, float 0.000000e+00)  ; FMax(a,b)
  %4321 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4322 = call float @dx.op.binary.f32(i32 35, float %4313, float 0.000000e+00)  ; FMax(a,b)
  %4323 = call float @dx.op.binary.f32(i32 35, float %4207, float 0.000000e+00)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float %4263, float 0.000000e+00)  ; FMax(a,b)
  %4325 = call float @dx.op.binary.f32(i32 35, float %4319, float 0.000000e+00)  ; FMax(a,b)
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = call float @dx.op.binary.f32(i32 36, float %4096, float %4327)  ; FMin(a,b)
  %4329 = fmul fast float %4328, %4134
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = bitcast float %4330 to i32
  %4332 = sub nsw i32 2129859010, %4331
  %4333 = bitcast i32 %4332 to float
  %4334 = call float @dx.op.binary.f32(i32 36, float %4097, float %4327)  ; FMin(a,b)
  %4335 = fmul fast float %4334, %4134
  %4336 = fsub fast float 1.000000e+00, %4335
  %4337 = bitcast float %4336 to i32
  %4338 = sub nsw i32 2129859010, %4337
  %4339 = bitcast i32 %4338 to float
  %4340 = call float @dx.op.binary.f32(i32 36, float %4098, float %4327)  ; FMin(a,b)
  %4341 = fmul fast float %4340, %4134
  %4342 = fsub fast float 1.000000e+00, %4341
  %4343 = bitcast float %4342 to i32
  %4344 = sub nsw i32 2129859010, %4343
  %4345 = bitcast i32 %4344 to float
  %4346 = fmul fast float %4320, %4133
  %4347 = fmul fast float %4346, %4333
  %4348 = fmul fast float %4321, %4133
  %4349 = fmul fast float %4348, %4339
  %4350 = fmul fast float %4322, %4133
  %4351 = fmul fast float %4350, %4345
  %4352 = call float @dx.op.binary.f32(i32 36, float %4099, float %4327)  ; FMin(a,b)
  %4353 = fmul fast float %4352, %4134
  %4354 = fsub fast float 1.000000e+00, %4353
  %4355 = bitcast float %4354 to i32
  %4356 = sub nsw i32 2129859010, %4355
  %4357 = bitcast i32 %4356 to float
  %4358 = call float @dx.op.binary.f32(i32 36, float %4100, float %4327)  ; FMin(a,b)
  %4359 = fmul fast float %4358, %4134
  %4360 = fsub fast float 1.000000e+00, %4359
  %4361 = bitcast float %4360 to i32
  %4362 = sub nsw i32 2129859010, %4361
  %4363 = bitcast i32 %4362 to float
  %4364 = call float @dx.op.binary.f32(i32 36, float %4122, float %4327)  ; FMin(a,b)
  %4365 = fmul fast float %4364, %4134
  %4366 = fsub fast float 1.000000e+00, %4365
  %4367 = bitcast float %4366 to i32
  %4368 = sub nsw i32 2129859010, %4367
  %4369 = bitcast i32 %4368 to float
  %4370 = fmul fast float %4323, %4133
  %4371 = fmul fast float %4370, %4357
  %4372 = fmul fast float %4324, %4133
  %4373 = fmul fast float %4372, %4363
  %4374 = fmul fast float %4325, %4133
  %4375 = fmul fast float %4374, %4369
  %4376 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4349, float %4351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = select i1 %184, float 0.000000e+00, float %4347
  %4378 = select i1 %184, float %4376, float %4349
  %4379 = select i1 %184, float 0.000000e+00, float %4351
  %4380 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4373, float %4375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4381 = select i1 %184, float 0.000000e+00, float %4371
  %4382 = select i1 %184, float %4380, float %4373
  %4383 = select i1 %184, float 0.000000e+00, float %4375
  %4384 = fmul fast float %4124, 9.843750e-01
  %4385 = fmul fast float %4105, 9.843750e-01
  %4386 = fadd fast float %4384, 7.812500e-03
  %4387 = fadd fast float %4385, 7.812500e-03
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4391 = fmul fast float %4389, %4099
  %4392 = fmul fast float %4389, %4100
  %4393 = fmul fast float %4389, %4122
  %4394 = fadd fast float %4391, %4390
  %4395 = fadd fast float %4392, %4390
  %4396 = fadd fast float %4393, %4390
  %4397 = call float @dx.op.binary.f32(i32 35, float %4395, float %4396)  ; FMax(a,b)
  %4398 = call float @dx.op.binary.f32(i32 35, float %4394, float %4397)  ; FMax(a,b)
  %4399 = fsub fast float 1.000000e+00, %4398
  %4400 = fmul fast float %4398, %4105
  %4401 = fadd fast float %4400, %4105
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4407 = fmul fast float %4401, %4403
  %4408 = fadd fast float %4407, %4404
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = fmul fast float %4405, %4401
  %4411 = fadd fast float %4410, %4406
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = fsub fast float 1.000000e+00, %4145
  %4414 = fadd fast float %4413, %4412
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fcmp fast olt float %4415, 1.000000e+00
  br i1 %4416, label %4417, label %5272

; <label>:4417                                    ; preds = %4298
  %4418 = fcmp fast olt float %4409, 1.000000e+00
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = fcmp fast ogt float %4420, 0.000000e+00
  %4422 = or i1 %4418, %4421
  %4423 = or i1 %4418, %4421
  %4424 = xor i1 %4423, true
  %4425 = zext i1 %4424 to i32
  br i1 %4422, label %4426, label %4669

; <label>:4426                                    ; preds = %4417
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4446 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.CBufRet.f32 %4447, 1
  %4450 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4451 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4457 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float %4130, float %4131, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call float @dx.op.unary.f32(i32 6, float %4458)  ; FAbs(value)
  %4460 = fmul fast float %4459, 8.000000e+00
  %4461 = fadd fast float %4460, -6.000000e+00
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4457, 8.000000e+00
  %4464 = fmul fast float %4463, %4420
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fcmp fast ogt float %4465, 0.000000e+00
  br i1 %4466, label %4467, label %4644, !dx.controlflow.hints !81

; <label>:4467                                    ; preds = %4426
  %4468 = extractvalue %dx.types.CBufRet.f32 %4419, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4470 = fsub fast float %4468, %4469
  %4471 = fmul fast float %4470, %4105
  %4472 = fadd fast float %4471, %4469
  %4473 = fmul fast float %197, 2.000000e+00
  %4474 = fmul fast float %198, 2.000000e+00
  %4475 = fadd fast float %4473, -1.000000e+00
  %4476 = fadd fast float %4474, -1.000000e+00
  %4477 = fmul fast float %4472, %4475
  %4478 = fmul fast float %4472, %4476
  %4479 = fadd fast float %4477, %81
  %4480 = fadd fast float %4478, %82
  %4481 = fmul fast float %4479, %4108
  %4482 = fmul fast float %4480, %4109
  %4483 = fadd fast float %4105, 0xBFE3333340000000
  %4484 = fmul fast float %4483, 0x4004000020000000
  %4485 = fsub fast float 1.000000e+00, %4484
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4486, 3.000000e+00
  %4488 = fadd fast float %4487, %197
  %4489 = call float @dx.op.unary.f32(i32 27, float %4488)  ; Round_ni(value)
  %4490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4481, float %4482, float %4489, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4491 = extractvalue %dx.types.ResRet.f32 %4490, 0
  %4492 = fcmp fast une float %4491, 0xFFF0000000000000
  %4493 = fcmp fast une float %4491, 0x7FF0000000000000
  %4494 = and i1 %4492, %4493
  %4495 = fcmp fast olt float %4491, 0.000000e+00
  %4496 = call float @dx.op.unary.f32(i32 6, float %4491)  ; FAbs(value)
  %4497 = fsub fast float 1.000000e+00, %4496
  %4498 = select i1 %4494, float 1.000000e+00, float 0.000000e+00
  %4499 = fmul fast float %4498, %4465
  %4500 = fcmp fast ogt float %4499, 0.000000e+00
  br i1 %4500, label %4501, label %4644, !dx.controlflow.hints !82

; <label>:4501                                    ; preds = %4467
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = select i1 %4495, float 0.000000e+00, float %4503
  %4507 = select i1 %4495, float 0.000000e+00, float %4504
  %4508 = select i1 %4495, float 0.000000e+00, float %4505
  %4509 = select i1 %4495, float %4428, float %4443
  %4510 = select i1 %4495, float %4433, float %4448
  %4511 = select i1 %4495, float %4438, float %4453
  %4512 = select i1 %4495, float %4429, float %4444
  %4513 = select i1 %4495, float %4434, float %4449
  %4514 = select i1 %4495, float %4439, float %4454
  %4515 = select i1 %4495, float %4430, float %4445
  %4516 = select i1 %4495, float %4435, float %4450
  %4517 = select i1 %4495, float %4440, float %4455
  %4518 = select i1 %4495, float %4431, float %4446
  %4519 = select i1 %4495, float %4436, float %4451
  %4520 = select i1 %4495, float %4441, float %4456
  %4521 = fadd fast float %4506, %140
  %4522 = fadd fast float %4507, %141
  %4523 = fadd fast float %4508, %142
  %4524 = fmul fast float %4521, %4509
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4512, float %4524)  ; FMad(a,b,c)
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4523, float %4515, float %4525)  ; FMad(a,b,c)
  %4527 = fadd fast float %4526, %4518
  %4528 = fmul fast float %4521, %4510
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4513, float %4528)  ; FMad(a,b,c)
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4523, float %4516, float %4529)  ; FMad(a,b,c)
  %4531 = fadd fast float %4530, %4519
  %4532 = fmul fast float %4521, %4511
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4514, float %4532)  ; FMad(a,b,c)
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4523, float %4517, float %4533)  ; FMad(a,b,c)
  %4535 = fadd fast float %4534, %4520
  %4536 = fdiv fast float 1.000000e+00, %4535
  %4537 = fmul fast float %4536, %4527
  %4538 = fmul fast float %4536, %4531
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4542 = fmul fast float %4537, %4540
  %4543 = fmul fast float %4538, %4541
  %4544 = extractvalue %dx.types.CBufRet.f32 %4539, 2
  %4545 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4546 = fadd fast float %4542, %4544
  %4547 = fadd fast float %4543, %4545
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4550 = fmul fast float %4549, %4130
  %4551 = fmul fast float %4549, %4131
  %4552 = fmul fast float %4549, %4132
  %4553 = fadd fast float %4550, %4521
  %4554 = fadd fast float %4551, %4522
  %4555 = fadd fast float %4552, %4523
  %4556 = fmul fast float %4553, %4509
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4512, float %4556)  ; FMad(a,b,c)
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4515, float %4557)  ; FMad(a,b,c)
  %4559 = fadd fast float %4558, %4518
  %4560 = fmul fast float %4553, %4510
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4513, float %4560)  ; FMad(a,b,c)
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4516, float %4561)  ; FMad(a,b,c)
  %4563 = fadd fast float %4562, %4519
  %4564 = fmul fast float %4553, %4511
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4514, float %4564)  ; FMad(a,b,c)
  %4566 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4517, float %4565)  ; FMad(a,b,c)
  %4567 = fadd fast float %4566, %4520
  %4568 = fdiv fast float 1.000000e+00, %4567
  %4569 = fmul fast float %4568, %4559
  %4570 = fmul fast float %4568, %4563
  %4571 = fmul fast float %4546, 2.000000e+00
  %4572 = fadd fast float %4571, -1.000000e+00
  %4573 = call float @dx.op.unary.f32(i32 6, float %4572)  ; FAbs(value)
  %4574 = fmul fast float %4573, 5.000000e+00
  %4575 = fadd fast float %4574, -4.000000e+00
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fmul fast float %4576, %4462
  %4578 = fsub fast float %4537, %4569
  %4579 = fmul fast float %4540, %4578
  %4580 = fmul fast float %4577, %4579
  %4581 = fsub fast float %4569, %4537
  %4582 = fmul fast float %4540, %4581
  %4583 = fadd fast float %4582, %4580
  %4584 = fsub fast float %4570, %4538
  %4585 = fmul fast float %4541, %4584
  %4586 = fmul fast float %4583, %4497
  %4587 = fmul fast float %4585, %4497
  %4588 = fadd fast float %4586, %4546
  %4589 = fadd fast float %4587, %4547
  %4590 = fsub fast float %4568, %4536
  %4591 = fmul fast float %4590, %4497
  %4592 = fadd fast float %4591, %4536
  %4593 = fdiv fast float 1.000000e+00, %4592
  %4594 = fadd fast float %4105, -1.000000e+00
  %4595 = fsub fast float %4593, %4535
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4598 = fmul fast float %4597, %4593
  %4599 = fdiv fast float 1.600000e+02, %4598
  %4600 = fmul fast float %4594, %4594
  %4601 = fmul fast float %4600, 0xBFB5B17960000000
  %4602 = fmul fast float %4601, %4595
  %4603 = fmul fast float %4602, %4599
  %4604 = call float @dx.op.unary.f32(i32 21, float %4603)  ; Exp(value)
  %4605 = fmul fast float %4604, 0x3FF04B2960000000
  %4606 = fsub fast float 0x3FF04B2960000000, %4605
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fmul fast float %4607, 4.000000e+00
  %4609 = fadd fast float %197, -5.000000e-01
  %4610 = fadd fast float %198, -5.000000e-01
  %4611 = fmul fast float %4607, 0x3FBEB851E0000000
  %4612 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4613 = fmul fast float %4612, %4609
  %4614 = fmul fast float %4612, %4610
  %4615 = fadd fast float %4588, %4613
  %4616 = fadd fast float %4589, %4614
  %4617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4608)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 2
  %4623 = fmul fast float %4622, %4618
  %4624 = fmul fast float %4622, %4619
  %4625 = fmul fast float %4622, %4620
  %4626 = select i1 %184, float 0.000000e+00, float %4624
  %4627 = select i1 %184, float 0.000000e+00, float %4625
  %4628 = fmul fast float %4615, 2.000000e+00
  %4629 = fmul fast float %4616, 2.000000e+00
  %4630 = fadd fast float %4628, -1.000000e+00
  %4631 = fadd fast float %4629, -1.000000e+00
  %4632 = fmul fast float %4630, %4630
  %4633 = fsub fast float 1.000000e+00, %4632
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fsub fast float 1.000000e+00, %4634
  %4636 = fmul fast float %4635, %4462
  %4637 = fadd fast float %4636, %4634
  %4638 = fmul fast float %4631, %4631
  %4639 = fsub fast float 1.000000e+00, %4638
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4637, %4640
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fmul fast float %4642, %4499
  br label %4644

; <label>:4644                                    ; preds = %4501, %4467, %4426
  %4645 = phi float [ %4623, %4501 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4426 ]
  %4646 = phi float [ %4626, %4501 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4426 ]
  %4647 = phi float [ %4627, %4501 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4426 ]
  %4648 = phi float [ %4643, %4501 ], [ 0.000000e+00, %4467 ], [ 0.000000e+00, %4426 ]
  %4649 = fcmp fast olt float %4648, 1.000000e+00
  %4650 = or i1 %4649, %4424
  %4651 = zext i1 %4650 to i32
  %4652 = fmul fast float %4648, %4409
  %4653 = fsub fast float %4648, %4652
  %4654 = fsub fast float 1.000000e+00, %4415
  %4655 = fmul fast float %4653, %4654
  %4656 = fadd fast float %4655, %4415
  %4657 = fsub fast float %4656, %4653
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, %4381
  %4660 = fmul fast float %4658, %4382
  %4661 = fmul fast float %4658, %4383
  %4662 = fsub fast float -0.000000e+00, %4656
  %4663 = fmul fast float %4653, %4645
  %4664 = fmul fast float %4653, %4646
  %4665 = fmul fast float %4653, %4647
  %4666 = fadd fast float %4663, %4659
  %4667 = fadd fast float %4664, %4660
  %4668 = fadd fast float %4665, %4661
  br label %4669

; <label>:4669                                    ; preds = %4644, %4417
  %4670 = phi float [ %4415, %4417 ], [ %4662, %4644 ]
  %4671 = phi float [ %4381, %4417 ], [ %4666, %4644 ]
  %4672 = phi float [ %4382, %4417 ], [ %4667, %4644 ]
  %4673 = phi float [ %4383, %4417 ], [ %4668, %4644 ]
  %4674 = phi i32 [ %4425, %4417 ], [ %4651, %4644 ]
  %4675 = icmp eq i32 %4674, 0
  br i1 %4675, label %5272, label %4676

; <label>:4676                                    ; preds = %4669
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 2
  %4679 = extractvalue %dx.types.CBufRet.f32 %4677, 3
  %4680 = fmul fast float %4678, %81
  %4681 = fmul fast float %4679, %82
  %4682 = fptoui float %4680 to i32
  %4683 = fptoui float %4681 to i32
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4687 = extractvalue %dx.types.CBufRet.f32 %4684, 3
  %4688 = fadd fast float %76, -4.000000e+00
  %4689 = call float @dx.op.binary.f32(i32 35, float %4688, float 0.000000e+00)  ; FMax(a,b)
  %4690 = fadd fast float %4689, %4685
  %4691 = fmul fast float %4690, %4686
  %4692 = call float @dx.op.unary.f32(i32 23, float %4691)  ; Log(value)
  %4693 = fmul fast float %4692, %4687
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 2
  %4696 = fmul fast float %4693, %4695
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.i32 %4698, 1
  %4700 = add i32 %4699, -1
  %4701 = uitofp i32 %4699 to float
  %4702 = fmul fast float %4701, %4697
  %4703 = fptoui float %4702 to i32
  %4704 = call i32 @dx.op.binary.i32(i32 40, i32 %4703, i32 %4700)  ; UMin(a,b)
  %4705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.i32 %4705, 2
  %4707 = extractvalue %dx.types.CBufRet.i32 %4705, 3
  %4708 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4683, i32 %4706, i32 %4682)  ; UMad(a,b,c)
  %4709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4704, i32 %4707, i32 %4708)  ; UMad(a,b,c)
  %4710 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %4711 = fptoui float %4710 to i32
  %4712 = lshr i32 %4711, 5
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4712, i32 8191)  ; UMin(a,b)
  %4714 = fcmp fast ogt float %3904, 0.000000e+00
  %4715 = fcmp fast ogt float %4132, 0.000000e+00
  %4716 = and i1 %4715, %4714
  br i1 %4716, label %4717, label %4746

; <label>:4717                                    ; preds = %4676
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4718, float -1.000000e+00)  ; FMax(a,b)
  %4720 = call float @dx.op.binary.f32(i32 36, float %4719, float 1.000000e+00)  ; FMin(a,b)
  %4721 = fmul fast float %4720, %4720
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = fmul fast float %4722, 0x3FFC6E2300000000
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = fcmp fast ogt float %4724, 0.000000e+00
  %4726 = call float @dx.op.unary.f32(i32 24, float %4724)  ; Sqrt(value)
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = call float @dx.op.unary.f32(i32 23, float %4727)  ; Log(value)
  %4729 = fmul fast float %4728, 5.000000e+00
  %4730 = call float @dx.op.unary.f32(i32 21, float %4729)  ; Exp(value)
  %4731 = fmul fast float %4730, 0x3FEF591A60000000
  %4732 = fadd fast float %4731, 0x3F94DCB540000000
  %4733 = select i1 %4725, float %4732, float 1.000000e+00
  %4734 = fcmp fast oge float %4733, 1.000000e+00
  %4735 = fmul fast float %4718, 2.000000e+00
  %4736 = fadd fast float %4735, %4132
  %4737 = select i1 %4734, float %4736, float %4132
  %4738 = fsub fast float %4737, %4132
  %4739 = fmul fast float %4738, %3904
  %4740 = fadd fast float %4739, %4132
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4740, float %4130, float %4131, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.unary.f32(i32 25, float %4741)  ; Rsqrt(value)
  %4743 = fmul fast float %4742, %4130
  %4744 = fmul fast float %4742, %4131
  %4745 = fmul fast float %4740, %4742
  br label %4746

; <label>:4746                                    ; preds = %4717, %4676
  %4747 = phi float [ %4743, %4717 ], [ %4130, %4676 ]
  %4748 = phi float [ %4744, %4717 ], [ %4131, %4676 ]
  %4749 = phi float [ %4745, %4717 ], [ %4132, %4676 ]
  %4750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.i32 %4750, 2
  %4752 = add nsw i32 %4751, -1
  %4753 = call i32 @dx.op.binary.i32(i32 37, i32 %4752, i32 0)  ; IMax(a,b)
  %4754 = shl i32 %4713, 2
  %4755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4754, i32 undef)  ; BufferLoad(srv,index,wot)
  %4756 = extractvalue %dx.types.ResRet.i32 %4755, 0
  %4757 = lshr i32 %4756, 16
  %4758 = and i32 %4756, 65535
  %4759 = lshr i32 %4756, 21
  %4760 = lshr i32 %4758, 5
  %4761 = call i32 @dx.op.binary.i32(i32 40, i32 %4760, i32 %4753)  ; UMin(a,b)
  %4762 = icmp ugt i32 %4759, %4761
  br i1 %4762, label %5144, label %4763

; <label>:4763                                    ; preds = %4746
  br label %4764

; <label>:4764                                    ; preds = %5133, %4763
  %4765 = phi float [ %5134, %5133 ], [ 0.000000e+00, %4763 ]
  %4766 = phi float [ %5135, %5133 ], [ 0.000000e+00, %4763 ]
  %4767 = phi float [ %5136, %5133 ], [ 0.000000e+00, %4763 ]
  %4768 = phi float [ %5137, %5133 ], [ 1.000000e+00, %4763 ]
  %4769 = phi i32 [ %5141, %5133 ], [ %4759, %4763 ]
  %4770 = phi float [ %5138, %5133 ], [ 0.000000e+00, %4763 ]
  %4771 = phi float [ %5139, %5133 ], [ 0.000000e+00, %4763 ]
  %4772 = phi float [ %5140, %5133 ], [ 0.000000e+00, %4763 ]
  %4773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.i32 %4773, 2
  %4775 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4709, i32 %4774, i32 %4769)  ; UMad(a,b,c)
  %4776 = shl i32 %4775, 2
  %4777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4776, i32 undef)  ; BufferLoad(srv,index,wot)
  %4778 = extractvalue %dx.types.ResRet.i32 %4777, 0
  %4779 = shl i32 %4769, 5
  %4780 = sub nsw i32 %4757, %4779
  %4781 = call i32 @dx.op.binary.i32(i32 37, i32 %4780, i32 0)  ; IMax(a,b)
  %4782 = call i32 @dx.op.binary.i32(i32 38, i32 %4781, i32 31)  ; IMin(a,b)
  %4783 = sub nsw i32 1, %4757
  %4784 = add nsw i32 %4783, %4758
  %4785 = call i32 @dx.op.binary.i32(i32 37, i32 %4784, i32 0)  ; IMax(a,b)
  %4786 = call i32 @dx.op.binary.i32(i32 38, i32 %4785, i32 32)  ; IMin(a,b)
  %4787 = and i32 %4786, 31
  %4788 = shl i32 -1, %4787
  %4789 = xor i32 %4788, -1
  %4790 = and i32 %4782, 31
  %4791 = shl i32 %4789, %4790
  %4792 = icmp eq i32 %4786, 32
  %4793 = select i1 %4792, i32 -1, i32 %4791
  %4794 = and i32 %4793, %4778
  %4795 = icmp eq i32 %4794, 0
  br i1 %4795, label %5133, label %4796

; <label>:4796                                    ; preds = %4764
  br label %4797

; <label>:4797                                    ; preds = %4907, %4796
  %4798 = phi float [ %4908, %4907 ], [ %4765, %4796 ]
  %4799 = phi float [ %4909, %4907 ], [ %4766, %4796 ]
  %4800 = phi float [ %4910, %4907 ], [ %4767, %4796 ]
  %4801 = phi float [ %4911, %4907 ], [ %4768, %4796 ]
  %4802 = phi i32 [ %4810, %4907 ], [ %4794, %4796 ]
  %4803 = phi float [ %4912, %4907 ], [ %4770, %4796 ]
  %4804 = phi float [ %4913, %4907 ], [ %4771, %4796 ]
  %4805 = phi float [ %4914, %4907 ], [ %4772, %4796 ]
  %4806 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4802)  ; FirstbitLo(value)
  %4807 = add i32 %4806, %4779
  %4808 = and i32 %4806, 31
  %4809 = shl i32 1, %4808
  %4810 = xor i32 %4809, %4802
  %4811 = mul i32 %4807, 72
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = add i32 %4811, 12
  %4817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4816, i32 undef)  ; BufferLoad(srv,index,wot)
  %4818 = extractvalue %dx.types.ResRet.i32 %4817, 0
  %4819 = add i32 %4811, 16
  %4820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4819, i32 undef)  ; BufferLoad(srv,index,wot)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = add i32 %4811, 28
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = add i32 %4811, 32
  %4828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = extractvalue %dx.types.ResRet.f32 %4828, 3
  %4833 = add i32 %4811, 48
  %4834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4833, i32 undef)  ; BufferLoad(srv,index,wot)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.ResRet.f32 %4834, 1
  %4837 = add i32 %4811, 56
  %4838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = add i32 %4811, 64
  %4842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4841, i32 undef)  ; BufferLoad(srv,index,wot)
  %4843 = extractvalue %dx.types.ResRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.ResRet.f32 %4842, 1
  %4845 = mul i32 %4807, 60
  %4846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4845, i32 undef)  ; BufferLoad(srv,index,wot)
  %4847 = extractvalue %dx.types.ResRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.ResRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.ResRet.f32 %4846, 2
  %4850 = add i32 %4845, 12
  %4851 = add i32 %4845, 48
  %4852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4851, i32 undef)  ; BufferLoad(srv,index,wot)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = and i32 %4818, 32767
  %4857 = bitcast float %4813 to i32
  %4858 = icmp eq i32 %4857, -1
  %4859 = bitcast float %4814 to i32
  %4860 = and i32 %4818, 32768
  %4861 = icmp ne i32 %4860, 0
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4866 = fsub fast float %4847, %4863
  %4867 = fsub fast float %4848, %4864
  %4868 = fsub fast float %4849, %4865
  %4869 = fsub fast float %140, %4866
  %4870 = fsub fast float %141, %4867
  %4871 = fsub fast float %142, %4868
  %4872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4850, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.ResRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.ResRet.f32 %4872, 2
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4873, float %4874, float %4875)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = add i32 %4845, 24
  %4878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4877, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4879, float %4880, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = add i32 %4845, 36
  %4884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4883, i32 undef)  ; BufferLoad(srv,index,wot)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = call float @dx.op.unary.f32(i32 6, float %4876)  ; FAbs(value)
  %4890 = call float @dx.op.unary.f32(i32 6, float %4882)  ; FAbs(value)
  %4891 = call float @dx.op.unary.f32(i32 6, float %4888)  ; FAbs(value)
  %4892 = fsub fast float %4853, %4889
  %4893 = fsub fast float %4854, %4890
  %4894 = fsub fast float %4855, %4891
  %4895 = fmul fast float %4892, %4821
  %4896 = fmul fast float %4893, %4822
  %4897 = fmul fast float %4894, %4823
  %4898 = call float @dx.op.binary.f32(i32 36, float %4896, float %4897)  ; FMin(a,b)
  %4899 = call float @dx.op.binary.f32(i32 36, float %4895, float %4898)  ; FMin(a,b)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = call float @dx.op.binary.f32(i32 36, float %4801, float %4900)  ; FMin(a,b)
  %4902 = uitofp i1 %4861 to float
  %4903 = fadd fast float %3904, 1.000000e+00
  %4904 = fsub fast float %4903, %4902
  %4905 = fmul fast float %4901, %4904
  %4906 = fcmp fast ogt float %4905, 0.000000e+00
  br i1 %4906, label %4916, label %4907

; <label>:4907                                    ; preds = %5058, %4797
  %4908 = phi float [ %5122, %5058 ], [ %4798, %4797 ]
  %4909 = phi float [ %5123, %5058 ], [ %4799, %4797 ]
  %4910 = phi float [ %5124, %5058 ], [ %4800, %4797 ]
  %4911 = phi float [ %5131, %5058 ], [ %4801, %4797 ]
  %4912 = phi float [ %5128, %5058 ], [ %4803, %4797 ]
  %4913 = phi float [ %5129, %5058 ], [ %4804, %4797 ]
  %4914 = phi float [ %5130, %5058 ], [ %4805, %4797 ]
  %4915 = icmp eq i32 %4802, %4809
  br i1 %4915, label %5132, label %4797

; <label>:4916                                    ; preds = %4797
  br i1 %4858, label %4974, label %4917

; <label>:4917                                    ; preds = %4916
  %4918 = fsub fast float -0.000000e+00, %4873
  %4919 = fsub fast float -0.000000e+00, %4874
  %4920 = fsub fast float -0.000000e+00, %4875
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = fsub fast float -0.000000e+00, %4921
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fadd fast float %4923, %4836
  %4925 = fadd fast float %4835, %4923
  %4926 = fsub fast float -0.000000e+00, %4925
  %4927 = fcmp ogt float %4921, -0.000000e+00
  %4928 = select i1 %4927, float %4926, float %4924
  %4929 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4930 = fdiv fast float 1.000000e+00, %4929
  %4931 = fmul fast float %4928, %4930
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0.000000e+00)  ; FMax(a,b)
  %4933 = fsub fast float -0.000000e+00, %4879
  %4934 = fsub fast float -0.000000e+00, %4880
  %4935 = fsub fast float -0.000000e+00, %4881
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = fsub fast float -0.000000e+00, %4936
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = fadd fast float %4938, %4840
  %4940 = fadd fast float %4839, %4938
  %4941 = fsub fast float -0.000000e+00, %4940
  %4942 = fcmp ogt float %4936, -0.000000e+00
  %4943 = select i1 %4942, float %4941, float %4939
  %4944 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4945 = fdiv fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4943, %4945
  %4947 = call float @dx.op.binary.f32(i32 35, float %4946, float 0.000000e+00)  ; FMax(a,b)
  %4948 = fsub fast float -0.000000e+00, %4885
  %4949 = fsub fast float -0.000000e+00, %4886
  %4950 = fsub fast float -0.000000e+00, %4887
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = fsub fast float -0.000000e+00, %4951
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4948, float %4949, float %4950)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = fadd fast float %4953, %4844
  %4955 = fadd fast float %4843, %4953
  %4956 = fsub fast float -0.000000e+00, %4955
  %4957 = fcmp ogt float %4951, -0.000000e+00
  %4958 = select i1 %4957, float %4956, float %4954
  %4959 = call float @dx.op.unary.f32(i32 6, float %4952)  ; FAbs(value)
  %4960 = fdiv fast float 1.000000e+00, %4959
  %4961 = fmul fast float %4958, %4960
  %4962 = call float @dx.op.binary.f32(i32 35, float %4961, float 0.000000e+00)  ; FMax(a,b)
  %4963 = call float @dx.op.binary.f32(i32 36, float %4947, float %4962)  ; FMin(a,b)
  %4964 = call float @dx.op.binary.f32(i32 36, float %4932, float %4963)  ; FMin(a,b)
  %4965 = fmul fast float %4964, %4747
  %4966 = fmul fast float %4964, %4748
  %4967 = fmul fast float %4964, %4749
  %4968 = fadd fast float %4965, %140
  %4969 = fadd fast float %4966, %141
  %4970 = fadd fast float %4967, %142
  %4971 = fsub fast float %4968, %4813
  %4972 = fsub fast float %4969, %4814
  %4973 = fsub fast float %4970, %4815
  br label %4981

; <label>:4974                                    ; preds = %4916
  %4975 = fmul fast float %4747, 8.096000e+03
  %4976 = fmul fast float %4748, 8.096000e+03
  %4977 = fmul fast float %4749, 8.096000e+03
  %4978 = fadd fast float %4975, %140
  %4979 = fadd fast float %4976, %141
  %4980 = fadd fast float %4977, %142
  br label %4981

; <label>:4981                                    ; preds = %4974, %4917
  %4982 = phi float [ %4747, %4974 ], [ %4971, %4917 ]
  %4983 = phi float [ %4748, %4974 ], [ %4972, %4917 ]
  %4984 = phi float [ %4749, %4974 ], [ %4973, %4917 ]
  %4985 = phi float [ %4978, %4974 ], [ %4968, %4917 ]
  %4986 = phi float [ %4979, %4974 ], [ %4969, %4917 ]
  %4987 = phi float [ %4980, %4974 ], [ %4970, %4917 ]
  %4988 = fcmp fast olt float %4832, 1.000000e+00
  br i1 %4988, label %4989, label %5020, !dx.controlflow.hints !83

; <label>:4989                                    ; preds = %4981
  %4990 = fmul fast float %4984, %4830
  %4991 = fmul fast float %4983, %4831
  %4992 = fsub fast float %4990, %4991
  %4993 = fmul fast float %4982, %4831
  %4994 = fmul fast float %4984, %4829
  %4995 = fsub fast float %4993, %4994
  %4996 = fmul fast float %4983, %4829
  %4997 = fmul fast float %4982, %4830
  %4998 = fsub fast float %4996, %4997
  %4999 = fmul fast float %4992, 2.000000e+00
  %5000 = fmul fast float %4995, 2.000000e+00
  %5001 = fmul fast float %4998, 2.000000e+00
  %5002 = fmul fast float %4999, %4832
  %5003 = fmul fast float %5000, %4832
  %5004 = fmul fast float %5001, %4832
  %5005 = fmul fast float %5001, %4830
  %5006 = fmul fast float %5000, %4831
  %5007 = fmul fast float %4999, %4831
  %5008 = fmul fast float %5001, %4829
  %5009 = fmul fast float %5000, %4829
  %5010 = fmul fast float %4999, %4830
  %5011 = fadd fast float %5005, %4982
  %5012 = fadd fast float %5011, %5002
  %5013 = fsub fast float %5012, %5006
  %5014 = fsub fast float %4983, %5008
  %5015 = fadd fast float %5014, %5003
  %5016 = fadd fast float %5015, %5007
  %5017 = fadd fast float %5004, %4984
  %5018 = fsub fast float %5017, %5010
  %5019 = fadd fast float %5018, %5009
  br label %5020

; <label>:5020                                    ; preds = %4989, %4981
  %5021 = phi float [ %5013, %4989 ], [ %4982, %4981 ]
  %5022 = phi float [ %5016, %4989 ], [ %4983, %4981 ]
  %5023 = phi float [ %5019, %4989 ], [ %4984, %4981 ]
  br i1 %4858, label %5055, label %5024

; <label>:5024                                    ; preds = %5020
  %5025 = fmul fast float %4105, 0x400187C840000000
  %5026 = fadd fast float %5025, 0xC00EFC2120000000
  %5027 = fmul fast float %5026, %4105
  %5028 = fadd fast float %5027, 0x3FE5D16340000000
  %5029 = fmul fast float %5028, %4105
  %5030 = fadd fast float %5029, 1.000000e+00
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fsub fast float %4985, %140
  %5033 = fsub fast float %4986, %141
  %5034 = fsub fast float %4987, %142
  %5035 = fsub fast float %4985, %4813
  %5036 = fsub fast float %4986, %4814
  %5037 = fsub fast float %4987, %4815
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = fadd fast float %5039, 0x3EE4F8B580000000
  %5041 = fdiv fast float %5038, %5040
  %5042 = bitcast float %5041 to i32
  %5043 = ashr i32 %5042, 1
  %5044 = add nsw i32 %5043, 532487669
  %5045 = bitcast i32 %5044 to float
  %5046 = fmul fast float %5045, %5031
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5047, 0x4009981AE0000000
  %5049 = fsub fast float 0x40111BBD80000000, %5048
  %5050 = fmul fast float %5049, %5047
  %5051 = fadd fast float %5050, 0xC0009F6020000000
  %5052 = fmul fast float %5051, %5047
  %5053 = fadd fast float %5052, 1.000000e+00
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  br label %5058

; <label>:5055                                    ; preds = %5020
  %5056 = icmp ne i32 %4859, -1
  %5057 = zext i1 %5056 to i32
  br label %5058

; <label>:5058                                    ; preds = %5055, %5024
  %5059 = phi float [ %4105, %5055 ], [ %5054, %5024 ]
  %5060 = phi i32 [ %5057, %5055 ], [ 0, %5024 ]
  %5061 = fmul float %5059, 5.000000e+00
  %5062 = fsub float 5.000000e+00, %5061
  %5063 = icmp ne i32 %5060, 0
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5066 = fadd fast float %5065, %5062
  %5067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5066)  ; FMax(a,b)
  %5068 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5069 = call float @dx.op.unary.f32(i32 6, float %5022)  ; FAbs(value)
  %5070 = fadd fast float %5069, %5068
  %5071 = call float @dx.op.unary.f32(i32 6, float %5023)  ; FAbs(value)
  %5072 = fadd fast float %5070, %5071
  %5073 = fcmp fast oeq float %5072, 0.000000e+00
  %5074 = fdiv fast float 1.000000e+00, %5072
  %5075 = select i1 %5073, float 1.000000e+00, float %5074
  %5076 = fmul fast float %5075, %5021
  %5077 = fmul fast float %5075, %5022
  %5078 = call float @dx.op.unary.f32(i32 6, float %5077)  ; FAbs(value)
  %5079 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5080 = fsub fast float 1.000000e+00, %5078
  %5081 = fsub fast float 1.000000e+00, %5079
  %5082 = fcmp fast oge float %5076, 0.000000e+00
  %5083 = fcmp fast oge float %5077, 0.000000e+00
  %5084 = select i1 %5082, float 1.000000e+00, float -1.000000e+00
  %5085 = select i1 %5083, float 1.000000e+00, float -1.000000e+00
  %5086 = fcmp fast ole float %5023, 0.000000e+00
  %5087 = fmul fast float %5084, %5080
  %5088 = fmul fast float %5085, %5081
  %5089 = select i1 %5086, float %5087, float %5076
  %5090 = select i1 %5086, float %5088, float %5077
  %5091 = fmul fast float %5089, 5.000000e-01
  %5092 = fmul fast float %5090, 5.000000e-01
  %5093 = fadd fast float %5091, 5.000000e-01
  %5094 = fadd fast float %5092, 5.000000e-01
  %5095 = uitofp i32 %4856 to float
  %5096 = call float @dx.op.binary.f32(i32 36, float %5067, float 3.000000e+00)  ; FMin(a,b)
  %5097 = fadd fast float %5096, 2.000000e+00
  %5098 = call float @dx.op.unary.f32(i32 21, float %5097)  ; Exp(value)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5100 = fmul fast float %5099, %5098
  %5101 = fmul fast float %5100, 2.000000e+00
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = fmul fast float %5093, %5102
  %5104 = fmul fast float %5094, %5102
  %5105 = fadd fast float %5103, %5100
  %5106 = fadd fast float %5104, %5100
  %5107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %5105, float %5106, float %5095, float undef, i32 0, i32 0, i32 undef, float %5067)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5113 = fmul fast float %5112, %4826
  %5114 = call float @dx.op.binary.f32(i32 36, float %4151, float %5113)  ; FMin(a,b)
  %5115 = select i1 %5063, float %5114, float %5113
  %5116 = fmul fast float %5108, %4905
  %5117 = fmul fast float %5116, %5115
  %5118 = fmul fast float %5109, %4905
  %5119 = fmul fast float %5118, %5115
  %5120 = fmul fast float %5110, %4905
  %5121 = fmul fast float %5120, %5115
  %5122 = fadd fast float %5117, %4798
  %5123 = fadd fast float %5119, %4799
  %5124 = fadd fast float %5121, %4800
  %5125 = fmul fast float %4985, %4905
  %5126 = fmul fast float %4986, %4905
  %5127 = fmul fast float %4987, %4905
  %5128 = fadd fast float %5125, %4803
  %5129 = fadd fast float %5126, %4804
  %5130 = fadd fast float %5127, %4805
  %5131 = fsub fast float %4801, %4905
  br label %4907

; <label>:5132                                    ; preds = %4907
  br label %5133

; <label>:5133                                    ; preds = %5132, %4764
  %5134 = phi float [ %4765, %4764 ], [ %4908, %5132 ]
  %5135 = phi float [ %4766, %4764 ], [ %4909, %5132 ]
  %5136 = phi float [ %4767, %4764 ], [ %4910, %5132 ]
  %5137 = phi float [ %4768, %4764 ], [ %4911, %5132 ]
  %5138 = phi float [ %4770, %4764 ], [ %4912, %5132 ]
  %5139 = phi float [ %4771, %4764 ], [ %4913, %5132 ]
  %5140 = phi float [ %4772, %4764 ], [ %4914, %5132 ]
  %5141 = add i32 %4769, 1
  %5142 = icmp ugt i32 %5141, %4761
  br i1 %5142, label %5143, label %4764, !llvm.loop !84

; <label>:5143                                    ; preds = %5133
  br label %5144

; <label>:5144                                    ; preds = %5143, %4746
  %5145 = phi float [ 0.000000e+00, %4746 ], [ %5134, %5143 ]
  %5146 = phi float [ 0.000000e+00, %4746 ], [ %5135, %5143 ]
  %5147 = phi float [ 0.000000e+00, %4746 ], [ %5136, %5143 ]
  %5148 = phi float [ 0.000000e+00, %4746 ], [ %5138, %5143 ]
  %5149 = phi float [ 0.000000e+00, %4746 ], [ %5139, %5143 ]
  %5150 = phi float [ 0.000000e+00, %4746 ], [ %5140, %5143 ]
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = select i1 %184, float 0.000000e+00, float %5145
  %5153 = select i1 %184, float %5151, float %5146
  %5154 = select i1 %184, float 0.000000e+00, float %5147
  %5155 = fcmp fast olt float %4670, 0.000000e+00
  %5156 = call float @dx.op.unary.f32(i32 6, float %4670)  ; FAbs(value)
  %5157 = fmul fast float %5156, %4671
  %5158 = fmul fast float %5156, %4672
  %5159 = fmul fast float %5156, %4673
  %5160 = select i1 %5155, float %4671, float %5157
  %5161 = select i1 %5155, float %4672, float %5158
  %5162 = select i1 %5155, float %4673, float %5159
  %5163 = fsub fast float 1.000000e+00, %5156
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fmul fast float %5164, %5152
  %5166 = fmul fast float %5164, %5153
  %5167 = fmul fast float %5164, %5154
  %5168 = fadd fast float %5160, %5165
  %5169 = fadd fast float %5161, %5166
  %5170 = fadd fast float %5162, %5167
  %5171 = fcmp fast une float %4420, 0.000000e+00
  br i1 %5171, label %5272, label %5172

; <label>:5172                                    ; preds = %5144
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5177 = extractvalue %dx.types.CBufRet.f32 %5173, 3
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.CBufRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.CBufRet.f32 %5178, 2
  %5182 = extractvalue %dx.types.CBufRet.f32 %5178, 3
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.CBufRet.f32 %5183, 1
  %5186 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5187 = extractvalue %dx.types.CBufRet.f32 %5183, 3
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5184, float %5185, float %5186, float %4130, float %4131, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = fadd fast float %4105, -1.000000e+00
  %5192 = fsub fast float %5189, %5190
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5195 = fmul fast float %5194, %5189
  %5196 = fdiv fast float 1.600000e+02, %5195
  %5197 = fmul fast float %5191, %5191
  %5198 = fmul fast float %5197, 0xBFB5B17960000000
  %5199 = fmul fast float %5198, %5192
  %5200 = fmul fast float %5199, %5196
  %5201 = call float @dx.op.unary.f32(i32 21, float %5200)  ; Exp(value)
  %5202 = fmul fast float %5201, 0x3FF04B2960000000
  %5203 = fsub fast float 0x3FF04B2960000000, %5202
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fmul fast float %5204, 4.000000e+00
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5210 = fadd fast float %5207, %5148
  %5211 = fadd fast float %5208, %5149
  %5212 = fadd fast float %5209, %5150
  %5213 = fmul fast float %5210, %5174
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5211, float %5175, float %5213)  ; FMad(a,b,c)
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5176, float %5214)  ; FMad(a,b,c)
  %5216 = fadd fast float %5215, %5177
  %5217 = fmul fast float %5210, %5179
  %5218 = call float @dx.op.tertiary.f32(i32 46, float %5211, float %5180, float %5217)  ; FMad(a,b,c)
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5181, float %5218)  ; FMad(a,b,c)
  %5220 = fadd fast float %5219, %5182
  %5221 = fmul fast float %5210, %5184
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5211, float %5185, float %5221)  ; FMad(a,b,c)
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5186, float %5222)  ; FMad(a,b,c)
  %5224 = fadd fast float %5223, %5187
  %5225 = fdiv fast float %5216, %5224
  %5226 = fdiv fast float %5220, %5224
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5230 = fmul fast float %5228, %5225
  %5231 = fmul fast float %5229, %5226
  %5232 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5234 = fadd fast float %5230, %5232
  %5235 = fadd fast float %5231, %5233
  %5236 = fmul fast float %5188, 8.000000e+00
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5234, 2.000000e+00
  %5239 = fmul fast float %5235, 2.000000e+00
  %5240 = fadd fast float %5238, -1.000000e+00
  %5241 = fadd fast float %5239, -1.000000e+00
  %5242 = fmul fast float %5240, %5240
  %5243 = fsub fast float 1.000000e+00, %5242
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fmul fast float %5241, %5241
  %5246 = fsub fast float 1.000000e+00, %5245
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %4420, %5244
  %5249 = fmul fast float %5248, %5247
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = fmul fast float %5250, %5237
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float %5205)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = select i1 %184, float 0.000000e+00, float %5254
  %5257 = select i1 %184, float 0.000000e+00, float %5255
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5260 = fmul fast float %5259, %5253
  %5261 = fmul fast float %5256, %5259
  %5262 = fmul fast float %5257, %5259
  %5263 = fsub fast float %5260, %5152
  %5264 = fsub fast float %5261, %5153
  %5265 = fsub fast float %5262, %5154
  %5266 = fmul fast float %5263, %5251
  %5267 = fmul fast float %5264, %5251
  %5268 = fmul fast float %5265, %5251
  %5269 = fadd fast float %5266, %5152
  %5270 = fadd fast float %5267, %5153
  %5271 = fadd fast float %5268, %5154
  br label %5272

; <label>:5272                                    ; preds = %5172, %5144, %4669, %4298
  %5273 = phi float [ %4671, %4669 ], [ %5168, %5144 ], [ %4381, %4298 ], [ %5269, %5172 ]
  %5274 = phi float [ %4672, %4669 ], [ %5169, %5144 ], [ %4382, %4298 ], [ %5270, %5172 ]
  %5275 = phi float [ %4673, %4669 ], [ %5170, %5144 ], [ %4383, %4298 ], [ %5271, %5172 ]
  %5276 = fmul fast float %4399, %4377
  %5277 = fmul fast float %4399, %4378
  %5278 = fmul fast float %4399, %4379
  %5279 = fmul fast float %5273, %4394
  %5280 = fmul fast float %5274, %4395
  %5281 = fmul fast float %5275, %4396
  %5282 = fmul fast float %5276, %903
  %5283 = fmul fast float %5277, %903
  %5284 = fmul fast float %5278, %903
  %5285 = fadd fast float %5279, %3459
  %5286 = fmul fast float %5285, %903
  %5287 = fadd fast float %5280, %3460
  %5288 = fmul fast float %5287, %903
  %5289 = fadd fast float %5281, %3461
  %5290 = fmul fast float %5289, %903
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5293 = fcmp fast oeq float %5292, 0.000000e+00
  br i1 %5293, label %5443, label %5294

; <label>:5294                                    ; preds = %5272
  %5295 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = select i1 %184, float %5303, float %5299
  %5307 = select i1 %184, float %5305, float %5300
  %5308 = select i1 %184, float %5304, float %5301
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5311 = fcmp fast une float %5310, 0.000000e+00
  br i1 %5311, label %5312, label %5329

; <label>:5312                                    ; preds = %5294
  %5313 = fptoui float %81 to i32
  %5314 = fptoui float %82 to i32
  %5315 = lshr i32 %5313, 4
  %5316 = lshr i32 %5314, 4
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = fptoui float %5318 to i32
  %5320 = add i32 %5319, 15
  %5321 = lshr i32 %5320, 4
  %5322 = mul i32 %5321, %5316
  %5323 = add i32 %5322, %5315
  %5324 = shl i32 %5323, 3
  %5325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.i32 %5325, 0
  %5327 = and i32 %5326, -268435456
  %5328 = icmp eq i32 %5327, -1342177280
  br i1 %5328, label %5334, label %5329

; <label>:5329                                    ; preds = %5312, %5294
  %5330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  br label %5334

; <label>:5334                                    ; preds = %5329, %5312
  %5335 = phi float [ %5331, %5329 ], [ 0.000000e+00, %5312 ]
  %5336 = phi float [ %5332, %5329 ], [ 0.000000e+00, %5312 ]
  %5337 = phi float [ %5333, %5329 ], [ 0.000000e+00, %5312 ]
  %5338 = call float @dx.op.binary.f32(i32 36, float %5336, float %5337)  ; FMin(a,b)
  %5339 = call float @dx.op.binary.f32(i32 36, float %5335, float %5338)  ; FMin(a,b)
  %5340 = fcmp fast ogt float %5339, 0.000000e+00
  br i1 %5340, label %5341, label %5443, !dx.controlflow.hints !86

; <label>:5341                                    ; preds = %5334
  %5342 = fmul fast float %5335, %5306
  %5343 = fmul fast float %5336, %5307
  %5344 = fmul fast float %5337, %5308
  %5345 = fsub fast float %5295, %4095
  %5346 = fsub fast float %5296, %4094
  %5347 = fsub fast float %5297, %4093
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 25, float %5348)  ; Rsqrt(value)
  %5350 = fmul fast float %5349, %5345
  %5351 = fmul fast float %5349, %5346
  %5352 = fmul fast float %5349, %5347
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5295, float %5296, float %5297, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4091, float %4090, float %5350, float %5351, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5356 = fmul fast float %5355, %5355
  %5357 = fmul fast float %5356, %4149
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, %5355
  %5360 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %5350, float %5351, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fmul fast float %5360, %5360
  %5362 = call float @dx.op.unary.f32(i32 6, float %5353)  ; FAbs(value)
  %5363 = fsub fast float 1.000000e+00, %4142
  %5364 = fmul fast float %4124, %4124
  %5365 = fmul fast float %5364, %5363
  %5366 = fadd fast float %5365, %4142
  %5367 = bitcast float %5366 to i32
  %5368 = ashr i32 %5367, 1
  %5369 = add nsw i32 %5368, 532487669
  %5370 = bitcast i32 %5369 to float
  %5371 = fadd fast float %5370, %4124
  %5372 = fmul fast float %4142, %5361
  %5373 = fsub fast float 1.000000e+00, %5361
  %5374 = fadd fast float %5373, %5372
  %5375 = fmul fast float %5362, %5362
  %5376 = fmul fast float %5375, %5363
  %5377 = fadd fast float %5376, %4142
  %5378 = bitcast float %5377 to i32
  %5379 = ashr i32 %5378, 1
  %5380 = add nsw i32 %5379, 532487669
  %5381 = bitcast i32 %5380 to float
  %5382 = fadd fast float %5381, %5362
  %5383 = fmul fast float %5374, %5374
  %5384 = fmul fast float %5383, %5371
  %5385 = fmul fast float %5384, %5382
  %5386 = fdiv fast float 0x3FF0A00000000000, %5385
  %5387 = fmul fast float %5386, %4142
  %5388 = call float @dx.op.unary.f32(i32 6, float %5354)  ; FAbs(value)
  %5389 = fsub fast float 1.000000e+00, %5388
  %5390 = bitcast float %5389 to i32
  %5391 = sitofp i32 %5390 to float
  %5392 = fmul fast float %5391, 5.000000e+00
  %5393 = fadd fast float %5392, 0xC1EFBF8940000000
  %5394 = fptosi float %5393 to i32
  %5395 = bitcast i32 %5394 to float
  %5396 = fsub fast float 1.000000e+00, %4099
  %5397 = fsub fast float 1.000000e+00, %4100
  %5398 = fsub fast float 1.000000e+00, %4122
  %5399 = fmul fast float %5395, %5396
  %5400 = fmul fast float %5395, %5397
  %5401 = fmul fast float %5395, %5398
  %5402 = fadd fast float %5399, %4099
  %5403 = fadd fast float %5400, %4100
  %5404 = fadd fast float %5401, %4122
  %5405 = fmul fast float %5353, 9.843750e-01
  %5406 = fadd fast float %5405, 7.812500e-03
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5406, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 3
  %5410 = fmul fast float %5408, %4099
  %5411 = fmul fast float %5408, %4100
  %5412 = fmul fast float %5408, %4122
  %5413 = fadd fast float %5410, %5409
  %5414 = fadd fast float %5411, %5409
  %5415 = fadd fast float %5412, %5409
  %5416 = call float @dx.op.binary.f32(i32 35, float %5414, float %5415)  ; FMax(a,b)
  %5417 = call float @dx.op.binary.f32(i32 35, float %5413, float %5416)  ; FMax(a,b)
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = fmul fast float %5359, %5342
  %5420 = fmul fast float %5419, %5418
  %5421 = fmul fast float %5359, %5343
  %5422 = fmul fast float %5421, %5418
  %5423 = fmul fast float %5359, %5344
  %5424 = fmul fast float %5423, %5418
  %5425 = fmul fast float %5419, %5387
  %5426 = fmul fast float %5425, %5402
  %5427 = fmul fast float %5421, %5387
  %5428 = fmul fast float %5427, %5403
  %5429 = fmul fast float %5423, %5387
  %5430 = fmul fast float %5429, %5404
  %5431 = fadd fast float %5420, %5276
  %5432 = fmul fast float %5431, %903
  %5433 = fadd fast float %5422, %5277
  %5434 = fmul fast float %5433, %903
  %5435 = fadd fast float %5424, %5278
  %5436 = fmul fast float %5435, %903
  %5437 = fadd fast float %5426, %5285
  %5438 = fmul fast float %5437, %903
  %5439 = fadd fast float %5428, %5287
  %5440 = fmul fast float %5439, %903
  %5441 = fadd fast float %5430, %5289
  %5442 = fmul fast float %5441, %903
  br label %5443

; <label>:5443                                    ; preds = %5341, %5334, %5272
  %5444 = phi float [ %5286, %5272 ], [ %5286, %5334 ], [ %5438, %5341 ]
  %5445 = phi float [ %5288, %5272 ], [ %5288, %5334 ], [ %5440, %5341 ]
  %5446 = phi float [ %5290, %5272 ], [ %5290, %5334 ], [ %5442, %5341 ]
  %5447 = phi float [ %5282, %5272 ], [ %5282, %5334 ], [ %5432, %5341 ]
  %5448 = phi float [ %5283, %5272 ], [ %5283, %5334 ], [ %5434, %5341 ]
  %5449 = phi float [ %5284, %5272 ], [ %5284, %5334 ], [ %5436, %5341 ]
  %5450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.i32 %5450, 0
  %5452 = icmp eq i32 %5451, 0
  br i1 %5452, label %5814, label %5453

; <label>:5453                                    ; preds = %5443
  %5454 = fptoui float %81 to i32
  %5455 = fptoui float %82 to i32
  %5456 = lshr i32 %5454, 4
  %5457 = lshr i32 %5455, 4
  %5458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.i32 %5458, 0
  %5460 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5457, i32 %5459, i32 %5456)  ; UMad(a,b,c)
  %5461 = add nsw i32 %5451, -1
  %5462 = call i32 @dx.op.binary.i32(i32 37, i32 %5461, i32 0)  ; IMax(a,b)
  %5463 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %5464 = fptoui float %5463 to i32
  %5465 = lshr i32 %5464, 5
  %5466 = call i32 @dx.op.binary.i32(i32 40, i32 %5465, i32 8191)  ; UMin(a,b)
  %5467 = shl i32 %5466, 2
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = lshr i32 %5469, 16
  %5471 = and i32 %5469, 65535
  %5472 = lshr i32 %5469, 21
  %5473 = lshr i32 %5471, 5
  %5474 = call i32 @dx.op.binary.i32(i32 40, i32 %5473, i32 %5462)  ; UMin(a,b)
  %5475 = icmp ugt i32 %5472, %5474
  br i1 %5475, label %5814, label %5476

; <label>:5476                                    ; preds = %5453
  br label %5477

; <label>:5477                                    ; preds = %5804, %5476
  %5478 = phi i32 [ %5811, %5804 ], [ %5472, %5476 ]
  %5479 = phi float [ %5805, %5804 ], [ %5444, %5476 ]
  %5480 = phi float [ %5806, %5804 ], [ %5445, %5476 ]
  %5481 = phi float [ %5807, %5804 ], [ %5446, %5476 ]
  %5482 = phi float [ %5808, %5804 ], [ %5447, %5476 ]
  %5483 = phi float [ %5809, %5804 ], [ %5448, %5476 ]
  %5484 = phi float [ %5810, %5804 ], [ %5449, %5476 ]
  %5485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.i32 %5485, 0
  %5487 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5460, i32 %5486, i32 %5478)  ; UMad(a,b,c)
  %5488 = shl i32 %5487, 2
  %5489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.i32 %5489, 0
  %5491 = shl i32 %5478, 5
  %5492 = sub nsw i32 %5470, %5491
  %5493 = call i32 @dx.op.binary.i32(i32 37, i32 %5492, i32 0)  ; IMax(a,b)
  %5494 = call i32 @dx.op.binary.i32(i32 38, i32 %5493, i32 31)  ; IMin(a,b)
  %5495 = sub nsw i32 1, %5470
  %5496 = add nsw i32 %5495, %5471
  %5497 = call i32 @dx.op.binary.i32(i32 37, i32 %5496, i32 0)  ; IMax(a,b)
  %5498 = call i32 @dx.op.binary.i32(i32 38, i32 %5497, i32 32)  ; IMin(a,b)
  %5499 = and i32 %5498, 31
  %5500 = shl i32 -1, %5499
  %5501 = xor i32 %5500, -1
  %5502 = and i32 %5494, 31
  %5503 = shl i32 %5501, %5502
  %5504 = icmp eq i32 %5498, 32
  %5505 = select i1 %5504, i32 -1, i32 %5503
  %5506 = and i32 %5505, %5490
  %5507 = icmp eq i32 %5506, 0
  br i1 %5507, label %5804, label %5508

; <label>:5508                                    ; preds = %5477
  br label %5509

; <label>:5509                                    ; preds = %5589, %5508
  %5510 = phi i32 [ %5521, %5589 ], [ %5506, %5508 ]
  %5511 = phi float [ %5590, %5589 ], [ %5479, %5508 ]
  %5512 = phi float [ %5591, %5589 ], [ %5480, %5508 ]
  %5513 = phi float [ %5592, %5589 ], [ %5481, %5508 ]
  %5514 = phi float [ %5593, %5589 ], [ %5482, %5508 ]
  %5515 = phi float [ %5594, %5589 ], [ %5483, %5508 ]
  %5516 = phi float [ %5595, %5589 ], [ %5484, %5508 ]
  %5517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5510)  ; FirstbitLo(value)
  %5518 = add i32 %5517, %5491
  %5519 = and i32 %5517, 31
  %5520 = shl i32 1, %5519
  %5521 = xor i32 %5520, %5510
  %5522 = mul i32 %5518, 112
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = or i32 %5522, 12
  %5528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5527, i32 undef)  ; BufferLoad(srv,index,wot)
  %5529 = extractvalue %dx.types.ResRet.f32 %5528, 0
  %5530 = add i32 %5522, 44
  %5531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5530, i32 undef)  ; BufferLoad(srv,index,wot)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = add i32 %5522, 48
  %5534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = add i32 %5522, 80
  %5539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5538, i32 undef)  ; BufferLoad(srv,index,wot)
  %5540 = extractvalue %dx.types.ResRet.f32 %5539, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5539, 2
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = select i1 %184, float %5540, float %5524
  %5544 = select i1 %184, float %5542, float %5525
  %5545 = select i1 %184, float %5541, float %5526
  %5546 = fsub fast float %5535, %140
  %5547 = fsub fast float %5536, %141
  %5548 = fsub fast float %5537, %142
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5548, float %5546, float %5547, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = call float @dx.op.unary.f32(i32 24, float %5549)  ; Sqrt(value)
  %5551 = fdiv fast float 1.000000e+00, %5550
  %5552 = fmul fast float %5551, %5546
  %5553 = fmul fast float %5551, %5547
  %5554 = fmul fast float %5551, %5548
  %5555 = fadd fast float %5550, %5529
  %5556 = fdiv fast float 1.000000e+00, %5555
  %5557 = fmul float %5532, %5556
  %5558 = fmul float %5557, %5557
  %5559 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5560 = and i32 %5520, %5506
  %5561 = icmp eq i32 %5560, 0
  br i1 %5561, label %5584, label %5562, !dx.controlflow.hints !87

; <label>:5562                                    ; preds = %5509
  %5563 = lshr i32 %5454, 5
  %5564 = lshr i32 %5455, 5
  %5565 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %5563, i32 %5564, i32 %5518, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5566 = extractvalue %dx.types.ResRet.i32 %5565, 0
  %5567 = and i32 %5566, 3
  %5568 = icmp eq i32 %5567, 0
  %5569 = select i1 %5568, float 1.000000e+00, float 0.000000e+00
  %5570 = icmp eq i32 %5567, 3
  br i1 %5570, label %5571, label %5584

; <label>:5571                                    ; preds = %5562
  %5572 = lshr i32 %5566, 10
  %5573 = and i32 %5572, 8160
  %5574 = and i32 %5455, 31
  %5575 = or i32 %5573, %5574
  %5576 = lshr i32 %5566, 1
  %5577 = and i32 %5576, 16352
  %5578 = and i32 %5454, 31
  %5579 = or i32 %5577, %5578
  %5580 = lshr i32 %5566, 23
  %5581 = and i32 %5580, 255
  %5582 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5579, i32 %5575, i32 %5581, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5583 = extractvalue %dx.types.ResRet.f32 %5582, 0
  br label %5584

; <label>:5584                                    ; preds = %5571, %5562, %5509
  %5585 = phi float [ %5583, %5571 ], [ %5569, %5562 ], [ 0.000000e+00, %5509 ]
  %5586 = call float @dx.op.binary.f32(i32 36, float %5585, float %5585)  ; FMin(a,b)
  %5587 = call float @dx.op.binary.f32(i32 36, float %5585, float %5586)  ; FMin(a,b)
  %5588 = fcmp fast ogt float %5587, 0.000000e+00
  br i1 %5588, label %5597, label %5589, !dx.controlflow.hints !88

; <label>:5589                                    ; preds = %5658, %5584
  %5590 = phi float [ %5511, %5584 ], [ %5800, %5658 ]
  %5591 = phi float [ %5512, %5584 ], [ %5801, %5658 ]
  %5592 = phi float [ %5513, %5584 ], [ %5802, %5658 ]
  %5593 = phi float [ %5514, %5584 ], [ %5791, %5658 ]
  %5594 = phi float [ %5515, %5584 ], [ %5792, %5658 ]
  %5595 = phi float [ %5516, %5584 ], [ %5793, %5658 ]
  %5596 = icmp eq i32 %5510, %5520
  br i1 %5596, label %5803, label %5509

; <label>:5597                                    ; preds = %5584
  %5598 = fmul fast float %5585, %5543
  %5599 = fmul fast float %5585, %5544
  %5600 = fmul fast float %5585, %5545
  %5601 = fsub fast float %5537, %3895
  %5602 = fcmp fast ogt float %5601, 0.000000e+00
  %5603 = fsub fast float %142, %3895
  %5604 = fcmp fast ogt float %5603, 0.000000e+00
  %5605 = xor i1 %5604, %5602
  %5606 = fsub fast float %3895, %5537
  %5607 = fmul fast float %5606, 2.000000e+00
  %5608 = fadd fast float %5607, %5537
  %5609 = select i1 %5605, float %5537, float %5608
  %5610 = fsub fast float %5609, %142
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5610, float %5546, float %5547, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 25, float %5611)  ; Rsqrt(value)
  %5613 = fmul fast float %5612, %5546
  %5614 = fmul fast float %5612, %5547
  %5615 = fmul fast float %5612, %5610
  %5616 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fdiv fast float 1.000000e+00, %5617
  %5619 = fmul fast float %5618, %5616
  %5620 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5603, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = fcmp fast ogt float %5620, 0.000000e+00
  %5622 = fcmp fast olt float %5620, 0.000000e+00
  %5623 = zext i1 %5621 to i32
  %5624 = zext i1 %5622 to i32
  %5625 = sub nsw i32 %5623, %5624
  %5626 = sitofp i32 %5625 to float
  %5627 = fsub fast float %5609, %3895
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5627, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fcmp fast ogt float %5628, 0.000000e+00
  %5630 = fcmp fast olt float %5628, 0.000000e+00
  %5631 = zext i1 %5629 to i32
  %5632 = zext i1 %5630 to i32
  %5633 = sub nsw i32 %5631, %5632
  %5634 = sitofp i32 %5633 to float
  %5635 = fcmp fast une float %5626, %5634
  br i1 %5635, label %5636, label %5646

; <label>:5636                                    ; preds = %5597
  %5637 = fmul fast float %5619, %5615
  %5638 = fmul fast float %5619, %5614
  %5639 = fmul fast float %5619, %5613
  %5640 = fmul fast float %5639, %5639
  %5641 = fmul fast float %5638, %5638
  %5642 = fadd fast float %5640, %5641
  %5643 = fmul fast float %5637, %5637
  %5644 = fadd fast float %5642, %5643
  %5645 = call float @dx.op.unary.f32(i32 24, float %5644)  ; Sqrt(value)
  br label %5658

; <label>:5646                                    ; preds = %5597
  %5647 = icmp slt i32 %5625, 0
  br i1 %5647, label %5648, label %5658

; <label>:5648                                    ; preds = %5646
  %5649 = fsub fast float %140, %5535
  %5650 = fsub fast float %141, %5536
  %5651 = fsub fast float %142, %5609
  %5652 = fmul fast float %5649, %5649
  %5653 = fmul fast float %5650, %5650
  %5654 = fadd fast float %5652, %5653
  %5655 = fmul fast float %5651, %5651
  %5656 = fadd fast float %5654, %5655
  %5657 = call float @dx.op.unary.f32(i32 24, float %5656)  ; Sqrt(value)
  br label %5658

; <label>:5658                                    ; preds = %5648, %5646, %5636
  %5659 = phi float [ %5645, %5636 ], [ %5657, %5648 ], [ 0.000000e+00, %5646 ]
  %5660 = and i1 %5604, %5602
  %5661 = fsub fast float -0.000000e+00, %5659
  %5662 = select i1 %5660, float -0.000000e+00, float %5661
  %5663 = fmul fast float %3896, 0x3FF7154760000000
  %5664 = fmul fast float %5663, %5662
  %5665 = fmul fast float %3897, 0x3FF7154760000000
  %5666 = fmul fast float %5665, %5662
  %5667 = fmul fast float %3898, 0x3FF7154760000000
  %5668 = fmul fast float %5667, %5662
  %5669 = call float @dx.op.unary.f32(i32 21, float %5664)  ; Exp(value)
  %5670 = call float @dx.op.unary.f32(i32 21, float %5666)  ; Exp(value)
  %5671 = call float @dx.op.unary.f32(i32 21, float %5668)  ; Exp(value)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5673 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = fmul fast float %5598, %5672
  %5676 = fmul fast float %5599, %5673
  %5677 = fmul fast float %5600, %5674
  %5678 = fsub fast float %5552, %4095
  %5679 = fsub fast float %5553, %4094
  %5680 = fsub fast float %5554, %4093
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.unary.f32(i32 25, float %5681)  ; Rsqrt(value)
  %5683 = fmul fast float %5682, %5678
  %5684 = fmul fast float %5682, %5679
  %5685 = fmul fast float %5682, %5680
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4091, float %4090, float %5683, float %5684, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5689 = fmul fast float %5688, %5559
  %5690 = fmul fast float %5688, %5688
  %5691 = fmul fast float %5690, %4149
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5689, %5692
  %5694 = bitcast float %5549 to i32
  %5695 = ashr i32 %5694, 1
  %5696 = sub nsw i32 1597463007, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5697, %5546
  %5699 = fmul fast float %5697, %5547
  %5700 = fmul fast float %5697, %5548
  %5701 = fsub fast float %5698, %4095
  %5702 = fsub fast float %5699, %4094
  %5703 = fsub fast float %5700, %4093
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.unary.f32(i32 25, float %5704)  ; Rsqrt(value)
  %5706 = fmul fast float %5701, %5705
  %5707 = fmul fast float %5702, %5705
  %5708 = fmul fast float %5703, %5705
  %5709 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %5706, float %5707, float %5708)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = fmul fast float %5709, %5709
  %5711 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5712 = fsub fast float 1.000000e+00, %4142
  %5713 = fmul fast float %4124, %4124
  %5714 = fmul fast float %5713, %5712
  %5715 = fadd fast float %5714, %4142
  %5716 = bitcast float %5715 to i32
  %5717 = ashr i32 %5716, 1
  %5718 = add nsw i32 %5717, 532487669
  %5719 = bitcast i32 %5718 to float
  %5720 = fadd fast float %5719, %4124
  %5721 = fmul fast float %4142, %5710
  %5722 = fsub fast float 1.000000e+00, %5710
  %5723 = fadd fast float %5722, %5721
  %5724 = fmul fast float %5711, %5711
  %5725 = fmul fast float %5724, %5712
  %5726 = fadd fast float %5725, %4142
  %5727 = bitcast float %5726 to i32
  %5728 = ashr i32 %5727, 1
  %5729 = add nsw i32 %5728, 532487669
  %5730 = bitcast i32 %5729 to float
  %5731 = fadd fast float %5730, %5711
  %5732 = fmul fast float %5723, %5723
  %5733 = fmul fast float %5732, %5720
  %5734 = fmul fast float %5733, %5731
  %5735 = fdiv fast float 1.000000e+00, %5734
  %5736 = bitcast float %4142 to i32
  %5737 = sitofp i32 %5736 to float
  %5738 = fmul fast float %5737, 0x3FE7F73180000000
  %5739 = fadd fast float %5738, 0x41AFE27C40000000
  %5740 = fptosi float %5739 to i32
  %5741 = bitcast i32 %5740 to float
  %5742 = fmul fast float %5532, 0x3FD80E9D60000000
  %5743 = fmul fast float %5742, %5697
  %5744 = fadd fast float %5741, %5743
  %5745 = bitcast float %5744 to i32
  %5746 = sub nsw i32 2129859010, %5745
  %5747 = bitcast i32 %5746 to float
  %5748 = fmul fast float %4142, %5735
  %5749 = fmul fast float %5748, %5741
  %5750 = fmul fast float %5749, %5747
  %5751 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = bitcast float %5752 to i32
  %5754 = sitofp i32 %5753 to float
  %5755 = fmul fast float %5754, 5.000000e+00
  %5756 = fadd fast float %5755, 0xC1EFBF8940000000
  %5757 = fptosi float %5756 to i32
  %5758 = bitcast i32 %5757 to float
  %5759 = fsub fast float 1.000000e+00, %4099
  %5760 = fsub fast float 1.000000e+00, %4100
  %5761 = fsub fast float 1.000000e+00, %4122
  %5762 = fmul fast float %5758, %5759
  %5763 = fmul fast float %5758, %5760
  %5764 = fmul fast float %5758, %5761
  %5765 = fadd fast float %5762, %4099
  %5766 = fadd fast float %5763, %4100
  %5767 = fadd fast float %5764, %4122
  %5768 = fmul fast float %5686, 9.843750e-01
  %5769 = fadd fast float %5768, 7.812500e-03
  %5770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5769, float %4387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 3
  %5773 = fmul fast float %5771, %4099
  %5774 = fmul fast float %5771, %4100
  %5775 = fmul fast float %5771, %4122
  %5776 = fadd fast float %5773, %5772
  %5777 = fadd fast float %5774, %5772
  %5778 = fadd fast float %5775, %5772
  %5779 = call float @dx.op.binary.f32(i32 35, float %5777, float %5778)  ; FMax(a,b)
  %5780 = call float @dx.op.binary.f32(i32 35, float %5776, float %5779)  ; FMax(a,b)
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = fmul fast float %5675, %903
  %5783 = fmul fast float %5782, %5693
  %5784 = fmul fast float %5783, %5781
  %5785 = fmul fast float %5676, %903
  %5786 = fmul fast float %5785, %5693
  %5787 = fmul fast float %5786, %5781
  %5788 = fmul fast float %5677, %903
  %5789 = fmul fast float %5788, %5693
  %5790 = fmul fast float %5789, %5781
  %5791 = fadd fast float %5784, %5514
  %5792 = fadd fast float %5787, %5515
  %5793 = fadd fast float %5790, %5516
  %5794 = fmul fast float %5783, %5765
  %5795 = fmul fast float %5794, %5750
  %5796 = fmul fast float %5786, %5766
  %5797 = fmul fast float %5796, %5750
  %5798 = fmul fast float %5789, %5767
  %5799 = fmul fast float %5798, %5750
  %5800 = fadd fast float %5795, %5511
  %5801 = fadd fast float %5797, %5512
  %5802 = fadd fast float %5799, %5513
  br label %5589

; <label>:5803                                    ; preds = %5589
  br label %5804

; <label>:5804                                    ; preds = %5803, %5477
  %5805 = phi float [ %5479, %5477 ], [ %5590, %5803 ]
  %5806 = phi float [ %5480, %5477 ], [ %5591, %5803 ]
  %5807 = phi float [ %5481, %5477 ], [ %5592, %5803 ]
  %5808 = phi float [ %5482, %5477 ], [ %5593, %5803 ]
  %5809 = phi float [ %5483, %5477 ], [ %5594, %5803 ]
  %5810 = phi float [ %5484, %5477 ], [ %5595, %5803 ]
  %5811 = add i32 %5478, 1
  %5812 = icmp ugt i32 %5811, %5474
  br i1 %5812, label %5813, label %5477

; <label>:5813                                    ; preds = %5804
  br label %5814

; <label>:5814                                    ; preds = %5813, %5453, %5443
  %5815 = phi float [ %5444, %5443 ], [ %5444, %5453 ], [ %5805, %5813 ]
  %5816 = phi float [ %5445, %5443 ], [ %5445, %5453 ], [ %5806, %5813 ]
  %5817 = phi float [ %5446, %5443 ], [ %5446, %5453 ], [ %5807, %5813 ]
  %5818 = phi float [ %5447, %5443 ], [ %5447, %5453 ], [ %5808, %5813 ]
  %5819 = phi float [ %5448, %5443 ], [ %5448, %5453 ], [ %5809, %5813 ]
  %5820 = phi float [ %5449, %5443 ], [ %5449, %5453 ], [ %5810, %5813 ]
  %5821 = call float @dx.op.unary.f32(i32 24, float %4096)  ; Sqrt(value)
  %5822 = call float @dx.op.unary.f32(i32 24, float %4097)  ; Sqrt(value)
  %5823 = call float @dx.op.unary.f32(i32 24, float %4098)  ; Sqrt(value)
  %5824 = fmul fast float %5821, %5818
  %5825 = fmul fast float %5822, %5819
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  br i1 %184, label %5828, label %5852

; <label>:5828                                    ; preds = %5814
  %5829 = fadd fast float %5820, %3470
  %5830 = fmul fast float %5829, %3468
  %5831 = fsub fast float 1.000000e+00, %3468
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 3
  %5835 = fmul fast float %5834, %5832
  %5836 = fsub fast float 1.000000e+00, %4124
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = fmul fast float %5838, %5836
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5841 = fmul fast float %5840, %4120
  %5842 = fadd fast float %5825, %5824
  %5843 = fmul fast float %5827, %5842
  %5844 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5845 = fadd fast float %5835, %5830
  %5846 = fsub fast float %5845, %5839
  %5847 = fadd fast float %5846, %5841
  %5848 = fsub fast float %5847, %5844
  %5849 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5850 = fmul fast float %5848, %5849
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  br label %5868

; <label>:5852                                    ; preds = %5814
  %5853 = fmul fast float %5823, %5820
  %5854 = fmul fast float %5827, %5824
  %5855 = fmul fast float %5827, %5825
  %5856 = fmul fast float %5853, %5827
  %5857 = add i32 %42, 356
  %5858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5857, i32 undef)  ; BufferLoad(srv,index,wot)
  %5859 = extractvalue %dx.types.ResRet.i32 %5858, 0
  %5860 = and i32 %5859, 32
  %5861 = icmp eq i32 %5860, 0
  br i1 %5861, label %5868, label %5862

; <label>:5862                                    ; preds = %5852
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = fmul fast float %5864, 0x3FE99999A0000000
  %5866 = fadd fast float %5864, %5854
  %5867 = fadd fast float %5865, %5856
  br label %5868

; <label>:5868                                    ; preds = %5862, %5852, %5828
  %5869 = phi float [ %5843, %5828 ], [ %5866, %5862 ], [ %5854, %5852 ]
  %5870 = phi float [ %5851, %5828 ], [ %5855, %5862 ], [ %5855, %5852 ]
  %5871 = phi float [ 1.000000e+00, %5828 ], [ %5867, %5862 ], [ %5856, %5852 ]
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = fmul fast float %5873, %5816
  %5875 = fmul fast float %5873, %5817
  %5876 = fadd fast float %5816, %5815
  %5877 = select i1 %184, float %5876, float %5815
  %5878 = fmul float %5877, %5873
  %5879 = select i1 %184, float 0.000000e+00, float %5874
  %5880 = select i1 %184, float 0.000000e+00, float %5875
  %5881 = fmul fast float %5869, %5821
  %5882 = fmul fast float %5870, %5822
  %5883 = fmul fast float %5871, %5823
  %5884 = fadd fast float %5878, %5881
  %5885 = fadd fast float %5879, %5882
  %5886 = fadd fast float %5880, %5883
  %5887 = select i1 %184, float %5870, float %5885
  %5888 = select i1 %184, float %5871, float %5886
  %5889 = call float @dx.op.binary.f32(i32 36, float %5884, float 3.225500e+04)  ; FMin(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5887, float 3.225500e+04)  ; FMin(a,b)
  %5891 = call float @dx.op.binary.f32(i32 36, float %5888, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5889)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5890)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5891)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

