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
; shader hash: ce33a6520c4c0196194cfe6dffade78c
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     u32     2darray      T6     t11,space2     1
;                                   texture     f32     2darray      T7     t10,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t49,space1     1
;                                   texture    byte         r/o     T10     t50,space1     1
;                                   texture    byte         r/o     T11     t51,space1     1
;                                   texture    byte         r/o     T12     t52,space1     1
;                                   texture    byte         r/o     T13     t16,space1     1
;                                   texture    byte         r/o     T14     t17,space1     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26     t68,space1     1
;                                   texture     f32          2d     T27      t0,space2     1
;                                   texture    byte         r/o     T28     t11,space1     1
;                                   texture    byte         r/o     T29     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = icmp ne i32 %33, 0
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %77 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = bitcast float %77 to i32
  %79 = ashr i32 %78, 1
  %80 = sub nsw i32 1597250115, %79
  %81 = bitcast i32 %80 to float
  %82 = fmul fast float %59, %76
  %83 = fmul fast float %82, %81
  %84 = fmul fast float %60, %76
  %85 = fmul fast float %84, %81
  %86 = fmul fast float %61, %76
  %87 = fmul fast float %86, %81
  %88 = fmul fast float %60, %57
  %89 = fmul fast float %61, %56
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %61, %55
  %92 = fmul fast float %59, %57
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %59, %56
  %95 = fmul fast float %60, %55
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %58
  %98 = fmul fast float %93, %58
  %99 = fmul fast float %96, %58
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %74, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %75, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %69
  %134 = fmul fast float %130, %69
  %135 = fmul fast float %132, %69
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %74
  %140 = fmul fast float %138, %75
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = select i1 %144, i32 %150, i32 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %171

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %162 = fmul fast float %161, %75
  %163 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %164 = fmul fast float %163, %74
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %164, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fcmp fast olt float %167, %169
  br label %174

; <label>:171                                     ; preds = %0
  %172 = icmp eq i32 %157, 0
  %173 = and i1 %156, %172
  br label %174

; <label>:174                                     ; preds = %171, %160
  %175 = phi i1 [ %170, %160 ], [ %173, %171 ]
  %176 = add i32 %35, 156
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = shl i32 %178, 4
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %178, 7
  %183 = and i32 %182, 32752
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = lshr i32 %178, 22
  %186 = shl nuw nsw i32 %185, 5
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = add i32 %35, 216
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %190, 8
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = lshr i32 %190, 16
  %199 = and i32 %198, 255
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F70101020000000
  %202 = add i32 %35, 36
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 65535
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %204, 16
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %35, 288
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = fmul fast float %213, 0x3F50624DE0000000
  %217 = fmul fast float %215, 0x3F50624DE0000000
  %218 = add i32 %35, 172
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = add i32 %35, 232
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %232, 8
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %232, 16
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = add i32 %35, 52
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %35, 304
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = add i32 %35, 188
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %35, 248
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %35, 68
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %35, 320
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %35, 204
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = shl i32 %304, 4
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %304, 7
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %304, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %35, 264
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %35, 84
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %35, 336
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %339, 0x3F50624DE0000000
  %343 = fmul fast float %341, 0x3F50624DE0000000
  %344 = add i32 %35, 348
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 32
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %346, 64
  %350 = icmp eq i32 %349, 0
  %351 = and i32 %346, 128
  %352 = icmp eq i32 %351, 0
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %370, label %357

; <label>:357                                     ; preds = %174
  %358 = add i32 %35, 488
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %360, 0
  %362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %362, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = fmul fast float %364, %64
  %368 = fmul fast float %365, %65
  %369 = fmul fast float %366, %66
  br label %370

; <label>:370                                     ; preds = %357, %174
  %371 = phi float [ %66, %174 ], [ %369, %357 ]
  %372 = phi float [ %65, %174 ], [ %368, %357 ]
  %373 = phi float [ %64, %174 ], [ %367, %357 ]
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 2
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %397, label %378

; <label>:378                                     ; preds = %370
  %379 = add i32 %35, 44
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %373, float 1.000000e+00
  %385 = add i32 %35, 60
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 1
  %389 = icmp ne i32 %388, 0
  %390 = select i1 %389, float %372, float 1.000000e+00
  %391 = add i32 %35, 76
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 1
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %371, float 1.000000e+00
  br label %397

; <label>:397                                     ; preds = %378, %370
  %398 = phi float [ %371, %370 ], [ %396, %378 ]
  %399 = phi float [ %372, %370 ], [ %390, %378 ]
  %400 = phi float [ %373, %370 ], [ %384, %378 ]
  %401 = lshr i32 %375, 20
  %402 = and i32 %401, 3
  %403 = add nuw nsw i32 %402, 1
  %404 = add i32 %35, 24
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = add i32 %35, 28
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = or i32 %409, %406
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %870, label %412

; <label>:412                                     ; preds = %397
  %413 = and i32 %406, 262144
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %37, float 1.000000e+00
  %416 = select i1 %414, float %38, float 0.000000e+00
  %417 = select i1 %414, float %39, float 0.000000e+00
  %418 = select i1 %414, float %40, float 1.000000e+00
  %419 = select i1 %414, float %41, float %62
  %420 = select i1 %414, float %42, float %63
  %421 = add i32 %35, 284
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = fmul fast float %425, 0x3F50624DE0000000
  %427 = add i32 %35, 88
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = lshr i32 %429, 24
  %433 = add i32 %35, 292
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %35, 32
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 22
  %444 = shl nuw nsw i32 %443, 5
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = shl i32 %442, 4
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %442, 7
  %450 = and i32 %449, 32752
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = fmul fast float %453, 1.000000e+03
  %455 = fmul fast float %216, %454
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fadd fast float %456, %206
  %458 = fmul fast float %217, %454
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fadd fast float %459, %208
  %461 = fmul fast float %426, %454
  %462 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %463 = fmul fast float %462, 0x401921FB60000000
  %464 = fadd fast float %463, %445
  %465 = call float @dx.op.unary.f32(i32 13, float %464)  ; Sin(value)
  %466 = call float @dx.op.unary.f32(i32 12, float %464)  ; Cos(value)
  %467 = fsub fast float -0.000000e+00, %465
  %468 = fadd fast float %419, -5.000000e-01
  %469 = fadd fast float %420, -5.000000e-01
  %470 = fmul fast float %437, %468
  %471 = fmul fast float %439, %469
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fmul fast float %448, %472
  %475 = fmul fast float %451, %473
  %476 = fmul fast float %466, %474
  %477 = call float @dx.op.tertiary.f32(i32 46, float %467, float %475, float %476)  ; FMad(a,b,c)
  %478 = fmul fast float %465, %474
  %479 = call float @dx.op.tertiary.f32(i32 46, float %466, float %475, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %457, %477
  %481 = fadd fast float %460, %479
  %482 = icmp ugt i32 %431, 1
  %483 = icmp ugt i32 %429, 33554431
  %484 = or i1 %483, %482
  br i1 %484, label %485, label %510

; <label>:485                                     ; preds = %412
  %486 = add i32 %35, 228
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = fmul fast float %453, %490
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = mul nuw nsw i32 %431, %432
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %492, %494
  %496 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %497 = fptoui float %496 to i32
  %498 = urem i32 %497, %431
  %499 = udiv i32 %497, %432
  %500 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %502 = uitofp i32 %498 to float
  %503 = uitofp i32 %499 to float
  %504 = fadd fast float %500, %502
  %505 = fadd fast float %501, %503
  %506 = uitofp i32 %431 to float
  %507 = uitofp i32 %432 to float
  %508 = fdiv fast float %504, %506
  %509 = fdiv fast float %505, %507
  br label %510

; <label>:510                                     ; preds = %485, %412
  %511 = phi float [ %508, %485 ], [ %480, %412 ]
  %512 = phi float [ %509, %485 ], [ %481, %412 ]
  %513 = and i32 %406, 16
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %711, label %515

; <label>:515                                     ; preds = %510
  %516 = add i32 %35, 360
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %520, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = and i32 %429, 255
  %527 = uitofp i32 %526 to float
  %528 = lshr i32 %429, 8
  %529 = and i32 %528, 255
  %530 = uitofp i32 %529 to float
  %531 = fmul fast float %525, %527
  %532 = fadd fast float %531, %530
  %533 = fmul fast float %532, 0x3F70101000000000
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 512
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %546, label %538

; <label>:538                                     ; preds = %515
  %539 = add i32 %35, 440
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %71, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  br label %546

; <label>:546                                     ; preds = %538, %515
  %547 = phi float [ %545, %538 ], [ 1.000000e+00, %515 ]
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 33554432
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %658, label %552

; <label>:552                                     ; preds = %546
  %553 = add i32 %35, 224
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %35, 228
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 24
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = and i32 %566, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %566, 8
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %566, 16
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = add i32 %35, 220
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = lshr i32 %583, 24
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = and i32 %583, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %583, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %583, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = bitcast float %522 to i32
  %599 = ashr i32 %598, 1
  %600 = sub nsw i32 1597463174, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %522, 5.000000e-01
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %603, %602
  %605 = fsub fast float 1.500000e+00, %604
  %606 = fmul fast float %601, %522
  %607 = fmul fast float %606, %605
  %608 = bitcast float %523 to i32
  %609 = ashr i32 %608, 1
  %610 = sub nsw i32 1597463174, %609
  %611 = bitcast i32 %610 to float
  %612 = fmul fast float %523, 5.000000e-01
  %613 = fmul fast float %611, %611
  %614 = fmul fast float %613, %612
  %615 = fsub fast float 1.500000e+00, %614
  %616 = fmul fast float %611, %523
  %617 = fmul fast float %616, %615
  %618 = bitcast float %524 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %524, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %524
  %627 = fmul fast float %626, %625
  %628 = fsub fast float %607, %589
  %629 = fsub fast float %617, %593
  %630 = fsub fast float %627, %597
  %631 = fmul fast float %628, %557
  %632 = fmul fast float %629, %559
  %633 = fmul fast float %630, %564
  %634 = fadd fast float %631, %572
  %635 = fadd fast float %632, %576
  %636 = fadd fast float %633, %580
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = fmul fast float %637, %637
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fsub fast float %640, %522
  %644 = fsub fast float %641, %523
  %645 = fsub fast float %642, %524
  %646 = fmul fast float %643, %547
  %647 = fmul fast float %644, %547
  %648 = fmul fast float %645, %547
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %569, %533
  %653 = fsub fast float %652, %586
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fsub fast float %654, %533
  %656 = fmul fast float %655, %547
  %657 = fadd fast float %656, %533
  br label %711

; <label>:658                                     ; preds = %546
  %659 = and i32 %549, 134217728
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %695, label %661

; <label>:661                                     ; preds = %658
  %662 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fmul fast float %665, %547
  %669 = fmul fast float %666, %547
  %670 = fmul fast float %667, %547
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = fmul fast float %671, 2.000000e+00
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fmul fast float %678, %674
  %680 = fadd fast float %679, %677
  %681 = fmul fast float %680, %674
  %682 = fmul fast float %672, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %675
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %675
  %687 = fmul fast float %673, 2.000000e+00
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %676
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, %676
  %692 = fmul fast float %681, %681
  %693 = fmul fast float %686, %686
  %694 = fmul fast float %691, %691
  br label %711

; <label>:695                                     ; preds = %658
  %696 = fmul fast float %193, %193
  %697 = fmul fast float %197, %197
  %698 = fmul fast float %201, %201
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fmul fast float %547, %699
  %703 = fmul fast float %547, %700
  %704 = fmul fast float %547, %701
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fmul fast float %705, %522
  %709 = fmul fast float %706, %523
  %710 = fmul fast float %707, %524
  br label %711

; <label>:711                                     ; preds = %695, %661, %552, %510
  %712 = phi float [ %657, %552 ], [ %533, %661 ], [ %533, %695 ], [ 0x3FA23C0BE0000000, %510 ]
  %713 = phi float [ %649, %552 ], [ %692, %661 ], [ %708, %695 ], [ 1.000000e+00, %510 ]
  %714 = phi float [ %650, %552 ], [ %693, %661 ], [ %709, %695 ], [ 1.000000e+00, %510 ]
  %715 = phi float [ %651, %552 ], [ %694, %661 ], [ %710, %695 ], [ 1.000000e+00, %510 ]
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = and i32 %717, 1
  %719 = icmp ne i32 %718, 0
  %720 = add i32 %35, 356
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 32
  %724 = icmp ne i32 %723, 0
  %725 = and i1 %719, %724
  %726 = select i1 %725, float 1.000000e+00, float %713
  %727 = select i1 %725, float 0x3FD3333340000000, float %714
  %728 = select i1 %725, float 0x3FD3333340000000, float %715
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 32
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %805, label %733

; <label>:733                                     ; preds = %711
  %734 = add i32 %35, 92
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %35, 376
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = and i32 %736, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %736, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = lshr i32 %736, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = fmul fast float %743, %748
  %757 = fadd fast float %756, %751
  %758 = fmul fast float %757, 0x3F70101000000000
  %759 = fadd fast float %744, -5.000000e-01
  %760 = fadd fast float %746, -5.000000e-01
  %761 = fmul fast float %759, %755
  %762 = fmul fast float %760, %755
  %763 = fadd fast float %761, 5.000000e-01
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fmul fast float %763, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fmul fast float %764, 2.000000e+00
  %768 = fadd fast float %767, -1.000000e+00
  %769 = fadd fast float %766, %768
  %770 = fmul fast float %769, 5.000000e-01
  %771 = fsub fast float %766, %768
  %772 = fmul fast float %771, 5.000000e-01
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float 1.000000e+00, %773
  %775 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %776 = fsub fast float %774, %775
  %777 = call float @dx.op.dot3.f32(i32 55, float %770, float %772, float %776, float %770, float %772, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %770, %778
  %780 = fmul fast float %772, %778
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 67108864
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %801, label %785

; <label>:785                                     ; preds = %733
  %786 = add i32 %35, 280
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 65535
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = lshr i32 %788, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fsub fast float %758, %796
  %798 = fmul fast float %797, %790
  %799 = fadd fast float %798, %794
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  br label %801

; <label>:801                                     ; preds = %785, %733
  %802 = phi float [ %800, %785 ], [ %758, %733 ]
  %803 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  %804 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %417, float %418)  ; Dot2(ax,ay,bx,by)
  br label %805

; <label>:805                                     ; preds = %801, %711
  %806 = phi float [ %802, %801 ], [ 0x3FD6666660000000, %711 ]
  %807 = phi float [ %803, %801 ], [ 0.000000e+00, %711 ]
  %808 = phi float [ %804, %801 ], [ 0.000000e+00, %711 ]
  %809 = phi float [ %745, %801 ], [ 1.000000e+00, %711 ]
  %810 = add i32 %35, 160
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 22
  %814 = shl nuw nsw i32 %813, 5
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 64
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %853, label %820

; <label>:820                                     ; preds = %805
  %821 = add i32 %35, 392
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 131072
  %829 = icmp eq i32 %828, 0
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = fmul fast float %831, %181
  %835 = fmul fast float %832, %184
  %836 = fmul fast float %833, %187
  br i1 %829, label %843, label %837

; <label>:837                                     ; preds = %820
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = fmul fast float %839, %834
  %841 = fmul fast float %839, %835
  %842 = fmul fast float %839, %836
  br label %843

; <label>:843                                     ; preds = %837, %820
  %844 = phi float [ %840, %837 ], [ %834, %820 ]
  %845 = phi float [ %841, %837 ], [ %835, %820 ]
  %846 = phi float [ %842, %837 ], [ %836, %820 ]
  %847 = fmul fast float %844, %815
  %848 = select i1 %175, float %847, float %844
  %849 = call float @dx.op.dot3.f32(i32 55, float %848, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = select i1 %175, float 0.000000e+00, float %844
  %851 = select i1 %175, float %849, float %845
  %852 = select i1 %175, float 0.000000e+00, float %846
  br label %853

; <label>:853                                     ; preds = %843, %805
  %854 = phi float [ %850, %843 ], [ 0.000000e+00, %805 ]
  %855 = phi float [ %851, %843 ], [ 0.000000e+00, %805 ]
  %856 = phi float [ %852, %843 ], [ 0.000000e+00, %805 ]
  %857 = add i32 %35, 96
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = lshr i32 %859, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %866 = fmul fast float %864, %865
  %867 = fadd fast float %866, %861
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  br label %870

; <label>:870                                     ; preds = %853, %397
  %871 = phi float [ 0.000000e+00, %397 ], [ %807, %853 ]
  %872 = phi float [ 0.000000e+00, %397 ], [ %808, %853 ]
  %873 = phi float [ 0.000000e+00, %397 ], [ %726, %853 ]
  %874 = phi float [ 0.000000e+00, %397 ], [ %727, %853 ]
  %875 = phi float [ 0.000000e+00, %397 ], [ %728, %853 ]
  %876 = phi float [ 0.000000e+00, %397 ], [ %854, %853 ]
  %877 = phi float [ 0.000000e+00, %397 ], [ %855, %853 ]
  %878 = phi float [ 0.000000e+00, %397 ], [ %856, %853 ]
  %879 = phi float [ 0.000000e+00, %397 ], [ %712, %853 ]
  %880 = phi float [ 0.000000e+00, %397 ], [ 1.000000e+00, %853 ]
  %881 = phi float [ 0.000000e+00, %397 ], [ %806, %853 ]
  %882 = phi float [ 0.000000e+00, %397 ], [ %809, %853 ]
  %883 = phi float [ 0.000000e+00, %397 ], [ %869, %853 ]
  br i1 %348, label %1836, label %884

; <label>:884                                     ; preds = %870
  %885 = icmp ult i32 %403, 2
  %886 = add i32 %35, 40
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %35, 44
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = or i32 %891, %888
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %1836, label %894

; <label>:894                                     ; preds = %884
  %895 = and i32 %888, 262144
  %896 = icmp ne i32 %895, 0
  %897 = select i1 %896, float %37, float 1.000000e+00
  %898 = select i1 %896, float %38, float 0.000000e+00
  %899 = select i1 %896, float %39, float 0.000000e+00
  %900 = select i1 %896, float %40, float 1.000000e+00
  %901 = select i1 %896, float %41, float %62
  %902 = select i1 %896, float %42, float %63
  %903 = add i32 %35, 300
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = lshr i32 %905, 16
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = fmul fast float %907, 0x3F50624DE0000000
  %909 = add i32 %35, 104
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = lshr i32 %911, 16
  %913 = and i32 %912, 255
  %914 = lshr i32 %911, 24
  %915 = add i32 %35, 308
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 65535
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %917, 16
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = add i32 %35, 48
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 22
  %926 = shl nuw nsw i32 %925, 5
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = shl i32 %924, 4
  %929 = and i32 %928, 32752
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = lshr i32 %924, 7
  %932 = and i32 %931, 32752
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %936 = fmul fast float %935, 1.000000e+03
  %937 = fmul fast float %258, %936
  %938 = call float @dx.op.unary.f32(i32 22, float %937)  ; Frc(value)
  %939 = fadd fast float %938, %248
  %940 = fmul fast float %259, %936
  %941 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %942 = fadd fast float %941, %250
  %943 = fmul fast float %908, %936
  %944 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %945 = fmul fast float %944, 0x401921FB60000000
  %946 = fadd fast float %945, %927
  %947 = call float @dx.op.unary.f32(i32 13, float %946)  ; Sin(value)
  %948 = call float @dx.op.unary.f32(i32 12, float %946)  ; Cos(value)
  %949 = fsub fast float -0.000000e+00, %947
  %950 = fadd fast float %901, -5.000000e-01
  %951 = fadd fast float %902, -5.000000e-01
  %952 = fmul fast float %919, %950
  %953 = fmul fast float %921, %951
  %954 = fadd fast float %952, 5.000000e-01
  %955 = fadd fast float %953, 5.000000e-01
  %956 = fmul fast float %930, %954
  %957 = fmul fast float %933, %955
  %958 = fmul fast float %948, %956
  %959 = call float @dx.op.tertiary.f32(i32 46, float %949, float %957, float %958)  ; FMad(a,b,c)
  %960 = fmul fast float %947, %956
  %961 = call float @dx.op.tertiary.f32(i32 46, float %948, float %957, float %960)  ; FMad(a,b,c)
  %962 = fadd fast float %939, %959
  %963 = fadd fast float %942, %961
  %964 = icmp ugt i32 %913, 1
  %965 = icmp ugt i32 %911, 33554431
  %966 = or i1 %965, %964
  br i1 %966, label %967, label %992

; <label>:967                                     ; preds = %894
  %968 = add i32 %35, 244
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = lshr i32 %970, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = fmul fast float %935, %972
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = mul nuw nsw i32 %913, %914
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %974, %976
  %978 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %979 = fptoui float %978 to i32
  %980 = urem i32 %979, %913
  %981 = udiv i32 %979, %914
  %982 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %983 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %984 = uitofp i32 %980 to float
  %985 = uitofp i32 %981 to float
  %986 = fadd fast float %982, %984
  %987 = fadd fast float %983, %985
  %988 = uitofp i32 %913 to float
  %989 = uitofp i32 %914 to float
  %990 = fdiv fast float %986, %988
  %991 = fdiv fast float %987, %989
  br label %992

; <label>:992                                     ; preds = %967, %894
  %993 = phi float [ %990, %967 ], [ %962, %894 ]
  %994 = phi float [ %991, %967 ], [ %963, %894 ]
  %995 = and i32 %888, 16777216
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1106, label %997

; <label>:997                                     ; preds = %992
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1002 = fadd fast float %999, %133
  %1003 = fadd fast float %1000, %134
  %1004 = fadd fast float %1001, %135
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = icmp eq i32 %36, 65535
  br i1 %1008, label %1103, label %1009

; <label>:1009                                    ; preds = %997
  %1010 = lshr i32 %36, 1
  %1011 = shl i32 %1010, 2
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %36, 1
  %1015 = icmp ne i32 %1014, 0
  %1016 = lshr i32 %1013, 16
  %1017 = and i32 %1013, 65535
  %1018 = select i1 %1015, i32 %1016, i32 %1017
  %1019 = icmp eq i32 %1018, 65535
  br i1 %1019, label %1099, label %1020

; <label>:1020                                    ; preds = %1009
  %1021 = mul nuw nsw i32 %1018, 40
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = add nuw nsw i32 %1021, 12
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = add nuw nsw i32 %1021, 24
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = add nuw nsw i32 %1021, 36
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = fsub fast float %1002, %1023
  %1040 = fsub fast float %1003, %1024
  %1041 = fsub fast float %1004, %1025
  %1042 = fmul fast float %1038, %1039
  %1043 = fmul fast float %1038, %1040
  %1044 = fmul fast float %1038, %1041
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fmul fast float %1048, %1028
  %1052 = fmul fast float %1049, %1029
  %1053 = fmul fast float %1050, %1030
  %1054 = shl i32 %36, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1058, %dx.types.Handle %30, float %1059, float %1060, float %1061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fmul fast float %1064, 1.023000e+03
  %1068 = fmul fast float %1065, 1.023000e+03
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = fsub fast float %1042, %1045
  %1076 = fsub fast float %1043, %1046
  %1077 = fsub fast float %1044, %1047
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fmul fast float %1076, 7.500000e-01
  %1080 = fmul fast float %1077, 7.500000e-01
  %1081 = fadd fast float %1045, 1.250000e-01
  %1082 = fadd fast float %1081, %1078
  %1083 = fadd fast float %1082, %1072
  %1084 = fadd fast float %1046, 1.250000e-01
  %1085 = fadd fast float %1084, %1079
  %1086 = fadd fast float %1085, %1073
  %1087 = fadd fast float %1047, 1.250000e-01
  %1088 = fadd fast float %1087, %1080
  %1089 = fadd fast float %1088, %1074
  %1090 = fmul fast float %1083, %1033
  %1091 = fmul fast float %1086, %1034
  %1092 = fmul fast float %1089, %1035
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1096, %dx.types.Handle %28, float %1090, float %1091, float %1092, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  br label %1099

; <label>:1099                                    ; preds = %1020, %1009
  %1100 = phi float [ %1098, %1020 ], [ -1.000000e+00, %1009 ]
  %1101 = fadd fast float %1100, %1007
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  br label %1103

; <label>:1103                                    ; preds = %1099, %997
  %1104 = phi float [ %1102, %1099 ], [ %1007, %997 ]
  %1105 = fmul fast float %1104, %400
  br label %1106

; <label>:1106                                    ; preds = %1103, %992
  %1107 = phi float [ %1105, %1103 ], [ %400, %992 ]
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 256
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1158, label %1112

; <label>:1112                                    ; preds = %1106
  %1113 = add i32 %35, 428
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = add i32 %1115, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1117, %dx.types.Handle %71, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = add i32 %35, 116
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = shl i32 %1122, 4
  %1124 = and i32 %1123, 32752
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = lshr i32 %1122, 7
  %1127 = and i32 %1126, 32752
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = fsub fast float 1.000000e+00, %1107
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1131 = bitcast float %1107 to i32
  %1132 = sitofp i32 %1131 to float
  %1133 = fadd fast float %1132, 0xC1CFBF8940000000
  %1134 = fmul fast float %1128, %1133
  %1135 = fadd fast float %1134, 0x41CFBF8940000000
  %1136 = fptosi float %1135 to i32
  %1137 = bitcast i32 %1136 to float
  %1138 = bitcast float %1130 to i32
  %1139 = sitofp i32 %1138 to float
  %1140 = fadd fast float %1139, 0xC1CFBF8940000000
  %1141 = fmul fast float %1140, %1128
  %1142 = fadd fast float %1141, 0x41CFBF8940000000
  %1143 = fptosi float %1142 to i32
  %1144 = bitcast i32 %1143 to float
  %1145 = fmul fast float %1137, %1125
  %1146 = fmul fast float %1144, %1125
  %1147 = fsub fast float %1130, %1145
  %1148 = fadd fast float %1146, %1130
  %1149 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = fsub fast float %1119, %1149
  %1152 = fsub fast float %1150, %1149
  %1153 = bitcast float %1152 to i32
  %1154 = sub nsw i32 2129859010, %1153
  %1155 = bitcast i32 %1154 to float
  %1156 = fmul fast float %1155, %1151
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1112, %1106
  %1159 = phi float [ %1157, %1112 ], [ %1107, %1106 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 128
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1180, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %35, 412
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %71, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 524288
  %1175 = icmp ne i32 %1174, 0
  %1176 = fcmp fast ogt float %1171, 0x3FE0101020000000
  %1177 = select i1 %1176, float 1.000000e+00, float 0.000000e+00
  %1178 = select i1 %1175, float %1177, float %1171
  %1179 = fmul fast float %1178, %1159
  br label %1180

; <label>:1180                                    ; preds = %1164, %1158
  %1181 = phi float [ %1179, %1164 ], [ %1159, %1158 ]
  %1182 = fcmp fast ult float %1181, 0x3F70101020000000
  br i1 %1182, label %1836, label %1183

; <label>:1183                                    ; preds = %1180
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 16
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1386, label %1188

; <label>:1188                                    ; preds = %1183
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %35, 364
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %70, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1201 = and i32 %1190, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = lshr i32 %1190, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1200, %1202
  %1207 = fadd fast float %1206, %1205
  %1208 = fmul fast float %1207, 0x3F70101000000000
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 512
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1221, label %1213

; <label>:1213                                    ; preds = %1188
  %1214 = add i32 %35, 444
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %71, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  br label %1221

; <label>:1221                                    ; preds = %1213, %1188
  %1222 = phi float [ %1220, %1213 ], [ 1.000000e+00, %1188 ]
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 33554432
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1333, label %1227

; <label>:1227                                    ; preds = %1221
  %1228 = add i32 %35, 240
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 65535
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = lshr i32 %1230, 16
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = add i32 %35, 244
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 65535
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 24
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = and i32 %1241, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1241, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1241, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = add i32 %35, 236
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 24
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = and i32 %1258, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1258, 8
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = lshr i32 %1258, 16
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = bitcast float %1197 to i32
  %1274 = ashr i32 %1273, 1
  %1275 = sub nsw i32 1597463174, %1274
  %1276 = bitcast i32 %1275 to float
  %1277 = fmul fast float %1197, 5.000000e-01
  %1278 = fmul fast float %1276, %1276
  %1279 = fmul fast float %1278, %1277
  %1280 = fsub fast float 1.500000e+00, %1279
  %1281 = fmul fast float %1276, %1197
  %1282 = fmul fast float %1281, %1280
  %1283 = bitcast float %1198 to i32
  %1284 = ashr i32 %1283, 1
  %1285 = sub nsw i32 1597463174, %1284
  %1286 = bitcast i32 %1285 to float
  %1287 = fmul fast float %1198, 5.000000e-01
  %1288 = fmul fast float %1286, %1286
  %1289 = fmul fast float %1288, %1287
  %1290 = fsub fast float 1.500000e+00, %1289
  %1291 = fmul fast float %1286, %1198
  %1292 = fmul fast float %1291, %1290
  %1293 = bitcast float %1199 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = sub nsw i32 1597463174, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1199, 5.000000e-01
  %1298 = fmul fast float %1296, %1296
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float 1.500000e+00, %1299
  %1301 = fmul fast float %1296, %1199
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float %1282, %1264
  %1304 = fsub fast float %1292, %1268
  %1305 = fsub fast float %1302, %1272
  %1306 = fmul fast float %1303, %1232
  %1307 = fmul fast float %1304, %1234
  %1308 = fmul fast float %1305, %1239
  %1309 = fadd fast float %1306, %1247
  %1310 = fadd fast float %1307, %1251
  %1311 = fadd fast float %1308, %1255
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1315 = fmul fast float %1312, %1312
  %1316 = fmul fast float %1313, %1313
  %1317 = fmul fast float %1314, %1314
  %1318 = fsub fast float %1315, %1197
  %1319 = fsub fast float %1316, %1198
  %1320 = fsub fast float %1317, %1199
  %1321 = fmul fast float %1318, %1222
  %1322 = fmul fast float %1319, %1222
  %1323 = fmul fast float %1320, %1222
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1322, %1198
  %1326 = fadd fast float %1323, %1199
  %1327 = fadd fast float %1244, %1208
  %1328 = fsub fast float %1327, %1261
  %1329 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1330 = fsub fast float %1329, %1208
  %1331 = fmul fast float %1330, %1222
  %1332 = fadd fast float %1331, %1208
  br label %1386

; <label>:1333                                    ; preds = %1221
  %1334 = and i32 %1224, 134217728
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1370, label %1336

; <label>:1336                                    ; preds = %1333
  %1337 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fadd fast float %1338, -5.000000e-01
  %1342 = fadd fast float %1339, -5.000000e-01
  %1343 = fmul fast float %1340, %1222
  %1344 = fmul fast float %1341, %1222
  %1345 = fmul fast float %1342, %1222
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = fadd fast float %1344, 5.000000e-01
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1352 = fmul fast float %1346, 2.000000e+00
  %1353 = fsub fast float 1.000000e+00, %1352
  %1354 = fmul fast float %1353, %1349
  %1355 = fadd fast float %1354, %1352
  %1356 = fmul fast float %1355, %1349
  %1357 = fmul fast float %1347, 2.000000e+00
  %1358 = fsub fast float 1.000000e+00, %1357
  %1359 = fmul fast float %1358, %1350
  %1360 = fadd fast float %1359, %1357
  %1361 = fmul fast float %1360, %1350
  %1362 = fmul fast float %1348, 2.000000e+00
  %1363 = fsub fast float 1.000000e+00, %1362
  %1364 = fmul fast float %1363, %1351
  %1365 = fadd fast float %1364, %1362
  %1366 = fmul fast float %1365, %1351
  %1367 = fmul fast float %1356, %1356
  %1368 = fmul fast float %1361, %1361
  %1369 = fmul fast float %1366, %1366
  br label %1386

; <label>:1370                                    ; preds = %1333
  %1371 = fmul fast float %235, %235
  %1372 = fmul fast float %239, %239
  %1373 = fmul fast float %243, %243
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fmul fast float %1222, %1374
  %1378 = fmul fast float %1222, %1375
  %1379 = fmul fast float %1222, %1376
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fmul fast float %1380, %1197
  %1384 = fmul fast float %1381, %1198
  %1385 = fmul fast float %1382, %1199
  br label %1386

; <label>:1386                                    ; preds = %1370, %1336, %1227, %1183
  %1387 = phi float [ %1332, %1227 ], [ %1208, %1336 ], [ %1208, %1370 ], [ 0x3FA23C0BE0000000, %1183 ]
  %1388 = phi float [ %1324, %1227 ], [ %1367, %1336 ], [ %1383, %1370 ], [ 1.000000e+00, %1183 ]
  %1389 = phi float [ %1325, %1227 ], [ %1368, %1336 ], [ %1384, %1370 ], [ 1.000000e+00, %1183 ]
  %1390 = phi float [ %1326, %1227 ], [ %1369, %1336 ], [ %1385, %1370 ], [ 1.000000e+00, %1183 ]
  %1391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.i32 %1391, 1
  %1393 = and i32 %1392, 1
  %1394 = icmp ne i32 %1393, 0
  %1395 = add i32 %35, 356
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp ne i32 %1398, 0
  %1400 = and i1 %1394, %1399
  %1401 = select i1 %1400, float 1.000000e+00, float %1388
  %1402 = select i1 %1400, float 0x3FD3333340000000, float %1389
  %1403 = select i1 %1400, float 0x3FD3333340000000, float %1390
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = and i32 %1405, 32
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1480, label %1408

; <label>:1408                                    ; preds = %1386
  %1409 = add i32 %35, 108
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %35, 380
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = add i32 %1414, 0
  %1416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1416, %dx.types.Handle %70, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = extractvalue %dx.types.ResRet.f32 %1417, 3
  %1422 = and i32 %1411, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = lshr i32 %1411, 8
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = lshr i32 %1411, 16
  %1428 = and i32 %1427, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1429, 0x3F70101000000000
  %1431 = fmul fast float %1418, %1423
  %1432 = fadd fast float %1431, %1426
  %1433 = fmul fast float %1432, 0x3F70101000000000
  %1434 = fadd fast float %1419, -5.000000e-01
  %1435 = fadd fast float %1421, -5.000000e-01
  %1436 = fmul fast float %1434, %1430
  %1437 = fmul fast float %1435, %1430
  %1438 = fadd fast float %1436, 5.000000e-01
  %1439 = fadd fast float %1437, 5.000000e-01
  %1440 = fmul fast float %1438, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fmul fast float %1439, 2.000000e+00
  %1443 = fadd fast float %1442, -1.000000e+00
  %1444 = fadd fast float %1441, %1443
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = fsub fast float %1441, %1443
  %1447 = fmul fast float %1446, 5.000000e-01
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float 1.000000e+00, %1448
  %1450 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1451 = fsub fast float %1449, %1450
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1447, float %1451, float %1445, float %1447, float %1451)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = call float @dx.op.unary.f32(i32 25, float %1452)  ; Rsqrt(value)
  %1454 = fmul fast float %1445, %1453
  %1455 = fmul fast float %1447, %1453
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 67108864
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1476, label %1460

; <label>:1460                                    ; preds = %1408
  %1461 = add i32 %35, 296
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 65535
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 65535
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = lshr i32 %1463, 16
  %1471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1470)  ; LegacyF16ToF32(value)
  %1472 = fsub fast float %1433, %1471
  %1473 = fmul fast float %1472, %1465
  %1474 = fadd fast float %1473, %1469
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  br label %1476

; <label>:1476                                    ; preds = %1460, %1408
  %1477 = phi float [ %1475, %1460 ], [ %1433, %1408 ]
  %1478 = call float @dx.op.dot2.f32(i32 54, float %1454, float %1455, float %897, float %898)  ; Dot2(ax,ay,bx,by)
  %1479 = call float @dx.op.dot2.f32(i32 54, float %1454, float %1455, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  br label %1480

; <label>:1480                                    ; preds = %1476, %1386
  %1481 = phi float [ %1477, %1476 ], [ 0x3FD6666660000000, %1386 ]
  %1482 = phi float [ %1478, %1476 ], [ 0.000000e+00, %1386 ]
  %1483 = phi float [ %1479, %1476 ], [ 0.000000e+00, %1386 ]
  %1484 = phi float [ %1420, %1476 ], [ 1.000000e+00, %1386 ]
  %1485 = add i32 %35, 176
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = lshr i32 %1487, 22
  %1489 = shl nuw nsw i32 %1488, 5
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 64
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1528, label %1495

; <label>:1495                                    ; preds = %1480
  %1496 = add i32 %35, 396
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 131072
  %1504 = icmp eq i32 %1503, 0
  %1505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %70, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = fmul fast float %1506, %223
  %1510 = fmul fast float %1507, %226
  %1511 = fmul fast float %1508, %229
  br i1 %1504, label %1518, label %1512

; <label>:1512                                    ; preds = %1495
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = fmul fast float %1514, %1509
  %1516 = fmul fast float %1514, %1510
  %1517 = fmul fast float %1514, %1511
  br label %1518

; <label>:1518                                    ; preds = %1512, %1495
  %1519 = phi float [ %1515, %1512 ], [ %1509, %1495 ]
  %1520 = phi float [ %1516, %1512 ], [ %1510, %1495 ]
  %1521 = phi float [ %1517, %1512 ], [ %1511, %1495 ]
  %1522 = fmul fast float %1519, %1490
  %1523 = select i1 %175, float %1522, float %1519
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1523, float %1520, float %1521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = select i1 %175, float 0.000000e+00, float %1519
  %1526 = select i1 %175, float %1524, float %1520
  %1527 = select i1 %175, float 0.000000e+00, float %1521
  br label %1528

; <label>:1528                                    ; preds = %1518, %1480
  %1529 = phi float [ %1525, %1518 ], [ 0.000000e+00, %1480 ]
  %1530 = phi float [ %1526, %1518 ], [ 0.000000e+00, %1480 ]
  %1531 = phi float [ %1527, %1518 ], [ 0.000000e+00, %1480 ]
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 1024
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1566, label %1536

; <label>:1536                                    ; preds = %1528
  %1537 = add i32 %35, 168
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = fmul fast float %1541, 0x3F70101020000000
  %1543 = lshr i32 %1539, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = lshr i32 %1539, 16
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = fmul fast float %1542, %1542
  %1552 = fmul fast float %1546, %1546
  %1553 = fmul fast float %1550, %1550
  %1554 = add i32 %35, 460
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %71, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = fmul fast float %1551, %1560
  %1564 = fmul fast float %1552, %1561
  %1565 = fmul fast float %1553, %1562
  br label %1566

; <label>:1566                                    ; preds = %1536, %1528
  %1567 = phi float [ %1563, %1536 ], [ 0.000000e+00, %1528 ]
  %1568 = phi float [ %1564, %1536 ], [ 0.000000e+00, %1528 ]
  %1569 = phi float [ %1565, %1536 ], [ 0.000000e+00, %1528 ]
  %1570 = fcmp fast ogt float %1567, 0.000000e+00
  %1571 = fcmp fast ogt float %1568, 0.000000e+00
  %1572 = fcmp fast ogt float %1569, 0.000000e+00
  %1573 = call float @dx.op.unary.f32(i32 23, float %1567)  ; Log(value)
  %1574 = call float @dx.op.unary.f32(i32 23, float %1568)  ; Log(value)
  %1575 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 7
  %1579 = and i32 %1578, 32752
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = fmul fast float %1573, 0xBFE62E4300000000
  %1582 = fmul fast float %1581, %1580
  %1583 = fmul fast float %1574, 0xBFE62E4300000000
  %1584 = fmul fast float %1583, %1580
  %1585 = fmul fast float %1575, 0xBFE62E4300000000
  %1586 = fmul fast float %1585, %1580
  %1587 = select i1 %1570, float %1582, float 1.270000e+02
  %1588 = select i1 %1571, float %1584, float 1.270000e+02
  %1589 = select i1 %1572, float %1586, float 1.270000e+02
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 10240
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1614, label %1594

; <label>:1594                                    ; preds = %1566
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 2048
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1614, label %1599

; <label>:1599                                    ; preds = %1594
  %1600 = add i32 %35, 476
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %71, float %993, float %994, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 3
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = shl i32 %1608, 4
  %1610 = and i32 %1609, 32752
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = fmul fast float %1611, %1606
  %1613 = call float @dx.op.binary.f32(i32 35, float %1612, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1614

; <label>:1614                                    ; preds = %1599, %1594, %1566
  %1615 = phi float [ %1613, %1599 ], [ 0x3F70101020000000, %1594 ], [ 0x3F70101020000000, %1566 ]
  %1616 = add i32 %35, 112
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = lshr i32 %1618, 8
  %1622 = and i32 %1621, 255
  %1623 = uitofp i32 %1622 to float
  %1624 = call float @dx.op.dot3.f32(i32 55, float %1401, float %1402, float %1403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1625 = fmul fast float %1623, %1624
  %1626 = fadd fast float %1625, %1620
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br i1 %885, label %1629, label %1664

; <label>:1629                                    ; preds = %1614
  %1630 = fmul fast float %1615, 2.000000e+00
  %1631 = fcmp fast olt float %1587, 1.270000e+02
  %1632 = fcmp fast olt float %1588, 1.270000e+02
  %1633 = fcmp fast olt float %1589, 1.270000e+02
  %1634 = fmul fast float %1587, 0xBFF7154760000000
  %1635 = fmul fast float %1634, %1630
  %1636 = fmul fast float %1588, 0xBFF7154760000000
  %1637 = fmul fast float %1636, %1630
  %1638 = fmul fast float %1589, 0xBFF7154760000000
  %1639 = fmul fast float %1638, %1630
  %1640 = call float @dx.op.unary.f32(i32 21, float %1635)  ; Exp(value)
  %1641 = call float @dx.op.unary.f32(i32 21, float %1637)  ; Exp(value)
  %1642 = call float @dx.op.unary.f32(i32 21, float %1639)  ; Exp(value)
  %1643 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1646 = fadd fast float %1643, -1.000000e+00
  %1647 = select i1 %1631, float %1646, float -1.000000e+00
  %1648 = fadd fast float %1644, -1.000000e+00
  %1649 = select i1 %1632, float %1648, float -1.000000e+00
  %1650 = fadd fast float %1645, -1.000000e+00
  %1651 = select i1 %1633, float %1650, float -1.000000e+00
  %1652 = fmul fast float %1647, %1181
  %1653 = fmul fast float %1649, %1181
  %1654 = fmul fast float %1651, %1181
  %1655 = fadd fast float %1652, 1.000000e+00
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fmul fast float %1655, %873
  %1659 = fmul fast float %1656, %874
  %1660 = fmul fast float %1657, %875
  %1661 = fmul fast float %1655, %876
  %1662 = fmul fast float %1656, %877
  %1663 = fmul fast float %1657, %878
  br label %1664

; <label>:1664                                    ; preds = %1629, %1614
  %1665 = phi float [ %1658, %1629 ], [ %873, %1614 ]
  %1666 = phi float [ %1659, %1629 ], [ %874, %1614 ]
  %1667 = phi float [ %1660, %1629 ], [ %875, %1614 ]
  %1668 = phi float [ %1661, %1629 ], [ %876, %1614 ]
  %1669 = phi float [ %1662, %1629 ], [ %877, %1614 ]
  %1670 = phi float [ %1663, %1629 ], [ %878, %1614 ]
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 3
  %1674 = icmp eq i32 %1673, 3
  br i1 %1674, label %1753, label %1675

; <label>:1675                                    ; preds = %1664
  %1676 = and i32 %1672, 16
  %1677 = icmp ne i32 %1676, 0
  %1678 = select i1 %1677, float %1181, float 0.000000e+00
  %1679 = icmp eq i32 %1673, 0
  br i1 %1679, label %1680, label %1708

; <label>:1680                                    ; preds = %1675
  %1681 = and i32 %1672, 64
  %1682 = icmp ne i32 %1681, 0
  %1683 = select i1 %1682, float %1181, float 0.000000e+00
  %1684 = fsub fast float %1401, %1665
  %1685 = fsub fast float %1402, %1666
  %1686 = fsub fast float %1403, %1667
  %1687 = fmul fast float %1678, %1684
  %1688 = fmul fast float %1678, %1685
  %1689 = fmul fast float %1678, %1686
  %1690 = fadd fast float %1687, %1665
  %1691 = fadd fast float %1688, %1666
  %1692 = fadd fast float %1689, %1667
  %1693 = fsub fast float %1387, %879
  %1694 = fmul fast float %1678, %1693
  %1695 = fadd fast float %1694, %879
  %1696 = fsub fast float %1529, %1668
  %1697 = fsub fast float %1530, %1669
  %1698 = fsub fast float %1531, %1670
  %1699 = fmul fast float %1683, %1696
  %1700 = fmul fast float %1683, %1697
  %1701 = fmul fast float %1683, %1698
  %1702 = fadd fast float %1699, %1668
  %1703 = fadd fast float %1700, %1669
  %1704 = fadd fast float %1701, %1670
  %1705 = fsub fast float %1628, %883
  %1706 = fmul fast float %1678, %1705
  %1707 = fadd fast float %1706, %883
  br label %1753

; <label>:1708                                    ; preds = %1675
  %1709 = icmp eq i32 %1673, 1
  br i1 %1709, label %1710, label %1723

; <label>:1710                                    ; preds = %1708
  %1711 = fadd fast float %1401, -1.000000e+00
  %1712 = fadd fast float %1402, -1.000000e+00
  %1713 = fadd fast float %1403, -1.000000e+00
  %1714 = fmul fast float %1678, %1711
  %1715 = fmul fast float %1678, %1712
  %1716 = fmul fast float %1678, %1713
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fmul fast float %1717, %1665
  %1721 = fmul fast float %1718, %1666
  %1722 = fmul fast float %1719, %1667
  br label %1753

; <label>:1723                                    ; preds = %1708
  %1724 = icmp eq i32 %1673, 2
  br i1 %1724, label %1725, label %1753

; <label>:1725                                    ; preds = %1723
  %1726 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1727 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1728 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fadd fast float %1727, -5.000000e-01
  %1731 = fadd fast float %1728, -5.000000e-01
  %1732 = fmul fast float %1729, %1678
  %1733 = fmul fast float %1730, %1678
  %1734 = fmul fast float %1731, %1678
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fadd fast float %1734, 5.000000e-01
  %1738 = fmul fast float %1735, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1665
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1665
  %1743 = fmul fast float %1736, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1666
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1666
  %1748 = fmul fast float %1737, 2.000000e+00
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = fmul fast float %1749, %1667
  %1751 = fadd fast float %1750, %1748
  %1752 = fmul fast float %1751, %1667
  br label %1753

; <label>:1753                                    ; preds = %1725, %1723, %1710, %1680, %1664
  %1754 = phi float [ %1665, %1664 ], [ %1742, %1725 ], [ %1665, %1723 ], [ %1720, %1710 ], [ %1690, %1680 ]
  %1755 = phi float [ %1666, %1664 ], [ %1747, %1725 ], [ %1666, %1723 ], [ %1721, %1710 ], [ %1691, %1680 ]
  %1756 = phi float [ %1667, %1664 ], [ %1752, %1725 ], [ %1667, %1723 ], [ %1722, %1710 ], [ %1692, %1680 ]
  %1757 = phi float [ %1668, %1664 ], [ %1668, %1725 ], [ %1668, %1723 ], [ %1668, %1710 ], [ %1702, %1680 ]
  %1758 = phi float [ %1669, %1664 ], [ %1669, %1725 ], [ %1669, %1723 ], [ %1669, %1710 ], [ %1703, %1680 ]
  %1759 = phi float [ %1670, %1664 ], [ %1670, %1725 ], [ %1670, %1723 ], [ %1670, %1710 ], [ %1704, %1680 ]
  %1760 = phi float [ %879, %1664 ], [ %879, %1725 ], [ %879, %1723 ], [ %879, %1710 ], [ %1695, %1680 ]
  %1761 = phi float [ %883, %1664 ], [ %883, %1725 ], [ %883, %1723 ], [ %883, %1710 ], [ %1707, %1680 ]
  %1762 = and i32 %1672, 12
  %1763 = icmp eq i32 %1762, 12
  br i1 %1763, label %1836, label %1764

; <label>:1764                                    ; preds = %1753
  %1765 = and i32 %1672, 2097184
  %1766 = icmp eq i32 %1765, 2097184
  %1767 = select i1 %1766, float %1181, float 0.000000e+00
  %1768 = and i32 %1672, 4194336
  %1769 = icmp eq i32 %1768, 4194336
  %1770 = select i1 %1769, float %1181, float 0.000000e+00
  %1771 = and i32 %1672, 8388640
  %1772 = icmp eq i32 %1771, 8388640
  %1773 = select i1 %1772, float %1181, float 0.000000e+00
  %1774 = icmp eq i32 %1762, 0
  br i1 %1774, label %1775, label %1788

; <label>:1775                                    ; preds = %1764
  %1776 = fsub fast float %1482, %871
  %1777 = fsub fast float %1483, %872
  %1778 = fmul fast float %1767, %1776
  %1779 = fmul fast float %1767, %1777
  %1780 = fadd fast float %1778, %871
  %1781 = fadd fast float %1779, %872
  %1782 = fsub fast float %1484, %882
  %1783 = fmul fast float %1770, %1782
  %1784 = fadd fast float %1783, %882
  %1785 = fsub fast float %1481, %881
  %1786 = fmul fast float %1773, %1785
  %1787 = fadd fast float %1786, %881
  br label %1836

; <label>:1788                                    ; preds = %1764
  %1789 = icmp eq i32 %1762, 4
  br i1 %1789, label %1790, label %1822

; <label>:1790                                    ; preds = %1788
  %1791 = fmul fast float %1767, %1482
  %1792 = fmul fast float %1767, %1483
  %1793 = fadd fast float %1791, %871
  %1794 = fadd fast float %1792, %872
  %1795 = call float @dx.op.binary.f32(i32 36, float %882, float %1484)  ; FMin(a,b)
  %1796 = fsub fast float %1795, %882
  %1797 = fmul fast float %1796, %1770
  %1798 = fadd fast float %1797, %882
  %1799 = fadd fast float %1481, %881
  %1800 = fmul fast float %1799, 0x3FF337FAE0000000
  %1801 = fmul fast float %881, %881
  %1802 = fmul fast float %1481, %1481
  %1803 = fadd fast float %1802, %1801
  %1804 = fmul fast float %1803, 0x3FE5152B00000000
  %1805 = fmul fast float %881, 0xBFCC1F85E0000000
  %1806 = fmul fast float %1805, %1481
  %1807 = fadd fast float %1806, 0xBFE1363700000000
  %1808 = fadd fast float %1807, %1800
  %1809 = fsub fast float %1808, %1804
  %1810 = fmul fast float %1799, 0x3FBA6F0D00000000
  %1811 = fmul fast float %1803, 0x3FD0432880000000
  %1812 = fmul fast float %881, 0xBFEF110800000000
  %1813 = fmul fast float %1812, %1481
  %1814 = fadd fast float %1813, 1.000000e+00
  %1815 = fsub fast float %1814, %1810
  %1816 = fadd fast float %1815, %1811
  %1817 = fdiv fast float %1809, %1816
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = fsub fast float %1818, %881
  %1820 = fmul fast float %1819, %1773
  %1821 = fadd fast float %1820, %881
  br label %1836

; <label>:1822                                    ; preds = %1788
  %1823 = icmp eq i32 %1762, 8
  br i1 %1823, label %1824, label %1836

; <label>:1824                                    ; preds = %1822
  %1825 = fmul fast float %1767, %1482
  %1826 = fmul fast float %1767, %1483
  %1827 = fadd fast float %1825, %871
  %1828 = fadd fast float %1826, %872
  %1829 = call float @dx.op.binary.f32(i32 36, float %882, float %1484)  ; FMin(a,b)
  %1830 = fsub fast float %1829, %882
  %1831 = fmul fast float %1830, %1770
  %1832 = fadd fast float %1831, %882
  %1833 = fsub fast float %1481, %881
  %1834 = fmul fast float %1773, %1833
  %1835 = fadd fast float %1834, %881
  br label %1836

; <label>:1836                                    ; preds = %1824, %1822, %1790, %1775, %1753, %1180, %884, %870
  %1837 = phi float [ %871, %1753 ], [ %871, %1180 ], [ %871, %870 ], [ %1827, %1824 ], [ %871, %1822 ], [ %1793, %1790 ], [ %1780, %1775 ], [ %871, %884 ]
  %1838 = phi float [ %872, %1753 ], [ %872, %1180 ], [ %872, %870 ], [ %1828, %1824 ], [ %872, %1822 ], [ %1794, %1790 ], [ %1781, %1775 ], [ %872, %884 ]
  %1839 = phi float [ %1754, %1753 ], [ %873, %1180 ], [ %873, %870 ], [ %1754, %1824 ], [ %1754, %1822 ], [ %1754, %1790 ], [ %1754, %1775 ], [ %873, %884 ]
  %1840 = phi float [ %1755, %1753 ], [ %874, %1180 ], [ %874, %870 ], [ %1755, %1824 ], [ %1755, %1822 ], [ %1755, %1790 ], [ %1755, %1775 ], [ %874, %884 ]
  %1841 = phi float [ %1756, %1753 ], [ %875, %1180 ], [ %875, %870 ], [ %1756, %1824 ], [ %1756, %1822 ], [ %1756, %1790 ], [ %1756, %1775 ], [ %875, %884 ]
  %1842 = phi float [ %1757, %1753 ], [ %876, %1180 ], [ %876, %870 ], [ %1757, %1824 ], [ %1757, %1822 ], [ %1757, %1790 ], [ %1757, %1775 ], [ %876, %884 ]
  %1843 = phi float [ %1758, %1753 ], [ %877, %1180 ], [ %877, %870 ], [ %1758, %1824 ], [ %1758, %1822 ], [ %1758, %1790 ], [ %1758, %1775 ], [ %877, %884 ]
  %1844 = phi float [ %1759, %1753 ], [ %878, %1180 ], [ %878, %870 ], [ %1759, %1824 ], [ %1759, %1822 ], [ %1759, %1790 ], [ %1759, %1775 ], [ %878, %884 ]
  %1845 = phi float [ %1760, %1753 ], [ %879, %1180 ], [ %879, %870 ], [ %1760, %1824 ], [ %1760, %1822 ], [ %1760, %1790 ], [ %1760, %1775 ], [ %879, %884 ]
  %1846 = phi float [ %881, %1753 ], [ %881, %1180 ], [ %881, %870 ], [ %1835, %1824 ], [ %881, %1822 ], [ %1821, %1790 ], [ %1787, %1775 ], [ %881, %884 ]
  %1847 = phi float [ %882, %1753 ], [ %882, %1180 ], [ %882, %870 ], [ %1832, %1824 ], [ %882, %1822 ], [ %1798, %1790 ], [ %1784, %1775 ], [ %882, %884 ]
  %1848 = phi float [ %1761, %1753 ], [ %883, %1180 ], [ %883, %870 ], [ %1761, %1824 ], [ %1761, %1822 ], [ %1761, %1790 ], [ %1761, %1775 ], [ %883, %884 ]
  br i1 %350, label %2801, label %1849

; <label>:1849                                    ; preds = %1836
  %1850 = icmp ult i32 %403, 3
  %1851 = add i32 %35, 56
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = add i32 %35, 60
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = or i32 %1856, %1853
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %2801, label %1859

; <label>:1859                                    ; preds = %1849
  %1860 = and i32 %1853, 262144
  %1861 = icmp ne i32 %1860, 0
  %1862 = select i1 %1861, float %37, float 1.000000e+00
  %1863 = select i1 %1861, float %38, float 0.000000e+00
  %1864 = select i1 %1861, float %39, float 0.000000e+00
  %1865 = select i1 %1861, float %40, float 1.000000e+00
  %1866 = select i1 %1861, float %41, float %62
  %1867 = select i1 %1861, float %42, float %63
  %1868 = add i32 %35, 316
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = lshr i32 %1870, 16
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = fmul fast float %1872, 0x3F50624DE0000000
  %1874 = add i32 %35, 120
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = lshr i32 %1876, 16
  %1878 = and i32 %1877, 255
  %1879 = lshr i32 %1876, 24
  %1880 = add i32 %35, 324
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = and i32 %1882, 65535
  %1884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1883)  ; LegacyF16ToF32(value)
  %1885 = lshr i32 %1882, 16
  %1886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1885)  ; LegacyF16ToF32(value)
  %1887 = add i32 %35, 64
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = lshr i32 %1889, 22
  %1891 = shl nuw nsw i32 %1890, 5
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = shl i32 %1889, 4
  %1894 = and i32 %1893, 32752
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = lshr i32 %1889, 7
  %1897 = and i32 %1896, 32752
  %1898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1897)  ; LegacyF16ToF32(value)
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 3
  %1901 = fmul fast float %1900, 1.000000e+03
  %1902 = fmul fast float %300, %1901
  %1903 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1904 = fadd fast float %1903, %290
  %1905 = fmul fast float %301, %1901
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = fadd fast float %1906, %292
  %1908 = fmul fast float %1873, %1901
  %1909 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1910 = fmul fast float %1909, 0x401921FB60000000
  %1911 = fadd fast float %1910, %1892
  %1912 = call float @dx.op.unary.f32(i32 13, float %1911)  ; Sin(value)
  %1913 = call float @dx.op.unary.f32(i32 12, float %1911)  ; Cos(value)
  %1914 = fsub fast float -0.000000e+00, %1912
  %1915 = fadd fast float %1866, -5.000000e-01
  %1916 = fadd fast float %1867, -5.000000e-01
  %1917 = fmul fast float %1884, %1915
  %1918 = fmul fast float %1886, %1916
  %1919 = fadd fast float %1917, 5.000000e-01
  %1920 = fadd fast float %1918, 5.000000e-01
  %1921 = fmul fast float %1895, %1919
  %1922 = fmul fast float %1898, %1920
  %1923 = fmul fast float %1913, %1921
  %1924 = call float @dx.op.tertiary.f32(i32 46, float %1914, float %1922, float %1923)  ; FMad(a,b,c)
  %1925 = fmul fast float %1912, %1921
  %1926 = call float @dx.op.tertiary.f32(i32 46, float %1913, float %1922, float %1925)  ; FMad(a,b,c)
  %1927 = fadd fast float %1904, %1924
  %1928 = fadd fast float %1907, %1926
  %1929 = icmp ugt i32 %1878, 1
  %1930 = icmp ugt i32 %1876, 33554431
  %1931 = or i1 %1930, %1929
  br i1 %1931, label %1932, label %1957

; <label>:1932                                    ; preds = %1859
  %1933 = add i32 %35, 260
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = lshr i32 %1935, 16
  %1937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1936)  ; LegacyF16ToF32(value)
  %1938 = fmul fast float %1900, %1937
  %1939 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1940 = mul nuw nsw i32 %1878, %1879
  %1941 = uitofp i32 %1940 to float
  %1942 = fmul fast float %1939, %1941
  %1943 = call float @dx.op.unary.f32(i32 27, float %1942)  ; Round_ni(value)
  %1944 = fptoui float %1943 to i32
  %1945 = urem i32 %1944, %1878
  %1946 = udiv i32 %1944, %1879
  %1947 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1948 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1949 = uitofp i32 %1945 to float
  %1950 = uitofp i32 %1946 to float
  %1951 = fadd fast float %1947, %1949
  %1952 = fadd fast float %1948, %1950
  %1953 = uitofp i32 %1878 to float
  %1954 = uitofp i32 %1879 to float
  %1955 = fdiv fast float %1951, %1953
  %1956 = fdiv fast float %1952, %1954
  br label %1957

; <label>:1957                                    ; preds = %1932, %1859
  %1958 = phi float [ %1955, %1932 ], [ %1927, %1859 ]
  %1959 = phi float [ %1956, %1932 ], [ %1928, %1859 ]
  %1960 = and i32 %1853, 16777216
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %2071, label %1962

; <label>:1962                                    ; preds = %1957
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %1965 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1966 = extractvalue %dx.types.CBufRet.f32 %1963, 2
  %1967 = fadd fast float %1964, %133
  %1968 = fadd fast float %1965, %134
  %1969 = fadd fast float %1966, %135
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 0
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = icmp eq i32 %36, 65535
  br i1 %1973, label %2068, label %1974

; <label>:1974                                    ; preds = %1962
  %1975 = lshr i32 %36, 1
  %1976 = shl i32 %1975, 2
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %36, 1
  %1980 = icmp ne i32 %1979, 0
  %1981 = lshr i32 %1978, 16
  %1982 = and i32 %1978, 65535
  %1983 = select i1 %1980, i32 %1981, i32 %1982
  %1984 = icmp eq i32 %1983, 65535
  br i1 %1984, label %2064, label %1985

; <label>:1985                                    ; preds = %1974
  %1986 = mul nuw nsw i32 %1983, 40
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.ResRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.ResRet.f32 %1987, 2
  %1991 = add nuw nsw i32 %1986, 12
  %1992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.ResRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.ResRet.f32 %1992, 2
  %1996 = add nuw nsw i32 %1986, 24
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2001 = add nuw nsw i32 %1986, 36
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = fsub fast float %1967, %1988
  %2005 = fsub fast float %1968, %1989
  %2006 = fsub fast float %1969, %1990
  %2007 = fmul fast float %2003, %2004
  %2008 = fmul fast float %2003, %2005
  %2009 = fmul fast float %2003, %2006
  %2010 = call float @dx.op.unary.f32(i32 27, float %2007)  ; Round_ni(value)
  %2011 = call float @dx.op.unary.f32(i32 27, float %2008)  ; Round_ni(value)
  %2012 = call float @dx.op.unary.f32(i32 27, float %2009)  ; Round_ni(value)
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = fmul fast float %2013, %1993
  %2017 = fmul fast float %2014, %1994
  %2018 = fmul fast float %2015, %1995
  %2019 = shl i32 %36, 2
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = add i32 %2021, 0
  %2023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2024 = call float @dx.op.unary.f32(i32 22, float %2016)  ; Frc(value)
  %2025 = call float @dx.op.unary.f32(i32 22, float %2017)  ; Frc(value)
  %2026 = call float @dx.op.unary.f32(i32 22, float %2018)  ; Frc(value)
  %2027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2023, %dx.types.Handle %30, float %2024, float %2025, float %2026, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.ResRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2031 = fmul fast float %2028, 1.023000e+03
  %2032 = fmul fast float %2029, 1.023000e+03
  %2033 = fmul fast float %2030, 1.023000e+03
  %2034 = fadd fast float %2031, 5.000000e-01
  %2035 = fadd fast float %2032, 5.000000e-01
  %2036 = fadd fast float %2033, 5.000000e-01
  %2037 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2038 = call float @dx.op.unary.f32(i32 27, float %2035)  ; Round_ni(value)
  %2039 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2040 = fsub fast float %2007, %2010
  %2041 = fsub fast float %2008, %2011
  %2042 = fsub fast float %2009, %2012
  %2043 = fmul fast float %2040, 7.500000e-01
  %2044 = fmul fast float %2041, 7.500000e-01
  %2045 = fmul fast float %2042, 7.500000e-01
  %2046 = fadd fast float %2010, 1.250000e-01
  %2047 = fadd fast float %2046, %2043
  %2048 = fadd fast float %2047, %2037
  %2049 = fadd fast float %2011, 1.250000e-01
  %2050 = fadd fast float %2049, %2044
  %2051 = fadd fast float %2050, %2038
  %2052 = fadd fast float %2012, 1.250000e-01
  %2053 = fadd fast float %2052, %2045
  %2054 = fadd fast float %2053, %2039
  %2055 = fmul fast float %2048, %1998
  %2056 = fmul fast float %2051, %1999
  %2057 = fmul fast float %2054, %2000
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2061, %dx.types.Handle %28, float %2055, float %2056, float %2057, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  br label %2064

; <label>:2064                                    ; preds = %1985, %1974
  %2065 = phi float [ %2063, %1985 ], [ -1.000000e+00, %1974 ]
  %2066 = fadd fast float %2065, %1972
  %2067 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  br label %2068

; <label>:2068                                    ; preds = %2064, %1962
  %2069 = phi float [ %2067, %2064 ], [ %1972, %1962 ]
  %2070 = fmul fast float %2069, %399
  br label %2071

; <label>:2071                                    ; preds = %2068, %1957
  %2072 = phi float [ %2070, %2068 ], [ %399, %1957 ]
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 256
  %2076 = icmp eq i32 %2075, 0
  br i1 %2076, label %2123, label %2077

; <label>:2077                                    ; preds = %2071
  %2078 = add i32 %35, 432
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2082, %dx.types.Handle %71, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = add i32 %35, 132
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = shl i32 %2087, 4
  %2089 = and i32 %2088, 32752
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = lshr i32 %2087, 7
  %2092 = and i32 %2091, 32752
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = fsub fast float 1.000000e+00, %2072
  %2095 = call float @dx.op.binary.f32(i32 35, float %2094, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2096 = bitcast float %2072 to i32
  %2097 = sitofp i32 %2096 to float
  %2098 = fadd fast float %2097, 0xC1CFBF8940000000
  %2099 = fmul fast float %2093, %2098
  %2100 = fadd fast float %2099, 0x41CFBF8940000000
  %2101 = fptosi float %2100 to i32
  %2102 = bitcast i32 %2101 to float
  %2103 = bitcast float %2095 to i32
  %2104 = sitofp i32 %2103 to float
  %2105 = fadd fast float %2104, 0xC1CFBF8940000000
  %2106 = fmul fast float %2105, %2093
  %2107 = fadd fast float %2106, 0x41CFBF8940000000
  %2108 = fptosi float %2107 to i32
  %2109 = bitcast i32 %2108 to float
  %2110 = fmul fast float %2102, %2090
  %2111 = fmul fast float %2109, %2090
  %2112 = fsub fast float %2095, %2110
  %2113 = fadd fast float %2111, %2095
  %2114 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2115 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2116 = fsub fast float %2084, %2114
  %2117 = fsub fast float %2115, %2114
  %2118 = bitcast float %2117 to i32
  %2119 = sub nsw i32 2129859010, %2118
  %2120 = bitcast i32 %2119 to float
  %2121 = fmul fast float %2120, %2116
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  br label %2123

; <label>:2123                                    ; preds = %2077, %2071
  %2124 = phi float [ %2122, %2077 ], [ %2072, %2071 ]
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = and i32 %2126, 128
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2145, label %2129

; <label>:2129                                    ; preds = %2123
  %2130 = add i32 %35, 416
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %2132, 0
  %2134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2134, %dx.types.Handle %71, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 524288
  %2140 = icmp ne i32 %2139, 0
  %2141 = fcmp fast ogt float %2136, 0x3FE0101020000000
  %2142 = select i1 %2141, float 1.000000e+00, float 0.000000e+00
  %2143 = select i1 %2140, float %2142, float %2136
  %2144 = fmul fast float %2143, %2124
  br label %2145

; <label>:2145                                    ; preds = %2129, %2123
  %2146 = phi float [ %2144, %2129 ], [ %2124, %2123 ]
  %2147 = fcmp fast ult float %2146, 0x3F70101020000000
  br i1 %2147, label %2801, label %2148

; <label>:2148                                    ; preds = %2145
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 16
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2351, label %2153

; <label>:2153                                    ; preds = %2148
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %35, 368
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = add i32 %2158, 0
  %2160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2160, %dx.types.Handle %70, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2162 = extractvalue %dx.types.ResRet.f32 %2161, 0
  %2163 = extractvalue %dx.types.ResRet.f32 %2161, 1
  %2164 = extractvalue %dx.types.ResRet.f32 %2161, 2
  %2165 = extractvalue %dx.types.ResRet.f32 %2161, 3
  %2166 = and i32 %2155, 255
  %2167 = uitofp i32 %2166 to float
  %2168 = lshr i32 %2155, 8
  %2169 = and i32 %2168, 255
  %2170 = uitofp i32 %2169 to float
  %2171 = fmul fast float %2165, %2167
  %2172 = fadd fast float %2171, %2170
  %2173 = fmul fast float %2172, 0x3F70101000000000
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 512
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2186, label %2178

; <label>:2178                                    ; preds = %2153
  %2179 = add i32 %35, 448
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = add i32 %2181, 0
  %2183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2183, %dx.types.Handle %71, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2185 = extractvalue %dx.types.ResRet.f32 %2184, 0
  br label %2186

; <label>:2186                                    ; preds = %2178, %2153
  %2187 = phi float [ %2185, %2178 ], [ 1.000000e+00, %2153 ]
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 33554432
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2298, label %2192

; <label>:2192                                    ; preds = %2186
  %2193 = add i32 %35, 256
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 65535
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = lshr i32 %2195, 16
  %2199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2198)  ; LegacyF16ToF32(value)
  %2200 = add i32 %35, 260
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 65535
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = and i32 %2206, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2206, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = lshr i32 %2206, 16
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = add i32 %35, 252
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = lshr i32 %2223, 24
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2225, 0x3F70101020000000
  %2227 = and i32 %2223, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2228, 0x3F70101020000000
  %2230 = lshr i32 %2223, 8
  %2231 = and i32 %2230, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = fmul fast float %2232, 0x3F70101020000000
  %2234 = lshr i32 %2223, 16
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101020000000
  %2238 = bitcast float %2162 to i32
  %2239 = ashr i32 %2238, 1
  %2240 = sub nsw i32 1597463174, %2239
  %2241 = bitcast i32 %2240 to float
  %2242 = fmul fast float %2162, 5.000000e-01
  %2243 = fmul fast float %2241, %2241
  %2244 = fmul fast float %2243, %2242
  %2245 = fsub fast float 1.500000e+00, %2244
  %2246 = fmul fast float %2241, %2162
  %2247 = fmul fast float %2246, %2245
  %2248 = bitcast float %2163 to i32
  %2249 = ashr i32 %2248, 1
  %2250 = sub nsw i32 1597463174, %2249
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2163, 5.000000e-01
  %2253 = fmul fast float %2251, %2251
  %2254 = fmul fast float %2253, %2252
  %2255 = fsub fast float 1.500000e+00, %2254
  %2256 = fmul fast float %2251, %2163
  %2257 = fmul fast float %2256, %2255
  %2258 = bitcast float %2164 to i32
  %2259 = ashr i32 %2258, 1
  %2260 = sub nsw i32 1597463174, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2164, 5.000000e-01
  %2263 = fmul fast float %2261, %2261
  %2264 = fmul fast float %2263, %2262
  %2265 = fsub fast float 1.500000e+00, %2264
  %2266 = fmul fast float %2261, %2164
  %2267 = fmul fast float %2266, %2265
  %2268 = fsub fast float %2247, %2229
  %2269 = fsub fast float %2257, %2233
  %2270 = fsub fast float %2267, %2237
  %2271 = fmul fast float %2268, %2197
  %2272 = fmul fast float %2269, %2199
  %2273 = fmul fast float %2270, %2204
  %2274 = fadd fast float %2271, %2212
  %2275 = fadd fast float %2272, %2216
  %2276 = fadd fast float %2273, %2220
  %2277 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2278 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2280 = fmul fast float %2277, %2277
  %2281 = fmul fast float %2278, %2278
  %2282 = fmul fast float %2279, %2279
  %2283 = fsub fast float %2280, %2162
  %2284 = fsub fast float %2281, %2163
  %2285 = fsub fast float %2282, %2164
  %2286 = fmul fast float %2283, %2187
  %2287 = fmul fast float %2284, %2187
  %2288 = fmul fast float %2285, %2187
  %2289 = fadd fast float %2286, %2162
  %2290 = fadd fast float %2287, %2163
  %2291 = fadd fast float %2288, %2164
  %2292 = fadd fast float %2209, %2173
  %2293 = fsub fast float %2292, %2226
  %2294 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2295 = fsub fast float %2294, %2173
  %2296 = fmul fast float %2295, %2187
  %2297 = fadd fast float %2296, %2173
  br label %2351

; <label>:2298                                    ; preds = %2186
  %2299 = and i32 %2189, 134217728
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2335, label %2301

; <label>:2301                                    ; preds = %2298
  %2302 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2303 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2304 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %2305 = fadd fast float %2302, -5.000000e-01
  %2306 = fadd fast float %2303, -5.000000e-01
  %2307 = fadd fast float %2304, -5.000000e-01
  %2308 = fmul fast float %2305, %2187
  %2309 = fmul fast float %2306, %2187
  %2310 = fmul fast float %2307, %2187
  %2311 = fadd fast float %2308, 5.000000e-01
  %2312 = fadd fast float %2309, 5.000000e-01
  %2313 = fadd fast float %2310, 5.000000e-01
  %2314 = call float @dx.op.unary.f32(i32 24, float %2162)  ; Sqrt(value)
  %2315 = call float @dx.op.unary.f32(i32 24, float %2163)  ; Sqrt(value)
  %2316 = call float @dx.op.unary.f32(i32 24, float %2164)  ; Sqrt(value)
  %2317 = fmul fast float %2311, 2.000000e+00
  %2318 = fsub fast float 1.000000e+00, %2317
  %2319 = fmul fast float %2318, %2314
  %2320 = fadd fast float %2319, %2317
  %2321 = fmul fast float %2320, %2314
  %2322 = fmul fast float %2312, 2.000000e+00
  %2323 = fsub fast float 1.000000e+00, %2322
  %2324 = fmul fast float %2323, %2315
  %2325 = fadd fast float %2324, %2322
  %2326 = fmul fast float %2325, %2315
  %2327 = fmul fast float %2313, 2.000000e+00
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = fmul fast float %2328, %2316
  %2330 = fadd fast float %2329, %2327
  %2331 = fmul fast float %2330, %2316
  %2332 = fmul fast float %2321, %2321
  %2333 = fmul fast float %2326, %2326
  %2334 = fmul fast float %2331, %2331
  br label %2351

; <label>:2335                                    ; preds = %2298
  %2336 = fmul fast float %277, %277
  %2337 = fmul fast float %281, %281
  %2338 = fmul fast float %285, %285
  %2339 = fadd fast float %2336, -1.000000e+00
  %2340 = fadd fast float %2337, -1.000000e+00
  %2341 = fadd fast float %2338, -1.000000e+00
  %2342 = fmul fast float %2187, %2339
  %2343 = fmul fast float %2187, %2340
  %2344 = fmul fast float %2187, %2341
  %2345 = fadd fast float %2342, 1.000000e+00
  %2346 = fadd fast float %2343, 1.000000e+00
  %2347 = fadd fast float %2344, 1.000000e+00
  %2348 = fmul fast float %2345, %2162
  %2349 = fmul fast float %2346, %2163
  %2350 = fmul fast float %2347, %2164
  br label %2351

; <label>:2351                                    ; preds = %2335, %2301, %2192, %2148
  %2352 = phi float [ %2297, %2192 ], [ %2173, %2301 ], [ %2173, %2335 ], [ 0x3FA23C0BE0000000, %2148 ]
  %2353 = phi float [ %2289, %2192 ], [ %2332, %2301 ], [ %2348, %2335 ], [ 1.000000e+00, %2148 ]
  %2354 = phi float [ %2290, %2192 ], [ %2333, %2301 ], [ %2349, %2335 ], [ 1.000000e+00, %2148 ]
  %2355 = phi float [ %2291, %2192 ], [ %2334, %2301 ], [ %2350, %2335 ], [ 1.000000e+00, %2148 ]
  %2356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.i32 %2356, 1
  %2358 = and i32 %2357, 1
  %2359 = icmp ne i32 %2358, 0
  %2360 = add i32 %35, 356
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 32
  %2364 = icmp ne i32 %2363, 0
  %2365 = and i1 %2359, %2364
  %2366 = select i1 %2365, float 1.000000e+00, float %2353
  %2367 = select i1 %2365, float 0x3FD3333340000000, float %2354
  %2368 = select i1 %2365, float 0x3FD3333340000000, float %2355
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 32
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2445, label %2373

; <label>:2373                                    ; preds = %2351
  %2374 = add i32 %35, 124
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %35, 384
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = add i32 %2379, 0
  %2381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2381, %dx.types.Handle %70, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = extractvalue %dx.types.ResRet.f32 %2382, 2
  %2386 = extractvalue %dx.types.ResRet.f32 %2382, 3
  %2387 = and i32 %2376, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = lshr i32 %2376, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = lshr i32 %2376, 16
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, 0x3F70101000000000
  %2396 = fmul fast float %2383, %2388
  %2397 = fadd fast float %2396, %2391
  %2398 = fmul fast float %2397, 0x3F70101000000000
  %2399 = fadd fast float %2384, -5.000000e-01
  %2400 = fadd fast float %2386, -5.000000e-01
  %2401 = fmul fast float %2399, %2395
  %2402 = fmul fast float %2400, %2395
  %2403 = fadd fast float %2401, 5.000000e-01
  %2404 = fadd fast float %2402, 5.000000e-01
  %2405 = fmul fast float %2403, 2.000000e+00
  %2406 = fadd fast float %2405, -1.000000e+00
  %2407 = fmul fast float %2404, 2.000000e+00
  %2408 = fadd fast float %2407, -1.000000e+00
  %2409 = fadd fast float %2406, %2408
  %2410 = fmul fast float %2409, 5.000000e-01
  %2411 = fsub fast float %2406, %2408
  %2412 = fmul fast float %2411, 5.000000e-01
  %2413 = call float @dx.op.unary.f32(i32 6, float %2410)  ; FAbs(value)
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = call float @dx.op.unary.f32(i32 6, float %2412)  ; FAbs(value)
  %2416 = fsub fast float %2414, %2415
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2412, float %2416, float %2410, float %2412, float %2416)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = call float @dx.op.unary.f32(i32 25, float %2417)  ; Rsqrt(value)
  %2419 = fmul fast float %2410, %2418
  %2420 = fmul fast float %2412, %2418
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 67108864
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2441, label %2425

; <label>:2425                                    ; preds = %2373
  %2426 = add i32 %35, 312
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 65535
  %2430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2429)  ; LegacyF16ToF32(value)
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %2432, 65535
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = lshr i32 %2428, 16
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = fsub fast float %2398, %2436
  %2438 = fmul fast float %2437, %2430
  %2439 = fadd fast float %2438, %2434
  %2440 = call float @dx.op.unary.f32(i32 7, float %2439)  ; Saturate(value)
  br label %2441

; <label>:2441                                    ; preds = %2425, %2373
  %2442 = phi float [ %2440, %2425 ], [ %2398, %2373 ]
  %2443 = call float @dx.op.dot2.f32(i32 54, float %2419, float %2420, float %1862, float %1863)  ; Dot2(ax,ay,bx,by)
  %2444 = call float @dx.op.dot2.f32(i32 54, float %2419, float %2420, float %1864, float %1865)  ; Dot2(ax,ay,bx,by)
  br label %2445

; <label>:2445                                    ; preds = %2441, %2351
  %2446 = phi float [ %2442, %2441 ], [ 0x3FD6666660000000, %2351 ]
  %2447 = phi float [ %2443, %2441 ], [ 0.000000e+00, %2351 ]
  %2448 = phi float [ %2444, %2441 ], [ 0.000000e+00, %2351 ]
  %2449 = phi float [ %2385, %2441 ], [ 1.000000e+00, %2351 ]
  %2450 = add i32 %35, 192
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = lshr i32 %2452, 22
  %2454 = shl nuw nsw i32 %2453, 5
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 64
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2493, label %2460

; <label>:2460                                    ; preds = %2445
  %2461 = add i32 %35, 400
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = add i32 %2463, 0
  %2465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 131072
  %2469 = icmp eq i32 %2468, 0
  %2470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2465, %dx.types.Handle %70, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2471 = extractvalue %dx.types.ResRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.ResRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.ResRet.f32 %2470, 2
  %2474 = fmul fast float %2471, %265
  %2475 = fmul fast float %2472, %268
  %2476 = fmul fast float %2473, %271
  br i1 %2469, label %2483, label %2477

; <label>:2477                                    ; preds = %2460
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = fmul fast float %2479, %2474
  %2481 = fmul fast float %2479, %2475
  %2482 = fmul fast float %2479, %2476
  br label %2483

; <label>:2483                                    ; preds = %2477, %2460
  %2484 = phi float [ %2480, %2477 ], [ %2474, %2460 ]
  %2485 = phi float [ %2481, %2477 ], [ %2475, %2460 ]
  %2486 = phi float [ %2482, %2477 ], [ %2476, %2460 ]
  %2487 = fmul fast float %2484, %2455
  %2488 = select i1 %175, float %2487, float %2484
  %2489 = call float @dx.op.dot3.f32(i32 55, float %2488, float %2485, float %2486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2490 = select i1 %175, float 0.000000e+00, float %2484
  %2491 = select i1 %175, float %2489, float %2485
  %2492 = select i1 %175, float 0.000000e+00, float %2486
  br label %2493

; <label>:2493                                    ; preds = %2483, %2445
  %2494 = phi float [ %2490, %2483 ], [ 0.000000e+00, %2445 ]
  %2495 = phi float [ %2491, %2483 ], [ 0.000000e+00, %2445 ]
  %2496 = phi float [ %2492, %2483 ], [ 0.000000e+00, %2445 ]
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 1024
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2531, label %2501

; <label>:2501                                    ; preds = %2493
  %2502 = add i32 %35, 184
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = fmul fast float %2506, 0x3F70101020000000
  %2508 = lshr i32 %2504, 8
  %2509 = and i32 %2508, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = lshr i32 %2504, 16
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = fmul fast float %2507, %2507
  %2517 = fmul fast float %2511, %2511
  %2518 = fmul fast float %2515, %2515
  %2519 = add i32 %35, 464
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2523, %dx.types.Handle %71, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = fmul fast float %2516, %2525
  %2529 = fmul fast float %2517, %2526
  %2530 = fmul fast float %2518, %2527
  br label %2531

; <label>:2531                                    ; preds = %2501, %2493
  %2532 = phi float [ %2528, %2501 ], [ 0.000000e+00, %2493 ]
  %2533 = phi float [ %2529, %2501 ], [ 0.000000e+00, %2493 ]
  %2534 = phi float [ %2530, %2501 ], [ 0.000000e+00, %2493 ]
  %2535 = fcmp fast ogt float %2532, 0.000000e+00
  %2536 = fcmp fast ogt float %2533, 0.000000e+00
  %2537 = fcmp fast ogt float %2534, 0.000000e+00
  %2538 = call float @dx.op.unary.f32(i32 23, float %2532)  ; Log(value)
  %2539 = call float @dx.op.unary.f32(i32 23, float %2533)  ; Log(value)
  %2540 = call float @dx.op.unary.f32(i32 23, float %2534)  ; Log(value)
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = lshr i32 %2542, 7
  %2544 = and i32 %2543, 32752
  %2545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2544)  ; LegacyF16ToF32(value)
  %2546 = fmul fast float %2538, 0xBFE62E4300000000
  %2547 = fmul fast float %2546, %2545
  %2548 = fmul fast float %2539, 0xBFE62E4300000000
  %2549 = fmul fast float %2548, %2545
  %2550 = fmul fast float %2540, 0xBFE62E4300000000
  %2551 = fmul fast float %2550, %2545
  %2552 = select i1 %2535, float %2547, float 1.270000e+02
  %2553 = select i1 %2536, float %2549, float 1.270000e+02
  %2554 = select i1 %2537, float %2551, float 1.270000e+02
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 10240
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2579, label %2559

; <label>:2559                                    ; preds = %2531
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 2048
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2579, label %2564

; <label>:2564                                    ; preds = %2559
  %2565 = add i32 %35, 480
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = add i32 %2567, 0
  %2569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2569, %dx.types.Handle %71, float %1958, float %1959, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 3
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = shl i32 %2573, 4
  %2575 = and i32 %2574, 32752
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = fmul fast float %2576, %2571
  %2578 = call float @dx.op.binary.f32(i32 35, float %2577, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2579

; <label>:2579                                    ; preds = %2564, %2559, %2531
  %2580 = phi float [ %2578, %2564 ], [ 0x3F70101020000000, %2559 ], [ 0x3F70101020000000, %2531 ]
  %2581 = add i32 %35, 128
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = lshr i32 %2583, 8
  %2587 = and i32 %2586, 255
  %2588 = uitofp i32 %2587 to float
  %2589 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2590 = fmul fast float %2588, %2589
  %2591 = fadd fast float %2590, %2585
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  br i1 %1850, label %2594, label %2629

; <label>:2594                                    ; preds = %2579
  %2595 = fmul fast float %2580, 2.000000e+00
  %2596 = fcmp fast olt float %2552, 1.270000e+02
  %2597 = fcmp fast olt float %2553, 1.270000e+02
  %2598 = fcmp fast olt float %2554, 1.270000e+02
  %2599 = fmul fast float %2552, 0xBFF7154760000000
  %2600 = fmul fast float %2599, %2595
  %2601 = fmul fast float %2553, 0xBFF7154760000000
  %2602 = fmul fast float %2601, %2595
  %2603 = fmul fast float %2554, 0xBFF7154760000000
  %2604 = fmul fast float %2603, %2595
  %2605 = call float @dx.op.unary.f32(i32 21, float %2600)  ; Exp(value)
  %2606 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2607 = call float @dx.op.unary.f32(i32 21, float %2604)  ; Exp(value)
  %2608 = call float @dx.op.unary.f32(i32 7, float %2605)  ; Saturate(value)
  %2609 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2610 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2611 = fadd fast float %2608, -1.000000e+00
  %2612 = select i1 %2596, float %2611, float -1.000000e+00
  %2613 = fadd fast float %2609, -1.000000e+00
  %2614 = select i1 %2597, float %2613, float -1.000000e+00
  %2615 = fadd fast float %2610, -1.000000e+00
  %2616 = select i1 %2598, float %2615, float -1.000000e+00
  %2617 = fmul fast float %2612, %2146
  %2618 = fmul fast float %2614, %2146
  %2619 = fmul fast float %2616, %2146
  %2620 = fadd fast float %2617, 1.000000e+00
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fmul fast float %2620, %1839
  %2624 = fmul fast float %2621, %1840
  %2625 = fmul fast float %2622, %1841
  %2626 = fmul fast float %2620, %1842
  %2627 = fmul fast float %2621, %1843
  %2628 = fmul fast float %2622, %1844
  br label %2629

; <label>:2629                                    ; preds = %2594, %2579
  %2630 = phi float [ %2623, %2594 ], [ %1839, %2579 ]
  %2631 = phi float [ %2624, %2594 ], [ %1840, %2579 ]
  %2632 = phi float [ %2625, %2594 ], [ %1841, %2579 ]
  %2633 = phi float [ %2626, %2594 ], [ %1842, %2579 ]
  %2634 = phi float [ %2627, %2594 ], [ %1843, %2579 ]
  %2635 = phi float [ %2628, %2594 ], [ %1844, %2579 ]
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 3
  %2639 = icmp eq i32 %2638, 3
  br i1 %2639, label %2718, label %2640

; <label>:2640                                    ; preds = %2629
  %2641 = and i32 %2637, 16
  %2642 = icmp ne i32 %2641, 0
  %2643 = select i1 %2642, float %2146, float 0.000000e+00
  %2644 = icmp eq i32 %2638, 0
  br i1 %2644, label %2645, label %2673

; <label>:2645                                    ; preds = %2640
  %2646 = and i32 %2637, 64
  %2647 = icmp ne i32 %2646, 0
  %2648 = select i1 %2647, float %2146, float 0.000000e+00
  %2649 = fsub fast float %2366, %2630
  %2650 = fsub fast float %2367, %2631
  %2651 = fsub fast float %2368, %2632
  %2652 = fmul fast float %2643, %2649
  %2653 = fmul fast float %2643, %2650
  %2654 = fmul fast float %2643, %2651
  %2655 = fadd fast float %2652, %2630
  %2656 = fadd fast float %2653, %2631
  %2657 = fadd fast float %2654, %2632
  %2658 = fsub fast float %2352, %1845
  %2659 = fmul fast float %2643, %2658
  %2660 = fadd fast float %2659, %1845
  %2661 = fsub fast float %2494, %2633
  %2662 = fsub fast float %2495, %2634
  %2663 = fsub fast float %2496, %2635
  %2664 = fmul fast float %2648, %2661
  %2665 = fmul fast float %2648, %2662
  %2666 = fmul fast float %2648, %2663
  %2667 = fadd fast float %2664, %2633
  %2668 = fadd fast float %2665, %2634
  %2669 = fadd fast float %2666, %2635
  %2670 = fsub fast float %2593, %1848
  %2671 = fmul fast float %2643, %2670
  %2672 = fadd fast float %2671, %1848
  br label %2718

; <label>:2673                                    ; preds = %2640
  %2674 = icmp eq i32 %2638, 1
  br i1 %2674, label %2675, label %2688

; <label>:2675                                    ; preds = %2673
  %2676 = fadd fast float %2366, -1.000000e+00
  %2677 = fadd fast float %2367, -1.000000e+00
  %2678 = fadd fast float %2368, -1.000000e+00
  %2679 = fmul fast float %2643, %2676
  %2680 = fmul fast float %2643, %2677
  %2681 = fmul fast float %2643, %2678
  %2682 = fadd fast float %2679, 1.000000e+00
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fadd fast float %2681, 1.000000e+00
  %2685 = fmul fast float %2682, %2630
  %2686 = fmul fast float %2683, %2631
  %2687 = fmul fast float %2684, %2632
  br label %2718

; <label>:2688                                    ; preds = %2673
  %2689 = icmp eq i32 %2638, 2
  br i1 %2689, label %2690, label %2718

; <label>:2690                                    ; preds = %2688
  %2691 = call float @dx.op.unary.f32(i32 24, float %2366)  ; Sqrt(value)
  %2692 = call float @dx.op.unary.f32(i32 24, float %2367)  ; Sqrt(value)
  %2693 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2694 = fadd fast float %2691, -5.000000e-01
  %2695 = fadd fast float %2692, -5.000000e-01
  %2696 = fadd fast float %2693, -5.000000e-01
  %2697 = fmul fast float %2694, %2643
  %2698 = fmul fast float %2695, %2643
  %2699 = fmul fast float %2696, %2643
  %2700 = fadd fast float %2697, 5.000000e-01
  %2701 = fadd fast float %2698, 5.000000e-01
  %2702 = fadd fast float %2699, 5.000000e-01
  %2703 = fmul fast float %2700, 2.000000e+00
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = fmul fast float %2704, %2630
  %2706 = fadd fast float %2705, %2703
  %2707 = fmul fast float %2706, %2630
  %2708 = fmul fast float %2701, 2.000000e+00
  %2709 = fsub fast float 1.000000e+00, %2708
  %2710 = fmul fast float %2709, %2631
  %2711 = fadd fast float %2710, %2708
  %2712 = fmul fast float %2711, %2631
  %2713 = fmul fast float %2702, 2.000000e+00
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = fmul fast float %2714, %2632
  %2716 = fadd fast float %2715, %2713
  %2717 = fmul fast float %2716, %2632
  br label %2718

; <label>:2718                                    ; preds = %2690, %2688, %2675, %2645, %2629
  %2719 = phi float [ %2630, %2629 ], [ %2707, %2690 ], [ %2630, %2688 ], [ %2685, %2675 ], [ %2655, %2645 ]
  %2720 = phi float [ %2631, %2629 ], [ %2712, %2690 ], [ %2631, %2688 ], [ %2686, %2675 ], [ %2656, %2645 ]
  %2721 = phi float [ %2632, %2629 ], [ %2717, %2690 ], [ %2632, %2688 ], [ %2687, %2675 ], [ %2657, %2645 ]
  %2722 = phi float [ %2633, %2629 ], [ %2633, %2690 ], [ %2633, %2688 ], [ %2633, %2675 ], [ %2667, %2645 ]
  %2723 = phi float [ %2634, %2629 ], [ %2634, %2690 ], [ %2634, %2688 ], [ %2634, %2675 ], [ %2668, %2645 ]
  %2724 = phi float [ %2635, %2629 ], [ %2635, %2690 ], [ %2635, %2688 ], [ %2635, %2675 ], [ %2669, %2645 ]
  %2725 = phi float [ %1845, %2629 ], [ %1845, %2690 ], [ %1845, %2688 ], [ %1845, %2675 ], [ %2660, %2645 ]
  %2726 = phi float [ %1848, %2629 ], [ %1848, %2690 ], [ %1848, %2688 ], [ %1848, %2675 ], [ %2672, %2645 ]
  %2727 = and i32 %2637, 12
  %2728 = icmp eq i32 %2727, 12
  br i1 %2728, label %2801, label %2729

; <label>:2729                                    ; preds = %2718
  %2730 = and i32 %2637, 2097184
  %2731 = icmp eq i32 %2730, 2097184
  %2732 = select i1 %2731, float %2146, float 0.000000e+00
  %2733 = and i32 %2637, 4194336
  %2734 = icmp eq i32 %2733, 4194336
  %2735 = select i1 %2734, float %2146, float 0.000000e+00
  %2736 = and i32 %2637, 8388640
  %2737 = icmp eq i32 %2736, 8388640
  %2738 = select i1 %2737, float %2146, float 0.000000e+00
  %2739 = icmp eq i32 %2727, 0
  br i1 %2739, label %2740, label %2753

; <label>:2740                                    ; preds = %2729
  %2741 = fsub fast float %2447, %1837
  %2742 = fsub fast float %2448, %1838
  %2743 = fmul fast float %2732, %2741
  %2744 = fmul fast float %2732, %2742
  %2745 = fadd fast float %2743, %1837
  %2746 = fadd fast float %2744, %1838
  %2747 = fsub fast float %2449, %1847
  %2748 = fmul fast float %2735, %2747
  %2749 = fadd fast float %2748, %1847
  %2750 = fsub fast float %2446, %1846
  %2751 = fmul fast float %2738, %2750
  %2752 = fadd fast float %2751, %1846
  br label %2801

; <label>:2753                                    ; preds = %2729
  %2754 = icmp eq i32 %2727, 4
  br i1 %2754, label %2755, label %2787

; <label>:2755                                    ; preds = %2753
  %2756 = fmul fast float %2732, %2447
  %2757 = fmul fast float %2732, %2448
  %2758 = fadd fast float %2756, %1837
  %2759 = fadd fast float %2757, %1838
  %2760 = call float @dx.op.binary.f32(i32 36, float %1847, float %2449)  ; FMin(a,b)
  %2761 = fsub fast float %2760, %1847
  %2762 = fmul fast float %2761, %2735
  %2763 = fadd fast float %2762, %1847
  %2764 = fadd fast float %2446, %1846
  %2765 = fmul fast float %2764, 0x3FF337FAE0000000
  %2766 = fmul fast float %1846, %1846
  %2767 = fmul fast float %2446, %2446
  %2768 = fadd fast float %2767, %2766
  %2769 = fmul fast float %2768, 0x3FE5152B00000000
  %2770 = fmul fast float %1846, 0xBFCC1F85E0000000
  %2771 = fmul fast float %2770, %2446
  %2772 = fadd fast float %2771, 0xBFE1363700000000
  %2773 = fadd fast float %2772, %2765
  %2774 = fsub fast float %2773, %2769
  %2775 = fmul fast float %2764, 0x3FBA6F0D00000000
  %2776 = fmul fast float %2768, 0x3FD0432880000000
  %2777 = fmul fast float %1846, 0xBFEF110800000000
  %2778 = fmul fast float %2777, %2446
  %2779 = fadd fast float %2778, 1.000000e+00
  %2780 = fsub fast float %2779, %2775
  %2781 = fadd fast float %2780, %2776
  %2782 = fdiv fast float %2774, %2781
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = fsub fast float %2783, %1846
  %2785 = fmul fast float %2784, %2738
  %2786 = fadd fast float %2785, %1846
  br label %2801

; <label>:2787                                    ; preds = %2753
  %2788 = icmp eq i32 %2727, 8
  br i1 %2788, label %2789, label %2801

; <label>:2789                                    ; preds = %2787
  %2790 = fmul fast float %2732, %2447
  %2791 = fmul fast float %2732, %2448
  %2792 = fadd fast float %2790, %1837
  %2793 = fadd fast float %2791, %1838
  %2794 = call float @dx.op.binary.f32(i32 36, float %1847, float %2449)  ; FMin(a,b)
  %2795 = fsub fast float %2794, %1847
  %2796 = fmul fast float %2795, %2735
  %2797 = fadd fast float %2796, %1847
  %2798 = fsub fast float %2446, %1846
  %2799 = fmul fast float %2738, %2798
  %2800 = fadd fast float %2799, %1846
  br label %2801

; <label>:2801                                    ; preds = %2789, %2787, %2755, %2740, %2718, %2145, %1849, %1836
  %2802 = phi float [ %1837, %2718 ], [ %1837, %2145 ], [ %1837, %1836 ], [ %2792, %2789 ], [ %1837, %2787 ], [ %2758, %2755 ], [ %2745, %2740 ], [ %1837, %1849 ]
  %2803 = phi float [ %1838, %2718 ], [ %1838, %2145 ], [ %1838, %1836 ], [ %2793, %2789 ], [ %1838, %2787 ], [ %2759, %2755 ], [ %2746, %2740 ], [ %1838, %1849 ]
  %2804 = phi float [ %2719, %2718 ], [ %1839, %2145 ], [ %1839, %1836 ], [ %2719, %2789 ], [ %2719, %2787 ], [ %2719, %2755 ], [ %2719, %2740 ], [ %1839, %1849 ]
  %2805 = phi float [ %2720, %2718 ], [ %1840, %2145 ], [ %1840, %1836 ], [ %2720, %2789 ], [ %2720, %2787 ], [ %2720, %2755 ], [ %2720, %2740 ], [ %1840, %1849 ]
  %2806 = phi float [ %2721, %2718 ], [ %1841, %2145 ], [ %1841, %1836 ], [ %2721, %2789 ], [ %2721, %2787 ], [ %2721, %2755 ], [ %2721, %2740 ], [ %1841, %1849 ]
  %2807 = phi float [ %2722, %2718 ], [ %1842, %2145 ], [ %1842, %1836 ], [ %2722, %2789 ], [ %2722, %2787 ], [ %2722, %2755 ], [ %2722, %2740 ], [ %1842, %1849 ]
  %2808 = phi float [ %2723, %2718 ], [ %1843, %2145 ], [ %1843, %1836 ], [ %2723, %2789 ], [ %2723, %2787 ], [ %2723, %2755 ], [ %2723, %2740 ], [ %1843, %1849 ]
  %2809 = phi float [ %2724, %2718 ], [ %1844, %2145 ], [ %1844, %1836 ], [ %2724, %2789 ], [ %2724, %2787 ], [ %2724, %2755 ], [ %2724, %2740 ], [ %1844, %1849 ]
  %2810 = phi float [ %2725, %2718 ], [ %1845, %2145 ], [ %1845, %1836 ], [ %2725, %2789 ], [ %2725, %2787 ], [ %2725, %2755 ], [ %2725, %2740 ], [ %1845, %1849 ]
  %2811 = phi float [ %1846, %2718 ], [ %1846, %2145 ], [ %1846, %1836 ], [ %2800, %2789 ], [ %1846, %2787 ], [ %2786, %2755 ], [ %2752, %2740 ], [ %1846, %1849 ]
  %2812 = phi float [ %1847, %2718 ], [ %1847, %2145 ], [ %1847, %1836 ], [ %2797, %2789 ], [ %1847, %2787 ], [ %2763, %2755 ], [ %2749, %2740 ], [ %1847, %1849 ]
  %2813 = phi float [ %2726, %2718 ], [ %1848, %2145 ], [ %1848, %1836 ], [ %2726, %2789 ], [ %2726, %2787 ], [ %2726, %2755 ], [ %2726, %2740 ], [ %1848, %1849 ]
  br i1 %352, label %3766, label %2814

; <label>:2814                                    ; preds = %2801
  %2815 = icmp ult i32 %403, 4
  %2816 = add i32 %35, 72
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %35, 76
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = or i32 %2821, %2818
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %3766, label %2824

; <label>:2824                                    ; preds = %2814
  %2825 = and i32 %2818, 262144
  %2826 = icmp ne i32 %2825, 0
  %2827 = select i1 %2826, float %37, float 1.000000e+00
  %2828 = select i1 %2826, float %38, float 0.000000e+00
  %2829 = select i1 %2826, float %39, float 0.000000e+00
  %2830 = select i1 %2826, float %40, float 1.000000e+00
  %2831 = select i1 %2826, float %41, float %62
  %2832 = select i1 %2826, float %42, float %63
  %2833 = add i32 %35, 332
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = lshr i32 %2835, 16
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = fmul fast float %2837, 0x3F50624DE0000000
  %2839 = add i32 %35, 136
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = lshr i32 %2841, 16
  %2843 = and i32 %2842, 255
  %2844 = lshr i32 %2841, 24
  %2845 = add i32 %35, 340
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = and i32 %2847, 65535
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = lshr i32 %2847, 16
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = add i32 %35, 80
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = lshr i32 %2854, 22
  %2856 = shl nuw nsw i32 %2855, 5
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = shl i32 %2854, 4
  %2859 = and i32 %2858, 32752
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = lshr i32 %2854, 7
  %2862 = and i32 %2861, 32752
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2866 = fmul fast float %2865, 1.000000e+03
  %2867 = fmul fast float %342, %2866
  %2868 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2869 = fadd fast float %2868, %332
  %2870 = fmul fast float %343, %2866
  %2871 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2872 = fadd fast float %2871, %334
  %2873 = fmul fast float %2838, %2866
  %2874 = call float @dx.op.unary.f32(i32 22, float %2873)  ; Frc(value)
  %2875 = fmul fast float %2874, 0x401921FB60000000
  %2876 = fadd fast float %2875, %2857
  %2877 = call float @dx.op.unary.f32(i32 13, float %2876)  ; Sin(value)
  %2878 = call float @dx.op.unary.f32(i32 12, float %2876)  ; Cos(value)
  %2879 = fsub fast float -0.000000e+00, %2877
  %2880 = fadd fast float %2831, -5.000000e-01
  %2881 = fadd fast float %2832, -5.000000e-01
  %2882 = fmul fast float %2849, %2880
  %2883 = fmul fast float %2851, %2881
  %2884 = fadd fast float %2882, 5.000000e-01
  %2885 = fadd fast float %2883, 5.000000e-01
  %2886 = fmul fast float %2860, %2884
  %2887 = fmul fast float %2863, %2885
  %2888 = fmul fast float %2878, %2886
  %2889 = call float @dx.op.tertiary.f32(i32 46, float %2879, float %2887, float %2888)  ; FMad(a,b,c)
  %2890 = fmul fast float %2877, %2886
  %2891 = call float @dx.op.tertiary.f32(i32 46, float %2878, float %2887, float %2890)  ; FMad(a,b,c)
  %2892 = fadd fast float %2869, %2889
  %2893 = fadd fast float %2872, %2891
  %2894 = icmp ugt i32 %2843, 1
  %2895 = icmp ugt i32 %2841, 33554431
  %2896 = or i1 %2895, %2894
  br i1 %2896, label %2897, label %2922

; <label>:2897                                    ; preds = %2824
  %2898 = add i32 %35, 276
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = lshr i32 %2900, 16
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = fmul fast float %2865, %2902
  %2904 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2905 = mul nuw nsw i32 %2843, %2844
  %2906 = uitofp i32 %2905 to float
  %2907 = fmul fast float %2904, %2906
  %2908 = call float @dx.op.unary.f32(i32 27, float %2907)  ; Round_ni(value)
  %2909 = fptoui float %2908 to i32
  %2910 = urem i32 %2909, %2843
  %2911 = udiv i32 %2909, %2844
  %2912 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2913 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2914 = uitofp i32 %2910 to float
  %2915 = uitofp i32 %2911 to float
  %2916 = fadd fast float %2912, %2914
  %2917 = fadd fast float %2913, %2915
  %2918 = uitofp i32 %2843 to float
  %2919 = uitofp i32 %2844 to float
  %2920 = fdiv fast float %2916, %2918
  %2921 = fdiv fast float %2917, %2919
  br label %2922

; <label>:2922                                    ; preds = %2897, %2824
  %2923 = phi float [ %2920, %2897 ], [ %2892, %2824 ]
  %2924 = phi float [ %2921, %2897 ], [ %2893, %2824 ]
  %2925 = and i32 %2818, 16777216
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %3036, label %2927

; <label>:2927                                    ; preds = %2922
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.CBufRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.CBufRet.f32 %2928, 2
  %2932 = fadd fast float %2929, %133
  %2933 = fadd fast float %2930, %134
  %2934 = fadd fast float %2931, %135
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2938 = icmp eq i32 %36, 65535
  br i1 %2938, label %3033, label %2939

; <label>:2939                                    ; preds = %2927
  %2940 = lshr i32 %36, 1
  %2941 = shl i32 %2940, 2
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %36, 1
  %2945 = icmp ne i32 %2944, 0
  %2946 = lshr i32 %2943, 16
  %2947 = and i32 %2943, 65535
  %2948 = select i1 %2945, i32 %2946, i32 %2947
  %2949 = icmp eq i32 %2948, 65535
  br i1 %2949, label %3029, label %2950

; <label>:2950                                    ; preds = %2939
  %2951 = mul nuw nsw i32 %2948, 40
  %2952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.ResRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.ResRet.f32 %2952, 2
  %2956 = add nuw nsw i32 %2951, 12
  %2957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.ResRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.ResRet.f32 %2957, 2
  %2961 = add nuw nsw i32 %2951, 24
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = add nuw nsw i32 %2951, 36
  %2967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = fsub fast float %2932, %2953
  %2970 = fsub fast float %2933, %2954
  %2971 = fsub fast float %2934, %2955
  %2972 = fmul fast float %2968, %2969
  %2973 = fmul fast float %2968, %2970
  %2974 = fmul fast float %2968, %2971
  %2975 = call float @dx.op.unary.f32(i32 27, float %2972)  ; Round_ni(value)
  %2976 = call float @dx.op.unary.f32(i32 27, float %2973)  ; Round_ni(value)
  %2977 = call float @dx.op.unary.f32(i32 27, float %2974)  ; Round_ni(value)
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fadd fast float %2976, 5.000000e-01
  %2980 = fadd fast float %2977, 5.000000e-01
  %2981 = fmul fast float %2978, %2958
  %2982 = fmul fast float %2979, %2959
  %2983 = fmul fast float %2980, %2960
  %2984 = shl i32 %36, 2
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = add i32 %2986, 0
  %2988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2989 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2990 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2991 = call float @dx.op.unary.f32(i32 22, float %2983)  ; Frc(value)
  %2992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2988, %dx.types.Handle %30, float %2989, float %2990, float %2991, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = fmul fast float %2993, 1.023000e+03
  %2997 = fmul fast float %2994, 1.023000e+03
  %2998 = fmul fast float %2995, 1.023000e+03
  %2999 = fadd fast float %2996, 5.000000e-01
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = fadd fast float %2998, 5.000000e-01
  %3002 = call float @dx.op.unary.f32(i32 27, float %2999)  ; Round_ni(value)
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3005 = fsub fast float %2972, %2975
  %3006 = fsub fast float %2973, %2976
  %3007 = fsub fast float %2974, %2977
  %3008 = fmul fast float %3005, 7.500000e-01
  %3009 = fmul fast float %3006, 7.500000e-01
  %3010 = fmul fast float %3007, 7.500000e-01
  %3011 = fadd fast float %2975, 1.250000e-01
  %3012 = fadd fast float %3011, %3008
  %3013 = fadd fast float %3012, %3002
  %3014 = fadd fast float %2976, 1.250000e-01
  %3015 = fadd fast float %3014, %3009
  %3016 = fadd fast float %3015, %3003
  %3017 = fadd fast float %2977, 1.250000e-01
  %3018 = fadd fast float %3017, %3010
  %3019 = fadd fast float %3018, %3004
  %3020 = fmul fast float %3013, %2963
  %3021 = fmul fast float %3016, %2964
  %3022 = fmul fast float %3019, %2965
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3026, %dx.types.Handle %28, float %3020, float %3021, float %3022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  br label %3029

; <label>:3029                                    ; preds = %2950, %2939
  %3030 = phi float [ %3028, %2950 ], [ -1.000000e+00, %2939 ]
  %3031 = fadd fast float %3030, %2937
  %3032 = call float @dx.op.unary.f32(i32 7, float %3031)  ; Saturate(value)
  br label %3033

; <label>:3033                                    ; preds = %3029, %2927
  %3034 = phi float [ %3032, %3029 ], [ %2937, %2927 ]
  %3035 = fmul fast float %3034, %398
  br label %3036

; <label>:3036                                    ; preds = %3033, %2922
  %3037 = phi float [ %3035, %3033 ], [ %398, %2922 ]
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 256
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3088, label %3042

; <label>:3042                                    ; preds = %3036
  %3043 = add i32 %35, 436
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = add i32 %3045, 0
  %3047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3047, %dx.types.Handle %71, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = add i32 %35, 148
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = shl i32 %3052, 4
  %3054 = and i32 %3053, 32752
  %3055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3054)  ; LegacyF16ToF32(value)
  %3056 = lshr i32 %3052, 7
  %3057 = and i32 %3056, 32752
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = fsub fast float 1.000000e+00, %3037
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3061 = bitcast float %3037 to i32
  %3062 = sitofp i32 %3061 to float
  %3063 = fadd fast float %3062, 0xC1CFBF8940000000
  %3064 = fmul fast float %3058, %3063
  %3065 = fadd fast float %3064, 0x41CFBF8940000000
  %3066 = fptosi float %3065 to i32
  %3067 = bitcast i32 %3066 to float
  %3068 = bitcast float %3060 to i32
  %3069 = sitofp i32 %3068 to float
  %3070 = fadd fast float %3069, 0xC1CFBF8940000000
  %3071 = fmul fast float %3070, %3058
  %3072 = fadd fast float %3071, 0x41CFBF8940000000
  %3073 = fptosi float %3072 to i32
  %3074 = bitcast i32 %3073 to float
  %3075 = fmul fast float %3067, %3055
  %3076 = fmul fast float %3074, %3055
  %3077 = fsub fast float %3060, %3075
  %3078 = fadd fast float %3076, %3060
  %3079 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3080 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3081 = fsub fast float %3049, %3079
  %3082 = fsub fast float %3080, %3079
  %3083 = bitcast float %3082 to i32
  %3084 = sub nsw i32 2129859010, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = fmul fast float %3085, %3081
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  br label %3088

; <label>:3088                                    ; preds = %3042, %3036
  %3089 = phi float [ %3087, %3042 ], [ %3037, %3036 ]
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = and i32 %3091, 128
  %3093 = icmp eq i32 %3092, 0
  br i1 %3093, label %3110, label %3094

; <label>:3094                                    ; preds = %3088
  %3095 = add i32 %35, 420
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %3097, 0
  %3099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3099, %dx.types.Handle %71, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 524288
  %3105 = icmp ne i32 %3104, 0
  %3106 = fcmp fast ogt float %3101, 0x3FE0101020000000
  %3107 = select i1 %3106, float 1.000000e+00, float 0.000000e+00
  %3108 = select i1 %3105, float %3107, float %3101
  %3109 = fmul fast float %3108, %3089
  br label %3110

; <label>:3110                                    ; preds = %3094, %3088
  %3111 = phi float [ %3109, %3094 ], [ %3089, %3088 ]
  %3112 = fcmp fast ult float %3111, 0x3F70101020000000
  br i1 %3112, label %3766, label %3113

; <label>:3113                                    ; preds = %3110
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 16
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3316, label %3118

; <label>:3118                                    ; preds = %3113
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %35, 372
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %3123, 0
  %3125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3125, %dx.types.Handle %70, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.ResRet.f32 %3126, 3
  %3131 = and i32 %3120, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3120, 8
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = fmul fast float %3130, %3132
  %3137 = fadd fast float %3136, %3135
  %3138 = fmul fast float %3137, 0x3F70101000000000
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 512
  %3142 = icmp eq i32 %3141, 0
  br i1 %3142, label %3151, label %3143

; <label>:3143                                    ; preds = %3118
  %3144 = add i32 %35, 452
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = add i32 %3146, 0
  %3148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3148, %dx.types.Handle %71, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  br label %3151

; <label>:3151                                    ; preds = %3143, %3118
  %3152 = phi float [ %3150, %3143 ], [ 1.000000e+00, %3118 ]
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 33554432
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3263, label %3157

; <label>:3157                                    ; preds = %3151
  %3158 = add i32 %35, 272
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 65535
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = lshr i32 %3160, 16
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = add i32 %35, 276
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 65535
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = lshr i32 %3171, 24
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 0x3F70101020000000
  %3175 = and i32 %3171, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101020000000
  %3178 = lshr i32 %3171, 8
  %3179 = and i32 %3178, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = fmul fast float %3180, 0x3F70101020000000
  %3182 = lshr i32 %3171, 16
  %3183 = and i32 %3182, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = add i32 %35, 268
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = lshr i32 %3188, 24
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = and i32 %3188, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = lshr i32 %3188, 8
  %3196 = and i32 %3195, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = lshr i32 %3188, 16
  %3200 = and i32 %3199, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = bitcast float %3127 to i32
  %3204 = ashr i32 %3203, 1
  %3205 = sub nsw i32 1597463174, %3204
  %3206 = bitcast i32 %3205 to float
  %3207 = fmul fast float %3127, 5.000000e-01
  %3208 = fmul fast float %3206, %3206
  %3209 = fmul fast float %3208, %3207
  %3210 = fsub fast float 1.500000e+00, %3209
  %3211 = fmul fast float %3206, %3127
  %3212 = fmul fast float %3211, %3210
  %3213 = bitcast float %3128 to i32
  %3214 = ashr i32 %3213, 1
  %3215 = sub nsw i32 1597463174, %3214
  %3216 = bitcast i32 %3215 to float
  %3217 = fmul fast float %3128, 5.000000e-01
  %3218 = fmul fast float %3216, %3216
  %3219 = fmul fast float %3218, %3217
  %3220 = fsub fast float 1.500000e+00, %3219
  %3221 = fmul fast float %3216, %3128
  %3222 = fmul fast float %3221, %3220
  %3223 = bitcast float %3129 to i32
  %3224 = ashr i32 %3223, 1
  %3225 = sub nsw i32 1597463174, %3224
  %3226 = bitcast i32 %3225 to float
  %3227 = fmul fast float %3129, 5.000000e-01
  %3228 = fmul fast float %3226, %3226
  %3229 = fmul fast float %3228, %3227
  %3230 = fsub fast float 1.500000e+00, %3229
  %3231 = fmul fast float %3226, %3129
  %3232 = fmul fast float %3231, %3230
  %3233 = fsub fast float %3212, %3194
  %3234 = fsub fast float %3222, %3198
  %3235 = fsub fast float %3232, %3202
  %3236 = fmul fast float %3233, %3162
  %3237 = fmul fast float %3234, %3164
  %3238 = fmul fast float %3235, %3169
  %3239 = fadd fast float %3236, %3177
  %3240 = fadd fast float %3237, %3181
  %3241 = fadd fast float %3238, %3185
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3245 = fmul fast float %3242, %3242
  %3246 = fmul fast float %3243, %3243
  %3247 = fmul fast float %3244, %3244
  %3248 = fsub fast float %3245, %3127
  %3249 = fsub fast float %3246, %3128
  %3250 = fsub fast float %3247, %3129
  %3251 = fmul fast float %3248, %3152
  %3252 = fmul fast float %3249, %3152
  %3253 = fmul fast float %3250, %3152
  %3254 = fadd fast float %3251, %3127
  %3255 = fadd fast float %3252, %3128
  %3256 = fadd fast float %3253, %3129
  %3257 = fadd fast float %3174, %3138
  %3258 = fsub fast float %3257, %3191
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fsub fast float %3259, %3138
  %3261 = fmul fast float %3260, %3152
  %3262 = fadd fast float %3261, %3138
  br label %3316

; <label>:3263                                    ; preds = %3151
  %3264 = and i32 %3154, 134217728
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3300, label %3266

; <label>:3266                                    ; preds = %3263
  %3267 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3269 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fadd fast float %3269, -5.000000e-01
  %3273 = fmul fast float %3270, %3152
  %3274 = fmul fast float %3271, %3152
  %3275 = fmul fast float %3272, %3152
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = fadd fast float %3275, 5.000000e-01
  %3279 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3282 = fmul fast float %3276, 2.000000e+00
  %3283 = fsub fast float 1.000000e+00, %3282
  %3284 = fmul fast float %3283, %3279
  %3285 = fadd fast float %3284, %3282
  %3286 = fmul fast float %3285, %3279
  %3287 = fmul fast float %3277, 2.000000e+00
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %3288, %3280
  %3290 = fadd fast float %3289, %3287
  %3291 = fmul fast float %3290, %3280
  %3292 = fmul fast float %3278, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3281
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3281
  %3297 = fmul fast float %3286, %3286
  %3298 = fmul fast float %3291, %3291
  %3299 = fmul fast float %3296, %3296
  br label %3316

; <label>:3300                                    ; preds = %3263
  %3301 = fmul fast float %319, %319
  %3302 = fmul fast float %323, %323
  %3303 = fmul fast float %327, %327
  %3304 = fadd fast float %3301, -1.000000e+00
  %3305 = fadd fast float %3302, -1.000000e+00
  %3306 = fadd fast float %3303, -1.000000e+00
  %3307 = fmul fast float %3152, %3304
  %3308 = fmul fast float %3152, %3305
  %3309 = fmul fast float %3152, %3306
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fmul fast float %3310, %3127
  %3314 = fmul fast float %3311, %3128
  %3315 = fmul fast float %3312, %3129
  br label %3316

; <label>:3316                                    ; preds = %3300, %3266, %3157, %3113
  %3317 = phi float [ %3262, %3157 ], [ %3138, %3266 ], [ %3138, %3300 ], [ 0x3FA23C0BE0000000, %3113 ]
  %3318 = phi float [ %3254, %3157 ], [ %3297, %3266 ], [ %3313, %3300 ], [ 1.000000e+00, %3113 ]
  %3319 = phi float [ %3255, %3157 ], [ %3298, %3266 ], [ %3314, %3300 ], [ 1.000000e+00, %3113 ]
  %3320 = phi float [ %3256, %3157 ], [ %3299, %3266 ], [ %3315, %3300 ], [ 1.000000e+00, %3113 ]
  %3321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.i32 %3321, 1
  %3323 = and i32 %3322, 1
  %3324 = icmp ne i32 %3323, 0
  %3325 = add i32 %35, 356
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = and i32 %3327, 32
  %3329 = icmp ne i32 %3328, 0
  %3330 = and i1 %3324, %3329
  %3331 = select i1 %3330, float 1.000000e+00, float %3318
  %3332 = select i1 %3330, float 0x3FD3333340000000, float %3319
  %3333 = select i1 %3330, float 0x3FD3333340000000, float %3320
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = and i32 %3335, 32
  %3337 = icmp eq i32 %3336, 0
  br i1 %3337, label %3410, label %3338

; <label>:3338                                    ; preds = %3316
  %3339 = add i32 %35, 140
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = add i32 %35, 388
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = add i32 %3344, 0
  %3346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3346, %dx.types.Handle %70, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = extractvalue %dx.types.ResRet.f32 %3347, 3
  %3352 = and i32 %3341, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = lshr i32 %3341, 8
  %3355 = and i32 %3354, 255
  %3356 = uitofp i32 %3355 to float
  %3357 = lshr i32 %3341, 16
  %3358 = and i32 %3357, 255
  %3359 = uitofp i32 %3358 to float
  %3360 = fmul fast float %3359, 0x3F70101000000000
  %3361 = fmul fast float %3348, %3353
  %3362 = fadd fast float %3361, %3356
  %3363 = fmul fast float %3362, 0x3F70101000000000
  %3364 = fadd fast float %3349, -5.000000e-01
  %3365 = fadd fast float %3351, -5.000000e-01
  %3366 = fmul fast float %3364, %3360
  %3367 = fmul fast float %3365, %3360
  %3368 = fadd fast float %3366, 5.000000e-01
  %3369 = fadd fast float %3367, 5.000000e-01
  %3370 = fmul fast float %3368, 2.000000e+00
  %3371 = fadd fast float %3370, -1.000000e+00
  %3372 = fmul fast float %3369, 2.000000e+00
  %3373 = fadd fast float %3372, -1.000000e+00
  %3374 = fadd fast float %3371, %3373
  %3375 = fmul fast float %3374, 5.000000e-01
  %3376 = fsub fast float %3371, %3373
  %3377 = fmul fast float %3376, 5.000000e-01
  %3378 = call float @dx.op.unary.f32(i32 6, float %3375)  ; FAbs(value)
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = call float @dx.op.unary.f32(i32 6, float %3377)  ; FAbs(value)
  %3381 = fsub fast float %3379, %3380
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3377, float %3381, float %3375, float %3377, float %3381)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = call float @dx.op.unary.f32(i32 25, float %3382)  ; Rsqrt(value)
  %3384 = fmul fast float %3375, %3383
  %3385 = fmul fast float %3377, %3383
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 67108864
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3406, label %3390

; <label>:3390                                    ; preds = %3338
  %3391 = add i32 %35, 328
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 65535
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 65535
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = lshr i32 %3393, 16
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = fsub fast float %3363, %3401
  %3403 = fmul fast float %3402, %3395
  %3404 = fadd fast float %3403, %3399
  %3405 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  br label %3406

; <label>:3406                                    ; preds = %3390, %3338
  %3407 = phi float [ %3405, %3390 ], [ %3363, %3338 ]
  %3408 = call float @dx.op.dot2.f32(i32 54, float %3384, float %3385, float %2827, float %2828)  ; Dot2(ax,ay,bx,by)
  %3409 = call float @dx.op.dot2.f32(i32 54, float %3384, float %3385, float %2829, float %2830)  ; Dot2(ax,ay,bx,by)
  br label %3410

; <label>:3410                                    ; preds = %3406, %3316
  %3411 = phi float [ %3407, %3406 ], [ 0x3FD6666660000000, %3316 ]
  %3412 = phi float [ %3408, %3406 ], [ 0.000000e+00, %3316 ]
  %3413 = phi float [ %3409, %3406 ], [ 0.000000e+00, %3316 ]
  %3414 = phi float [ %3350, %3406 ], [ 1.000000e+00, %3316 ]
  %3415 = add i32 %35, 208
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = lshr i32 %3417, 22
  %3419 = shl nuw nsw i32 %3418, 5
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = and i32 %3422, 64
  %3424 = icmp eq i32 %3423, 0
  br i1 %3424, label %3458, label %3425

; <label>:3425                                    ; preds = %3410
  %3426 = add i32 %35, 404
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = add i32 %3428, 0
  %3430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 131072
  %3434 = icmp eq i32 %3433, 0
  %3435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3430, %dx.types.Handle %70, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3439 = fmul fast float %3436, %307
  %3440 = fmul fast float %3437, %310
  %3441 = fmul fast float %3438, %313
  br i1 %3434, label %3448, label %3442

; <label>:3442                                    ; preds = %3425
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3445 = fmul fast float %3444, %3439
  %3446 = fmul fast float %3444, %3440
  %3447 = fmul fast float %3444, %3441
  br label %3448

; <label>:3448                                    ; preds = %3442, %3425
  %3449 = phi float [ %3445, %3442 ], [ %3439, %3425 ]
  %3450 = phi float [ %3446, %3442 ], [ %3440, %3425 ]
  %3451 = phi float [ %3447, %3442 ], [ %3441, %3425 ]
  %3452 = fmul fast float %3449, %3420
  %3453 = select i1 %175, float %3452, float %3449
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3450, float %3451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = select i1 %175, float 0.000000e+00, float %3449
  %3456 = select i1 %175, float %3454, float %3450
  %3457 = select i1 %175, float 0.000000e+00, float %3451
  br label %3458

; <label>:3458                                    ; preds = %3448, %3410
  %3459 = phi float [ %3455, %3448 ], [ 0.000000e+00, %3410 ]
  %3460 = phi float [ %3456, %3448 ], [ 0.000000e+00, %3410 ]
  %3461 = phi float [ %3457, %3448 ], [ 0.000000e+00, %3410 ]
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 1024
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3496, label %3466

; <label>:3466                                    ; preds = %3458
  %3467 = add i32 %35, 200
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 255
  %3471 = uitofp i32 %3470 to float
  %3472 = fmul fast float %3471, 0x3F70101020000000
  %3473 = lshr i32 %3469, 8
  %3474 = and i32 %3473, 255
  %3475 = uitofp i32 %3474 to float
  %3476 = fmul fast float %3475, 0x3F70101020000000
  %3477 = lshr i32 %3469, 16
  %3478 = and i32 %3477, 255
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3479, 0x3F70101020000000
  %3481 = fmul fast float %3472, %3472
  %3482 = fmul fast float %3476, %3476
  %3483 = fmul fast float %3480, %3480
  %3484 = add i32 %35, 468
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = add i32 %3486, 0
  %3488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3488, %dx.types.Handle %71, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = fmul fast float %3481, %3490
  %3494 = fmul fast float %3482, %3491
  %3495 = fmul fast float %3483, %3492
  br label %3496

; <label>:3496                                    ; preds = %3466, %3458
  %3497 = phi float [ %3493, %3466 ], [ 0.000000e+00, %3458 ]
  %3498 = phi float [ %3494, %3466 ], [ 0.000000e+00, %3458 ]
  %3499 = phi float [ %3495, %3466 ], [ 0.000000e+00, %3458 ]
  %3500 = fcmp fast ogt float %3497, 0.000000e+00
  %3501 = fcmp fast ogt float %3498, 0.000000e+00
  %3502 = fcmp fast ogt float %3499, 0.000000e+00
  %3503 = call float @dx.op.unary.f32(i32 23, float %3497)  ; Log(value)
  %3504 = call float @dx.op.unary.f32(i32 23, float %3498)  ; Log(value)
  %3505 = call float @dx.op.unary.f32(i32 23, float %3499)  ; Log(value)
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = lshr i32 %3507, 7
  %3509 = and i32 %3508, 32752
  %3510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3509)  ; LegacyF16ToF32(value)
  %3511 = fmul fast float %3503, 0xBFE62E4300000000
  %3512 = fmul fast float %3511, %3510
  %3513 = fmul fast float %3504, 0xBFE62E4300000000
  %3514 = fmul fast float %3513, %3510
  %3515 = fmul fast float %3505, 0xBFE62E4300000000
  %3516 = fmul fast float %3515, %3510
  %3517 = select i1 %3500, float %3512, float 1.270000e+02
  %3518 = select i1 %3501, float %3514, float 1.270000e+02
  %3519 = select i1 %3502, float %3516, float 1.270000e+02
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = and i32 %3521, 10240
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3544, label %3524

; <label>:3524                                    ; preds = %3496
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 2048
  %3528 = icmp eq i32 %3527, 0
  br i1 %3528, label %3544, label %3529

; <label>:3529                                    ; preds = %3524
  %3530 = add i32 %35, 484
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = add i32 %3532, 0
  %3534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3534, %dx.types.Handle %71, float %2923, float %2924, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 3
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = shl i32 %3538, 4
  %3540 = and i32 %3539, 32752
  %3541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3540)  ; LegacyF16ToF32(value)
  %3542 = fmul fast float %3541, %3536
  %3543 = call float @dx.op.binary.f32(i32 35, float %3542, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3544

; <label>:3544                                    ; preds = %3529, %3524, %3496
  %3545 = phi float [ %3543, %3529 ], [ 0x3F70101020000000, %3524 ], [ 0x3F70101020000000, %3496 ]
  %3546 = add i32 %35, 144
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 255
  %3550 = uitofp i32 %3549 to float
  %3551 = lshr i32 %3548, 8
  %3552 = and i32 %3551, 255
  %3553 = uitofp i32 %3552 to float
  %3554 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3332, float %3333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3555 = fmul fast float %3553, %3554
  %3556 = fadd fast float %3555, %3550
  %3557 = fmul fast float %3556, 0x3F70101020000000
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  br i1 %2815, label %3559, label %3594

; <label>:3559                                    ; preds = %3544
  %3560 = fmul fast float %3545, 2.000000e+00
  %3561 = fcmp fast olt float %3517, 1.270000e+02
  %3562 = fcmp fast olt float %3518, 1.270000e+02
  %3563 = fcmp fast olt float %3519, 1.270000e+02
  %3564 = fmul fast float %3517, 0xBFF7154760000000
  %3565 = fmul fast float %3564, %3560
  %3566 = fmul fast float %3518, 0xBFF7154760000000
  %3567 = fmul fast float %3566, %3560
  %3568 = fmul fast float %3519, 0xBFF7154760000000
  %3569 = fmul fast float %3568, %3560
  %3570 = call float @dx.op.unary.f32(i32 21, float %3565)  ; Exp(value)
  %3571 = call float @dx.op.unary.f32(i32 21, float %3567)  ; Exp(value)
  %3572 = call float @dx.op.unary.f32(i32 21, float %3569)  ; Exp(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = fadd fast float %3573, -1.000000e+00
  %3577 = select i1 %3561, float %3576, float -1.000000e+00
  %3578 = fadd fast float %3574, -1.000000e+00
  %3579 = select i1 %3562, float %3578, float -1.000000e+00
  %3580 = fadd fast float %3575, -1.000000e+00
  %3581 = select i1 %3563, float %3580, float -1.000000e+00
  %3582 = fmul fast float %3577, %3111
  %3583 = fmul fast float %3579, %3111
  %3584 = fmul fast float %3581, %3111
  %3585 = fadd fast float %3582, 1.000000e+00
  %3586 = fadd fast float %3583, 1.000000e+00
  %3587 = fadd fast float %3584, 1.000000e+00
  %3588 = fmul fast float %3585, %2804
  %3589 = fmul fast float %3586, %2805
  %3590 = fmul fast float %3587, %2806
  %3591 = fmul fast float %3585, %2807
  %3592 = fmul fast float %3586, %2808
  %3593 = fmul fast float %3587, %2809
  br label %3594

; <label>:3594                                    ; preds = %3559, %3544
  %3595 = phi float [ %3588, %3559 ], [ %2804, %3544 ]
  %3596 = phi float [ %3589, %3559 ], [ %2805, %3544 ]
  %3597 = phi float [ %3590, %3559 ], [ %2806, %3544 ]
  %3598 = phi float [ %3591, %3559 ], [ %2807, %3544 ]
  %3599 = phi float [ %3592, %3559 ], [ %2808, %3544 ]
  %3600 = phi float [ %3593, %3559 ], [ %2809, %3544 ]
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = and i32 %3602, 3
  %3604 = icmp eq i32 %3603, 3
  br i1 %3604, label %3683, label %3605

; <label>:3605                                    ; preds = %3594
  %3606 = and i32 %3602, 16
  %3607 = icmp ne i32 %3606, 0
  %3608 = select i1 %3607, float %3111, float 0.000000e+00
  %3609 = icmp eq i32 %3603, 0
  br i1 %3609, label %3610, label %3638

; <label>:3610                                    ; preds = %3605
  %3611 = and i32 %3602, 64
  %3612 = icmp ne i32 %3611, 0
  %3613 = select i1 %3612, float %3111, float 0.000000e+00
  %3614 = fsub fast float %3331, %3595
  %3615 = fsub fast float %3332, %3596
  %3616 = fsub fast float %3333, %3597
  %3617 = fmul fast float %3608, %3614
  %3618 = fmul fast float %3608, %3615
  %3619 = fmul fast float %3608, %3616
  %3620 = fadd fast float %3617, %3595
  %3621 = fadd fast float %3618, %3596
  %3622 = fadd fast float %3619, %3597
  %3623 = fsub fast float %3317, %2810
  %3624 = fmul fast float %3608, %3623
  %3625 = fadd fast float %3624, %2810
  %3626 = fsub fast float %3459, %3598
  %3627 = fsub fast float %3460, %3599
  %3628 = fsub fast float %3461, %3600
  %3629 = fmul fast float %3613, %3626
  %3630 = fmul fast float %3613, %3627
  %3631 = fmul fast float %3613, %3628
  %3632 = fadd fast float %3629, %3598
  %3633 = fadd fast float %3630, %3599
  %3634 = fadd fast float %3631, %3600
  %3635 = fsub fast float %3558, %2813
  %3636 = fmul fast float %3608, %3635
  %3637 = fadd fast float %3636, %2813
  br label %3683

; <label>:3638                                    ; preds = %3605
  %3639 = icmp eq i32 %3603, 1
  br i1 %3639, label %3640, label %3653

; <label>:3640                                    ; preds = %3638
  %3641 = fadd fast float %3331, -1.000000e+00
  %3642 = fadd fast float %3332, -1.000000e+00
  %3643 = fadd fast float %3333, -1.000000e+00
  %3644 = fmul fast float %3608, %3641
  %3645 = fmul fast float %3608, %3642
  %3646 = fmul fast float %3608, %3643
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fadd fast float %3645, 1.000000e+00
  %3649 = fadd fast float %3646, 1.000000e+00
  %3650 = fmul fast float %3647, %3595
  %3651 = fmul fast float %3648, %3596
  %3652 = fmul fast float %3649, %3597
  br label %3683

; <label>:3653                                    ; preds = %3638
  %3654 = icmp eq i32 %3603, 2
  br i1 %3654, label %3655, label %3683

; <label>:3655                                    ; preds = %3653
  %3656 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3657 = call float @dx.op.unary.f32(i32 24, float %3332)  ; Sqrt(value)
  %3658 = call float @dx.op.unary.f32(i32 24, float %3333)  ; Sqrt(value)
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fmul fast float %3659, %3608
  %3663 = fmul fast float %3660, %3608
  %3664 = fmul fast float %3661, %3608
  %3665 = fadd fast float %3662, 5.000000e-01
  %3666 = fadd fast float %3663, 5.000000e-01
  %3667 = fadd fast float %3664, 5.000000e-01
  %3668 = fmul fast float %3665, 2.000000e+00
  %3669 = fsub fast float 1.000000e+00, %3668
  %3670 = fmul fast float %3669, %3595
  %3671 = fadd fast float %3670, %3668
  %3672 = fmul fast float %3671, %3595
  %3673 = fmul fast float %3666, 2.000000e+00
  %3674 = fsub fast float 1.000000e+00, %3673
  %3675 = fmul fast float %3674, %3596
  %3676 = fadd fast float %3675, %3673
  %3677 = fmul fast float %3676, %3596
  %3678 = fmul fast float %3667, 2.000000e+00
  %3679 = fsub fast float 1.000000e+00, %3678
  %3680 = fmul fast float %3679, %3597
  %3681 = fadd fast float %3680, %3678
  %3682 = fmul fast float %3681, %3597
  br label %3683

; <label>:3683                                    ; preds = %3655, %3653, %3640, %3610, %3594
  %3684 = phi float [ %3595, %3594 ], [ %3672, %3655 ], [ %3595, %3653 ], [ %3650, %3640 ], [ %3620, %3610 ]
  %3685 = phi float [ %3596, %3594 ], [ %3677, %3655 ], [ %3596, %3653 ], [ %3651, %3640 ], [ %3621, %3610 ]
  %3686 = phi float [ %3597, %3594 ], [ %3682, %3655 ], [ %3597, %3653 ], [ %3652, %3640 ], [ %3622, %3610 ]
  %3687 = phi float [ %3598, %3594 ], [ %3598, %3655 ], [ %3598, %3653 ], [ %3598, %3640 ], [ %3632, %3610 ]
  %3688 = phi float [ %3599, %3594 ], [ %3599, %3655 ], [ %3599, %3653 ], [ %3599, %3640 ], [ %3633, %3610 ]
  %3689 = phi float [ %3600, %3594 ], [ %3600, %3655 ], [ %3600, %3653 ], [ %3600, %3640 ], [ %3634, %3610 ]
  %3690 = phi float [ %2810, %3594 ], [ %2810, %3655 ], [ %2810, %3653 ], [ %2810, %3640 ], [ %3625, %3610 ]
  %3691 = phi float [ %2813, %3594 ], [ %2813, %3655 ], [ %2813, %3653 ], [ %2813, %3640 ], [ %3637, %3610 ]
  %3692 = and i32 %3602, 12
  %3693 = icmp eq i32 %3692, 12
  br i1 %3693, label %3766, label %3694

; <label>:3694                                    ; preds = %3683
  %3695 = and i32 %3602, 2097184
  %3696 = icmp eq i32 %3695, 2097184
  %3697 = select i1 %3696, float %3111, float 0.000000e+00
  %3698 = and i32 %3602, 4194336
  %3699 = icmp eq i32 %3698, 4194336
  %3700 = select i1 %3699, float %3111, float 0.000000e+00
  %3701 = and i32 %3602, 8388640
  %3702 = icmp eq i32 %3701, 8388640
  %3703 = select i1 %3702, float %3111, float 0.000000e+00
  %3704 = icmp eq i32 %3692, 0
  br i1 %3704, label %3705, label %3718

; <label>:3705                                    ; preds = %3694
  %3706 = fsub fast float %3412, %2802
  %3707 = fsub fast float %3413, %2803
  %3708 = fmul fast float %3697, %3706
  %3709 = fmul fast float %3697, %3707
  %3710 = fadd fast float %3708, %2802
  %3711 = fadd fast float %3709, %2803
  %3712 = fsub fast float %3414, %2812
  %3713 = fmul fast float %3700, %3712
  %3714 = fadd fast float %3713, %2812
  %3715 = fsub fast float %3411, %2811
  %3716 = fmul fast float %3703, %3715
  %3717 = fadd fast float %3716, %2811
  br label %3766

; <label>:3718                                    ; preds = %3694
  %3719 = icmp eq i32 %3692, 4
  br i1 %3719, label %3720, label %3752

; <label>:3720                                    ; preds = %3718
  %3721 = fmul fast float %3697, %3412
  %3722 = fmul fast float %3697, %3413
  %3723 = fadd fast float %3721, %2802
  %3724 = fadd fast float %3722, %2803
  %3725 = call float @dx.op.binary.f32(i32 36, float %2812, float %3414)  ; FMin(a,b)
  %3726 = fsub fast float %3725, %2812
  %3727 = fmul fast float %3726, %3700
  %3728 = fadd fast float %3727, %2812
  %3729 = fadd fast float %3411, %2811
  %3730 = fmul fast float %3729, 0x3FF337FAE0000000
  %3731 = fmul fast float %2811, %2811
  %3732 = fmul fast float %3411, %3411
  %3733 = fadd fast float %3732, %3731
  %3734 = fmul fast float %3733, 0x3FE5152B00000000
  %3735 = fmul fast float %2811, 0xBFCC1F85E0000000
  %3736 = fmul fast float %3735, %3411
  %3737 = fadd fast float %3736, 0xBFE1363700000000
  %3738 = fadd fast float %3737, %3730
  %3739 = fsub fast float %3738, %3734
  %3740 = fmul fast float %3729, 0x3FBA6F0D00000000
  %3741 = fmul fast float %3733, 0x3FD0432880000000
  %3742 = fmul fast float %2811, 0xBFEF110800000000
  %3743 = fmul fast float %3742, %3411
  %3744 = fadd fast float %3743, 1.000000e+00
  %3745 = fsub fast float %3744, %3740
  %3746 = fadd fast float %3745, %3741
  %3747 = fdiv fast float %3739, %3746
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fsub fast float %3748, %2811
  %3750 = fmul fast float %3749, %3703
  %3751 = fadd fast float %3750, %2811
  br label %3766

; <label>:3752                                    ; preds = %3718
  %3753 = icmp eq i32 %3692, 8
  br i1 %3753, label %3754, label %3766

; <label>:3754                                    ; preds = %3752
  %3755 = fmul fast float %3697, %3412
  %3756 = fmul fast float %3697, %3413
  %3757 = fadd fast float %3755, %2802
  %3758 = fadd fast float %3756, %2803
  %3759 = call float @dx.op.binary.f32(i32 36, float %2812, float %3414)  ; FMin(a,b)
  %3760 = fsub fast float %3759, %2812
  %3761 = fmul fast float %3760, %3700
  %3762 = fadd fast float %3761, %2812
  %3763 = fsub fast float %3411, %2811
  %3764 = fmul fast float %3703, %3763
  %3765 = fadd fast float %3764, %2811
  br label %3766

; <label>:3766                                    ; preds = %3754, %3752, %3720, %3705, %3683, %3110, %2814, %2801
  %3767 = phi float [ %2802, %3683 ], [ %2802, %3110 ], [ %2802, %2801 ], [ %2802, %2814 ], [ %3710, %3705 ], [ %3723, %3720 ], [ %2802, %3752 ], [ %3757, %3754 ]
  %3768 = phi float [ %2803, %3683 ], [ %2803, %3110 ], [ %2803, %2801 ], [ %2803, %2814 ], [ %3711, %3705 ], [ %3724, %3720 ], [ %2803, %3752 ], [ %3758, %3754 ]
  %3769 = phi float [ %3684, %3683 ], [ %2804, %3110 ], [ %2804, %2801 ], [ %2804, %2814 ], [ %3684, %3705 ], [ %3684, %3720 ], [ %3684, %3752 ], [ %3684, %3754 ]
  %3770 = phi float [ %3685, %3683 ], [ %2805, %3110 ], [ %2805, %2801 ], [ %2805, %2814 ], [ %3685, %3705 ], [ %3685, %3720 ], [ %3685, %3752 ], [ %3685, %3754 ]
  %3771 = phi float [ %3686, %3683 ], [ %2806, %3110 ], [ %2806, %2801 ], [ %2806, %2814 ], [ %3686, %3705 ], [ %3686, %3720 ], [ %3686, %3752 ], [ %3686, %3754 ]
  %3772 = phi float [ %3687, %3683 ], [ %2807, %3110 ], [ %2807, %2801 ], [ %2807, %2814 ], [ %3687, %3705 ], [ %3687, %3720 ], [ %3687, %3752 ], [ %3687, %3754 ]
  %3773 = phi float [ %3688, %3683 ], [ %2808, %3110 ], [ %2808, %2801 ], [ %2808, %2814 ], [ %3688, %3705 ], [ %3688, %3720 ], [ %3688, %3752 ], [ %3688, %3754 ]
  %3774 = phi float [ %3689, %3683 ], [ %2809, %3110 ], [ %2809, %2801 ], [ %2809, %2814 ], [ %3689, %3705 ], [ %3689, %3720 ], [ %3689, %3752 ], [ %3689, %3754 ]
  %3775 = phi float [ %3690, %3683 ], [ %2810, %3110 ], [ %2810, %2801 ], [ %2810, %2814 ], [ %3690, %3705 ], [ %3690, %3720 ], [ %3690, %3752 ], [ %3690, %3754 ]
  %3776 = phi float [ %2811, %3683 ], [ %2811, %3110 ], [ %2811, %2801 ], [ %2811, %2814 ], [ %3717, %3705 ], [ %3751, %3720 ], [ %2811, %3752 ], [ %3765, %3754 ]
  %3777 = phi float [ %2812, %3683 ], [ %2812, %3110 ], [ %2812, %2801 ], [ %2812, %2814 ], [ %3714, %3705 ], [ %3728, %3720 ], [ %2812, %3752 ], [ %3762, %3754 ]
  %3778 = phi float [ %3691, %3683 ], [ %2813, %3110 ], [ %2813, %2801 ], [ %2813, %2814 ], [ %3691, %3705 ], [ %3691, %3720 ], [ %3691, %3752 ], [ %3691, %3754 ]
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3781 = call float @dx.op.dot2.f32(i32 54, float %3767, float %3768, float %3767, float %3768)  ; Dot2(ax,ay,bx,by)
  %3782 = fmul fast float %3781, 0x3FE3333340000000
  %3783 = fsub fast float 1.000000e+00, %3782
  %3784 = call float @dx.op.dot3.f32(i32 55, float %3767, float %3768, float %3783, float %3767, float %3768, float %3783)  ; Dot3(ax,ay,az,bx,by,bz)
  %3785 = call float @dx.op.unary.f32(i32 25, float %3784)  ; Rsqrt(value)
  %3786 = fmul fast float %3785, %3767
  %3787 = fmul fast float %3785, %3768
  %3788 = fmul fast float %3783, %3785
  %3789 = fmul fast float %3788, %83
  %3790 = fmul fast float %3788, %85
  %3791 = fmul fast float %3788, %87
  %3792 = fmul fast float %3786, %55
  %3793 = fmul fast float %3786, %56
  %3794 = fmul fast float %3786, %57
  %3795 = fadd fast float %3789, %3792
  %3796 = fadd fast float %3790, %3793
  %3797 = fadd fast float %3791, %3794
  %3798 = fmul fast float %97, %3787
  %3799 = fmul fast float %98, %3787
  %3800 = fmul fast float %99, %3787
  %3801 = fadd fast float %3795, %3798
  %3802 = fadd fast float %3796, %3799
  %3803 = fadd fast float %3797, %3800
  %3804 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float %3801, float %3802, float %3803)  ; Dot3(ax,ay,az,bx,by,bz)
  %3805 = call float @dx.op.unary.f32(i32 25, float %3804)  ; Rsqrt(value)
  %3806 = fmul fast float %3801, %3805
  %3807 = fmul fast float %3802, %3805
  %3808 = fmul fast float %3803, %3805
  %3809 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3810 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3811 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3812 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3813 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3814 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3815 = fadd fast float %3809, %133
  %3816 = fadd fast float %3810, %134
  %3817 = fadd fast float %3811, %135
  %3818 = fadd fast float %3812, %133
  %3819 = fadd fast float %3813, %134
  %3820 = fadd fast float %3814, %135
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.CBufRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.CBufRet.f32 %3821, 2
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 2
  %3827 = extractvalue %dx.types.CBufRet.f32 %3825, 3
  %3828 = fmul fast float %3822, %74
  %3829 = fmul fast float %3828, %3826
  %3830 = fmul fast float %3823, %75
  %3831 = fmul fast float %3830, %3827
  %3832 = fptoui float %3829 to i32
  %3833 = fptoui float %3831 to i32
  %3834 = fadd fast float %3822, -1.000000e+00
  %3835 = fadd fast float %3823, -1.000000e+00
  %3836 = fptoui float %3834 to i32
  %3837 = fptoui float %3835 to i32
  %3838 = call i32 @dx.op.binary.i32(i32 40, i32 %3832, i32 %3836)  ; UMin(a,b)
  %3839 = call i32 @dx.op.binary.i32(i32 40, i32 %3833, i32 %3837)  ; UMin(a,b)
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3843 = fmul fast float %3841, %69
  %3844 = fsub fast float %3843, %3842
  %3845 = fadd fast float %3824, -1.000000e+00
  %3846 = call float @dx.op.binary.f32(i32 36, float %3844, float %3845)  ; FMin(a,b)
  %3847 = fptoui float %3846 to i32
  %3848 = fptoui float %3822 to i32
  %3849 = fptoui float %3823 to i32
  %3850 = mul i32 %3847, %3849
  %3851 = add i32 %3850, %3839
  %3852 = mul i32 %3851, %3848
  %3853 = add i32 %3852, %3838
  %3854 = shl i32 %3853, 2
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = and i32 %3856, 1023
  %3858 = lshr i32 %3856, 10
  %3859 = icmp eq i32 %3857, 0
  br i1 %3859, label %4285, label %3860

; <label>:3860                                    ; preds = %3766
  %3861 = and i32 %3856, 1023
  br label %3862

; <label>:3862                                    ; preds = %3988, %3860
  %3863 = phi i32 [ %3938, %3988 ], [ 0, %3860 ]
  %3864 = phi float [ %3989, %3988 ], [ 0.000000e+00, %3860 ]
  %3865 = phi float [ %3990, %3988 ], [ %3780, %3860 ]
  %3866 = phi float [ %3991, %3988 ], [ %3778, %3860 ]
  %3867 = phi float [ %3992, %3988 ], [ 0.000000e+00, %3860 ]
  %3868 = phi float [ %3993, %3988 ], [ 0.000000e+00, %3860 ]
  %3869 = phi float [ %3994, %3988 ], [ %3772, %3860 ]
  %3870 = phi float [ %3995, %3988 ], [ %3773, %3860 ]
  %3871 = phi float [ %3996, %3988 ], [ %3774, %3860 ]
  %3872 = phi float [ %3997, %3988 ], [ %3806, %3860 ]
  %3873 = phi float [ %3998, %3988 ], [ %3807, %3860 ]
  %3874 = phi float [ %3999, %3988 ], [ %3808, %3860 ]
  %3875 = phi float [ %4000, %3988 ], [ %3777, %3860 ]
  %3876 = phi float [ %4001, %3988 ], [ %3776, %3860 ]
  %3877 = phi float [ %4002, %3988 ], [ 0.000000e+00, %3860 ]
  %3878 = phi float [ %4003, %3988 ], [ %3775, %3860 ]
  %3879 = phi float [ %4004, %3988 ], [ %3769, %3860 ]
  %3880 = phi float [ %4005, %3988 ], [ %3770, %3860 ]
  %3881 = phi float [ %4006, %3988 ], [ %3771, %3860 ]
  %3882 = add nuw nsw i32 %3863, %3858
  %3883 = shl i32 %3882, 2
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = shl i32 %3885, 8
  %3887 = or i32 %3886, 48
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = or i32 %3886, 64
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.i32 %3894, 1
  %3897 = or i32 %3886, 80
  %3898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 3
  %3901 = or i32 %3886, 96
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = or i32 %3886, 112
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3910 = or i32 %3886, 128
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = or i32 %3886, 144
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = or i32 %3886, 160
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %3926 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3927 = extractvalue %dx.types.ResRet.f32 %3923, 3
  %3928 = or i32 %3886, 192
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = or i32 %3886, 208
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = or i32 %3886, 248
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = add nuw nsw i32 %3863, 1
  %3939 = bitcast float %3892 to i32
  %3940 = and i32 %3939, 512
  %3941 = icmp eq i32 %3940, 0
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3948 = or i32 %3886, 16
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3955 = or i32 %3886, 32
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = extractvalue %dx.types.ResRet.f32 %3956, 3
  %3961 = call float @dx.op.dot4.f32(i32 56, float %3957, float %3958, float %3959, float %3960, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3962 = call float @dx.op.unary.f32(i32 27, float %3947)  ; Round_ni(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3964 = call float @dx.op.unary.f32(i32 27, float %3954)  ; Round_ni(value)
  %3965 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3966 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3967 = call float @dx.op.unary.f32(i32 27, float %3966)  ; Round_ni(value)
  %3968 = fadd fast float %3965, %3963
  %3969 = fadd fast float %3968, %3967
  %3970 = fcmp fast oeq float %3969, 0.000000e+00
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3973 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %3818, float %3819, float %3820, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3974 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3818, float %3819, float %3820, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3975 = fsub fast float %3971, %3947
  %3976 = fsub fast float %3973, %3947
  %3977 = fsub fast float %3972, %3954
  %3978 = fsub fast float %3974, %3954
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 2
  %3982 = fadd fast float %3981, %3979
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3985 = fcmp fast ogt float %3983, %3984
  %3986 = and i1 %3970, %3985
  %3987 = and i1 %3941, %3986
  br i1 %3987, label %4008, label %3988

; <label>:3988                                    ; preds = %4271, %4089, %4008, %3862
  %3989 = phi float [ %3864, %4008 ], [ %4092, %4089 ], [ %4092, %4271 ], [ %3864, %3862 ]
  %3990 = phi float [ %3865, %4008 ], [ %3865, %4089 ], [ %4246, %4271 ], [ %3865, %3862 ]
  %3991 = phi float [ %3866, %4008 ], [ %3866, %4089 ], [ %4244, %4271 ], [ %3866, %3862 ]
  %3992 = phi float [ %3867, %4008 ], [ %3867, %4089 ], [ %4216, %4271 ], [ %3867, %3862 ]
  %3993 = phi float [ %3868, %4008 ], [ %3868, %4089 ], [ %4214, %4271 ], [ %3868, %3862 ]
  %3994 = phi float [ %3869, %4008 ], [ %3869, %4089 ], [ %4281, %4271 ], [ %3869, %3862 ]
  %3995 = phi float [ %3870, %4008 ], [ %3870, %4089 ], [ %4282, %4271 ], [ %3870, %3862 ]
  %3996 = phi float [ %3871, %4008 ], [ %3871, %4089 ], [ %4283, %4271 ], [ %3871, %3862 ]
  %3997 = phi float [ %3872, %4008 ], [ %3872, %4089 ], [ %4195, %4271 ], [ %3872, %3862 ]
  %3998 = phi float [ %3873, %4008 ], [ %3873, %4089 ], [ %4196, %4271 ], [ %3873, %3862 ]
  %3999 = phi float [ %3874, %4008 ], [ %3874, %4089 ], [ %4197, %4271 ], [ %3874, %3862 ]
  %4000 = phi float [ %3875, %4008 ], [ %3875, %4089 ], [ %4224, %4271 ], [ %3875, %3862 ]
  %4001 = phi float [ %3876, %4008 ], [ %3876, %4089 ], [ %4221, %4271 ], [ %3876, %3862 ]
  %4002 = phi float [ %3877, %4008 ], [ %3877, %4089 ], [ %4218, %4271 ], [ %3877, %3862 ]
  %4003 = phi float [ %3878, %4008 ], [ %3878, %4089 ], [ %4212, %4271 ], [ %3878, %3862 ]
  %4004 = phi float [ %3879, %4008 ], [ %3879, %4089 ], [ %4207, %4271 ], [ %3879, %3862 ]
  %4005 = phi float [ %3880, %4008 ], [ %3880, %4089 ], [ %4208, %4271 ], [ %3880, %3862 ]
  %4006 = phi float [ %3881, %4008 ], [ %3881, %4089 ], [ %4209, %4271 ], [ %3881, %3862 ]
  %4007 = icmp eq i32 %3938, %3861
  br i1 %4007, label %4284, label %3862

; <label>:4008                                    ; preds = %3862
  %4009 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %4010 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %4012 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %4013 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %4014 = extractvalue %dx.types.ResRet.i32 %3894, 3
  %4015 = extractvalue %dx.types.ResRet.i32 %3894, 2
  %4016 = add i32 %4014, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %4018, float %3947, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3975, float %3977, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = fmul fast float %4020, %4013
  %4022 = fadd fast float %4021, %4012
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %3947, %3903
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3954, float %4024)  ; FMad(a,b,c)
  %4026 = fadd fast float %4025, %4011
  %4027 = fmul fast float %3947, %3905
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3954, float %4027)  ; FMad(a,b,c)
  %4029 = fadd fast float %4028, %4010
  %4030 = fmul fast float %3975, %3903
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3977, float %4030)  ; FMad(a,b,c)
  %4032 = fmul fast float %3975, %3905
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3977, float %4032)  ; FMad(a,b,c)
  %4034 = fmul fast float %3976, %3903
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3978, float %4034)  ; FMad(a,b,c)
  %4036 = fmul fast float %3976, %3905
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3978, float %4036)  ; FMad(a,b,c)
  %4038 = add i32 %4015, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4039, %dx.types.Handle %4018, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = and i32 %3939, 1024
  %4043 = icmp ne i32 %4042, 0
  %4044 = fcmp fast ogt float %4041, 0x3FE0101020000000
  %4045 = uitofp i1 %4044 to float
  %4046 = select i1 %4043, float %4045, float %4041
  %4047 = and i32 %3939, 8192
  %4048 = icmp ne i32 %4047, 0
  %4049 = select i1 %4048, float %4009, float 1.000000e+00
  %4050 = fmul fast float %3947, 2.000000e+00
  %4051 = fadd fast float %4050, -1.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4053 = fmul fast float %4052, %3936
  %4054 = fsub fast float %4053, %3936
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %3954, 2.000000e+00
  %4057 = fadd fast float %4056, -1.000000e+00
  %4058 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4059 = fmul fast float %4058, %3937
  %4060 = fsub fast float %4059, %3937
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = fmul fast float %3966, %3899
  %4063 = fsub fast float %4062, %3899
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fmul fast float %4023, %4049
  %4066 = fmul fast float %4065, %4020
  %4067 = fmul fast float %4066, %4055
  %4068 = fmul fast float %4067, %4046
  %4069 = fmul fast float %4068, %4061
  %4070 = fmul fast float %4069, %4064
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4074 = fsub fast float %3983, %4073
  %4075 = fmul fast float %4074, %4072
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %4070, %3900
  %4078 = fadd fast float %4070, %3900
  %4079 = fmul fast float %4078, %3909
  %4080 = fsub fast float %4079, %3909
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = and i32 %3939, 128
  %4083 = icmp ne i32 %4082, 0
  %4084 = select i1 %4083, float %4081, float %4077
  %4085 = fmul fast float %4084, %4076
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = fcmp fast ugt float %4085, %4087
  br i1 %4088, label %4089, label %3988

; <label>:4089                                    ; preds = %4008
  %4090 = select i1 %4048, float %4085, float 0.000000e+00
  %4091 = fadd fast float %4090, %3864
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  br i1 %4048, label %3988, label %4093

; <label>:4093                                    ; preds = %4089
  %4094 = and i32 %3939, 4
  %4095 = and i32 %3939, 8
  %4096 = add i32 %3895, 0
  %4097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4097, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = extractvalue %dx.types.ResRet.f32 %4099, 3
  %4104 = bitcast float %3921 to i32
  %4105 = and i32 %4104, 255
  %4106 = uitofp i32 %4105 to float
  %4107 = lshr i32 %4104, 8
  %4108 = and i32 %4107, 255
  %4109 = uitofp i32 %4108 to float
  %4110 = fmul fast float %4103, %4106
  %4111 = fadd fast float %4110, %4109
  %4112 = fmul fast float %4111, 0x3F70101000000000
  %4113 = add i32 %3896, 0
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4113, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4114, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4120 = bitcast float %3915 to i32
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = lshr i32 %4120, 8
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = lshr i32 %4120, 16
  %4127 = and i32 %4126, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = fmul fast float %4128, 0x3F70101000000000
  %4130 = fmul fast float %4116, %4122
  %4131 = fadd fast float %4130, %4125
  %4132 = fmul fast float %4131, 0x3F70101000000000
  %4133 = fadd fast float %4117, -5.000000e-01
  %4134 = fadd fast float %4119, -5.000000e-01
  %4135 = fmul fast float %4133, %4129
  %4136 = fmul fast float %4134, %4129
  %4137 = fadd fast float %4135, 5.000000e-01
  %4138 = fadd fast float %4136, 5.000000e-01
  %4139 = fmul fast float %4100, %3924
  %4140 = fmul fast float %4101, %3925
  %4141 = fmul fast float %4102, %3926
  %4142 = fmul fast float %4137, 2.000000e+00
  %4143 = fadd fast float %4142, -1.000000e+00
  %4144 = fmul fast float %4138, 2.000000e+00
  %4145 = fadd fast float %4144, -1.000000e+00
  %4146 = fadd fast float %4143, %4145
  %4147 = fmul fast float %4146, 5.000000e-01
  %4148 = fsub fast float %4143, %4145
  %4149 = fmul fast float %4148, 5.000000e-01
  %4150 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4151 = fsub fast float 1.000000e+00, %4150
  %4152 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4153 = fsub fast float %4151, %4152
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4147, float %4149, float %4153, float %4147, float %4149, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 25, float %4154)  ; Rsqrt(value)
  %4156 = fmul fast float %4147, %4155
  %4157 = fmul fast float %4149, %4155
  %4158 = fmul fast float %4155, %4153
  %4159 = fmul fast float %4158, %3889
  %4160 = fmul fast float %4158, %3890
  %4161 = fmul fast float %4158, %3891
  %4162 = fmul fast float %4156, %3912
  %4163 = fmul fast float %4156, %3913
  %4164 = fmul fast float %4156, %3914
  %4165 = fadd fast float %4162, %4159
  %4166 = fadd fast float %4163, %4160
  %4167 = fadd fast float %4164, %4161
  %4168 = fmul fast float %4157, %3918
  %4169 = fmul fast float %4157, %3919
  %4170 = fmul fast float %4157, %3920
  %4171 = fadd fast float %4165, %4168
  %4172 = fadd fast float %4166, %4169
  %4173 = fadd fast float %4167, %4170
  %4174 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4172, float %4173, float %4171, float %4172, float %4173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = call float @dx.op.unary.f32(i32 25, float %4174)  ; Rsqrt(value)
  %4176 = fmul fast float %4171, %4175
  %4177 = fmul fast float %4172, %4175
  %4178 = fmul fast float %4173, %4175
  %4179 = icmp ne i32 %4095, 0
  %4180 = select i1 %4179, float 1.000000e+00, float 0.000000e+00
  %4181 = fmul fast float %4085, %4180
  %4182 = and i32 %3939, 1
  %4183 = icmp eq i32 %4182, 0
  br i1 %4183, label %4184, label %4188

; <label>:4184                                    ; preds = %4093
  %4185 = fsub fast float %4176, %3872
  %4186 = fsub fast float %4177, %3873
  %4187 = fsub fast float %4178, %3874
  br label %4188

; <label>:4188                                    ; preds = %4184, %4093
  %4189 = phi float [ %4185, %4184 ], [ %4176, %4093 ]
  %4190 = phi float [ %4186, %4184 ], [ %4177, %4093 ]
  %4191 = phi float [ %4187, %4184 ], [ %4178, %4093 ]
  %4192 = fmul float %4191, %4181
  %4193 = fmul float %4190, %4181
  %4194 = fmul float %4189, %4181
  %4195 = fadd fast float %4194, %3872
  %4196 = fadd fast float %4193, %3873
  %4197 = fadd fast float %4192, %3874
  %4198 = icmp ne i32 %4094, 0
  %4199 = select i1 %4198, float 1.000000e+00, float 0.000000e+00
  %4200 = fmul fast float %4085, %4199
  %4201 = fsub fast float %4139, %3879
  %4202 = fsub fast float %4140, %3880
  %4203 = fsub fast float %4141, %3881
  %4204 = fmul fast float %4201, %4200
  %4205 = fmul fast float %4202, %4200
  %4206 = fmul fast float %4203, %4200
  %4207 = fadd fast float %4204, %3879
  %4208 = fadd fast float %4205, %3880
  %4209 = fadd fast float %4206, %3881
  %4210 = fsub fast float %4112, %3878
  %4211 = fmul fast float %4210, %4200
  %4212 = fadd fast float %4211, %3878
  %4213 = fmul fast float %4200, %3868
  %4214 = fsub fast float %3868, %4213
  %4215 = fmul fast float %4200, %3867
  %4216 = fsub fast float %3867, %4215
  %4217 = fadd fast float %4085, %3877
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fsub fast float %4132, %3876
  %4220 = fmul fast float %4219, %4181
  %4221 = fadd fast float %4220, %3876
  %4222 = fsub fast float %4118, %3875
  %4223 = fmul fast float %4222, %4181
  %4224 = fadd fast float %4223, %3875
  %4225 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4229 = fmul fast float %4228, %4225
  %4230 = fadd fast float %4229, %4227
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = bitcast float %3927 to i32
  %4233 = and i32 %4232, 65535
  %4234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4233)  ; LegacyF16ToF32(value)
  %4235 = lshr i32 %4232, 16
  %4236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4235)  ; LegacyF16ToF32(value)
  %4237 = fcmp fast oge float %4234, 0.000000e+00
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = select i1 %4237, float %4234, float %4239
  %4241 = fadd fast float %4240, %4236
  %4242 = fsub fast float %4231, %3866
  %4243 = fmul fast float %4242, %4085
  %4244 = fadd fast float %4243, %3866
  %4245 = fmul fast float %4241, %4085
  %4246 = call float @dx.op.binary.f32(i32 35, float %3865, float %4245)  ; FMax(a,b)
  %4247 = and i32 %3939, 16
  %4248 = icmp eq i32 %4247, 0
  br i1 %4248, label %4271, label %4249

; <label>:4249                                    ; preds = %4188
  %4250 = bitcast float %3933 to i32
  %4251 = add i32 %3930, 0
  %4252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4251, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4253 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4252, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.ResRet.f32 %4253, 1
  %4256 = extractvalue %dx.types.ResRet.f32 %4253, 2
  %4257 = and i32 %4250, 65535
  %4258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4257)  ; LegacyF16ToF32(value)
  %4259 = fmul fast float %4254, %3924
  %4260 = fmul fast float %4255, %3925
  %4261 = fmul fast float %4256, %3926
  %4262 = and i32 %3939, 16384
  %4263 = icmp ne i32 %4262, 0
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = select i1 %4263, float %4265, float 1.000000e+00
  %4267 = fmul fast float %4266, %4258
  %4268 = fmul fast float %4259, %4267
  %4269 = fmul fast float %4260, %4267
  %4270 = fmul fast float %4261, %4267
  br label %4271

; <label>:4271                                    ; preds = %4249, %4188
  %4272 = phi float [ %4268, %4249 ], [ 0.000000e+00, %4188 ]
  %4273 = phi float [ %4269, %4249 ], [ 0.000000e+00, %4188 ]
  %4274 = phi float [ %4270, %4249 ], [ 0.000000e+00, %4188 ]
  %4275 = fsub fast float %4272, %3869
  %4276 = fsub fast float %4273, %3870
  %4277 = fsub fast float %4274, %3871
  %4278 = fmul fast float %4275, %4085
  %4279 = fmul fast float %4276, %4085
  %4280 = fmul fast float %4277, %4085
  %4281 = fadd fast float %4278, %3869
  %4282 = fadd fast float %4279, %3870
  %4283 = fadd fast float %4280, %3871
  br label %3988

; <label>:4284                                    ; preds = %3988
  br label %4285

; <label>:4285                                    ; preds = %4284, %3766
  %4286 = phi float [ 0.000000e+00, %3766 ], [ %3989, %4284 ]
  %4287 = phi float [ %3780, %3766 ], [ %3990, %4284 ]
  %4288 = phi float [ %3778, %3766 ], [ %3991, %4284 ]
  %4289 = phi float [ 0.000000e+00, %3766 ], [ %3992, %4284 ]
  %4290 = phi float [ 0.000000e+00, %3766 ], [ %3993, %4284 ]
  %4291 = phi float [ %3772, %3766 ], [ %3994, %4284 ]
  %4292 = phi float [ %3773, %3766 ], [ %3995, %4284 ]
  %4293 = phi float [ %3774, %3766 ], [ %3996, %4284 ]
  %4294 = phi float [ %3806, %3766 ], [ %3997, %4284 ]
  %4295 = phi float [ %3807, %3766 ], [ %3998, %4284 ]
  %4296 = phi float [ %3808, %3766 ], [ %3999, %4284 ]
  %4297 = phi float [ %3777, %3766 ], [ %4000, %4284 ]
  %4298 = phi float [ %3776, %3766 ], [ %4001, %4284 ]
  %4299 = phi float [ 0.000000e+00, %3766 ], [ %4002, %4284 ]
  %4300 = phi float [ %3775, %3766 ], [ %4003, %4284 ]
  %4301 = phi float [ %3769, %3766 ], [ %4004, %4284 ]
  %4302 = phi float [ %3770, %3766 ], [ %4005, %4284 ]
  %4303 = phi float [ %3771, %3766 ], [ %4006, %4284 ]
  %4304 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float %4294, float %4295, float %4296)  ; Dot3(ax,ay,az,bx,by,bz)
  %4305 = call float @dx.op.unary.f32(i32 25, float %4304)  ; Rsqrt(value)
  %4306 = fmul fast float %4305, %4294
  %4307 = fmul fast float %4305, %4295
  %4308 = fmul fast float %4305, %4296
  %4309 = fadd fast float %4299, %880
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = call float @dx.op.dot3.f32(i32 55, float %4306, float %4307, float %4308, float %4306, float %4307, float %4308)  ; Dot3(ax,ay,az,bx,by,bz)
  %4312 = call float @dx.op.unary.f32(i32 25, float %4311)  ; Rsqrt(value)
  %4313 = fmul fast float %4312, %4306
  %4314 = fmul fast float %4312, %4307
  %4315 = fmul fast float %4312, %4308
  %4316 = fadd fast float %4300, 0xBFB99999A0000000
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4317, 0x3FF1C71C80000000
  %4319 = call float @dx.op.binary.f32(i32 36, float %4300, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4320 = fsub fast float 1.000000e+00, %4318
  %4321 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4322 = fmul fast float %4321, %4301
  %4323 = fmul fast float %4321, %4302
  %4324 = fmul fast float %4321, %4303
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = fmul fast float %4318, %4301
  %4329 = fmul fast float %4318, %4302
  %4330 = fmul fast float %4318, %4303
  %4331 = fadd fast float %4328, %4319
  %4332 = fadd fast float %4329, %4319
  %4333 = fadd fast float %4330, %4319
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 3
  %4340 = and i32 %4339, 8
  %4341 = icmp ne i32 %4340, 0
  %4342 = call float @dx.op.binary.f32(i32 35, float %4325, float %4301)  ; FMax(a,b)
  %4343 = call float @dx.op.binary.f32(i32 35, float %4326, float %4301)  ; FMax(a,b)
  %4344 = call float @dx.op.binary.f32(i32 35, float %4327, float %4301)  ; FMax(a,b)
  %4345 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4326, float %4327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4346 = select i1 %175, float %4301, float %4325
  %4347 = select i1 %175, float %4345, float %4326
  %4348 = select i1 %175, float 1.000000e+00, float %4327
  %4349 = select i1 %4341, float %4342, float %4346
  %4350 = select i1 %4341, float %4343, float %4347
  %4351 = select i1 %4341, float %4344, float %4348
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4355 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4356 = fadd fast float %4353, %133
  %4357 = fadd fast float %4354, %134
  %4358 = fadd fast float %4355, %135
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4362 = fsub fast float %4356, %4360
  %4363 = fsub fast float %4357, %4361
  %4364 = fmul fast float %4362, %4362
  %4365 = fmul fast float %4363, %4363
  %4366 = fadd fast float %4364, %4365
  %4367 = call float @dx.op.unary.f32(i32 24, float %4366)  ; Sqrt(value)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4369 = fcmp fast olt float %4367, %4368
  br i1 %4369, label %4370, label %4437

; <label>:4370                                    ; preds = %4285
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4381 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4382 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4383 = fadd fast float %4380, %4356
  %4384 = fadd fast float %4381, %4357
  %4385 = fadd fast float %4382, %4358
  %4386 = fmul fast float %4383, %4372
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4374, float %4386)  ; FMad(a,b,c)
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4376, float %4387)  ; FMad(a,b,c)
  %4389 = fmul fast float %4383, %4377
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4379, float %4390)  ; FMad(a,b,c)
  %4392 = fsub fast float %4388, %4380
  %4393 = fsub fast float %4391, %4381
  %4394 = fsub fast float %4392, %4360
  %4395 = fadd fast float %4394, %4368
  %4396 = fsub fast float %4393, %4361
  %4397 = fadd fast float %4396, %4368
  %4398 = extractvalue %dx.types.CBufRet.f32 %4359, 3
  %4399 = fmul fast float %4395, %4398
  %4400 = fmul fast float %4397, %4398
  %4401 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4403 = fsub fast float 1.000000e+00, %4401
  %4404 = fsub fast float 1.000000e+00, %4402
  %4405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4403, float %4404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = fcmp fast ugt float %4406, 0.000000e+00
  br i1 %4407, label %4408, label %4711

; <label>:4408                                    ; preds = %4370
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4411 = fmul fast float %4410, %4406
  %4412 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4413 = fadd fast float %4412, %4411
  %4414 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4415 = fadd fast float %4413, %4382
  %4416 = fmul fast float %4388, %4376
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4379, float %4416)  ; FMad(a,b,c)
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4414, float %4417)  ; FMad(a,b,c)
  %4419 = fsub fast float %4418, %4382
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 2
  %4422 = fsub fast float %4419, %4421
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4403, float %4404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.ResRet.f32 %4423, 2
  %4427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4403, float %4404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = fadd fast float %4428, %4424
  %4432 = fmul fast float %4431, 0x3F847AE140000000
  %4433 = fadd fast float %4429, %4425
  %4434 = fmul fast float %4433, 0x3F847AE140000000
  %4435 = fadd fast float %4430, %4426
  %4436 = fmul fast float %4435, 0x3F847AE140000000
  br label %4711

; <label>:4437                                    ; preds = %4285
  %4438 = and i32 %151, 1
  %4439 = icmp eq i32 %4438, 0
  br i1 %4439, label %4711, label %4440

; <label>:4440                                    ; preds = %4437
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 0
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4448 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4449 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4450 = extractvalue %dx.types.CBufRet.f32 %4441, 3
  %4451 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4452 = extractvalue %dx.types.CBufRet.f32 %4445, 3
  %4453 = fadd fast float %4450, %4356
  %4454 = fadd fast float %4451, %4357
  %4455 = fadd fast float %4452, %4358
  %4456 = fmul fast float %4453, %4442
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4444, float %4456)  ; FMad(a,b,c)
  %4458 = call float @dx.op.tertiary.f32(i32 46, float %4455, float %4446, float %4457)  ; FMad(a,b,c)
  %4459 = fmul fast float %4453, %4447
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4448, float %4459)  ; FMad(a,b,c)
  %4461 = call float @dx.op.tertiary.f32(i32 46, float %4455, float %4449, float %4460)  ; FMad(a,b,c)
  %4462 = fsub fast float %4458, %4450
  %4463 = fsub fast float %4461, %4451
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.CBufRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.CBufRet.f32 %4464, 3
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.i32 %4471, 1
  %4474 = udiv i32 %4473, %4472
  %4475 = fsub fast float %4462, %4465
  %4476 = fsub fast float %4463, %4466
  %4477 = call float @dx.op.binary.f32(i32 35, float %4475, float 0.000000e+00)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4476, float 0.000000e+00)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 36, float %4477, float %4467)  ; FMin(a,b)
  %4480 = call float @dx.op.binary.f32(i32 36, float %4478, float %4468)  ; FMin(a,b)
  %4481 = add i32 %4472, -1
  %4482 = add i32 %4474, -1
  %4483 = fmul fast float %4479, %4470
  %4484 = fmul fast float %4480, %4470
  %4485 = fptoui float %4483 to i32
  %4486 = fptoui float %4484 to i32
  %4487 = call i32 @dx.op.binary.i32(i32 40, i32 %4485, i32 %4481)  ; UMin(a,b)
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 %4482)  ; UMin(a,b)
  %4489 = mul i32 %4488, %4472
  %4490 = add i32 %4489, %4487
  %4491 = shl i32 %4490, 2
  %4492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.i32 %4492, 0
  %4494 = icmp eq i32 %4493, -1
  br i1 %4494, label %4711, label %4495

; <label>:4495                                    ; preds = %4440
  %4496 = mul i32 %4493, 148
  %4497 = add i32 %4496, 4
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4496, 8
  %4501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = add i32 %4496, 36
  %4504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = add i32 %4496, 60
  %4507 = add i32 %4496, 92
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = add i32 %4496, 116
  %4511 = fsub fast float %4462, %4499
  %4512 = fsub fast float %4463, %4502
  %4513 = fmul fast float %4470, %4511
  %4514 = fmul fast float %4470, %4512
  %4515 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4517 = fsub fast float 1.000000e+00, %4516
  %4518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4518, 2
  %4520 = call float @dx.op.unary.f32(i32 83, float %4515)  ; DerivCoarseX(value)
  %4521 = call float @dx.op.unary.f32(i32 83, float %4517)  ; DerivCoarseX(value)
  %4522 = call float @dx.op.unary.f32(i32 84, float %4515)  ; DerivCoarseY(value)
  %4523 = call float @dx.op.unary.f32(i32 84, float %4517)  ; DerivCoarseY(value)
  %4524 = fmul fast float %4520, %4519
  %4525 = fmul fast float %4521, %4519
  %4526 = fmul fast float %4522, %4519
  %4527 = fmul fast float %4523, %4519
  %4528 = call float @dx.op.dot2.f32(i32 54, float %4526, float %4527, float %4526, float %4527)  ; Dot2(ax,ay,bx,by)
  %4529 = call float @dx.op.dot2.f32(i32 54, float %4524, float %4525, float %4524, float %4525)  ; Dot2(ax,ay,bx,by)
  %4530 = call float @dx.op.binary.f32(i32 35, float %4529, float %4528)  ; FMax(a,b)
  %4531 = call float @dx.op.unary.f32(i32 23, float %4530)  ; Log(value)
  %4532 = fmul fast float %4531, 5.000000e-01
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4535 = fadd fast float %4534, %4532
  %4536 = call float @dx.op.binary.f32(i32 35, float %4535, float 0.000000e+00)  ; FMax(a,b)
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4539 = fadd fast float %4538, %4536
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 3
  %4542 = fadd fast float %4539, %4541
  %4543 = add i32 %4509, 0
  %4544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4543, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4545 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4544, i32 0)  ; GetDimensions(handle,mipLevel)
  %4546 = extractvalue %dx.types.Dimensions %4545, 0
  %4547 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4546)  ; FirstbitLo(value)
  %4548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.i32 %4548, 1
  %4550 = sub nsw i32 %4549, %4547
  %4551 = sitofp i32 %4550 to float
  %4552 = fsub fast float %4542, %4551
  %4553 = call float @dx.op.binary.f32(i32 35, float %4552, float 0.000000e+00)  ; FMax(a,b)
  %4554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4544, %dx.types.Handle %27, float %4515, float %4517, float %4505, float undef, i32 0, i32 0, i32 undef, float %4553)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = fcmp ule float %4555, 0x3FE0101020000000
  %4557 = extractvalue %dx.types.CBufRet.i32 %4548, 0
  %4558 = and i32 %4557, 128
  %4559 = icmp ne i32 %4558, 0
  %4560 = and i1 %4556, %4559
  br i1 %4560, label %4711, label %4561

; <label>:4561                                    ; preds = %4495
  %4562 = add i32 %4496, 20
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = add i32 %4496, 24
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = add i32 %4496, 40
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = add i32 %4496, 96
  %4572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.i32 %4572, 0
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4576 = fmul fast float %4575, %4515
  %4577 = fmul fast float %4575, %4517
  %4578 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4579 = fadd fast float %4576, %4578
  %4580 = fadd fast float %4577, %4578
  %4581 = add i32 %4573, 0
  %4582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4581, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4583 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4582, i32 0)  ; GetDimensions(handle,mipLevel)
  %4584 = extractvalue %dx.types.Dimensions %4583, 0
  %4585 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4584)  ; FirstbitLo(value)
  %4586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.i32 %4586, 1
  %4588 = sub nsw i32 %4587, %4585
  %4589 = sitofp i32 %4588 to float
  %4590 = fsub fast float %4539, %4589
  %4591 = call float @dx.op.binary.f32(i32 35, float %4590, float 0.000000e+00)  ; FMax(a,b)
  %4592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4582, %dx.types.Handle %27, float %4579, float %4580, float %4570, float undef, i32 0, i32 0, i32 undef, float %4591)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = fmul fast float %4593, %4564
  %4595 = fadd fast float %4594, %4567
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.CBufRet.f32 %4596, 2
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4604 = extractvalue %dx.types.CBufRet.f32 %4596, 3
  %4605 = fadd fast float %4601, %4462
  %4606 = fadd fast float %4603, %4463
  %4607 = fadd fast float %4595, %4604
  %4608 = fmul fast float %4605, %4597
  %4609 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4598, float %4608)  ; FMad(a,b,c)
  %4610 = call float @dx.op.tertiary.f32(i32 46, float %4607, float %4599, float %4609)  ; FMad(a,b,c)
  %4611 = fsub fast float %4610, %4604
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4614 = fsub fast float %4611, %4613
  %4615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.i32 %4615, 0
  %4617 = call i32 @dx.op.binary.i32(i32 40, i32 %4493, i32 %4616)  ; UMin(a,b)
  %4618 = mul i32 %4617, 36
  %4619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.i32 %4619, 0
  %4621 = add i32 %4618, 4
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = fmul fast float %4623, %4515
  %4625 = fmul fast float %4623, %4517
  %4626 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4627 = fadd fast float %4624, %4626
  %4628 = fadd fast float %4625, %4626
  %4629 = icmp eq i32 %4620, 0
  br i1 %4629, label %4698, label %4630

; <label>:4630                                    ; preds = %4561
  br label %4631

; <label>:4631                                    ; preds = %4688, %4630
  %4632 = phi float [ %4689, %4688 ], [ 0.000000e+00, %4630 ]
  %4633 = phi float [ %4690, %4688 ], [ 0.000000e+00, %4630 ]
  %4634 = phi float [ %4691, %4688 ], [ 0.000000e+00, %4630 ]
  %4635 = phi float [ %4692, %4688 ], [ 0.000000e+00, %4630 ]
  %4636 = phi float [ %4693, %4688 ], [ 0.000000e+00, %4630 ]
  %4637 = phi float [ %4694, %4688 ], [ 0.000000e+00, %4630 ]
  %4638 = phi i32 [ %4695, %4688 ], [ 0, %4630 ]
  %4639 = shl i32 %4638, 2
  %4640 = add i32 %4506, %4639
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = add i32 %4510, %4639
  %4644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.i32 %4644, 0
  %4646 = add i32 %4645, 0
  %4647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4646, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4648 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4647, i32 0)  ; GetDimensions(handle,mipLevel)
  %4649 = extractvalue %dx.types.Dimensions %4648, 0
  %4650 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4649)  ; FirstbitLo(value)
  %4651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.i32 %4651, 1
  %4653 = sub nsw i32 %4652, %4650
  %4654 = sitofp i32 %4653 to float
  %4655 = fsub fast float %4539, %4654
  %4656 = call float @dx.op.binary.f32(i32 35, float %4655, float 0.000000e+00)  ; FMax(a,b)
  %4657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4647, %dx.types.Handle %27, float %4627, float %4628, float %4642, float undef, i32 0, i32 0, i32 undef, float %4656)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = fcmp fast ogt float %4658, 0.000000e+00
  br i1 %4659, label %4660, label %4688

; <label>:4660                                    ; preds = %4631
  %4661 = add i32 %4621, %4639
  %4662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.i32 %4662, 0
  %4664 = and i32 %4663, 32767
  %4665 = mul nuw nsw i32 %4664, 928
  %4666 = add nuw nsw i32 %4665, 48
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = add nuw nsw i32 %4665, 60
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = fmul fast float %4668, %4658
  %4677 = fmul fast float %4669, %4658
  %4678 = fmul fast float %4670, %4658
  %4679 = fadd fast float %4676, %4632
  %4680 = fadd fast float %4677, %4633
  %4681 = fadd fast float %4678, %4634
  %4682 = fmul fast float %4673, %4658
  %4683 = fmul fast float %4674, %4658
  %4684 = fmul fast float %4675, %4658
  %4685 = fadd fast float %4682, %4635
  %4686 = fadd fast float %4683, %4636
  %4687 = fadd fast float %4684, %4637
  br label %4688

; <label>:4688                                    ; preds = %4660, %4631
  %4689 = phi float [ %4679, %4660 ], [ %4632, %4631 ]
  %4690 = phi float [ %4680, %4660 ], [ %4633, %4631 ]
  %4691 = phi float [ %4681, %4660 ], [ %4634, %4631 ]
  %4692 = phi float [ %4685, %4660 ], [ %4635, %4631 ]
  %4693 = phi float [ %4686, %4660 ], [ %4636, %4631 ]
  %4694 = phi float [ %4687, %4660 ], [ %4637, %4631 ]
  %4695 = add nuw i32 %4638, 1
  %4696 = icmp eq i32 %4695, %4620
  br i1 %4696, label %4697, label %4631

; <label>:4697                                    ; preds = %4688
  br label %4698

; <label>:4698                                    ; preds = %4697, %4561
  %4699 = phi float [ 0.000000e+00, %4561 ], [ %4689, %4697 ]
  %4700 = phi float [ 0.000000e+00, %4561 ], [ %4690, %4697 ]
  %4701 = phi float [ 0.000000e+00, %4561 ], [ %4691, %4697 ]
  %4702 = phi float [ 0.000000e+00, %4561 ], [ %4692, %4697 ]
  %4703 = phi float [ 0.000000e+00, %4561 ], [ %4693, %4697 ]
  %4704 = phi float [ 0.000000e+00, %4561 ], [ %4694, %4697 ]
  %4705 = fadd fast float %4702, %4699
  %4706 = fmul fast float %4705, 0x3F847AE140000000
  %4707 = fadd fast float %4703, %4700
  %4708 = fmul fast float %4707, 0x3F847AE140000000
  %4709 = fadd fast float %4704, %4701
  %4710 = fmul fast float %4709, 0x3F847AE140000000
  br label %4711

; <label>:4711                                    ; preds = %4698, %4495, %4440, %4437, %4408, %4370
  %4712 = phi float [ %4422, %4408 ], [ -1.310720e+05, %4370 ], [ %4614, %4698 ], [ -1.310720e+05, %4440 ], [ -1.310720e+05, %4495 ], [ -1.310720e+05, %4437 ]
  %4713 = phi float [ %4432, %4408 ], [ 0.000000e+00, %4370 ], [ %4706, %4698 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4495 ], [ 0.000000e+00, %4437 ]
  %4714 = phi float [ %4434, %4408 ], [ 0.000000e+00, %4370 ], [ %4708, %4698 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4495 ], [ 0.000000e+00, %4437 ]
  %4715 = phi float [ %4436, %4408 ], [ 0.000000e+00, %4370 ], [ %4710, %4698 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4495 ], [ 0.000000e+00, %4437 ]
  %4716 = phi i1 [ true, %4408 ], [ false, %4370 ], [ true, %4698 ], [ false, %4440 ], [ false, %4495 ], [ false, %4437 ]
  %4717 = and i32 %151, 3
  %4718 = icmp eq i32 %4717, 1
  %4719 = select i1 %4718, float 1.000000e+00, float 0.000000e+00
  %4720 = fsub fast float %4712, %135
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = select i1 %4716, float %4721, float 1.000000e+00
  %4723 = fmul fast float %4722, %4719
  %4724 = icmp eq i32 %4717, 3
  %4725 = select i1 %4724, float 1.000000e+00, float %4723
  %4726 = call float @dx.op.binary.f32(i32 35, float %4286, float %4725)  ; FMax(a,b)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fcmp fast une float %4727, 0.000000e+00
  %4729 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = call float @dx.op.unary.f32(i32 25, float %4729)  ; Rsqrt(value)
  br i1 %4728, label %4738, label %4731

; <label>:4731                                    ; preds = %4711
  %4732 = fmul fast float %4730, %133
  %4733 = fmul fast float %4730, %134
  %4734 = fmul fast float %4730, %135
  %4735 = fsub fast float -0.000000e+00, %4732
  %4736 = fsub fast float -0.000000e+00, %4733
  %4737 = fsub fast float -0.000000e+00, %4734
  br label %4906

; <label>:4738                                    ; preds = %4711
  %4739 = fmul fast float %133, %4730
  %4740 = fsub fast float -0.000000e+00, %4739
  %4741 = fmul fast float %134, %4730
  %4742 = fsub fast float -0.000000e+00, %4741
  %4743 = fmul fast float %135, %4730
  %4744 = fsub fast float -0.000000e+00, %4743
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4742, float %4744, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = fmul fast float %4727, 2.500000e+00
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4727, 0x4013FFFFE0000000
  %4749 = fadd fast float %4748, 0xBFFFFFFFE0000000
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4727, 0x4004000020000000
  %4752 = fadd fast float %4751, 0xBFF8000040000000
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4755 = fmul fast float %4316, 1.000000e+01
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4756, 2.000000e+00
  %4758 = fsub fast float 3.000000e+00, %4757
  %4759 = fmul fast float %4756, %4756
  %4760 = fmul fast float %4759, %4758
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = fsub fast float 0x3FE3333340000000, %4337
  %4763 = fmul fast float %4762, 0x400AAAAAA0000000
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fmul fast float %4761, %4764
  %4766 = fmul fast float %4349, 0x3FEA2B8620000000
  %4767 = fmul fast float %4350, 0x3FEA2B8620000000
  %4768 = fmul fast float %4351, 0x3FEA2B8620000000
  %4769 = fadd fast float %4766, 0x3FC81DFBA0000000
  %4770 = fmul fast float %4769, %4349
  %4771 = fadd fast float %4770, 0x3F910E6020000000
  %4772 = fadd fast float %4767, 0x3FC81DFBA0000000
  %4773 = fmul fast float %4772, %4350
  %4774 = fadd fast float %4773, 0x3F910E6020000000
  %4775 = fadd fast float %4768, 0x3FC81DFBA0000000
  %4776 = fmul fast float %4775, %4351
  %4777 = fadd fast float %4776, 0x3F910E6020000000
  %4778 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = fsub fast float %4778, %4349
  %4782 = fsub fast float %4779, %4350
  %4783 = fsub fast float %4780, %4351
  %4784 = fmul fast float %4781, %4754
  %4785 = fmul fast float %4784, %4765
  %4786 = fmul fast float %4782, %4754
  %4787 = fmul fast float %4786, %4765
  %4788 = fmul fast float %4783, %4754
  %4789 = fmul fast float %4788, %4765
  %4790 = fadd fast float %4785, %4349
  %4791 = fadd fast float %4787, %4350
  %4792 = fadd fast float %4789, %4351
  %4793 = fmul fast float %4297, %4297
  %4794 = fmul fast float %4793, %4793
  %4795 = fadd fast float %4750, 1.000000e+00
  %4796 = fsub fast float %4795, %4765
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = call float @dx.op.dot3.f32(i32 55, float %83, float %85, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = fsub fast float 1.000000e+00, %4794
  %4801 = call float @dx.op.binary.f32(i32 36, float %4797, float %4800)  ; FMin(a,b)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float %4802)  ; FMax(a,b)
  %4804 = fadd fast float %4799, 0xBFE4CCCCC0000000
  %4805 = fmul fast float %4804, 0x4006DB6DA0000000
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4806, 2.000000e+00
  %4808 = fsub fast float 3.000000e+00, %4807
  %4809 = bitcast float %4334 to i32
  %4810 = ashr i32 %4809, 1
  %4811 = add nsw i32 %4810, 532487669
  %4812 = bitcast i32 %4811 to float
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = bitcast float %4813 to i32
  %4815 = sub nsw i32 2129859010, %4814
  %4816 = bitcast i32 %4815 to float
  %4817 = fmul fast float %4816, 2.000000e+00
  %4818 = bitcast float %4335 to i32
  %4819 = ashr i32 %4818, 1
  %4820 = add nsw i32 %4819, 532487669
  %4821 = bitcast i32 %4820 to float
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = bitcast float %4822 to i32
  %4824 = sub nsw i32 2129859010, %4823
  %4825 = bitcast i32 %4824 to float
  %4826 = fmul fast float %4825, 2.000000e+00
  %4827 = bitcast float %4336 to i32
  %4828 = ashr i32 %4827, 1
  %4829 = add nsw i32 %4828, 532487669
  %4830 = bitcast i32 %4829 to float
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = bitcast float %4831 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = fmul fast float %4834, 2.000000e+00
  %4836 = fsub fast float 0x4002A9FBE0000000, %4817
  %4837 = fadd fast float %4817, 0x3FD54FDF00000000
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, %4836
  %4842 = fmul fast float %4841, %4841
  %4843 = fsub fast float 0x4002A9FBE0000000, %4826
  %4844 = fadd fast float %4826, 0x3FD54FDF00000000
  %4845 = bitcast float %4844 to i32
  %4846 = sub nsw i32 2129859010, %4845
  %4847 = bitcast i32 %4846 to float
  %4848 = fmul fast float %4847, %4843
  %4849 = fmul fast float %4848, %4848
  %4850 = fsub fast float 0x4002A9FBE0000000, %4835
  %4851 = fadd fast float %4835, 0x3FD54FDF00000000
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = fmul fast float %4854, %4850
  %4856 = fmul fast float %4855, %4855
  %4857 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4842)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4849)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4856)  ; FMax(a,b)
  %4860 = fsub fast float 1.000000e+00, %4745
  %4861 = fadd fast float %4860, %4761
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fsub fast float 1.000000e+00, %4725
  %4864 = fmul fast float %4803, %4863
  %4865 = fmul fast float %4806, %4806
  %4866 = fmul fast float %4865, %4864
  %4867 = fmul fast float %4866, %4808
  %4868 = fmul fast float %4863, 0xBFE99999A0000000
  %4869 = fmul fast float %4868, %4754
  %4870 = fmul fast float %4869, %4765
  %4871 = fadd fast float %4870, 1.000000e+00
  %4872 = fadd fast float %4337, -1.000000e+00
  %4873 = fmul fast float %4871, %4872
  %4874 = fadd fast float %4873, 1.000000e+00
  %4875 = fsub fast float %4857, %4334
  %4876 = fsub fast float %4858, %4335
  %4877 = fsub fast float %4859, %4336
  %4878 = fmul fast float %4867, %4875
  %4879 = fmul fast float %4867, %4876
  %4880 = fmul fast float %4867, %4877
  %4881 = fadd fast float %4878, %4334
  %4882 = fadd fast float %4879, %4335
  %4883 = fadd fast float %4880, %4336
  %4884 = fsub fast float %83, %4313
  %4885 = fsub fast float %85, %4314
  %4886 = fsub fast float %87, %4315
  %4887 = fmul fast float %4867, %4884
  %4888 = fmul fast float %4867, %4885
  %4889 = fmul fast float %4867, %4886
  %4890 = fadd fast float %4887, %4313
  %4891 = fadd fast float %4888, %4314
  %4892 = fadd fast float %4889, %4315
  %4893 = fmul fast float %4867, %4862
  %4894 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = fmul fast float %4893, %4895
  %4897 = fadd fast float %4896, %4894
  %4898 = fsub fast float 1.000000e+00, %4297
  %4899 = fmul fast float %4867, %4898
  %4900 = fadd fast float %4899, %4297
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4890, float %4891, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.unary.f32(i32 25, float %4901)  ; Rsqrt(value)
  %4903 = fmul fast float %4890, %4902
  %4904 = fmul fast float %4891, %4902
  %4905 = fmul fast float %4892, %4902
  br label %4906

; <label>:4906                                    ; preds = %4738, %4731
  %4907 = phi float [ %4737, %4731 ], [ %4744, %4738 ]
  %4908 = phi float [ %4736, %4731 ], [ %4742, %4738 ]
  %4909 = phi float [ %4735, %4731 ], [ %4740, %4738 ]
  %4910 = phi float [ %4734, %4731 ], [ %4743, %4738 ]
  %4911 = phi float [ %4733, %4731 ], [ %4741, %4738 ]
  %4912 = phi float [ %4732, %4731 ], [ %4739, %4738 ]
  %4913 = phi float [ %4334, %4731 ], [ %4881, %4738 ]
  %4914 = phi float [ %4335, %4731 ], [ %4882, %4738 ]
  %4915 = phi float [ %4336, %4731 ], [ %4883, %4738 ]
  %4916 = phi float [ %4313, %4731 ], [ %4903, %4738 ]
  %4917 = phi float [ %4314, %4731 ], [ %4904, %4738 ]
  %4918 = phi float [ %4315, %4731 ], [ %4905, %4738 ]
  %4919 = phi float [ %4349, %4731 ], [ %4790, %4738 ]
  %4920 = phi float [ %4350, %4731 ], [ %4791, %4738 ]
  %4921 = phi float [ %4351, %4731 ], [ %4792, %4738 ]
  %4922 = phi float [ %4337, %4731 ], [ %4897, %4738 ]
  %4923 = phi float [ %4297, %4731 ], [ %4900, %4738 ]
  %4924 = select i1 %175, float 0.000000e+00, float %4915
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %4909, float %4908, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4912, float %4911, float %4910, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = fmul fast float %4928, %4916
  %4930 = fmul fast float %4928, %4917
  %4931 = fmul fast float %4928, %4918
  %4932 = fsub fast float %4912, %4929
  %4933 = fsub fast float %4911, %4930
  %4934 = fsub fast float %4910, %4931
  %4935 = call float @dx.op.binary.f32(i32 36, float %4923, float 1.000000e+00)  ; FMin(a,b)
  %4936 = fsub fast float 1.000000e+00, %4923
  %4937 = bitcast float %4936 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %51)  ; FMax(a,b)
  %4940 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = fcmp fast oeq float %4940, 0.000000e+00
  %4942 = fcmp fast oeq float %4939, 0.000000e+00
  %4943 = or i1 %4942, %4941
  br i1 %4943, label %4973, label %4944

; <label>:4944                                    ; preds = %4906
  %4945 = fsub fast float -0.000000e+00, %54
  %4946 = fsub fast float -0.000000e+00, %52
  %4947 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  %4948 = fdiv fast float %4947, %4939
  %4949 = fcmp fast ogt float %4948, 0x3FFB6F8900000000
  %4950 = select i1 %4949, float 0x3FFB6F8900000000, float %4948
  %4951 = fmul fast float %4950, 0x3FE8A23460000000
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4950, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4954 = fmul fast float %4952, %4939
  %4955 = fmul fast float %4953, 0x3FF279A740000000
  %4956 = fadd fast float %4955, -1.000000e+00
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4946, float %53, float %4945, float %4946, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call float @dx.op.unary.f32(i32 25, float %4957)  ; Rsqrt(value)
  %4959 = fmul fast float %4958, %4945
  %4960 = fmul fast float %4958, %4946
  %4961 = fmul fast float %4958, %53
  %4962 = fmul fast float %4956, %4956
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4953, 0x40005F8BE0000000
  %4965 = fsub fast float 0x400C5BF8A0000000, %4964
  %4966 = fdiv fast float %4954, %4965
  %4967 = fmul fast float %4966, 0x3FEE31C3C0000000
  %4968 = fmul fast float %4967, %4963
  %4969 = fmul fast float %4953, 0x3FDACB7480000000
  %4970 = fadd fast float %4969, 0xBFD7347680000000
  %4971 = fmul fast float %4970, %4966
  %4972 = fmul fast float %4971, %4963
  br label %4973

; <label>:4973                                    ; preds = %4944, %4906
  %4974 = phi float [ %4959, %4944 ], [ 0.000000e+00, %4906 ]
  %4975 = phi float [ %4960, %4944 ], [ 0.000000e+00, %4906 ]
  %4976 = phi float [ %4961, %4944 ], [ 0.000000e+00, %4906 ]
  %4977 = phi float [ %4968, %4944 ], [ 0.000000e+00, %4906 ]
  %4978 = phi float [ %4972, %4944 ], [ 0.000000e+00, %4906 ]
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = fmul fast float %4979, %4979
  %4981 = fmul fast float %4980, 0x3FEE471020000000
  %4982 = fadd fast float %4981, 0xBFD42F6020000000
  %4983 = fmul fast float %4939, 0x3FD20DD760000000
  %4984 = fmul fast float %4982, %4978
  %4985 = fmul fast float %4977, 0x3FDF454380000000
  %4986 = fmul fast float %4985, %4979
  %4987 = fadd fast float %4986, %4983
  %4988 = fadd fast float %4987, %4984
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %4932, float %4933, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = fmul fast float %4989, 0x3FDF454380000000
  %4991 = fmul fast float %4989, %4989
  %4992 = fmul fast float %4991, 0x3FEE471020000000
  %4993 = fadd fast float %4992, 0xBFD42F6020000000
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4977, float %4978, float 0x3FD20DD760000000, float %4990, float %4993)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %4996 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = fcmp fast oeq float %4996, 0.000000e+00
  %4998 = fcmp fast oeq float %4995, 0.000000e+00
  %4999 = or i1 %4998, %4997
  br i1 %4999, label %5029, label %5000

; <label>:5000                                    ; preds = %4973
  %5001 = fsub fast float -0.000000e+00, %50
  %5002 = fsub fast float -0.000000e+00, %48
  %5003 = call float @dx.op.unary.f32(i32 24, float %4996)  ; Sqrt(value)
  %5004 = fdiv fast float %5003, %4995
  %5005 = fcmp fast ogt float %5004, 0x3FFB6F8900000000
  %5006 = select i1 %5005, float 0x3FFB6F8900000000, float %5004
  %5007 = fmul fast float %5006, 0x3FE8A23460000000
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = call float @dx.op.binary.f32(i32 35, float %5006, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5010 = fmul fast float %5008, %4995
  %5011 = fmul fast float %5009, 0x3FF279A740000000
  %5012 = fadd fast float %5011, -1.000000e+00
  %5013 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %49, float %5001, float %5002, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5014 = call float @dx.op.unary.f32(i32 25, float %5013)  ; Rsqrt(value)
  %5015 = fmul fast float %5014, %5001
  %5016 = fmul fast float %5014, %5002
  %5017 = fmul fast float %5014, %49
  %5018 = fmul fast float %5012, %5012
  %5019 = fsub fast float 1.000000e+00, %5018
  %5020 = fmul fast float %5009, 0x40005F8BE0000000
  %5021 = fsub fast float 0x400C5BF8A0000000, %5020
  %5022 = fdiv fast float %5010, %5021
  %5023 = fmul fast float %5022, 0x3FEE31C3C0000000
  %5024 = fmul fast float %5023, %5019
  %5025 = fmul fast float %5009, 0x3FDACB7480000000
  %5026 = fadd fast float %5025, 0xBFD7347680000000
  %5027 = fmul fast float %5026, %5022
  %5028 = fmul fast float %5027, %5019
  br label %5029

; <label>:5029                                    ; preds = %5000, %4973
  %5030 = phi float [ %5015, %5000 ], [ 0.000000e+00, %4973 ]
  %5031 = phi float [ %5016, %5000 ], [ 0.000000e+00, %4973 ]
  %5032 = phi float [ %5017, %5000 ], [ 0.000000e+00, %4973 ]
  %5033 = phi float [ %5024, %5000 ], [ 0.000000e+00, %4973 ]
  %5034 = phi float [ %5028, %5000 ], [ 0.000000e+00, %4973 ]
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fmul fast float %5035, %5035
  %5037 = fmul fast float %5036, 0x3FEE471020000000
  %5038 = fadd fast float %5037, 0xBFD42F6020000000
  %5039 = fmul fast float %4995, 0x3FD20DD760000000
  %5040 = fmul fast float %5038, %5034
  %5041 = fmul fast float %5033, 0x3FDF454380000000
  %5042 = fmul fast float %5041, %5035
  %5043 = fadd fast float %5042, %5039
  %5044 = fadd fast float %5043, %5040
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %4932, float %4933, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = fmul fast float %5045, 0x3FDF454380000000
  %5047 = fmul fast float %5045, %5045
  %5048 = fmul fast float %5047, 0x3FEE471020000000
  %5049 = fadd fast float %5048, 0xBFD42F6020000000
  %5050 = call float @dx.op.dot3.f32(i32 55, float %4995, float %5033, float %5034, float 0x3FD20DD760000000, float %5046, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %5052 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = fcmp fast oeq float %5052, 0.000000e+00
  %5054 = fcmp fast oeq float %5051, 0.000000e+00
  %5055 = or i1 %5054, %5053
  br i1 %5055, label %5085, label %5056

; <label>:5056                                    ; preds = %5029
  %5057 = fsub fast float -0.000000e+00, %46
  %5058 = fsub fast float -0.000000e+00, %44
  %5059 = call float @dx.op.unary.f32(i32 24, float %5052)  ; Sqrt(value)
  %5060 = fdiv fast float %5059, %5051
  %5061 = fcmp fast ogt float %5060, 0x3FFB6F8900000000
  %5062 = select i1 %5061, float 0x3FFB6F8900000000, float %5060
  %5063 = fmul fast float %5062, 0x3FE8A23460000000
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = call float @dx.op.binary.f32(i32 35, float %5062, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5066 = fmul fast float %5064, %5051
  %5067 = fmul fast float %5065, 0x3FF279A740000000
  %5068 = fadd fast float %5067, -1.000000e+00
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %45, float %5057, float %5058, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5070, %5057
  %5072 = fmul fast float %5070, %5058
  %5073 = fmul fast float %5070, %45
  %5074 = fmul fast float %5068, %5068
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = fmul fast float %5065, 0x40005F8BE0000000
  %5077 = fsub fast float 0x400C5BF8A0000000, %5076
  %5078 = fdiv fast float %5066, %5077
  %5079 = fmul fast float %5078, 0x3FEE31C3C0000000
  %5080 = fmul fast float %5079, %5075
  %5081 = fmul fast float %5065, 0x3FDACB7480000000
  %5082 = fadd fast float %5081, 0xBFD7347680000000
  %5083 = fmul fast float %5082, %5078
  %5084 = fmul fast float %5083, %5075
  br label %5085

; <label>:5085                                    ; preds = %5056, %5029
  %5086 = phi float [ %5071, %5056 ], [ 0.000000e+00, %5029 ]
  %5087 = phi float [ %5072, %5056 ], [ 0.000000e+00, %5029 ]
  %5088 = phi float [ %5073, %5056 ], [ 0.000000e+00, %5029 ]
  %5089 = phi float [ %5080, %5056 ], [ 0.000000e+00, %5029 ]
  %5090 = phi float [ %5084, %5056 ], [ 0.000000e+00, %5029 ]
  %5091 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = fmul fast float %5091, %5091
  %5093 = fmul fast float %5092, 0x3FEE471020000000
  %5094 = fadd fast float %5093, 0xBFD42F6020000000
  %5095 = fmul fast float %5051, 0x3FD20DD760000000
  %5096 = fmul fast float %5094, %5090
  %5097 = fmul fast float %5089, 0x3FDF454380000000
  %5098 = fmul fast float %5097, %5091
  %5099 = fadd fast float %5098, %5095
  %5100 = fadd fast float %5099, %5096
  %5101 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %4932, float %4933, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5102 = fmul fast float %5101, 0x3FDF454380000000
  %5103 = fmul fast float %5101, %5101
  %5104 = fmul fast float %5103, 0x3FEE471020000000
  %5105 = fadd fast float %5104, 0xBFD42F6020000000
  %5106 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5089, float %5090, float 0x3FD20DD760000000, float %5102, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = call float @dx.op.binary.f32(i32 35, float %4988, float 0.000000e+00)  ; FMax(a,b)
  %5108 = call float @dx.op.binary.f32(i32 35, float %5044, float 0.000000e+00)  ; FMax(a,b)
  %5109 = call float @dx.op.binary.f32(i32 35, float %5100, float 0.000000e+00)  ; FMax(a,b)
  %5110 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %5111 = call float @dx.op.binary.f32(i32 35, float %5050, float 0.000000e+00)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = call float @dx.op.binary.f32(i32 36, float %4919, float %5114)  ; FMin(a,b)
  %5116 = fsub fast float 1.000000e+00, %4935
  %5117 = fmul fast float %5115, %5116
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = bitcast float %5118 to i32
  %5120 = sub nsw i32 2129859010, %5119
  %5121 = bitcast i32 %5120 to float
  %5122 = call float @dx.op.binary.f32(i32 36, float %4920, float %5114)  ; FMin(a,b)
  %5123 = fmul fast float %5122, %5116
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = bitcast float %5124 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = call float @dx.op.binary.f32(i32 36, float %4921, float %5114)  ; FMin(a,b)
  %5129 = fmul fast float %5128, %5116
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = bitcast float %5130 to i32
  %5132 = sub nsw i32 2129859010, %5131
  %5133 = bitcast i32 %5132 to float
  %5134 = fmul fast float %5107, %4935
  %5135 = fmul fast float %5134, %5121
  %5136 = fmul fast float %5108, %4935
  %5137 = fmul fast float %5136, %5127
  %5138 = fmul fast float %5109, %4935
  %5139 = fmul fast float %5138, %5133
  %5140 = call float @dx.op.binary.f32(i32 36, float %4913, float %5114)  ; FMin(a,b)
  %5141 = fmul fast float %5140, %5116
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = bitcast float %5142 to i32
  %5144 = sub nsw i32 2129859010, %5143
  %5145 = bitcast i32 %5144 to float
  %5146 = call float @dx.op.binary.f32(i32 36, float %4914, float %5114)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %5116
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = call float @dx.op.binary.f32(i32 36, float %4924, float %5114)  ; FMin(a,b)
  %5153 = fmul fast float %5152, %5116
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = bitcast float %5154 to i32
  %5156 = sub nsw i32 2129859010, %5155
  %5157 = bitcast i32 %5156 to float
  %5158 = fmul fast float %5110, %4935
  %5159 = fmul fast float %5158, %5145
  %5160 = fmul fast float %5111, %4935
  %5161 = fmul fast float %5160, %5151
  %5162 = fmul fast float %5112, %4935
  %5163 = fmul fast float %5162, %5157
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5137, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = select i1 %175, float 0.000000e+00, float %5135
  %5166 = select i1 %175, float %5164, float %5137
  %5167 = select i1 %175, float 0.000000e+00, float %5139
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5161, float %5163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = select i1 %175, float 0.000000e+00, float %5159
  %5170 = select i1 %175, float %5168, float %5161
  %5171 = select i1 %175, float 0.000000e+00, float %5163
  %5172 = fmul fast float %4926, 9.843750e-01
  %5173 = fmul fast float %4922, 9.843750e-01
  %5174 = fadd fast float %5172, 7.812500e-03
  %5175 = fadd fast float %5173, 7.812500e-03
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5174, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 3
  %5179 = fmul fast float %5177, %4913
  %5180 = fmul fast float %5177, %4914
  %5181 = fmul fast float %5177, %4924
  %5182 = fadd fast float %5179, %5178
  %5183 = fadd fast float %5180, %5178
  %5184 = fadd fast float %5181, %5178
  %5185 = fcmp fast ogt float %4290, 0.000000e+00
  br i1 %5185, label %5186, label %5212

; <label>:5186                                    ; preds = %5085
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4290, float %4926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.f32 %5187, 2
  %5191 = fadd fast float %5188, -5.000000e-01
  %5192 = fadd fast float %5189, -5.000000e-01
  %5193 = fadd fast float %5190, -5.000000e-01
  %5194 = fsub fast float 1.000000e+00, %4913
  %5195 = fsub fast float 1.000000e+00, %4914
  %5196 = fsub fast float 1.000000e+00, %4924
  %5197 = fmul fast float %4913, 4.000000e+00
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %5198, %5191
  %5200 = fmul fast float %4914, 4.000000e+00
  %5201 = fmul fast float %5200, %5195
  %5202 = fmul fast float %5201, %5192
  %5203 = fmul fast float %4924, 4.000000e+00
  %5204 = fmul fast float %5203, %5196
  %5205 = fmul fast float %5204, %5193
  %5206 = fadd fast float %5199, %5182
  %5207 = fadd fast float %5202, %5183
  %5208 = fadd fast float %5205, %5184
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  br label %5212

; <label>:5212                                    ; preds = %5186, %5085
  %5213 = phi float [ %5209, %5186 ], [ %5182, %5085 ]
  %5214 = phi float [ %5210, %5186 ], [ %5183, %5085 ]
  %5215 = phi float [ %5211, %5186 ], [ %5184, %5085 ]
  %5216 = call float @dx.op.binary.f32(i32 35, float %5214, float %5215)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5213, float %5216)  ; FMax(a,b)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5218, %5165
  %5220 = fmul fast float %5218, %5166
  %5221 = fmul fast float %5218, %5167
  %5222 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = fcmp fast ogt float %5222, 0x3E7FF19E20000000
  %5224 = fdiv fast float 1.000000e+00, %5222
  %5225 = select i1 %5223, float %5224, float 0.000000e+00
  %5226 = fmul fast float %5225, %4919
  %5227 = fmul fast float %5225, %4920
  %5228 = fmul fast float %5225, %4921
  %5229 = fadd fast float %5226, -1.000000e+00
  %5230 = fadd fast float %5227, -1.000000e+00
  %5231 = fadd fast float %5228, -1.000000e+00
  %5232 = fmul fast float %5229, 5.000000e-01
  %5233 = fmul fast float %5230, 5.000000e-01
  %5234 = fmul fast float %5231, 5.000000e-01
  %5235 = fadd fast float %5232, 1.000000e+00
  %5236 = fadd fast float %5233, 1.000000e+00
  %5237 = fadd fast float %5234, 1.000000e+00
  %5238 = fmul fast float %5213, %5169
  %5239 = fmul fast float %5214, %5170
  %5240 = fmul fast float %5215, %5171
  %5241 = fsub fast float 1.000000e+00, %4926
  %5242 = bitcast float %5241 to i32
  %5243 = sitofp i32 %5242 to float
  %5244 = fmul fast float %5243, 5.000000e+00
  %5245 = fadd fast float %5244, 0xC1EFBF8940000000
  %5246 = fptosi float %5245 to i32
  %5247 = bitcast i32 %5246 to float
  %5248 = fmul fast float %5247, %4289
  %5249 = fmul fast float %5165, %5248
  %5250 = fmul fast float %5249, %5218
  %5251 = fmul fast float %5250, %5235
  %5252 = fmul fast float %5166, %5248
  %5253 = fmul fast float %5252, %5218
  %5254 = fmul fast float %5253, %5236
  %5255 = fmul fast float %5167, %5248
  %5256 = fmul fast float %5255, %5218
  %5257 = fmul fast float %5256, %5237
  %5258 = fmul fast float %5219, %4310
  %5259 = fmul fast float %5220, %4310
  %5260 = fmul fast float %5221, %4310
  %5261 = fadd fast float %5238, %4291
  %5262 = fadd fast float %5261, %5251
  %5263 = fmul fast float %5262, %4310
  %5264 = fadd fast float %5239, %4292
  %5265 = fadd fast float %5264, %5254
  %5266 = fmul fast float %5265, %4310
  %5267 = fadd fast float %5240, %4293
  %5268 = fadd fast float %5267, %5257
  %5269 = fmul fast float %5268, %4310
  %5270 = bitcast i32 %4938 to float
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5273 = fcmp fast oeq float %5272, 0.000000e+00
  br i1 %5273, label %5501, label %5274

; <label>:5274                                    ; preds = %5212
  %5275 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = select i1 %175, float %5283, float %5279
  %5287 = select i1 %175, float %5285, float %5280
  %5288 = select i1 %175, float %5284, float %5281
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5291 = fcmp fast une float %5290, 0.000000e+00
  br i1 %5291, label %5292, label %5309

; <label>:5292                                    ; preds = %5274
  %5293 = fptoui float %74 to i32
  %5294 = fptoui float %75 to i32
  %5295 = lshr i32 %5293, 4
  %5296 = lshr i32 %5294, 4
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5299 = fptoui float %5298 to i32
  %5300 = add i32 %5299, 15
  %5301 = lshr i32 %5300, 4
  %5302 = mul i32 %5301, %5296
  %5303 = add i32 %5302, %5295
  %5304 = shl i32 %5303, 3
  %5305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.i32 %5305, 0
  %5307 = and i32 %5306, -268435456
  %5308 = icmp eq i32 %5307, -1342177280
  br i1 %5308, label %5319, label %5309

; <label>:5309                                    ; preds = %5292, %5274
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 2
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5313 = fmul fast float %5311, %74
  %5314 = fmul fast float %5312, %75
  %5315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5313, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  br label %5319

; <label>:5319                                    ; preds = %5309, %5292
  %5320 = phi float [ %5316, %5309 ], [ 0.000000e+00, %5292 ]
  %5321 = phi float [ %5317, %5309 ], [ 0.000000e+00, %5292 ]
  %5322 = phi float [ %5318, %5309 ], [ 0.000000e+00, %5292 ]
  %5323 = call float @dx.op.binary.f32(i32 36, float %5321, float %5322)  ; FMin(a,b)
  %5324 = call float @dx.op.binary.f32(i32 36, float %5320, float %5323)  ; FMin(a,b)
  %5325 = fcmp fast ogt float %5324, 0.000000e+00
  br i1 %5325, label %5326, label %5501, !dx.controlflow.hints !75

; <label>:5326                                    ; preds = %5319
  %5327 = fmul fast float %5320, %5286
  %5328 = fmul fast float %5321, %5287
  %5329 = fmul fast float %5322, %5288
  %5330 = fsub fast float %5275, %4912
  %5331 = fsub fast float %5276, %4911
  %5332 = fsub fast float %5277, %4910
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5330, float %5331, float %5332, float %5330, float %5331, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.unary.f32(i32 25, float %5333)  ; Rsqrt(value)
  %5335 = fmul fast float %5334, %5330
  %5336 = fmul fast float %5334, %5331
  %5337 = fmul fast float %5334, %5332
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4908, float %4907, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5341 = fmul fast float %5340, %5340
  %5342 = fmul fast float %5341, %5270
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, %5340
  %5345 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fmul fast float %5345, %5345
  %5347 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5348 = fsub fast float 1.000000e+00, %4922
  %5349 = call float @dx.op.binary.f32(i32 35, float %5348, float 0x3F847AE140000000)  ; FMax(a,b)
  %5350 = fmul fast float %5349, %5349
  %5351 = fmul fast float %5350, %5350
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = fmul fast float %4926, %4926
  %5354 = fmul fast float %5353, %5352
  %5355 = fadd fast float %5354, %5351
  %5356 = bitcast float %5355 to i32
  %5357 = ashr i32 %5356, 1
  %5358 = add nsw i32 %5357, 532487669
  %5359 = bitcast i32 %5358 to float
  %5360 = fadd fast float %5359, %4926
  %5361 = fmul fast float %5351, %5346
  %5362 = fsub fast float 1.000000e+00, %5346
  %5363 = fadd fast float %5362, %5361
  %5364 = fmul fast float %5347, %5347
  %5365 = fmul fast float %5364, %5352
  %5366 = fadd fast float %5365, %5351
  %5367 = bitcast float %5366 to i32
  %5368 = ashr i32 %5367, 1
  %5369 = add nsw i32 %5368, 532487669
  %5370 = bitcast i32 %5369 to float
  %5371 = fadd fast float %5370, %5347
  %5372 = fmul fast float %5363, %5363
  %5373 = fmul fast float %5372, %5360
  %5374 = fmul fast float %5373, %5371
  %5375 = fdiv fast float 0x3FF0A00000000000, %5374
  %5376 = fmul fast float %5375, %5351
  %5377 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = bitcast float %5378 to i32
  %5380 = sitofp i32 %5379 to float
  %5381 = fmul fast float %5380, 5.000000e+00
  %5382 = fadd fast float %5381, 0xC1EFBF8940000000
  %5383 = fptosi float %5382 to i32
  %5384 = bitcast i32 %5383 to float
  %5385 = fsub fast float 1.000000e+00, %4913
  %5386 = fsub fast float 1.000000e+00, %4914
  %5387 = fsub fast float 1.000000e+00, %4924
  %5388 = fmul fast float %5384, %5385
  %5389 = fmul fast float %5384, %5386
  %5390 = fmul fast float %5384, %5387
  %5391 = fadd fast float %5388, %4913
  %5392 = fadd fast float %5389, %4914
  %5393 = fadd fast float %5390, %4924
  br i1 %5185, label %5394, label %5417

; <label>:5394                                    ; preds = %5326
  %5395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4290, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.ResRet.f32 %5395, 2
  %5399 = fadd fast float %5396, -5.000000e-01
  %5400 = fadd fast float %5397, -5.000000e-01
  %5401 = fadd fast float %5398, -5.000000e-01
  %5402 = fmul fast float %4913, 4.000000e+00
  %5403 = fmul fast float %5402, %5385
  %5404 = fmul fast float %5403, %5399
  %5405 = fmul fast float %4914, 4.000000e+00
  %5406 = fmul fast float %5405, %5386
  %5407 = fmul fast float %5406, %5400
  %5408 = fmul fast float %4924, 4.000000e+00
  %5409 = fmul fast float %5408, %5387
  %5410 = fmul fast float %5409, %5401
  %5411 = fadd fast float %5404, %5391
  %5412 = fadd fast float %5407, %5392
  %5413 = fadd fast float %5410, %5393
  %5414 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5416 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  br label %5417

; <label>:5417                                    ; preds = %5394, %5326
  %5418 = phi float [ %5414, %5394 ], [ %5391, %5326 ]
  %5419 = phi float [ %5415, %5394 ], [ %5392, %5326 ]
  %5420 = phi float [ %5416, %5394 ], [ %5393, %5326 ]
  %5421 = fmul fast float %5338, 9.843750e-01
  %5422 = fadd fast float %5421, 7.812500e-03
  %5423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5422, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 3
  %5426 = fmul fast float %5424, %4913
  %5427 = fmul fast float %5424, %4914
  %5428 = fmul fast float %5424, %4924
  %5429 = fadd fast float %5426, %5425
  %5430 = fadd fast float %5427, %5425
  %5431 = fadd fast float %5428, %5425
  br i1 %5185, label %5432, label %5455

; <label>:5432                                    ; preds = %5417
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4290, float %5338, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fadd fast float %5435, -5.000000e-01
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fmul fast float %4913, 4.000000e+00
  %5441 = fmul fast float %5440, %5385
  %5442 = fmul fast float %5441, %5437
  %5443 = fmul fast float %4914, 4.000000e+00
  %5444 = fmul fast float %5443, %5386
  %5445 = fmul fast float %5444, %5438
  %5446 = fmul fast float %4924, 4.000000e+00
  %5447 = fmul fast float %5446, %5387
  %5448 = fmul fast float %5447, %5439
  %5449 = fadd fast float %5442, %5429
  %5450 = fadd fast float %5445, %5430
  %5451 = fadd fast float %5448, %5431
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  br label %5455

; <label>:5455                                    ; preds = %5432, %5417
  %5456 = phi float [ %5452, %5432 ], [ %5429, %5417 ]
  %5457 = phi float [ %5453, %5432 ], [ %5430, %5417 ]
  %5458 = phi float [ %5454, %5432 ], [ %5431, %5417 ]
  %5459 = call float @dx.op.binary.f32(i32 35, float %5457, float %5458)  ; FMax(a,b)
  %5460 = call float @dx.op.binary.f32(i32 35, float %5456, float %5459)  ; FMax(a,b)
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = fmul fast float %5418, %5376
  %5463 = fmul fast float %5419, %5376
  %5464 = fmul fast float %5420, %5376
  %5465 = fsub fast float 1.000000e+00, %5339
  %5466 = bitcast float %5465 to i32
  %5467 = sitofp i32 %5466 to float
  %5468 = fmul fast float %5467, 5.000000e+00
  %5469 = fadd fast float %5468, 0xC1EFBF8940000000
  %5470 = fptosi float %5469 to i32
  %5471 = bitcast i32 %5470 to float
  %5472 = fmul fast float %5471, %4289
  %5473 = fmul fast float %5461, %5472
  %5474 = fmul fast float %5473, %5235
  %5475 = fmul fast float %5473, %5236
  %5476 = fmul fast float %5473, %5237
  %5477 = fadd fast float %5474, %5462
  %5478 = fadd fast float %5475, %5463
  %5479 = fadd fast float %5476, %5464
  %5480 = fmul fast float %5344, %5327
  %5481 = fmul fast float %5480, %5461
  %5482 = fmul fast float %5344, %5328
  %5483 = fmul fast float %5482, %5461
  %5484 = fmul fast float %5344, %5329
  %5485 = fmul fast float %5484, %5461
  %5486 = fmul fast float %5480, %5477
  %5487 = fmul fast float %5482, %5478
  %5488 = fmul fast float %5484, %5479
  %5489 = fadd fast float %5481, %5219
  %5490 = fmul fast float %5489, %4310
  %5491 = fadd fast float %5483, %5220
  %5492 = fmul fast float %5491, %4310
  %5493 = fadd fast float %5485, %5221
  %5494 = fmul fast float %5493, %4310
  %5495 = fadd fast float %5486, %5262
  %5496 = fmul fast float %5495, %4310
  %5497 = fadd fast float %5487, %5265
  %5498 = fmul fast float %5497, %4310
  %5499 = fadd fast float %5488, %5268
  %5500 = fmul fast float %5499, %4310
  br label %5501

; <label>:5501                                    ; preds = %5455, %5319, %5212
  %5502 = phi float [ %5263, %5212 ], [ %5263, %5319 ], [ %5496, %5455 ]
  %5503 = phi float [ %5266, %5212 ], [ %5266, %5319 ], [ %5498, %5455 ]
  %5504 = phi float [ %5269, %5212 ], [ %5269, %5319 ], [ %5500, %5455 ]
  %5505 = phi float [ %5258, %5212 ], [ %5258, %5319 ], [ %5490, %5455 ]
  %5506 = phi float [ %5259, %5212 ], [ %5259, %5319 ], [ %5492, %5455 ]
  %5507 = phi float [ %5260, %5212 ], [ %5260, %5319 ], [ %5494, %5455 ]
  %5508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.i32 %5508, 0
  %5510 = icmp eq i32 %5509, 0
  br i1 %5510, label %5945, label %5511

; <label>:5511                                    ; preds = %5501
  %5512 = fptoui float %74 to i32
  %5513 = fptoui float %75 to i32
  %5514 = lshr i32 %5512, 4
  %5515 = lshr i32 %5513, 4
  %5516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.i32 %5516, 0
  %5518 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5515, i32 %5517, i32 %5514)  ; UMad(a,b,c)
  %5519 = add nsw i32 %5509, -1
  %5520 = call i32 @dx.op.binary.i32(i32 37, i32 %5519, i32 0)  ; IMax(a,b)
  %5521 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5522 = fptoui float %5521 to i32
  %5523 = lshr i32 %5522, 5
  %5524 = call i32 @dx.op.binary.i32(i32 40, i32 %5523, i32 8191)  ; UMin(a,b)
  %5525 = shl i32 %5524, 2
  %5526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5525, i32 undef)  ; BufferLoad(srv,index,wot)
  %5527 = extractvalue %dx.types.ResRet.i32 %5526, 0
  %5528 = lshr i32 %5527, 16
  %5529 = and i32 %5527, 65535
  %5530 = lshr i32 %5527, 21
  %5531 = lshr i32 %5529, 5
  %5532 = call i32 @dx.op.binary.i32(i32 40, i32 %5531, i32 %5520)  ; UMin(a,b)
  %5533 = icmp ugt i32 %5530, %5532
  br i1 %5533, label %5945, label %5534

; <label>:5534                                    ; preds = %5511
  br label %5535

; <label>:5535                                    ; preds = %5935, %5534
  %5536 = phi i32 [ %5942, %5935 ], [ %5530, %5534 ]
  %5537 = phi float [ %5936, %5935 ], [ %5502, %5534 ]
  %5538 = phi float [ %5937, %5935 ], [ %5503, %5534 ]
  %5539 = phi float [ %5938, %5935 ], [ %5504, %5534 ]
  %5540 = phi float [ %5939, %5935 ], [ %5505, %5534 ]
  %5541 = phi float [ %5940, %5935 ], [ %5506, %5534 ]
  %5542 = phi float [ %5941, %5935 ], [ %5507, %5534 ]
  %5543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.i32 %5543, 0
  %5545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5518, i32 %5544, i32 %5536)  ; UMad(a,b,c)
  %5546 = shl i32 %5545, 2
  %5547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5546, i32 undef)  ; BufferLoad(srv,index,wot)
  %5548 = extractvalue %dx.types.ResRet.i32 %5547, 0
  %5549 = shl i32 %5536, 5
  %5550 = sub nsw i32 %5528, %5549
  %5551 = call i32 @dx.op.binary.i32(i32 37, i32 %5550, i32 0)  ; IMax(a,b)
  %5552 = call i32 @dx.op.binary.i32(i32 38, i32 %5551, i32 31)  ; IMin(a,b)
  %5553 = sub nsw i32 1, %5528
  %5554 = add nsw i32 %5553, %5529
  %5555 = call i32 @dx.op.binary.i32(i32 37, i32 %5554, i32 0)  ; IMax(a,b)
  %5556 = call i32 @dx.op.binary.i32(i32 38, i32 %5555, i32 32)  ; IMin(a,b)
  %5557 = and i32 %5556, 31
  %5558 = shl i32 -1, %5557
  %5559 = xor i32 %5558, -1
  %5560 = and i32 %5552, 31
  %5561 = shl i32 %5559, %5560
  %5562 = icmp eq i32 %5556, 32
  %5563 = select i1 %5562, i32 -1, i32 %5561
  %5564 = and i32 %5563, %5548
  %5565 = icmp eq i32 %5564, 0
  br i1 %5565, label %5935, label %5566

; <label>:5566                                    ; preds = %5535
  br label %5567

; <label>:5567                                    ; preds = %5647, %5566
  %5568 = phi i32 [ %5579, %5647 ], [ %5564, %5566 ]
  %5569 = phi float [ %5648, %5647 ], [ %5537, %5566 ]
  %5570 = phi float [ %5649, %5647 ], [ %5538, %5566 ]
  %5571 = phi float [ %5650, %5647 ], [ %5539, %5566 ]
  %5572 = phi float [ %5651, %5647 ], [ %5540, %5566 ]
  %5573 = phi float [ %5652, %5647 ], [ %5541, %5566 ]
  %5574 = phi float [ %5653, %5647 ], [ %5542, %5566 ]
  %5575 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5568)  ; FirstbitLo(value)
  %5576 = add i32 %5575, %5549
  %5577 = and i32 %5575, 31
  %5578 = shl i32 1, %5577
  %5579 = xor i32 %5578, %5568
  %5580 = mul i32 %5576, 112
  %5581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5580, i32 undef)  ; BufferLoad(srv,index,wot)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5585 = or i32 %5580, 12
  %5586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 0
  %5588 = add i32 %5580, 44
  %5589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5588, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 0
  %5591 = add i32 %5580, 48
  %5592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5591, i32 undef)  ; BufferLoad(srv,index,wot)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.f32 %5592, 2
  %5596 = add i32 %5580, 80
  %5597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5596, i32 undef)  ; BufferLoad(srv,index,wot)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5597, 2
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = select i1 %175, float %5598, float %5582
  %5602 = select i1 %175, float %5600, float %5583
  %5603 = select i1 %175, float %5599, float %5584
  %5604 = fsub fast float %5593, %133
  %5605 = fsub fast float %5594, %134
  %5606 = fsub fast float %5595, %135
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5606, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 24, float %5607)  ; Sqrt(value)
  %5609 = fdiv fast float 1.000000e+00, %5608
  %5610 = fmul fast float %5609, %5604
  %5611 = fmul fast float %5609, %5605
  %5612 = fmul fast float %5609, %5606
  %5613 = fadd fast float %5608, %5587
  %5614 = fdiv fast float 1.000000e+00, %5613
  %5615 = fmul float %5590, %5614
  %5616 = fmul float %5615, %5615
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = and i32 %5578, %5564
  %5619 = icmp eq i32 %5618, 0
  br i1 %5619, label %5642, label %5620, !dx.controlflow.hints !76

; <label>:5620                                    ; preds = %5567
  %5621 = lshr i32 %5512, 5
  %5622 = lshr i32 %5513, 5
  %5623 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5621, i32 %5622, i32 %5576, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = and i32 %5624, 3
  %5626 = icmp eq i32 %5625, 0
  %5627 = select i1 %5626, float 1.000000e+00, float 0.000000e+00
  %5628 = icmp eq i32 %5625, 3
  br i1 %5628, label %5629, label %5642

; <label>:5629                                    ; preds = %5620
  %5630 = lshr i32 %5624, 10
  %5631 = and i32 %5630, 8160
  %5632 = and i32 %5513, 31
  %5633 = or i32 %5631, %5632
  %5634 = lshr i32 %5624, 1
  %5635 = and i32 %5634, 16352
  %5636 = and i32 %5512, 31
  %5637 = or i32 %5635, %5636
  %5638 = lshr i32 %5624, 23
  %5639 = and i32 %5638, 255
  %5640 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5637, i32 %5633, i32 %5639, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  br label %5642

; <label>:5642                                    ; preds = %5629, %5620, %5567
  %5643 = phi float [ %5641, %5629 ], [ %5627, %5620 ], [ 0.000000e+00, %5567 ]
  %5644 = call float @dx.op.binary.f32(i32 36, float %5643, float %5643)  ; FMin(a,b)
  %5645 = call float @dx.op.binary.f32(i32 36, float %5643, float %5644)  ; FMin(a,b)
  %5646 = fcmp fast ogt float %5645, 0.000000e+00
  br i1 %5646, label %5655, label %5647, !dx.controlflow.hints !77

; <label>:5647                                    ; preds = %5891, %5642
  %5648 = phi float [ %5569, %5642 ], [ %5931, %5891 ]
  %5649 = phi float [ %5570, %5642 ], [ %5932, %5891 ]
  %5650 = phi float [ %5571, %5642 ], [ %5933, %5891 ]
  %5651 = phi float [ %5572, %5642 ], [ %5925, %5891 ]
  %5652 = phi float [ %5573, %5642 ], [ %5926, %5891 ]
  %5653 = phi float [ %5574, %5642 ], [ %5927, %5891 ]
  %5654 = icmp eq i32 %5568, %5578
  br i1 %5654, label %5934, label %5567

; <label>:5655                                    ; preds = %5642
  %5656 = fmul fast float %5643, %5601
  %5657 = fmul fast float %5643, %5602
  %5658 = fmul fast float %5643, %5603
  %5659 = fsub fast float %5595, %4712
  %5660 = fcmp fast ogt float %5659, 0.000000e+00
  %5661 = fsub fast float %135, %4712
  %5662 = fcmp fast ogt float %5661, 0.000000e+00
  %5663 = xor i1 %5662, %5660
  %5664 = fsub fast float %4712, %5595
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = fadd fast float %5665, %5595
  %5667 = select i1 %5663, float %5595, float %5666
  %5668 = fsub fast float %5667, %135
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5668, float %5604, float %5605, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 25, float %5669)  ; Rsqrt(value)
  %5671 = fmul fast float %5670, %5604
  %5672 = fmul fast float %5670, %5605
  %5673 = fmul fast float %5670, %5668
  %5674 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4720)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fdiv fast float 1.000000e+00, %5675
  %5677 = fmul fast float %5676, %5674
  %5678 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5661, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = fcmp fast ogt float %5678, 0.000000e+00
  %5680 = fcmp fast olt float %5678, 0.000000e+00
  %5681 = zext i1 %5679 to i32
  %5682 = zext i1 %5680 to i32
  %5683 = sub nsw i32 %5681, %5682
  %5684 = sitofp i32 %5683 to float
  %5685 = fsub fast float %5667, %4712
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5685, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = fcmp fast ogt float %5686, 0.000000e+00
  %5688 = fcmp fast olt float %5686, 0.000000e+00
  %5689 = zext i1 %5687 to i32
  %5690 = zext i1 %5688 to i32
  %5691 = sub nsw i32 %5689, %5690
  %5692 = sitofp i32 %5691 to float
  %5693 = fcmp fast une float %5684, %5692
  br i1 %5693, label %5694, label %5704

; <label>:5694                                    ; preds = %5655
  %5695 = fmul fast float %5677, %5673
  %5696 = fmul fast float %5677, %5672
  %5697 = fmul fast float %5677, %5671
  %5698 = fmul fast float %5697, %5697
  %5699 = fmul fast float %5696, %5696
  %5700 = fadd fast float %5698, %5699
  %5701 = fmul fast float %5695, %5695
  %5702 = fadd fast float %5700, %5701
  %5703 = call float @dx.op.unary.f32(i32 24, float %5702)  ; Sqrt(value)
  br label %5716

; <label>:5704                                    ; preds = %5655
  %5705 = icmp slt i32 %5683, 0
  br i1 %5705, label %5706, label %5716

; <label>:5706                                    ; preds = %5704
  %5707 = fsub fast float %133, %5593
  %5708 = fsub fast float %134, %5594
  %5709 = fsub fast float %135, %5667
  %5710 = fmul fast float %5707, %5707
  %5711 = fmul fast float %5708, %5708
  %5712 = fadd fast float %5710, %5711
  %5713 = fmul fast float %5709, %5709
  %5714 = fadd fast float %5712, %5713
  %5715 = call float @dx.op.unary.f32(i32 24, float %5714)  ; Sqrt(value)
  br label %5716

; <label>:5716                                    ; preds = %5706, %5704, %5694
  %5717 = phi float [ %5703, %5694 ], [ %5715, %5706 ], [ 0.000000e+00, %5704 ]
  %5718 = and i1 %5662, %5660
  %5719 = fsub fast float -0.000000e+00, %5717
  %5720 = select i1 %5718, float -0.000000e+00, float %5719
  %5721 = fmul fast float %4713, 0x3FF7154760000000
  %5722 = fmul fast float %5721, %5720
  %5723 = fmul fast float %4714, 0x3FF7154760000000
  %5724 = fmul fast float %5723, %5720
  %5725 = fmul fast float %4715, 0x3FF7154760000000
  %5726 = fmul fast float %5725, %5720
  %5727 = call float @dx.op.unary.f32(i32 21, float %5722)  ; Exp(value)
  %5728 = call float @dx.op.unary.f32(i32 21, float %5724)  ; Exp(value)
  %5729 = call float @dx.op.unary.f32(i32 21, float %5726)  ; Exp(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = fmul fast float %5656, %5730
  %5734 = fmul fast float %5657, %5731
  %5735 = fmul fast float %5658, %5732
  %5736 = fsub fast float %5610, %4912
  %5737 = fsub fast float %5611, %4911
  %5738 = fsub fast float %5612, %4910
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5736, float %5737, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 25, float %5739)  ; Rsqrt(value)
  %5741 = fmul fast float %5740, %5736
  %5742 = fmul fast float %5740, %5737
  %5743 = fmul fast float %5740, %5738
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4908, float %4907, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5747 = fmul fast float %5746, %5617
  %5748 = fmul fast float %5746, %5746
  %5749 = fmul fast float %5748, %5270
  %5750 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5751 = fmul fast float %5747, %5750
  %5752 = bitcast float %5607 to i32
  %5753 = ashr i32 %5752, 1
  %5754 = sub nsw i32 1597463007, %5753
  %5755 = bitcast i32 %5754 to float
  %5756 = fmul fast float %5755, %5604
  %5757 = fmul fast float %5755, %5605
  %5758 = fmul fast float %5755, %5606
  %5759 = fsub fast float %5756, %4912
  %5760 = fsub fast float %5757, %4911
  %5761 = fsub fast float %5758, %4910
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5759, %5763
  %5765 = fmul fast float %5760, %5763
  %5766 = fmul fast float %5761, %5763
  %5767 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = fmul fast float %5767, %5767
  %5769 = call float @dx.op.unary.f32(i32 6, float %5744)  ; FAbs(value)
  %5770 = fsub fast float 1.000000e+00, %4922
  %5771 = call float @dx.op.binary.f32(i32 35, float %5770, float 0x3F847AE140000000)  ; FMax(a,b)
  %5772 = fmul fast float %5771, %5771
  %5773 = fmul fast float %5772, %5772
  %5774 = fsub fast float 1.000000e+00, %5773
  %5775 = fmul fast float %4926, %4926
  %5776 = fmul fast float %5775, %5774
  %5777 = fadd fast float %5776, %5773
  %5778 = bitcast float %5777 to i32
  %5779 = ashr i32 %5778, 1
  %5780 = add nsw i32 %5779, 532487669
  %5781 = bitcast i32 %5780 to float
  %5782 = fadd fast float %5781, %4926
  %5783 = fmul fast float %5773, %5768
  %5784 = fsub fast float 1.000000e+00, %5768
  %5785 = fadd fast float %5784, %5783
  %5786 = fmul fast float %5769, %5769
  %5787 = fmul fast float %5786, %5774
  %5788 = fadd fast float %5787, %5773
  %5789 = bitcast float %5788 to i32
  %5790 = ashr i32 %5789, 1
  %5791 = add nsw i32 %5790, 532487669
  %5792 = bitcast i32 %5791 to float
  %5793 = fadd fast float %5792, %5769
  %5794 = fmul fast float %5785, %5785
  %5795 = fmul fast float %5794, %5782
  %5796 = fmul fast float %5795, %5793
  %5797 = fdiv fast float 1.000000e+00, %5796
  %5798 = bitcast float %5773 to i32
  %5799 = sitofp i32 %5798 to float
  %5800 = fmul fast float %5799, 0x3FE7F73180000000
  %5801 = fadd fast float %5800, 0x41AFE27C40000000
  %5802 = fptosi float %5801 to i32
  %5803 = bitcast i32 %5802 to float
  %5804 = fmul fast float %5590, 0x3FD80E9D60000000
  %5805 = fmul fast float %5804, %5755
  %5806 = fadd fast float %5803, %5805
  %5807 = bitcast float %5806 to i32
  %5808 = sub nsw i32 2129859010, %5807
  %5809 = bitcast i32 %5808 to float
  %5810 = fmul fast float %5773, %5797
  %5811 = fmul fast float %5810, %5803
  %5812 = fmul fast float %5811, %5809
  %5813 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5814 = fsub fast float 1.000000e+00, %5813
  %5815 = bitcast float %5814 to i32
  %5816 = sitofp i32 %5815 to float
  %5817 = fmul fast float %5816, 5.000000e+00
  %5818 = fadd fast float %5817, 0xC1EFBF8940000000
  %5819 = fptosi float %5818 to i32
  %5820 = bitcast i32 %5819 to float
  %5821 = fsub fast float 1.000000e+00, %4913
  %5822 = fsub fast float 1.000000e+00, %4914
  %5823 = fsub fast float 1.000000e+00, %4924
  %5824 = fmul fast float %5820, %5821
  %5825 = fmul fast float %5820, %5822
  %5826 = fmul fast float %5820, %5823
  %5827 = fadd fast float %5824, %4913
  %5828 = fadd fast float %5825, %4914
  %5829 = fadd fast float %5826, %4924
  br i1 %5185, label %5830, label %5853

; <label>:5830                                    ; preds = %5716
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4290, float %5813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = fadd fast float %5832, -5.000000e-01
  %5836 = fadd fast float %5833, -5.000000e-01
  %5837 = fadd fast float %5834, -5.000000e-01
  %5838 = fmul fast float %4913, 4.000000e+00
  %5839 = fmul fast float %5838, %5821
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %4914, 4.000000e+00
  %5842 = fmul fast float %5841, %5822
  %5843 = fmul fast float %5842, %5836
  %5844 = fmul fast float %4924, 4.000000e+00
  %5845 = fmul fast float %5844, %5823
  %5846 = fmul fast float %5845, %5837
  %5847 = fadd fast float %5840, %5827
  %5848 = fadd fast float %5843, %5828
  %5849 = fadd fast float %5846, %5829
  %5850 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5851 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5852 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  br label %5853

; <label>:5853                                    ; preds = %5830, %5716
  %5854 = phi float [ %5850, %5830 ], [ %5827, %5716 ]
  %5855 = phi float [ %5851, %5830 ], [ %5828, %5716 ]
  %5856 = phi float [ %5852, %5830 ], [ %5829, %5716 ]
  %5857 = fmul fast float %5744, 9.843750e-01
  %5858 = fadd fast float %5857, 7.812500e-03
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5858, float %5175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 2
  %5861 = extractvalue %dx.types.ResRet.f32 %5859, 3
  %5862 = fmul fast float %5860, %4913
  %5863 = fmul fast float %5860, %4914
  %5864 = fmul fast float %5860, %4924
  %5865 = fadd fast float %5862, %5861
  %5866 = fadd fast float %5863, %5861
  %5867 = fadd fast float %5864, %5861
  br i1 %5185, label %5868, label %5891

; <label>:5868                                    ; preds = %5853
  %5869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4290, float %5744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5870 = extractvalue %dx.types.ResRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.ResRet.f32 %5869, 1
  %5872 = extractvalue %dx.types.ResRet.f32 %5869, 2
  %5873 = fadd fast float %5870, -5.000000e-01
  %5874 = fadd fast float %5871, -5.000000e-01
  %5875 = fadd fast float %5872, -5.000000e-01
  %5876 = fmul fast float %4913, 4.000000e+00
  %5877 = fmul fast float %5876, %5821
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %4914, 4.000000e+00
  %5880 = fmul fast float %5879, %5822
  %5881 = fmul fast float %5880, %5874
  %5882 = fmul fast float %4924, 4.000000e+00
  %5883 = fmul fast float %5882, %5823
  %5884 = fmul fast float %5883, %5875
  %5885 = fadd fast float %5878, %5865
  %5886 = fadd fast float %5881, %5866
  %5887 = fadd fast float %5884, %5867
  %5888 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5889 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5890 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  br label %5891

; <label>:5891                                    ; preds = %5868, %5853
  %5892 = phi float [ %5888, %5868 ], [ %5865, %5853 ]
  %5893 = phi float [ %5889, %5868 ], [ %5866, %5853 ]
  %5894 = phi float [ %5890, %5868 ], [ %5867, %5853 ]
  %5895 = call float @dx.op.binary.f32(i32 35, float %5893, float %5894)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5892, float %5895)  ; FMax(a,b)
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5854, %5812
  %5899 = fmul fast float %5855, %5812
  %5900 = fmul fast float %5856, %5812
  %5901 = fsub fast float 1.000000e+00, %5745
  %5902 = bitcast float %5901 to i32
  %5903 = sitofp i32 %5902 to float
  %5904 = fmul fast float %5903, 5.000000e+00
  %5905 = fadd fast float %5904, 0xC1EFBF8940000000
  %5906 = fptosi float %5905 to i32
  %5907 = bitcast i32 %5906 to float
  %5908 = fmul fast float %5907, %4289
  %5909 = fmul fast float %5897, %5908
  %5910 = fmul fast float %5909, %5235
  %5911 = fmul fast float %5909, %5236
  %5912 = fmul fast float %5909, %5237
  %5913 = fadd fast float %5910, %5898
  %5914 = fadd fast float %5911, %5899
  %5915 = fadd fast float %5912, %5900
  %5916 = fmul fast float %5733, %4310
  %5917 = fmul fast float %5916, %5751
  %5918 = fmul fast float %5917, %5897
  %5919 = fmul fast float %5734, %4310
  %5920 = fmul fast float %5919, %5751
  %5921 = fmul fast float %5920, %5897
  %5922 = fmul fast float %5735, %4310
  %5923 = fmul fast float %5922, %5751
  %5924 = fmul fast float %5923, %5897
  %5925 = fadd fast float %5918, %5572
  %5926 = fadd fast float %5921, %5573
  %5927 = fadd fast float %5924, %5574
  %5928 = fmul fast float %5917, %5913
  %5929 = fmul fast float %5920, %5914
  %5930 = fmul fast float %5923, %5915
  %5931 = fadd fast float %5928, %5569
  %5932 = fadd fast float %5929, %5570
  %5933 = fadd fast float %5930, %5571
  br label %5647

; <label>:5934                                    ; preds = %5647
  br label %5935

; <label>:5935                                    ; preds = %5934, %5535
  %5936 = phi float [ %5537, %5535 ], [ %5648, %5934 ]
  %5937 = phi float [ %5538, %5535 ], [ %5649, %5934 ]
  %5938 = phi float [ %5539, %5535 ], [ %5650, %5934 ]
  %5939 = phi float [ %5540, %5535 ], [ %5651, %5934 ]
  %5940 = phi float [ %5541, %5535 ], [ %5652, %5934 ]
  %5941 = phi float [ %5542, %5535 ], [ %5653, %5934 ]
  %5942 = add i32 %5536, 1
  %5943 = icmp ugt i32 %5942, %5532
  br i1 %5943, label %5944, label %5535

; <label>:5944                                    ; preds = %5935
  br label %5945

; <label>:5945                                    ; preds = %5944, %5511, %5501
  %5946 = phi float [ %5502, %5501 ], [ %5502, %5511 ], [ %5936, %5944 ]
  %5947 = phi float [ %5503, %5501 ], [ %5503, %5511 ], [ %5937, %5944 ]
  %5948 = phi float [ %5504, %5501 ], [ %5504, %5511 ], [ %5938, %5944 ]
  %5949 = phi float [ %5505, %5501 ], [ %5505, %5511 ], [ %5939, %5944 ]
  %5950 = phi float [ %5506, %5501 ], [ %5506, %5511 ], [ %5940, %5944 ]
  %5951 = phi float [ %5507, %5501 ], [ %5507, %5511 ], [ %5941, %5944 ]
  %5952 = call float @dx.op.unary.f32(i32 24, float %4919)  ; Sqrt(value)
  %5953 = call float @dx.op.unary.f32(i32 24, float %4920)  ; Sqrt(value)
  %5954 = call float @dx.op.unary.f32(i32 24, float %4921)  ; Sqrt(value)
  %5955 = fmul fast float %5952, %5949
  %5956 = fmul fast float %5953, %5950
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  br i1 %175, label %5959, label %5979

; <label>:5959                                    ; preds = %5945
  %5960 = fadd fast float %5951, %4287
  %5961 = fmul fast float %5960, %4288
  %5962 = fsub fast float 1.000000e+00, %4288
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 3
  %5966 = fmul fast float %5965, %5963
  %5967 = fadd fast float %5966, %5961
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = fmul fast float %5969, %5241
  %5971 = fsub fast float %5967, %5970
  %5972 = fadd fast float %5956, %5955
  %5973 = fmul fast float %5958, %5972
  %5974 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5975 = fsub fast float %5971, %5974
  %5976 = extractvalue %dx.types.CBufRet.f32 %5964, 2
  %5977 = fmul fast float %5975, %5976
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  br label %5995

; <label>:5979                                    ; preds = %5945
  %5980 = fmul fast float %5954, %5951
  %5981 = fmul fast float %5958, %5955
  %5982 = fmul fast float %5958, %5956
  %5983 = fmul fast float %5980, %5958
  %5984 = add i32 %35, 356
  %5985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.i32 %5985, 0
  %5987 = and i32 %5986, 32
  %5988 = icmp eq i32 %5987, 0
  br i1 %5988, label %5995, label %5989

; <label>:5989                                    ; preds = %5979
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = fmul fast float %5991, 0x3FE99999A0000000
  %5993 = fadd fast float %5991, %5981
  %5994 = fadd fast float %5992, %5983
  br label %5995

; <label>:5995                                    ; preds = %5989, %5979, %5959
  %5996 = phi float [ %5973, %5959 ], [ %5993, %5989 ], [ %5981, %5979 ]
  %5997 = phi float [ %5978, %5959 ], [ %5982, %5989 ], [ %5982, %5979 ]
  %5998 = phi float [ 1.000000e+00, %5959 ], [ %5994, %5989 ], [ %5983, %5979 ]
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 0
  %6001 = fmul fast float %6000, %5947
  %6002 = fmul fast float %6000, %5948
  %6003 = fadd fast float %5947, %5946
  %6004 = select i1 %175, float %6003, float %5946
  %6005 = fmul float %6004, %6000
  %6006 = select i1 %175, float 0.000000e+00, float %6001
  %6007 = select i1 %175, float 0.000000e+00, float %6002
  %6008 = fmul fast float %5996, %5952
  %6009 = fmul fast float %5997, %5953
  %6010 = fmul fast float %5998, %5954
  %6011 = fadd fast float %6005, %6008
  %6012 = fadd fast float %6006, %6009
  %6013 = fadd fast float %6007, %6010
  %6014 = select i1 %175, float %5997, float %6012
  %6015 = select i1 %175, float %5998, float %6013
  %6016 = call float @dx.op.binary.f32(i32 36, float %6011, float 3.225500e+04)  ; FMin(a,b)
  %6017 = call float @dx.op.binary.f32(i32 36, float %6014, float 3.225500e+04)  ; FMin(a,b)
  %6018 = call float @dx.op.binary.f32(i32 36, float %6015, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6017)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6018)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!47}
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !38, !41}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 7, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!41 = !{!42, !43, !44, !45, !46}
!42 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !74}
!49 = !{!50, !72, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71}
!51 = !{i32 0, !"SV_Position", i8 9, i8 3, !52, i8 4, i32 1, i8 4, i32 0, i8 0, !53}
!52 = !{i32 0}
!53 = !{i32 3, i32 11}
!54 = !{i32 1, !"COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 1, i8 0, !55}
!55 = !{i32 3, i32 14}
!56 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 2, i8 0, !57}
!57 = !{i32 3, i32 3}
!58 = !{i32 3, !"NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 3, i8 0, !59}
!59 = !{i32 3, i32 7}
!60 = !{i32 4, !"TANGENT", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 4, i8 0, !61}
!61 = !{i32 3, i32 15}
!62 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!63 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, !61}
!65 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 8, i8 0, !57}
!66 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!67 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 10, i8 0, !68}
!68 = !{i32 3, i32 5}
!69 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 11, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

