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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
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
; shader hash: 24beed305838b1ca168b259e92d5ea87
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture    byte         r/o     T25     t68,space1     1
;                                   texture     f32          2d     T26      t0,space2     1
;                                   texture     f32          2d     T27     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = icmp ne i32 %32, 0
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = select i1 %33, float 1.000000e+00, float -1.000000e+00
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
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %74, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %75, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
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
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %29, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.i32 %152, 3
  %154 = and i32 %153, 3
  %155 = icmp ne i32 %154, 0
  %156 = and i32 %153, 4
  %157 = icmp ne i32 %156, 0
  %158 = and i1 %155, %157
  br i1 %158, label %159, label %170

; <label>:159                                     ; preds = %0
  %160 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %161 = fmul fast float %160, %75
  %162 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %163 = fmul fast float %162, %74
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %163, float %161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fsub fast float 1.000000e+00, %165
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = fcmp fast olt float %166, %168
  br label %173

; <label>:170                                     ; preds = %0
  %171 = icmp eq i32 %156, 0
  %172 = and i1 %155, %171
  br label %173

; <label>:173                                     ; preds = %170, %159
  %174 = phi i1 [ %169, %159 ], [ %172, %170 ]
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = fmul fast float %176, 0x3FE3C6EF40000000
  %178 = frem fast float %74, 2.560000e+02
  %179 = frem fast float %75, 2.560000e+02
  %180 = fptoui float %178 to i32
  %181 = fptoui float %179 to i32
  %182 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %180, i32 %181, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = fadd fast float %183, %177
  %186 = fadd fast float %184, %177
  %187 = call float @dx.op.unary.f32(i32 22, float %185)  ; Frc(value)
  %188 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %189 = add i32 %34, 156
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = shl i32 %191, 4
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %191, 7
  %196 = and i32 %195, 32752
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = lshr i32 %191, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %34, 216
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 255
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F70101020000000
  %207 = lshr i32 %203, 8
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F70101020000000
  %211 = lshr i32 %203, 16
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = add i32 %34, 36
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %217, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %34, 288
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = fmul fast float %226, 0x3F50624DE0000000
  %230 = fmul fast float %228, 0x3F50624DE0000000
  %231 = add i32 %34, 172
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %243 = add i32 %34, 232
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %257 = add i32 %34, 52
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %34, 304
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = add i32 %34, 188
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %285 = add i32 %34, 248
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %299 = add i32 %34, 68
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %34, 320
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %310, 0x3F50624DE0000000
  %314 = fmul fast float %312, 0x3F50624DE0000000
  %315 = add i32 %34, 204
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %327 = add i32 %34, 264
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %341 = add i32 %34, 84
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %34, 336
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = fmul fast float %352, 0x3F50624DE0000000
  %356 = fmul fast float %354, 0x3F50624DE0000000
  %357 = add i32 %34, 348
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 32
  %361 = icmp eq i32 %360, 0
  %362 = and i32 %359, 64
  %363 = icmp eq i32 %362, 0
  %364 = and i32 %359, 128
  %365 = icmp eq i32 %364, 0
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

; <label>:370                                     ; preds = %173
  %371 = add i32 %34, 472
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = extractvalue %dx.types.ResRet.f32 %376, 1
  %379 = extractvalue %dx.types.ResRet.f32 %376, 2
  %380 = fmul fast float %377, %64
  %381 = fmul fast float %378, %65
  %382 = fmul fast float %379, %66
  br label %383

; <label>:383                                     ; preds = %370, %173
  %384 = phi float [ %66, %173 ], [ %382, %370 ]
  %385 = phi float [ %65, %173 ], [ %381, %370 ]
  %386 = phi float [ %64, %173 ], [ %380, %370 ]
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 2
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %410, label %391

; <label>:391                                     ; preds = %383
  %392 = add i32 %34, 44
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %386, float 1.000000e+00
  %398 = add i32 %34, 60
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %385, float 1.000000e+00
  %404 = add i32 %34, 76
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %384, float 1.000000e+00
  br label %410

; <label>:410                                     ; preds = %391, %383
  %411 = phi float [ %384, %383 ], [ %409, %391 ]
  %412 = phi float [ %385, %383 ], [ %403, %391 ]
  %413 = phi float [ %386, %383 ], [ %397, %391 ]
  %414 = lshr i32 %388, 20
  %415 = and i32 %414, 3
  %416 = add nuw nsw i32 %415, 1
  %417 = add i32 %34, 24
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %34, 28
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = or i32 %422, %419
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %883, label %425

; <label>:425                                     ; preds = %410
  %426 = and i32 %419, 262144
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, float %37, float 1.000000e+00
  %429 = select i1 %427, float %38, float 0.000000e+00
  %430 = select i1 %427, float %39, float 0.000000e+00
  %431 = select i1 %427, float %40, float 1.000000e+00
  %432 = select i1 %427, float %41, float %62
  %433 = select i1 %427, float %42, float %63
  %434 = add i32 %34, 284
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %438, 0x3F50624DE0000000
  %440 = add i32 %34, 88
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = lshr i32 %442, 24
  %446 = add i32 %34, 292
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %34, 32
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 22
  %457 = shl nuw nsw i32 %456, 5
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = shl i32 %455, 4
  %460 = and i32 %459, 32752
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %455, 7
  %463 = and i32 %462, 32752
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 3
  %467 = fmul fast float %466, 1.000000e+03
  %468 = fmul fast float %229, %467
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fadd fast float %469, %219
  %471 = fmul fast float %230, %467
  %472 = call float @dx.op.unary.f32(i32 22, float %471)  ; Frc(value)
  %473 = fadd fast float %472, %221
  %474 = fmul fast float %439, %467
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = fmul fast float %475, 0x401921FB60000000
  %477 = fadd fast float %476, %458
  %478 = call float @dx.op.unary.f32(i32 13, float %477)  ; Sin(value)
  %479 = call float @dx.op.unary.f32(i32 12, float %477)  ; Cos(value)
  %480 = fsub fast float -0.000000e+00, %478
  %481 = fadd fast float %432, -5.000000e-01
  %482 = fadd fast float %433, -5.000000e-01
  %483 = fmul fast float %450, %481
  %484 = fmul fast float %452, %482
  %485 = fadd fast float %483, 5.000000e-01
  %486 = fadd fast float %484, 5.000000e-01
  %487 = fmul fast float %461, %485
  %488 = fmul fast float %464, %486
  %489 = fmul fast float %479, %487
  %490 = call float @dx.op.tertiary.f32(i32 46, float %480, float %488, float %489)  ; FMad(a,b,c)
  %491 = fmul fast float %478, %487
  %492 = call float @dx.op.tertiary.f32(i32 46, float %479, float %488, float %491)  ; FMad(a,b,c)
  %493 = fadd fast float %470, %490
  %494 = fadd fast float %473, %492
  %495 = icmp ugt i32 %444, 1
  %496 = icmp ugt i32 %442, 33554431
  %497 = or i1 %496, %495
  br i1 %497, label %498, label %523

; <label>:498                                     ; preds = %425
  %499 = add i32 %34, 228
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = fmul fast float %466, %503
  %505 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %506 = mul nuw nsw i32 %444, %445
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %505, %507
  %509 = call float @dx.op.unary.f32(i32 27, float %508)  ; Round_ni(value)
  %510 = fptoui float %509 to i32
  %511 = urem i32 %510, %444
  %512 = udiv i32 %510, %445
  %513 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %515 = uitofp i32 %511 to float
  %516 = uitofp i32 %512 to float
  %517 = fadd fast float %513, %515
  %518 = fadd fast float %514, %516
  %519 = uitofp i32 %444 to float
  %520 = uitofp i32 %445 to float
  %521 = fdiv fast float %517, %519
  %522 = fdiv fast float %518, %520
  br label %523

; <label>:523                                     ; preds = %498, %425
  %524 = phi float [ %521, %498 ], [ %493, %425 ]
  %525 = phi float [ %522, %498 ], [ %494, %425 ]
  %526 = and i32 %419, 16
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %724, label %528

; <label>:528                                     ; preds = %523
  %529 = add i32 %34, 360
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = add i32 %531, 0
  %533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %533, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = extractvalue %dx.types.ResRet.f32 %534, 3
  %539 = and i32 %442, 255
  %540 = uitofp i32 %539 to float
  %541 = lshr i32 %442, 8
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %538, %540
  %545 = fadd fast float %544, %543
  %546 = fmul fast float %545, 0x3F70101000000000
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 512
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %559, label %551

; <label>:551                                     ; preds = %528
  %552 = add i32 %34, 440
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %554, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %71, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  br label %559

; <label>:559                                     ; preds = %551, %528
  %560 = phi float [ %558, %551 ], [ 1.000000e+00, %528 ]
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 33554432
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %671, label %565

; <label>:565                                     ; preds = %559
  %566 = add i32 %34, 224
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %34, 228
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 24
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = and i32 %579, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %579, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %579, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = add i32 %34, 220
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = lshr i32 %596, 24
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = and i32 %596, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %596, 8
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = lshr i32 %596, 16
  %608 = and i32 %607, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = bitcast float %535 to i32
  %612 = ashr i32 %611, 1
  %613 = sub nsw i32 1597463174, %612
  %614 = bitcast i32 %613 to float
  %615 = fmul fast float %535, 5.000000e-01
  %616 = fmul fast float %614, %614
  %617 = fmul fast float %616, %615
  %618 = fsub fast float 1.500000e+00, %617
  %619 = fmul fast float %614, %535
  %620 = fmul fast float %619, %618
  %621 = bitcast float %536 to i32
  %622 = ashr i32 %621, 1
  %623 = sub nsw i32 1597463174, %622
  %624 = bitcast i32 %623 to float
  %625 = fmul fast float %536, 5.000000e-01
  %626 = fmul fast float %624, %624
  %627 = fmul fast float %626, %625
  %628 = fsub fast float 1.500000e+00, %627
  %629 = fmul fast float %624, %536
  %630 = fmul fast float %629, %628
  %631 = bitcast float %537 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %537, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %537
  %640 = fmul fast float %639, %638
  %641 = fsub fast float %620, %602
  %642 = fsub fast float %630, %606
  %643 = fsub fast float %640, %610
  %644 = fmul fast float %641, %570
  %645 = fmul fast float %642, %572
  %646 = fmul fast float %643, %577
  %647 = fadd fast float %644, %585
  %648 = fadd fast float %645, %589
  %649 = fadd fast float %646, %593
  %650 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %653 = fmul fast float %650, %650
  %654 = fmul fast float %651, %651
  %655 = fmul fast float %652, %652
  %656 = fsub fast float %653, %535
  %657 = fsub fast float %654, %536
  %658 = fsub fast float %655, %537
  %659 = fmul fast float %656, %560
  %660 = fmul fast float %657, %560
  %661 = fmul fast float %658, %560
  %662 = fadd fast float %659, %535
  %663 = fadd fast float %660, %536
  %664 = fadd fast float %661, %537
  %665 = fadd fast float %582, %546
  %666 = fsub fast float %665, %599
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = fsub fast float %667, %546
  %669 = fmul fast float %668, %560
  %670 = fadd fast float %669, %546
  br label %724

; <label>:671                                     ; preds = %559
  %672 = and i32 %562, 134217728
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %708, label %674

; <label>:674                                     ; preds = %671
  %675 = call float @dx.op.unary.f32(i32 24, float %206)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %210)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %678 = fadd fast float %675, -5.000000e-01
  %679 = fadd fast float %676, -5.000000e-01
  %680 = fadd fast float %677, -5.000000e-01
  %681 = fmul fast float %678, %560
  %682 = fmul fast float %679, %560
  %683 = fmul fast float %680, %560
  %684 = fadd fast float %681, 5.000000e-01
  %685 = fadd fast float %682, 5.000000e-01
  %686 = fadd fast float %683, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 24, float %535)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %536)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %537)  ; Sqrt(value)
  %690 = fmul fast float %684, 2.000000e+00
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fmul fast float %691, %687
  %693 = fadd fast float %692, %690
  %694 = fmul fast float %693, %687
  %695 = fmul fast float %685, 2.000000e+00
  %696 = fsub fast float 1.000000e+00, %695
  %697 = fmul fast float %696, %688
  %698 = fadd fast float %697, %695
  %699 = fmul fast float %698, %688
  %700 = fmul fast float %686, 2.000000e+00
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %701, %689
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %703, %689
  %705 = fmul fast float %694, %694
  %706 = fmul fast float %699, %699
  %707 = fmul fast float %704, %704
  br label %724

; <label>:708                                     ; preds = %671
  %709 = fmul fast float %206, %206
  %710 = fmul fast float %210, %210
  %711 = fmul fast float %214, %214
  %712 = fadd fast float %709, -1.000000e+00
  %713 = fadd fast float %710, -1.000000e+00
  %714 = fadd fast float %711, -1.000000e+00
  %715 = fmul fast float %560, %712
  %716 = fmul fast float %560, %713
  %717 = fmul fast float %560, %714
  %718 = fadd fast float %715, 1.000000e+00
  %719 = fadd fast float %716, 1.000000e+00
  %720 = fadd fast float %717, 1.000000e+00
  %721 = fmul fast float %718, %535
  %722 = fmul fast float %719, %536
  %723 = fmul fast float %720, %537
  br label %724

; <label>:724                                     ; preds = %708, %674, %565, %523
  %725 = phi float [ %670, %565 ], [ %546, %674 ], [ %546, %708 ], [ 0x3FA23C0BE0000000, %523 ]
  %726 = phi float [ %662, %565 ], [ %705, %674 ], [ %721, %708 ], [ 1.000000e+00, %523 ]
  %727 = phi float [ %663, %565 ], [ %706, %674 ], [ %722, %708 ], [ 1.000000e+00, %523 ]
  %728 = phi float [ %664, %565 ], [ %707, %674 ], [ %723, %708 ], [ 1.000000e+00, %523 ]
  %729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.i32 %729, 1
  %731 = and i32 %730, 1
  %732 = icmp ne i32 %731, 0
  %733 = add i32 %34, 356
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 32
  %737 = icmp ne i32 %736, 0
  %738 = and i1 %732, %737
  %739 = select i1 %738, float 1.000000e+00, float %726
  %740 = select i1 %738, float 0x3FD3333340000000, float %727
  %741 = select i1 %738, float 0x3FD3333340000000, float %728
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 32
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %818, label %746

; <label>:746                                     ; preds = %724
  %747 = add i32 %34, 92
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %34, 376
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = extractvalue %dx.types.ResRet.f32 %755, 3
  %760 = and i32 %749, 255
  %761 = uitofp i32 %760 to float
  %762 = lshr i32 %749, 8
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = lshr i32 %749, 16
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101000000000
  %769 = fmul fast float %756, %761
  %770 = fadd fast float %769, %764
  %771 = fmul fast float %770, 0x3F70101000000000
  %772 = fadd fast float %757, -5.000000e-01
  %773 = fadd fast float %759, -5.000000e-01
  %774 = fmul fast float %772, %768
  %775 = fmul fast float %773, %768
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %776, 2.000000e+00
  %779 = fadd fast float %778, -1.000000e+00
  %780 = fmul fast float %777, 2.000000e+00
  %781 = fadd fast float %780, -1.000000e+00
  %782 = fadd fast float %779, %781
  %783 = fmul fast float %782, 5.000000e-01
  %784 = fsub fast float %779, %781
  %785 = fmul fast float %784, 5.000000e-01
  %786 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %787 = fsub fast float 1.000000e+00, %786
  %788 = call float @dx.op.unary.f32(i32 6, float %785)  ; FAbs(value)
  %789 = fsub fast float %787, %788
  %790 = call float @dx.op.dot3.f32(i32 55, float %783, float %785, float %789, float %783, float %785, float %789)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 25, float %790)  ; Rsqrt(value)
  %792 = fmul fast float %783, %791
  %793 = fmul fast float %785, %791
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 67108864
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %814, label %798

; <label>:798                                     ; preds = %746
  %799 = add i32 %34, 280
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %801, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fsub fast float %771, %809
  %811 = fmul fast float %810, %803
  %812 = fadd fast float %811, %807
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  br label %814

; <label>:814                                     ; preds = %798, %746
  %815 = phi float [ %813, %798 ], [ %771, %746 ]
  %816 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %428, float %429)  ; Dot2(ax,ay,bx,by)
  %817 = call float @dx.op.dot2.f32(i32 54, float %792, float %793, float %430, float %431)  ; Dot2(ax,ay,bx,by)
  br label %818

; <label>:818                                     ; preds = %814, %724
  %819 = phi float [ %815, %814 ], [ 0x3FD6666660000000, %724 ]
  %820 = phi float [ %816, %814 ], [ 0.000000e+00, %724 ]
  %821 = phi float [ %817, %814 ], [ 0.000000e+00, %724 ]
  %822 = phi float [ %758, %814 ], [ 1.000000e+00, %724 ]
  %823 = add i32 %34, 160
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = lshr i32 %825, 22
  %827 = shl nuw nsw i32 %826, 5
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 64
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %866, label %833

; <label>:833                                     ; preds = %818
  %834 = add i32 %34, 392
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 131072
  %842 = icmp eq i32 %841, 0
  %843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %70, float %524, float %525, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = fmul fast float %844, %194
  %848 = fmul fast float %845, %197
  %849 = fmul fast float %846, %200
  br i1 %842, label %856, label %850

; <label>:850                                     ; preds = %833
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = fmul fast float %852, %847
  %854 = fmul fast float %852, %848
  %855 = fmul fast float %852, %849
  br label %856

; <label>:856                                     ; preds = %850, %833
  %857 = phi float [ %853, %850 ], [ %847, %833 ]
  %858 = phi float [ %854, %850 ], [ %848, %833 ]
  %859 = phi float [ %855, %850 ], [ %849, %833 ]
  %860 = fmul fast float %857, %828
  %861 = select i1 %174, float %860, float %857
  %862 = call float @dx.op.dot3.f32(i32 55, float %861, float %858, float %859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = select i1 %174, float 0.000000e+00, float %857
  %864 = select i1 %174, float %862, float %858
  %865 = select i1 %174, float 0.000000e+00, float %859
  br label %866

; <label>:866                                     ; preds = %856, %818
  %867 = phi float [ %863, %856 ], [ 0.000000e+00, %818 ]
  %868 = phi float [ %864, %856 ], [ 0.000000e+00, %818 ]
  %869 = phi float [ %865, %856 ], [ 0.000000e+00, %818 ]
  %870 = add i32 %34, 96
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %872, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = call float @dx.op.dot3.f32(i32 55, float %739, float %740, float %741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = fmul fast float %877, %878
  %880 = fadd fast float %879, %874
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  br label %883

; <label>:883                                     ; preds = %866, %410
  %884 = phi float [ 0.000000e+00, %410 ], [ %820, %866 ]
  %885 = phi float [ 0.000000e+00, %410 ], [ %821, %866 ]
  %886 = phi float [ 0.000000e+00, %410 ], [ %739, %866 ]
  %887 = phi float [ 0.000000e+00, %410 ], [ %740, %866 ]
  %888 = phi float [ 0.000000e+00, %410 ], [ %741, %866 ]
  %889 = phi float [ 0.000000e+00, %410 ], [ %867, %866 ]
  %890 = phi float [ 0.000000e+00, %410 ], [ %868, %866 ]
  %891 = phi float [ 0.000000e+00, %410 ], [ %869, %866 ]
  %892 = phi float [ 0.000000e+00, %410 ], [ %725, %866 ]
  %893 = phi float [ 0.000000e+00, %410 ], [ 1.000000e+00, %866 ]
  %894 = phi float [ 0.000000e+00, %410 ], [ %819, %866 ]
  %895 = phi float [ 0.000000e+00, %410 ], [ %822, %866 ]
  %896 = phi float [ 0.000000e+00, %410 ], [ %882, %866 ]
  br i1 %361, label %1738, label %897

; <label>:897                                     ; preds = %883
  %898 = icmp ult i32 %416, 2
  %899 = add i32 %34, 40
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %34, 44
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = or i32 %904, %901
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %1738, label %907

; <label>:907                                     ; preds = %897
  %908 = and i32 %901, 262144
  %909 = icmp ne i32 %908, 0
  %910 = select i1 %909, float %37, float 1.000000e+00
  %911 = select i1 %909, float %38, float 0.000000e+00
  %912 = select i1 %909, float %39, float 0.000000e+00
  %913 = select i1 %909, float %40, float 1.000000e+00
  %914 = select i1 %909, float %41, float %62
  %915 = select i1 %909, float %42, float %63
  %916 = add i32 %34, 300
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = fmul fast float %920, 0x3F50624DE0000000
  %922 = add i32 %34, 104
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = and i32 %925, 255
  %927 = lshr i32 %924, 24
  %928 = add i32 %34, 308
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %34, 48
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 22
  %939 = shl nuw nsw i32 %938, 5
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = shl i32 %937, 4
  %942 = and i32 %941, 32752
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %937, 7
  %945 = and i32 %944, 32752
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = fmul fast float %948, 1.000000e+03
  %950 = fmul fast float %271, %949
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fadd fast float %951, %261
  %953 = fmul fast float %272, %949
  %954 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %955 = fadd fast float %954, %263
  %956 = fmul fast float %921, %949
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = fmul fast float %957, 0x401921FB60000000
  %959 = fadd fast float %958, %940
  %960 = call float @dx.op.unary.f32(i32 13, float %959)  ; Sin(value)
  %961 = call float @dx.op.unary.f32(i32 12, float %959)  ; Cos(value)
  %962 = fsub fast float -0.000000e+00, %960
  %963 = fadd fast float %914, -5.000000e-01
  %964 = fadd fast float %915, -5.000000e-01
  %965 = fmul fast float %932, %963
  %966 = fmul fast float %934, %964
  %967 = fadd fast float %965, 5.000000e-01
  %968 = fadd fast float %966, 5.000000e-01
  %969 = fmul fast float %943, %967
  %970 = fmul fast float %946, %968
  %971 = fmul fast float %961, %969
  %972 = call float @dx.op.tertiary.f32(i32 46, float %962, float %970, float %971)  ; FMad(a,b,c)
  %973 = fmul fast float %960, %969
  %974 = call float @dx.op.tertiary.f32(i32 46, float %961, float %970, float %973)  ; FMad(a,b,c)
  %975 = fadd fast float %952, %972
  %976 = fadd fast float %955, %974
  %977 = icmp ugt i32 %926, 1
  %978 = icmp ugt i32 %924, 33554431
  %979 = or i1 %978, %977
  br i1 %979, label %980, label %1005

; <label>:980                                     ; preds = %907
  %981 = add i32 %34, 244
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = fmul fast float %948, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = mul nuw nsw i32 %926, %927
  %989 = uitofp i32 %988 to float
  %990 = fmul fast float %987, %989
  %991 = call float @dx.op.unary.f32(i32 27, float %990)  ; Round_ni(value)
  %992 = fptoui float %991 to i32
  %993 = urem i32 %992, %926
  %994 = udiv i32 %992, %927
  %995 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %996 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %997 = uitofp i32 %993 to float
  %998 = uitofp i32 %994 to float
  %999 = fadd fast float %995, %997
  %1000 = fadd fast float %996, %998
  %1001 = uitofp i32 %926 to float
  %1002 = uitofp i32 %927 to float
  %1003 = fdiv fast float %999, %1001
  %1004 = fdiv fast float %1000, %1002
  br label %1005

; <label>:1005                                    ; preds = %980, %907
  %1006 = phi float [ %1003, %980 ], [ %975, %907 ]
  %1007 = phi float [ %1004, %980 ], [ %976, %907 ]
  %1008 = and i32 %901, 16777216
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1119, label %1010

; <label>:1010                                    ; preds = %1005
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fadd fast float %1012, %133
  %1016 = fadd fast float %1013, %134
  %1017 = fadd fast float %1014, %135
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = icmp eq i32 %35, 65535
  br i1 %1021, label %1116, label %1022

; <label>:1022                                    ; preds = %1010
  %1023 = lshr i32 %35, 1
  %1024 = shl i32 %1023, 2
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %35, 1
  %1028 = icmp ne i32 %1027, 0
  %1029 = lshr i32 %1026, 16
  %1030 = and i32 %1026, 65535
  %1031 = select i1 %1028, i32 %1029, i32 %1030
  %1032 = icmp eq i32 %1031, 65535
  br i1 %1032, label %1112, label %1033

; <label>:1033                                    ; preds = %1022
  %1034 = mul nuw nsw i32 %1031, 40
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = add nuw nsw i32 %1034, 12
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = add nuw nsw i32 %1034, 24
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = add nuw nsw i32 %1034, 36
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = fsub fast float %1015, %1036
  %1053 = fsub fast float %1016, %1037
  %1054 = fsub fast float %1017, %1038
  %1055 = fmul fast float %1051, %1052
  %1056 = fmul fast float %1051, %1053
  %1057 = fmul fast float %1051, %1054
  %1058 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = fmul fast float %1061, %1041
  %1065 = fmul fast float %1062, %1042
  %1066 = fmul fast float %1063, %1043
  %1067 = shl i32 %35, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1073 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1074 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1071, %dx.types.Handle %29, float %1072, float %1073, float %1074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = fmul fast float %1076, 1.023000e+03
  %1080 = fmul fast float %1077, 1.023000e+03
  %1081 = fmul fast float %1078, 1.023000e+03
  %1082 = fadd fast float %1079, 5.000000e-01
  %1083 = fadd fast float %1080, 5.000000e-01
  %1084 = fadd fast float %1081, 5.000000e-01
  %1085 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1086 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1088 = fsub fast float %1055, %1058
  %1089 = fsub fast float %1056, %1059
  %1090 = fsub fast float %1057, %1060
  %1091 = fmul fast float %1088, 7.500000e-01
  %1092 = fmul fast float %1089, 7.500000e-01
  %1093 = fmul fast float %1090, 7.500000e-01
  %1094 = fadd fast float %1058, 1.250000e-01
  %1095 = fadd fast float %1094, %1091
  %1096 = fadd fast float %1095, %1085
  %1097 = fadd fast float %1059, 1.250000e-01
  %1098 = fadd fast float %1097, %1092
  %1099 = fadd fast float %1098, %1086
  %1100 = fadd fast float %1060, 1.250000e-01
  %1101 = fadd fast float %1100, %1093
  %1102 = fadd fast float %1101, %1087
  %1103 = fmul fast float %1096, %1046
  %1104 = fmul fast float %1099, %1047
  %1105 = fmul fast float %1102, %1048
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1109, %dx.types.Handle %27, float %1103, float %1104, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  br label %1112

; <label>:1112                                    ; preds = %1033, %1022
  %1113 = phi float [ %1111, %1033 ], [ -1.000000e+00, %1022 ]
  %1114 = fadd fast float %1113, %1020
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  br label %1116

; <label>:1116                                    ; preds = %1112, %1010
  %1117 = phi float [ %1115, %1112 ], [ %1020, %1010 ]
  %1118 = fmul fast float %1117, %413
  br label %1119

; <label>:1119                                    ; preds = %1116, %1005
  %1120 = phi float [ %1118, %1116 ], [ %413, %1005 ]
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 256
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1171, label %1125

; <label>:1125                                    ; preds = %1119
  %1126 = add i32 %34, 428
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = add i32 %34, 116
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = shl i32 %1135, 4
  %1137 = and i32 %1136, 32752
  %1138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1137)  ; LegacyF16ToF32(value)
  %1139 = lshr i32 %1135, 7
  %1140 = and i32 %1139, 32752
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = fsub fast float 1.000000e+00, %1120
  %1143 = call float @dx.op.binary.f32(i32 35, float %1142, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1144 = bitcast float %1120 to i32
  %1145 = sitofp i32 %1144 to float
  %1146 = fadd fast float %1145, 0xC1CFBF8940000000
  %1147 = fmul fast float %1141, %1146
  %1148 = fadd fast float %1147, 0x41CFBF8940000000
  %1149 = fptosi float %1148 to i32
  %1150 = bitcast i32 %1149 to float
  %1151 = bitcast float %1143 to i32
  %1152 = sitofp i32 %1151 to float
  %1153 = fadd fast float %1152, 0xC1CFBF8940000000
  %1154 = fmul fast float %1153, %1141
  %1155 = fadd fast float %1154, 0x41CFBF8940000000
  %1156 = fptosi float %1155 to i32
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1150, %1138
  %1159 = fmul fast float %1157, %1138
  %1160 = fsub fast float %1143, %1158
  %1161 = fadd fast float %1159, %1143
  %1162 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1164 = fsub fast float %1132, %1162
  %1165 = fsub fast float %1163, %1162
  %1166 = bitcast float %1165 to i32
  %1167 = sub nsw i32 2129859010, %1166
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1168, %1164
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  br label %1171

; <label>:1171                                    ; preds = %1125, %1119
  %1172 = phi float [ %1170, %1125 ], [ %1120, %1119 ]
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 128
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1193, label %1177

; <label>:1177                                    ; preds = %1171
  %1178 = add i32 %34, 412
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 524288
  %1188 = icmp ne i32 %1187, 0
  %1189 = fcmp fast ogt float %1184, 0x3FE0101020000000
  %1190 = select i1 %1189, float 1.000000e+00, float 0.000000e+00
  %1191 = select i1 %1188, float %1190, float %1184
  %1192 = fmul fast float %1191, %1172
  br label %1193

; <label>:1193                                    ; preds = %1177, %1171
  %1194 = phi float [ %1192, %1177 ], [ %1172, %1171 ]
  %1195 = fcmp fast ult float %1194, 0x3F70101020000000
  br i1 %1195, label %1738, label %1196

; <label>:1196                                    ; preds = %1193
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 16
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1399, label %1201

; <label>:1201                                    ; preds = %1196
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %34, 364
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = and i32 %1203, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1203, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = fmul fast float %1213, %1215
  %1220 = fadd fast float %1219, %1218
  %1221 = fmul fast float %1220, 0x3F70101000000000
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 512
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1234, label %1226

; <label>:1226                                    ; preds = %1201
  %1227 = add i32 %34, 444
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %1229, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1231, %dx.types.Handle %71, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  br label %1234

; <label>:1234                                    ; preds = %1226, %1201
  %1235 = phi float [ %1233, %1226 ], [ 1.000000e+00, %1201 ]
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 33554432
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1346, label %1240

; <label>:1240                                    ; preds = %1234
  %1241 = add i32 %34, 240
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 65535
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = lshr i32 %1243, 16
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = add i32 %34, 244
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = lshr i32 %1254, 24
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = and i32 %1254, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1254, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = lshr i32 %1254, 16
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = add i32 %34, 236
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 24
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = and i32 %1271, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = lshr i32 %1271, 8
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = lshr i32 %1271, 16
  %1283 = and i32 %1282, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = bitcast float %1210 to i32
  %1287 = ashr i32 %1286, 1
  %1288 = sub nsw i32 1597463174, %1287
  %1289 = bitcast i32 %1288 to float
  %1290 = fmul fast float %1210, 5.000000e-01
  %1291 = fmul fast float %1289, %1289
  %1292 = fmul fast float %1291, %1290
  %1293 = fsub fast float 1.500000e+00, %1292
  %1294 = fmul fast float %1289, %1210
  %1295 = fmul fast float %1294, %1293
  %1296 = bitcast float %1211 to i32
  %1297 = ashr i32 %1296, 1
  %1298 = sub nsw i32 1597463174, %1297
  %1299 = bitcast i32 %1298 to float
  %1300 = fmul fast float %1211, 5.000000e-01
  %1301 = fmul fast float %1299, %1299
  %1302 = fmul fast float %1301, %1300
  %1303 = fsub fast float 1.500000e+00, %1302
  %1304 = fmul fast float %1299, %1211
  %1305 = fmul fast float %1304, %1303
  %1306 = bitcast float %1212 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1212, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1212
  %1315 = fmul fast float %1314, %1313
  %1316 = fsub fast float %1295, %1277
  %1317 = fsub fast float %1305, %1281
  %1318 = fsub fast float %1315, %1285
  %1319 = fmul fast float %1316, %1245
  %1320 = fmul fast float %1317, %1247
  %1321 = fmul fast float %1318, %1252
  %1322 = fadd fast float %1319, %1260
  %1323 = fadd fast float %1320, %1264
  %1324 = fadd fast float %1321, %1268
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1328 = fmul fast float %1325, %1325
  %1329 = fmul fast float %1326, %1326
  %1330 = fmul fast float %1327, %1327
  %1331 = fsub fast float %1328, %1210
  %1332 = fsub fast float %1329, %1211
  %1333 = fsub fast float %1330, %1212
  %1334 = fmul fast float %1331, %1235
  %1335 = fmul fast float %1332, %1235
  %1336 = fmul fast float %1333, %1235
  %1337 = fadd fast float %1334, %1210
  %1338 = fadd fast float %1335, %1211
  %1339 = fadd fast float %1336, %1212
  %1340 = fadd fast float %1257, %1221
  %1341 = fsub fast float %1340, %1274
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fsub fast float %1342, %1221
  %1344 = fmul fast float %1343, %1235
  %1345 = fadd fast float %1344, %1221
  br label %1399

; <label>:1346                                    ; preds = %1234
  %1347 = and i32 %1237, 134217728
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1383, label %1349

; <label>:1349                                    ; preds = %1346
  %1350 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1353 = fadd fast float %1350, -5.000000e-01
  %1354 = fadd fast float %1351, -5.000000e-01
  %1355 = fadd fast float %1352, -5.000000e-01
  %1356 = fmul fast float %1353, %1235
  %1357 = fmul fast float %1354, %1235
  %1358 = fmul fast float %1355, %1235
  %1359 = fadd fast float %1356, 5.000000e-01
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %1212)  ; Sqrt(value)
  %1365 = fmul fast float %1359, 2.000000e+00
  %1366 = fsub fast float 1.000000e+00, %1365
  %1367 = fmul fast float %1366, %1362
  %1368 = fadd fast float %1367, %1365
  %1369 = fmul fast float %1368, %1362
  %1370 = fmul fast float %1360, 2.000000e+00
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = fmul fast float %1371, %1363
  %1373 = fadd fast float %1372, %1370
  %1374 = fmul fast float %1373, %1363
  %1375 = fmul fast float %1361, 2.000000e+00
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %1376, %1364
  %1378 = fadd fast float %1377, %1375
  %1379 = fmul fast float %1378, %1364
  %1380 = fmul fast float %1369, %1369
  %1381 = fmul fast float %1374, %1374
  %1382 = fmul fast float %1379, %1379
  br label %1399

; <label>:1383                                    ; preds = %1346
  %1384 = fmul fast float %248, %248
  %1385 = fmul fast float %252, %252
  %1386 = fmul fast float %256, %256
  %1387 = fadd fast float %1384, -1.000000e+00
  %1388 = fadd fast float %1385, -1.000000e+00
  %1389 = fadd fast float %1386, -1.000000e+00
  %1390 = fmul fast float %1235, %1387
  %1391 = fmul fast float %1235, %1388
  %1392 = fmul fast float %1235, %1389
  %1393 = fadd fast float %1390, 1.000000e+00
  %1394 = fadd fast float %1391, 1.000000e+00
  %1395 = fadd fast float %1392, 1.000000e+00
  %1396 = fmul fast float %1393, %1210
  %1397 = fmul fast float %1394, %1211
  %1398 = fmul fast float %1395, %1212
  br label %1399

; <label>:1399                                    ; preds = %1383, %1349, %1240, %1196
  %1400 = phi float [ %1345, %1240 ], [ %1221, %1349 ], [ %1221, %1383 ], [ 0x3FA23C0BE0000000, %1196 ]
  %1401 = phi float [ %1337, %1240 ], [ %1380, %1349 ], [ %1396, %1383 ], [ 1.000000e+00, %1196 ]
  %1402 = phi float [ %1338, %1240 ], [ %1381, %1349 ], [ %1397, %1383 ], [ 1.000000e+00, %1196 ]
  %1403 = phi float [ %1339, %1240 ], [ %1382, %1349 ], [ %1398, %1383 ], [ 1.000000e+00, %1196 ]
  %1404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.i32 %1404, 1
  %1406 = and i32 %1405, 1
  %1407 = icmp ne i32 %1406, 0
  %1408 = add i32 %34, 356
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 32
  %1412 = icmp ne i32 %1411, 0
  %1413 = and i1 %1407, %1412
  %1414 = select i1 %1413, float 1.000000e+00, float %1401
  %1415 = select i1 %1413, float 0x3FD3333340000000, float %1402
  %1416 = select i1 %1413, float 0x3FD3333340000000, float %1403
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 32
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1493, label %1421

; <label>:1421                                    ; preds = %1399
  %1422 = add i32 %34, 108
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = add i32 %34, 380
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = extractvalue %dx.types.ResRet.f32 %1430, 3
  %1435 = and i32 %1424, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = lshr i32 %1424, 8
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = lshr i32 %1424, 16
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101000000000
  %1444 = fmul fast float %1431, %1436
  %1445 = fadd fast float %1444, %1439
  %1446 = fmul fast float %1445, 0x3F70101000000000
  %1447 = fadd fast float %1432, -5.000000e-01
  %1448 = fadd fast float %1434, -5.000000e-01
  %1449 = fmul fast float %1447, %1443
  %1450 = fmul fast float %1448, %1443
  %1451 = fadd fast float %1449, 5.000000e-01
  %1452 = fadd fast float %1450, 5.000000e-01
  %1453 = fmul fast float %1451, 2.000000e+00
  %1454 = fadd fast float %1453, -1.000000e+00
  %1455 = fmul fast float %1452, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = fadd fast float %1454, %1456
  %1458 = fmul fast float %1457, 5.000000e-01
  %1459 = fsub fast float %1454, %1456
  %1460 = fmul fast float %1459, 5.000000e-01
  %1461 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = call float @dx.op.unary.f32(i32 6, float %1460)  ; FAbs(value)
  %1464 = fsub fast float %1462, %1463
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1460, float %1464, float %1458, float %1460, float %1464)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.unary.f32(i32 25, float %1465)  ; Rsqrt(value)
  %1467 = fmul fast float %1458, %1466
  %1468 = fmul fast float %1460, %1466
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 67108864
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1489, label %1473

; <label>:1473                                    ; preds = %1421
  %1474 = add i32 %34, 296
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1476, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = fsub fast float %1446, %1484
  %1486 = fmul fast float %1485, %1478
  %1487 = fadd fast float %1486, %1482
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1489

; <label>:1489                                    ; preds = %1473, %1421
  %1490 = phi float [ %1488, %1473 ], [ %1446, %1421 ]
  %1491 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %910, float %911)  ; Dot2(ax,ay,bx,by)
  %1492 = call float @dx.op.dot2.f32(i32 54, float %1467, float %1468, float %912, float %913)  ; Dot2(ax,ay,bx,by)
  br label %1493

; <label>:1493                                    ; preds = %1489, %1399
  %1494 = phi float [ %1490, %1489 ], [ 0x3FD6666660000000, %1399 ]
  %1495 = phi float [ %1491, %1489 ], [ 0.000000e+00, %1399 ]
  %1496 = phi float [ %1492, %1489 ], [ 0.000000e+00, %1399 ]
  %1497 = phi float [ %1433, %1489 ], [ 1.000000e+00, %1399 ]
  %1498 = add i32 %34, 176
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = lshr i32 %1500, 22
  %1502 = shl nuw nsw i32 %1501, 5
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 64
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1541, label %1508

; <label>:1508                                    ; preds = %1493
  %1509 = add i32 %34, 396
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 131072
  %1517 = icmp eq i32 %1516, 0
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %70, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = fmul fast float %1519, %236
  %1523 = fmul fast float %1520, %239
  %1524 = fmul fast float %1521, %242
  br i1 %1517, label %1531, label %1525

; <label>:1525                                    ; preds = %1508
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = fmul fast float %1527, %1522
  %1529 = fmul fast float %1527, %1523
  %1530 = fmul fast float %1527, %1524
  br label %1531

; <label>:1531                                    ; preds = %1525, %1508
  %1532 = phi float [ %1528, %1525 ], [ %1522, %1508 ]
  %1533 = phi float [ %1529, %1525 ], [ %1523, %1508 ]
  %1534 = phi float [ %1530, %1525 ], [ %1524, %1508 ]
  %1535 = fmul fast float %1532, %1503
  %1536 = select i1 %174, float %1535, float %1532
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1536, float %1533, float %1534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = select i1 %174, float 0.000000e+00, float %1532
  %1539 = select i1 %174, float %1537, float %1533
  %1540 = select i1 %174, float 0.000000e+00, float %1534
  br label %1541

; <label>:1541                                    ; preds = %1531, %1493
  %1542 = phi float [ %1538, %1531 ], [ 0.000000e+00, %1493 ]
  %1543 = phi float [ %1539, %1531 ], [ 0.000000e+00, %1493 ]
  %1544 = phi float [ %1540, %1531 ], [ 0.000000e+00, %1493 ]
  %1545 = add i32 %34, 112
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = lshr i32 %1547, 8
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = fmul fast float %1552, %1553
  %1555 = fadd fast float %1554, %1549
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  br i1 %898, label %1558, label %1566

; <label>:1558                                    ; preds = %1541
  %1559 = fsub fast float 1.000000e+00, %1194
  %1560 = fmul fast float %1559, %886
  %1561 = fmul fast float %1559, %887
  %1562 = fmul fast float %1559, %888
  %1563 = fmul fast float %1559, %889
  %1564 = fmul fast float %1559, %890
  %1565 = fmul fast float %1559, %891
  br label %1566

; <label>:1566                                    ; preds = %1558, %1541
  %1567 = phi float [ %1560, %1558 ], [ %886, %1541 ]
  %1568 = phi float [ %1561, %1558 ], [ %887, %1541 ]
  %1569 = phi float [ %1562, %1558 ], [ %888, %1541 ]
  %1570 = phi float [ %1563, %1558 ], [ %889, %1541 ]
  %1571 = phi float [ %1564, %1558 ], [ %890, %1541 ]
  %1572 = phi float [ %1565, %1558 ], [ %891, %1541 ]
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 3
  %1576 = icmp eq i32 %1575, 3
  br i1 %1576, label %1655, label %1577

; <label>:1577                                    ; preds = %1566
  %1578 = and i32 %1574, 16
  %1579 = icmp ne i32 %1578, 0
  %1580 = select i1 %1579, float %1194, float 0.000000e+00
  %1581 = icmp eq i32 %1575, 0
  br i1 %1581, label %1582, label %1610

; <label>:1582                                    ; preds = %1577
  %1583 = and i32 %1574, 64
  %1584 = icmp ne i32 %1583, 0
  %1585 = select i1 %1584, float %1194, float 0.000000e+00
  %1586 = fsub fast float %1414, %1567
  %1587 = fsub fast float %1415, %1568
  %1588 = fsub fast float %1416, %1569
  %1589 = fmul fast float %1580, %1586
  %1590 = fmul fast float %1580, %1587
  %1591 = fmul fast float %1580, %1588
  %1592 = fadd fast float %1589, %1567
  %1593 = fadd fast float %1590, %1568
  %1594 = fadd fast float %1591, %1569
  %1595 = fsub fast float %1400, %892
  %1596 = fmul fast float %1580, %1595
  %1597 = fadd fast float %1596, %892
  %1598 = fsub fast float %1542, %1570
  %1599 = fsub fast float %1543, %1571
  %1600 = fsub fast float %1544, %1572
  %1601 = fmul fast float %1585, %1598
  %1602 = fmul fast float %1585, %1599
  %1603 = fmul fast float %1585, %1600
  %1604 = fadd fast float %1601, %1570
  %1605 = fadd fast float %1602, %1571
  %1606 = fadd fast float %1603, %1572
  %1607 = fsub fast float %1557, %896
  %1608 = fmul fast float %1580, %1607
  %1609 = fadd fast float %1608, %896
  br label %1655

; <label>:1610                                    ; preds = %1577
  %1611 = icmp eq i32 %1575, 1
  br i1 %1611, label %1612, label %1625

; <label>:1612                                    ; preds = %1610
  %1613 = fadd fast float %1414, -1.000000e+00
  %1614 = fadd fast float %1415, -1.000000e+00
  %1615 = fadd fast float %1416, -1.000000e+00
  %1616 = fmul fast float %1580, %1613
  %1617 = fmul fast float %1580, %1614
  %1618 = fmul fast float %1580, %1615
  %1619 = fadd fast float %1616, 1.000000e+00
  %1620 = fadd fast float %1617, 1.000000e+00
  %1621 = fadd fast float %1618, 1.000000e+00
  %1622 = fmul fast float %1619, %1567
  %1623 = fmul fast float %1620, %1568
  %1624 = fmul fast float %1621, %1569
  br label %1655

; <label>:1625                                    ; preds = %1610
  %1626 = icmp eq i32 %1575, 2
  br i1 %1626, label %1627, label %1655

; <label>:1627                                    ; preds = %1625
  %1628 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1629 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1630 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1631 = fadd fast float %1628, -5.000000e-01
  %1632 = fadd fast float %1629, -5.000000e-01
  %1633 = fadd fast float %1630, -5.000000e-01
  %1634 = fmul fast float %1631, %1580
  %1635 = fmul fast float %1632, %1580
  %1636 = fmul fast float %1633, %1580
  %1637 = fadd fast float %1634, 5.000000e-01
  %1638 = fadd fast float %1635, 5.000000e-01
  %1639 = fadd fast float %1636, 5.000000e-01
  %1640 = fmul fast float %1637, 2.000000e+00
  %1641 = fsub fast float 1.000000e+00, %1640
  %1642 = fmul fast float %1641, %1567
  %1643 = fadd fast float %1642, %1640
  %1644 = fmul fast float %1643, %1567
  %1645 = fmul fast float %1638, 2.000000e+00
  %1646 = fsub fast float 1.000000e+00, %1645
  %1647 = fmul fast float %1646, %1568
  %1648 = fadd fast float %1647, %1645
  %1649 = fmul fast float %1648, %1568
  %1650 = fmul fast float %1639, 2.000000e+00
  %1651 = fsub fast float 1.000000e+00, %1650
  %1652 = fmul fast float %1651, %1569
  %1653 = fadd fast float %1652, %1650
  %1654 = fmul fast float %1653, %1569
  br label %1655

; <label>:1655                                    ; preds = %1627, %1625, %1612, %1582, %1566
  %1656 = phi float [ %1567, %1566 ], [ %1644, %1627 ], [ %1567, %1625 ], [ %1622, %1612 ], [ %1592, %1582 ]
  %1657 = phi float [ %1568, %1566 ], [ %1649, %1627 ], [ %1568, %1625 ], [ %1623, %1612 ], [ %1593, %1582 ]
  %1658 = phi float [ %1569, %1566 ], [ %1654, %1627 ], [ %1569, %1625 ], [ %1624, %1612 ], [ %1594, %1582 ]
  %1659 = phi float [ %1570, %1566 ], [ %1570, %1627 ], [ %1570, %1625 ], [ %1570, %1612 ], [ %1604, %1582 ]
  %1660 = phi float [ %1571, %1566 ], [ %1571, %1627 ], [ %1571, %1625 ], [ %1571, %1612 ], [ %1605, %1582 ]
  %1661 = phi float [ %1572, %1566 ], [ %1572, %1627 ], [ %1572, %1625 ], [ %1572, %1612 ], [ %1606, %1582 ]
  %1662 = phi float [ %892, %1566 ], [ %892, %1627 ], [ %892, %1625 ], [ %892, %1612 ], [ %1597, %1582 ]
  %1663 = phi float [ %896, %1566 ], [ %896, %1627 ], [ %896, %1625 ], [ %896, %1612 ], [ %1609, %1582 ]
  %1664 = and i32 %1574, 12
  %1665 = icmp eq i32 %1664, 12
  br i1 %1665, label %1738, label %1666

; <label>:1666                                    ; preds = %1655
  %1667 = and i32 %1574, 2097184
  %1668 = icmp eq i32 %1667, 2097184
  %1669 = select i1 %1668, float %1194, float 0.000000e+00
  %1670 = and i32 %1574, 4194336
  %1671 = icmp eq i32 %1670, 4194336
  %1672 = select i1 %1671, float %1194, float 0.000000e+00
  %1673 = and i32 %1574, 8388640
  %1674 = icmp eq i32 %1673, 8388640
  %1675 = select i1 %1674, float %1194, float 0.000000e+00
  %1676 = icmp eq i32 %1664, 0
  br i1 %1676, label %1677, label %1690

; <label>:1677                                    ; preds = %1666
  %1678 = fsub fast float %1495, %884
  %1679 = fsub fast float %1496, %885
  %1680 = fmul fast float %1669, %1678
  %1681 = fmul fast float %1669, %1679
  %1682 = fadd fast float %1680, %884
  %1683 = fadd fast float %1681, %885
  %1684 = fsub fast float %1497, %895
  %1685 = fmul fast float %1672, %1684
  %1686 = fadd fast float %1685, %895
  %1687 = fsub fast float %1494, %894
  %1688 = fmul fast float %1675, %1687
  %1689 = fadd fast float %1688, %894
  br label %1738

; <label>:1690                                    ; preds = %1666
  %1691 = icmp eq i32 %1664, 4
  br i1 %1691, label %1692, label %1724

; <label>:1692                                    ; preds = %1690
  %1693 = fmul fast float %1669, %1495
  %1694 = fmul fast float %1669, %1496
  %1695 = fadd fast float %1693, %884
  %1696 = fadd fast float %1694, %885
  %1697 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1698 = fsub fast float %1697, %895
  %1699 = fmul fast float %1698, %1672
  %1700 = fadd fast float %1699, %895
  %1701 = fadd fast float %1494, %894
  %1702 = fmul fast float %1701, 0x3FF337FAE0000000
  %1703 = fmul fast float %894, %894
  %1704 = fmul fast float %1494, %1494
  %1705 = fadd fast float %1704, %1703
  %1706 = fmul fast float %1705, 0x3FE5152B00000000
  %1707 = fmul fast float %894, 0xBFCC1F85E0000000
  %1708 = fmul fast float %1707, %1494
  %1709 = fadd fast float %1708, 0xBFE1363700000000
  %1710 = fadd fast float %1709, %1702
  %1711 = fsub fast float %1710, %1706
  %1712 = fmul fast float %1701, 0x3FBA6F0D00000000
  %1713 = fmul fast float %1705, 0x3FD0432880000000
  %1714 = fmul fast float %894, 0xBFEF110800000000
  %1715 = fmul fast float %1714, %1494
  %1716 = fadd fast float %1715, 1.000000e+00
  %1717 = fsub fast float %1716, %1712
  %1718 = fadd fast float %1717, %1713
  %1719 = fdiv fast float %1711, %1718
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = fsub fast float %1720, %894
  %1722 = fmul fast float %1721, %1675
  %1723 = fadd fast float %1722, %894
  br label %1738

; <label>:1724                                    ; preds = %1690
  %1725 = icmp eq i32 %1664, 8
  br i1 %1725, label %1726, label %1738

; <label>:1726                                    ; preds = %1724
  %1727 = fmul fast float %1669, %1495
  %1728 = fmul fast float %1669, %1496
  %1729 = fadd fast float %1727, %884
  %1730 = fadd fast float %1728, %885
  %1731 = call float @dx.op.binary.f32(i32 36, float %895, float %1497)  ; FMin(a,b)
  %1732 = fsub fast float %1731, %895
  %1733 = fmul fast float %1732, %1672
  %1734 = fadd fast float %1733, %895
  %1735 = fsub fast float %1494, %894
  %1736 = fmul fast float %1675, %1735
  %1737 = fadd fast float %1736, %894
  br label %1738

; <label>:1738                                    ; preds = %1726, %1724, %1692, %1677, %1655, %1193, %897, %883
  %1739 = phi float [ %884, %1655 ], [ %884, %1193 ], [ %884, %883 ], [ %1729, %1726 ], [ %884, %1724 ], [ %1695, %1692 ], [ %1682, %1677 ], [ %884, %897 ]
  %1740 = phi float [ %885, %1655 ], [ %885, %1193 ], [ %885, %883 ], [ %1730, %1726 ], [ %885, %1724 ], [ %1696, %1692 ], [ %1683, %1677 ], [ %885, %897 ]
  %1741 = phi float [ %1656, %1655 ], [ %886, %1193 ], [ %886, %883 ], [ %1656, %1726 ], [ %1656, %1724 ], [ %1656, %1692 ], [ %1656, %1677 ], [ %886, %897 ]
  %1742 = phi float [ %1657, %1655 ], [ %887, %1193 ], [ %887, %883 ], [ %1657, %1726 ], [ %1657, %1724 ], [ %1657, %1692 ], [ %1657, %1677 ], [ %887, %897 ]
  %1743 = phi float [ %1658, %1655 ], [ %888, %1193 ], [ %888, %883 ], [ %1658, %1726 ], [ %1658, %1724 ], [ %1658, %1692 ], [ %1658, %1677 ], [ %888, %897 ]
  %1744 = phi float [ %1659, %1655 ], [ %889, %1193 ], [ %889, %883 ], [ %1659, %1726 ], [ %1659, %1724 ], [ %1659, %1692 ], [ %1659, %1677 ], [ %889, %897 ]
  %1745 = phi float [ %1660, %1655 ], [ %890, %1193 ], [ %890, %883 ], [ %1660, %1726 ], [ %1660, %1724 ], [ %1660, %1692 ], [ %1660, %1677 ], [ %890, %897 ]
  %1746 = phi float [ %1661, %1655 ], [ %891, %1193 ], [ %891, %883 ], [ %1661, %1726 ], [ %1661, %1724 ], [ %1661, %1692 ], [ %1661, %1677 ], [ %891, %897 ]
  %1747 = phi float [ %1662, %1655 ], [ %892, %1193 ], [ %892, %883 ], [ %1662, %1726 ], [ %1662, %1724 ], [ %1662, %1692 ], [ %1662, %1677 ], [ %892, %897 ]
  %1748 = phi float [ %894, %1655 ], [ %894, %1193 ], [ %894, %883 ], [ %1737, %1726 ], [ %894, %1724 ], [ %1723, %1692 ], [ %1689, %1677 ], [ %894, %897 ]
  %1749 = phi float [ %895, %1655 ], [ %895, %1193 ], [ %895, %883 ], [ %1734, %1726 ], [ %895, %1724 ], [ %1700, %1692 ], [ %1686, %1677 ], [ %895, %897 ]
  %1750 = phi float [ %1663, %1655 ], [ %896, %1193 ], [ %896, %883 ], [ %1663, %1726 ], [ %1663, %1724 ], [ %1663, %1692 ], [ %1663, %1677 ], [ %896, %897 ]
  br i1 %363, label %2592, label %1751

; <label>:1751                                    ; preds = %1738
  %1752 = icmp ult i32 %416, 3
  %1753 = add i32 %34, 56
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = add i32 %34, 60
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = or i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %2592, label %1761

; <label>:1761                                    ; preds = %1751
  %1762 = and i32 %1755, 262144
  %1763 = icmp ne i32 %1762, 0
  %1764 = select i1 %1763, float %37, float 1.000000e+00
  %1765 = select i1 %1763, float %38, float 0.000000e+00
  %1766 = select i1 %1763, float %39, float 0.000000e+00
  %1767 = select i1 %1763, float %40, float 1.000000e+00
  %1768 = select i1 %1763, float %41, float %62
  %1769 = select i1 %1763, float %42, float %63
  %1770 = add i32 %34, 316
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = lshr i32 %1772, 16
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = fmul fast float %1774, 0x3F50624DE0000000
  %1776 = add i32 %34, 120
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = lshr i32 %1778, 16
  %1780 = and i32 %1779, 255
  %1781 = lshr i32 %1778, 24
  %1782 = add i32 %34, 324
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 65535
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = lshr i32 %1784, 16
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = add i32 %34, 64
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 22
  %1793 = shl nuw nsw i32 %1792, 5
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = shl i32 %1791, 4
  %1796 = and i32 %1795, 32752
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = lshr i32 %1791, 7
  %1799 = and i32 %1798, 32752
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 3
  %1803 = fmul fast float %1802, 1.000000e+03
  %1804 = fmul fast float %313, %1803
  %1805 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1806 = fadd fast float %1805, %303
  %1807 = fmul fast float %314, %1803
  %1808 = call float @dx.op.unary.f32(i32 22, float %1807)  ; Frc(value)
  %1809 = fadd fast float %1808, %305
  %1810 = fmul fast float %1775, %1803
  %1811 = call float @dx.op.unary.f32(i32 22, float %1810)  ; Frc(value)
  %1812 = fmul fast float %1811, 0x401921FB60000000
  %1813 = fadd fast float %1812, %1794
  %1814 = call float @dx.op.unary.f32(i32 13, float %1813)  ; Sin(value)
  %1815 = call float @dx.op.unary.f32(i32 12, float %1813)  ; Cos(value)
  %1816 = fsub fast float -0.000000e+00, %1814
  %1817 = fadd fast float %1768, -5.000000e-01
  %1818 = fadd fast float %1769, -5.000000e-01
  %1819 = fmul fast float %1786, %1817
  %1820 = fmul fast float %1788, %1818
  %1821 = fadd fast float %1819, 5.000000e-01
  %1822 = fadd fast float %1820, 5.000000e-01
  %1823 = fmul fast float %1797, %1821
  %1824 = fmul fast float %1800, %1822
  %1825 = fmul fast float %1815, %1823
  %1826 = call float @dx.op.tertiary.f32(i32 46, float %1816, float %1824, float %1825)  ; FMad(a,b,c)
  %1827 = fmul fast float %1814, %1823
  %1828 = call float @dx.op.tertiary.f32(i32 46, float %1815, float %1824, float %1827)  ; FMad(a,b,c)
  %1829 = fadd fast float %1806, %1826
  %1830 = fadd fast float %1809, %1828
  %1831 = icmp ugt i32 %1780, 1
  %1832 = icmp ugt i32 %1778, 33554431
  %1833 = or i1 %1832, %1831
  br i1 %1833, label %1834, label %1859

; <label>:1834                                    ; preds = %1761
  %1835 = add i32 %34, 260
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 16
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = fmul fast float %1802, %1839
  %1841 = call float @dx.op.unary.f32(i32 22, float %1840)  ; Frc(value)
  %1842 = mul nuw nsw i32 %1780, %1781
  %1843 = uitofp i32 %1842 to float
  %1844 = fmul fast float %1841, %1843
  %1845 = call float @dx.op.unary.f32(i32 27, float %1844)  ; Round_ni(value)
  %1846 = fptoui float %1845 to i32
  %1847 = urem i32 %1846, %1780
  %1848 = udiv i32 %1846, %1781
  %1849 = call float @dx.op.unary.f32(i32 22, float %1829)  ; Frc(value)
  %1850 = call float @dx.op.unary.f32(i32 22, float %1830)  ; Frc(value)
  %1851 = uitofp i32 %1847 to float
  %1852 = uitofp i32 %1848 to float
  %1853 = fadd fast float %1849, %1851
  %1854 = fadd fast float %1850, %1852
  %1855 = uitofp i32 %1780 to float
  %1856 = uitofp i32 %1781 to float
  %1857 = fdiv fast float %1853, %1855
  %1858 = fdiv fast float %1854, %1856
  br label %1859

; <label>:1859                                    ; preds = %1834, %1761
  %1860 = phi float [ %1857, %1834 ], [ %1829, %1761 ]
  %1861 = phi float [ %1858, %1834 ], [ %1830, %1761 ]
  %1862 = and i32 %1755, 16777216
  %1863 = icmp eq i32 %1862, 0
  br i1 %1863, label %1973, label %1864

; <label>:1864                                    ; preds = %1859
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1869 = fadd fast float %1866, %133
  %1870 = fadd fast float %1867, %134
  %1871 = fadd fast float %1868, %135
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1875 = icmp eq i32 %35, 65535
  br i1 %1875, label %1970, label %1876

; <label>:1876                                    ; preds = %1864
  %1877 = lshr i32 %35, 1
  %1878 = shl i32 %1877, 2
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %35, 1
  %1882 = icmp ne i32 %1881, 0
  %1883 = lshr i32 %1880, 16
  %1884 = and i32 %1880, 65535
  %1885 = select i1 %1882, i32 %1883, i32 %1884
  %1886 = icmp eq i32 %1885, 65535
  br i1 %1886, label %1966, label %1887

; <label>:1887                                    ; preds = %1876
  %1888 = mul nuw nsw i32 %1885, 40
  %1889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.ResRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.ResRet.f32 %1889, 2
  %1893 = add nuw nsw i32 %1888, 12
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = add nuw nsw i32 %1888, 24
  %1899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = add nuw nsw i32 %1888, 36
  %1904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = fsub fast float %1869, %1890
  %1907 = fsub fast float %1870, %1891
  %1908 = fsub fast float %1871, %1892
  %1909 = fmul fast float %1905, %1906
  %1910 = fmul fast float %1905, %1907
  %1911 = fmul fast float %1905, %1908
  %1912 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1913 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1914 = call float @dx.op.unary.f32(i32 27, float %1911)  ; Round_ni(value)
  %1915 = fadd fast float %1912, 5.000000e-01
  %1916 = fadd fast float %1913, 5.000000e-01
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = fmul fast float %1915, %1895
  %1919 = fmul fast float %1916, %1896
  %1920 = fmul fast float %1917, %1897
  %1921 = shl i32 %35, 2
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = add i32 %1923, 0
  %1925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1926 = call float @dx.op.unary.f32(i32 22, float %1918)  ; Frc(value)
  %1927 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1928 = call float @dx.op.unary.f32(i32 22, float %1920)  ; Frc(value)
  %1929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1925, %dx.types.Handle %29, float %1926, float %1927, float %1928, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = fmul fast float %1930, 1.023000e+03
  %1934 = fmul fast float %1931, 1.023000e+03
  %1935 = fmul fast float %1932, 1.023000e+03
  %1936 = fadd fast float %1933, 5.000000e-01
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fadd fast float %1935, 5.000000e-01
  %1939 = call float @dx.op.unary.f32(i32 27, float %1936)  ; Round_ni(value)
  %1940 = call float @dx.op.unary.f32(i32 27, float %1937)  ; Round_ni(value)
  %1941 = call float @dx.op.unary.f32(i32 27, float %1938)  ; Round_ni(value)
  %1942 = fsub fast float %1909, %1912
  %1943 = fsub fast float %1910, %1913
  %1944 = fsub fast float %1911, %1914
  %1945 = fmul fast float %1942, 7.500000e-01
  %1946 = fmul fast float %1943, 7.500000e-01
  %1947 = fmul fast float %1944, 7.500000e-01
  %1948 = fadd fast float %1912, 1.250000e-01
  %1949 = fadd fast float %1948, %1945
  %1950 = fadd fast float %1949, %1939
  %1951 = fadd fast float %1913, 1.250000e-01
  %1952 = fadd fast float %1951, %1946
  %1953 = fadd fast float %1952, %1940
  %1954 = fadd fast float %1914, 1.250000e-01
  %1955 = fadd fast float %1954, %1947
  %1956 = fadd fast float %1955, %1941
  %1957 = fmul fast float %1950, %1900
  %1958 = fmul fast float %1953, %1901
  %1959 = fmul fast float %1956, %1902
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1963, %dx.types.Handle %27, float %1957, float %1958, float %1959, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  br label %1966

; <label>:1966                                    ; preds = %1887, %1876
  %1967 = phi float [ %1965, %1887 ], [ -1.000000e+00, %1876 ]
  %1968 = fadd fast float %1967, %1874
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  br label %1970

; <label>:1970                                    ; preds = %1966, %1864
  %1971 = phi float [ %1969, %1966 ], [ %1874, %1864 ]
  %1972 = fmul fast float %1971, %412
  br label %1973

; <label>:1973                                    ; preds = %1970, %1859
  %1974 = phi float [ %1972, %1970 ], [ %412, %1859 ]
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = and i32 %1976, 256
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %2025, label %1979

; <label>:1979                                    ; preds = %1973
  %1980 = add i32 %34, 432
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %71, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = add i32 %34, 132
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = shl i32 %1989, 4
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = lshr i32 %1989, 7
  %1994 = and i32 %1993, 32752
  %1995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1994)  ; LegacyF16ToF32(value)
  %1996 = fsub fast float 1.000000e+00, %1974
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1998 = bitcast float %1974 to i32
  %1999 = sitofp i32 %1998 to float
  %2000 = fadd fast float %1999, 0xC1CFBF8940000000
  %2001 = fmul fast float %1995, %2000
  %2002 = fadd fast float %2001, 0x41CFBF8940000000
  %2003 = fptosi float %2002 to i32
  %2004 = bitcast i32 %2003 to float
  %2005 = bitcast float %1997 to i32
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, 0xC1CFBF8940000000
  %2008 = fmul fast float %2007, %1995
  %2009 = fadd fast float %2008, 0x41CFBF8940000000
  %2010 = fptosi float %2009 to i32
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %2004, %1992
  %2013 = fmul fast float %2011, %1992
  %2014 = fsub fast float %1997, %2012
  %2015 = fadd fast float %2013, %1997
  %2016 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2017 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2018 = fsub fast float %1986, %2016
  %2019 = fsub fast float %2017, %2016
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, %2018
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  br label %2025

; <label>:2025                                    ; preds = %1979, %1973
  %2026 = phi float [ %2024, %1979 ], [ %1974, %1973 ]
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 128
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2047, label %2031

; <label>:2031                                    ; preds = %2025
  %2032 = add i32 %34, 416
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %2034, 0
  %2036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2036, %dx.types.Handle %71, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2038 = extractvalue %dx.types.ResRet.f32 %2037, 0
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 524288
  %2042 = icmp ne i32 %2041, 0
  %2043 = fcmp fast ogt float %2038, 0x3FE0101020000000
  %2044 = select i1 %2043, float 1.000000e+00, float 0.000000e+00
  %2045 = select i1 %2042, float %2044, float %2038
  %2046 = fmul fast float %2045, %2026
  br label %2047

; <label>:2047                                    ; preds = %2031, %2025
  %2048 = phi float [ %2046, %2031 ], [ %2026, %2025 ]
  %2049 = fcmp fast ult float %2048, 0x3F70101020000000
  br i1 %2049, label %2592, label %2050

; <label>:2050                                    ; preds = %2047
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 16
  %2054 = icmp eq i32 %2053, 0
  br i1 %2054, label %2253, label %2055

; <label>:2055                                    ; preds = %2050
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %34, 368
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = add i32 %2060, 0
  %2062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2062, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = extractvalue %dx.types.ResRet.f32 %2063, 3
  %2068 = and i32 %2057, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = lshr i32 %2057, 8
  %2071 = and i32 %2070, 255
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2067, %2069
  %2074 = fadd fast float %2073, %2072
  %2075 = fmul fast float %2074, 0x3F70101000000000
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 512
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2088, label %2080

; <label>:2080                                    ; preds = %2055
  %2081 = add i32 %34, 448
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = add i32 %2083, 0
  %2085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2085, %dx.types.Handle %71, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  br label %2088

; <label>:2088                                    ; preds = %2080, %2055
  %2089 = phi float [ %2087, %2080 ], [ 1.000000e+00, %2055 ]
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 33554432
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2200, label %2094

; <label>:2094                                    ; preds = %2088
  %2095 = add i32 %34, 256
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 65535
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = lshr i32 %2097, 16
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = add i32 %34, 260
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 65535
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 24
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = and i32 %2108, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2108, 8
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = lshr i32 %2108, 16
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = add i32 %34, 252
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = lshr i32 %2125, 24
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = and i32 %2125, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2125, 8
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = lshr i32 %2125, 16
  %2137 = and i32 %2136, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = bitcast float %2064 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = sub nsw i32 1597463174, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2064, 5.000000e-01
  %2145 = fmul fast float %2143, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fsub fast float 1.500000e+00, %2146
  %2148 = fmul fast float %2143, %2064
  %2149 = fmul fast float %2148, %2147
  %2150 = bitcast float %2065 to i32
  %2151 = ashr i32 %2150, 1
  %2152 = sub nsw i32 1597463174, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2065, 5.000000e-01
  %2155 = fmul fast float %2153, %2153
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float 1.500000e+00, %2156
  %2158 = fmul fast float %2153, %2065
  %2159 = fmul fast float %2158, %2157
  %2160 = bitcast float %2066 to i32
  %2161 = ashr i32 %2160, 1
  %2162 = sub nsw i32 1597463174, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2066, 5.000000e-01
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float 1.500000e+00, %2166
  %2168 = fmul fast float %2163, %2066
  %2169 = fmul fast float %2168, %2167
  %2170 = fsub fast float %2149, %2131
  %2171 = fsub fast float %2159, %2135
  %2172 = fsub fast float %2169, %2139
  %2173 = fmul fast float %2170, %2099
  %2174 = fmul fast float %2171, %2101
  %2175 = fmul fast float %2172, %2106
  %2176 = fadd fast float %2173, %2114
  %2177 = fadd fast float %2174, %2118
  %2178 = fadd fast float %2175, %2122
  %2179 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2180 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2182 = fmul fast float %2179, %2179
  %2183 = fmul fast float %2180, %2180
  %2184 = fmul fast float %2181, %2181
  %2185 = fsub fast float %2182, %2064
  %2186 = fsub fast float %2183, %2065
  %2187 = fsub fast float %2184, %2066
  %2188 = fmul fast float %2185, %2089
  %2189 = fmul fast float %2186, %2089
  %2190 = fmul fast float %2187, %2089
  %2191 = fadd fast float %2188, %2064
  %2192 = fadd fast float %2189, %2065
  %2193 = fadd fast float %2190, %2066
  %2194 = fadd fast float %2111, %2075
  %2195 = fsub fast float %2194, %2128
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fsub fast float %2196, %2075
  %2198 = fmul fast float %2197, %2089
  %2199 = fadd fast float %2198, %2075
  br label %2253

; <label>:2200                                    ; preds = %2088
  %2201 = and i32 %2091, 134217728
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2237, label %2203

; <label>:2203                                    ; preds = %2200
  %2204 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2207 = fadd fast float %2204, -5.000000e-01
  %2208 = fadd fast float %2205, -5.000000e-01
  %2209 = fadd fast float %2206, -5.000000e-01
  %2210 = fmul fast float %2207, %2089
  %2211 = fmul fast float %2208, %2089
  %2212 = fmul fast float %2209, %2089
  %2213 = fadd fast float %2210, 5.000000e-01
  %2214 = fadd fast float %2211, 5.000000e-01
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %2066)  ; Sqrt(value)
  %2219 = fmul fast float %2213, 2.000000e+00
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2220, %2216
  %2222 = fadd fast float %2221, %2219
  %2223 = fmul fast float %2222, %2216
  %2224 = fmul fast float %2214, 2.000000e+00
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = fmul fast float %2225, %2217
  %2227 = fadd fast float %2226, %2224
  %2228 = fmul fast float %2227, %2217
  %2229 = fmul fast float %2215, 2.000000e+00
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2230, %2218
  %2232 = fadd fast float %2231, %2229
  %2233 = fmul fast float %2232, %2218
  %2234 = fmul fast float %2223, %2223
  %2235 = fmul fast float %2228, %2228
  %2236 = fmul fast float %2233, %2233
  br label %2253

; <label>:2237                                    ; preds = %2200
  %2238 = fmul fast float %290, %290
  %2239 = fmul fast float %294, %294
  %2240 = fmul fast float %298, %298
  %2241 = fadd fast float %2238, -1.000000e+00
  %2242 = fadd fast float %2239, -1.000000e+00
  %2243 = fadd fast float %2240, -1.000000e+00
  %2244 = fmul fast float %2089, %2241
  %2245 = fmul fast float %2089, %2242
  %2246 = fmul fast float %2089, %2243
  %2247 = fadd fast float %2244, 1.000000e+00
  %2248 = fadd fast float %2245, 1.000000e+00
  %2249 = fadd fast float %2246, 1.000000e+00
  %2250 = fmul fast float %2247, %2064
  %2251 = fmul fast float %2248, %2065
  %2252 = fmul fast float %2249, %2066
  br label %2253

; <label>:2253                                    ; preds = %2237, %2203, %2094, %2050
  %2254 = phi float [ %2199, %2094 ], [ %2075, %2203 ], [ %2075, %2237 ], [ 0x3FA23C0BE0000000, %2050 ]
  %2255 = phi float [ %2191, %2094 ], [ %2234, %2203 ], [ %2250, %2237 ], [ 1.000000e+00, %2050 ]
  %2256 = phi float [ %2192, %2094 ], [ %2235, %2203 ], [ %2251, %2237 ], [ 1.000000e+00, %2050 ]
  %2257 = phi float [ %2193, %2094 ], [ %2236, %2203 ], [ %2252, %2237 ], [ 1.000000e+00, %2050 ]
  %2258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.i32 %2258, 1
  %2260 = and i32 %2259, 1
  %2261 = icmp ne i32 %2260, 0
  %2262 = add i32 %34, 356
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 32
  %2266 = icmp ne i32 %2265, 0
  %2267 = and i1 %2261, %2266
  %2268 = select i1 %2267, float 1.000000e+00, float %2255
  %2269 = select i1 %2267, float 0x3FD3333340000000, float %2256
  %2270 = select i1 %2267, float 0x3FD3333340000000, float %2257
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 32
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2347, label %2275

; <label>:2275                                    ; preds = %2253
  %2276 = add i32 %34, 124
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %34, 384
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.ResRet.f32 %2284, 3
  %2289 = and i32 %2278, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = lshr i32 %2278, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = lshr i32 %2278, 16
  %2295 = and i32 %2294, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101000000000
  %2298 = fmul fast float %2285, %2290
  %2299 = fadd fast float %2298, %2293
  %2300 = fmul fast float %2299, 0x3F70101000000000
  %2301 = fadd fast float %2286, -5.000000e-01
  %2302 = fadd fast float %2288, -5.000000e-01
  %2303 = fmul fast float %2301, %2297
  %2304 = fmul fast float %2302, %2297
  %2305 = fadd fast float %2303, 5.000000e-01
  %2306 = fadd fast float %2304, 5.000000e-01
  %2307 = fmul fast float %2305, 2.000000e+00
  %2308 = fadd fast float %2307, -1.000000e+00
  %2309 = fmul fast float %2306, 2.000000e+00
  %2310 = fadd fast float %2309, -1.000000e+00
  %2311 = fadd fast float %2308, %2310
  %2312 = fmul fast float %2311, 5.000000e-01
  %2313 = fsub fast float %2308, %2310
  %2314 = fmul fast float %2313, 5.000000e-01
  %2315 = call float @dx.op.unary.f32(i32 6, float %2312)  ; FAbs(value)
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = call float @dx.op.unary.f32(i32 6, float %2314)  ; FAbs(value)
  %2318 = fsub fast float %2316, %2317
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2314, float %2318, float %2312, float %2314, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  %2321 = fmul fast float %2312, %2320
  %2322 = fmul fast float %2314, %2320
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 67108864
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2343, label %2327

; <label>:2327                                    ; preds = %2275
  %2328 = add i32 %34, 312
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2330, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fsub fast float %2300, %2338
  %2340 = fmul fast float %2339, %2332
  %2341 = fadd fast float %2340, %2336
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  br label %2343

; <label>:2343                                    ; preds = %2327, %2275
  %2344 = phi float [ %2342, %2327 ], [ %2300, %2275 ]
  %2345 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1764, float %1765)  ; Dot2(ax,ay,bx,by)
  %2346 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1766, float %1767)  ; Dot2(ax,ay,bx,by)
  br label %2347

; <label>:2347                                    ; preds = %2343, %2253
  %2348 = phi float [ %2344, %2343 ], [ 0x3FD6666660000000, %2253 ]
  %2349 = phi float [ %2345, %2343 ], [ 0.000000e+00, %2253 ]
  %2350 = phi float [ %2346, %2343 ], [ 0.000000e+00, %2253 ]
  %2351 = phi float [ %2287, %2343 ], [ 1.000000e+00, %2253 ]
  %2352 = add i32 %34, 192
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = lshr i32 %2354, 22
  %2356 = shl nuw nsw i32 %2355, 5
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 64
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2395, label %2362

; <label>:2362                                    ; preds = %2347
  %2363 = add i32 %34, 400
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 131072
  %2371 = icmp eq i32 %2370, 0
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2367, %dx.types.Handle %70, float %1860, float %1861, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = fmul fast float %2373, %278
  %2377 = fmul fast float %2374, %281
  %2378 = fmul fast float %2375, %284
  br i1 %2371, label %2385, label %2379

; <label>:2379                                    ; preds = %2362
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = fmul fast float %2381, %2376
  %2383 = fmul fast float %2381, %2377
  %2384 = fmul fast float %2381, %2378
  br label %2385

; <label>:2385                                    ; preds = %2379, %2362
  %2386 = phi float [ %2382, %2379 ], [ %2376, %2362 ]
  %2387 = phi float [ %2383, %2379 ], [ %2377, %2362 ]
  %2388 = phi float [ %2384, %2379 ], [ %2378, %2362 ]
  %2389 = fmul fast float %2386, %2357
  %2390 = select i1 %174, float %2389, float %2386
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2387, float %2388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = select i1 %174, float 0.000000e+00, float %2386
  %2393 = select i1 %174, float %2391, float %2387
  %2394 = select i1 %174, float 0.000000e+00, float %2388
  br label %2395

; <label>:2395                                    ; preds = %2385, %2347
  %2396 = phi float [ %2392, %2385 ], [ 0.000000e+00, %2347 ]
  %2397 = phi float [ %2393, %2385 ], [ 0.000000e+00, %2347 ]
  %2398 = phi float [ %2394, %2385 ], [ 0.000000e+00, %2347 ]
  %2399 = add i32 %34, 128
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = lshr i32 %2401, 8
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2268, float %2269, float %2270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = fmul fast float %2406, %2407
  %2409 = fadd fast float %2408, %2403
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  br i1 %1752, label %2412, label %2420

; <label>:2412                                    ; preds = %2395
  %2413 = fsub fast float 1.000000e+00, %2048
  %2414 = fmul fast float %2413, %1741
  %2415 = fmul fast float %2413, %1742
  %2416 = fmul fast float %2413, %1743
  %2417 = fmul fast float %2413, %1744
  %2418 = fmul fast float %2413, %1745
  %2419 = fmul fast float %2413, %1746
  br label %2420

; <label>:2420                                    ; preds = %2412, %2395
  %2421 = phi float [ %2414, %2412 ], [ %1741, %2395 ]
  %2422 = phi float [ %2415, %2412 ], [ %1742, %2395 ]
  %2423 = phi float [ %2416, %2412 ], [ %1743, %2395 ]
  %2424 = phi float [ %2417, %2412 ], [ %1744, %2395 ]
  %2425 = phi float [ %2418, %2412 ], [ %1745, %2395 ]
  %2426 = phi float [ %2419, %2412 ], [ %1746, %2395 ]
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 3
  %2430 = icmp eq i32 %2429, 3
  br i1 %2430, label %2509, label %2431

; <label>:2431                                    ; preds = %2420
  %2432 = and i32 %2428, 16
  %2433 = icmp ne i32 %2432, 0
  %2434 = select i1 %2433, float %2048, float 0.000000e+00
  %2435 = icmp eq i32 %2429, 0
  br i1 %2435, label %2436, label %2464

; <label>:2436                                    ; preds = %2431
  %2437 = and i32 %2428, 64
  %2438 = icmp ne i32 %2437, 0
  %2439 = select i1 %2438, float %2048, float 0.000000e+00
  %2440 = fsub fast float %2268, %2421
  %2441 = fsub fast float %2269, %2422
  %2442 = fsub fast float %2270, %2423
  %2443 = fmul fast float %2434, %2440
  %2444 = fmul fast float %2434, %2441
  %2445 = fmul fast float %2434, %2442
  %2446 = fadd fast float %2443, %2421
  %2447 = fadd fast float %2444, %2422
  %2448 = fadd fast float %2445, %2423
  %2449 = fsub fast float %2254, %1747
  %2450 = fmul fast float %2434, %2449
  %2451 = fadd fast float %2450, %1747
  %2452 = fsub fast float %2396, %2424
  %2453 = fsub fast float %2397, %2425
  %2454 = fsub fast float %2398, %2426
  %2455 = fmul fast float %2439, %2452
  %2456 = fmul fast float %2439, %2453
  %2457 = fmul fast float %2439, %2454
  %2458 = fadd fast float %2455, %2424
  %2459 = fadd fast float %2456, %2425
  %2460 = fadd fast float %2457, %2426
  %2461 = fsub fast float %2411, %1750
  %2462 = fmul fast float %2434, %2461
  %2463 = fadd fast float %2462, %1750
  br label %2509

; <label>:2464                                    ; preds = %2431
  %2465 = icmp eq i32 %2429, 1
  br i1 %2465, label %2466, label %2479

; <label>:2466                                    ; preds = %2464
  %2467 = fadd fast float %2268, -1.000000e+00
  %2468 = fadd fast float %2269, -1.000000e+00
  %2469 = fadd fast float %2270, -1.000000e+00
  %2470 = fmul fast float %2434, %2467
  %2471 = fmul fast float %2434, %2468
  %2472 = fmul fast float %2434, %2469
  %2473 = fadd fast float %2470, 1.000000e+00
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fmul fast float %2473, %2421
  %2477 = fmul fast float %2474, %2422
  %2478 = fmul fast float %2475, %2423
  br label %2509

; <label>:2479                                    ; preds = %2464
  %2480 = icmp eq i32 %2429, 2
  br i1 %2480, label %2481, label %2509

; <label>:2481                                    ; preds = %2479
  %2482 = call float @dx.op.unary.f32(i32 24, float %2268)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %2269)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %2270)  ; Sqrt(value)
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fmul fast float %2485, %2434
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2434
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fmul fast float %2491, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2421
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2421
  %2499 = fmul fast float %2492, 2.000000e+00
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2500, %2422
  %2502 = fadd fast float %2501, %2499
  %2503 = fmul fast float %2502, %2422
  %2504 = fmul fast float %2493, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2423
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2423
  br label %2509

; <label>:2509                                    ; preds = %2481, %2479, %2466, %2436, %2420
  %2510 = phi float [ %2421, %2420 ], [ %2498, %2481 ], [ %2421, %2479 ], [ %2476, %2466 ], [ %2446, %2436 ]
  %2511 = phi float [ %2422, %2420 ], [ %2503, %2481 ], [ %2422, %2479 ], [ %2477, %2466 ], [ %2447, %2436 ]
  %2512 = phi float [ %2423, %2420 ], [ %2508, %2481 ], [ %2423, %2479 ], [ %2478, %2466 ], [ %2448, %2436 ]
  %2513 = phi float [ %2424, %2420 ], [ %2424, %2481 ], [ %2424, %2479 ], [ %2424, %2466 ], [ %2458, %2436 ]
  %2514 = phi float [ %2425, %2420 ], [ %2425, %2481 ], [ %2425, %2479 ], [ %2425, %2466 ], [ %2459, %2436 ]
  %2515 = phi float [ %2426, %2420 ], [ %2426, %2481 ], [ %2426, %2479 ], [ %2426, %2466 ], [ %2460, %2436 ]
  %2516 = phi float [ %1747, %2420 ], [ %1747, %2481 ], [ %1747, %2479 ], [ %1747, %2466 ], [ %2451, %2436 ]
  %2517 = phi float [ %1750, %2420 ], [ %1750, %2481 ], [ %1750, %2479 ], [ %1750, %2466 ], [ %2463, %2436 ]
  %2518 = and i32 %2428, 12
  %2519 = icmp eq i32 %2518, 12
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2509
  %2521 = and i32 %2428, 2097184
  %2522 = icmp eq i32 %2521, 2097184
  %2523 = select i1 %2522, float %2048, float 0.000000e+00
  %2524 = and i32 %2428, 4194336
  %2525 = icmp eq i32 %2524, 4194336
  %2526 = select i1 %2525, float %2048, float 0.000000e+00
  %2527 = and i32 %2428, 8388640
  %2528 = icmp eq i32 %2527, 8388640
  %2529 = select i1 %2528, float %2048, float 0.000000e+00
  %2530 = icmp eq i32 %2518, 0
  br i1 %2530, label %2531, label %2544

; <label>:2531                                    ; preds = %2520
  %2532 = fsub fast float %2349, %1739
  %2533 = fsub fast float %2350, %1740
  %2534 = fmul fast float %2523, %2532
  %2535 = fmul fast float %2523, %2533
  %2536 = fadd fast float %2534, %1739
  %2537 = fadd fast float %2535, %1740
  %2538 = fsub fast float %2351, %1749
  %2539 = fmul fast float %2526, %2538
  %2540 = fadd fast float %2539, %1749
  %2541 = fsub fast float %2348, %1748
  %2542 = fmul fast float %2529, %2541
  %2543 = fadd fast float %2542, %1748
  br label %2592

; <label>:2544                                    ; preds = %2520
  %2545 = icmp eq i32 %2518, 4
  br i1 %2545, label %2546, label %2578

; <label>:2546                                    ; preds = %2544
  %2547 = fmul fast float %2523, %2349
  %2548 = fmul fast float %2523, %2350
  %2549 = fadd fast float %2547, %1739
  %2550 = fadd fast float %2548, %1740
  %2551 = call float @dx.op.binary.f32(i32 36, float %1749, float %2351)  ; FMin(a,b)
  %2552 = fsub fast float %2551, %1749
  %2553 = fmul fast float %2552, %2526
  %2554 = fadd fast float %2553, %1749
  %2555 = fadd fast float %2348, %1748
  %2556 = fmul fast float %2555, 0x3FF337FAE0000000
  %2557 = fmul fast float %1748, %1748
  %2558 = fmul fast float %2348, %2348
  %2559 = fadd fast float %2558, %2557
  %2560 = fmul fast float %2559, 0x3FE5152B00000000
  %2561 = fmul fast float %1748, 0xBFCC1F85E0000000
  %2562 = fmul fast float %2561, %2348
  %2563 = fadd fast float %2562, 0xBFE1363700000000
  %2564 = fadd fast float %2563, %2556
  %2565 = fsub fast float %2564, %2560
  %2566 = fmul fast float %2555, 0x3FBA6F0D00000000
  %2567 = fmul fast float %2559, 0x3FD0432880000000
  %2568 = fmul fast float %1748, 0xBFEF110800000000
  %2569 = fmul fast float %2568, %2348
  %2570 = fadd fast float %2569, 1.000000e+00
  %2571 = fsub fast float %2570, %2566
  %2572 = fadd fast float %2571, %2567
  %2573 = fdiv fast float %2565, %2572
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fsub fast float %2574, %1748
  %2576 = fmul fast float %2575, %2529
  %2577 = fadd fast float %2576, %1748
  br label %2592

; <label>:2578                                    ; preds = %2544
  %2579 = icmp eq i32 %2518, 8
  br i1 %2579, label %2580, label %2592

; <label>:2580                                    ; preds = %2578
  %2581 = fmul fast float %2523, %2349
  %2582 = fmul fast float %2523, %2350
  %2583 = fadd fast float %2581, %1739
  %2584 = fadd fast float %2582, %1740
  %2585 = call float @dx.op.binary.f32(i32 36, float %1749, float %2351)  ; FMin(a,b)
  %2586 = fsub fast float %2585, %1749
  %2587 = fmul fast float %2586, %2526
  %2588 = fadd fast float %2587, %1749
  %2589 = fsub fast float %2348, %1748
  %2590 = fmul fast float %2529, %2589
  %2591 = fadd fast float %2590, %1748
  br label %2592

; <label>:2592                                    ; preds = %2580, %2578, %2546, %2531, %2509, %2047, %1751, %1738
  %2593 = phi float [ %1739, %2509 ], [ %1739, %2047 ], [ %1739, %1738 ], [ %2583, %2580 ], [ %1739, %2578 ], [ %2549, %2546 ], [ %2536, %2531 ], [ %1739, %1751 ]
  %2594 = phi float [ %1740, %2509 ], [ %1740, %2047 ], [ %1740, %1738 ], [ %2584, %2580 ], [ %1740, %2578 ], [ %2550, %2546 ], [ %2537, %2531 ], [ %1740, %1751 ]
  %2595 = phi float [ %2510, %2509 ], [ %1741, %2047 ], [ %1741, %1738 ], [ %2510, %2580 ], [ %2510, %2578 ], [ %2510, %2546 ], [ %2510, %2531 ], [ %1741, %1751 ]
  %2596 = phi float [ %2511, %2509 ], [ %1742, %2047 ], [ %1742, %1738 ], [ %2511, %2580 ], [ %2511, %2578 ], [ %2511, %2546 ], [ %2511, %2531 ], [ %1742, %1751 ]
  %2597 = phi float [ %2512, %2509 ], [ %1743, %2047 ], [ %1743, %1738 ], [ %2512, %2580 ], [ %2512, %2578 ], [ %2512, %2546 ], [ %2512, %2531 ], [ %1743, %1751 ]
  %2598 = phi float [ %2513, %2509 ], [ %1744, %2047 ], [ %1744, %1738 ], [ %2513, %2580 ], [ %2513, %2578 ], [ %2513, %2546 ], [ %2513, %2531 ], [ %1744, %1751 ]
  %2599 = phi float [ %2514, %2509 ], [ %1745, %2047 ], [ %1745, %1738 ], [ %2514, %2580 ], [ %2514, %2578 ], [ %2514, %2546 ], [ %2514, %2531 ], [ %1745, %1751 ]
  %2600 = phi float [ %2515, %2509 ], [ %1746, %2047 ], [ %1746, %1738 ], [ %2515, %2580 ], [ %2515, %2578 ], [ %2515, %2546 ], [ %2515, %2531 ], [ %1746, %1751 ]
  %2601 = phi float [ %2516, %2509 ], [ %1747, %2047 ], [ %1747, %1738 ], [ %2516, %2580 ], [ %2516, %2578 ], [ %2516, %2546 ], [ %2516, %2531 ], [ %1747, %1751 ]
  %2602 = phi float [ %1748, %2509 ], [ %1748, %2047 ], [ %1748, %1738 ], [ %2591, %2580 ], [ %1748, %2578 ], [ %2577, %2546 ], [ %2543, %2531 ], [ %1748, %1751 ]
  %2603 = phi float [ %1749, %2509 ], [ %1749, %2047 ], [ %1749, %1738 ], [ %2588, %2580 ], [ %1749, %2578 ], [ %2554, %2546 ], [ %2540, %2531 ], [ %1749, %1751 ]
  %2604 = phi float [ %2517, %2509 ], [ %1750, %2047 ], [ %1750, %1738 ], [ %2517, %2580 ], [ %2517, %2578 ], [ %2517, %2546 ], [ %2517, %2531 ], [ %1750, %1751 ]
  br i1 %365, label %3446, label %2605

; <label>:2605                                    ; preds = %2592
  %2606 = icmp ult i32 %416, 4
  %2607 = add i32 %34, 72
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %34, 76
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = or i32 %2612, %2609
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %3446, label %2615

; <label>:2615                                    ; preds = %2605
  %2616 = and i32 %2609, 262144
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %37, float 1.000000e+00
  %2619 = select i1 %2617, float %38, float 0.000000e+00
  %2620 = select i1 %2617, float %39, float 0.000000e+00
  %2621 = select i1 %2617, float %40, float 1.000000e+00
  %2622 = select i1 %2617, float %41, float %62
  %2623 = select i1 %2617, float %42, float %63
  %2624 = add i32 %34, 332
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = fmul fast float %2628, 0x3F50624DE0000000
  %2630 = add i32 %34, 136
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 16
  %2634 = and i32 %2633, 255
  %2635 = lshr i32 %2632, 24
  %2636 = add i32 %34, 340
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = lshr i32 %2638, 16
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = add i32 %34, 80
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 22
  %2647 = shl nuw nsw i32 %2646, 5
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = shl i32 %2645, 4
  %2650 = and i32 %2649, 32752
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2645, 7
  %2653 = and i32 %2652, 32752
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2657 = fmul fast float %2656, 1.000000e+03
  %2658 = fmul fast float %355, %2657
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fadd fast float %2659, %345
  %2661 = fmul fast float %356, %2657
  %2662 = call float @dx.op.unary.f32(i32 22, float %2661)  ; Frc(value)
  %2663 = fadd fast float %2662, %347
  %2664 = fmul fast float %2629, %2657
  %2665 = call float @dx.op.unary.f32(i32 22, float %2664)  ; Frc(value)
  %2666 = fmul fast float %2665, 0x401921FB60000000
  %2667 = fadd fast float %2666, %2648
  %2668 = call float @dx.op.unary.f32(i32 13, float %2667)  ; Sin(value)
  %2669 = call float @dx.op.unary.f32(i32 12, float %2667)  ; Cos(value)
  %2670 = fsub fast float -0.000000e+00, %2668
  %2671 = fadd fast float %2622, -5.000000e-01
  %2672 = fadd fast float %2623, -5.000000e-01
  %2673 = fmul fast float %2640, %2671
  %2674 = fmul fast float %2642, %2672
  %2675 = fadd fast float %2673, 5.000000e-01
  %2676 = fadd fast float %2674, 5.000000e-01
  %2677 = fmul fast float %2651, %2675
  %2678 = fmul fast float %2654, %2676
  %2679 = fmul fast float %2669, %2677
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2670, float %2678, float %2679)  ; FMad(a,b,c)
  %2681 = fmul fast float %2668, %2677
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2669, float %2678, float %2681)  ; FMad(a,b,c)
  %2683 = fadd fast float %2660, %2680
  %2684 = fadd fast float %2663, %2682
  %2685 = icmp ugt i32 %2634, 1
  %2686 = icmp ugt i32 %2632, 33554431
  %2687 = or i1 %2686, %2685
  br i1 %2687, label %2688, label %2713

; <label>:2688                                    ; preds = %2615
  %2689 = add i32 %34, 276
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = lshr i32 %2691, 16
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = fmul fast float %2656, %2693
  %2695 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2696 = mul nuw nsw i32 %2634, %2635
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2695, %2697
  %2699 = call float @dx.op.unary.f32(i32 27, float %2698)  ; Round_ni(value)
  %2700 = fptoui float %2699 to i32
  %2701 = urem i32 %2700, %2634
  %2702 = udiv i32 %2700, %2635
  %2703 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2704 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2705 = uitofp i32 %2701 to float
  %2706 = uitofp i32 %2702 to float
  %2707 = fadd fast float %2703, %2705
  %2708 = fadd fast float %2704, %2706
  %2709 = uitofp i32 %2634 to float
  %2710 = uitofp i32 %2635 to float
  %2711 = fdiv fast float %2707, %2709
  %2712 = fdiv fast float %2708, %2710
  br label %2713

; <label>:2713                                    ; preds = %2688, %2615
  %2714 = phi float [ %2711, %2688 ], [ %2683, %2615 ]
  %2715 = phi float [ %2712, %2688 ], [ %2684, %2615 ]
  %2716 = and i32 %2609, 16777216
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2827, label %2718

; <label>:2718                                    ; preds = %2713
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2723 = fadd fast float %2720, %133
  %2724 = fadd fast float %2721, %134
  %2725 = fadd fast float %2722, %135
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = icmp eq i32 %35, 65535
  br i1 %2729, label %2824, label %2730

; <label>:2730                                    ; preds = %2718
  %2731 = lshr i32 %35, 1
  %2732 = shl i32 %2731, 2
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %35, 1
  %2736 = icmp ne i32 %2735, 0
  %2737 = lshr i32 %2734, 16
  %2738 = and i32 %2734, 65535
  %2739 = select i1 %2736, i32 %2737, i32 %2738
  %2740 = icmp eq i32 %2739, 65535
  br i1 %2740, label %2820, label %2741

; <label>:2741                                    ; preds = %2730
  %2742 = mul nuw nsw i32 %2739, 40
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = add nuw nsw i32 %2742, 12
  %2748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.ResRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.ResRet.f32 %2748, 2
  %2752 = add nuw nsw i32 %2742, 24
  %2753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = add nuw nsw i32 %2742, 36
  %2758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = fsub fast float %2723, %2744
  %2761 = fsub fast float %2724, %2745
  %2762 = fsub fast float %2725, %2746
  %2763 = fmul fast float %2759, %2760
  %2764 = fmul fast float %2759, %2761
  %2765 = fmul fast float %2759, %2762
  %2766 = call float @dx.op.unary.f32(i32 27, float %2763)  ; Round_ni(value)
  %2767 = call float @dx.op.unary.f32(i32 27, float %2764)  ; Round_ni(value)
  %2768 = call float @dx.op.unary.f32(i32 27, float %2765)  ; Round_ni(value)
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fmul fast float %2769, %2749
  %2773 = fmul fast float %2770, %2750
  %2774 = fmul fast float %2771, %2751
  %2775 = shl i32 %35, 2
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = add i32 %2777, 0
  %2779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2780 = call float @dx.op.unary.f32(i32 22, float %2772)  ; Frc(value)
  %2781 = call float @dx.op.unary.f32(i32 22, float %2773)  ; Frc(value)
  %2782 = call float @dx.op.unary.f32(i32 22, float %2774)  ; Frc(value)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2779, %dx.types.Handle %29, float %2780, float %2781, float %2782, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = fmul fast float %2784, 1.023000e+03
  %2788 = fmul fast float %2785, 1.023000e+03
  %2789 = fmul fast float %2786, 1.023000e+03
  %2790 = fadd fast float %2787, 5.000000e-01
  %2791 = fadd fast float %2788, 5.000000e-01
  %2792 = fadd fast float %2789, 5.000000e-01
  %2793 = call float @dx.op.unary.f32(i32 27, float %2790)  ; Round_ni(value)
  %2794 = call float @dx.op.unary.f32(i32 27, float %2791)  ; Round_ni(value)
  %2795 = call float @dx.op.unary.f32(i32 27, float %2792)  ; Round_ni(value)
  %2796 = fsub fast float %2763, %2766
  %2797 = fsub fast float %2764, %2767
  %2798 = fsub fast float %2765, %2768
  %2799 = fmul fast float %2796, 7.500000e-01
  %2800 = fmul fast float %2797, 7.500000e-01
  %2801 = fmul fast float %2798, 7.500000e-01
  %2802 = fadd fast float %2766, 1.250000e-01
  %2803 = fadd fast float %2802, %2799
  %2804 = fadd fast float %2803, %2793
  %2805 = fadd fast float %2767, 1.250000e-01
  %2806 = fadd fast float %2805, %2800
  %2807 = fadd fast float %2806, %2794
  %2808 = fadd fast float %2768, 1.250000e-01
  %2809 = fadd fast float %2808, %2801
  %2810 = fadd fast float %2809, %2795
  %2811 = fmul fast float %2804, %2754
  %2812 = fmul fast float %2807, %2755
  %2813 = fmul fast float %2810, %2756
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %2815, 0
  %2817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2817, %dx.types.Handle %27, float %2811, float %2812, float %2813, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  br label %2820

; <label>:2820                                    ; preds = %2741, %2730
  %2821 = phi float [ %2819, %2741 ], [ -1.000000e+00, %2730 ]
  %2822 = fadd fast float %2821, %2728
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  br label %2824

; <label>:2824                                    ; preds = %2820, %2718
  %2825 = phi float [ %2823, %2820 ], [ %2728, %2718 ]
  %2826 = fmul fast float %2825, %411
  br label %2827

; <label>:2827                                    ; preds = %2824, %2713
  %2828 = phi float [ %2826, %2824 ], [ %411, %2713 ]
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 256
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2879, label %2833

; <label>:2833                                    ; preds = %2827
  %2834 = add i32 %34, 436
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %71, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = add i32 %34, 148
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = shl i32 %2843, 4
  %2845 = and i32 %2844, 32752
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = lshr i32 %2843, 7
  %2848 = and i32 %2847, 32752
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = fsub fast float 1.000000e+00, %2828
  %2851 = call float @dx.op.binary.f32(i32 35, float %2850, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2852 = bitcast float %2828 to i32
  %2853 = sitofp i32 %2852 to float
  %2854 = fadd fast float %2853, 0xC1CFBF8940000000
  %2855 = fmul fast float %2849, %2854
  %2856 = fadd fast float %2855, 0x41CFBF8940000000
  %2857 = fptosi float %2856 to i32
  %2858 = bitcast i32 %2857 to float
  %2859 = bitcast float %2851 to i32
  %2860 = sitofp i32 %2859 to float
  %2861 = fadd fast float %2860, 0xC1CFBF8940000000
  %2862 = fmul fast float %2861, %2849
  %2863 = fadd fast float %2862, 0x41CFBF8940000000
  %2864 = fptosi float %2863 to i32
  %2865 = bitcast i32 %2864 to float
  %2866 = fmul fast float %2858, %2846
  %2867 = fmul fast float %2865, %2846
  %2868 = fsub fast float %2851, %2866
  %2869 = fadd fast float %2867, %2851
  %2870 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2872 = fsub fast float %2840, %2870
  %2873 = fsub fast float %2871, %2870
  %2874 = bitcast float %2873 to i32
  %2875 = sub nsw i32 2129859010, %2874
  %2876 = bitcast i32 %2875 to float
  %2877 = fmul fast float %2876, %2872
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  br label %2879

; <label>:2879                                    ; preds = %2833, %2827
  %2880 = phi float [ %2878, %2833 ], [ %2828, %2827 ]
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 128
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %2901, label %2885

; <label>:2885                                    ; preds = %2879
  %2886 = add i32 %34, 420
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = add i32 %2888, 0
  %2890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2890, %dx.types.Handle %71, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 524288
  %2896 = icmp ne i32 %2895, 0
  %2897 = fcmp fast ogt float %2892, 0x3FE0101020000000
  %2898 = select i1 %2897, float 1.000000e+00, float 0.000000e+00
  %2899 = select i1 %2896, float %2898, float %2892
  %2900 = fmul fast float %2899, %2880
  br label %2901

; <label>:2901                                    ; preds = %2885, %2879
  %2902 = phi float [ %2900, %2885 ], [ %2880, %2879 ]
  %2903 = fcmp fast ult float %2902, 0x3F70101020000000
  br i1 %2903, label %3446, label %2904

; <label>:2904                                    ; preds = %2901
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 16
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %3107, label %2909

; <label>:2909                                    ; preds = %2904
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = add i32 %34, 372
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2916, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.ResRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.ResRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.ResRet.f32 %2917, 3
  %2922 = and i32 %2911, 255
  %2923 = uitofp i32 %2922 to float
  %2924 = lshr i32 %2911, 8
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2921, %2923
  %2928 = fadd fast float %2927, %2926
  %2929 = fmul fast float %2928, 0x3F70101000000000
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 512
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %2942, label %2934

; <label>:2934                                    ; preds = %2909
  %2935 = add i32 %34, 452
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = add i32 %2937, 0
  %2939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2939, %dx.types.Handle %71, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  br label %2942

; <label>:2942                                    ; preds = %2934, %2909
  %2943 = phi float [ %2941, %2934 ], [ 1.000000e+00, %2909 ]
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = and i32 %2945, 33554432
  %2947 = icmp eq i32 %2946, 0
  br i1 %2947, label %3054, label %2948

; <label>:2948                                    ; preds = %2942
  %2949 = add i32 %34, 272
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 65535
  %2953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2952)  ; LegacyF16ToF32(value)
  %2954 = lshr i32 %2951, 16
  %2955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2954)  ; LegacyF16ToF32(value)
  %2956 = add i32 %34, 276
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = lshr i32 %2962, 24
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = and i32 %2962, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2962, 8
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2962, 16
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = add i32 %34, 268
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = lshr i32 %2979, 24
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = and i32 %2979, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2979, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = lshr i32 %2979, 16
  %2991 = and i32 %2990, 255
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = bitcast float %2918 to i32
  %2995 = ashr i32 %2994, 1
  %2996 = sub nsw i32 1597463174, %2995
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2918, 5.000000e-01
  %2999 = fmul fast float %2997, %2997
  %3000 = fmul fast float %2999, %2998
  %3001 = fsub fast float 1.500000e+00, %3000
  %3002 = fmul fast float %2997, %2918
  %3003 = fmul fast float %3002, %3001
  %3004 = bitcast float %2919 to i32
  %3005 = ashr i32 %3004, 1
  %3006 = sub nsw i32 1597463174, %3005
  %3007 = bitcast i32 %3006 to float
  %3008 = fmul fast float %2919, 5.000000e-01
  %3009 = fmul fast float %3007, %3007
  %3010 = fmul fast float %3009, %3008
  %3011 = fsub fast float 1.500000e+00, %3010
  %3012 = fmul fast float %3007, %2919
  %3013 = fmul fast float %3012, %3011
  %3014 = bitcast float %2920 to i32
  %3015 = ashr i32 %3014, 1
  %3016 = sub nsw i32 1597463174, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %2920, 5.000000e-01
  %3019 = fmul fast float %3017, %3017
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float 1.500000e+00, %3020
  %3022 = fmul fast float %3017, %2920
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float %3003, %2985
  %3025 = fsub fast float %3013, %2989
  %3026 = fsub fast float %3023, %2993
  %3027 = fmul fast float %3024, %2953
  %3028 = fmul fast float %3025, %2955
  %3029 = fmul fast float %3026, %2960
  %3030 = fadd fast float %3027, %2968
  %3031 = fadd fast float %3028, %2972
  %3032 = fadd fast float %3029, %2976
  %3033 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3034 = call float @dx.op.unary.f32(i32 7, float %3031)  ; Saturate(value)
  %3035 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  %3036 = fmul fast float %3033, %3033
  %3037 = fmul fast float %3034, %3034
  %3038 = fmul fast float %3035, %3035
  %3039 = fsub fast float %3036, %2918
  %3040 = fsub fast float %3037, %2919
  %3041 = fsub fast float %3038, %2920
  %3042 = fmul fast float %3039, %2943
  %3043 = fmul fast float %3040, %2943
  %3044 = fmul fast float %3041, %2943
  %3045 = fadd fast float %3042, %2918
  %3046 = fadd fast float %3043, %2919
  %3047 = fadd fast float %3044, %2920
  %3048 = fadd fast float %2965, %2929
  %3049 = fsub fast float %3048, %2982
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = fsub fast float %3050, %2929
  %3052 = fmul fast float %3051, %2943
  %3053 = fadd fast float %3052, %2929
  br label %3107

; <label>:3054                                    ; preds = %2942
  %3055 = and i32 %2945, 134217728
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3091, label %3057

; <label>:3057                                    ; preds = %3054
  %3058 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %3060 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3061 = fadd fast float %3058, -5.000000e-01
  %3062 = fadd fast float %3059, -5.000000e-01
  %3063 = fadd fast float %3060, -5.000000e-01
  %3064 = fmul fast float %3061, %2943
  %3065 = fmul fast float %3062, %2943
  %3066 = fmul fast float %3063, %2943
  %3067 = fadd fast float %3064, 5.000000e-01
  %3068 = fadd fast float %3065, 5.000000e-01
  %3069 = fadd fast float %3066, 5.000000e-01
  %3070 = call float @dx.op.unary.f32(i32 24, float %2918)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %2920)  ; Sqrt(value)
  %3073 = fmul fast float %3067, 2.000000e+00
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = fmul fast float %3074, %3070
  %3076 = fadd fast float %3075, %3073
  %3077 = fmul fast float %3076, %3070
  %3078 = fmul fast float %3068, 2.000000e+00
  %3079 = fsub fast float 1.000000e+00, %3078
  %3080 = fmul fast float %3079, %3071
  %3081 = fadd fast float %3080, %3078
  %3082 = fmul fast float %3081, %3071
  %3083 = fmul fast float %3069, 2.000000e+00
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = fmul fast float %3084, %3072
  %3086 = fadd fast float %3085, %3083
  %3087 = fmul fast float %3086, %3072
  %3088 = fmul fast float %3077, %3077
  %3089 = fmul fast float %3082, %3082
  %3090 = fmul fast float %3087, %3087
  br label %3107

; <label>:3091                                    ; preds = %3054
  %3092 = fmul fast float %332, %332
  %3093 = fmul fast float %336, %336
  %3094 = fmul fast float %340, %340
  %3095 = fadd fast float %3092, -1.000000e+00
  %3096 = fadd fast float %3093, -1.000000e+00
  %3097 = fadd fast float %3094, -1.000000e+00
  %3098 = fmul fast float %2943, %3095
  %3099 = fmul fast float %2943, %3096
  %3100 = fmul fast float %2943, %3097
  %3101 = fadd fast float %3098, 1.000000e+00
  %3102 = fadd fast float %3099, 1.000000e+00
  %3103 = fadd fast float %3100, 1.000000e+00
  %3104 = fmul fast float %3101, %2918
  %3105 = fmul fast float %3102, %2919
  %3106 = fmul fast float %3103, %2920
  br label %3107

; <label>:3107                                    ; preds = %3091, %3057, %2948, %2904
  %3108 = phi float [ %3053, %2948 ], [ %2929, %3057 ], [ %2929, %3091 ], [ 0x3FA23C0BE0000000, %2904 ]
  %3109 = phi float [ %3045, %2948 ], [ %3088, %3057 ], [ %3104, %3091 ], [ 1.000000e+00, %2904 ]
  %3110 = phi float [ %3046, %2948 ], [ %3089, %3057 ], [ %3105, %3091 ], [ 1.000000e+00, %2904 ]
  %3111 = phi float [ %3047, %2948 ], [ %3090, %3057 ], [ %3106, %3091 ], [ 1.000000e+00, %2904 ]
  %3112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.i32 %3112, 1
  %3114 = and i32 %3113, 1
  %3115 = icmp ne i32 %3114, 0
  %3116 = add i32 %34, 356
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 32
  %3120 = icmp ne i32 %3119, 0
  %3121 = and i1 %3115, %3120
  %3122 = select i1 %3121, float 1.000000e+00, float %3109
  %3123 = select i1 %3121, float 0x3FD3333340000000, float %3110
  %3124 = select i1 %3121, float 0x3FD3333340000000, float %3111
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 32
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3201, label %3129

; <label>:3129                                    ; preds = %3107
  %3130 = add i32 %34, 140
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %34, 388
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3138, 3
  %3143 = and i32 %3132, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = lshr i32 %3132, 8
  %3146 = and i32 %3145, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = lshr i32 %3132, 16
  %3149 = and i32 %3148, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = fmul fast float %3150, 0x3F70101000000000
  %3152 = fmul fast float %3139, %3144
  %3153 = fadd fast float %3152, %3147
  %3154 = fmul fast float %3153, 0x3F70101000000000
  %3155 = fadd fast float %3140, -5.000000e-01
  %3156 = fadd fast float %3142, -5.000000e-01
  %3157 = fmul fast float %3155, %3151
  %3158 = fmul fast float %3156, %3151
  %3159 = fadd fast float %3157, 5.000000e-01
  %3160 = fadd fast float %3158, 5.000000e-01
  %3161 = fmul fast float %3159, 2.000000e+00
  %3162 = fadd fast float %3161, -1.000000e+00
  %3163 = fmul fast float %3160, 2.000000e+00
  %3164 = fadd fast float %3163, -1.000000e+00
  %3165 = fadd fast float %3162, %3164
  %3166 = fmul fast float %3165, 5.000000e-01
  %3167 = fsub fast float %3162, %3164
  %3168 = fmul fast float %3167, 5.000000e-01
  %3169 = call float @dx.op.unary.f32(i32 6, float %3166)  ; FAbs(value)
  %3170 = fsub fast float 1.000000e+00, %3169
  %3171 = call float @dx.op.unary.f32(i32 6, float %3168)  ; FAbs(value)
  %3172 = fsub fast float %3170, %3171
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3166, float %3168, float %3172, float %3166, float %3168, float %3172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.unary.f32(i32 25, float %3173)  ; Rsqrt(value)
  %3175 = fmul fast float %3166, %3174
  %3176 = fmul fast float %3168, %3174
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 67108864
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3197, label %3181

; <label>:3181                                    ; preds = %3129
  %3182 = add i32 %34, 328
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 65535
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = lshr i32 %3184, 16
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = fsub fast float %3154, %3192
  %3194 = fmul fast float %3193, %3186
  %3195 = fadd fast float %3194, %3190
  %3196 = call float @dx.op.unary.f32(i32 7, float %3195)  ; Saturate(value)
  br label %3197

; <label>:3197                                    ; preds = %3181, %3129
  %3198 = phi float [ %3196, %3181 ], [ %3154, %3129 ]
  %3199 = call float @dx.op.dot2.f32(i32 54, float %3175, float %3176, float %2618, float %2619)  ; Dot2(ax,ay,bx,by)
  %3200 = call float @dx.op.dot2.f32(i32 54, float %3175, float %3176, float %2620, float %2621)  ; Dot2(ax,ay,bx,by)
  br label %3201

; <label>:3201                                    ; preds = %3197, %3107
  %3202 = phi float [ %3198, %3197 ], [ 0x3FD6666660000000, %3107 ]
  %3203 = phi float [ %3199, %3197 ], [ 0.000000e+00, %3107 ]
  %3204 = phi float [ %3200, %3197 ], [ 0.000000e+00, %3107 ]
  %3205 = phi float [ %3141, %3197 ], [ 1.000000e+00, %3107 ]
  %3206 = add i32 %34, 208
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = lshr i32 %3208, 22
  %3210 = shl nuw nsw i32 %3209, 5
  %3211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3210)  ; LegacyF16ToF32(value)
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 64
  %3215 = icmp eq i32 %3214, 0
  br i1 %3215, label %3249, label %3216

; <label>:3216                                    ; preds = %3201
  %3217 = add i32 %34, 404
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = add i32 %3219, 0
  %3221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 131072
  %3225 = icmp eq i32 %3224, 0
  %3226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3221, %dx.types.Handle %70, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = fmul fast float %3227, %320
  %3231 = fmul fast float %3228, %323
  %3232 = fmul fast float %3229, %326
  br i1 %3225, label %3239, label %3233

; <label>:3233                                    ; preds = %3216
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = fmul fast float %3235, %3230
  %3237 = fmul fast float %3235, %3231
  %3238 = fmul fast float %3235, %3232
  br label %3239

; <label>:3239                                    ; preds = %3233, %3216
  %3240 = phi float [ %3236, %3233 ], [ %3230, %3216 ]
  %3241 = phi float [ %3237, %3233 ], [ %3231, %3216 ]
  %3242 = phi float [ %3238, %3233 ], [ %3232, %3216 ]
  %3243 = fmul fast float %3240, %3211
  %3244 = select i1 %174, float %3243, float %3240
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3241, float %3242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = select i1 %174, float 0.000000e+00, float %3240
  %3247 = select i1 %174, float %3245, float %3241
  %3248 = select i1 %174, float 0.000000e+00, float %3242
  br label %3249

; <label>:3249                                    ; preds = %3239, %3201
  %3250 = phi float [ %3246, %3239 ], [ 0.000000e+00, %3201 ]
  %3251 = phi float [ %3247, %3239 ], [ 0.000000e+00, %3201 ]
  %3252 = phi float [ %3248, %3239 ], [ 0.000000e+00, %3201 ]
  %3253 = add i32 %34, 144
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = lshr i32 %3255, 8
  %3259 = and i32 %3258, 255
  %3260 = uitofp i32 %3259 to float
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3122, float %3123, float %3124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = fmul fast float %3260, %3261
  %3263 = fadd fast float %3262, %3257
  %3264 = fmul fast float %3263, 0x3F70101020000000
  %3265 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  br i1 %2606, label %3266, label %3274

; <label>:3266                                    ; preds = %3249
  %3267 = fsub fast float 1.000000e+00, %2902
  %3268 = fmul fast float %3267, %2595
  %3269 = fmul fast float %3267, %2596
  %3270 = fmul fast float %3267, %2597
  %3271 = fmul fast float %3267, %2598
  %3272 = fmul fast float %3267, %2599
  %3273 = fmul fast float %3267, %2600
  br label %3274

; <label>:3274                                    ; preds = %3266, %3249
  %3275 = phi float [ %3268, %3266 ], [ %2595, %3249 ]
  %3276 = phi float [ %3269, %3266 ], [ %2596, %3249 ]
  %3277 = phi float [ %3270, %3266 ], [ %2597, %3249 ]
  %3278 = phi float [ %3271, %3266 ], [ %2598, %3249 ]
  %3279 = phi float [ %3272, %3266 ], [ %2599, %3249 ]
  %3280 = phi float [ %3273, %3266 ], [ %2600, %3249 ]
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = and i32 %3282, 3
  %3284 = icmp eq i32 %3283, 3
  br i1 %3284, label %3363, label %3285

; <label>:3285                                    ; preds = %3274
  %3286 = and i32 %3282, 16
  %3287 = icmp ne i32 %3286, 0
  %3288 = select i1 %3287, float %2902, float 0.000000e+00
  %3289 = icmp eq i32 %3283, 0
  br i1 %3289, label %3290, label %3318

; <label>:3290                                    ; preds = %3285
  %3291 = and i32 %3282, 64
  %3292 = icmp ne i32 %3291, 0
  %3293 = select i1 %3292, float %2902, float 0.000000e+00
  %3294 = fsub fast float %3122, %3275
  %3295 = fsub fast float %3123, %3276
  %3296 = fsub fast float %3124, %3277
  %3297 = fmul fast float %3288, %3294
  %3298 = fmul fast float %3288, %3295
  %3299 = fmul fast float %3288, %3296
  %3300 = fadd fast float %3297, %3275
  %3301 = fadd fast float %3298, %3276
  %3302 = fadd fast float %3299, %3277
  %3303 = fsub fast float %3108, %2601
  %3304 = fmul fast float %3288, %3303
  %3305 = fadd fast float %3304, %2601
  %3306 = fsub fast float %3250, %3278
  %3307 = fsub fast float %3251, %3279
  %3308 = fsub fast float %3252, %3280
  %3309 = fmul fast float %3293, %3306
  %3310 = fmul fast float %3293, %3307
  %3311 = fmul fast float %3293, %3308
  %3312 = fadd fast float %3309, %3278
  %3313 = fadd fast float %3310, %3279
  %3314 = fadd fast float %3311, %3280
  %3315 = fsub fast float %3265, %2604
  %3316 = fmul fast float %3288, %3315
  %3317 = fadd fast float %3316, %2604
  br label %3363

; <label>:3318                                    ; preds = %3285
  %3319 = icmp eq i32 %3283, 1
  br i1 %3319, label %3320, label %3333

; <label>:3320                                    ; preds = %3318
  %3321 = fadd fast float %3122, -1.000000e+00
  %3322 = fadd fast float %3123, -1.000000e+00
  %3323 = fadd fast float %3124, -1.000000e+00
  %3324 = fmul fast float %3288, %3321
  %3325 = fmul fast float %3288, %3322
  %3326 = fmul fast float %3288, %3323
  %3327 = fadd fast float %3324, 1.000000e+00
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fadd fast float %3326, 1.000000e+00
  %3330 = fmul fast float %3327, %3275
  %3331 = fmul fast float %3328, %3276
  %3332 = fmul fast float %3329, %3277
  br label %3363

; <label>:3333                                    ; preds = %3318
  %3334 = icmp eq i32 %3283, 2
  br i1 %3334, label %3335, label %3363

; <label>:3335                                    ; preds = %3333
  %3336 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3337 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3338 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3339 = fadd fast float %3336, -5.000000e-01
  %3340 = fadd fast float %3337, -5.000000e-01
  %3341 = fadd fast float %3338, -5.000000e-01
  %3342 = fmul fast float %3339, %3288
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3288
  %3345 = fadd fast float %3342, 5.000000e-01
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = fmul fast float %3345, 2.000000e+00
  %3349 = fsub fast float 1.000000e+00, %3348
  %3350 = fmul fast float %3349, %3275
  %3351 = fadd fast float %3350, %3348
  %3352 = fmul fast float %3351, %3275
  %3353 = fmul fast float %3346, 2.000000e+00
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = fmul fast float %3354, %3276
  %3356 = fadd fast float %3355, %3353
  %3357 = fmul fast float %3356, %3276
  %3358 = fmul fast float %3347, 2.000000e+00
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3277
  %3361 = fadd fast float %3360, %3358
  %3362 = fmul fast float %3361, %3277
  br label %3363

; <label>:3363                                    ; preds = %3335, %3333, %3320, %3290, %3274
  %3364 = phi float [ %3275, %3274 ], [ %3352, %3335 ], [ %3275, %3333 ], [ %3330, %3320 ], [ %3300, %3290 ]
  %3365 = phi float [ %3276, %3274 ], [ %3357, %3335 ], [ %3276, %3333 ], [ %3331, %3320 ], [ %3301, %3290 ]
  %3366 = phi float [ %3277, %3274 ], [ %3362, %3335 ], [ %3277, %3333 ], [ %3332, %3320 ], [ %3302, %3290 ]
  %3367 = phi float [ %3278, %3274 ], [ %3278, %3335 ], [ %3278, %3333 ], [ %3278, %3320 ], [ %3312, %3290 ]
  %3368 = phi float [ %3279, %3274 ], [ %3279, %3335 ], [ %3279, %3333 ], [ %3279, %3320 ], [ %3313, %3290 ]
  %3369 = phi float [ %3280, %3274 ], [ %3280, %3335 ], [ %3280, %3333 ], [ %3280, %3320 ], [ %3314, %3290 ]
  %3370 = phi float [ %2601, %3274 ], [ %2601, %3335 ], [ %2601, %3333 ], [ %2601, %3320 ], [ %3305, %3290 ]
  %3371 = phi float [ %2604, %3274 ], [ %2604, %3335 ], [ %2604, %3333 ], [ %2604, %3320 ], [ %3317, %3290 ]
  %3372 = and i32 %3282, 12
  %3373 = icmp eq i32 %3372, 12
  br i1 %3373, label %3446, label %3374

; <label>:3374                                    ; preds = %3363
  %3375 = and i32 %3282, 2097184
  %3376 = icmp eq i32 %3375, 2097184
  %3377 = select i1 %3376, float %2902, float 0.000000e+00
  %3378 = and i32 %3282, 4194336
  %3379 = icmp eq i32 %3378, 4194336
  %3380 = select i1 %3379, float %2902, float 0.000000e+00
  %3381 = and i32 %3282, 8388640
  %3382 = icmp eq i32 %3381, 8388640
  %3383 = select i1 %3382, float %2902, float 0.000000e+00
  %3384 = icmp eq i32 %3372, 0
  br i1 %3384, label %3385, label %3398

; <label>:3385                                    ; preds = %3374
  %3386 = fsub fast float %3203, %2593
  %3387 = fsub fast float %3204, %2594
  %3388 = fmul fast float %3377, %3386
  %3389 = fmul fast float %3377, %3387
  %3390 = fadd fast float %3388, %2593
  %3391 = fadd fast float %3389, %2594
  %3392 = fsub fast float %3205, %2603
  %3393 = fmul fast float %3380, %3392
  %3394 = fadd fast float %3393, %2603
  %3395 = fsub fast float %3202, %2602
  %3396 = fmul fast float %3383, %3395
  %3397 = fadd fast float %3396, %2602
  br label %3446

; <label>:3398                                    ; preds = %3374
  %3399 = icmp eq i32 %3372, 4
  br i1 %3399, label %3400, label %3432

; <label>:3400                                    ; preds = %3398
  %3401 = fmul fast float %3377, %3203
  %3402 = fmul fast float %3377, %3204
  %3403 = fadd fast float %3401, %2593
  %3404 = fadd fast float %3402, %2594
  %3405 = call float @dx.op.binary.f32(i32 36, float %2603, float %3205)  ; FMin(a,b)
  %3406 = fsub fast float %3405, %2603
  %3407 = fmul fast float %3406, %3380
  %3408 = fadd fast float %3407, %2603
  %3409 = fadd fast float %3202, %2602
  %3410 = fmul fast float %3409, 0x3FF337FAE0000000
  %3411 = fmul fast float %2602, %2602
  %3412 = fmul fast float %3202, %3202
  %3413 = fadd fast float %3412, %3411
  %3414 = fmul fast float %3413, 0x3FE5152B00000000
  %3415 = fmul fast float %2602, 0xBFCC1F85E0000000
  %3416 = fmul fast float %3415, %3202
  %3417 = fadd fast float %3416, 0xBFE1363700000000
  %3418 = fadd fast float %3417, %3410
  %3419 = fsub fast float %3418, %3414
  %3420 = fmul fast float %3409, 0x3FBA6F0D00000000
  %3421 = fmul fast float %3413, 0x3FD0432880000000
  %3422 = fmul fast float %2602, 0xBFEF110800000000
  %3423 = fmul fast float %3422, %3202
  %3424 = fadd fast float %3423, 1.000000e+00
  %3425 = fsub fast float %3424, %3420
  %3426 = fadd fast float %3425, %3421
  %3427 = fdiv fast float %3419, %3426
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3429 = fsub fast float %3428, %2602
  %3430 = fmul fast float %3429, %3383
  %3431 = fadd fast float %3430, %2602
  br label %3446

; <label>:3432                                    ; preds = %3398
  %3433 = icmp eq i32 %3372, 8
  br i1 %3433, label %3434, label %3446

; <label>:3434                                    ; preds = %3432
  %3435 = fmul fast float %3377, %3203
  %3436 = fmul fast float %3377, %3204
  %3437 = fadd fast float %3435, %2593
  %3438 = fadd fast float %3436, %2594
  %3439 = call float @dx.op.binary.f32(i32 36, float %2603, float %3205)  ; FMin(a,b)
  %3440 = fsub fast float %3439, %2603
  %3441 = fmul fast float %3440, %3380
  %3442 = fadd fast float %3441, %2603
  %3443 = fsub fast float %3202, %2602
  %3444 = fmul fast float %3383, %3443
  %3445 = fadd fast float %3444, %2602
  br label %3446

; <label>:3446                                    ; preds = %3434, %3432, %3400, %3385, %3363, %2901, %2605, %2592
  %3447 = phi float [ %2593, %3363 ], [ %2593, %2901 ], [ %2593, %2592 ], [ %2593, %2605 ], [ %3390, %3385 ], [ %3403, %3400 ], [ %2593, %3432 ], [ %3437, %3434 ]
  %3448 = phi float [ %2594, %3363 ], [ %2594, %2901 ], [ %2594, %2592 ], [ %2594, %2605 ], [ %3391, %3385 ], [ %3404, %3400 ], [ %2594, %3432 ], [ %3438, %3434 ]
  %3449 = phi float [ %3364, %3363 ], [ %2595, %2901 ], [ %2595, %2592 ], [ %2595, %2605 ], [ %3364, %3385 ], [ %3364, %3400 ], [ %3364, %3432 ], [ %3364, %3434 ]
  %3450 = phi float [ %3365, %3363 ], [ %2596, %2901 ], [ %2596, %2592 ], [ %2596, %2605 ], [ %3365, %3385 ], [ %3365, %3400 ], [ %3365, %3432 ], [ %3365, %3434 ]
  %3451 = phi float [ %3366, %3363 ], [ %2597, %2901 ], [ %2597, %2592 ], [ %2597, %2605 ], [ %3366, %3385 ], [ %3366, %3400 ], [ %3366, %3432 ], [ %3366, %3434 ]
  %3452 = phi float [ %3367, %3363 ], [ %2598, %2901 ], [ %2598, %2592 ], [ %2598, %2605 ], [ %3367, %3385 ], [ %3367, %3400 ], [ %3367, %3432 ], [ %3367, %3434 ]
  %3453 = phi float [ %3368, %3363 ], [ %2599, %2901 ], [ %2599, %2592 ], [ %2599, %2605 ], [ %3368, %3385 ], [ %3368, %3400 ], [ %3368, %3432 ], [ %3368, %3434 ]
  %3454 = phi float [ %3369, %3363 ], [ %2600, %2901 ], [ %2600, %2592 ], [ %2600, %2605 ], [ %3369, %3385 ], [ %3369, %3400 ], [ %3369, %3432 ], [ %3369, %3434 ]
  %3455 = phi float [ %3370, %3363 ], [ %2601, %2901 ], [ %2601, %2592 ], [ %2601, %2605 ], [ %3370, %3385 ], [ %3370, %3400 ], [ %3370, %3432 ], [ %3370, %3434 ]
  %3456 = phi float [ %2602, %3363 ], [ %2602, %2901 ], [ %2602, %2592 ], [ %2602, %2605 ], [ %3397, %3385 ], [ %3431, %3400 ], [ %2602, %3432 ], [ %3445, %3434 ]
  %3457 = phi float [ %2603, %3363 ], [ %2603, %2901 ], [ %2603, %2592 ], [ %2603, %2605 ], [ %3394, %3385 ], [ %3408, %3400 ], [ %2603, %3432 ], [ %3442, %3434 ]
  %3458 = phi float [ %3371, %3363 ], [ %2604, %2901 ], [ %2604, %2592 ], [ %2604, %2605 ], [ %3371, %3385 ], [ %3371, %3400 ], [ %3371, %3432 ], [ %3371, %3434 ]
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3447, float %3448, float %3447, float %3448)  ; Dot2(ax,ay,bx,by)
  %3462 = fmul fast float %3461, 0x3FE3333340000000
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3463, float %3447, float %3448, float %3463)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call float @dx.op.unary.f32(i32 25, float %3464)  ; Rsqrt(value)
  %3466 = fmul fast float %3465, %3447
  %3467 = fmul fast float %3465, %3448
  %3468 = fmul fast float %3463, %3465
  %3469 = fmul fast float %3468, %83
  %3470 = fmul fast float %3468, %85
  %3471 = fmul fast float %3468, %87
  %3472 = fmul fast float %3466, %55
  %3473 = fmul fast float %3466, %56
  %3474 = fmul fast float %3466, %57
  %3475 = fadd fast float %3469, %3472
  %3476 = fadd fast float %3470, %3473
  %3477 = fadd fast float %3471, %3474
  %3478 = fmul fast float %97, %3467
  %3479 = fmul fast float %98, %3467
  %3480 = fmul fast float %99, %3467
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %3481, float %3482, float %3483)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = call float @dx.op.unary.f32(i32 25, float %3484)  ; Rsqrt(value)
  %3486 = fmul fast float %3481, %3485
  %3487 = fmul fast float %3482, %3485
  %3488 = fmul fast float %3483, %3485
  %3489 = and i32 %36, 1
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3491, label %3999

; <label>:3491                                    ; preds = %3446
  %3492 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3493 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3494 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3495 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3496 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3497 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3498 = fadd fast float %3492, %133
  %3499 = fadd fast float %3493, %134
  %3500 = fadd fast float %3494, %135
  %3501 = fadd fast float %3495, %133
  %3502 = fadd fast float %3496, %134
  %3503 = fadd fast float %3497, %135
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3511 = fmul fast float %3505, %74
  %3512 = fmul fast float %3511, %3509
  %3513 = fmul fast float %3506, %75
  %3514 = fmul fast float %3513, %3510
  %3515 = fptoui float %3512 to i32
  %3516 = fptoui float %3514 to i32
  %3517 = fadd fast float %3505, -1.000000e+00
  %3518 = fadd fast float %3506, -1.000000e+00
  %3519 = fptoui float %3517 to i32
  %3520 = fptoui float %3518 to i32
  %3521 = call i32 @dx.op.binary.i32(i32 40, i32 %3515, i32 %3519)  ; UMin(a,b)
  %3522 = call i32 @dx.op.binary.i32(i32 40, i32 %3516, i32 %3520)  ; UMin(a,b)
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3526 = fmul fast float %3524, %69
  %3527 = fsub fast float %3526, %3525
  %3528 = fadd fast float %3507, -1.000000e+00
  %3529 = call float @dx.op.binary.f32(i32 36, float %3527, float %3528)  ; FMin(a,b)
  %3530 = fptoui float %3529 to i32
  %3531 = fptoui float %3505 to i32
  %3532 = fptoui float %3506 to i32
  %3533 = mul i32 %3530, %3532
  %3534 = add i32 %3533, %3522
  %3535 = mul i32 %3534, %3531
  %3536 = add i32 %3535, %3521
  %3537 = shl i32 %3536, 2
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 1023
  %3541 = lshr i32 %3539, 10
  %3542 = icmp eq i32 %3540, 0
  br i1 %3542, label %3968, label %3543

; <label>:3543                                    ; preds = %3491
  %3544 = and i32 %3539, 1023
  br label %3545

; <label>:3545                                    ; preds = %3671, %3543
  %3546 = phi i32 [ %3621, %3671 ], [ 0, %3543 ]
  %3547 = phi float [ %3672, %3671 ], [ 0.000000e+00, %3543 ]
  %3548 = phi float [ %3673, %3671 ], [ %3460, %3543 ]
  %3549 = phi float [ %3674, %3671 ], [ %3458, %3543 ]
  %3550 = phi float [ %3675, %3671 ], [ 0.000000e+00, %3543 ]
  %3551 = phi float [ %3676, %3671 ], [ 0.000000e+00, %3543 ]
  %3552 = phi float [ %3677, %3671 ], [ %3452, %3543 ]
  %3553 = phi float [ %3678, %3671 ], [ %3453, %3543 ]
  %3554 = phi float [ %3679, %3671 ], [ %3454, %3543 ]
  %3555 = phi float [ %3680, %3671 ], [ %3486, %3543 ]
  %3556 = phi float [ %3681, %3671 ], [ %3487, %3543 ]
  %3557 = phi float [ %3682, %3671 ], [ %3488, %3543 ]
  %3558 = phi float [ %3683, %3671 ], [ %3457, %3543 ]
  %3559 = phi float [ %3684, %3671 ], [ %3456, %3543 ]
  %3560 = phi float [ %3685, %3671 ], [ 0.000000e+00, %3543 ]
  %3561 = phi float [ %3686, %3671 ], [ %3455, %3543 ]
  %3562 = phi float [ %3687, %3671 ], [ %3449, %3543 ]
  %3563 = phi float [ %3688, %3671 ], [ %3450, %3543 ]
  %3564 = phi float [ %3689, %3671 ], [ %3451, %3543 ]
  %3565 = add nuw nsw i32 %3546, %3541
  %3566 = shl i32 %3565, 2
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = shl i32 %3568, 8
  %3570 = or i32 %3569, 48
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = extractvalue %dx.types.ResRet.f32 %3571, 3
  %3576 = or i32 %3569, 64
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.i32 %3577, 1
  %3580 = or i32 %3569, 80
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3584 = or i32 %3569, 96
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3569, 112
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3593 = or i32 %3569, 128
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3569, 144
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3569, 160
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3569, 192
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = or i32 %3569, 208
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = or i32 %3569, 248
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = add nuw nsw i32 %3546, 1
  %3622 = bitcast float %3575 to i32
  %3623 = and i32 %3622, 512
  %3624 = icmp eq i32 %3623, 0
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = or i32 %3569, 16
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = or i32 %3569, 32
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3646 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3647 = call float @dx.op.unary.f32(i32 27, float %3637)  ; Round_ni(value)
  %3648 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3649 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3650 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3651 = fadd fast float %3648, %3646
  %3652 = fadd fast float %3651, %3650
  %3653 = fcmp fast oeq float %3652, 0.000000e+00
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = fsub fast float %3654, %3630
  %3659 = fsub fast float %3656, %3630
  %3660 = fsub fast float %3655, %3637
  %3661 = fsub fast float %3657, %3637
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3572, float %3573, float %3574, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3665 = fadd fast float %3664, %3662
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3668 = fcmp fast ogt float %3666, %3667
  %3669 = and i1 %3653, %3668
  %3670 = and i1 %3624, %3669
  br i1 %3670, label %3691, label %3671

; <label>:3671                                    ; preds = %3954, %3772, %3691, %3545
  %3672 = phi float [ %3547, %3691 ], [ %3775, %3772 ], [ %3775, %3954 ], [ %3547, %3545 ]
  %3673 = phi float [ %3548, %3691 ], [ %3548, %3772 ], [ %3929, %3954 ], [ %3548, %3545 ]
  %3674 = phi float [ %3549, %3691 ], [ %3549, %3772 ], [ %3927, %3954 ], [ %3549, %3545 ]
  %3675 = phi float [ %3550, %3691 ], [ %3550, %3772 ], [ %3899, %3954 ], [ %3550, %3545 ]
  %3676 = phi float [ %3551, %3691 ], [ %3551, %3772 ], [ %3897, %3954 ], [ %3551, %3545 ]
  %3677 = phi float [ %3552, %3691 ], [ %3552, %3772 ], [ %3964, %3954 ], [ %3552, %3545 ]
  %3678 = phi float [ %3553, %3691 ], [ %3553, %3772 ], [ %3965, %3954 ], [ %3553, %3545 ]
  %3679 = phi float [ %3554, %3691 ], [ %3554, %3772 ], [ %3966, %3954 ], [ %3554, %3545 ]
  %3680 = phi float [ %3555, %3691 ], [ %3555, %3772 ], [ %3878, %3954 ], [ %3555, %3545 ]
  %3681 = phi float [ %3556, %3691 ], [ %3556, %3772 ], [ %3879, %3954 ], [ %3556, %3545 ]
  %3682 = phi float [ %3557, %3691 ], [ %3557, %3772 ], [ %3880, %3954 ], [ %3557, %3545 ]
  %3683 = phi float [ %3558, %3691 ], [ %3558, %3772 ], [ %3907, %3954 ], [ %3558, %3545 ]
  %3684 = phi float [ %3559, %3691 ], [ %3559, %3772 ], [ %3904, %3954 ], [ %3559, %3545 ]
  %3685 = phi float [ %3560, %3691 ], [ %3560, %3772 ], [ %3901, %3954 ], [ %3560, %3545 ]
  %3686 = phi float [ %3561, %3691 ], [ %3561, %3772 ], [ %3895, %3954 ], [ %3561, %3545 ]
  %3687 = phi float [ %3562, %3691 ], [ %3562, %3772 ], [ %3890, %3954 ], [ %3562, %3545 ]
  %3688 = phi float [ %3563, %3691 ], [ %3563, %3772 ], [ %3891, %3954 ], [ %3563, %3545 ]
  %3689 = phi float [ %3564, %3691 ], [ %3564, %3772 ], [ %3892, %3954 ], [ %3564, %3545 ]
  %3690 = icmp eq i32 %3621, %3544
  br i1 %3690, label %3967, label %3545

; <label>:3691                                    ; preds = %3545
  %3692 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3693 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3697 = extractvalue %dx.types.ResRet.i32 %3577, 3
  %3698 = extractvalue %dx.types.ResRet.i32 %3577, 2
  %3699 = add i32 %3697, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3700, %dx.types.Handle %3701, float %3630, float %3637, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3659, float %3661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = fmul fast float %3703, %3696
  %3705 = fadd fast float %3704, %3695
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fmul fast float %3630, %3586
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3637, float %3707)  ; FMad(a,b,c)
  %3709 = fadd fast float %3708, %3694
  %3710 = fmul fast float %3630, %3588
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3637, float %3710)  ; FMad(a,b,c)
  %3712 = fadd fast float %3711, %3693
  %3713 = fmul fast float %3658, %3586
  %3714 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3660, float %3713)  ; FMad(a,b,c)
  %3715 = fmul fast float %3658, %3588
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3660, float %3715)  ; FMad(a,b,c)
  %3717 = fmul fast float %3659, %3586
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3661, float %3717)  ; FMad(a,b,c)
  %3719 = fmul fast float %3659, %3588
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3661, float %3719)  ; FMad(a,b,c)
  %3721 = add i32 %3698, 0
  %3722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3722, %dx.types.Handle %3701, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = and i32 %3622, 1024
  %3726 = icmp ne i32 %3725, 0
  %3727 = fcmp fast ogt float %3724, 0x3FE0101020000000
  %3728 = uitofp i1 %3727 to float
  %3729 = select i1 %3726, float %3728, float %3724
  %3730 = and i32 %3622, 8192
  %3731 = icmp ne i32 %3730, 0
  %3732 = select i1 %3731, float %3692, float 1.000000e+00
  %3733 = fmul fast float %3630, 2.000000e+00
  %3734 = fadd fast float %3733, -1.000000e+00
  %3735 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3736 = fmul fast float %3735, %3619
  %3737 = fsub fast float %3736, %3619
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3637, 2.000000e+00
  %3740 = fadd fast float %3739, -1.000000e+00
  %3741 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3742 = fmul fast float %3741, %3620
  %3743 = fsub fast float %3742, %3620
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3649, %3582
  %3746 = fsub fast float %3745, %3582
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3706, %3732
  %3749 = fmul fast float %3748, %3703
  %3750 = fmul fast float %3749, %3738
  %3751 = fmul fast float %3750, %3729
  %3752 = fmul fast float %3751, %3744
  %3753 = fmul fast float %3752, %3747
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3757 = fsub fast float %3666, %3756
  %3758 = fmul fast float %3757, %3755
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3753, %3583
  %3761 = fadd fast float %3753, %3583
  %3762 = fmul fast float %3761, %3592
  %3763 = fsub fast float %3762, %3592
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = and i32 %3622, 128
  %3766 = icmp ne i32 %3765, 0
  %3767 = select i1 %3766, float %3764, float %3760
  %3768 = fmul fast float %3767, %3759
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = fcmp fast ugt float %3768, %3770
  br i1 %3771, label %3772, label %3671

; <label>:3772                                    ; preds = %3691
  %3773 = select i1 %3731, float %3768, float 0.000000e+00
  %3774 = fadd fast float %3773, %3547
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  br i1 %3731, label %3671, label %3776

; <label>:3776                                    ; preds = %3772
  %3777 = and i32 %3622, 4
  %3778 = and i32 %3622, 8
  %3779 = add i32 %3578, 0
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3780, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.ResRet.f32 %3782, 2
  %3786 = extractvalue %dx.types.ResRet.f32 %3782, 3
  %3787 = bitcast float %3604 to i32
  %3788 = and i32 %3787, 255
  %3789 = uitofp i32 %3788 to float
  %3790 = lshr i32 %3787, 8
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3786, %3789
  %3794 = fadd fast float %3793, %3792
  %3795 = fmul fast float %3794, 0x3F70101000000000
  %3796 = add i32 %3579, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = bitcast float %3598 to i32
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = lshr i32 %3803, 8
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = lshr i32 %3803, 16
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = fmul fast float %3799, %3805
  %3814 = fadd fast float %3813, %3808
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = fadd fast float %3800, -5.000000e-01
  %3817 = fadd fast float %3802, -5.000000e-01
  %3818 = fmul fast float %3816, %3812
  %3819 = fmul fast float %3817, %3812
  %3820 = fadd fast float %3818, 5.000000e-01
  %3821 = fadd fast float %3819, 5.000000e-01
  %3822 = fmul fast float %3783, %3607
  %3823 = fmul fast float %3784, %3608
  %3824 = fmul fast float %3785, %3609
  %3825 = fmul fast float %3820, 2.000000e+00
  %3826 = fadd fast float %3825, -1.000000e+00
  %3827 = fmul fast float %3821, 2.000000e+00
  %3828 = fadd fast float %3827, -1.000000e+00
  %3829 = fadd fast float %3826, %3828
  %3830 = fmul fast float %3829, 5.000000e-01
  %3831 = fsub fast float %3826, %3828
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3836 = fsub fast float %3834, %3835
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3832, float %3836, float %3830, float %3832, float %3836)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.unary.f32(i32 25, float %3837)  ; Rsqrt(value)
  %3839 = fmul fast float %3830, %3838
  %3840 = fmul fast float %3832, %3838
  %3841 = fmul fast float %3838, %3836
  %3842 = fmul fast float %3841, %3572
  %3843 = fmul fast float %3841, %3573
  %3844 = fmul fast float %3841, %3574
  %3845 = fmul fast float %3839, %3595
  %3846 = fmul fast float %3839, %3596
  %3847 = fmul fast float %3839, %3597
  %3848 = fadd fast float %3845, %3842
  %3849 = fadd fast float %3846, %3843
  %3850 = fadd fast float %3847, %3844
  %3851 = fmul fast float %3840, %3601
  %3852 = fmul fast float %3840, %3602
  %3853 = fmul fast float %3840, %3603
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = fadd fast float %3850, %3853
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float %3854, float %3855, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3854, %3858
  %3860 = fmul fast float %3855, %3858
  %3861 = fmul fast float %3856, %3858
  %3862 = icmp ne i32 %3778, 0
  %3863 = select i1 %3862, float 1.000000e+00, float 0.000000e+00
  %3864 = fmul fast float %3768, %3863
  %3865 = and i32 %3622, 1
  %3866 = icmp eq i32 %3865, 0
  br i1 %3866, label %3867, label %3871

; <label>:3867                                    ; preds = %3776
  %3868 = fsub fast float %3859, %3555
  %3869 = fsub fast float %3860, %3556
  %3870 = fsub fast float %3861, %3557
  br label %3871

; <label>:3871                                    ; preds = %3867, %3776
  %3872 = phi float [ %3868, %3867 ], [ %3859, %3776 ]
  %3873 = phi float [ %3869, %3867 ], [ %3860, %3776 ]
  %3874 = phi float [ %3870, %3867 ], [ %3861, %3776 ]
  %3875 = fmul float %3874, %3864
  %3876 = fmul float %3873, %3864
  %3877 = fmul float %3872, %3864
  %3878 = fadd fast float %3877, %3555
  %3879 = fadd fast float %3876, %3556
  %3880 = fadd fast float %3875, %3557
  %3881 = icmp ne i32 %3777, 0
  %3882 = select i1 %3881, float 1.000000e+00, float 0.000000e+00
  %3883 = fmul fast float %3768, %3882
  %3884 = fsub fast float %3822, %3562
  %3885 = fsub fast float %3823, %3563
  %3886 = fsub fast float %3824, %3564
  %3887 = fmul fast float %3884, %3883
  %3888 = fmul fast float %3885, %3883
  %3889 = fmul fast float %3886, %3883
  %3890 = fadd fast float %3887, %3562
  %3891 = fadd fast float %3888, %3563
  %3892 = fadd fast float %3889, %3564
  %3893 = fsub fast float %3795, %3561
  %3894 = fmul fast float %3893, %3883
  %3895 = fadd fast float %3894, %3561
  %3896 = fmul fast float %3883, %3551
  %3897 = fsub fast float %3551, %3896
  %3898 = fmul fast float %3883, %3550
  %3899 = fsub fast float %3550, %3898
  %3900 = fadd fast float %3768, %3560
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fsub fast float %3815, %3559
  %3903 = fmul fast float %3902, %3864
  %3904 = fadd fast float %3903, %3559
  %3905 = fsub fast float %3801, %3558
  %3906 = fmul fast float %3905, %3864
  %3907 = fadd fast float %3906, %3558
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = fmul fast float %3911, %3908
  %3913 = fadd fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = bitcast float %3610 to i32
  %3916 = and i32 %3915, 65535
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = lshr i32 %3915, 16
  %3919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3918)  ; LegacyF16ToF32(value)
  %3920 = fcmp fast oge float %3917, 0.000000e+00
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = select i1 %3920, float %3917, float %3922
  %3924 = fadd fast float %3923, %3919
  %3925 = fsub fast float %3914, %3549
  %3926 = fmul fast float %3925, %3768
  %3927 = fadd fast float %3926, %3549
  %3928 = fmul fast float %3924, %3768
  %3929 = call float @dx.op.binary.f32(i32 35, float %3548, float %3928)  ; FMax(a,b)
  %3930 = and i32 %3622, 16
  %3931 = icmp eq i32 %3930, 0
  br i1 %3931, label %3954, label %3932

; <label>:3932                                    ; preds = %3871
  %3933 = bitcast float %3616 to i32
  %3934 = add i32 %3613, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = and i32 %3933, 65535
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = fmul fast float %3937, %3607
  %3943 = fmul fast float %3938, %3608
  %3944 = fmul fast float %3939, %3609
  %3945 = and i32 %3622, 16384
  %3946 = icmp ne i32 %3945, 0
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = select i1 %3946, float %3948, float 1.000000e+00
  %3950 = fmul fast float %3949, %3941
  %3951 = fmul fast float %3942, %3950
  %3952 = fmul fast float %3943, %3950
  %3953 = fmul fast float %3944, %3950
  br label %3954

; <label>:3954                                    ; preds = %3932, %3871
  %3955 = phi float [ %3951, %3932 ], [ 0.000000e+00, %3871 ]
  %3956 = phi float [ %3952, %3932 ], [ 0.000000e+00, %3871 ]
  %3957 = phi float [ %3953, %3932 ], [ 0.000000e+00, %3871 ]
  %3958 = fsub fast float %3955, %3552
  %3959 = fsub fast float %3956, %3553
  %3960 = fsub fast float %3957, %3554
  %3961 = fmul fast float %3958, %3768
  %3962 = fmul fast float %3959, %3768
  %3963 = fmul fast float %3960, %3768
  %3964 = fadd fast float %3961, %3552
  %3965 = fadd fast float %3962, %3553
  %3966 = fadd fast float %3963, %3554
  br label %3671

; <label>:3967                                    ; preds = %3671
  br label %3968

; <label>:3968                                    ; preds = %3967, %3491
  %3969 = phi float [ 0.000000e+00, %3491 ], [ %3672, %3967 ]
  %3970 = phi float [ %3460, %3491 ], [ %3673, %3967 ]
  %3971 = phi float [ %3458, %3491 ], [ %3674, %3967 ]
  %3972 = phi float [ 0.000000e+00, %3491 ], [ %3675, %3967 ]
  %3973 = phi float [ 0.000000e+00, %3491 ], [ %3676, %3967 ]
  %3974 = phi float [ %3452, %3491 ], [ %3677, %3967 ]
  %3975 = phi float [ %3453, %3491 ], [ %3678, %3967 ]
  %3976 = phi float [ %3454, %3491 ], [ %3679, %3967 ]
  %3977 = phi float [ %3486, %3491 ], [ %3680, %3967 ]
  %3978 = phi float [ %3487, %3491 ], [ %3681, %3967 ]
  %3979 = phi float [ %3488, %3491 ], [ %3682, %3967 ]
  %3980 = phi float [ %3457, %3491 ], [ %3683, %3967 ]
  %3981 = phi float [ %3456, %3491 ], [ %3684, %3967 ]
  %3982 = phi float [ 0.000000e+00, %3491 ], [ %3685, %3967 ]
  %3983 = phi float [ %3455, %3491 ], [ %3686, %3967 ]
  %3984 = phi float [ %3449, %3491 ], [ %3687, %3967 ]
  %3985 = phi float [ %3450, %3491 ], [ %3688, %3967 ]
  %3986 = phi float [ %3451, %3491 ], [ %3689, %3967 ]
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %3977, float %3978, float %3979)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3988, %3978
  %3991 = fmul fast float %3988, %3979
  %3992 = fadd fast float %3982, %893
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call float @dx.op.unary.f32(i32 25, float %3994)  ; Rsqrt(value)
  %3996 = fmul fast float %3995, %3989
  %3997 = fmul fast float %3995, %3990
  %3998 = fmul fast float %3995, %3991
  br label %3999

; <label>:3999                                    ; preds = %3968, %3446
  %4000 = phi float [ %3996, %3968 ], [ %3486, %3446 ]
  %4001 = phi float [ %3997, %3968 ], [ %3487, %3446 ]
  %4002 = phi float [ %3998, %3968 ], [ %3488, %3446 ]
  %4003 = phi float [ %3984, %3968 ], [ %3449, %3446 ]
  %4004 = phi float [ %3985, %3968 ], [ %3450, %3446 ]
  %4005 = phi float [ %3986, %3968 ], [ %3451, %3446 ]
  %4006 = phi float [ %3974, %3968 ], [ %3452, %3446 ]
  %4007 = phi float [ %3975, %3968 ], [ %3453, %3446 ]
  %4008 = phi float [ %3976, %3968 ], [ %3454, %3446 ]
  %4009 = phi float [ %3983, %3968 ], [ %3455, %3446 ]
  %4010 = phi float [ %3993, %3968 ], [ %893, %3446 ]
  %4011 = phi float [ %3981, %3968 ], [ %3456, %3446 ]
  %4012 = phi float [ %3980, %3968 ], [ %3457, %3446 ]
  %4013 = phi float [ %3973, %3968 ], [ 0.000000e+00, %3446 ]
  %4014 = phi float [ %3972, %3968 ], [ 0.000000e+00, %3446 ]
  %4015 = phi float [ %3969, %3968 ], [ 0.000000e+00, %3446 ]
  %4016 = phi float [ %3970, %3968 ], [ %3460, %3446 ]
  %4017 = phi float [ %3971, %3968 ], [ %3458, %3446 ]
  %4018 = fadd fast float %4009, 0xBFB99999A0000000
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4020 = fmul fast float %4019, 0x3FF1C71C80000000
  %4021 = call float @dx.op.binary.f32(i32 36, float %4009, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4022 = fsub fast float 1.000000e+00, %4020
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, %4003
  %4025 = fmul fast float %4023, %4004
  %4026 = fmul fast float %4023, %4005
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = fmul fast float %4020, %4003
  %4031 = fmul fast float %4020, %4004
  %4032 = fmul fast float %4020, %4005
  %4033 = fadd fast float %4030, %4021
  %4034 = fadd fast float %4031, %4021
  %4035 = fadd fast float %4032, %4021
  %4036 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4037 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.i32 %4040, 3
  %4042 = and i32 %4041, 8
  %4043 = icmp ne i32 %4042, 0
  %4044 = call float @dx.op.binary.f32(i32 35, float %4027, float %4003)  ; FMax(a,b)
  %4045 = call float @dx.op.binary.f32(i32 35, float %4028, float %4003)  ; FMax(a,b)
  %4046 = call float @dx.op.binary.f32(i32 35, float %4029, float %4003)  ; FMax(a,b)
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4028, float %4029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = select i1 %174, float %4003, float %4027
  %4049 = select i1 %174, float %4047, float %4028
  %4050 = select i1 %174, float 1.000000e+00, float %4029
  %4051 = select i1 %4043, float %4044, float %4048
  %4052 = select i1 %4043, float %4045, float %4049
  %4053 = select i1 %4043, float %4046, float %4050
  %4054 = and i32 %150, 3
  %4055 = select i1 %144, i32 %4054, i32 0
  %4056 = icmp eq i32 %4055, 1
  br i1 %4056, label %4057, label %4133

; <label>:4057                                    ; preds = %3999
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4061 = fadd fast float %4059, %133
  %4062 = fadd fast float %4060, %134
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = fsub fast float %4061, %4064
  %4067 = fsub fast float %4062, %4065
  %4068 = fmul fast float %4066, %4066
  %4069 = fmul fast float %4067, %4067
  %4070 = fadd fast float %4068, %4069
  %4071 = call float @dx.op.unary.f32(i32 24, float %4070)  ; Sqrt(value)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4073 = fcmp fast olt float %4071, %4072
  br i1 %4073, label %4074, label %4127

; <label>:4074                                    ; preds = %4057
  %4075 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4076 = fadd fast float %4075, %135
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4087 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4088 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4089 = fadd fast float %4086, %4061
  %4090 = fadd fast float %4087, %4062
  %4091 = fadd fast float %4076, %4088
  %4092 = fmul fast float %4089, %4078
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4080, float %4092)  ; FMad(a,b,c)
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4082, float %4093)  ; FMad(a,b,c)
  %4095 = fmul fast float %4089, %4083
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4084, float %4095)  ; FMad(a,b,c)
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4085, float %4096)  ; FMad(a,b,c)
  %4098 = fsub fast float %4094, %4086
  %4099 = fsub fast float %4097, %4087
  %4100 = fsub fast float %4098, %4064
  %4101 = fadd fast float %4100, %4072
  %4102 = fsub fast float %4099, %4065
  %4103 = fadd fast float %4102, %4072
  %4104 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4105 = fmul fast float %4101, %4104
  %4106 = fmul fast float %4103, %4104
  %4107 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4109 = fsub fast float 1.000000e+00, %4107
  %4110 = fsub fast float 1.000000e+00, %4108
  %4111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %28, float %4109, float %4110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = fcmp fast ugt float %4112, 0.000000e+00
  br i1 %4113, label %4114, label %4127

; <label>:4114                                    ; preds = %4074
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4117 = fmul fast float %4116, %4112
  %4118 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4119 = fadd fast float %4118, %4117
  %4120 = extractvalue %dx.types.CBufRet.f32 %4081, 2
  %4121 = fadd fast float %4119, %4088
  %4122 = fmul fast float %4094, %4082
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4085, float %4122)  ; FMad(a,b,c)
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4120, float %4123)  ; FMad(a,b,c)
  %4125 = fsub fast float %4124, %4088
  %4126 = fsub fast float %4125, %4075
  br label %4127

; <label>:4127                                    ; preds = %4114, %4074, %4057
  %4128 = phi i1 [ true, %4114 ], [ false, %4074 ], [ false, %4057 ]
  %4129 = phi float [ %4126, %4114 ], [ -1.310720e+05, %4074 ], [ -1.310720e+05, %4057 ]
  %4130 = fsub fast float %4129, %135
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4132 = select i1 %4128, float %4131, float 1.000000e+00
  br label %4133

; <label>:4133                                    ; preds = %4127, %3999
  %4134 = phi float [ %4132, %4127 ], [ 0.000000e+00, %3999 ]
  %4135 = icmp eq i32 %4055, 3
  %4136 = select i1 %4135, float 1.000000e+00, float %4134
  %4137 = call float @dx.op.binary.f32(i32 35, float %4015, float %4136)  ; FMax(a,b)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fcmp fast une float %4138, 0.000000e+00
  %4140 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call float @dx.op.unary.f32(i32 25, float %4140)  ; Rsqrt(value)
  br i1 %4139, label %4149, label %4142

; <label>:4142                                    ; preds = %4133
  %4143 = fmul fast float %4141, %133
  %4144 = fmul fast float %4141, %134
  %4145 = fmul fast float %4141, %135
  %4146 = fsub fast float -0.000000e+00, %4143
  %4147 = fsub fast float -0.000000e+00, %4144
  %4148 = fsub fast float -0.000000e+00, %4145
  br label %4317

; <label>:4149                                    ; preds = %4133
  %4150 = fmul fast float %133, %4141
  %4151 = fsub fast float -0.000000e+00, %4150
  %4152 = fmul fast float %134, %4141
  %4153 = fsub fast float -0.000000e+00, %4152
  %4154 = fmul fast float %135, %4141
  %4155 = fsub fast float -0.000000e+00, %4154
  %4156 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4153, float %4155, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = fmul fast float %4138, 2.500000e+00
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4138, 0x4013FFFFE0000000
  %4160 = fadd fast float %4159, 0xBFFFFFFFE0000000
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4138, 0x4004000020000000
  %4163 = fadd fast float %4162, 0xBFF8000040000000
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4166 = fmul fast float %4018, 1.000000e+01
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4167, 2.000000e+00
  %4169 = fsub fast float 3.000000e+00, %4168
  %4170 = fmul fast float %4167, %4167
  %4171 = fmul fast float %4170, %4169
  %4172 = fsub fast float 1.000000e+00, %4171
  %4173 = fsub fast float 0x3FE3333340000000, %4039
  %4174 = fmul fast float %4173, 0x400AAAAAA0000000
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = fmul fast float %4172, %4175
  %4177 = fmul fast float %4051, 0x3FEA2B8620000000
  %4178 = fmul fast float %4052, 0x3FEA2B8620000000
  %4179 = fmul fast float %4053, 0x3FEA2B8620000000
  %4180 = fadd fast float %4177, 0x3FC81DFBA0000000
  %4181 = fmul fast float %4180, %4051
  %4182 = fadd fast float %4181, 0x3F910E6020000000
  %4183 = fadd fast float %4178, 0x3FC81DFBA0000000
  %4184 = fmul fast float %4183, %4052
  %4185 = fadd fast float %4184, 0x3F910E6020000000
  %4186 = fadd fast float %4179, 0x3FC81DFBA0000000
  %4187 = fmul fast float %4186, %4053
  %4188 = fadd fast float %4187, 0x3F910E6020000000
  %4189 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4190 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = fsub fast float %4189, %4051
  %4193 = fsub fast float %4190, %4052
  %4194 = fsub fast float %4191, %4053
  %4195 = fmul fast float %4192, %4165
  %4196 = fmul fast float %4195, %4176
  %4197 = fmul fast float %4193, %4165
  %4198 = fmul fast float %4197, %4176
  %4199 = fmul fast float %4194, %4165
  %4200 = fmul fast float %4199, %4176
  %4201 = fadd fast float %4196, %4051
  %4202 = fadd fast float %4198, %4052
  %4203 = fadd fast float %4200, %4053
  %4204 = fmul fast float %4012, %4012
  %4205 = fmul fast float %4204, %4204
  %4206 = fadd fast float %4161, 1.000000e+00
  %4207 = fsub fast float %4206, %4176
  %4208 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4209 = call float @dx.op.dot3.f32(i32 55, float %83, float %85, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4211 = fsub fast float 1.000000e+00, %4205
  %4212 = call float @dx.op.binary.f32(i32 36, float %4208, float %4211)  ; FMin(a,b)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4214 = call float @dx.op.binary.f32(i32 35, float %4212, float %4213)  ; FMax(a,b)
  %4215 = fadd fast float %4210, 0xBFE4CCCCC0000000
  %4216 = fmul fast float %4215, 0x4006DB6DA0000000
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4218 = fmul fast float %4217, 2.000000e+00
  %4219 = fsub fast float 3.000000e+00, %4218
  %4220 = bitcast float %4036 to i32
  %4221 = ashr i32 %4220, 1
  %4222 = add nsw i32 %4221, 532487669
  %4223 = bitcast i32 %4222 to float
  %4224 = fsub fast float 1.000000e+00, %4223
  %4225 = bitcast float %4224 to i32
  %4226 = sub nsw i32 2129859010, %4225
  %4227 = bitcast i32 %4226 to float
  %4228 = fmul fast float %4227, 2.000000e+00
  %4229 = bitcast float %4037 to i32
  %4230 = ashr i32 %4229, 1
  %4231 = add nsw i32 %4230, 532487669
  %4232 = bitcast i32 %4231 to float
  %4233 = fsub fast float 1.000000e+00, %4232
  %4234 = bitcast float %4233 to i32
  %4235 = sub nsw i32 2129859010, %4234
  %4236 = bitcast i32 %4235 to float
  %4237 = fmul fast float %4236, 2.000000e+00
  %4238 = bitcast float %4038 to i32
  %4239 = ashr i32 %4238, 1
  %4240 = add nsw i32 %4239, 532487669
  %4241 = bitcast i32 %4240 to float
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = bitcast float %4242 to i32
  %4244 = sub nsw i32 2129859010, %4243
  %4245 = bitcast i32 %4244 to float
  %4246 = fmul fast float %4245, 2.000000e+00
  %4247 = fsub fast float 0x4002A9FBE0000000, %4228
  %4248 = fadd fast float %4228, 0x3FD54FDF00000000
  %4249 = bitcast float %4248 to i32
  %4250 = sub nsw i32 2129859010, %4249
  %4251 = bitcast i32 %4250 to float
  %4252 = fmul fast float %4251, %4247
  %4253 = fmul fast float %4252, %4252
  %4254 = fsub fast float 0x4002A9FBE0000000, %4237
  %4255 = fadd fast float %4237, 0x3FD54FDF00000000
  %4256 = bitcast float %4255 to i32
  %4257 = sub nsw i32 2129859010, %4256
  %4258 = bitcast i32 %4257 to float
  %4259 = fmul fast float %4258, %4254
  %4260 = fmul fast float %4259, %4259
  %4261 = fsub fast float 0x4002A9FBE0000000, %4246
  %4262 = fadd fast float %4246, 0x3FD54FDF00000000
  %4263 = bitcast float %4262 to i32
  %4264 = sub nsw i32 2129859010, %4263
  %4265 = bitcast i32 %4264 to float
  %4266 = fmul fast float %4265, %4261
  %4267 = fmul fast float %4266, %4266
  %4268 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4253)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4260)  ; FMax(a,b)
  %4270 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4267)  ; FMax(a,b)
  %4271 = fsub fast float 1.000000e+00, %4156
  %4272 = fadd fast float %4271, %4172
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fsub fast float 1.000000e+00, %4136
  %4275 = fmul fast float %4214, %4274
  %4276 = fmul fast float %4217, %4217
  %4277 = fmul fast float %4276, %4275
  %4278 = fmul fast float %4277, %4219
  %4279 = fmul fast float %4274, 0xBFE99999A0000000
  %4280 = fmul fast float %4279, %4165
  %4281 = fmul fast float %4280, %4176
  %4282 = fadd fast float %4281, 1.000000e+00
  %4283 = fadd fast float %4039, -1.000000e+00
  %4284 = fmul fast float %4282, %4283
  %4285 = fadd fast float %4284, 1.000000e+00
  %4286 = fsub fast float %4268, %4036
  %4287 = fsub fast float %4269, %4037
  %4288 = fsub fast float %4270, %4038
  %4289 = fmul fast float %4278, %4286
  %4290 = fmul fast float %4278, %4287
  %4291 = fmul fast float %4278, %4288
  %4292 = fadd fast float %4289, %4036
  %4293 = fadd fast float %4290, %4037
  %4294 = fadd fast float %4291, %4038
  %4295 = fsub fast float %83, %4000
  %4296 = fsub fast float %85, %4001
  %4297 = fsub fast float %87, %4002
  %4298 = fmul fast float %4278, %4295
  %4299 = fmul fast float %4278, %4296
  %4300 = fmul fast float %4278, %4297
  %4301 = fadd fast float %4298, %4000
  %4302 = fadd fast float %4299, %4001
  %4303 = fadd fast float %4300, %4002
  %4304 = fmul fast float %4278, %4273
  %4305 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4306 = fsub fast float 1.000000e+00, %4305
  %4307 = fmul fast float %4304, %4306
  %4308 = fadd fast float %4307, %4305
  %4309 = fsub fast float 1.000000e+00, %4012
  %4310 = fmul fast float %4278, %4309
  %4311 = fadd fast float %4310, %4012
  %4312 = call float @dx.op.dot3.f32(i32 55, float %4301, float %4302, float %4303, float %4301, float %4302, float %4303)  ; Dot3(ax,ay,az,bx,by,bz)
  %4313 = call float @dx.op.unary.f32(i32 25, float %4312)  ; Rsqrt(value)
  %4314 = fmul fast float %4301, %4313
  %4315 = fmul fast float %4302, %4313
  %4316 = fmul fast float %4303, %4313
  br label %4317

; <label>:4317                                    ; preds = %4149, %4142
  %4318 = phi float [ %4148, %4142 ], [ %4155, %4149 ]
  %4319 = phi float [ %4147, %4142 ], [ %4153, %4149 ]
  %4320 = phi float [ %4146, %4142 ], [ %4151, %4149 ]
  %4321 = phi float [ %4145, %4142 ], [ %4154, %4149 ]
  %4322 = phi float [ %4144, %4142 ], [ %4152, %4149 ]
  %4323 = phi float [ %4143, %4142 ], [ %4150, %4149 ]
  %4324 = phi float [ %4051, %4142 ], [ %4201, %4149 ]
  %4325 = phi float [ %4052, %4142 ], [ %4202, %4149 ]
  %4326 = phi float [ %4053, %4142 ], [ %4203, %4149 ]
  %4327 = phi float [ %4036, %4142 ], [ %4292, %4149 ]
  %4328 = phi float [ %4037, %4142 ], [ %4293, %4149 ]
  %4329 = phi float [ %4038, %4142 ], [ %4294, %4149 ]
  %4330 = phi float [ %4000, %4142 ], [ %4314, %4149 ]
  %4331 = phi float [ %4001, %4142 ], [ %4315, %4149 ]
  %4332 = phi float [ %4002, %4142 ], [ %4316, %4149 ]
  %4333 = phi float [ %4039, %4142 ], [ %4308, %4149 ]
  %4334 = phi float [ %4012, %4142 ], [ %4311, %4149 ]
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4338 = fmul fast float %4336, %74
  %4339 = fmul fast float %4337, %75
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %28, float %4338, float %4339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = fmul fast float %4344, %4342
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = fmul fast float %4347, %4341
  %4349 = fadd fast float %4348, 1.000000e+00
  %4350 = select i1 %174, float 0.000000e+00, float %4329
  %4351 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float %4320, float %4319, float %4318)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4353 = call float @dx.op.dot3.f32(i32 55, float %4323, float %4322, float %4321, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = fmul fast float %4353, 2.000000e+00
  %4355 = fmul fast float %4354, %4330
  %4356 = fmul fast float %4354, %4331
  %4357 = fmul fast float %4354, %4332
  %4358 = fsub fast float %4323, %4355
  %4359 = fsub fast float %4322, %4356
  %4360 = fsub fast float %4321, %4357
  %4361 = call float @dx.op.binary.f32(i32 36, float %4334, float %4349)  ; FMin(a,b)
  %4362 = fsub fast float 1.000000e+00, %4361
  %4363 = bitcast float %4362 to i32
  %4364 = ashr i32 %4363, 1
  %4365 = add nsw i32 %4364, 532487669
  %4366 = bitcast i32 %4365 to float
  %4367 = fsub fast float 1.000000e+00, %4333
  %4368 = call float @dx.op.binary.f32(i32 35, float %4367, float 0x3F847AE140000000)  ; FMax(a,b)
  %4369 = fmul fast float %4368, %4368
  %4370 = fmul fast float %4369, %4369
  %4371 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4366, float %4370, float %4371, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = fsub fast float 1.000000e+00, %4334
  %4375 = bitcast float %4374 to i32
  %4376 = sub nsw i32 2129859010, %4375
  %4377 = bitcast i32 %4376 to float
  %4378 = call float @dx.op.dot3.f32(i32 55, float %51, float %47, float %43, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = fmul fast float %4378, 0x3FD20DD760000000
  %4380 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %51)  ; FMax(a,b)
  %4381 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = fcmp fast oeq float %4381, 0.000000e+00
  %4383 = fcmp fast oeq float %4380, 0.000000e+00
  %4384 = or i1 %4383, %4382
  br i1 %4384, label %4414, label %4385

; <label>:4385                                    ; preds = %4317
  %4386 = fsub fast float -0.000000e+00, %54
  %4387 = fsub fast float -0.000000e+00, %52
  %4388 = call float @dx.op.unary.f32(i32 24, float %4381)  ; Sqrt(value)
  %4389 = fdiv fast float %4388, %4380
  %4390 = fcmp fast ogt float %4389, 0x3FFB6F8900000000
  %4391 = select i1 %4390, float 0x3FFB6F8900000000, float %4389
  %4392 = fmul fast float %4391, 0x3FE8A23460000000
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4391, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4395 = fmul fast float %4393, %4380
  %4396 = fmul fast float %4394, 0x3FF279A740000000
  %4397 = fadd fast float %4396, -1.000000e+00
  %4398 = call float @dx.op.dot3.f32(i32 55, float %4386, float %4387, float %53, float %4386, float %4387, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %4399 = call float @dx.op.unary.f32(i32 25, float %4398)  ; Rsqrt(value)
  %4400 = fmul fast float %4399, %4386
  %4401 = fmul fast float %4399, %4387
  %4402 = fmul fast float %4399, %53
  %4403 = fmul fast float %4397, %4397
  %4404 = fsub fast float 1.000000e+00, %4403
  %4405 = fmul fast float %4394, 0x40005F8BE0000000
  %4406 = fsub fast float 0x400C5BF8A0000000, %4405
  %4407 = fdiv fast float %4395, %4406
  %4408 = fmul fast float %4407, 0x3FEE31C3C0000000
  %4409 = fmul fast float %4408, %4404
  %4410 = fmul fast float %4394, 0x3FDACB7480000000
  %4411 = fadd fast float %4410, 0xBFD7347680000000
  %4412 = fmul fast float %4411, %4407
  %4413 = fmul fast float %4412, %4404
  br label %4414

; <label>:4414                                    ; preds = %4385, %4317
  %4415 = phi float [ %4400, %4385 ], [ 0.000000e+00, %4317 ]
  %4416 = phi float [ %4401, %4385 ], [ 0.000000e+00, %4317 ]
  %4417 = phi float [ %4402, %4385 ], [ 0.000000e+00, %4317 ]
  %4418 = phi float [ %4409, %4385 ], [ 0.000000e+00, %4317 ]
  %4419 = phi float [ %4413, %4385 ], [ 0.000000e+00, %4317 ]
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = fmul fast float %4420, %4420
  %4422 = fmul fast float %4421, 0x3FEE471020000000
  %4423 = fadd fast float %4422, 0xBFD42F6020000000
  %4424 = fmul fast float %4380, 0x3FD20DD760000000
  %4425 = fmul fast float %4423, %4419
  %4426 = fmul fast float %4418, 0x3FDF454380000000
  %4427 = fmul fast float %4426, %4420
  %4428 = fadd fast float %4427, %4424
  %4429 = fadd fast float %4428, %4425
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = fmul fast float %4430, 0x3FDF454380000000
  %4432 = fmul fast float %4430, %4430
  %4433 = fmul fast float %4432, 0x3FEE471020000000
  %4434 = fadd fast float %4433, 0xBFD42F6020000000
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4380, float %4418, float %4419, float 0x3FD20DD760000000, float %4431, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %4437 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = fcmp fast oeq float %4437, 0.000000e+00
  %4439 = fcmp fast oeq float %4436, 0.000000e+00
  %4440 = or i1 %4439, %4438
  br i1 %4440, label %4470, label %4441

; <label>:4441                                    ; preds = %4414
  %4442 = fsub fast float -0.000000e+00, %50
  %4443 = fsub fast float -0.000000e+00, %48
  %4444 = call float @dx.op.unary.f32(i32 24, float %4437)  ; Sqrt(value)
  %4445 = fdiv fast float %4444, %4436
  %4446 = fcmp fast ogt float %4445, 0x3FFB6F8900000000
  %4447 = select i1 %4446, float 0x3FFB6F8900000000, float %4445
  %4448 = fmul fast float %4447, 0x3FE8A23460000000
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4447, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4451 = fmul fast float %4449, %4436
  %4452 = fmul fast float %4450, 0x3FF279A740000000
  %4453 = fadd fast float %4452, -1.000000e+00
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %49, float %4442, float %4443, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  %4456 = fmul fast float %4455, %4442
  %4457 = fmul fast float %4455, %4443
  %4458 = fmul fast float %4455, %49
  %4459 = fmul fast float %4453, %4453
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = fmul fast float %4450, 0x40005F8BE0000000
  %4462 = fsub fast float 0x400C5BF8A0000000, %4461
  %4463 = fdiv fast float %4451, %4462
  %4464 = fmul fast float %4463, 0x3FEE31C3C0000000
  %4465 = fmul fast float %4464, %4460
  %4466 = fmul fast float %4450, 0x3FDACB7480000000
  %4467 = fadd fast float %4466, 0xBFD7347680000000
  %4468 = fmul fast float %4467, %4463
  %4469 = fmul fast float %4468, %4460
  br label %4470

; <label>:4470                                    ; preds = %4441, %4414
  %4471 = phi float [ %4456, %4441 ], [ 0.000000e+00, %4414 ]
  %4472 = phi float [ %4457, %4441 ], [ 0.000000e+00, %4414 ]
  %4473 = phi float [ %4458, %4441 ], [ 0.000000e+00, %4414 ]
  %4474 = phi float [ %4465, %4441 ], [ 0.000000e+00, %4414 ]
  %4475 = phi float [ %4469, %4441 ], [ 0.000000e+00, %4414 ]
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4472, float %4473, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = fmul fast float %4476, %4476
  %4478 = fmul fast float %4477, 0x3FEE471020000000
  %4479 = fadd fast float %4478, 0xBFD42F6020000000
  %4480 = fmul fast float %4436, 0x3FD20DD760000000
  %4481 = fmul fast float %4479, %4475
  %4482 = fmul fast float %4474, 0x3FDF454380000000
  %4483 = fmul fast float %4482, %4476
  %4484 = fadd fast float %4483, %4480
  %4485 = fadd fast float %4484, %4481
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4472, float %4473, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = fmul fast float %4486, 0x3FDF454380000000
  %4488 = fmul fast float %4486, %4486
  %4489 = fmul fast float %4488, 0x3FEE471020000000
  %4490 = fadd fast float %4489, 0xBFD42F6020000000
  %4491 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4474, float %4475, float 0x3FD20DD760000000, float %4487, float %4490)  ; Dot3(ax,ay,az,bx,by,bz)
  %4492 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %4493 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = fcmp fast oeq float %4493, 0.000000e+00
  %4495 = fcmp fast oeq float %4492, 0.000000e+00
  %4496 = or i1 %4495, %4494
  br i1 %4496, label %4526, label %4497

; <label>:4497                                    ; preds = %4470
  %4498 = fsub fast float -0.000000e+00, %46
  %4499 = fsub fast float -0.000000e+00, %44
  %4500 = call float @dx.op.unary.f32(i32 24, float %4493)  ; Sqrt(value)
  %4501 = fdiv fast float %4500, %4492
  %4502 = fcmp fast ogt float %4501, 0x3FFB6F8900000000
  %4503 = select i1 %4502, float 0x3FFB6F8900000000, float %4501
  %4504 = fmul fast float %4503, 0x3FE8A23460000000
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = call float @dx.op.binary.f32(i32 35, float %4503, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4507 = fmul fast float %4505, %4492
  %4508 = fmul fast float %4506, 0x3FF279A740000000
  %4509 = fadd fast float %4508, -1.000000e+00
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4498, float %4499, float %45, float %4498, float %4499, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.unary.f32(i32 25, float %4510)  ; Rsqrt(value)
  %4512 = fmul fast float %4511, %4498
  %4513 = fmul fast float %4511, %4499
  %4514 = fmul fast float %4511, %45
  %4515 = fmul fast float %4509, %4509
  %4516 = fsub fast float 1.000000e+00, %4515
  %4517 = fmul fast float %4506, 0x40005F8BE0000000
  %4518 = fsub fast float 0x400C5BF8A0000000, %4517
  %4519 = fdiv fast float %4507, %4518
  %4520 = fmul fast float %4519, 0x3FEE31C3C0000000
  %4521 = fmul fast float %4520, %4516
  %4522 = fmul fast float %4506, 0x3FDACB7480000000
  %4523 = fadd fast float %4522, 0xBFD7347680000000
  %4524 = fmul fast float %4523, %4519
  %4525 = fmul fast float %4524, %4516
  br label %4526

; <label>:4526                                    ; preds = %4497, %4470
  %4527 = phi float [ %4512, %4497 ], [ 0.000000e+00, %4470 ]
  %4528 = phi float [ %4513, %4497 ], [ 0.000000e+00, %4470 ]
  %4529 = phi float [ %4514, %4497 ], [ 0.000000e+00, %4470 ]
  %4530 = phi float [ %4521, %4497 ], [ 0.000000e+00, %4470 ]
  %4531 = phi float [ %4525, %4497 ], [ 0.000000e+00, %4470 ]
  %4532 = call float @dx.op.dot3.f32(i32 55, float %4527, float %4528, float %4529, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = fmul fast float %4532, %4532
  %4534 = fmul fast float %4533, 0x3FEE471020000000
  %4535 = fadd fast float %4534, 0xBFD42F6020000000
  %4536 = fmul fast float %4492, 0x3FD20DD760000000
  %4537 = fmul fast float %4535, %4531
  %4538 = fmul fast float %4530, 0x3FDF454380000000
  %4539 = fmul fast float %4538, %4532
  %4540 = fadd fast float %4539, %4536
  %4541 = fadd fast float %4540, %4537
  %4542 = call float @dx.op.dot3.f32(i32 55, float %4527, float %4528, float %4529, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = fmul fast float %4542, 0x3FDF454380000000
  %4544 = fmul fast float %4542, %4542
  %4545 = fmul fast float %4544, 0x3FEE471020000000
  %4546 = fadd fast float %4545, 0xBFD42F6020000000
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4530, float %4531, float 0x3FD20DD760000000, float %4543, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.binary.f32(i32 35, float %4429, float 0.000000e+00)  ; FMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float %4485, float 0.000000e+00)  ; FMax(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4541, float 0.000000e+00)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 35, float %4435, float 0.000000e+00)  ; FMax(a,b)
  %4552 = call float @dx.op.binary.f32(i32 35, float %4491, float 0.000000e+00)  ; FMax(a,b)
  %4553 = call float @dx.op.binary.f32(i32 35, float %4547, float 0.000000e+00)  ; FMax(a,b)
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = call float @dx.op.binary.f32(i32 36, float %4324, float %4555)  ; FMin(a,b)
  %4557 = fmul fast float %4556, %4362
  %4558 = fsub fast float 1.000000e+00, %4557
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = bitcast i32 %4560 to float
  %4562 = call float @dx.op.binary.f32(i32 36, float %4325, float %4555)  ; FMin(a,b)
  %4563 = fmul fast float %4562, %4362
  %4564 = fsub fast float 1.000000e+00, %4563
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = call float @dx.op.binary.f32(i32 36, float %4326, float %4555)  ; FMin(a,b)
  %4569 = fmul fast float %4568, %4362
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4548, %4361
  %4575 = fmul fast float %4574, %4561
  %4576 = fmul fast float %4549, %4361
  %4577 = fmul fast float %4576, %4567
  %4578 = fmul fast float %4550, %4361
  %4579 = fmul fast float %4578, %4573
  %4580 = call float @dx.op.binary.f32(i32 36, float %4327, float %4555)  ; FMin(a,b)
  %4581 = fmul fast float %4580, %4362
  %4582 = fsub fast float 1.000000e+00, %4581
  %4583 = bitcast float %4582 to i32
  %4584 = sub nsw i32 2129859010, %4583
  %4585 = bitcast i32 %4584 to float
  %4586 = call float @dx.op.binary.f32(i32 36, float %4328, float %4555)  ; FMin(a,b)
  %4587 = fmul fast float %4586, %4362
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = bitcast float %4588 to i32
  %4590 = sub nsw i32 2129859010, %4589
  %4591 = bitcast i32 %4590 to float
  %4592 = call float @dx.op.binary.f32(i32 36, float %4350, float %4555)  ; FMin(a,b)
  %4593 = fmul fast float %4592, %4362
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = bitcast float %4594 to i32
  %4596 = sub nsw i32 2129859010, %4595
  %4597 = bitcast i32 %4596 to float
  %4598 = fmul fast float %4551, %4361
  %4599 = fmul fast float %4598, %4585
  %4600 = fmul fast float %4552, %4361
  %4601 = fmul fast float %4600, %4591
  %4602 = fmul fast float %4553, %4361
  %4603 = fmul fast float %4602, %4597
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4577, float %4579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = select i1 %174, float 0.000000e+00, float %4575
  %4606 = select i1 %174, float %4604, float %4577
  %4607 = select i1 %174, float 0.000000e+00, float %4579
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4601, float %4603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = select i1 %174, float 0.000000e+00, float %4599
  %4610 = select i1 %174, float %4608, float %4601
  %4611 = select i1 %174, float 0.000000e+00, float %4603
  %4612 = fmul fast float %4352, 9.843750e-01
  %4613 = fmul fast float %4333, 9.843750e-01
  %4614 = fadd fast float %4612, 7.812500e-03
  %4615 = fadd fast float %4613, 7.812500e-03
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4614, float %4615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4619 = fmul fast float %4617, %4327
  %4620 = fmul fast float %4617, %4328
  %4621 = fmul fast float %4617, %4350
  %4622 = fadd fast float %4619, %4618
  %4623 = fadd fast float %4620, %4618
  %4624 = fadd fast float %4621, %4618
  %4625 = fcmp fast ogt float %4013, 0.000000e+00
  br i1 %4625, label %4626, label %4652

; <label>:4626                                    ; preds = %4526
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4013, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = fadd fast float %4628, -5.000000e-01
  %4632 = fadd fast float %4629, -5.000000e-01
  %4633 = fadd fast float %4630, -5.000000e-01
  %4634 = fsub fast float 1.000000e+00, %4327
  %4635 = fsub fast float 1.000000e+00, %4328
  %4636 = fsub fast float 1.000000e+00, %4350
  %4637 = fmul fast float %4327, 4.000000e+00
  %4638 = fmul fast float %4637, %4634
  %4639 = fmul fast float %4638, %4631
  %4640 = fmul fast float %4328, 4.000000e+00
  %4641 = fmul fast float %4640, %4635
  %4642 = fmul fast float %4641, %4632
  %4643 = fmul fast float %4350, 4.000000e+00
  %4644 = fmul fast float %4643, %4636
  %4645 = fmul fast float %4644, %4633
  %4646 = fadd fast float %4639, %4622
  %4647 = fadd fast float %4642, %4623
  %4648 = fadd fast float %4645, %4624
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  br label %4652

; <label>:4652                                    ; preds = %4626, %4526
  %4653 = phi float [ %4649, %4626 ], [ %4622, %4526 ]
  %4654 = phi float [ %4650, %4626 ], [ %4623, %4526 ]
  %4655 = phi float [ %4651, %4626 ], [ %4624, %4526 ]
  %4656 = call float @dx.op.binary.f32(i32 35, float %4654, float %4655)  ; FMax(a,b)
  %4657 = call float @dx.op.binary.f32(i32 35, float %4653, float %4656)  ; FMax(a,b)
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = fmul fast float %4657, %4333
  %4660 = fadd fast float %4659, %4333
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4663 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4665 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4666 = fmul fast float %4660, %4662
  %4667 = fadd fast float %4666, %4663
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fmul fast float %4664, %4660
  %4670 = fadd fast float %4669, %4665
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fsub fast float 1.000000e+00, %4373
  %4673 = fadd fast float %4672, %4671
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = fcmp fast olt float %4674, 1.000000e+00
  br i1 %4675, label %4676, label %5494

; <label>:4676                                    ; preds = %4652
  %4677 = fcmp fast olt float %4668, 1.000000e+00
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = fcmp fast ogt float %4679, 0.000000e+00
  %4681 = or i1 %4677, %4680
  %4682 = or i1 %4677, %4680
  %4683 = xor i1 %4682, true
  %4684 = zext i1 %4683 to i32
  br i1 %4681, label %4685, label %4928

; <label>:4685                                    ; preds = %4676
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4690 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.CBufRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4695 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.CBufRet.f32 %4706, 2
  %4710 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4715 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4713, float %4714, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = call float @dx.op.unary.f32(i32 6, float %4717)  ; FAbs(value)
  %4719 = fmul fast float %4718, 8.000000e+00
  %4720 = fadd fast float %4719, -6.000000e+00
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4716, 8.000000e+00
  %4723 = fmul fast float %4722, %4679
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fcmp fast ogt float %4724, 0.000000e+00
  br i1 %4725, label %4726, label %4903, !dx.controlflow.hints !72

; <label>:4726                                    ; preds = %4685
  %4727 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4729 = fsub fast float %4727, %4728
  %4730 = fmul fast float %4729, %4333
  %4731 = fadd fast float %4730, %4728
  %4732 = fmul fast float %187, 2.000000e+00
  %4733 = fmul fast float %188, 2.000000e+00
  %4734 = fadd fast float %4732, -1.000000e+00
  %4735 = fadd fast float %4733, -1.000000e+00
  %4736 = fmul fast float %4731, %4734
  %4737 = fmul fast float %4731, %4735
  %4738 = fadd fast float %4736, %74
  %4739 = fadd fast float %4737, %75
  %4740 = fmul fast float %4738, %4336
  %4741 = fmul fast float %4739, %4337
  %4742 = fadd fast float %4333, 0xBFE3333340000000
  %4743 = fmul fast float %4742, 0x4004000020000000
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 3.000000e+00
  %4747 = fadd fast float %4746, %187
  %4748 = call float @dx.op.unary.f32(i32 27, float %4747)  ; Round_ni(value)
  %4749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %29, float %4740, float %4741, float %4748, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4750 = extractvalue %dx.types.ResRet.f32 %4749, 0
  %4751 = fcmp fast une float %4750, 0xFFF0000000000000
  %4752 = fcmp fast une float %4750, 0x7FF0000000000000
  %4753 = and i1 %4751, %4752
  %4754 = fcmp fast olt float %4750, 0.000000e+00
  %4755 = call float @dx.op.unary.f32(i32 6, float %4750)  ; FAbs(value)
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = select i1 %4753, float 1.000000e+00, float 0.000000e+00
  %4758 = fmul fast float %4757, %4724
  %4759 = fcmp fast ogt float %4758, 0.000000e+00
  br i1 %4759, label %4760, label %4903, !dx.controlflow.hints !73

; <label>:4760                                    ; preds = %4726
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.CBufRet.f32 %4761, 2
  %4765 = select i1 %4754, float 0.000000e+00, float %4762
  %4766 = select i1 %4754, float 0.000000e+00, float %4763
  %4767 = select i1 %4754, float 0.000000e+00, float %4764
  %4768 = select i1 %4754, float %4687, float %4702
  %4769 = select i1 %4754, float %4692, float %4707
  %4770 = select i1 %4754, float %4697, float %4712
  %4771 = select i1 %4754, float %4688, float %4703
  %4772 = select i1 %4754, float %4693, float %4708
  %4773 = select i1 %4754, float %4698, float %4713
  %4774 = select i1 %4754, float %4689, float %4704
  %4775 = select i1 %4754, float %4694, float %4709
  %4776 = select i1 %4754, float %4699, float %4714
  %4777 = select i1 %4754, float %4690, float %4705
  %4778 = select i1 %4754, float %4695, float %4710
  %4779 = select i1 %4754, float %4700, float %4715
  %4780 = fadd fast float %4765, %133
  %4781 = fadd fast float %4766, %134
  %4782 = fadd fast float %4767, %135
  %4783 = fmul fast float %4780, %4768
  %4784 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4771, float %4783)  ; FMad(a,b,c)
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4774, float %4784)  ; FMad(a,b,c)
  %4786 = fadd fast float %4785, %4777
  %4787 = fmul fast float %4780, %4769
  %4788 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4772, float %4787)  ; FMad(a,b,c)
  %4789 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4775, float %4788)  ; FMad(a,b,c)
  %4790 = fadd fast float %4789, %4778
  %4791 = fmul fast float %4780, %4770
  %4792 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4773, float %4791)  ; FMad(a,b,c)
  %4793 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4776, float %4792)  ; FMad(a,b,c)
  %4794 = fadd fast float %4793, %4779
  %4795 = fdiv fast float 1.000000e+00, %4794
  %4796 = fmul fast float %4795, %4786
  %4797 = fmul fast float %4795, %4790
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = fmul fast float %4796, %4799
  %4802 = fmul fast float %4797, %4800
  %4803 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4804 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4805 = fadd fast float %4801, %4803
  %4806 = fadd fast float %4802, %4804
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  %4809 = fmul fast float %4808, %4358
  %4810 = fmul fast float %4808, %4359
  %4811 = fmul fast float %4808, %4360
  %4812 = fadd fast float %4809, %4780
  %4813 = fadd fast float %4810, %4781
  %4814 = fadd fast float %4811, %4782
  %4815 = fmul fast float %4812, %4768
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4771, float %4815)  ; FMad(a,b,c)
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4814, float %4774, float %4816)  ; FMad(a,b,c)
  %4818 = fadd fast float %4817, %4777
  %4819 = fmul fast float %4812, %4769
  %4820 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4772, float %4819)  ; FMad(a,b,c)
  %4821 = call float @dx.op.tertiary.f32(i32 46, float %4814, float %4775, float %4820)  ; FMad(a,b,c)
  %4822 = fadd fast float %4821, %4778
  %4823 = fmul fast float %4812, %4770
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4813, float %4773, float %4823)  ; FMad(a,b,c)
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4814, float %4776, float %4824)  ; FMad(a,b,c)
  %4826 = fadd fast float %4825, %4779
  %4827 = fdiv fast float 1.000000e+00, %4826
  %4828 = fmul fast float %4827, %4818
  %4829 = fmul fast float %4827, %4822
  %4830 = fmul fast float %4805, 2.000000e+00
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = call float @dx.op.unary.f32(i32 6, float %4831)  ; FAbs(value)
  %4833 = fmul fast float %4832, 5.000000e+00
  %4834 = fadd fast float %4833, -4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = fmul fast float %4835, %4721
  %4837 = fsub fast float %4796, %4828
  %4838 = fmul fast float %4799, %4837
  %4839 = fmul fast float %4836, %4838
  %4840 = fsub fast float %4828, %4796
  %4841 = fmul fast float %4799, %4840
  %4842 = fadd fast float %4841, %4839
  %4843 = fsub fast float %4829, %4797
  %4844 = fmul fast float %4800, %4843
  %4845 = fmul fast float %4842, %4756
  %4846 = fmul fast float %4844, %4756
  %4847 = fadd fast float %4845, %4805
  %4848 = fadd fast float %4846, %4806
  %4849 = fsub fast float %4827, %4795
  %4850 = fmul fast float %4849, %4756
  %4851 = fadd fast float %4850, %4795
  %4852 = fdiv fast float 1.000000e+00, %4851
  %4853 = fadd fast float %4333, -1.000000e+00
  %4854 = fsub fast float %4852, %4794
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 2
  %4857 = fmul fast float %4856, %4852
  %4858 = fdiv fast float 1.600000e+02, %4857
  %4859 = fmul fast float %4853, %4853
  %4860 = fmul fast float %4859, 0xBFB5B17960000000
  %4861 = fmul fast float %4860, %4854
  %4862 = fmul fast float %4861, %4858
  %4863 = call float @dx.op.unary.f32(i32 21, float %4862)  ; Exp(value)
  %4864 = fmul fast float %4863, 0x3FF04B2960000000
  %4865 = fsub fast float 0x3FF04B2960000000, %4864
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fmul fast float %4866, 4.000000e+00
  %4868 = fadd fast float %187, -5.000000e-01
  %4869 = fadd fast float %188, -5.000000e-01
  %4870 = fmul fast float %4866, 0x3FBEB851E0000000
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = fmul fast float %4871, %4868
  %4873 = fmul fast float %4871, %4869
  %4874 = fadd fast float %4847, %4872
  %4875 = fadd fast float %4848, %4873
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float %4867)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.ResRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.ResRet.f32 %4876, 2
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 2
  %4882 = fmul fast float %4881, %4877
  %4883 = fmul fast float %4881, %4878
  %4884 = fmul fast float %4881, %4879
  %4885 = select i1 %174, float 0.000000e+00, float %4883
  %4886 = select i1 %174, float 0.000000e+00, float %4884
  %4887 = fmul fast float %4874, 2.000000e+00
  %4888 = fmul fast float %4875, 2.000000e+00
  %4889 = fadd fast float %4887, -1.000000e+00
  %4890 = fadd fast float %4888, -1.000000e+00
  %4891 = fmul fast float %4889, %4889
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fsub fast float 1.000000e+00, %4893
  %4895 = fmul fast float %4894, %4721
  %4896 = fadd fast float %4895, %4893
  %4897 = fmul fast float %4890, %4890
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4896, %4899
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fmul fast float %4901, %4758
  br label %4903

; <label>:4903                                    ; preds = %4760, %4726, %4685
  %4904 = phi float [ %4882, %4760 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4685 ]
  %4905 = phi float [ %4885, %4760 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4685 ]
  %4906 = phi float [ %4886, %4760 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4685 ]
  %4907 = phi float [ %4902, %4760 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4685 ]
  %4908 = fcmp fast olt float %4907, 1.000000e+00
  %4909 = or i1 %4908, %4683
  %4910 = zext i1 %4909 to i32
  %4911 = fmul fast float %4907, %4668
  %4912 = fsub fast float %4907, %4911
  %4913 = fsub fast float 1.000000e+00, %4674
  %4914 = fmul fast float %4912, %4913
  %4915 = fadd fast float %4914, %4674
  %4916 = fsub fast float %4915, %4912
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, %4609
  %4919 = fmul fast float %4917, %4610
  %4920 = fmul fast float %4917, %4611
  %4921 = fsub fast float -0.000000e+00, %4915
  %4922 = fmul fast float %4912, %4904
  %4923 = fmul fast float %4912, %4905
  %4924 = fmul fast float %4912, %4906
  %4925 = fadd fast float %4922, %4918
  %4926 = fadd fast float %4923, %4919
  %4927 = fadd fast float %4924, %4920
  br label %4928

; <label>:4928                                    ; preds = %4903, %4676
  %4929 = phi float [ %4674, %4676 ], [ %4921, %4903 ]
  %4930 = phi float [ %4609, %4676 ], [ %4925, %4903 ]
  %4931 = phi float [ %4610, %4676 ], [ %4926, %4903 ]
  %4932 = phi float [ %4611, %4676 ], [ %4927, %4903 ]
  %4933 = phi i32 [ %4684, %4676 ], [ %4910, %4903 ]
  %4934 = icmp eq i32 %4933, 0
  br i1 %4934, label %5494, label %4935

; <label>:4935                                    ; preds = %4928
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 3
  %4939 = fmul fast float %4937, %74
  %4940 = fmul fast float %4938, %75
  %4941 = fptoui float %4939 to i32
  %4942 = fptoui float %4940 to i32
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.CBufRet.f32 %4943, 2
  %4946 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4947 = fadd fast float %69, -4.000000e+00
  %4948 = call float @dx.op.binary.f32(i32 35, float %4947, float 0.000000e+00)  ; FMax(a,b)
  %4949 = fadd fast float %4948, %4944
  %4950 = fmul fast float %4949, %4945
  %4951 = call float @dx.op.unary.f32(i32 23, float %4950)  ; Log(value)
  %4952 = fmul fast float %4951, %4946
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4955 = fmul fast float %4952, %4954
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.i32 %4957, 1
  %4959 = add i32 %4958, -1
  %4960 = uitofp i32 %4958 to float
  %4961 = fmul fast float %4960, %4956
  %4962 = fptoui float %4961 to i32
  %4963 = call i32 @dx.op.binary.i32(i32 40, i32 %4962, i32 %4959)  ; UMin(a,b)
  %4964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.i32 %4964, 2
  %4966 = extractvalue %dx.types.CBufRet.i32 %4964, 3
  %4967 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4942, i32 %4965, i32 %4941)  ; UMad(a,b,c)
  %4968 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4963, i32 %4966, i32 %4967)  ; UMad(a,b,c)
  %4969 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4970 = fptoui float %4969 to i32
  %4971 = lshr i32 %4970, 5
  %4972 = call i32 @dx.op.binary.i32(i32 40, i32 %4971, i32 8191)  ; UMin(a,b)
  %4973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.i32 %4973, 2
  %4975 = add nsw i32 %4974, -1
  %4976 = call i32 @dx.op.binary.i32(i32 37, i32 %4975, i32 0)  ; IMax(a,b)
  %4977 = shl i32 %4972, 2
  %4978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4977, i32 undef)  ; BufferLoad(srv,index,wot)
  %4979 = extractvalue %dx.types.ResRet.i32 %4978, 0
  %4980 = lshr i32 %4979, 16
  %4981 = and i32 %4979, 65535
  %4982 = lshr i32 %4979, 21
  %4983 = lshr i32 %4981, 5
  %4984 = call i32 @dx.op.binary.i32(i32 40, i32 %4983, i32 %4976)  ; UMin(a,b)
  %4985 = icmp ugt i32 %4982, %4984
  br i1 %4985, label %5366, label %4986

; <label>:4986                                    ; preds = %4935
  br label %4987

; <label>:4987                                    ; preds = %5355, %4986
  %4988 = phi float [ %5356, %5355 ], [ 0.000000e+00, %4986 ]
  %4989 = phi float [ %5357, %5355 ], [ 0.000000e+00, %4986 ]
  %4990 = phi float [ %5358, %5355 ], [ 0.000000e+00, %4986 ]
  %4991 = phi float [ %5359, %5355 ], [ 1.000000e+00, %4986 ]
  %4992 = phi i32 [ %5363, %5355 ], [ %4982, %4986 ]
  %4993 = phi float [ %5360, %5355 ], [ 0.000000e+00, %4986 ]
  %4994 = phi float [ %5361, %5355 ], [ 0.000000e+00, %4986 ]
  %4995 = phi float [ %5362, %5355 ], [ 0.000000e+00, %4986 ]
  %4996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.i32 %4996, 2
  %4998 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4968, i32 %4997, i32 %4992)  ; UMad(a,b,c)
  %4999 = shl i32 %4998, 2
  %5000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %4999, i32 undef)  ; BufferLoad(srv,index,wot)
  %5001 = extractvalue %dx.types.ResRet.i32 %5000, 0
  %5002 = shl i32 %4992, 5
  %5003 = sub nsw i32 %4980, %5002
  %5004 = call i32 @dx.op.binary.i32(i32 37, i32 %5003, i32 0)  ; IMax(a,b)
  %5005 = call i32 @dx.op.binary.i32(i32 38, i32 %5004, i32 31)  ; IMin(a,b)
  %5006 = sub nsw i32 1, %4980
  %5007 = add nsw i32 %5006, %4981
  %5008 = call i32 @dx.op.binary.i32(i32 37, i32 %5007, i32 0)  ; IMax(a,b)
  %5009 = call i32 @dx.op.binary.i32(i32 38, i32 %5008, i32 32)  ; IMin(a,b)
  %5010 = and i32 %5009, 31
  %5011 = shl i32 -1, %5010
  %5012 = xor i32 %5011, -1
  %5013 = and i32 %5005, 31
  %5014 = shl i32 %5012, %5013
  %5015 = icmp eq i32 %5009, 32
  %5016 = select i1 %5015, i32 -1, i32 %5014
  %5017 = and i32 %5016, %5001
  %5018 = icmp eq i32 %5017, 0
  br i1 %5018, label %5355, label %5019

; <label>:5019                                    ; preds = %4987
  br label %5020

; <label>:5020                                    ; preds = %5129, %5019
  %5021 = phi float [ %5130, %5129 ], [ %4988, %5019 ]
  %5022 = phi float [ %5131, %5129 ], [ %4989, %5019 ]
  %5023 = phi float [ %5132, %5129 ], [ %4990, %5019 ]
  %5024 = phi float [ %5133, %5129 ], [ %4991, %5019 ]
  %5025 = phi i32 [ %5033, %5129 ], [ %5017, %5019 ]
  %5026 = phi float [ %5134, %5129 ], [ %4993, %5019 ]
  %5027 = phi float [ %5135, %5129 ], [ %4994, %5019 ]
  %5028 = phi float [ %5136, %5129 ], [ %4995, %5019 ]
  %5029 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5025)  ; FirstbitLo(value)
  %5030 = add i32 %5029, %5002
  %5031 = and i32 %5029, 31
  %5032 = shl i32 1, %5031
  %5033 = xor i32 %5032, %5025
  %5034 = mul i32 %5030, 72
  %5035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5034, i32 undef)  ; BufferLoad(srv,index,wot)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = extractvalue %dx.types.ResRet.f32 %5035, 1
  %5038 = extractvalue %dx.types.ResRet.f32 %5035, 2
  %5039 = add i32 %5034, 12
  %5040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.i32 %5040, 0
  %5042 = add i32 %5034, 16
  %5043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5042, i32 undef)  ; BufferLoad(srv,index,wot)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5047 = add i32 %5034, 28
  %5048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = add i32 %5034, 32
  %5051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5050, i32 undef)  ; BufferLoad(srv,index,wot)
  %5052 = extractvalue %dx.types.ResRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.ResRet.f32 %5051, 1
  %5054 = extractvalue %dx.types.ResRet.f32 %5051, 2
  %5055 = extractvalue %dx.types.ResRet.f32 %5051, 3
  %5056 = add i32 %5034, 48
  %5057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5056, i32 undef)  ; BufferLoad(srv,index,wot)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = add i32 %5034, 56
  %5061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.ResRet.f32 %5061, 1
  %5064 = add i32 %5034, 64
  %5065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.ResRet.f32 %5065, 1
  %5068 = mul i32 %5030, 60
  %5069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5068, i32 undef)  ; BufferLoad(srv,index,wot)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = add i32 %5068, 12
  %5074 = add i32 %5068, 48
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5079 = and i32 %5041, 32767
  %5080 = bitcast float %5036 to i32
  %5081 = icmp eq i32 %5080, -1
  %5082 = bitcast float %5037 to i32
  %5083 = and i32 %5041, 32768
  %5084 = icmp ne i32 %5083, 0
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.CBufRet.f32 %5085, 2
  %5089 = fsub fast float %5070, %5086
  %5090 = fsub fast float %5071, %5087
  %5091 = fsub fast float %5072, %5088
  %5092 = fsub fast float %133, %5089
  %5093 = fsub fast float %134, %5090
  %5094 = fsub fast float %135, %5091
  %5095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5073, i32 undef)  ; BufferLoad(srv,index,wot)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = add i32 %5068, 24
  %5101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5100, i32 undef)  ; BufferLoad(srv,index,wot)
  %5102 = extractvalue %dx.types.ResRet.f32 %5101, 0
  %5103 = extractvalue %dx.types.ResRet.f32 %5101, 1
  %5104 = extractvalue %dx.types.ResRet.f32 %5101, 2
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = add i32 %5068, 36
  %5107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5106, i32 undef)  ; BufferLoad(srv,index,wot)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5113 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5114 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5115 = fsub fast float %5076, %5112
  %5116 = fsub fast float %5077, %5113
  %5117 = fsub fast float %5078, %5114
  %5118 = fmul fast float %5115, %5044
  %5119 = fmul fast float %5116, %5045
  %5120 = fmul fast float %5117, %5046
  %5121 = call float @dx.op.binary.f32(i32 36, float %5119, float %5120)  ; FMin(a,b)
  %5122 = call float @dx.op.binary.f32(i32 36, float %5118, float %5121)  ; FMin(a,b)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5024, float %5123)  ; FMin(a,b)
  %5125 = uitofp i1 %5084 to float
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = fmul fast float %5124, %5126
  %5128 = fcmp fast ogt float %5127, 0.000000e+00
  br i1 %5128, label %5138, label %5129

; <label>:5129                                    ; preds = %5280, %5020
  %5130 = phi float [ %5344, %5280 ], [ %5021, %5020 ]
  %5131 = phi float [ %5345, %5280 ], [ %5022, %5020 ]
  %5132 = phi float [ %5346, %5280 ], [ %5023, %5020 ]
  %5133 = phi float [ %5353, %5280 ], [ %5024, %5020 ]
  %5134 = phi float [ %5350, %5280 ], [ %5026, %5020 ]
  %5135 = phi float [ %5351, %5280 ], [ %5027, %5020 ]
  %5136 = phi float [ %5352, %5280 ], [ %5028, %5020 ]
  %5137 = icmp eq i32 %5025, %5032
  br i1 %5137, label %5354, label %5020

; <label>:5138                                    ; preds = %5020
  br i1 %5081, label %5196, label %5139

; <label>:5139                                    ; preds = %5138
  %5140 = fsub fast float -0.000000e+00, %5096
  %5141 = fsub fast float -0.000000e+00, %5097
  %5142 = fsub fast float -0.000000e+00, %5098
  %5143 = call float @dx.op.dot3.f32(i32 55, float %4358, float %4359, float %4360, float %5140, float %5141, float %5142)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = fsub fast float -0.000000e+00, %5143
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5140, float %5141, float %5142)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = fadd fast float %5145, %5059
  %5147 = fadd fast float %5058, %5145
  %5148 = fsub fast float -0.000000e+00, %5147
  %5149 = fcmp ogt float %5143, -0.000000e+00
  %5150 = select i1 %5149, float %5148, float %5146
  %5151 = call float @dx.op.unary.f32(i32 6, float %5144)  ; FAbs(value)
  %5152 = fdiv fast float 1.000000e+00, %5151
  %5153 = fmul fast float %5150, %5152
  %5154 = call float @dx.op.binary.f32(i32 35, float %5153, float 0.000000e+00)  ; FMax(a,b)
  %5155 = fsub fast float -0.000000e+00, %5102
  %5156 = fsub fast float -0.000000e+00, %5103
  %5157 = fsub fast float -0.000000e+00, %5104
  %5158 = call float @dx.op.dot3.f32(i32 55, float %4358, float %4359, float %4360, float %5155, float %5156, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = fsub fast float -0.000000e+00, %5158
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5155, float %5156, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fadd fast float %5160, %5063
  %5162 = fadd fast float %5062, %5160
  %5163 = fsub fast float -0.000000e+00, %5162
  %5164 = fcmp ogt float %5158, -0.000000e+00
  %5165 = select i1 %5164, float %5163, float %5161
  %5166 = call float @dx.op.unary.f32(i32 6, float %5159)  ; FAbs(value)
  %5167 = fdiv fast float 1.000000e+00, %5166
  %5168 = fmul fast float %5165, %5167
  %5169 = call float @dx.op.binary.f32(i32 35, float %5168, float 0.000000e+00)  ; FMax(a,b)
  %5170 = fsub fast float -0.000000e+00, %5108
  %5171 = fsub fast float -0.000000e+00, %5109
  %5172 = fsub fast float -0.000000e+00, %5110
  %5173 = call float @dx.op.dot3.f32(i32 55, float %4358, float %4359, float %4360, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = fsub fast float -0.000000e+00, %5173
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = fadd fast float %5175, %5067
  %5177 = fadd fast float %5066, %5175
  %5178 = fsub fast float -0.000000e+00, %5177
  %5179 = fcmp ogt float %5173, -0.000000e+00
  %5180 = select i1 %5179, float %5178, float %5176
  %5181 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5182 = fdiv fast float 1.000000e+00, %5181
  %5183 = fmul fast float %5180, %5182
  %5184 = call float @dx.op.binary.f32(i32 35, float %5183, float 0.000000e+00)  ; FMax(a,b)
  %5185 = call float @dx.op.binary.f32(i32 36, float %5169, float %5184)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5154, float %5185)  ; FMin(a,b)
  %5187 = fmul fast float %5186, %4358
  %5188 = fmul fast float %5186, %4359
  %5189 = fmul fast float %5186, %4360
  %5190 = fadd fast float %5187, %133
  %5191 = fadd fast float %5188, %134
  %5192 = fadd fast float %5189, %135
  %5193 = fsub fast float %5190, %5036
  %5194 = fsub fast float %5191, %5037
  %5195 = fsub fast float %5192, %5038
  br label %5203

; <label>:5196                                    ; preds = %5138
  %5197 = fmul fast float %4358, 8.096000e+03
  %5198 = fmul fast float %4359, 8.096000e+03
  %5199 = fmul fast float %4360, 8.096000e+03
  %5200 = fadd fast float %5197, %133
  %5201 = fadd fast float %5198, %134
  %5202 = fadd fast float %5199, %135
  br label %5203

; <label>:5203                                    ; preds = %5196, %5139
  %5204 = phi float [ %4358, %5196 ], [ %5193, %5139 ]
  %5205 = phi float [ %4359, %5196 ], [ %5194, %5139 ]
  %5206 = phi float [ %4360, %5196 ], [ %5195, %5139 ]
  %5207 = phi float [ %5200, %5196 ], [ %5190, %5139 ]
  %5208 = phi float [ %5201, %5196 ], [ %5191, %5139 ]
  %5209 = phi float [ %5202, %5196 ], [ %5192, %5139 ]
  %5210 = fcmp fast olt float %5055, 1.000000e+00
  br i1 %5210, label %5211, label %5242, !dx.controlflow.hints !74

; <label>:5211                                    ; preds = %5203
  %5212 = fmul fast float %5206, %5053
  %5213 = fmul fast float %5205, %5054
  %5214 = fsub fast float %5212, %5213
  %5215 = fmul fast float %5204, %5054
  %5216 = fmul fast float %5206, %5052
  %5217 = fsub fast float %5215, %5216
  %5218 = fmul fast float %5205, %5052
  %5219 = fmul fast float %5204, %5053
  %5220 = fsub fast float %5218, %5219
  %5221 = fmul fast float %5214, 2.000000e+00
  %5222 = fmul fast float %5217, 2.000000e+00
  %5223 = fmul fast float %5220, 2.000000e+00
  %5224 = fmul fast float %5221, %5055
  %5225 = fmul fast float %5222, %5055
  %5226 = fmul fast float %5223, %5055
  %5227 = fmul fast float %5223, %5053
  %5228 = fmul fast float %5222, %5054
  %5229 = fmul fast float %5221, %5054
  %5230 = fmul fast float %5223, %5052
  %5231 = fmul fast float %5222, %5052
  %5232 = fmul fast float %5221, %5053
  %5233 = fadd fast float %5227, %5204
  %5234 = fadd fast float %5233, %5224
  %5235 = fsub fast float %5234, %5228
  %5236 = fsub fast float %5205, %5230
  %5237 = fadd fast float %5236, %5225
  %5238 = fadd fast float %5237, %5229
  %5239 = fadd fast float %5226, %5206
  %5240 = fsub fast float %5239, %5232
  %5241 = fadd fast float %5240, %5231
  br label %5242

; <label>:5242                                    ; preds = %5211, %5203
  %5243 = phi float [ %5235, %5211 ], [ %5204, %5203 ]
  %5244 = phi float [ %5238, %5211 ], [ %5205, %5203 ]
  %5245 = phi float [ %5241, %5211 ], [ %5206, %5203 ]
  br i1 %5081, label %5277, label %5246

; <label>:5246                                    ; preds = %5242
  %5247 = fmul fast float %4333, 0x400187C840000000
  %5248 = fadd fast float %5247, 0xC00EFC2120000000
  %5249 = fmul fast float %5248, %4333
  %5250 = fadd fast float %5249, 0x3FE5D16340000000
  %5251 = fmul fast float %5250, %4333
  %5252 = fadd fast float %5251, 1.000000e+00
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fsub fast float %5207, %133
  %5255 = fsub fast float %5208, %134
  %5256 = fsub fast float %5209, %135
  %5257 = fsub fast float %5207, %5036
  %5258 = fsub fast float %5208, %5037
  %5259 = fsub fast float %5209, %5038
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5254, float %5255, float %5256, float %5254, float %5255, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5257, float %5258, float %5259, float %5257, float %5258, float %5259)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = fadd fast float %5261, 0x3EE4F8B580000000
  %5263 = fdiv fast float %5260, %5262
  %5264 = bitcast float %5263 to i32
  %5265 = ashr i32 %5264, 1
  %5266 = add nsw i32 %5265, 532487669
  %5267 = bitcast i32 %5266 to float
  %5268 = fmul fast float %5267, %5253
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %5269, 0x4009981AE0000000
  %5271 = fsub fast float 0x40111BBD80000000, %5270
  %5272 = fmul fast float %5271, %5269
  %5273 = fadd fast float %5272, 0xC0009F6020000000
  %5274 = fmul fast float %5273, %5269
  %5275 = fadd fast float %5274, 1.000000e+00
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  br label %5280

; <label>:5277                                    ; preds = %5242
  %5278 = icmp ne i32 %5082, -1
  %5279 = zext i1 %5278 to i32
  br label %5280

; <label>:5280                                    ; preds = %5277, %5246
  %5281 = phi float [ %4333, %5277 ], [ %5276, %5246 ]
  %5282 = phi i32 [ %5279, %5277 ], [ 0, %5246 ]
  %5283 = fmul float %5281, 5.000000e+00
  %5284 = fsub float 5.000000e+00, %5283
  %5285 = icmp ne i32 %5282, 0
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5288 = fadd fast float %5287, %5284
  %5289 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5288)  ; FMax(a,b)
  %5290 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5291 = call float @dx.op.unary.f32(i32 6, float %5244)  ; FAbs(value)
  %5292 = fadd fast float %5291, %5290
  %5293 = call float @dx.op.unary.f32(i32 6, float %5245)  ; FAbs(value)
  %5294 = fadd fast float %5292, %5293
  %5295 = fcmp fast oeq float %5294, 0.000000e+00
  %5296 = fdiv fast float 1.000000e+00, %5294
  %5297 = select i1 %5295, float 1.000000e+00, float %5296
  %5298 = fmul fast float %5297, %5243
  %5299 = fmul fast float %5297, %5244
  %5300 = call float @dx.op.unary.f32(i32 6, float %5299)  ; FAbs(value)
  %5301 = call float @dx.op.unary.f32(i32 6, float %5298)  ; FAbs(value)
  %5302 = fsub fast float 1.000000e+00, %5300
  %5303 = fsub fast float 1.000000e+00, %5301
  %5304 = fcmp fast oge float %5298, 0.000000e+00
  %5305 = fcmp fast oge float %5299, 0.000000e+00
  %5306 = select i1 %5304, float 1.000000e+00, float -1.000000e+00
  %5307 = select i1 %5305, float 1.000000e+00, float -1.000000e+00
  %5308 = fcmp fast ole float %5245, 0.000000e+00
  %5309 = fmul fast float %5306, %5302
  %5310 = fmul fast float %5307, %5303
  %5311 = select i1 %5308, float %5309, float %5298
  %5312 = select i1 %5308, float %5310, float %5299
  %5313 = fmul fast float %5311, 5.000000e-01
  %5314 = fmul fast float %5312, 5.000000e-01
  %5315 = fadd fast float %5313, 5.000000e-01
  %5316 = fadd fast float %5314, 5.000000e-01
  %5317 = uitofp i32 %5079 to float
  %5318 = call float @dx.op.binary.f32(i32 36, float %5289, float 3.000000e+00)  ; FMin(a,b)
  %5319 = fadd fast float %5318, 2.000000e+00
  %5320 = call float @dx.op.unary.f32(i32 21, float %5319)  ; Exp(value)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5322 = fmul fast float %5321, %5320
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = fmul fast float %5315, %5324
  %5326 = fmul fast float %5316, %5324
  %5327 = fadd fast float %5325, %5322
  %5328 = fadd fast float %5326, %5322
  %5329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %26, float %5327, float %5328, float %5317, float undef, i32 0, i32 0, i32 undef, float %5289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5335 = fmul fast float %5334, %5049
  %5336 = call float @dx.op.binary.f32(i32 36, float %4379, float %5335)  ; FMin(a,b)
  %5337 = select i1 %5285, float %5336, float %5335
  %5338 = fmul fast float %5330, %5127
  %5339 = fmul fast float %5338, %5337
  %5340 = fmul fast float %5331, %5127
  %5341 = fmul fast float %5340, %5337
  %5342 = fmul fast float %5332, %5127
  %5343 = fmul fast float %5342, %5337
  %5344 = fadd fast float %5339, %5021
  %5345 = fadd fast float %5341, %5022
  %5346 = fadd fast float %5343, %5023
  %5347 = fmul fast float %5207, %5127
  %5348 = fmul fast float %5208, %5127
  %5349 = fmul fast float %5209, %5127
  %5350 = fadd fast float %5347, %5026
  %5351 = fadd fast float %5348, %5027
  %5352 = fadd fast float %5349, %5028
  %5353 = fsub fast float %5024, %5127
  br label %5129

; <label>:5354                                    ; preds = %5129
  br label %5355

; <label>:5355                                    ; preds = %5354, %4987
  %5356 = phi float [ %4988, %4987 ], [ %5130, %5354 ]
  %5357 = phi float [ %4989, %4987 ], [ %5131, %5354 ]
  %5358 = phi float [ %4990, %4987 ], [ %5132, %5354 ]
  %5359 = phi float [ %4991, %4987 ], [ %5133, %5354 ]
  %5360 = phi float [ %4993, %4987 ], [ %5134, %5354 ]
  %5361 = phi float [ %4994, %4987 ], [ %5135, %5354 ]
  %5362 = phi float [ %4995, %4987 ], [ %5136, %5354 ]
  %5363 = add i32 %4992, 1
  %5364 = icmp ugt i32 %5363, %4984
  br i1 %5364, label %5365, label %4987, !llvm.loop !75

; <label>:5365                                    ; preds = %5355
  br label %5366

; <label>:5366                                    ; preds = %5365, %4935
  %5367 = phi float [ 0.000000e+00, %4935 ], [ %5356, %5365 ]
  %5368 = phi float [ 0.000000e+00, %4935 ], [ %5357, %5365 ]
  %5369 = phi float [ 0.000000e+00, %4935 ], [ %5358, %5365 ]
  %5370 = phi float [ 0.000000e+00, %4935 ], [ %5360, %5365 ]
  %5371 = phi float [ 0.000000e+00, %4935 ], [ %5361, %5365 ]
  %5372 = phi float [ 0.000000e+00, %4935 ], [ %5362, %5365 ]
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = select i1 %174, float 0.000000e+00, float %5367
  %5375 = select i1 %174, float %5373, float %5368
  %5376 = select i1 %174, float 0.000000e+00, float %5369
  %5377 = fcmp fast olt float %4929, 0.000000e+00
  %5378 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %5379 = fmul fast float %5378, %4930
  %5380 = fmul fast float %5378, %4931
  %5381 = fmul fast float %5378, %4932
  %5382 = select i1 %5377, float %4930, float %5379
  %5383 = select i1 %5377, float %4931, float %5380
  %5384 = select i1 %5377, float %4932, float %5381
  %5385 = fsub fast float 1.000000e+00, %5378
  %5386 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5387 = fmul fast float %5386, %5374
  %5388 = fmul fast float %5386, %5375
  %5389 = fmul fast float %5386, %5376
  %5390 = fadd fast float %5382, %5387
  %5391 = fadd fast float %5383, %5388
  %5392 = fadd fast float %5384, %5389
  %5393 = fcmp fast une float %4679, 0.000000e+00
  br i1 %5393, label %5494, label %5394

; <label>:5394                                    ; preds = %5366
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fadd fast float %4333, -1.000000e+00
  %5414 = fsub fast float %5411, %5412
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5417 = fmul fast float %5416, %5411
  %5418 = fdiv fast float 1.600000e+02, %5417
  %5419 = fmul fast float %5413, %5413
  %5420 = fmul fast float %5419, 0xBFB5B17960000000
  %5421 = fmul fast float %5420, %5414
  %5422 = fmul fast float %5421, %5418
  %5423 = call float @dx.op.unary.f32(i32 21, float %5422)  ; Exp(value)
  %5424 = fmul fast float %5423, 0x3FF04B2960000000
  %5425 = fsub fast float 0x3FF04B2960000000, %5424
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fmul fast float %5426, 4.000000e+00
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.CBufRet.f32 %5428, 2
  %5432 = fadd fast float %5429, %5370
  %5433 = fadd fast float %5430, %5371
  %5434 = fadd fast float %5431, %5372
  %5435 = fmul fast float %5432, %5396
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5397, float %5435)  ; FMad(a,b,c)
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5398, float %5436)  ; FMad(a,b,c)
  %5438 = fadd fast float %5437, %5399
  %5439 = fmul fast float %5432, %5401
  %5440 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5402, float %5439)  ; FMad(a,b,c)
  %5441 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5403, float %5440)  ; FMad(a,b,c)
  %5442 = fadd fast float %5441, %5404
  %5443 = fmul fast float %5432, %5406
  %5444 = call float @dx.op.tertiary.f32(i32 46, float %5433, float %5407, float %5443)  ; FMad(a,b,c)
  %5445 = call float @dx.op.tertiary.f32(i32 46, float %5434, float %5408, float %5444)  ; FMad(a,b,c)
  %5446 = fadd fast float %5445, %5409
  %5447 = fdiv fast float %5438, %5446
  %5448 = fdiv fast float %5442, %5446
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 1
  %5452 = fmul fast float %5450, %5447
  %5453 = fmul fast float %5451, %5448
  %5454 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5455 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5456 = fadd fast float %5452, %5454
  %5457 = fadd fast float %5453, %5455
  %5458 = fmul fast float %5410, 8.000000e+00
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fmul fast float %5456, 2.000000e+00
  %5461 = fmul fast float %5457, 2.000000e+00
  %5462 = fadd fast float %5460, -1.000000e+00
  %5463 = fadd fast float %5461, -1.000000e+00
  %5464 = fmul fast float %5462, %5462
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = fmul fast float %5463, %5463
  %5468 = fsub fast float 1.000000e+00, %5467
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = fmul fast float %4679, %5466
  %5471 = fmul fast float %5470, %5469
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = fmul fast float %5472, %5459
  %5474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %26, float %5456, float %5457, float undef, float undef, i32 0, i32 0, i32 undef, float %5427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.ResRet.f32 %5474, 2
  %5478 = select i1 %174, float 0.000000e+00, float %5476
  %5479 = select i1 %174, float 0.000000e+00, float %5477
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5482 = fmul fast float %5481, %5475
  %5483 = fmul fast float %5478, %5481
  %5484 = fmul fast float %5479, %5481
  %5485 = fsub fast float %5482, %5374
  %5486 = fsub fast float %5483, %5375
  %5487 = fsub fast float %5484, %5376
  %5488 = fmul fast float %5485, %5473
  %5489 = fmul fast float %5486, %5473
  %5490 = fmul fast float %5487, %5473
  %5491 = fadd fast float %5488, %5374
  %5492 = fadd fast float %5489, %5375
  %5493 = fadd fast float %5490, %5376
  br label %5494

; <label>:5494                                    ; preds = %5394, %5366, %4928, %4652
  %5495 = phi float [ %4930, %4928 ], [ %5390, %5366 ], [ %4609, %4652 ], [ %5491, %5394 ]
  %5496 = phi float [ %4931, %4928 ], [ %5391, %5366 ], [ %4610, %4652 ], [ %5492, %5394 ]
  %5497 = phi float [ %4932, %4928 ], [ %5392, %5366 ], [ %4611, %4652 ], [ %5493, %5394 ]
  %5498 = fmul fast float %4658, %4605
  %5499 = fmul fast float %4658, %4606
  %5500 = fmul fast float %4658, %4607
  %5501 = call float @dx.op.dot3.f32(i32 55, float %4324, float %4325, float %4326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fcmp fast ogt float %5501, 0x3E7FF19E20000000
  %5503 = fdiv fast float 1.000000e+00, %5501
  %5504 = select i1 %5502, float %5503, float 0.000000e+00
  %5505 = fmul fast float %5504, %4324
  %5506 = fmul fast float %5504, %4325
  %5507 = fmul fast float %5504, %4326
  %5508 = fadd fast float %5505, -1.000000e+00
  %5509 = fadd fast float %5506, -1.000000e+00
  %5510 = fadd fast float %5507, -1.000000e+00
  %5511 = fmul fast float %5508, 5.000000e-01
  %5512 = fmul fast float %5509, 5.000000e-01
  %5513 = fmul fast float %5510, 5.000000e-01
  %5514 = fadd fast float %5511, 1.000000e+00
  %5515 = fadd fast float %5512, 1.000000e+00
  %5516 = fadd fast float %5513, 1.000000e+00
  %5517 = fmul fast float %5495, %4653
  %5518 = fmul fast float %5496, %4654
  %5519 = fmul fast float %5497, %4655
  %5520 = fsub fast float 1.000000e+00, %4352
  %5521 = bitcast float %5520 to i32
  %5522 = sitofp i32 %5521 to float
  %5523 = fmul fast float %5522, 5.000000e+00
  %5524 = fadd fast float %5523, 0xC1EFBF8940000000
  %5525 = fptosi float %5524 to i32
  %5526 = bitcast i32 %5525 to float
  %5527 = fmul fast float %5526, %4014
  %5528 = fmul fast float %4605, %5527
  %5529 = fmul fast float %5528, %4658
  %5530 = fmul fast float %5529, %5514
  %5531 = fmul fast float %4606, %5527
  %5532 = fmul fast float %5531, %4658
  %5533 = fmul fast float %5532, %5515
  %5534 = fmul fast float %4607, %5527
  %5535 = fmul fast float %5534, %4658
  %5536 = fmul fast float %5535, %5516
  %5537 = fmul fast float %5498, %4010
  %5538 = fmul fast float %5499, %4010
  %5539 = fmul fast float %5500, %4010
  %5540 = fadd fast float %5517, %4006
  %5541 = fadd fast float %5540, %5530
  %5542 = fmul fast float %5541, %4010
  %5543 = fadd fast float %5518, %4007
  %5544 = fadd fast float %5543, %5533
  %5545 = fmul fast float %5544, %4010
  %5546 = fadd fast float %5519, %4008
  %5547 = fadd fast float %5546, %5536
  %5548 = fmul fast float %5547, %4010
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5551 = fcmp fast oeq float %5550, 0.000000e+00
  br i1 %5551, label %5770, label %5552

; <label>:5552                                    ; preds = %5494
  %5553 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5554 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5555 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5562 = extractvalue %dx.types.CBufRet.f32 %5560, 1
  %5563 = call float @dx.op.dot3.f32(i32 55, float %5557, float %5558, float %5559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = select i1 %174, float %5561, float %5557
  %5565 = select i1 %174, float %5563, float %5558
  %5566 = select i1 %174, float %5562, float %5559
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 1
  %5569 = fcmp fast une float %5568, 0.000000e+00
  br i1 %5569, label %5570, label %5587

; <label>:5570                                    ; preds = %5552
  %5571 = fptoui float %74 to i32
  %5572 = fptoui float %75 to i32
  %5573 = lshr i32 %5571, 4
  %5574 = lshr i32 %5572, 4
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = fptoui float %5576 to i32
  %5578 = add i32 %5577, 15
  %5579 = lshr i32 %5578, 4
  %5580 = mul i32 %5579, %5574
  %5581 = add i32 %5580, %5573
  %5582 = shl i32 %5581, 3
  %5583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5582, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.i32 %5583, 0
  %5585 = and i32 %5584, -268435456
  %5586 = icmp eq i32 %5585, -1342177280
  br i1 %5586, label %5592, label %5587

; <label>:5587                                    ; preds = %5570, %5552
  %5588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %4338, float %4339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.ResRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.ResRet.f32 %5588, 2
  br label %5592

; <label>:5592                                    ; preds = %5587, %5570
  %5593 = phi float [ %5589, %5587 ], [ 0.000000e+00, %5570 ]
  %5594 = phi float [ %5590, %5587 ], [ 0.000000e+00, %5570 ]
  %5595 = phi float [ %5591, %5587 ], [ 0.000000e+00, %5570 ]
  %5596 = call float @dx.op.binary.f32(i32 36, float %5594, float %5595)  ; FMin(a,b)
  %5597 = call float @dx.op.binary.f32(i32 36, float %5593, float %5596)  ; FMin(a,b)
  %5598 = fcmp fast ogt float %5597, 0.000000e+00
  br i1 %5598, label %5599, label %5770, !dx.controlflow.hints !77

; <label>:5599                                    ; preds = %5592
  %5600 = fmul fast float %5593, %5564
  %5601 = fmul fast float %5594, %5565
  %5602 = fmul fast float %5595, %5566
  %5603 = fsub fast float %5553, %4323
  %5604 = fsub fast float %5554, %4322
  %5605 = fsub fast float %5555, %4321
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5607, %5603
  %5609 = fmul fast float %5607, %5604
  %5610 = fmul fast float %5607, %5605
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %4330, float %4331, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %4320, float %4319, float %4318, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5614 = fmul fast float %5613, %5613
  %5615 = fmul fast float %5614, %4377
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, %5613
  %5618 = call float @dx.op.dot3.f32(i32 55, float %4330, float %4331, float %4332, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, %5618
  %5620 = call float @dx.op.unary.f32(i32 6, float %5611)  ; FAbs(value)
  %5621 = fsub fast float 1.000000e+00, %4370
  %5622 = fmul fast float %4352, %4352
  %5623 = fmul fast float %5622, %5621
  %5624 = fadd fast float %5623, %4370
  %5625 = bitcast float %5624 to i32
  %5626 = ashr i32 %5625, 1
  %5627 = add nsw i32 %5626, 532487669
  %5628 = bitcast i32 %5627 to float
  %5629 = fadd fast float %5628, %4352
  %5630 = fmul fast float %4370, %5619
  %5631 = fsub fast float 1.000000e+00, %5619
  %5632 = fadd fast float %5631, %5630
  %5633 = fmul fast float %5620, %5620
  %5634 = fmul fast float %5633, %5621
  %5635 = fadd fast float %5634, %4370
  %5636 = bitcast float %5635 to i32
  %5637 = ashr i32 %5636, 1
  %5638 = add nsw i32 %5637, 532487669
  %5639 = bitcast i32 %5638 to float
  %5640 = fadd fast float %5639, %5620
  %5641 = fmul fast float %5632, %5632
  %5642 = fmul fast float %5641, %5629
  %5643 = fmul fast float %5642, %5640
  %5644 = fdiv fast float 0x3FF0A00000000000, %5643
  %5645 = fmul fast float %5644, %4370
  %5646 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = bitcast float %5647 to i32
  %5649 = sitofp i32 %5648 to float
  %5650 = fmul fast float %5649, 5.000000e+00
  %5651 = fadd fast float %5650, 0xC1EFBF8940000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fsub fast float 1.000000e+00, %4327
  %5655 = fsub fast float 1.000000e+00, %4328
  %5656 = fsub fast float 1.000000e+00, %4350
  %5657 = fmul fast float %5653, %5654
  %5658 = fmul fast float %5653, %5655
  %5659 = fmul fast float %5653, %5656
  %5660 = fadd fast float %5657, %4327
  %5661 = fadd fast float %5658, %4328
  %5662 = fadd fast float %5659, %4350
  br i1 %4625, label %5663, label %5686

; <label>:5663                                    ; preds = %5599
  %5664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4013, float %5646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5668 = fadd fast float %5665, -5.000000e-01
  %5669 = fadd fast float %5666, -5.000000e-01
  %5670 = fadd fast float %5667, -5.000000e-01
  %5671 = fmul fast float %4327, 4.000000e+00
  %5672 = fmul fast float %5671, %5654
  %5673 = fmul fast float %5672, %5668
  %5674 = fmul fast float %4328, 4.000000e+00
  %5675 = fmul fast float %5674, %5655
  %5676 = fmul fast float %5675, %5669
  %5677 = fmul fast float %4350, 4.000000e+00
  %5678 = fmul fast float %5677, %5656
  %5679 = fmul fast float %5678, %5670
  %5680 = fadd fast float %5673, %5660
  %5681 = fadd fast float %5676, %5661
  %5682 = fadd fast float %5679, %5662
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5685 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  br label %5686

; <label>:5686                                    ; preds = %5663, %5599
  %5687 = phi float [ %5683, %5663 ], [ %5660, %5599 ]
  %5688 = phi float [ %5684, %5663 ], [ %5661, %5599 ]
  %5689 = phi float [ %5685, %5663 ], [ %5662, %5599 ]
  %5690 = fmul fast float %5611, 9.843750e-01
  %5691 = fadd fast float %5690, 7.812500e-03
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %5691, float %4615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 3
  %5695 = fmul fast float %5693, %4327
  %5696 = fmul fast float %5693, %4328
  %5697 = fmul fast float %5693, %4350
  %5698 = fadd fast float %5695, %5694
  %5699 = fadd fast float %5696, %5694
  %5700 = fadd fast float %5697, %5694
  br i1 %4625, label %5701, label %5724

; <label>:5701                                    ; preds = %5686
  %5702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %28, float %4013, float %5611, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5703 = extractvalue %dx.types.ResRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.ResRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.ResRet.f32 %5702, 2
  %5706 = fadd fast float %5703, -5.000000e-01
  %5707 = fadd fast float %5704, -5.000000e-01
  %5708 = fadd fast float %5705, -5.000000e-01
  %5709 = fmul fast float %4327, 4.000000e+00
  %5710 = fmul fast float %5709, %5654
  %5711 = fmul fast float %5710, %5706
  %5712 = fmul fast float %4328, 4.000000e+00
  %5713 = fmul fast float %5712, %5655
  %5714 = fmul fast float %5713, %5707
  %5715 = fmul fast float %4350, 4.000000e+00
  %5716 = fmul fast float %5715, %5656
  %5717 = fmul fast float %5716, %5708
  %5718 = fadd fast float %5711, %5698
  %5719 = fadd fast float %5714, %5699
  %5720 = fadd fast float %5717, %5700
  %5721 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5722 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5723 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  br label %5724

; <label>:5724                                    ; preds = %5701, %5686
  %5725 = phi float [ %5721, %5701 ], [ %5698, %5686 ]
  %5726 = phi float [ %5722, %5701 ], [ %5699, %5686 ]
  %5727 = phi float [ %5723, %5701 ], [ %5700, %5686 ]
  %5728 = call float @dx.op.binary.f32(i32 35, float %5726, float %5727)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 35, float %5725, float %5728)  ; FMax(a,b)
  %5730 = fsub fast float 1.000000e+00, %5729
  %5731 = fmul fast float %5687, %5645
  %5732 = fmul fast float %5688, %5645
  %5733 = fmul fast float %5689, %5645
  %5734 = fsub fast float 1.000000e+00, %5612
  %5735 = bitcast float %5734 to i32
  %5736 = sitofp i32 %5735 to float
  %5737 = fmul fast float %5736, 5.000000e+00
  %5738 = fadd fast float %5737, 0xC1EFBF8940000000
  %5739 = fptosi float %5738 to i32
  %5740 = bitcast i32 %5739 to float
  %5741 = fmul fast float %5740, %4014
  %5742 = fmul fast float %5730, %5741
  %5743 = fmul fast float %5742, %5514
  %5744 = fmul fast float %5742, %5515
  %5745 = fmul fast float %5742, %5516
  %5746 = fadd fast float %5743, %5731
  %5747 = fadd fast float %5744, %5732
  %5748 = fadd fast float %5745, %5733
  %5749 = fmul fast float %5617, %5600
  %5750 = fmul fast float %5749, %5730
  %5751 = fmul fast float %5617, %5601
  %5752 = fmul fast float %5751, %5730
  %5753 = fmul fast float %5617, %5602
  %5754 = fmul fast float %5753, %5730
  %5755 = fmul fast float %5749, %5746
  %5756 = fmul fast float %5751, %5747
  %5757 = fmul fast float %5753, %5748
  %5758 = fadd fast float %5750, %5498
  %5759 = fmul fast float %5758, %4010
  %5760 = fadd fast float %5752, %5499
  %5761 = fmul fast float %5760, %4010
  %5762 = fadd fast float %5754, %5500
  %5763 = fmul fast float %5762, %4010
  %5764 = fadd fast float %5755, %5541
  %5765 = fmul fast float %5764, %4010
  %5766 = fadd fast float %5756, %5544
  %5767 = fmul fast float %5766, %4010
  %5768 = fadd fast float %5757, %5547
  %5769 = fmul fast float %5768, %4010
  br label %5770

; <label>:5770                                    ; preds = %5724, %5592, %5494
  %5771 = phi float [ %5542, %5494 ], [ %5542, %5592 ], [ %5765, %5724 ]
  %5772 = phi float [ %5545, %5494 ], [ %5545, %5592 ], [ %5767, %5724 ]
  %5773 = phi float [ %5548, %5494 ], [ %5548, %5592 ], [ %5769, %5724 ]
  %5774 = phi float [ %5537, %5494 ], [ %5537, %5592 ], [ %5759, %5724 ]
  %5775 = phi float [ %5538, %5494 ], [ %5538, %5592 ], [ %5761, %5724 ]
  %5776 = phi float [ %5539, %5494 ], [ %5539, %5592 ], [ %5763, %5724 ]
  %5777 = call float @dx.op.unary.f32(i32 24, float %4324)  ; Sqrt(value)
  %5778 = call float @dx.op.unary.f32(i32 24, float %4325)  ; Sqrt(value)
  %5779 = call float @dx.op.unary.f32(i32 24, float %4326)  ; Sqrt(value)
  %5780 = fmul fast float %5777, %5774
  %5781 = fmul fast float %5778, %5775
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  br i1 %174, label %5784, label %5807

; <label>:5784                                    ; preds = %5770
  %5785 = fadd fast float %5776, %4016
  %5786 = fmul fast float %5785, %4017
  %5787 = fsub fast float 1.000000e+00, %4017
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5791 = fmul fast float %5790, %5788
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = fmul fast float %5793, %5520
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = fmul fast float %5795, %4348
  %5797 = fadd fast float %5781, %5780
  %5798 = fmul fast float %5783, %5797
  %5799 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5800 = fadd fast float %5791, %5786
  %5801 = fsub fast float %5800, %5794
  %5802 = fadd fast float %5801, %5796
  %5803 = fsub fast float %5802, %5799
  %5804 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5805 = fmul fast float %5803, %5804
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  br label %5823

; <label>:5807                                    ; preds = %5770
  %5808 = fmul fast float %5779, %5776
  %5809 = fmul fast float %5783, %5780
  %5810 = fmul fast float %5783, %5781
  %5811 = fmul fast float %5808, %5783
  %5812 = add i32 %34, 356
  %5813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.i32 %5813, 0
  %5815 = and i32 %5814, 32
  %5816 = icmp eq i32 %5815, 0
  br i1 %5816, label %5823, label %5817

; <label>:5817                                    ; preds = %5807
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = fmul fast float %5819, 0x3FE99999A0000000
  %5821 = fadd fast float %5819, %5809
  %5822 = fadd fast float %5820, %5811
  br label %5823

; <label>:5823                                    ; preds = %5817, %5807, %5784
  %5824 = phi float [ %5798, %5784 ], [ %5821, %5817 ], [ %5809, %5807 ]
  %5825 = phi float [ %5806, %5784 ], [ %5810, %5817 ], [ %5810, %5807 ]
  %5826 = phi float [ 1.000000e+00, %5784 ], [ %5822, %5817 ], [ %5811, %5807 ]
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = fmul fast float %5828, %5772
  %5830 = fmul fast float %5828, %5773
  %5831 = fadd fast float %5772, %5771
  %5832 = select i1 %174, float %5831, float %5771
  %5833 = fmul float %5832, %5828
  %5834 = select i1 %174, float 0.000000e+00, float %5829
  %5835 = select i1 %174, float 0.000000e+00, float %5830
  %5836 = fmul fast float %5824, %5777
  %5837 = fmul fast float %5825, %5778
  %5838 = fmul fast float %5826, %5779
  %5839 = fadd fast float %5833, %5836
  %5840 = fadd fast float %5834, %5837
  %5841 = fadd fast float %5835, %5838
  %5842 = select i1 %174, float %5825, float %5840
  %5843 = select i1 %174, float %5826, float %5841
  %5844 = call float @dx.op.binary.f32(i32 36, float %5839, float 3.225500e+04)  ; FMin(a,b)
  %5845 = call float @dx.op.binary.f32(i32 36, float %5842, float 3.225500e+04)  ; FMin(a,b)
  %5846 = call float @dx.op.binary.f32(i32 36, float %5843, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5844)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5845)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5846)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!44}
!dx.entryPoints = !{!45}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !35, !38}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!35 = !{!36, !37}
!36 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!37 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!38 = !{!39, !40, !41, !42, !43}
!39 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!40 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!41 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!42 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!43 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!44 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!45 = !{void ()* @ps_main, !"ps_main", !46, !4, !71}
!46 = !{!47, !69, null}
!47 = !{!48, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !66, !68}
!48 = !{i32 0, !"SV_Position", i8 9, i8 3, !49, i8 4, i32 1, i8 4, i32 0, i8 0, !50}
!49 = !{i32 0}
!50 = !{i32 3, i32 11}
!51 = !{i32 1, !"COLOR", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 1, i8 0, !52}
!52 = !{i32 3, i32 14}
!53 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 2, i8 0, !54}
!54 = !{i32 3, i32 3}
!55 = !{i32 3, !"NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 3, i8 0, !56}
!56 = !{i32 3, i32 7}
!57 = !{i32 4, !"TANGENT", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !58}
!58 = !{i32 3, i32 15}
!59 = !{i32 5, !"SH_RED", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !58}
!60 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 6, i8 0, !58}
!61 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 7, i8 0, !58}
!62 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !49, i8 2, i32 1, i8 2, i32 8, i8 0, !54}
!63 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 9, i8 0, !58}
!64 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !49, i8 1, i32 1, i8 4, i32 10, i8 0, !65}
!65 = !{i32 3, i32 13}
!66 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !49, i8 1, i32 1, i8 1, i32 11, i8 0, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !49, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !49, i8 0, i32 1, i8 4, i32 0, i8 0, !58}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

