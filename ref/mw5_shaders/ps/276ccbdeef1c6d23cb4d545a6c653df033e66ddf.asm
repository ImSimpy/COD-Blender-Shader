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
; shader hash: 73e5d5cec491d87b7d82f168d75e5523
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = fmul fast float %74, %68
  %76 = fmul fast float %74, %69
  %77 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %78 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %60, %77
  %84 = fmul fast float %83, %82
  %85 = fmul fast float %61, %77
  %86 = fmul fast float %85, %82
  %87 = fmul fast float %62, %77
  %88 = fmul fast float %87, %82
  %89 = fmul fast float %61, %58
  %90 = fmul fast float %62, %57
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %62, %56
  %93 = fmul fast float %60, %58
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %60, %57
  %96 = fmul fast float %61, %56
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %91, %59
  %99 = fmul fast float %94, %59
  %100 = fmul fast float %97, %59
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %75, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %76, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %70
  %135 = fmul fast float %131, %70
  %136 = fmul fast float %133, %70
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %75
  %141 = fmul fast float %139, %76
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %76
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %75
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %35, 156
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %35, 216
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %35, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = add i32 %35, 288
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 65535
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %212, 16
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = fmul fast float %214, 0x3F50624DE0000000
  %218 = fmul fast float %216, 0x3F50624DE0000000
  %219 = add i32 %35, 172
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = shl i32 %221, 4
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %221, 7
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %221, 22
  %229 = shl nuw nsw i32 %228, 5
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %35, 232
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %233, 8
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = lshr i32 %233, 16
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = add i32 %35, 52
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %35, 304
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fmul fast float %256, 0x3F50624DE0000000
  %260 = fmul fast float %258, 0x3F50624DE0000000
  %261 = add i32 %35, 188
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %35, 248
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %35, 68
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %35, 320
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = add i32 %35, 204
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = shl i32 %305, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %305, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %305, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %35, 264
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %317, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %317, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %35, 84
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %35, 336
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = add i32 %35, 348
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 32
  %349 = icmp eq i32 %348, 0
  %350 = and i32 %347, 64
  %351 = icmp eq i32 %350, 0
  %352 = and i32 %347, 128
  %353 = icmp eq i32 %352, 0
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 2
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %371, label %358

; <label>:358                                     ; preds = %175
  %359 = add i32 %35, 552
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %361, 0
  %363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %363, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = fmul fast float %365, %65
  %369 = fmul fast float %366, %66
  %370 = fmul fast float %367, %67
  br label %371

; <label>:371                                     ; preds = %358, %175
  %372 = phi float [ %67, %175 ], [ %370, %358 ]
  %373 = phi float [ %66, %175 ], [ %369, %358 ]
  %374 = phi float [ %65, %175 ], [ %368, %358 ]
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %398, label %379

; <label>:379                                     ; preds = %371
  %380 = add i32 %35, 44
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %374, float 1.000000e+00
  %386 = add i32 %35, 60
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %373, float 1.000000e+00
  %392 = add i32 %35, 76
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %372, float 1.000000e+00
  br label %398

; <label>:398                                     ; preds = %379, %371
  %399 = phi float [ %372, %371 ], [ %397, %379 ]
  %400 = phi float [ %373, %371 ], [ %391, %379 ]
  %401 = phi float [ %374, %371 ], [ %385, %379 ]
  %402 = lshr i32 %376, 20
  %403 = and i32 %402, 3
  %404 = add nuw nsw i32 %403, 1
  %405 = add i32 %35, 24
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %35, 28
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = or i32 %410, %407
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %871, label %413

; <label>:413                                     ; preds = %398
  %414 = and i32 %407, 262144
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %38, float 1.000000e+00
  %417 = select i1 %415, float %39, float 0.000000e+00
  %418 = select i1 %415, float %40, float 0.000000e+00
  %419 = select i1 %415, float %41, float 1.000000e+00
  %420 = select i1 %415, float %42, float %63
  %421 = select i1 %415, float %43, float %64
  %422 = add i32 %35, 284
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = lshr i32 %424, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fmul fast float %426, 0x3F50624DE0000000
  %428 = add i32 %35, 88
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 16
  %432 = and i32 %431, 255
  %433 = lshr i32 %430, 24
  %434 = add i32 %35, 292
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 65535
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %436, 16
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = add i32 %35, 32
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 22
  %445 = shl nuw nsw i32 %444, 5
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = shl i32 %443, 4
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %443, 7
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %455 = fmul fast float %454, 1.000000e+03
  %456 = fmul fast float %217, %455
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, %207
  %459 = fmul fast float %218, %455
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fadd fast float %460, %209
  %462 = fmul fast float %427, %455
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = fmul fast float %463, 0x401921FB60000000
  %465 = fadd fast float %464, %446
  %466 = call float @dx.op.unary.f32(i32 13, float %465)  ; Sin(value)
  %467 = call float @dx.op.unary.f32(i32 12, float %465)  ; Cos(value)
  %468 = fsub fast float -0.000000e+00, %466
  %469 = fadd fast float %420, -5.000000e-01
  %470 = fadd fast float %421, -5.000000e-01
  %471 = fmul fast float %438, %469
  %472 = fmul fast float %440, %470
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fadd fast float %472, 5.000000e-01
  %475 = fmul fast float %449, %473
  %476 = fmul fast float %452, %474
  %477 = fmul fast float %467, %475
  %478 = call float @dx.op.tertiary.f32(i32 46, float %468, float %476, float %477)  ; FMad(a,b,c)
  %479 = fmul fast float %466, %475
  %480 = call float @dx.op.tertiary.f32(i32 46, float %467, float %476, float %479)  ; FMad(a,b,c)
  %481 = fadd fast float %458, %478
  %482 = fadd fast float %461, %480
  %483 = icmp ugt i32 %432, 1
  %484 = icmp ugt i32 %430, 33554431
  %485 = or i1 %484, %483
  br i1 %485, label %486, label %511

; <label>:486                                     ; preds = %413
  %487 = add i32 %35, 228
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 16
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = fmul fast float %454, %491
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = mul nuw nsw i32 %432, %433
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %493, %495
  %497 = call float @dx.op.unary.f32(i32 27, float %496)  ; Round_ni(value)
  %498 = fptoui float %497 to i32
  %499 = urem i32 %498, %432
  %500 = udiv i32 %498, %433
  %501 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %503 = uitofp i32 %499 to float
  %504 = uitofp i32 %500 to float
  %505 = fadd fast float %501, %503
  %506 = fadd fast float %502, %504
  %507 = uitofp i32 %432 to float
  %508 = uitofp i32 %433 to float
  %509 = fdiv fast float %505, %507
  %510 = fdiv fast float %506, %508
  br label %511

; <label>:511                                     ; preds = %486, %413
  %512 = phi float [ %509, %486 ], [ %481, %413 ]
  %513 = phi float [ %510, %486 ], [ %482, %413 ]
  %514 = and i32 %407, 16
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %712, label %516

; <label>:516                                     ; preds = %511
  %517 = add i32 %35, 440
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = add i32 %519, 0
  %521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %521, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = and i32 %430, 255
  %528 = uitofp i32 %527 to float
  %529 = lshr i32 %430, 8
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %526, %528
  %533 = fadd fast float %532, %531
  %534 = fmul fast float %533, 0x3F70101000000000
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 512
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %547, label %539

; <label>:539                                     ; preds = %516
  %540 = add i32 %35, 520
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  br label %547

; <label>:547                                     ; preds = %539, %516
  %548 = phi float [ %546, %539 ], [ 1.000000e+00, %516 ]
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 33554432
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %659, label %553

; <label>:553                                     ; preds = %547
  %554 = add i32 %35, 224
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %35, 228
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 24
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = and i32 %567, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %567, 8
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = lshr i32 %567, 16
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = add i32 %35, 220
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = lshr i32 %584, 24
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = and i32 %584, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = lshr i32 %584, 8
  %592 = and i32 %591, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = lshr i32 %584, 16
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = bitcast float %523 to i32
  %600 = ashr i32 %599, 1
  %601 = sub nsw i32 1597463174, %600
  %602 = bitcast i32 %601 to float
  %603 = fmul fast float %523, 5.000000e-01
  %604 = fmul fast float %602, %602
  %605 = fmul fast float %604, %603
  %606 = fsub fast float 1.500000e+00, %605
  %607 = fmul fast float %602, %523
  %608 = fmul fast float %607, %606
  %609 = bitcast float %524 to i32
  %610 = ashr i32 %609, 1
  %611 = sub nsw i32 1597463174, %610
  %612 = bitcast i32 %611 to float
  %613 = fmul fast float %524, 5.000000e-01
  %614 = fmul fast float %612, %612
  %615 = fmul fast float %614, %613
  %616 = fsub fast float 1.500000e+00, %615
  %617 = fmul fast float %612, %524
  %618 = fmul fast float %617, %616
  %619 = bitcast float %525 to i32
  %620 = ashr i32 %619, 1
  %621 = sub nsw i32 1597463174, %620
  %622 = bitcast i32 %621 to float
  %623 = fmul fast float %525, 5.000000e-01
  %624 = fmul fast float %622, %622
  %625 = fmul fast float %624, %623
  %626 = fsub fast float 1.500000e+00, %625
  %627 = fmul fast float %622, %525
  %628 = fmul fast float %627, %626
  %629 = fsub fast float %608, %590
  %630 = fsub fast float %618, %594
  %631 = fsub fast float %628, %598
  %632 = fmul fast float %629, %558
  %633 = fmul fast float %630, %560
  %634 = fmul fast float %631, %565
  %635 = fadd fast float %632, %573
  %636 = fadd fast float %633, %577
  %637 = fadd fast float %634, %581
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fmul fast float %640, %640
  %644 = fsub fast float %641, %523
  %645 = fsub fast float %642, %524
  %646 = fsub fast float %643, %525
  %647 = fmul fast float %644, %548
  %648 = fmul fast float %645, %548
  %649 = fmul fast float %646, %548
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %649, %525
  %653 = fadd fast float %570, %534
  %654 = fsub fast float %653, %587
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = fsub fast float %655, %534
  %657 = fmul fast float %656, %548
  %658 = fadd fast float %657, %534
  br label %712

; <label>:659                                     ; preds = %547
  %660 = and i32 %550, 134217728
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %696, label %662

; <label>:662                                     ; preds = %659
  %663 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %665 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fadd fast float %665, -5.000000e-01
  %669 = fmul fast float %666, %548
  %670 = fmul fast float %667, %548
  %671 = fmul fast float %668, %548
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = fadd fast float %671, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %525)  ; Sqrt(value)
  %678 = fmul fast float %672, 2.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %675
  %681 = fadd fast float %680, %678
  %682 = fmul fast float %681, %675
  %683 = fmul fast float %673, 2.000000e+00
  %684 = fsub fast float 1.000000e+00, %683
  %685 = fmul fast float %684, %676
  %686 = fadd fast float %685, %683
  %687 = fmul fast float %686, %676
  %688 = fmul fast float %674, 2.000000e+00
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fmul fast float %689, %677
  %691 = fadd fast float %690, %688
  %692 = fmul fast float %691, %677
  %693 = fmul fast float %682, %682
  %694 = fmul fast float %687, %687
  %695 = fmul fast float %692, %692
  br label %712

; <label>:696                                     ; preds = %659
  %697 = fmul fast float %194, %194
  %698 = fmul fast float %198, %198
  %699 = fmul fast float %202, %202
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fadd fast float %699, -1.000000e+00
  %703 = fmul fast float %548, %700
  %704 = fmul fast float %548, %701
  %705 = fmul fast float %548, %702
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fadd fast float %705, 1.000000e+00
  %709 = fmul fast float %706, %523
  %710 = fmul fast float %707, %524
  %711 = fmul fast float %708, %525
  br label %712

; <label>:712                                     ; preds = %696, %662, %553, %511
  %713 = phi float [ %658, %553 ], [ %534, %662 ], [ %534, %696 ], [ 0x3FA23C0BE0000000, %511 ]
  %714 = phi float [ %650, %553 ], [ %693, %662 ], [ %709, %696 ], [ 1.000000e+00, %511 ]
  %715 = phi float [ %651, %553 ], [ %694, %662 ], [ %710, %696 ], [ 1.000000e+00, %511 ]
  %716 = phi float [ %652, %553 ], [ %695, %662 ], [ %711, %696 ], [ 1.000000e+00, %511 ]
  %717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.i32 %717, 1
  %719 = and i32 %718, 1
  %720 = icmp ne i32 %719, 0
  %721 = add i32 %35, 356
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 32
  %725 = icmp ne i32 %724, 0
  %726 = and i1 %720, %725
  %727 = select i1 %726, float 1.000000e+00, float %714
  %728 = select i1 %726, float 0x3FD3333340000000, float %715
  %729 = select i1 %726, float 0x3FD3333340000000, float %716
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 32
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %806, label %734

; <label>:734                                     ; preds = %712
  %735 = add i32 %35, 92
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %35, 456
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = and i32 %737, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %737, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = lshr i32 %737, 16
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101000000000
  %757 = fmul fast float %744, %749
  %758 = fadd fast float %757, %752
  %759 = fmul fast float %758, 0x3F70101000000000
  %760 = fadd fast float %745, -5.000000e-01
  %761 = fadd fast float %747, -5.000000e-01
  %762 = fmul fast float %760, %756
  %763 = fmul fast float %761, %756
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fmul fast float %764, 2.000000e+00
  %767 = fadd fast float %766, -1.000000e+00
  %768 = fmul fast float %765, 2.000000e+00
  %769 = fadd fast float %768, -1.000000e+00
  %770 = fadd fast float %767, %769
  %771 = fmul fast float %770, 5.000000e-01
  %772 = fsub fast float %767, %769
  %773 = fmul fast float %772, 5.000000e-01
  %774 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %775 = fsub fast float 1.000000e+00, %774
  %776 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %777 = fsub fast float %775, %776
  %778 = call float @dx.op.dot3.f32(i32 55, float %771, float %773, float %777, float %771, float %773, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = call float @dx.op.unary.f32(i32 25, float %778)  ; Rsqrt(value)
  %780 = fmul fast float %771, %779
  %781 = fmul fast float %773, %779
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 67108864
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %802, label %786

; <label>:786                                     ; preds = %734
  %787 = add i32 %35, 280
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 65535
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 65535
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = lshr i32 %789, 16
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = fsub fast float %759, %797
  %799 = fmul fast float %798, %791
  %800 = fadd fast float %799, %795
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br label %802

; <label>:802                                     ; preds = %786, %734
  %803 = phi float [ %801, %786 ], [ %759, %734 ]
  %804 = call float @dx.op.dot2.f32(i32 54, float %780, float %781, float %416, float %417)  ; Dot2(ax,ay,bx,by)
  %805 = call float @dx.op.dot2.f32(i32 54, float %780, float %781, float %418, float %419)  ; Dot2(ax,ay,bx,by)
  br label %806

; <label>:806                                     ; preds = %802, %712
  %807 = phi float [ %803, %802 ], [ 0x3FD6666660000000, %712 ]
  %808 = phi float [ %804, %802 ], [ 0.000000e+00, %712 ]
  %809 = phi float [ %805, %802 ], [ 0.000000e+00, %712 ]
  %810 = phi float [ %746, %802 ], [ 1.000000e+00, %712 ]
  %811 = add i32 %35, 160
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 22
  %815 = shl nuw nsw i32 %814, 5
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 64
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %854, label %821

; <label>:821                                     ; preds = %806
  %822 = add i32 %35, 472
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 131072
  %830 = icmp eq i32 %829, 0
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = fmul fast float %832, %182
  %836 = fmul fast float %833, %185
  %837 = fmul fast float %834, %188
  br i1 %830, label %844, label %838

; <label>:838                                     ; preds = %821
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = fmul fast float %840, %835
  %842 = fmul fast float %840, %836
  %843 = fmul fast float %840, %837
  br label %844

; <label>:844                                     ; preds = %838, %821
  %845 = phi float [ %841, %838 ], [ %835, %821 ]
  %846 = phi float [ %842, %838 ], [ %836, %821 ]
  %847 = phi float [ %843, %838 ], [ %837, %821 ]
  %848 = fmul fast float %845, %816
  %849 = select i1 %176, float %848, float %845
  %850 = call float @dx.op.dot3.f32(i32 55, float %849, float %846, float %847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = select i1 %176, float 0.000000e+00, float %845
  %852 = select i1 %176, float %850, float %846
  %853 = select i1 %176, float 0.000000e+00, float %847
  br label %854

; <label>:854                                     ; preds = %844, %806
  %855 = phi float [ %851, %844 ], [ 0.000000e+00, %806 ]
  %856 = phi float [ %852, %844 ], [ 0.000000e+00, %806 ]
  %857 = phi float [ %853, %844 ], [ 0.000000e+00, %806 ]
  %858 = add i32 %35, 96
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = lshr i32 %860, 8
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = fmul fast float %865, %866
  %868 = fadd fast float %867, %862
  %869 = fmul fast float %868, 0x3F70101020000000
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  br label %871

; <label>:871                                     ; preds = %854, %398
  %872 = phi float [ 0.000000e+00, %398 ], [ %808, %854 ]
  %873 = phi float [ 0.000000e+00, %398 ], [ %809, %854 ]
  %874 = phi float [ 0.000000e+00, %398 ], [ %727, %854 ]
  %875 = phi float [ 0.000000e+00, %398 ], [ %728, %854 ]
  %876 = phi float [ 0.000000e+00, %398 ], [ %729, %854 ]
  %877 = phi float [ 0.000000e+00, %398 ], [ %855, %854 ]
  %878 = phi float [ 0.000000e+00, %398 ], [ %856, %854 ]
  %879 = phi float [ 0.000000e+00, %398 ], [ %857, %854 ]
  %880 = phi float [ 0.000000e+00, %398 ], [ %713, %854 ]
  %881 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %854 ]
  %882 = phi float [ 0.000000e+00, %398 ], [ %807, %854 ]
  %883 = phi float [ 0.000000e+00, %398 ], [ %810, %854 ]
  %884 = phi float [ 0.000000e+00, %398 ], [ %870, %854 ]
  br i1 %349, label %1726, label %885

; <label>:885                                     ; preds = %871
  %886 = icmp ult i32 %404, 2
  %887 = add i32 %35, 40
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %35, 44
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = or i32 %892, %889
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %1726, label %895

; <label>:895                                     ; preds = %885
  %896 = and i32 %889, 262144
  %897 = icmp ne i32 %896, 0
  %898 = select i1 %897, float %38, float 1.000000e+00
  %899 = select i1 %897, float %39, float 0.000000e+00
  %900 = select i1 %897, float %40, float 0.000000e+00
  %901 = select i1 %897, float %41, float 1.000000e+00
  %902 = select i1 %897, float %42, float %63
  %903 = select i1 %897, float %43, float %64
  %904 = add i32 %35, 300
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = lshr i32 %906, 16
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = fmul fast float %908, 0x3F50624DE0000000
  %910 = add i32 %35, 104
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 16
  %914 = and i32 %913, 255
  %915 = lshr i32 %912, 24
  %916 = add i32 %35, 308
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %918, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = add i32 %35, 48
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = lshr i32 %925, 22
  %927 = shl nuw nsw i32 %926, 5
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = shl i32 %925, 4
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = lshr i32 %925, 7
  %933 = and i32 %932, 32752
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %937 = fmul fast float %936, 1.000000e+03
  %938 = fmul fast float %259, %937
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = fadd fast float %939, %249
  %941 = fmul fast float %260, %937
  %942 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %943 = fadd fast float %942, %251
  %944 = fmul fast float %909, %937
  %945 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %946 = fmul fast float %945, 0x401921FB60000000
  %947 = fadd fast float %946, %928
  %948 = call float @dx.op.unary.f32(i32 13, float %947)  ; Sin(value)
  %949 = call float @dx.op.unary.f32(i32 12, float %947)  ; Cos(value)
  %950 = fsub fast float -0.000000e+00, %948
  %951 = fadd fast float %902, -5.000000e-01
  %952 = fadd fast float %903, -5.000000e-01
  %953 = fmul fast float %920, %951
  %954 = fmul fast float %922, %952
  %955 = fadd fast float %953, 5.000000e-01
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fmul fast float %931, %955
  %958 = fmul fast float %934, %956
  %959 = fmul fast float %949, %957
  %960 = call float @dx.op.tertiary.f32(i32 46, float %950, float %958, float %959)  ; FMad(a,b,c)
  %961 = fmul fast float %948, %957
  %962 = call float @dx.op.tertiary.f32(i32 46, float %949, float %958, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %940, %960
  %964 = fadd fast float %943, %962
  %965 = icmp ugt i32 %914, 1
  %966 = icmp ugt i32 %912, 33554431
  %967 = or i1 %966, %965
  br i1 %967, label %968, label %993

; <label>:968                                     ; preds = %895
  %969 = add i32 %35, 244
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = fmul fast float %936, %973
  %975 = call float @dx.op.unary.f32(i32 22, float %974)  ; Frc(value)
  %976 = mul nuw nsw i32 %914, %915
  %977 = uitofp i32 %976 to float
  %978 = fmul fast float %975, %977
  %979 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %980 = fptoui float %979 to i32
  %981 = urem i32 %980, %914
  %982 = udiv i32 %980, %915
  %983 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %984 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %985 = uitofp i32 %981 to float
  %986 = uitofp i32 %982 to float
  %987 = fadd fast float %983, %985
  %988 = fadd fast float %984, %986
  %989 = uitofp i32 %914 to float
  %990 = uitofp i32 %915 to float
  %991 = fdiv fast float %987, %989
  %992 = fdiv fast float %988, %990
  br label %993

; <label>:993                                     ; preds = %968, %895
  %994 = phi float [ %991, %968 ], [ %963, %895 ]
  %995 = phi float [ %992, %968 ], [ %964, %895 ]
  %996 = and i32 %889, 16777216
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1107, label %998

; <label>:998                                     ; preds = %993
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = fadd fast float %1000, %134
  %1004 = fadd fast float %1001, %135
  %1005 = fadd fast float %1002, %136
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = icmp eq i32 %36, 65535
  br i1 %1009, label %1104, label %1010

; <label>:1010                                    ; preds = %998
  %1011 = lshr i32 %36, 1
  %1012 = shl i32 %1011, 2
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %36, 1
  %1016 = icmp ne i32 %1015, 0
  %1017 = lshr i32 %1014, 16
  %1018 = and i32 %1014, 65535
  %1019 = select i1 %1016, i32 %1017, i32 %1018
  %1020 = icmp eq i32 %1019, 65535
  br i1 %1020, label %1100, label %1021

; <label>:1021                                    ; preds = %1010
  %1022 = mul nuw nsw i32 %1019, 40
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = add nuw nsw i32 %1022, 12
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = add nuw nsw i32 %1022, 24
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = add nuw nsw i32 %1022, 36
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = fsub fast float %1003, %1024
  %1041 = fsub fast float %1004, %1025
  %1042 = fsub fast float %1005, %1026
  %1043 = fmul fast float %1039, %1040
  %1044 = fmul fast float %1039, %1041
  %1045 = fmul fast float %1039, %1042
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fmul fast float %1049, %1029
  %1053 = fmul fast float %1050, %1030
  %1054 = fmul fast float %1051, %1031
  %1055 = shl i32 %36, 2
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = add i32 %1057, 0
  %1059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1062 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1059, %dx.types.Handle %30, float %1060, float %1061, float %1062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = fmul fast float %1064, 1.023000e+03
  %1068 = fmul fast float %1065, 1.023000e+03
  %1069 = fmul fast float %1066, 1.023000e+03
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = fsub fast float %1043, %1046
  %1077 = fsub fast float %1044, %1047
  %1078 = fsub fast float %1045, %1048
  %1079 = fmul fast float %1076, 7.500000e-01
  %1080 = fmul fast float %1077, 7.500000e-01
  %1081 = fmul fast float %1078, 7.500000e-01
  %1082 = fadd fast float %1046, 1.250000e-01
  %1083 = fadd fast float %1082, %1079
  %1084 = fadd fast float %1083, %1073
  %1085 = fadd fast float %1047, 1.250000e-01
  %1086 = fadd fast float %1085, %1080
  %1087 = fadd fast float %1086, %1074
  %1088 = fadd fast float %1048, 1.250000e-01
  %1089 = fadd fast float %1088, %1081
  %1090 = fadd fast float %1089, %1075
  %1091 = fmul fast float %1084, %1034
  %1092 = fmul fast float %1087, %1035
  %1093 = fmul fast float %1090, %1036
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %1095, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %28, float %1091, float %1092, float %1093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  br label %1100

; <label>:1100                                    ; preds = %1021, %1010
  %1101 = phi float [ %1099, %1021 ], [ -1.000000e+00, %1010 ]
  %1102 = fadd fast float %1101, %1008
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  br label %1104

; <label>:1104                                    ; preds = %1100, %998
  %1105 = phi float [ %1103, %1100 ], [ %1008, %998 ]
  %1106 = fmul fast float %1105, %401
  br label %1107

; <label>:1107                                    ; preds = %1104, %993
  %1108 = phi float [ %1106, %1104 ], [ %401, %993 ]
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 256
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1159, label %1113

; <label>:1113                                    ; preds = %1107
  %1114 = add i32 %35, 508
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = add i32 %35, 116
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = shl i32 %1123, 4
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = lshr i32 %1123, 7
  %1128 = and i32 %1127, 32752
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  %1130 = fsub fast float 1.000000e+00, %1108
  %1131 = call float @dx.op.binary.f32(i32 35, float %1130, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1132 = bitcast float %1108 to i32
  %1133 = sitofp i32 %1132 to float
  %1134 = fadd fast float %1133, 0xC1CFBF8940000000
  %1135 = fmul fast float %1129, %1134
  %1136 = fadd fast float %1135, 0x41CFBF8940000000
  %1137 = fptosi float %1136 to i32
  %1138 = bitcast i32 %1137 to float
  %1139 = bitcast float %1131 to i32
  %1140 = sitofp i32 %1139 to float
  %1141 = fadd fast float %1140, 0xC1CFBF8940000000
  %1142 = fmul fast float %1141, %1129
  %1143 = fadd fast float %1142, 0x41CFBF8940000000
  %1144 = fptosi float %1143 to i32
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1138, %1126
  %1147 = fmul fast float %1145, %1126
  %1148 = fsub fast float %1131, %1146
  %1149 = fadd fast float %1147, %1131
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1152 = fsub fast float %1120, %1150
  %1153 = fsub fast float %1151, %1150
  %1154 = bitcast float %1153 to i32
  %1155 = sub nsw i32 2129859010, %1154
  %1156 = bitcast i32 %1155 to float
  %1157 = fmul fast float %1156, %1152
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  br label %1159

; <label>:1159                                    ; preds = %1113, %1107
  %1160 = phi float [ %1158, %1113 ], [ %1108, %1107 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 128
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %35, 492
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 524288
  %1176 = icmp ne i32 %1175, 0
  %1177 = fcmp fast ogt float %1172, 0x3FE0101020000000
  %1178 = select i1 %1177, float 1.000000e+00, float 0.000000e+00
  %1179 = select i1 %1176, float %1178, float %1172
  %1180 = fmul fast float %1179, %1160
  br label %1181

; <label>:1181                                    ; preds = %1165, %1159
  %1182 = phi float [ %1180, %1165 ], [ %1160, %1159 ]
  %1183 = fcmp fast ult float %1182, 0x3F70101020000000
  br i1 %1183, label %1726, label %1184

; <label>:1184                                    ; preds = %1181
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 16
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1387, label %1189

; <label>:1189                                    ; preds = %1184
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %35, 444
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = add i32 %1194, 0
  %1196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1196, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = and i32 %1191, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = lshr i32 %1191, 8
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1201, %1203
  %1208 = fadd fast float %1207, %1206
  %1209 = fmul fast float %1208, 0x3F70101000000000
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 512
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1222, label %1214

; <label>:1214                                    ; preds = %1189
  %1215 = add i32 %35, 524
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  br label %1222

; <label>:1222                                    ; preds = %1214, %1189
  %1223 = phi float [ %1221, %1214 ], [ 1.000000e+00, %1189 ]
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 33554432
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1334, label %1228

; <label>:1228                                    ; preds = %1222
  %1229 = add i32 %35, 240
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 65535
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = lshr i32 %1231, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = add i32 %35, 244
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = lshr i32 %1242, 24
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = and i32 %1242, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = lshr i32 %1242, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = lshr i32 %1242, 16
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = add i32 %35, 236
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = lshr i32 %1259, 24
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = and i32 %1259, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = lshr i32 %1259, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = lshr i32 %1259, 16
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = bitcast float %1198 to i32
  %1275 = ashr i32 %1274, 1
  %1276 = sub nsw i32 1597463174, %1275
  %1277 = bitcast i32 %1276 to float
  %1278 = fmul fast float %1198, 5.000000e-01
  %1279 = fmul fast float %1277, %1277
  %1280 = fmul fast float %1279, %1278
  %1281 = fsub fast float 1.500000e+00, %1280
  %1282 = fmul fast float %1277, %1198
  %1283 = fmul fast float %1282, %1281
  %1284 = bitcast float %1199 to i32
  %1285 = ashr i32 %1284, 1
  %1286 = sub nsw i32 1597463174, %1285
  %1287 = bitcast i32 %1286 to float
  %1288 = fmul fast float %1199, 5.000000e-01
  %1289 = fmul fast float %1287, %1287
  %1290 = fmul fast float %1289, %1288
  %1291 = fsub fast float 1.500000e+00, %1290
  %1292 = fmul fast float %1287, %1199
  %1293 = fmul fast float %1292, %1291
  %1294 = bitcast float %1200 to i32
  %1295 = ashr i32 %1294, 1
  %1296 = sub nsw i32 1597463174, %1295
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1200, 5.000000e-01
  %1299 = fmul fast float %1297, %1297
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float 1.500000e+00, %1300
  %1302 = fmul fast float %1297, %1200
  %1303 = fmul fast float %1302, %1301
  %1304 = fsub fast float %1283, %1265
  %1305 = fsub fast float %1293, %1269
  %1306 = fsub fast float %1303, %1273
  %1307 = fmul fast float %1304, %1233
  %1308 = fmul fast float %1305, %1235
  %1309 = fmul fast float %1306, %1240
  %1310 = fadd fast float %1307, %1248
  %1311 = fadd fast float %1308, %1252
  %1312 = fadd fast float %1309, %1256
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1315 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1316 = fmul fast float %1313, %1313
  %1317 = fmul fast float %1314, %1314
  %1318 = fmul fast float %1315, %1315
  %1319 = fsub fast float %1316, %1198
  %1320 = fsub fast float %1317, %1199
  %1321 = fsub fast float %1318, %1200
  %1322 = fmul fast float %1319, %1223
  %1323 = fmul fast float %1320, %1223
  %1324 = fmul fast float %1321, %1223
  %1325 = fadd fast float %1322, %1198
  %1326 = fadd fast float %1323, %1199
  %1327 = fadd fast float %1324, %1200
  %1328 = fadd fast float %1245, %1209
  %1329 = fsub fast float %1328, %1262
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fsub fast float %1330, %1209
  %1332 = fmul fast float %1331, %1223
  %1333 = fadd fast float %1332, %1209
  br label %1387

; <label>:1334                                    ; preds = %1222
  %1335 = and i32 %1225, 134217728
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1371, label %1337

; <label>:1337                                    ; preds = %1334
  %1338 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1340 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1341 = fadd fast float %1338, -5.000000e-01
  %1342 = fadd fast float %1339, -5.000000e-01
  %1343 = fadd fast float %1340, -5.000000e-01
  %1344 = fmul fast float %1341, %1223
  %1345 = fmul fast float %1342, %1223
  %1346 = fmul fast float %1343, %1223
  %1347 = fadd fast float %1344, 5.000000e-01
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = fadd fast float %1346, 5.000000e-01
  %1350 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %1200)  ; Sqrt(value)
  %1353 = fmul fast float %1347, 2.000000e+00
  %1354 = fsub fast float 1.000000e+00, %1353
  %1355 = fmul fast float %1354, %1350
  %1356 = fadd fast float %1355, %1353
  %1357 = fmul fast float %1356, %1350
  %1358 = fmul fast float %1348, 2.000000e+00
  %1359 = fsub fast float 1.000000e+00, %1358
  %1360 = fmul fast float %1359, %1351
  %1361 = fadd fast float %1360, %1358
  %1362 = fmul fast float %1361, %1351
  %1363 = fmul fast float %1349, 2.000000e+00
  %1364 = fsub fast float 1.000000e+00, %1363
  %1365 = fmul fast float %1364, %1352
  %1366 = fadd fast float %1365, %1363
  %1367 = fmul fast float %1366, %1352
  %1368 = fmul fast float %1357, %1357
  %1369 = fmul fast float %1362, %1362
  %1370 = fmul fast float %1367, %1367
  br label %1387

; <label>:1371                                    ; preds = %1334
  %1372 = fmul fast float %236, %236
  %1373 = fmul fast float %240, %240
  %1374 = fmul fast float %244, %244
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fadd fast float %1374, -1.000000e+00
  %1378 = fmul fast float %1223, %1375
  %1379 = fmul fast float %1223, %1376
  %1380 = fmul fast float %1223, %1377
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fadd fast float %1380, 1.000000e+00
  %1384 = fmul fast float %1381, %1198
  %1385 = fmul fast float %1382, %1199
  %1386 = fmul fast float %1383, %1200
  br label %1387

; <label>:1387                                    ; preds = %1371, %1337, %1228, %1184
  %1388 = phi float [ %1333, %1228 ], [ %1209, %1337 ], [ %1209, %1371 ], [ 0x3FA23C0BE0000000, %1184 ]
  %1389 = phi float [ %1325, %1228 ], [ %1368, %1337 ], [ %1384, %1371 ], [ 1.000000e+00, %1184 ]
  %1390 = phi float [ %1326, %1228 ], [ %1369, %1337 ], [ %1385, %1371 ], [ 1.000000e+00, %1184 ]
  %1391 = phi float [ %1327, %1228 ], [ %1370, %1337 ], [ %1386, %1371 ], [ 1.000000e+00, %1184 ]
  %1392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.i32 %1392, 1
  %1394 = and i32 %1393, 1
  %1395 = icmp ne i32 %1394, 0
  %1396 = add i32 %35, 356
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 32
  %1400 = icmp ne i32 %1399, 0
  %1401 = and i1 %1395, %1400
  %1402 = select i1 %1401, float 1.000000e+00, float %1389
  %1403 = select i1 %1401, float 0x3FD3333340000000, float %1390
  %1404 = select i1 %1401, float 0x3FD3333340000000, float %1391
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 32
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1481, label %1409

; <label>:1409                                    ; preds = %1387
  %1410 = add i32 %35, 108
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %35, 460
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = extractvalue %dx.types.ResRet.f32 %1418, 3
  %1423 = and i32 %1412, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1412, 8
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = lshr i32 %1412, 16
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fmul fast float %1419, %1424
  %1433 = fadd fast float %1432, %1427
  %1434 = fmul fast float %1433, 0x3F70101000000000
  %1435 = fadd fast float %1420, -5.000000e-01
  %1436 = fadd fast float %1422, -5.000000e-01
  %1437 = fmul fast float %1435, %1431
  %1438 = fmul fast float %1436, %1431
  %1439 = fadd fast float %1437, 5.000000e-01
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fmul fast float %1439, 2.000000e+00
  %1442 = fadd fast float %1441, -1.000000e+00
  %1443 = fmul fast float %1440, 2.000000e+00
  %1444 = fadd fast float %1443, -1.000000e+00
  %1445 = fadd fast float %1442, %1444
  %1446 = fmul fast float %1445, 5.000000e-01
  %1447 = fsub fast float %1442, %1444
  %1448 = fmul fast float %1447, 5.000000e-01
  %1449 = call float @dx.op.unary.f32(i32 6, float %1446)  ; FAbs(value)
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1452 = fsub fast float %1450, %1451
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1448, float %1452, float %1446, float %1448, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 25, float %1453)  ; Rsqrt(value)
  %1455 = fmul fast float %1446, %1454
  %1456 = fmul fast float %1448, %1454
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 67108864
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1477, label %1461

; <label>:1461                                    ; preds = %1409
  %1462 = add i32 %35, 296
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 65535
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 65535
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = lshr i32 %1464, 16
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = fsub fast float %1434, %1472
  %1474 = fmul fast float %1473, %1466
  %1475 = fadd fast float %1474, %1470
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br label %1477

; <label>:1477                                    ; preds = %1461, %1409
  %1478 = phi float [ %1476, %1461 ], [ %1434, %1409 ]
  %1479 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %898, float %899)  ; Dot2(ax,ay,bx,by)
  %1480 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %900, float %901)  ; Dot2(ax,ay,bx,by)
  br label %1481

; <label>:1481                                    ; preds = %1477, %1387
  %1482 = phi float [ %1478, %1477 ], [ 0x3FD6666660000000, %1387 ]
  %1483 = phi float [ %1479, %1477 ], [ 0.000000e+00, %1387 ]
  %1484 = phi float [ %1480, %1477 ], [ 0.000000e+00, %1387 ]
  %1485 = phi float [ %1421, %1477 ], [ 1.000000e+00, %1387 ]
  %1486 = add i32 %35, 176
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = lshr i32 %1488, 22
  %1490 = shl nuw nsw i32 %1489, 5
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 64
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1529, label %1496

; <label>:1496                                    ; preds = %1481
  %1497 = add i32 %35, 476
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %1499, 0
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 131072
  %1505 = icmp eq i32 %1504, 0
  %1506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1501, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.f32 %1506, 2
  %1510 = fmul fast float %1507, %224
  %1511 = fmul fast float %1508, %227
  %1512 = fmul fast float %1509, %230
  br i1 %1505, label %1519, label %1513

; <label>:1513                                    ; preds = %1496
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = fmul fast float %1515, %1510
  %1517 = fmul fast float %1515, %1511
  %1518 = fmul fast float %1515, %1512
  br label %1519

; <label>:1519                                    ; preds = %1513, %1496
  %1520 = phi float [ %1516, %1513 ], [ %1510, %1496 ]
  %1521 = phi float [ %1517, %1513 ], [ %1511, %1496 ]
  %1522 = phi float [ %1518, %1513 ], [ %1512, %1496 ]
  %1523 = fmul fast float %1520, %1491
  %1524 = select i1 %176, float %1523, float %1520
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1524, float %1521, float %1522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = select i1 %176, float 0.000000e+00, float %1520
  %1527 = select i1 %176, float %1525, float %1521
  %1528 = select i1 %176, float 0.000000e+00, float %1522
  br label %1529

; <label>:1529                                    ; preds = %1519, %1481
  %1530 = phi float [ %1526, %1519 ], [ 0.000000e+00, %1481 ]
  %1531 = phi float [ %1527, %1519 ], [ 0.000000e+00, %1481 ]
  %1532 = phi float [ %1528, %1519 ], [ 0.000000e+00, %1481 ]
  %1533 = add i32 %35, 112
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = lshr i32 %1535, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1403, float %1404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = fmul fast float %1540, %1541
  %1543 = fadd fast float %1542, %1537
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  br i1 %886, label %1546, label %1554

; <label>:1546                                    ; preds = %1529
  %1547 = fsub fast float 1.000000e+00, %1182
  %1548 = fmul fast float %1547, %874
  %1549 = fmul fast float %1547, %875
  %1550 = fmul fast float %1547, %876
  %1551 = fmul fast float %1547, %877
  %1552 = fmul fast float %1547, %878
  %1553 = fmul fast float %1547, %879
  br label %1554

; <label>:1554                                    ; preds = %1546, %1529
  %1555 = phi float [ %1548, %1546 ], [ %874, %1529 ]
  %1556 = phi float [ %1549, %1546 ], [ %875, %1529 ]
  %1557 = phi float [ %1550, %1546 ], [ %876, %1529 ]
  %1558 = phi float [ %1551, %1546 ], [ %877, %1529 ]
  %1559 = phi float [ %1552, %1546 ], [ %878, %1529 ]
  %1560 = phi float [ %1553, %1546 ], [ %879, %1529 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 3
  %1564 = icmp eq i32 %1563, 3
  br i1 %1564, label %1643, label %1565

; <label>:1565                                    ; preds = %1554
  %1566 = and i32 %1562, 16
  %1567 = icmp ne i32 %1566, 0
  %1568 = select i1 %1567, float %1182, float 0.000000e+00
  %1569 = icmp eq i32 %1563, 0
  br i1 %1569, label %1570, label %1598

; <label>:1570                                    ; preds = %1565
  %1571 = and i32 %1562, 64
  %1572 = icmp ne i32 %1571, 0
  %1573 = select i1 %1572, float %1182, float 0.000000e+00
  %1574 = fsub fast float %1402, %1555
  %1575 = fsub fast float %1403, %1556
  %1576 = fsub fast float %1404, %1557
  %1577 = fmul fast float %1568, %1574
  %1578 = fmul fast float %1568, %1575
  %1579 = fmul fast float %1568, %1576
  %1580 = fadd fast float %1577, %1555
  %1581 = fadd fast float %1578, %1556
  %1582 = fadd fast float %1579, %1557
  %1583 = fsub fast float %1388, %880
  %1584 = fmul fast float %1568, %1583
  %1585 = fadd fast float %1584, %880
  %1586 = fsub fast float %1530, %1558
  %1587 = fsub fast float %1531, %1559
  %1588 = fsub fast float %1532, %1560
  %1589 = fmul fast float %1573, %1586
  %1590 = fmul fast float %1573, %1587
  %1591 = fmul fast float %1573, %1588
  %1592 = fadd fast float %1589, %1558
  %1593 = fadd fast float %1590, %1559
  %1594 = fadd fast float %1591, %1560
  %1595 = fsub fast float %1545, %884
  %1596 = fmul fast float %1568, %1595
  %1597 = fadd fast float %1596, %884
  br label %1643

; <label>:1598                                    ; preds = %1565
  %1599 = icmp eq i32 %1563, 1
  br i1 %1599, label %1600, label %1613

; <label>:1600                                    ; preds = %1598
  %1601 = fadd fast float %1402, -1.000000e+00
  %1602 = fadd fast float %1403, -1.000000e+00
  %1603 = fadd fast float %1404, -1.000000e+00
  %1604 = fmul fast float %1568, %1601
  %1605 = fmul fast float %1568, %1602
  %1606 = fmul fast float %1568, %1603
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1608, %1556
  %1612 = fmul fast float %1609, %1557
  br label %1643

; <label>:1613                                    ; preds = %1598
  %1614 = icmp eq i32 %1563, 2
  br i1 %1614, label %1615, label %1643

; <label>:1615                                    ; preds = %1613
  %1616 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1619 = fadd fast float %1616, -5.000000e-01
  %1620 = fadd fast float %1617, -5.000000e-01
  %1621 = fadd fast float %1618, -5.000000e-01
  %1622 = fmul fast float %1619, %1568
  %1623 = fmul fast float %1620, %1568
  %1624 = fmul fast float %1621, %1568
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fadd fast float %1623, 5.000000e-01
  %1627 = fadd fast float %1624, 5.000000e-01
  %1628 = fmul fast float %1625, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1555
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1555
  %1633 = fmul fast float %1626, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1556
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1556
  %1638 = fmul fast float %1627, 2.000000e+00
  %1639 = fsub fast float 1.000000e+00, %1638
  %1640 = fmul fast float %1639, %1557
  %1641 = fadd fast float %1640, %1638
  %1642 = fmul fast float %1641, %1557
  br label %1643

; <label>:1643                                    ; preds = %1615, %1613, %1600, %1570, %1554
  %1644 = phi float [ %1555, %1554 ], [ %1632, %1615 ], [ %1555, %1613 ], [ %1610, %1600 ], [ %1580, %1570 ]
  %1645 = phi float [ %1556, %1554 ], [ %1637, %1615 ], [ %1556, %1613 ], [ %1611, %1600 ], [ %1581, %1570 ]
  %1646 = phi float [ %1557, %1554 ], [ %1642, %1615 ], [ %1557, %1613 ], [ %1612, %1600 ], [ %1582, %1570 ]
  %1647 = phi float [ %1558, %1554 ], [ %1558, %1615 ], [ %1558, %1613 ], [ %1558, %1600 ], [ %1592, %1570 ]
  %1648 = phi float [ %1559, %1554 ], [ %1559, %1615 ], [ %1559, %1613 ], [ %1559, %1600 ], [ %1593, %1570 ]
  %1649 = phi float [ %1560, %1554 ], [ %1560, %1615 ], [ %1560, %1613 ], [ %1560, %1600 ], [ %1594, %1570 ]
  %1650 = phi float [ %880, %1554 ], [ %880, %1615 ], [ %880, %1613 ], [ %880, %1600 ], [ %1585, %1570 ]
  %1651 = phi float [ %884, %1554 ], [ %884, %1615 ], [ %884, %1613 ], [ %884, %1600 ], [ %1597, %1570 ]
  %1652 = and i32 %1562, 12
  %1653 = icmp eq i32 %1652, 12
  br i1 %1653, label %1726, label %1654

; <label>:1654                                    ; preds = %1643
  %1655 = and i32 %1562, 2097184
  %1656 = icmp eq i32 %1655, 2097184
  %1657 = select i1 %1656, float %1182, float 0.000000e+00
  %1658 = and i32 %1562, 4194336
  %1659 = icmp eq i32 %1658, 4194336
  %1660 = select i1 %1659, float %1182, float 0.000000e+00
  %1661 = and i32 %1562, 8388640
  %1662 = icmp eq i32 %1661, 8388640
  %1663 = select i1 %1662, float %1182, float 0.000000e+00
  %1664 = icmp eq i32 %1652, 0
  br i1 %1664, label %1665, label %1678

; <label>:1665                                    ; preds = %1654
  %1666 = fsub fast float %1483, %872
  %1667 = fsub fast float %1484, %873
  %1668 = fmul fast float %1657, %1666
  %1669 = fmul fast float %1657, %1667
  %1670 = fadd fast float %1668, %872
  %1671 = fadd fast float %1669, %873
  %1672 = fsub fast float %1485, %883
  %1673 = fmul fast float %1660, %1672
  %1674 = fadd fast float %1673, %883
  %1675 = fsub fast float %1482, %882
  %1676 = fmul fast float %1663, %1675
  %1677 = fadd fast float %1676, %882
  br label %1726

; <label>:1678                                    ; preds = %1654
  %1679 = icmp eq i32 %1652, 4
  br i1 %1679, label %1680, label %1712

; <label>:1680                                    ; preds = %1678
  %1681 = fmul fast float %1657, %1483
  %1682 = fmul fast float %1657, %1484
  %1683 = fadd fast float %1681, %872
  %1684 = fadd fast float %1682, %873
  %1685 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1686 = fsub fast float %1685, %883
  %1687 = fmul fast float %1686, %1660
  %1688 = fadd fast float %1687, %883
  %1689 = fadd fast float %1482, %882
  %1690 = fmul fast float %1689, 0x3FF337FAE0000000
  %1691 = fmul fast float %882, %882
  %1692 = fmul fast float %1482, %1482
  %1693 = fadd fast float %1692, %1691
  %1694 = fmul fast float %1693, 0x3FE5152B00000000
  %1695 = fmul fast float %882, 0xBFCC1F85E0000000
  %1696 = fmul fast float %1695, %1482
  %1697 = fadd fast float %1696, 0xBFE1363700000000
  %1698 = fadd fast float %1697, %1690
  %1699 = fsub fast float %1698, %1694
  %1700 = fmul fast float %1689, 0x3FBA6F0D00000000
  %1701 = fmul fast float %1693, 0x3FD0432880000000
  %1702 = fmul fast float %882, 0xBFEF110800000000
  %1703 = fmul fast float %1702, %1482
  %1704 = fadd fast float %1703, 1.000000e+00
  %1705 = fsub fast float %1704, %1700
  %1706 = fadd fast float %1705, %1701
  %1707 = fdiv fast float %1699, %1706
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fsub fast float %1708, %882
  %1710 = fmul fast float %1709, %1663
  %1711 = fadd fast float %1710, %882
  br label %1726

; <label>:1712                                    ; preds = %1678
  %1713 = icmp eq i32 %1652, 8
  br i1 %1713, label %1714, label %1726

; <label>:1714                                    ; preds = %1712
  %1715 = fmul fast float %1657, %1483
  %1716 = fmul fast float %1657, %1484
  %1717 = fadd fast float %1715, %872
  %1718 = fadd fast float %1716, %873
  %1719 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1720 = fsub fast float %1719, %883
  %1721 = fmul fast float %1720, %1660
  %1722 = fadd fast float %1721, %883
  %1723 = fsub fast float %1482, %882
  %1724 = fmul fast float %1663, %1723
  %1725 = fadd fast float %1724, %882
  br label %1726

; <label>:1726                                    ; preds = %1714, %1712, %1680, %1665, %1643, %1181, %885, %871
  %1727 = phi float [ %872, %1643 ], [ %872, %1181 ], [ %872, %871 ], [ %1717, %1714 ], [ %872, %1712 ], [ %1683, %1680 ], [ %1670, %1665 ], [ %872, %885 ]
  %1728 = phi float [ %873, %1643 ], [ %873, %1181 ], [ %873, %871 ], [ %1718, %1714 ], [ %873, %1712 ], [ %1684, %1680 ], [ %1671, %1665 ], [ %873, %885 ]
  %1729 = phi float [ %1644, %1643 ], [ %874, %1181 ], [ %874, %871 ], [ %1644, %1714 ], [ %1644, %1712 ], [ %1644, %1680 ], [ %1644, %1665 ], [ %874, %885 ]
  %1730 = phi float [ %1645, %1643 ], [ %875, %1181 ], [ %875, %871 ], [ %1645, %1714 ], [ %1645, %1712 ], [ %1645, %1680 ], [ %1645, %1665 ], [ %875, %885 ]
  %1731 = phi float [ %1646, %1643 ], [ %876, %1181 ], [ %876, %871 ], [ %1646, %1714 ], [ %1646, %1712 ], [ %1646, %1680 ], [ %1646, %1665 ], [ %876, %885 ]
  %1732 = phi float [ %1647, %1643 ], [ %877, %1181 ], [ %877, %871 ], [ %1647, %1714 ], [ %1647, %1712 ], [ %1647, %1680 ], [ %1647, %1665 ], [ %877, %885 ]
  %1733 = phi float [ %1648, %1643 ], [ %878, %1181 ], [ %878, %871 ], [ %1648, %1714 ], [ %1648, %1712 ], [ %1648, %1680 ], [ %1648, %1665 ], [ %878, %885 ]
  %1734 = phi float [ %1649, %1643 ], [ %879, %1181 ], [ %879, %871 ], [ %1649, %1714 ], [ %1649, %1712 ], [ %1649, %1680 ], [ %1649, %1665 ], [ %879, %885 ]
  %1735 = phi float [ %1650, %1643 ], [ %880, %1181 ], [ %880, %871 ], [ %1650, %1714 ], [ %1650, %1712 ], [ %1650, %1680 ], [ %1650, %1665 ], [ %880, %885 ]
  %1736 = phi float [ %882, %1643 ], [ %882, %1181 ], [ %882, %871 ], [ %1725, %1714 ], [ %882, %1712 ], [ %1711, %1680 ], [ %1677, %1665 ], [ %882, %885 ]
  %1737 = phi float [ %883, %1643 ], [ %883, %1181 ], [ %883, %871 ], [ %1722, %1714 ], [ %883, %1712 ], [ %1688, %1680 ], [ %1674, %1665 ], [ %883, %885 ]
  %1738 = phi float [ %1651, %1643 ], [ %884, %1181 ], [ %884, %871 ], [ %1651, %1714 ], [ %1651, %1712 ], [ %1651, %1680 ], [ %1651, %1665 ], [ %884, %885 ]
  br i1 %351, label %2580, label %1739

; <label>:1739                                    ; preds = %1726
  %1740 = icmp ult i32 %404, 3
  %1741 = add i32 %35, 56
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = add i32 %35, 60
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = or i32 %1746, %1743
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %2580, label %1749

; <label>:1749                                    ; preds = %1739
  %1750 = and i32 %1743, 262144
  %1751 = icmp ne i32 %1750, 0
  %1752 = select i1 %1751, float %38, float 1.000000e+00
  %1753 = select i1 %1751, float %39, float 0.000000e+00
  %1754 = select i1 %1751, float %40, float 0.000000e+00
  %1755 = select i1 %1751, float %41, float 1.000000e+00
  %1756 = select i1 %1751, float %42, float %63
  %1757 = select i1 %1751, float %43, float %64
  %1758 = add i32 %35, 316
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fmul fast float %1762, 0x3F50624DE0000000
  %1764 = add i32 %35, 120
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = lshr i32 %1766, 16
  %1768 = and i32 %1767, 255
  %1769 = lshr i32 %1766, 24
  %1770 = add i32 %35, 324
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 65535
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = lshr i32 %1772, 16
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = add i32 %35, 64
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 22
  %1781 = shl nuw nsw i32 %1780, 5
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = shl i32 %1779, 4
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = lshr i32 %1779, 7
  %1787 = and i32 %1786, 32752
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = fmul fast float %1790, 1.000000e+03
  %1792 = fmul fast float %301, %1791
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = fadd fast float %1793, %291
  %1795 = fmul fast float %302, %1791
  %1796 = call float @dx.op.unary.f32(i32 22, float %1795)  ; Frc(value)
  %1797 = fadd fast float %1796, %293
  %1798 = fmul fast float %1763, %1791
  %1799 = call float @dx.op.unary.f32(i32 22, float %1798)  ; Frc(value)
  %1800 = fmul fast float %1799, 0x401921FB60000000
  %1801 = fadd fast float %1800, %1782
  %1802 = call float @dx.op.unary.f32(i32 13, float %1801)  ; Sin(value)
  %1803 = call float @dx.op.unary.f32(i32 12, float %1801)  ; Cos(value)
  %1804 = fsub fast float -0.000000e+00, %1802
  %1805 = fadd fast float %1756, -5.000000e-01
  %1806 = fadd fast float %1757, -5.000000e-01
  %1807 = fmul fast float %1774, %1805
  %1808 = fmul fast float %1776, %1806
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1785, %1809
  %1812 = fmul fast float %1788, %1810
  %1813 = fmul fast float %1803, %1811
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1812, float %1813)  ; FMad(a,b,c)
  %1815 = fmul fast float %1802, %1811
  %1816 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1812, float %1815)  ; FMad(a,b,c)
  %1817 = fadd fast float %1794, %1814
  %1818 = fadd fast float %1797, %1816
  %1819 = icmp ugt i32 %1768, 1
  %1820 = icmp ugt i32 %1766, 33554431
  %1821 = or i1 %1820, %1819
  br i1 %1821, label %1822, label %1847

; <label>:1822                                    ; preds = %1749
  %1823 = add i32 %35, 260
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 16
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = fmul fast float %1790, %1827
  %1829 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1830 = mul nuw nsw i32 %1768, %1769
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1829, %1831
  %1833 = call float @dx.op.unary.f32(i32 27, float %1832)  ; Round_ni(value)
  %1834 = fptoui float %1833 to i32
  %1835 = urem i32 %1834, %1768
  %1836 = udiv i32 %1834, %1769
  %1837 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1838 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1839 = uitofp i32 %1835 to float
  %1840 = uitofp i32 %1836 to float
  %1841 = fadd fast float %1837, %1839
  %1842 = fadd fast float %1838, %1840
  %1843 = uitofp i32 %1768 to float
  %1844 = uitofp i32 %1769 to float
  %1845 = fdiv fast float %1841, %1843
  %1846 = fdiv fast float %1842, %1844
  br label %1847

; <label>:1847                                    ; preds = %1822, %1749
  %1848 = phi float [ %1845, %1822 ], [ %1817, %1749 ]
  %1849 = phi float [ %1846, %1822 ], [ %1818, %1749 ]
  %1850 = and i32 %1743, 16777216
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1961, label %1852

; <label>:1852                                    ; preds = %1847
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1857 = fadd fast float %1854, %134
  %1858 = fadd fast float %1855, %135
  %1859 = fadd fast float %1856, %136
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1863 = icmp eq i32 %36, 65535
  br i1 %1863, label %1958, label %1864

; <label>:1864                                    ; preds = %1852
  %1865 = lshr i32 %36, 1
  %1866 = shl i32 %1865, 2
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %36, 1
  %1870 = icmp ne i32 %1869, 0
  %1871 = lshr i32 %1868, 16
  %1872 = and i32 %1868, 65535
  %1873 = select i1 %1870, i32 %1871, i32 %1872
  %1874 = icmp eq i32 %1873, 65535
  br i1 %1874, label %1954, label %1875

; <label>:1875                                    ; preds = %1864
  %1876 = mul nuw nsw i32 %1873, 40
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = add nuw nsw i32 %1876, 12
  %1882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.f32 %1882, 2
  %1886 = add nuw nsw i32 %1876, 24
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.ResRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.ResRet.f32 %1887, 2
  %1891 = add nuw nsw i32 %1876, 36
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = fsub fast float %1857, %1878
  %1895 = fsub fast float %1858, %1879
  %1896 = fsub fast float %1859, %1880
  %1897 = fmul fast float %1893, %1894
  %1898 = fmul fast float %1893, %1895
  %1899 = fmul fast float %1893, %1896
  %1900 = call float @dx.op.unary.f32(i32 27, float %1897)  ; Round_ni(value)
  %1901 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1902 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1903 = fadd fast float %1900, 5.000000e-01
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fmul fast float %1903, %1883
  %1907 = fmul fast float %1904, %1884
  %1908 = fmul fast float %1905, %1885
  %1909 = shl i32 %36, 2
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = add i32 %1911, 0
  %1913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1914 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1907)  ; Frc(value)
  %1916 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1913, %dx.types.Handle %30, float %1914, float %1915, float %1916, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.ResRet.f32 %1917, 2
  %1921 = fmul fast float %1918, 1.023000e+03
  %1922 = fmul fast float %1919, 1.023000e+03
  %1923 = fmul fast float %1920, 1.023000e+03
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = call float @dx.op.unary.f32(i32 27, float %1924)  ; Round_ni(value)
  %1928 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1930 = fsub fast float %1897, %1900
  %1931 = fsub fast float %1898, %1901
  %1932 = fsub fast float %1899, %1902
  %1933 = fmul fast float %1930, 7.500000e-01
  %1934 = fmul fast float %1931, 7.500000e-01
  %1935 = fmul fast float %1932, 7.500000e-01
  %1936 = fadd fast float %1900, 1.250000e-01
  %1937 = fadd fast float %1936, %1933
  %1938 = fadd fast float %1937, %1927
  %1939 = fadd fast float %1901, 1.250000e-01
  %1940 = fadd fast float %1939, %1934
  %1941 = fadd fast float %1940, %1928
  %1942 = fadd fast float %1902, 1.250000e-01
  %1943 = fadd fast float %1942, %1935
  %1944 = fadd fast float %1943, %1929
  %1945 = fmul fast float %1938, %1888
  %1946 = fmul fast float %1941, %1889
  %1947 = fmul fast float %1944, %1890
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = add i32 %1949, 0
  %1951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1951, %dx.types.Handle %28, float %1945, float %1946, float %1947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  br label %1954

; <label>:1954                                    ; preds = %1875, %1864
  %1955 = phi float [ %1953, %1875 ], [ -1.000000e+00, %1864 ]
  %1956 = fadd fast float %1955, %1862
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  br label %1958

; <label>:1958                                    ; preds = %1954, %1852
  %1959 = phi float [ %1957, %1954 ], [ %1862, %1852 ]
  %1960 = fmul fast float %1959, %400
  br label %1961

; <label>:1961                                    ; preds = %1958, %1847
  %1962 = phi float [ %1960, %1958 ], [ %400, %1847 ]
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = and i32 %1964, 256
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %2013, label %1967

; <label>:1967                                    ; preds = %1961
  %1968 = add i32 %35, 512
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1972, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = add i32 %35, 132
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = shl i32 %1977, 4
  %1979 = and i32 %1978, 32752
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = lshr i32 %1977, 7
  %1982 = and i32 %1981, 32752
  %1983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1982)  ; LegacyF16ToF32(value)
  %1984 = fsub fast float 1.000000e+00, %1962
  %1985 = call float @dx.op.binary.f32(i32 35, float %1984, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1986 = bitcast float %1962 to i32
  %1987 = sitofp i32 %1986 to float
  %1988 = fadd fast float %1987, 0xC1CFBF8940000000
  %1989 = fmul fast float %1983, %1988
  %1990 = fadd fast float %1989, 0x41CFBF8940000000
  %1991 = fptosi float %1990 to i32
  %1992 = bitcast i32 %1991 to float
  %1993 = bitcast float %1985 to i32
  %1994 = sitofp i32 %1993 to float
  %1995 = fadd fast float %1994, 0xC1CFBF8940000000
  %1996 = fmul fast float %1995, %1983
  %1997 = fadd fast float %1996, 0x41CFBF8940000000
  %1998 = fptosi float %1997 to i32
  %1999 = bitcast i32 %1998 to float
  %2000 = fmul fast float %1992, %1980
  %2001 = fmul fast float %1999, %1980
  %2002 = fsub fast float %1985, %2000
  %2003 = fadd fast float %2001, %1985
  %2004 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2006 = fsub fast float %1974, %2004
  %2007 = fsub fast float %2005, %2004
  %2008 = bitcast float %2007 to i32
  %2009 = sub nsw i32 2129859010, %2008
  %2010 = bitcast i32 %2009 to float
  %2011 = fmul fast float %2010, %2006
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  br label %2013

; <label>:2013                                    ; preds = %1967, %1961
  %2014 = phi float [ %2012, %1967 ], [ %1962, %1961 ]
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 128
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2035, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = add i32 %35, 496
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 524288
  %2030 = icmp ne i32 %2029, 0
  %2031 = fcmp fast ogt float %2026, 0x3FE0101020000000
  %2032 = select i1 %2031, float 1.000000e+00, float 0.000000e+00
  %2033 = select i1 %2030, float %2032, float %2026
  %2034 = fmul fast float %2033, %2014
  br label %2035

; <label>:2035                                    ; preds = %2019, %2013
  %2036 = phi float [ %2034, %2019 ], [ %2014, %2013 ]
  %2037 = fcmp fast ult float %2036, 0x3F70101020000000
  br i1 %2037, label %2580, label %2038

; <label>:2038                                    ; preds = %2035
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 16
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2241, label %2043

; <label>:2043                                    ; preds = %2038
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %35, 448
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = add i32 %2048, 0
  %2050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2050, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2055 = extractvalue %dx.types.ResRet.f32 %2051, 3
  %2056 = and i32 %2045, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = lshr i32 %2045, 8
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2055, %2057
  %2062 = fadd fast float %2061, %2060
  %2063 = fmul fast float %2062, 0x3F70101000000000
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 512
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2076, label %2068

; <label>:2068                                    ; preds = %2043
  %2069 = add i32 %35, 528
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = add i32 %2071, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2073, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  br label %2076

; <label>:2076                                    ; preds = %2068, %2043
  %2077 = phi float [ %2075, %2068 ], [ 1.000000e+00, %2043 ]
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 33554432
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2188, label %2082

; <label>:2082                                    ; preds = %2076
  %2083 = add i32 %35, 256
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 65535
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = lshr i32 %2085, 16
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = add i32 %35, 260
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %2092, 65535
  %2094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2093)  ; LegacyF16ToF32(value)
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = lshr i32 %2096, 24
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = and i32 %2096, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101020000000
  %2103 = lshr i32 %2096, 8
  %2104 = and i32 %2103, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2105, 0x3F70101020000000
  %2107 = lshr i32 %2096, 16
  %2108 = and i32 %2107, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = add i32 %35, 252
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 24
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = and i32 %2113, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = lshr i32 %2113, 8
  %2121 = and i32 %2120, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2113, 16
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = bitcast float %2052 to i32
  %2129 = ashr i32 %2128, 1
  %2130 = sub nsw i32 1597463174, %2129
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2052, 5.000000e-01
  %2133 = fmul fast float %2131, %2131
  %2134 = fmul fast float %2133, %2132
  %2135 = fsub fast float 1.500000e+00, %2134
  %2136 = fmul fast float %2131, %2052
  %2137 = fmul fast float %2136, %2135
  %2138 = bitcast float %2053 to i32
  %2139 = ashr i32 %2138, 1
  %2140 = sub nsw i32 1597463174, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2053, 5.000000e-01
  %2143 = fmul fast float %2141, %2141
  %2144 = fmul fast float %2143, %2142
  %2145 = fsub fast float 1.500000e+00, %2144
  %2146 = fmul fast float %2141, %2053
  %2147 = fmul fast float %2146, %2145
  %2148 = bitcast float %2054 to i32
  %2149 = ashr i32 %2148, 1
  %2150 = sub nsw i32 1597463174, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = fmul fast float %2054, 5.000000e-01
  %2153 = fmul fast float %2151, %2151
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float 1.500000e+00, %2154
  %2156 = fmul fast float %2151, %2054
  %2157 = fmul fast float %2156, %2155
  %2158 = fsub fast float %2137, %2119
  %2159 = fsub fast float %2147, %2123
  %2160 = fsub fast float %2157, %2127
  %2161 = fmul fast float %2158, %2087
  %2162 = fmul fast float %2159, %2089
  %2163 = fmul fast float %2160, %2094
  %2164 = fadd fast float %2161, %2102
  %2165 = fadd fast float %2162, %2106
  %2166 = fadd fast float %2163, %2110
  %2167 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2168 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = fmul fast float %2167, %2167
  %2171 = fmul fast float %2168, %2168
  %2172 = fmul fast float %2169, %2169
  %2173 = fsub fast float %2170, %2052
  %2174 = fsub fast float %2171, %2053
  %2175 = fsub fast float %2172, %2054
  %2176 = fmul fast float %2173, %2077
  %2177 = fmul fast float %2174, %2077
  %2178 = fmul fast float %2175, %2077
  %2179 = fadd fast float %2176, %2052
  %2180 = fadd fast float %2177, %2053
  %2181 = fadd fast float %2178, %2054
  %2182 = fadd fast float %2099, %2063
  %2183 = fsub fast float %2182, %2116
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fsub fast float %2184, %2063
  %2186 = fmul fast float %2185, %2077
  %2187 = fadd fast float %2186, %2063
  br label %2241

; <label>:2188                                    ; preds = %2076
  %2189 = and i32 %2079, 134217728
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2225, label %2191

; <label>:2191                                    ; preds = %2188
  %2192 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2195 = fadd fast float %2192, -5.000000e-01
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fmul fast float %2195, %2077
  %2199 = fmul fast float %2196, %2077
  %2200 = fmul fast float %2197, %2077
  %2201 = fadd fast float %2198, 5.000000e-01
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2207 = fmul fast float %2201, 2.000000e+00
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2208, %2204
  %2210 = fadd fast float %2209, %2207
  %2211 = fmul fast float %2210, %2204
  %2212 = fmul fast float %2202, 2.000000e+00
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = fmul fast float %2213, %2205
  %2215 = fadd fast float %2214, %2212
  %2216 = fmul fast float %2215, %2205
  %2217 = fmul fast float %2203, 2.000000e+00
  %2218 = fsub fast float 1.000000e+00, %2217
  %2219 = fmul fast float %2218, %2206
  %2220 = fadd fast float %2219, %2217
  %2221 = fmul fast float %2220, %2206
  %2222 = fmul fast float %2211, %2211
  %2223 = fmul fast float %2216, %2216
  %2224 = fmul fast float %2221, %2221
  br label %2241

; <label>:2225                                    ; preds = %2188
  %2226 = fmul fast float %278, %278
  %2227 = fmul fast float %282, %282
  %2228 = fmul fast float %286, %286
  %2229 = fadd fast float %2226, -1.000000e+00
  %2230 = fadd fast float %2227, -1.000000e+00
  %2231 = fadd fast float %2228, -1.000000e+00
  %2232 = fmul fast float %2077, %2229
  %2233 = fmul fast float %2077, %2230
  %2234 = fmul fast float %2077, %2231
  %2235 = fadd fast float %2232, 1.000000e+00
  %2236 = fadd fast float %2233, 1.000000e+00
  %2237 = fadd fast float %2234, 1.000000e+00
  %2238 = fmul fast float %2235, %2052
  %2239 = fmul fast float %2236, %2053
  %2240 = fmul fast float %2237, %2054
  br label %2241

; <label>:2241                                    ; preds = %2225, %2191, %2082, %2038
  %2242 = phi float [ %2187, %2082 ], [ %2063, %2191 ], [ %2063, %2225 ], [ 0x3FA23C0BE0000000, %2038 ]
  %2243 = phi float [ %2179, %2082 ], [ %2222, %2191 ], [ %2238, %2225 ], [ 1.000000e+00, %2038 ]
  %2244 = phi float [ %2180, %2082 ], [ %2223, %2191 ], [ %2239, %2225 ], [ 1.000000e+00, %2038 ]
  %2245 = phi float [ %2181, %2082 ], [ %2224, %2191 ], [ %2240, %2225 ], [ 1.000000e+00, %2038 ]
  %2246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.i32 %2246, 1
  %2248 = and i32 %2247, 1
  %2249 = icmp ne i32 %2248, 0
  %2250 = add i32 %35, 356
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 32
  %2254 = icmp ne i32 %2253, 0
  %2255 = and i1 %2249, %2254
  %2256 = select i1 %2255, float 1.000000e+00, float %2243
  %2257 = select i1 %2255, float 0x3FD3333340000000, float %2244
  %2258 = select i1 %2255, float 0x3FD3333340000000, float %2245
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 32
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2335, label %2263

; <label>:2263                                    ; preds = %2241
  %2264 = add i32 %35, 124
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %35, 464
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2269, 0
  %2271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2271, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = extractvalue %dx.types.ResRet.f32 %2272, 3
  %2277 = and i32 %2266, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2266, 8
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = lshr i32 %2266, 16
  %2283 = and i32 %2282, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101000000000
  %2286 = fmul fast float %2273, %2278
  %2287 = fadd fast float %2286, %2281
  %2288 = fmul fast float %2287, 0x3F70101000000000
  %2289 = fadd fast float %2274, -5.000000e-01
  %2290 = fadd fast float %2276, -5.000000e-01
  %2291 = fmul fast float %2289, %2285
  %2292 = fmul fast float %2290, %2285
  %2293 = fadd fast float %2291, 5.000000e-01
  %2294 = fadd fast float %2292, 5.000000e-01
  %2295 = fmul fast float %2293, 2.000000e+00
  %2296 = fadd fast float %2295, -1.000000e+00
  %2297 = fmul fast float %2294, 2.000000e+00
  %2298 = fadd fast float %2297, -1.000000e+00
  %2299 = fadd fast float %2296, %2298
  %2300 = fmul fast float %2299, 5.000000e-01
  %2301 = fsub fast float %2296, %2298
  %2302 = fmul fast float %2301, 5.000000e-01
  %2303 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2306 = fsub fast float %2304, %2305
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2300, float %2302, float %2306, float %2300, float %2302, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = call float @dx.op.unary.f32(i32 25, float %2307)  ; Rsqrt(value)
  %2309 = fmul fast float %2300, %2308
  %2310 = fmul fast float %2302, %2308
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 67108864
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2331, label %2315

; <label>:2315                                    ; preds = %2263
  %2316 = add i32 %35, 312
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 65535
  %2320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2319)  ; LegacyF16ToF32(value)
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 65535
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = lshr i32 %2318, 16
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = fsub fast float %2288, %2326
  %2328 = fmul fast float %2327, %2320
  %2329 = fadd fast float %2328, %2324
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  br label %2331

; <label>:2331                                    ; preds = %2315, %2263
  %2332 = phi float [ %2330, %2315 ], [ %2288, %2263 ]
  %2333 = call float @dx.op.dot2.f32(i32 54, float %2309, float %2310, float %1752, float %1753)  ; Dot2(ax,ay,bx,by)
  %2334 = call float @dx.op.dot2.f32(i32 54, float %2309, float %2310, float %1754, float %1755)  ; Dot2(ax,ay,bx,by)
  br label %2335

; <label>:2335                                    ; preds = %2331, %2241
  %2336 = phi float [ %2332, %2331 ], [ 0x3FD6666660000000, %2241 ]
  %2337 = phi float [ %2333, %2331 ], [ 0.000000e+00, %2241 ]
  %2338 = phi float [ %2334, %2331 ], [ 0.000000e+00, %2241 ]
  %2339 = phi float [ %2275, %2331 ], [ 1.000000e+00, %2241 ]
  %2340 = add i32 %35, 192
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 22
  %2344 = shl nuw nsw i32 %2343, 5
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 64
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2383, label %2350

; <label>:2350                                    ; preds = %2335
  %2351 = add i32 %35, 480
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = add i32 %2353, 0
  %2355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %2357, 131072
  %2359 = icmp eq i32 %2358, 0
  %2360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2355, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = fmul fast float %2361, %266
  %2365 = fmul fast float %2362, %269
  %2366 = fmul fast float %2363, %272
  br i1 %2359, label %2373, label %2367

; <label>:2367                                    ; preds = %2350
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = fmul fast float %2369, %2364
  %2371 = fmul fast float %2369, %2365
  %2372 = fmul fast float %2369, %2366
  br label %2373

; <label>:2373                                    ; preds = %2367, %2350
  %2374 = phi float [ %2370, %2367 ], [ %2364, %2350 ]
  %2375 = phi float [ %2371, %2367 ], [ %2365, %2350 ]
  %2376 = phi float [ %2372, %2367 ], [ %2366, %2350 ]
  %2377 = fmul fast float %2374, %2345
  %2378 = select i1 %176, float %2377, float %2374
  %2379 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2375, float %2376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2380 = select i1 %176, float 0.000000e+00, float %2374
  %2381 = select i1 %176, float %2379, float %2375
  %2382 = select i1 %176, float 0.000000e+00, float %2376
  br label %2383

; <label>:2383                                    ; preds = %2373, %2335
  %2384 = phi float [ %2380, %2373 ], [ 0.000000e+00, %2335 ]
  %2385 = phi float [ %2381, %2373 ], [ 0.000000e+00, %2335 ]
  %2386 = phi float [ %2382, %2373 ], [ 0.000000e+00, %2335 ]
  %2387 = add i32 %35, 128
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = lshr i32 %2389, 8
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = call float @dx.op.dot3.f32(i32 55, float %2256, float %2257, float %2258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = fmul fast float %2394, %2395
  %2397 = fadd fast float %2396, %2391
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  br i1 %1740, label %2400, label %2408

; <label>:2400                                    ; preds = %2383
  %2401 = fsub fast float 1.000000e+00, %2036
  %2402 = fmul fast float %2401, %1729
  %2403 = fmul fast float %2401, %1730
  %2404 = fmul fast float %2401, %1731
  %2405 = fmul fast float %2401, %1732
  %2406 = fmul fast float %2401, %1733
  %2407 = fmul fast float %2401, %1734
  br label %2408

; <label>:2408                                    ; preds = %2400, %2383
  %2409 = phi float [ %2402, %2400 ], [ %1729, %2383 ]
  %2410 = phi float [ %2403, %2400 ], [ %1730, %2383 ]
  %2411 = phi float [ %2404, %2400 ], [ %1731, %2383 ]
  %2412 = phi float [ %2405, %2400 ], [ %1732, %2383 ]
  %2413 = phi float [ %2406, %2400 ], [ %1733, %2383 ]
  %2414 = phi float [ %2407, %2400 ], [ %1734, %2383 ]
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 3
  %2418 = icmp eq i32 %2417, 3
  br i1 %2418, label %2497, label %2419

; <label>:2419                                    ; preds = %2408
  %2420 = and i32 %2416, 16
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2421, float %2036, float 0.000000e+00
  %2423 = icmp eq i32 %2417, 0
  br i1 %2423, label %2424, label %2452

; <label>:2424                                    ; preds = %2419
  %2425 = and i32 %2416, 64
  %2426 = icmp ne i32 %2425, 0
  %2427 = select i1 %2426, float %2036, float 0.000000e+00
  %2428 = fsub fast float %2256, %2409
  %2429 = fsub fast float %2257, %2410
  %2430 = fsub fast float %2258, %2411
  %2431 = fmul fast float %2422, %2428
  %2432 = fmul fast float %2422, %2429
  %2433 = fmul fast float %2422, %2430
  %2434 = fadd fast float %2431, %2409
  %2435 = fadd fast float %2432, %2410
  %2436 = fadd fast float %2433, %2411
  %2437 = fsub fast float %2242, %1735
  %2438 = fmul fast float %2422, %2437
  %2439 = fadd fast float %2438, %1735
  %2440 = fsub fast float %2384, %2412
  %2441 = fsub fast float %2385, %2413
  %2442 = fsub fast float %2386, %2414
  %2443 = fmul fast float %2427, %2440
  %2444 = fmul fast float %2427, %2441
  %2445 = fmul fast float %2427, %2442
  %2446 = fadd fast float %2443, %2412
  %2447 = fadd fast float %2444, %2413
  %2448 = fadd fast float %2445, %2414
  %2449 = fsub fast float %2399, %1738
  %2450 = fmul fast float %2422, %2449
  %2451 = fadd fast float %2450, %1738
  br label %2497

; <label>:2452                                    ; preds = %2419
  %2453 = icmp eq i32 %2417, 1
  br i1 %2453, label %2454, label %2467

; <label>:2454                                    ; preds = %2452
  %2455 = fadd fast float %2256, -1.000000e+00
  %2456 = fadd fast float %2257, -1.000000e+00
  %2457 = fadd fast float %2258, -1.000000e+00
  %2458 = fmul fast float %2422, %2455
  %2459 = fmul fast float %2422, %2456
  %2460 = fmul fast float %2422, %2457
  %2461 = fadd fast float %2458, 1.000000e+00
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fmul fast float %2461, %2409
  %2465 = fmul fast float %2462, %2410
  %2466 = fmul fast float %2463, %2411
  br label %2497

; <label>:2467                                    ; preds = %2452
  %2468 = icmp eq i32 %2417, 2
  br i1 %2468, label %2469, label %2497

; <label>:2469                                    ; preds = %2467
  %2470 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2471 = call float @dx.op.unary.f32(i32 24, float %2257)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fmul fast float %2473, %2422
  %2477 = fmul fast float %2474, %2422
  %2478 = fmul fast float %2475, %2422
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fmul fast float %2479, 2.000000e+00
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = fmul fast float %2483, %2409
  %2485 = fadd fast float %2484, %2482
  %2486 = fmul fast float %2485, %2409
  %2487 = fmul fast float %2480, 2.000000e+00
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2488, %2410
  %2490 = fadd fast float %2489, %2487
  %2491 = fmul fast float %2490, %2410
  %2492 = fmul fast float %2481, 2.000000e+00
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = fmul fast float %2493, %2411
  %2495 = fadd fast float %2494, %2492
  %2496 = fmul fast float %2495, %2411
  br label %2497

; <label>:2497                                    ; preds = %2469, %2467, %2454, %2424, %2408
  %2498 = phi float [ %2409, %2408 ], [ %2486, %2469 ], [ %2409, %2467 ], [ %2464, %2454 ], [ %2434, %2424 ]
  %2499 = phi float [ %2410, %2408 ], [ %2491, %2469 ], [ %2410, %2467 ], [ %2465, %2454 ], [ %2435, %2424 ]
  %2500 = phi float [ %2411, %2408 ], [ %2496, %2469 ], [ %2411, %2467 ], [ %2466, %2454 ], [ %2436, %2424 ]
  %2501 = phi float [ %2412, %2408 ], [ %2412, %2469 ], [ %2412, %2467 ], [ %2412, %2454 ], [ %2446, %2424 ]
  %2502 = phi float [ %2413, %2408 ], [ %2413, %2469 ], [ %2413, %2467 ], [ %2413, %2454 ], [ %2447, %2424 ]
  %2503 = phi float [ %2414, %2408 ], [ %2414, %2469 ], [ %2414, %2467 ], [ %2414, %2454 ], [ %2448, %2424 ]
  %2504 = phi float [ %1735, %2408 ], [ %1735, %2469 ], [ %1735, %2467 ], [ %1735, %2454 ], [ %2439, %2424 ]
  %2505 = phi float [ %1738, %2408 ], [ %1738, %2469 ], [ %1738, %2467 ], [ %1738, %2454 ], [ %2451, %2424 ]
  %2506 = and i32 %2416, 12
  %2507 = icmp eq i32 %2506, 12
  br i1 %2507, label %2580, label %2508

; <label>:2508                                    ; preds = %2497
  %2509 = and i32 %2416, 2097184
  %2510 = icmp eq i32 %2509, 2097184
  %2511 = select i1 %2510, float %2036, float 0.000000e+00
  %2512 = and i32 %2416, 4194336
  %2513 = icmp eq i32 %2512, 4194336
  %2514 = select i1 %2513, float %2036, float 0.000000e+00
  %2515 = and i32 %2416, 8388640
  %2516 = icmp eq i32 %2515, 8388640
  %2517 = select i1 %2516, float %2036, float 0.000000e+00
  %2518 = icmp eq i32 %2506, 0
  br i1 %2518, label %2519, label %2532

; <label>:2519                                    ; preds = %2508
  %2520 = fsub fast float %2337, %1727
  %2521 = fsub fast float %2338, %1728
  %2522 = fmul fast float %2511, %2520
  %2523 = fmul fast float %2511, %2521
  %2524 = fadd fast float %2522, %1727
  %2525 = fadd fast float %2523, %1728
  %2526 = fsub fast float %2339, %1737
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1737
  %2529 = fsub fast float %2336, %1736
  %2530 = fmul fast float %2517, %2529
  %2531 = fadd fast float %2530, %1736
  br label %2580

; <label>:2532                                    ; preds = %2508
  %2533 = icmp eq i32 %2506, 4
  br i1 %2533, label %2534, label %2566

; <label>:2534                                    ; preds = %2532
  %2535 = fmul fast float %2511, %2337
  %2536 = fmul fast float %2511, %2338
  %2537 = fadd fast float %2535, %1727
  %2538 = fadd fast float %2536, %1728
  %2539 = call float @dx.op.binary.f32(i32 36, float %1737, float %2339)  ; FMin(a,b)
  %2540 = fsub fast float %2539, %1737
  %2541 = fmul fast float %2540, %2514
  %2542 = fadd fast float %2541, %1737
  %2543 = fadd fast float %2336, %1736
  %2544 = fmul fast float %2543, 0x3FF337FAE0000000
  %2545 = fmul fast float %1736, %1736
  %2546 = fmul fast float %2336, %2336
  %2547 = fadd fast float %2546, %2545
  %2548 = fmul fast float %2547, 0x3FE5152B00000000
  %2549 = fmul fast float %1736, 0xBFCC1F85E0000000
  %2550 = fmul fast float %2549, %2336
  %2551 = fadd fast float %2550, 0xBFE1363700000000
  %2552 = fadd fast float %2551, %2544
  %2553 = fsub fast float %2552, %2548
  %2554 = fmul fast float %2543, 0x3FBA6F0D00000000
  %2555 = fmul fast float %2547, 0x3FD0432880000000
  %2556 = fmul fast float %1736, 0xBFEF110800000000
  %2557 = fmul fast float %2556, %2336
  %2558 = fadd fast float %2557, 1.000000e+00
  %2559 = fsub fast float %2558, %2554
  %2560 = fadd fast float %2559, %2555
  %2561 = fdiv fast float %2553, %2560
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float %2562, %1736
  %2564 = fmul fast float %2563, %2517
  %2565 = fadd fast float %2564, %1736
  br label %2580

; <label>:2566                                    ; preds = %2532
  %2567 = icmp eq i32 %2506, 8
  br i1 %2567, label %2568, label %2580

; <label>:2568                                    ; preds = %2566
  %2569 = fmul fast float %2511, %2337
  %2570 = fmul fast float %2511, %2338
  %2571 = fadd fast float %2569, %1727
  %2572 = fadd fast float %2570, %1728
  %2573 = call float @dx.op.binary.f32(i32 36, float %1737, float %2339)  ; FMin(a,b)
  %2574 = fsub fast float %2573, %1737
  %2575 = fmul fast float %2574, %2514
  %2576 = fadd fast float %2575, %1737
  %2577 = fsub fast float %2336, %1736
  %2578 = fmul fast float %2517, %2577
  %2579 = fadd fast float %2578, %1736
  br label %2580

; <label>:2580                                    ; preds = %2568, %2566, %2534, %2519, %2497, %2035, %1739, %1726
  %2581 = phi float [ %1727, %2497 ], [ %1727, %2035 ], [ %1727, %1726 ], [ %2571, %2568 ], [ %1727, %2566 ], [ %2537, %2534 ], [ %2524, %2519 ], [ %1727, %1739 ]
  %2582 = phi float [ %1728, %2497 ], [ %1728, %2035 ], [ %1728, %1726 ], [ %2572, %2568 ], [ %1728, %2566 ], [ %2538, %2534 ], [ %2525, %2519 ], [ %1728, %1739 ]
  %2583 = phi float [ %2498, %2497 ], [ %1729, %2035 ], [ %1729, %1726 ], [ %2498, %2568 ], [ %2498, %2566 ], [ %2498, %2534 ], [ %2498, %2519 ], [ %1729, %1739 ]
  %2584 = phi float [ %2499, %2497 ], [ %1730, %2035 ], [ %1730, %1726 ], [ %2499, %2568 ], [ %2499, %2566 ], [ %2499, %2534 ], [ %2499, %2519 ], [ %1730, %1739 ]
  %2585 = phi float [ %2500, %2497 ], [ %1731, %2035 ], [ %1731, %1726 ], [ %2500, %2568 ], [ %2500, %2566 ], [ %2500, %2534 ], [ %2500, %2519 ], [ %1731, %1739 ]
  %2586 = phi float [ %2501, %2497 ], [ %1732, %2035 ], [ %1732, %1726 ], [ %2501, %2568 ], [ %2501, %2566 ], [ %2501, %2534 ], [ %2501, %2519 ], [ %1732, %1739 ]
  %2587 = phi float [ %2502, %2497 ], [ %1733, %2035 ], [ %1733, %1726 ], [ %2502, %2568 ], [ %2502, %2566 ], [ %2502, %2534 ], [ %2502, %2519 ], [ %1733, %1739 ]
  %2588 = phi float [ %2503, %2497 ], [ %1734, %2035 ], [ %1734, %1726 ], [ %2503, %2568 ], [ %2503, %2566 ], [ %2503, %2534 ], [ %2503, %2519 ], [ %1734, %1739 ]
  %2589 = phi float [ %2504, %2497 ], [ %1735, %2035 ], [ %1735, %1726 ], [ %2504, %2568 ], [ %2504, %2566 ], [ %2504, %2534 ], [ %2504, %2519 ], [ %1735, %1739 ]
  %2590 = phi float [ %1736, %2497 ], [ %1736, %2035 ], [ %1736, %1726 ], [ %2579, %2568 ], [ %1736, %2566 ], [ %2565, %2534 ], [ %2531, %2519 ], [ %1736, %1739 ]
  %2591 = phi float [ %1737, %2497 ], [ %1737, %2035 ], [ %1737, %1726 ], [ %2576, %2568 ], [ %1737, %2566 ], [ %2542, %2534 ], [ %2528, %2519 ], [ %1737, %1739 ]
  %2592 = phi float [ %2505, %2497 ], [ %1738, %2035 ], [ %1738, %1726 ], [ %2505, %2568 ], [ %2505, %2566 ], [ %2505, %2534 ], [ %2505, %2519 ], [ %1738, %1739 ]
  br i1 %353, label %3434, label %2593

; <label>:2593                                    ; preds = %2580
  %2594 = icmp ult i32 %404, 4
  %2595 = add i32 %35, 72
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %35, 76
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = or i32 %2600, %2597
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %3434, label %2603

; <label>:2603                                    ; preds = %2593
  %2604 = and i32 %2597, 262144
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %38, float 1.000000e+00
  %2607 = select i1 %2605, float %39, float 0.000000e+00
  %2608 = select i1 %2605, float %40, float 0.000000e+00
  %2609 = select i1 %2605, float %41, float 1.000000e+00
  %2610 = select i1 %2605, float %42, float %63
  %2611 = select i1 %2605, float %43, float %64
  %2612 = add i32 %35, 332
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2616, 0x3F50624DE0000000
  %2618 = add i32 %35, 136
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 16
  %2622 = and i32 %2621, 255
  %2623 = lshr i32 %2620, 24
  %2624 = add i32 %35, 340
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 65535
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = lshr i32 %2626, 16
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = add i32 %35, 80
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 22
  %2635 = shl nuw nsw i32 %2634, 5
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = shl i32 %2633, 4
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2633, 7
  %2641 = and i32 %2640, 32752
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2645 = fmul fast float %2644, 1.000000e+03
  %2646 = fmul fast float %343, %2645
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %333
  %2649 = fmul fast float %344, %2645
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fadd fast float %2650, %335
  %2652 = fmul fast float %2617, %2645
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fmul fast float %2653, 0x401921FB60000000
  %2655 = fadd fast float %2654, %2636
  %2656 = call float @dx.op.unary.f32(i32 13, float %2655)  ; Sin(value)
  %2657 = call float @dx.op.unary.f32(i32 12, float %2655)  ; Cos(value)
  %2658 = fsub fast float -0.000000e+00, %2656
  %2659 = fadd fast float %2610, -5.000000e-01
  %2660 = fadd fast float %2611, -5.000000e-01
  %2661 = fmul fast float %2628, %2659
  %2662 = fmul fast float %2630, %2660
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fmul fast float %2639, %2663
  %2666 = fmul fast float %2642, %2664
  %2667 = fmul fast float %2657, %2665
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2666, float %2667)  ; FMad(a,b,c)
  %2669 = fmul fast float %2656, %2665
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2666, float %2669)  ; FMad(a,b,c)
  %2671 = fadd fast float %2648, %2668
  %2672 = fadd fast float %2651, %2670
  %2673 = icmp ugt i32 %2622, 1
  %2674 = icmp ugt i32 %2620, 33554431
  %2675 = or i1 %2674, %2673
  br i1 %2675, label %2676, label %2701

; <label>:2676                                    ; preds = %2603
  %2677 = add i32 %35, 276
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fmul fast float %2644, %2681
  %2683 = call float @dx.op.unary.f32(i32 22, float %2682)  ; Frc(value)
  %2684 = mul nuw nsw i32 %2622, %2623
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2683, %2685
  %2687 = call float @dx.op.unary.f32(i32 27, float %2686)  ; Round_ni(value)
  %2688 = fptoui float %2687 to i32
  %2689 = urem i32 %2688, %2622
  %2690 = udiv i32 %2688, %2623
  %2691 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2692 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2693 = uitofp i32 %2689 to float
  %2694 = uitofp i32 %2690 to float
  %2695 = fadd fast float %2691, %2693
  %2696 = fadd fast float %2692, %2694
  %2697 = uitofp i32 %2622 to float
  %2698 = uitofp i32 %2623 to float
  %2699 = fdiv fast float %2695, %2697
  %2700 = fdiv fast float %2696, %2698
  br label %2701

; <label>:2701                                    ; preds = %2676, %2603
  %2702 = phi float [ %2699, %2676 ], [ %2671, %2603 ]
  %2703 = phi float [ %2700, %2676 ], [ %2672, %2603 ]
  %2704 = and i32 %2597, 16777216
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2815, label %2706

; <label>:2706                                    ; preds = %2701
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2711 = fadd fast float %2708, %134
  %2712 = fadd fast float %2709, %135
  %2713 = fadd fast float %2710, %136
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = icmp eq i32 %36, 65535
  br i1 %2717, label %2812, label %2718

; <label>:2718                                    ; preds = %2706
  %2719 = lshr i32 %36, 1
  %2720 = shl i32 %2719, 2
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = and i32 %36, 1
  %2724 = icmp ne i32 %2723, 0
  %2725 = lshr i32 %2722, 16
  %2726 = and i32 %2722, 65535
  %2727 = select i1 %2724, i32 %2725, i32 %2726
  %2728 = icmp eq i32 %2727, 65535
  br i1 %2728, label %2808, label %2729

; <label>:2729                                    ; preds = %2718
  %2730 = mul nuw nsw i32 %2727, 40
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2735 = add nuw nsw i32 %2730, 12
  %2736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.ResRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.ResRet.f32 %2736, 2
  %2740 = add nuw nsw i32 %2730, 24
  %2741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2745 = add nuw nsw i32 %2730, 36
  %2746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = fsub fast float %2711, %2732
  %2749 = fsub fast float %2712, %2733
  %2750 = fsub fast float %2713, %2734
  %2751 = fmul fast float %2747, %2748
  %2752 = fmul fast float %2747, %2749
  %2753 = fmul fast float %2747, %2750
  %2754 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2755 = call float @dx.op.unary.f32(i32 27, float %2752)  ; Round_ni(value)
  %2756 = call float @dx.op.unary.f32(i32 27, float %2753)  ; Round_ni(value)
  %2757 = fadd fast float %2754, 5.000000e-01
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = fadd fast float %2756, 5.000000e-01
  %2760 = fmul fast float %2757, %2737
  %2761 = fmul fast float %2758, %2738
  %2762 = fmul fast float %2759, %2739
  %2763 = shl i32 %36, 2
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = add i32 %2765, 0
  %2767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2768 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2769 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2770 = call float @dx.op.unary.f32(i32 22, float %2762)  ; Frc(value)
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2767, %dx.types.Handle %30, float %2768, float %2769, float %2770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = fmul fast float %2772, 1.023000e+03
  %2776 = fmul fast float %2773, 1.023000e+03
  %2777 = fmul fast float %2774, 1.023000e+03
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2782 = call float @dx.op.unary.f32(i32 27, float %2779)  ; Round_ni(value)
  %2783 = call float @dx.op.unary.f32(i32 27, float %2780)  ; Round_ni(value)
  %2784 = fsub fast float %2751, %2754
  %2785 = fsub fast float %2752, %2755
  %2786 = fsub fast float %2753, %2756
  %2787 = fmul fast float %2784, 7.500000e-01
  %2788 = fmul fast float %2785, 7.500000e-01
  %2789 = fmul fast float %2786, 7.500000e-01
  %2790 = fadd fast float %2754, 1.250000e-01
  %2791 = fadd fast float %2790, %2787
  %2792 = fadd fast float %2791, %2781
  %2793 = fadd fast float %2755, 1.250000e-01
  %2794 = fadd fast float %2793, %2788
  %2795 = fadd fast float %2794, %2782
  %2796 = fadd fast float %2756, 1.250000e-01
  %2797 = fadd fast float %2796, %2789
  %2798 = fadd fast float %2797, %2783
  %2799 = fmul fast float %2792, %2742
  %2800 = fmul fast float %2795, %2743
  %2801 = fmul fast float %2798, %2744
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %2803, 0
  %2805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2805, %dx.types.Handle %28, float %2799, float %2800, float %2801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  br label %2808

; <label>:2808                                    ; preds = %2729, %2718
  %2809 = phi float [ %2807, %2729 ], [ -1.000000e+00, %2718 ]
  %2810 = fadd fast float %2809, %2716
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  br label %2812

; <label>:2812                                    ; preds = %2808, %2706
  %2813 = phi float [ %2811, %2808 ], [ %2716, %2706 ]
  %2814 = fmul fast float %2813, %399
  br label %2815

; <label>:2815                                    ; preds = %2812, %2701
  %2816 = phi float [ %2814, %2812 ], [ %399, %2701 ]
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 256
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2867, label %2821

; <label>:2821                                    ; preds = %2815
  %2822 = add i32 %35, 516
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %2824, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2826, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = add i32 %35, 148
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = shl i32 %2831, 4
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = lshr i32 %2831, 7
  %2836 = and i32 %2835, 32752
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = fsub fast float 1.000000e+00, %2816
  %2839 = call float @dx.op.binary.f32(i32 35, float %2838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2840 = bitcast float %2816 to i32
  %2841 = sitofp i32 %2840 to float
  %2842 = fadd fast float %2841, 0xC1CFBF8940000000
  %2843 = fmul fast float %2837, %2842
  %2844 = fadd fast float %2843, 0x41CFBF8940000000
  %2845 = fptosi float %2844 to i32
  %2846 = bitcast i32 %2845 to float
  %2847 = bitcast float %2839 to i32
  %2848 = sitofp i32 %2847 to float
  %2849 = fadd fast float %2848, 0xC1CFBF8940000000
  %2850 = fmul fast float %2849, %2837
  %2851 = fadd fast float %2850, 0x41CFBF8940000000
  %2852 = fptosi float %2851 to i32
  %2853 = bitcast i32 %2852 to float
  %2854 = fmul fast float %2846, %2834
  %2855 = fmul fast float %2853, %2834
  %2856 = fsub fast float %2839, %2854
  %2857 = fadd fast float %2855, %2839
  %2858 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2860 = fsub fast float %2828, %2858
  %2861 = fsub fast float %2859, %2858
  %2862 = bitcast float %2861 to i32
  %2863 = sub nsw i32 2129859010, %2862
  %2864 = bitcast i32 %2863 to float
  %2865 = fmul fast float %2864, %2860
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  br label %2867

; <label>:2867                                    ; preds = %2821, %2815
  %2868 = phi float [ %2866, %2821 ], [ %2816, %2815 ]
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 128
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2889, label %2873

; <label>:2873                                    ; preds = %2867
  %2874 = add i32 %35, 500
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = add i32 %2876, 0
  %2878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2878, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 524288
  %2884 = icmp ne i32 %2883, 0
  %2885 = fcmp fast ogt float %2880, 0x3FE0101020000000
  %2886 = select i1 %2885, float 1.000000e+00, float 0.000000e+00
  %2887 = select i1 %2884, float %2886, float %2880
  %2888 = fmul fast float %2887, %2868
  br label %2889

; <label>:2889                                    ; preds = %2873, %2867
  %2890 = phi float [ %2888, %2873 ], [ %2868, %2867 ]
  %2891 = fcmp fast ult float %2890, 0x3F70101020000000
  br i1 %2891, label %3434, label %2892

; <label>:2892                                    ; preds = %2889
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 16
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %3095, label %2897

; <label>:2897                                    ; preds = %2892
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %35, 452
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %2902, 0
  %2904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2904, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  %2909 = extractvalue %dx.types.ResRet.f32 %2905, 3
  %2910 = and i32 %2899, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = lshr i32 %2899, 8
  %2913 = and i32 %2912, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = fmul fast float %2909, %2911
  %2916 = fadd fast float %2915, %2914
  %2917 = fmul fast float %2916, 0x3F70101000000000
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 512
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %2930, label %2922

; <label>:2922                                    ; preds = %2897
  %2923 = add i32 %35, 532
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  br label %2930

; <label>:2930                                    ; preds = %2922, %2897
  %2931 = phi float [ %2929, %2922 ], [ 1.000000e+00, %2897 ]
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 33554432
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3042, label %2936

; <label>:2936                                    ; preds = %2930
  %2937 = add i32 %35, 272
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 65535
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2939, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = add i32 %35, 276
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 24
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = and i32 %2950, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = lshr i32 %2950, 8
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = lshr i32 %2950, 16
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = add i32 %35, 268
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = lshr i32 %2967, 24
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = and i32 %2967, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2967, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2967, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = bitcast float %2906 to i32
  %2983 = ashr i32 %2982, 1
  %2984 = sub nsw i32 1597463174, %2983
  %2985 = bitcast i32 %2984 to float
  %2986 = fmul fast float %2906, 5.000000e-01
  %2987 = fmul fast float %2985, %2985
  %2988 = fmul fast float %2987, %2986
  %2989 = fsub fast float 1.500000e+00, %2988
  %2990 = fmul fast float %2985, %2906
  %2991 = fmul fast float %2990, %2989
  %2992 = bitcast float %2907 to i32
  %2993 = ashr i32 %2992, 1
  %2994 = sub nsw i32 1597463174, %2993
  %2995 = bitcast i32 %2994 to float
  %2996 = fmul fast float %2907, 5.000000e-01
  %2997 = fmul fast float %2995, %2995
  %2998 = fmul fast float %2997, %2996
  %2999 = fsub fast float 1.500000e+00, %2998
  %3000 = fmul fast float %2995, %2907
  %3001 = fmul fast float %3000, %2999
  %3002 = bitcast float %2908 to i32
  %3003 = ashr i32 %3002, 1
  %3004 = sub nsw i32 1597463174, %3003
  %3005 = bitcast i32 %3004 to float
  %3006 = fmul fast float %2908, 5.000000e-01
  %3007 = fmul fast float %3005, %3005
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float 1.500000e+00, %3008
  %3010 = fmul fast float %3005, %2908
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float %2991, %2973
  %3013 = fsub fast float %3001, %2977
  %3014 = fsub fast float %3011, %2981
  %3015 = fmul fast float %3012, %2941
  %3016 = fmul fast float %3013, %2943
  %3017 = fmul fast float %3014, %2948
  %3018 = fadd fast float %3015, %2956
  %3019 = fadd fast float %3016, %2960
  %3020 = fadd fast float %3017, %2964
  %3021 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3022 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3023 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3024 = fmul fast float %3021, %3021
  %3025 = fmul fast float %3022, %3022
  %3026 = fmul fast float %3023, %3023
  %3027 = fsub fast float %3024, %2906
  %3028 = fsub fast float %3025, %2907
  %3029 = fsub fast float %3026, %2908
  %3030 = fmul fast float %3027, %2931
  %3031 = fmul fast float %3028, %2931
  %3032 = fmul fast float %3029, %2931
  %3033 = fadd fast float %3030, %2906
  %3034 = fadd fast float %3031, %2907
  %3035 = fadd fast float %3032, %2908
  %3036 = fadd fast float %2953, %2917
  %3037 = fsub fast float %3036, %2970
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fsub fast float %3038, %2917
  %3040 = fmul fast float %3039, %2931
  %3041 = fadd fast float %3040, %2917
  br label %3095

; <label>:3042                                    ; preds = %2930
  %3043 = and i32 %2933, 134217728
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3079, label %3045

; <label>:3045                                    ; preds = %3042
  %3046 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3048 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fadd fast float %3048, -5.000000e-01
  %3052 = fmul fast float %3049, %2931
  %3053 = fmul fast float %3050, %2931
  %3054 = fmul fast float %3051, %2931
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = fadd fast float %3054, 5.000000e-01
  %3058 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3060 = call float @dx.op.unary.f32(i32 24, float %2908)  ; Sqrt(value)
  %3061 = fmul fast float %3055, 2.000000e+00
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = fmul fast float %3062, %3058
  %3064 = fadd fast float %3063, %3061
  %3065 = fmul fast float %3064, %3058
  %3066 = fmul fast float %3056, 2.000000e+00
  %3067 = fsub fast float 1.000000e+00, %3066
  %3068 = fmul fast float %3067, %3059
  %3069 = fadd fast float %3068, %3066
  %3070 = fmul fast float %3069, %3059
  %3071 = fmul fast float %3057, 2.000000e+00
  %3072 = fsub fast float 1.000000e+00, %3071
  %3073 = fmul fast float %3072, %3060
  %3074 = fadd fast float %3073, %3071
  %3075 = fmul fast float %3074, %3060
  %3076 = fmul fast float %3065, %3065
  %3077 = fmul fast float %3070, %3070
  %3078 = fmul fast float %3075, %3075
  br label %3095

; <label>:3079                                    ; preds = %3042
  %3080 = fmul fast float %320, %320
  %3081 = fmul fast float %324, %324
  %3082 = fmul fast float %328, %328
  %3083 = fadd fast float %3080, -1.000000e+00
  %3084 = fadd fast float %3081, -1.000000e+00
  %3085 = fadd fast float %3082, -1.000000e+00
  %3086 = fmul fast float %2931, %3083
  %3087 = fmul fast float %2931, %3084
  %3088 = fmul fast float %2931, %3085
  %3089 = fadd fast float %3086, 1.000000e+00
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fadd fast float %3088, 1.000000e+00
  %3092 = fmul fast float %3089, %2906
  %3093 = fmul fast float %3090, %2907
  %3094 = fmul fast float %3091, %2908
  br label %3095

; <label>:3095                                    ; preds = %3079, %3045, %2936, %2892
  %3096 = phi float [ %3041, %2936 ], [ %2917, %3045 ], [ %2917, %3079 ], [ 0x3FA23C0BE0000000, %2892 ]
  %3097 = phi float [ %3033, %2936 ], [ %3076, %3045 ], [ %3092, %3079 ], [ 1.000000e+00, %2892 ]
  %3098 = phi float [ %3034, %2936 ], [ %3077, %3045 ], [ %3093, %3079 ], [ 1.000000e+00, %2892 ]
  %3099 = phi float [ %3035, %2936 ], [ %3078, %3045 ], [ %3094, %3079 ], [ 1.000000e+00, %2892 ]
  %3100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.i32 %3100, 1
  %3102 = and i32 %3101, 1
  %3103 = icmp ne i32 %3102, 0
  %3104 = add i32 %35, 356
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 32
  %3108 = icmp ne i32 %3107, 0
  %3109 = and i1 %3103, %3108
  %3110 = select i1 %3109, float 1.000000e+00, float %3097
  %3111 = select i1 %3109, float 0x3FD3333340000000, float %3098
  %3112 = select i1 %3109, float 0x3FD3333340000000, float %3099
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 32
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3189, label %3117

; <label>:3117                                    ; preds = %3095
  %3118 = add i32 %35, 140
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %35, 468
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %3123, 0
  %3125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3125, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.ResRet.f32 %3126, 3
  %3131 = and i32 %3120, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3120, 8
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = lshr i32 %3120, 16
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = fmul fast float %3127, %3132
  %3141 = fadd fast float %3140, %3135
  %3142 = fmul fast float %3141, 0x3F70101000000000
  %3143 = fadd fast float %3128, -5.000000e-01
  %3144 = fadd fast float %3130, -5.000000e-01
  %3145 = fmul fast float %3143, %3139
  %3146 = fmul fast float %3144, %3139
  %3147 = fadd fast float %3145, 5.000000e-01
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = fmul fast float %3147, 2.000000e+00
  %3150 = fadd fast float %3149, -1.000000e+00
  %3151 = fmul fast float %3148, 2.000000e+00
  %3152 = fadd fast float %3151, -1.000000e+00
  %3153 = fadd fast float %3150, %3152
  %3154 = fmul fast float %3153, 5.000000e-01
  %3155 = fsub fast float %3150, %3152
  %3156 = fmul fast float %3155, 5.000000e-01
  %3157 = call float @dx.op.unary.f32(i32 6, float %3154)  ; FAbs(value)
  %3158 = fsub fast float 1.000000e+00, %3157
  %3159 = call float @dx.op.unary.f32(i32 6, float %3156)  ; FAbs(value)
  %3160 = fsub fast float %3158, %3159
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3156, float %3160, float %3154, float %3156, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.unary.f32(i32 25, float %3161)  ; Rsqrt(value)
  %3163 = fmul fast float %3154, %3162
  %3164 = fmul fast float %3156, %3162
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 67108864
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3185, label %3169

; <label>:3169                                    ; preds = %3117
  %3170 = add i32 %35, 328
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = lshr i32 %3172, 16
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = fsub fast float %3142, %3180
  %3182 = fmul fast float %3181, %3174
  %3183 = fadd fast float %3182, %3178
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  br label %3185

; <label>:3185                                    ; preds = %3169, %3117
  %3186 = phi float [ %3184, %3169 ], [ %3142, %3117 ]
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3163, float %3164, float %2606, float %2607)  ; Dot2(ax,ay,bx,by)
  %3188 = call float @dx.op.dot2.f32(i32 54, float %3163, float %3164, float %2608, float %2609)  ; Dot2(ax,ay,bx,by)
  br label %3189

; <label>:3189                                    ; preds = %3185, %3095
  %3190 = phi float [ %3186, %3185 ], [ 0x3FD6666660000000, %3095 ]
  %3191 = phi float [ %3187, %3185 ], [ 0.000000e+00, %3095 ]
  %3192 = phi float [ %3188, %3185 ], [ 0.000000e+00, %3095 ]
  %3193 = phi float [ %3129, %3185 ], [ 1.000000e+00, %3095 ]
  %3194 = add i32 %35, 208
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = lshr i32 %3196, 22
  %3198 = shl nuw nsw i32 %3197, 5
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 64
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %3237, label %3204

; <label>:3204                                    ; preds = %3189
  %3205 = add i32 %35, 484
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %3207, 0
  %3209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 131072
  %3213 = icmp eq i32 %3212, 0
  %3214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3209, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.ResRet.f32 %3214, 1
  %3217 = extractvalue %dx.types.ResRet.f32 %3214, 2
  %3218 = fmul fast float %3215, %308
  %3219 = fmul fast float %3216, %311
  %3220 = fmul fast float %3217, %314
  br i1 %3213, label %3227, label %3221

; <label>:3221                                    ; preds = %3204
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = fmul fast float %3223, %3218
  %3225 = fmul fast float %3223, %3219
  %3226 = fmul fast float %3223, %3220
  br label %3227

; <label>:3227                                    ; preds = %3221, %3204
  %3228 = phi float [ %3224, %3221 ], [ %3218, %3204 ]
  %3229 = phi float [ %3225, %3221 ], [ %3219, %3204 ]
  %3230 = phi float [ %3226, %3221 ], [ %3220, %3204 ]
  %3231 = fmul fast float %3228, %3199
  %3232 = select i1 %176, float %3231, float %3228
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3232, float %3229, float %3230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = select i1 %176, float 0.000000e+00, float %3228
  %3235 = select i1 %176, float %3233, float %3229
  %3236 = select i1 %176, float 0.000000e+00, float %3230
  br label %3237

; <label>:3237                                    ; preds = %3227, %3189
  %3238 = phi float [ %3234, %3227 ], [ 0.000000e+00, %3189 ]
  %3239 = phi float [ %3235, %3227 ], [ 0.000000e+00, %3189 ]
  %3240 = phi float [ %3236, %3227 ], [ 0.000000e+00, %3189 ]
  %3241 = add i32 %35, 144
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = lshr i32 %3243, 8
  %3247 = and i32 %3246, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3111, float %3112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3248, %3249
  %3251 = fadd fast float %3250, %3245
  %3252 = fmul fast float %3251, 0x3F70101020000000
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  br i1 %2594, label %3254, label %3262

; <label>:3254                                    ; preds = %3237
  %3255 = fsub fast float 1.000000e+00, %2890
  %3256 = fmul fast float %3255, %2583
  %3257 = fmul fast float %3255, %2584
  %3258 = fmul fast float %3255, %2585
  %3259 = fmul fast float %3255, %2586
  %3260 = fmul fast float %3255, %2587
  %3261 = fmul fast float %3255, %2588
  br label %3262

; <label>:3262                                    ; preds = %3254, %3237
  %3263 = phi float [ %3256, %3254 ], [ %2583, %3237 ]
  %3264 = phi float [ %3257, %3254 ], [ %2584, %3237 ]
  %3265 = phi float [ %3258, %3254 ], [ %2585, %3237 ]
  %3266 = phi float [ %3259, %3254 ], [ %2586, %3237 ]
  %3267 = phi float [ %3260, %3254 ], [ %2587, %3237 ]
  %3268 = phi float [ %3261, %3254 ], [ %2588, %3237 ]
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 3
  %3272 = icmp eq i32 %3271, 3
  br i1 %3272, label %3351, label %3273

; <label>:3273                                    ; preds = %3262
  %3274 = and i32 %3270, 16
  %3275 = icmp ne i32 %3274, 0
  %3276 = select i1 %3275, float %2890, float 0.000000e+00
  %3277 = icmp eq i32 %3271, 0
  br i1 %3277, label %3278, label %3306

; <label>:3278                                    ; preds = %3273
  %3279 = and i32 %3270, 64
  %3280 = icmp ne i32 %3279, 0
  %3281 = select i1 %3280, float %2890, float 0.000000e+00
  %3282 = fsub fast float %3110, %3263
  %3283 = fsub fast float %3111, %3264
  %3284 = fsub fast float %3112, %3265
  %3285 = fmul fast float %3276, %3282
  %3286 = fmul fast float %3276, %3283
  %3287 = fmul fast float %3276, %3284
  %3288 = fadd fast float %3285, %3263
  %3289 = fadd fast float %3286, %3264
  %3290 = fadd fast float %3287, %3265
  %3291 = fsub fast float %3096, %2589
  %3292 = fmul fast float %3276, %3291
  %3293 = fadd fast float %3292, %2589
  %3294 = fsub fast float %3238, %3266
  %3295 = fsub fast float %3239, %3267
  %3296 = fsub fast float %3240, %3268
  %3297 = fmul fast float %3281, %3294
  %3298 = fmul fast float %3281, %3295
  %3299 = fmul fast float %3281, %3296
  %3300 = fadd fast float %3297, %3266
  %3301 = fadd fast float %3298, %3267
  %3302 = fadd fast float %3299, %3268
  %3303 = fsub fast float %3253, %2592
  %3304 = fmul fast float %3276, %3303
  %3305 = fadd fast float %3304, %2592
  br label %3351

; <label>:3306                                    ; preds = %3273
  %3307 = icmp eq i32 %3271, 1
  br i1 %3307, label %3308, label %3321

; <label>:3308                                    ; preds = %3306
  %3309 = fadd fast float %3110, -1.000000e+00
  %3310 = fadd fast float %3111, -1.000000e+00
  %3311 = fadd fast float %3112, -1.000000e+00
  %3312 = fmul fast float %3276, %3309
  %3313 = fmul fast float %3276, %3310
  %3314 = fmul fast float %3276, %3311
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fadd fast float %3314, 1.000000e+00
  %3318 = fmul fast float %3315, %3263
  %3319 = fmul fast float %3316, %3264
  %3320 = fmul fast float %3317, %3265
  br label %3351

; <label>:3321                                    ; preds = %3306
  %3322 = icmp eq i32 %3271, 2
  br i1 %3322, label %3323, label %3351

; <label>:3323                                    ; preds = %3321
  %3324 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3325 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3326 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3327 = fadd fast float %3324, -5.000000e-01
  %3328 = fadd fast float %3325, -5.000000e-01
  %3329 = fadd fast float %3326, -5.000000e-01
  %3330 = fmul fast float %3327, %3276
  %3331 = fmul fast float %3328, %3276
  %3332 = fmul fast float %3329, %3276
  %3333 = fadd fast float %3330, 5.000000e-01
  %3334 = fadd fast float %3331, 5.000000e-01
  %3335 = fadd fast float %3332, 5.000000e-01
  %3336 = fmul fast float %3333, 2.000000e+00
  %3337 = fsub fast float 1.000000e+00, %3336
  %3338 = fmul fast float %3337, %3263
  %3339 = fadd fast float %3338, %3336
  %3340 = fmul fast float %3339, %3263
  %3341 = fmul fast float %3334, 2.000000e+00
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = fmul fast float %3342, %3264
  %3344 = fadd fast float %3343, %3341
  %3345 = fmul fast float %3344, %3264
  %3346 = fmul fast float %3335, 2.000000e+00
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fmul fast float %3347, %3265
  %3349 = fadd fast float %3348, %3346
  %3350 = fmul fast float %3349, %3265
  br label %3351

; <label>:3351                                    ; preds = %3323, %3321, %3308, %3278, %3262
  %3352 = phi float [ %3263, %3262 ], [ %3340, %3323 ], [ %3263, %3321 ], [ %3318, %3308 ], [ %3288, %3278 ]
  %3353 = phi float [ %3264, %3262 ], [ %3345, %3323 ], [ %3264, %3321 ], [ %3319, %3308 ], [ %3289, %3278 ]
  %3354 = phi float [ %3265, %3262 ], [ %3350, %3323 ], [ %3265, %3321 ], [ %3320, %3308 ], [ %3290, %3278 ]
  %3355 = phi float [ %3266, %3262 ], [ %3266, %3323 ], [ %3266, %3321 ], [ %3266, %3308 ], [ %3300, %3278 ]
  %3356 = phi float [ %3267, %3262 ], [ %3267, %3323 ], [ %3267, %3321 ], [ %3267, %3308 ], [ %3301, %3278 ]
  %3357 = phi float [ %3268, %3262 ], [ %3268, %3323 ], [ %3268, %3321 ], [ %3268, %3308 ], [ %3302, %3278 ]
  %3358 = phi float [ %2589, %3262 ], [ %2589, %3323 ], [ %2589, %3321 ], [ %2589, %3308 ], [ %3293, %3278 ]
  %3359 = phi float [ %2592, %3262 ], [ %2592, %3323 ], [ %2592, %3321 ], [ %2592, %3308 ], [ %3305, %3278 ]
  %3360 = and i32 %3270, 12
  %3361 = icmp eq i32 %3360, 12
  br i1 %3361, label %3434, label %3362

; <label>:3362                                    ; preds = %3351
  %3363 = and i32 %3270, 2097184
  %3364 = icmp eq i32 %3363, 2097184
  %3365 = select i1 %3364, float %2890, float 0.000000e+00
  %3366 = and i32 %3270, 4194336
  %3367 = icmp eq i32 %3366, 4194336
  %3368 = select i1 %3367, float %2890, float 0.000000e+00
  %3369 = and i32 %3270, 8388640
  %3370 = icmp eq i32 %3369, 8388640
  %3371 = select i1 %3370, float %2890, float 0.000000e+00
  %3372 = icmp eq i32 %3360, 0
  br i1 %3372, label %3373, label %3386

; <label>:3373                                    ; preds = %3362
  %3374 = fsub fast float %3191, %2581
  %3375 = fsub fast float %3192, %2582
  %3376 = fmul fast float %3365, %3374
  %3377 = fmul fast float %3365, %3375
  %3378 = fadd fast float %3376, %2581
  %3379 = fadd fast float %3377, %2582
  %3380 = fsub fast float %3193, %2591
  %3381 = fmul fast float %3368, %3380
  %3382 = fadd fast float %3381, %2591
  %3383 = fsub fast float %3190, %2590
  %3384 = fmul fast float %3371, %3383
  %3385 = fadd fast float %3384, %2590
  br label %3434

; <label>:3386                                    ; preds = %3362
  %3387 = icmp eq i32 %3360, 4
  br i1 %3387, label %3388, label %3420

; <label>:3388                                    ; preds = %3386
  %3389 = fmul fast float %3365, %3191
  %3390 = fmul fast float %3365, %3192
  %3391 = fadd fast float %3389, %2581
  %3392 = fadd fast float %3390, %2582
  %3393 = call float @dx.op.binary.f32(i32 36, float %2591, float %3193)  ; FMin(a,b)
  %3394 = fsub fast float %3393, %2591
  %3395 = fmul fast float %3394, %3368
  %3396 = fadd fast float %3395, %2591
  %3397 = fadd fast float %3190, %2590
  %3398 = fmul fast float %3397, 0x3FF337FAE0000000
  %3399 = fmul fast float %2590, %2590
  %3400 = fmul fast float %3190, %3190
  %3401 = fadd fast float %3400, %3399
  %3402 = fmul fast float %3401, 0x3FE5152B00000000
  %3403 = fmul fast float %2590, 0xBFCC1F85E0000000
  %3404 = fmul fast float %3403, %3190
  %3405 = fadd fast float %3404, 0xBFE1363700000000
  %3406 = fadd fast float %3405, %3398
  %3407 = fsub fast float %3406, %3402
  %3408 = fmul fast float %3397, 0x3FBA6F0D00000000
  %3409 = fmul fast float %3401, 0x3FD0432880000000
  %3410 = fmul fast float %2590, 0xBFEF110800000000
  %3411 = fmul fast float %3410, %3190
  %3412 = fadd fast float %3411, 1.000000e+00
  %3413 = fsub fast float %3412, %3408
  %3414 = fadd fast float %3413, %3409
  %3415 = fdiv fast float %3407, %3414
  %3416 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3417 = fsub fast float %3416, %2590
  %3418 = fmul fast float %3417, %3371
  %3419 = fadd fast float %3418, %2590
  br label %3434

; <label>:3420                                    ; preds = %3386
  %3421 = icmp eq i32 %3360, 8
  br i1 %3421, label %3422, label %3434

; <label>:3422                                    ; preds = %3420
  %3423 = fmul fast float %3365, %3191
  %3424 = fmul fast float %3365, %3192
  %3425 = fadd fast float %3423, %2581
  %3426 = fadd fast float %3424, %2582
  %3427 = call float @dx.op.binary.f32(i32 36, float %2591, float %3193)  ; FMin(a,b)
  %3428 = fsub fast float %3427, %2591
  %3429 = fmul fast float %3428, %3368
  %3430 = fadd fast float %3429, %2591
  %3431 = fsub fast float %3190, %2590
  %3432 = fmul fast float %3371, %3431
  %3433 = fadd fast float %3432, %2590
  br label %3434

; <label>:3434                                    ; preds = %3422, %3420, %3388, %3373, %3351, %2889, %2593, %2580
  %3435 = phi float [ %2581, %3351 ], [ %2581, %2889 ], [ %2581, %2580 ], [ %2581, %2593 ], [ %3378, %3373 ], [ %3391, %3388 ], [ %2581, %3420 ], [ %3425, %3422 ]
  %3436 = phi float [ %2582, %3351 ], [ %2582, %2889 ], [ %2582, %2580 ], [ %2582, %2593 ], [ %3379, %3373 ], [ %3392, %3388 ], [ %2582, %3420 ], [ %3426, %3422 ]
  %3437 = phi float [ %3352, %3351 ], [ %2583, %2889 ], [ %2583, %2580 ], [ %2583, %2593 ], [ %3352, %3373 ], [ %3352, %3388 ], [ %3352, %3420 ], [ %3352, %3422 ]
  %3438 = phi float [ %3353, %3351 ], [ %2584, %2889 ], [ %2584, %2580 ], [ %2584, %2593 ], [ %3353, %3373 ], [ %3353, %3388 ], [ %3353, %3420 ], [ %3353, %3422 ]
  %3439 = phi float [ %3354, %3351 ], [ %2585, %2889 ], [ %2585, %2580 ], [ %2585, %2593 ], [ %3354, %3373 ], [ %3354, %3388 ], [ %3354, %3420 ], [ %3354, %3422 ]
  %3440 = phi float [ %3355, %3351 ], [ %2586, %2889 ], [ %2586, %2580 ], [ %2586, %2593 ], [ %3355, %3373 ], [ %3355, %3388 ], [ %3355, %3420 ], [ %3355, %3422 ]
  %3441 = phi float [ %3356, %3351 ], [ %2587, %2889 ], [ %2587, %2580 ], [ %2587, %2593 ], [ %3356, %3373 ], [ %3356, %3388 ], [ %3356, %3420 ], [ %3356, %3422 ]
  %3442 = phi float [ %3357, %3351 ], [ %2588, %2889 ], [ %2588, %2580 ], [ %2588, %2593 ], [ %3357, %3373 ], [ %3357, %3388 ], [ %3357, %3420 ], [ %3357, %3422 ]
  %3443 = phi float [ %3358, %3351 ], [ %2589, %2889 ], [ %2589, %2580 ], [ %2589, %2593 ], [ %3358, %3373 ], [ %3358, %3388 ], [ %3358, %3420 ], [ %3358, %3422 ]
  %3444 = phi float [ %2590, %3351 ], [ %2590, %2889 ], [ %2590, %2580 ], [ %2590, %2593 ], [ %3385, %3373 ], [ %3419, %3388 ], [ %2590, %3420 ], [ %3433, %3422 ]
  %3445 = phi float [ %2591, %3351 ], [ %2591, %2889 ], [ %2591, %2580 ], [ %2591, %2593 ], [ %3382, %3373 ], [ %3396, %3388 ], [ %2591, %3420 ], [ %3430, %3422 ]
  %3446 = phi float [ %3359, %3351 ], [ %2592, %2889 ], [ %2592, %2580 ], [ %2592, %2593 ], [ %3359, %3373 ], [ %3359, %3388 ], [ %3359, %3420 ], [ %3359, %3422 ]
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 0
  %3449 = call float @dx.op.dot2.f32(i32 54, float %3435, float %3436, float %3435, float %3436)  ; Dot2(ax,ay,bx,by)
  %3450 = fmul fast float %3449, 0x3FE3333340000000
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3435, float %3436, float %3451, float %3435, float %3436, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = call float @dx.op.unary.f32(i32 25, float %3452)  ; Rsqrt(value)
  %3454 = fmul fast float %3453, %3435
  %3455 = fmul fast float %3453, %3436
  %3456 = fmul fast float %3451, %3453
  %3457 = fmul fast float %3456, %84
  %3458 = fmul fast float %3456, %86
  %3459 = fmul fast float %3456, %88
  %3460 = fmul fast float %3454, %56
  %3461 = fmul fast float %3454, %57
  %3462 = fmul fast float %3454, %58
  %3463 = fadd fast float %3457, %3460
  %3464 = fadd fast float %3458, %3461
  %3465 = fadd fast float %3459, %3462
  %3466 = fmul fast float %98, %3455
  %3467 = fmul fast float %99, %3455
  %3468 = fmul fast float %100, %3455
  %3469 = fadd fast float %3463, %3466
  %3470 = fadd fast float %3464, %3467
  %3471 = fadd fast float %3465, %3468
  %3472 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3470, float %3471, float %3469, float %3470, float %3471)  ; Dot3(ax,ay,az,bx,by,bz)
  %3473 = call float @dx.op.unary.f32(i32 25, float %3472)  ; Rsqrt(value)
  %3474 = fmul fast float %3469, %3473
  %3475 = fmul fast float %3470, %3473
  %3476 = fmul fast float %3471, %3473
  %3477 = and i32 %37, 1
  %3478 = icmp eq i32 %3477, 0
  br i1 %3478, label %3479, label %3987

; <label>:3479                                    ; preds = %3434
  %3480 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3481 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3482 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3483 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3484 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3485 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3486 = fadd fast float %3480, %134
  %3487 = fadd fast float %3481, %135
  %3488 = fadd fast float %3482, %136
  %3489 = fadd fast float %3483, %134
  %3490 = fadd fast float %3484, %135
  %3491 = fadd fast float %3485, %136
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.CBufRet.f32 %3492, 2
  %3496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3497 = extractvalue %dx.types.CBufRet.f32 %3496, 2
  %3498 = extractvalue %dx.types.CBufRet.f32 %3496, 3
  %3499 = fmul fast float %3493, %75
  %3500 = fmul fast float %3499, %3497
  %3501 = fmul fast float %3494, %76
  %3502 = fmul fast float %3501, %3498
  %3503 = fptoui float %3500 to i32
  %3504 = fptoui float %3502 to i32
  %3505 = fadd fast float %3493, -1.000000e+00
  %3506 = fadd fast float %3494, -1.000000e+00
  %3507 = fptoui float %3505 to i32
  %3508 = fptoui float %3506 to i32
  %3509 = call i32 @dx.op.binary.i32(i32 40, i32 %3503, i32 %3507)  ; UMin(a,b)
  %3510 = call i32 @dx.op.binary.i32(i32 40, i32 %3504, i32 %3508)  ; UMin(a,b)
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 3
  %3514 = fmul fast float %3512, %70
  %3515 = fsub fast float %3514, %3513
  %3516 = fadd fast float %3495, -1.000000e+00
  %3517 = call float @dx.op.binary.f32(i32 36, float %3515, float %3516)  ; FMin(a,b)
  %3518 = fptoui float %3517 to i32
  %3519 = fptoui float %3493 to i32
  %3520 = fptoui float %3494 to i32
  %3521 = mul i32 %3518, %3520
  %3522 = add i32 %3521, %3510
  %3523 = mul i32 %3522, %3519
  %3524 = add i32 %3523, %3509
  %3525 = shl i32 %3524, 2
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 1023
  %3529 = lshr i32 %3527, 10
  %3530 = icmp eq i32 %3528, 0
  br i1 %3530, label %3956, label %3531

; <label>:3531                                    ; preds = %3479
  %3532 = and i32 %3527, 1023
  br label %3533

; <label>:3533                                    ; preds = %3659, %3531
  %3534 = phi i32 [ %3609, %3659 ], [ 0, %3531 ]
  %3535 = phi float [ %3660, %3659 ], [ 0.000000e+00, %3531 ]
  %3536 = phi float [ %3661, %3659 ], [ %3448, %3531 ]
  %3537 = phi float [ %3662, %3659 ], [ %3446, %3531 ]
  %3538 = phi float [ %3663, %3659 ], [ 0.000000e+00, %3531 ]
  %3539 = phi float [ %3664, %3659 ], [ 0.000000e+00, %3531 ]
  %3540 = phi float [ %3665, %3659 ], [ %3440, %3531 ]
  %3541 = phi float [ %3666, %3659 ], [ %3441, %3531 ]
  %3542 = phi float [ %3667, %3659 ], [ %3442, %3531 ]
  %3543 = phi float [ %3668, %3659 ], [ %3474, %3531 ]
  %3544 = phi float [ %3669, %3659 ], [ %3475, %3531 ]
  %3545 = phi float [ %3670, %3659 ], [ %3476, %3531 ]
  %3546 = phi float [ %3671, %3659 ], [ %3445, %3531 ]
  %3547 = phi float [ %3672, %3659 ], [ %3444, %3531 ]
  %3548 = phi float [ %3673, %3659 ], [ 0.000000e+00, %3531 ]
  %3549 = phi float [ %3674, %3659 ], [ %3443, %3531 ]
  %3550 = phi float [ %3675, %3659 ], [ %3437, %3531 ]
  %3551 = phi float [ %3676, %3659 ], [ %3438, %3531 ]
  %3552 = phi float [ %3677, %3659 ], [ %3439, %3531 ]
  %3553 = add nuw nsw i32 %3534, %3529
  %3554 = shl i32 %3553, 2
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = shl i32 %3556, 8
  %3558 = or i32 %3557, 48
  %3559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.ResRet.f32 %3559, 1
  %3562 = extractvalue %dx.types.ResRet.f32 %3559, 2
  %3563 = extractvalue %dx.types.ResRet.f32 %3559, 3
  %3564 = or i32 %3557, 64
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.i32 %3565, 1
  %3568 = or i32 %3557, 80
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3572 = or i32 %3557, 96
  %3573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = extractvalue %dx.types.ResRet.f32 %3573, 3
  %3578 = or i32 %3557, 112
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3581 = or i32 %3557, 128
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = or i32 %3557, 144
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = extractvalue %dx.types.ResRet.f32 %3588, 3
  %3593 = or i32 %3557, 160
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3557, 192
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = or i32 %3557, 208
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = or i32 %3557, 248
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = add nuw nsw i32 %3534, 1
  %3610 = bitcast float %3563 to i32
  %3611 = and i32 %3610, 512
  %3612 = icmp eq i32 %3611, 0
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3619 = or i32 %3557, 16
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = call float @dx.op.dot4.f32(i32 56, float %3621, float %3622, float %3623, float %3624, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3626 = or i32 %3557, 32
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = call float @dx.op.dot4.f32(i32 56, float %3628, float %3629, float %3630, float %3631, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3633 = call float @dx.op.unary.f32(i32 27, float %3618)  ; Round_ni(value)
  %3634 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3635 = call float @dx.op.unary.f32(i32 27, float %3625)  ; Round_ni(value)
  %3636 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3637 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 27, float %3637)  ; Round_ni(value)
  %3639 = fadd fast float %3636, %3634
  %3640 = fadd fast float %3639, %3638
  %3641 = fcmp fast oeq float %3640, 0.000000e+00
  %3642 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %3486, float %3487, float %3488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3621, float %3622, float %3623, float %3624, float %3486, float %3487, float %3488, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3621, float %3622, float %3623, float %3624, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = fsub fast float %3642, %3618
  %3647 = fsub fast float %3644, %3618
  %3648 = fsub fast float %3643, %3625
  %3649 = fsub fast float %3645, %3625
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3560, float %3561, float %3562, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3653 = fadd fast float %3652, %3650
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3656 = fcmp fast ogt float %3654, %3655
  %3657 = and i1 %3641, %3656
  %3658 = and i1 %3612, %3657
  br i1 %3658, label %3679, label %3659

; <label>:3659                                    ; preds = %3942, %3760, %3679, %3533
  %3660 = phi float [ %3535, %3679 ], [ %3763, %3760 ], [ %3763, %3942 ], [ %3535, %3533 ]
  %3661 = phi float [ %3536, %3679 ], [ %3536, %3760 ], [ %3917, %3942 ], [ %3536, %3533 ]
  %3662 = phi float [ %3537, %3679 ], [ %3537, %3760 ], [ %3915, %3942 ], [ %3537, %3533 ]
  %3663 = phi float [ %3538, %3679 ], [ %3538, %3760 ], [ %3887, %3942 ], [ %3538, %3533 ]
  %3664 = phi float [ %3539, %3679 ], [ %3539, %3760 ], [ %3885, %3942 ], [ %3539, %3533 ]
  %3665 = phi float [ %3540, %3679 ], [ %3540, %3760 ], [ %3952, %3942 ], [ %3540, %3533 ]
  %3666 = phi float [ %3541, %3679 ], [ %3541, %3760 ], [ %3953, %3942 ], [ %3541, %3533 ]
  %3667 = phi float [ %3542, %3679 ], [ %3542, %3760 ], [ %3954, %3942 ], [ %3542, %3533 ]
  %3668 = phi float [ %3543, %3679 ], [ %3543, %3760 ], [ %3866, %3942 ], [ %3543, %3533 ]
  %3669 = phi float [ %3544, %3679 ], [ %3544, %3760 ], [ %3867, %3942 ], [ %3544, %3533 ]
  %3670 = phi float [ %3545, %3679 ], [ %3545, %3760 ], [ %3868, %3942 ], [ %3545, %3533 ]
  %3671 = phi float [ %3546, %3679 ], [ %3546, %3760 ], [ %3895, %3942 ], [ %3546, %3533 ]
  %3672 = phi float [ %3547, %3679 ], [ %3547, %3760 ], [ %3892, %3942 ], [ %3547, %3533 ]
  %3673 = phi float [ %3548, %3679 ], [ %3548, %3760 ], [ %3889, %3942 ], [ %3548, %3533 ]
  %3674 = phi float [ %3549, %3679 ], [ %3549, %3760 ], [ %3883, %3942 ], [ %3549, %3533 ]
  %3675 = phi float [ %3550, %3679 ], [ %3550, %3760 ], [ %3878, %3942 ], [ %3550, %3533 ]
  %3676 = phi float [ %3551, %3679 ], [ %3551, %3760 ], [ %3879, %3942 ], [ %3551, %3533 ]
  %3677 = phi float [ %3552, %3679 ], [ %3552, %3760 ], [ %3880, %3942 ], [ %3552, %3533 ]
  %3678 = icmp eq i32 %3609, %3532
  br i1 %3678, label %3955, label %3533

; <label>:3679                                    ; preds = %3533
  %3680 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3681 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3685 = extractvalue %dx.types.ResRet.i32 %3565, 3
  %3686 = extractvalue %dx.types.ResRet.i32 %3565, 2
  %3687 = add i32 %3685, 0
  %3688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3688, %dx.types.Handle %3689, float %3618, float %3625, float undef, float undef, i32 0, i32 0, i32 undef, float %3646, float %3648, float undef, float %3647, float %3649, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = fmul fast float %3691, %3684
  %3693 = fadd fast float %3692, %3683
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = fmul fast float %3618, %3574
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3625, float %3695)  ; FMad(a,b,c)
  %3697 = fadd fast float %3696, %3682
  %3698 = fmul fast float %3618, %3576
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3577, float %3625, float %3698)  ; FMad(a,b,c)
  %3700 = fadd fast float %3699, %3681
  %3701 = fmul fast float %3646, %3574
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3648, float %3701)  ; FMad(a,b,c)
  %3703 = fmul fast float %3646, %3576
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3577, float %3648, float %3703)  ; FMad(a,b,c)
  %3705 = fmul fast float %3647, %3574
  %3706 = call float @dx.op.tertiary.f32(i32 46, float %3575, float %3649, float %3705)  ; FMad(a,b,c)
  %3707 = fmul fast float %3647, %3576
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3577, float %3649, float %3707)  ; FMad(a,b,c)
  %3709 = add i32 %3686, 0
  %3710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3710, %dx.types.Handle %3689, float %3697, float %3700, float undef, float undef, i32 0, i32 0, i32 undef, float %3702, float %3704, float undef, float %3706, float %3708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3712 = extractvalue %dx.types.ResRet.f32 %3711, 0
  %3713 = and i32 %3610, 1024
  %3714 = icmp ne i32 %3713, 0
  %3715 = fcmp fast ogt float %3712, 0x3FE0101020000000
  %3716 = uitofp i1 %3715 to float
  %3717 = select i1 %3714, float %3716, float %3712
  %3718 = and i32 %3610, 8192
  %3719 = icmp ne i32 %3718, 0
  %3720 = select i1 %3719, float %3680, float 1.000000e+00
  %3721 = fmul fast float %3618, 2.000000e+00
  %3722 = fadd fast float %3721, -1.000000e+00
  %3723 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3724 = fmul fast float %3723, %3607
  %3725 = fsub fast float %3724, %3607
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3625, 2.000000e+00
  %3728 = fadd fast float %3727, -1.000000e+00
  %3729 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3730 = fmul fast float %3729, %3608
  %3731 = fsub fast float %3730, %3608
  %3732 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3733 = fmul fast float %3637, %3570
  %3734 = fsub fast float %3733, %3570
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3694, %3720
  %3737 = fmul fast float %3736, %3691
  %3738 = fmul fast float %3737, %3726
  %3739 = fmul fast float %3738, %3717
  %3740 = fmul fast float %3739, %3732
  %3741 = fmul fast float %3740, %3735
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3745 = fsub fast float %3654, %3744
  %3746 = fmul fast float %3745, %3743
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3741, %3571
  %3749 = fadd fast float %3741, %3571
  %3750 = fmul fast float %3749, %3580
  %3751 = fsub fast float %3750, %3580
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = and i32 %3610, 128
  %3754 = icmp ne i32 %3753, 0
  %3755 = select i1 %3754, float %3752, float %3748
  %3756 = fmul fast float %3755, %3747
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 0
  %3759 = fcmp fast ugt float %3756, %3758
  br i1 %3759, label %3760, label %3659

; <label>:3760                                    ; preds = %3679
  %3761 = select i1 %3719, float %3756, float 0.000000e+00
  %3762 = fadd fast float %3761, %3535
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  br i1 %3719, label %3659, label %3764

; <label>:3764                                    ; preds = %3760
  %3765 = and i32 %3610, 4
  %3766 = and i32 %3610, 8
  %3767 = add i32 %3566, 0
  %3768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3767, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3770 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3768, %dx.types.Handle %3769, float %3697, float %3700, float undef, float undef, i32 0, i32 0, i32 undef, float %3702, float %3704, float undef, float %3706, float %3708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = bitcast float %3592 to i32
  %3776 = and i32 %3775, 255
  %3777 = uitofp i32 %3776 to float
  %3778 = lshr i32 %3775, 8
  %3779 = and i32 %3778, 255
  %3780 = uitofp i32 %3779 to float
  %3781 = fmul fast float %3774, %3777
  %3782 = fadd fast float %3781, %3780
  %3783 = fmul fast float %3782, 0x3F70101000000000
  %3784 = add i32 %3567, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3785, %dx.types.Handle %3769, float %3697, float %3700, float undef, float undef, i32 0, i32 0, i32 undef, float %3702, float %3704, float undef, float %3706, float %3708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = bitcast float %3586 to i32
  %3792 = and i32 %3791, 255
  %3793 = uitofp i32 %3792 to float
  %3794 = lshr i32 %3791, 8
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = lshr i32 %3791, 16
  %3798 = and i32 %3797, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = fmul fast float %3799, 0x3F70101000000000
  %3801 = fmul fast float %3787, %3793
  %3802 = fadd fast float %3801, %3796
  %3803 = fmul fast float %3802, 0x3F70101000000000
  %3804 = fadd fast float %3788, -5.000000e-01
  %3805 = fadd fast float %3790, -5.000000e-01
  %3806 = fmul fast float %3804, %3800
  %3807 = fmul fast float %3805, %3800
  %3808 = fadd fast float %3806, 5.000000e-01
  %3809 = fadd fast float %3807, 5.000000e-01
  %3810 = fmul fast float %3771, %3595
  %3811 = fmul fast float %3772, %3596
  %3812 = fmul fast float %3773, %3597
  %3813 = fmul fast float %3808, 2.000000e+00
  %3814 = fadd fast float %3813, -1.000000e+00
  %3815 = fmul fast float %3809, 2.000000e+00
  %3816 = fadd fast float %3815, -1.000000e+00
  %3817 = fadd fast float %3814, %3816
  %3818 = fmul fast float %3817, 5.000000e-01
  %3819 = fsub fast float %3814, %3816
  %3820 = fmul fast float %3819, 5.000000e-01
  %3821 = call float @dx.op.unary.f32(i32 6, float %3818)  ; FAbs(value)
  %3822 = fsub fast float 1.000000e+00, %3821
  %3823 = call float @dx.op.unary.f32(i32 6, float %3820)  ; FAbs(value)
  %3824 = fsub fast float %3822, %3823
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3820, float %3824, float %3818, float %3820, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call float @dx.op.unary.f32(i32 25, float %3825)  ; Rsqrt(value)
  %3827 = fmul fast float %3818, %3826
  %3828 = fmul fast float %3820, %3826
  %3829 = fmul fast float %3826, %3824
  %3830 = fmul fast float %3829, %3560
  %3831 = fmul fast float %3829, %3561
  %3832 = fmul fast float %3829, %3562
  %3833 = fmul fast float %3827, %3583
  %3834 = fmul fast float %3827, %3584
  %3835 = fmul fast float %3827, %3585
  %3836 = fadd fast float %3833, %3830
  %3837 = fadd fast float %3834, %3831
  %3838 = fadd fast float %3835, %3832
  %3839 = fmul fast float %3828, %3589
  %3840 = fmul fast float %3828, %3590
  %3841 = fmul fast float %3828, %3591
  %3842 = fadd fast float %3836, %3839
  %3843 = fadd fast float %3837, %3840
  %3844 = fadd fast float %3838, %3841
  %3845 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float %3842, float %3843, float %3844)  ; Dot3(ax,ay,az,bx,by,bz)
  %3846 = call float @dx.op.unary.f32(i32 25, float %3845)  ; Rsqrt(value)
  %3847 = fmul fast float %3842, %3846
  %3848 = fmul fast float %3843, %3846
  %3849 = fmul fast float %3844, %3846
  %3850 = icmp ne i32 %3766, 0
  %3851 = select i1 %3850, float 1.000000e+00, float 0.000000e+00
  %3852 = fmul fast float %3756, %3851
  %3853 = and i32 %3610, 1
  %3854 = icmp eq i32 %3853, 0
  br i1 %3854, label %3855, label %3859

; <label>:3855                                    ; preds = %3764
  %3856 = fsub fast float %3847, %3543
  %3857 = fsub fast float %3848, %3544
  %3858 = fsub fast float %3849, %3545
  br label %3859

; <label>:3859                                    ; preds = %3855, %3764
  %3860 = phi float [ %3856, %3855 ], [ %3847, %3764 ]
  %3861 = phi float [ %3857, %3855 ], [ %3848, %3764 ]
  %3862 = phi float [ %3858, %3855 ], [ %3849, %3764 ]
  %3863 = fmul float %3862, %3852
  %3864 = fmul float %3861, %3852
  %3865 = fmul float %3860, %3852
  %3866 = fadd fast float %3865, %3543
  %3867 = fadd fast float %3864, %3544
  %3868 = fadd fast float %3863, %3545
  %3869 = icmp ne i32 %3765, 0
  %3870 = select i1 %3869, float 1.000000e+00, float 0.000000e+00
  %3871 = fmul fast float %3756, %3870
  %3872 = fsub fast float %3810, %3550
  %3873 = fsub fast float %3811, %3551
  %3874 = fsub fast float %3812, %3552
  %3875 = fmul fast float %3872, %3871
  %3876 = fmul fast float %3873, %3871
  %3877 = fmul fast float %3874, %3871
  %3878 = fadd fast float %3875, %3550
  %3879 = fadd fast float %3876, %3551
  %3880 = fadd fast float %3877, %3552
  %3881 = fsub fast float %3783, %3549
  %3882 = fmul fast float %3881, %3871
  %3883 = fadd fast float %3882, %3549
  %3884 = fmul fast float %3871, %3539
  %3885 = fsub fast float %3539, %3884
  %3886 = fmul fast float %3871, %3538
  %3887 = fsub fast float %3538, %3886
  %3888 = fadd fast float %3756, %3548
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = fsub fast float %3803, %3547
  %3891 = fmul fast float %3890, %3852
  %3892 = fadd fast float %3891, %3547
  %3893 = fsub fast float %3789, %3546
  %3894 = fmul fast float %3893, %3852
  %3895 = fadd fast float %3894, %3546
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3900 = fmul fast float %3899, %3896
  %3901 = fadd fast float %3900, %3898
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = bitcast float %3598 to i32
  %3904 = and i32 %3903, 65535
  %3905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3904)  ; LegacyF16ToF32(value)
  %3906 = lshr i32 %3903, 16
  %3907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3906)  ; LegacyF16ToF32(value)
  %3908 = fcmp fast oge float %3905, 0.000000e+00
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = select i1 %3908, float %3905, float %3910
  %3912 = fadd fast float %3911, %3907
  %3913 = fsub fast float %3902, %3537
  %3914 = fmul fast float %3913, %3756
  %3915 = fadd fast float %3914, %3537
  %3916 = fmul fast float %3912, %3756
  %3917 = call float @dx.op.binary.f32(i32 35, float %3536, float %3916)  ; FMax(a,b)
  %3918 = and i32 %3610, 16
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3942, label %3920

; <label>:3920                                    ; preds = %3859
  %3921 = bitcast float %3604 to i32
  %3922 = add i32 %3601, 0
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3923, %dx.types.Handle %3769, float %3697, float %3700, float undef, float undef, i32 0, i32 0, i32 undef, float %3702, float %3704, float undef, float %3706, float %3708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = and i32 %3921, 65535
  %3929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3928)  ; LegacyF16ToF32(value)
  %3930 = fmul fast float %3925, %3595
  %3931 = fmul fast float %3926, %3596
  %3932 = fmul fast float %3927, %3597
  %3933 = and i32 %3610, 16384
  %3934 = icmp ne i32 %3933, 0
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = select i1 %3934, float %3936, float 1.000000e+00
  %3938 = fmul fast float %3937, %3929
  %3939 = fmul fast float %3930, %3938
  %3940 = fmul fast float %3931, %3938
  %3941 = fmul fast float %3932, %3938
  br label %3942

; <label>:3942                                    ; preds = %3920, %3859
  %3943 = phi float [ %3939, %3920 ], [ 0.000000e+00, %3859 ]
  %3944 = phi float [ %3940, %3920 ], [ 0.000000e+00, %3859 ]
  %3945 = phi float [ %3941, %3920 ], [ 0.000000e+00, %3859 ]
  %3946 = fsub fast float %3943, %3540
  %3947 = fsub fast float %3944, %3541
  %3948 = fsub fast float %3945, %3542
  %3949 = fmul fast float %3946, %3756
  %3950 = fmul fast float %3947, %3756
  %3951 = fmul fast float %3948, %3756
  %3952 = fadd fast float %3949, %3540
  %3953 = fadd fast float %3950, %3541
  %3954 = fadd fast float %3951, %3542
  br label %3659

; <label>:3955                                    ; preds = %3659
  br label %3956

; <label>:3956                                    ; preds = %3955, %3479
  %3957 = phi float [ 0.000000e+00, %3479 ], [ %3660, %3955 ]
  %3958 = phi float [ %3448, %3479 ], [ %3661, %3955 ]
  %3959 = phi float [ %3446, %3479 ], [ %3662, %3955 ]
  %3960 = phi float [ 0.000000e+00, %3479 ], [ %3663, %3955 ]
  %3961 = phi float [ 0.000000e+00, %3479 ], [ %3664, %3955 ]
  %3962 = phi float [ %3440, %3479 ], [ %3665, %3955 ]
  %3963 = phi float [ %3441, %3479 ], [ %3666, %3955 ]
  %3964 = phi float [ %3442, %3479 ], [ %3667, %3955 ]
  %3965 = phi float [ %3474, %3479 ], [ %3668, %3955 ]
  %3966 = phi float [ %3475, %3479 ], [ %3669, %3955 ]
  %3967 = phi float [ %3476, %3479 ], [ %3670, %3955 ]
  %3968 = phi float [ %3445, %3479 ], [ %3671, %3955 ]
  %3969 = phi float [ %3444, %3479 ], [ %3672, %3955 ]
  %3970 = phi float [ 0.000000e+00, %3479 ], [ %3673, %3955 ]
  %3971 = phi float [ %3443, %3479 ], [ %3674, %3955 ]
  %3972 = phi float [ %3437, %3479 ], [ %3675, %3955 ]
  %3973 = phi float [ %3438, %3479 ], [ %3676, %3955 ]
  %3974 = phi float [ %3439, %3479 ], [ %3677, %3955 ]
  %3975 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3966, float %3967, float %3965, float %3966, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3976 = call float @dx.op.unary.f32(i32 25, float %3975)  ; Rsqrt(value)
  %3977 = fmul fast float %3976, %3965
  %3978 = fmul fast float %3976, %3966
  %3979 = fmul fast float %3976, %3967
  %3980 = fadd fast float %3970, %881
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %3977, float %3978, float %3979)  ; Dot3(ax,ay,az,bx,by,bz)
  %3983 = call float @dx.op.unary.f32(i32 25, float %3982)  ; Rsqrt(value)
  %3984 = fmul fast float %3983, %3977
  %3985 = fmul fast float %3983, %3978
  %3986 = fmul fast float %3983, %3979
  br label %3987

; <label>:3987                                    ; preds = %3956, %3434
  %3988 = phi float [ %3984, %3956 ], [ %3474, %3434 ]
  %3989 = phi float [ %3985, %3956 ], [ %3475, %3434 ]
  %3990 = phi float [ %3986, %3956 ], [ %3476, %3434 ]
  %3991 = phi float [ %3972, %3956 ], [ %3437, %3434 ]
  %3992 = phi float [ %3973, %3956 ], [ %3438, %3434 ]
  %3993 = phi float [ %3974, %3956 ], [ %3439, %3434 ]
  %3994 = phi float [ %3962, %3956 ], [ %3440, %3434 ]
  %3995 = phi float [ %3963, %3956 ], [ %3441, %3434 ]
  %3996 = phi float [ %3964, %3956 ], [ %3442, %3434 ]
  %3997 = phi float [ %3971, %3956 ], [ %3443, %3434 ]
  %3998 = phi float [ %3981, %3956 ], [ %881, %3434 ]
  %3999 = phi float [ %3969, %3956 ], [ %3444, %3434 ]
  %4000 = phi float [ %3968, %3956 ], [ %3445, %3434 ]
  %4001 = phi float [ %3961, %3956 ], [ 0.000000e+00, %3434 ]
  %4002 = phi float [ %3960, %3956 ], [ 0.000000e+00, %3434 ]
  %4003 = phi float [ %3957, %3956 ], [ 0.000000e+00, %3434 ]
  %4004 = phi float [ %3958, %3956 ], [ %3448, %3434 ]
  %4005 = phi float [ %3959, %3956 ], [ %3446, %3434 ]
  %4006 = fadd fast float %3997, 0xBFB99999A0000000
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = fmul fast float %4007, 0x3FF1C71C80000000
  %4009 = call float @dx.op.binary.f32(i32 36, float %3997, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4010 = fsub fast float 1.000000e+00, %4008
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = fmul fast float %4011, %3991
  %4013 = fmul fast float %4011, %3992
  %4014 = fmul fast float %4011, %3993
  %4015 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4016 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4017 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4018 = fmul fast float %4008, %3991
  %4019 = fmul fast float %4008, %3992
  %4020 = fmul fast float %4008, %3993
  %4021 = fadd fast float %4018, %4009
  %4022 = fadd fast float %4019, %4009
  %4023 = fadd fast float %4020, %4009
  %4024 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4025 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.i32 %4028, 3
  %4030 = and i32 %4029, 8
  %4031 = icmp ne i32 %4030, 0
  %4032 = call float @dx.op.binary.f32(i32 35, float %4015, float %3991)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 35, float %4016, float %3991)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %4017, float %3991)  ; FMax(a,b)
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = select i1 %176, float %3991, float %4015
  %4037 = select i1 %176, float %4035, float %4016
  %4038 = select i1 %176, float 1.000000e+00, float %4017
  %4039 = select i1 %4031, float %4032, float %4036
  %4040 = select i1 %4031, float %4033, float %4037
  %4041 = select i1 %4031, float %4034, float %4038
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4046 = fadd fast float %4043, %134
  %4047 = fadd fast float %4044, %135
  %4048 = fadd fast float %4045, %136
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4052 = fsub fast float %4046, %4050
  %4053 = fsub fast float %4047, %4051
  %4054 = fmul fast float %4052, %4052
  %4055 = fmul fast float %4053, %4053
  %4056 = fadd fast float %4054, %4055
  %4057 = call float @dx.op.unary.f32(i32 24, float %4056)  ; Sqrt(value)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4049, 2
  %4059 = fcmp fast olt float %4057, %4058
  br i1 %4059, label %4060, label %4127

; <label>:4060                                    ; preds = %3987
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4071 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4072 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4073 = fadd fast float %4070, %4046
  %4074 = fadd fast float %4071, %4047
  %4075 = fadd fast float %4072, %4048
  %4076 = fmul fast float %4073, %4062
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %4074, float %4064, float %4076)  ; FMad(a,b,c)
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4066, float %4077)  ; FMad(a,b,c)
  %4079 = fmul fast float %4073, %4067
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4074, float %4068, float %4079)  ; FMad(a,b,c)
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4069, float %4080)  ; FMad(a,b,c)
  %4082 = fsub fast float %4078, %4070
  %4083 = fsub fast float %4081, %4071
  %4084 = fsub fast float %4082, %4050
  %4085 = fadd fast float %4084, %4058
  %4086 = fsub fast float %4083, %4051
  %4087 = fadd fast float %4086, %4058
  %4088 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4089 = fmul fast float %4085, %4088
  %4090 = fmul fast float %4087, %4088
  %4091 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4093 = fsub fast float 1.000000e+00, %4091
  %4094 = fsub fast float 1.000000e+00, %4092
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4093, float %4094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = fcmp fast ugt float %4096, 0.000000e+00
  br i1 %4097, label %4098, label %4401

; <label>:4098                                    ; preds = %4060
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4101 = fmul fast float %4100, %4096
  %4102 = extractvalue %dx.types.CBufRet.f32 %4099, 3
  %4103 = fadd fast float %4102, %4101
  %4104 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4105 = fadd fast float %4103, %4072
  %4106 = fmul fast float %4078, %4066
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4081, float %4069, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4104, float %4107)  ; FMad(a,b,c)
  %4109 = fsub fast float %4108, %4072
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4112 = fsub fast float %4109, %4111
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4093, float %4094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.ResRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.ResRet.f32 %4113, 2
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4093, float %4094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = fadd fast float %4118, %4114
  %4122 = fmul fast float %4121, 0x3F847AE140000000
  %4123 = fadd fast float %4119, %4115
  %4124 = fmul fast float %4123, 0x3F847AE140000000
  %4125 = fadd fast float %4120, %4116
  %4126 = fmul fast float %4125, 0x3F847AE140000000
  br label %4401

; <label>:4127                                    ; preds = %3987
  %4128 = and i32 %152, 1
  %4129 = icmp eq i32 %4128, 0
  br i1 %4129, label %4401, label %4130

; <label>:4130                                    ; preds = %4127
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4138 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4140 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4141 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4142 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4143 = fadd fast float %4140, %4046
  %4144 = fadd fast float %4141, %4047
  %4145 = fadd fast float %4142, %4048
  %4146 = fmul fast float %4143, %4132
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4134, float %4146)  ; FMad(a,b,c)
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4145, float %4136, float %4147)  ; FMad(a,b,c)
  %4149 = fmul fast float %4143, %4137
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4138, float %4149)  ; FMad(a,b,c)
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4145, float %4139, float %4150)  ; FMad(a,b,c)
  %4152 = fsub fast float %4148, %4140
  %4153 = fsub fast float %4151, %4141
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.i32 %4161, 0
  %4163 = extractvalue %dx.types.CBufRet.i32 %4161, 1
  %4164 = udiv i32 %4163, %4162
  %4165 = fsub fast float %4152, %4155
  %4166 = fsub fast float %4153, %4156
  %4167 = call float @dx.op.binary.f32(i32 35, float %4165, float 0.000000e+00)  ; FMax(a,b)
  %4168 = call float @dx.op.binary.f32(i32 35, float %4166, float 0.000000e+00)  ; FMax(a,b)
  %4169 = call float @dx.op.binary.f32(i32 36, float %4167, float %4157)  ; FMin(a,b)
  %4170 = call float @dx.op.binary.f32(i32 36, float %4168, float %4158)  ; FMin(a,b)
  %4171 = add i32 %4162, -1
  %4172 = add i32 %4164, -1
  %4173 = fmul fast float %4169, %4160
  %4174 = fmul fast float %4170, %4160
  %4175 = fptoui float %4173 to i32
  %4176 = fptoui float %4174 to i32
  %4177 = call i32 @dx.op.binary.i32(i32 40, i32 %4175, i32 %4171)  ; UMin(a,b)
  %4178 = call i32 @dx.op.binary.i32(i32 40, i32 %4176, i32 %4172)  ; UMin(a,b)
  %4179 = mul i32 %4178, %4162
  %4180 = add i32 %4179, %4177
  %4181 = shl i32 %4180, 2
  %4182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.i32 %4182, 0
  %4184 = icmp eq i32 %4183, -1
  br i1 %4184, label %4401, label %4185

; <label>:4185                                    ; preds = %4130
  %4186 = mul i32 %4183, 148
  %4187 = add i32 %4186, 4
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = add i32 %4186, 8
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = add i32 %4186, 36
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = add i32 %4186, 60
  %4197 = add i32 %4186, 92
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = add i32 %4186, 116
  %4201 = fsub fast float %4152, %4189
  %4202 = fsub fast float %4153, %4192
  %4203 = fmul fast float %4160, %4201
  %4204 = fmul fast float %4160, %4202
  %4205 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4206 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4207 = fsub fast float 1.000000e+00, %4206
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4210 = call float @dx.op.unary.f32(i32 83, float %4205)  ; DerivCoarseX(value)
  %4211 = call float @dx.op.unary.f32(i32 83, float %4207)  ; DerivCoarseX(value)
  %4212 = call float @dx.op.unary.f32(i32 84, float %4205)  ; DerivCoarseY(value)
  %4213 = call float @dx.op.unary.f32(i32 84, float %4207)  ; DerivCoarseY(value)
  %4214 = fmul fast float %4210, %4209
  %4215 = fmul fast float %4211, %4209
  %4216 = fmul fast float %4212, %4209
  %4217 = fmul fast float %4213, %4209
  %4218 = call float @dx.op.dot2.f32(i32 54, float %4216, float %4217, float %4216, float %4217)  ; Dot2(ax,ay,bx,by)
  %4219 = call float @dx.op.dot2.f32(i32 54, float %4214, float %4215, float %4214, float %4215)  ; Dot2(ax,ay,bx,by)
  %4220 = call float @dx.op.binary.f32(i32 35, float %4219, float %4218)  ; FMax(a,b)
  %4221 = call float @dx.op.unary.f32(i32 23, float %4220)  ; Log(value)
  %4222 = fmul fast float %4221, 5.000000e-01
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 1
  %4225 = fadd fast float %4224, %4222
  %4226 = call float @dx.op.binary.f32(i32 35, float %4225, float 0.000000e+00)  ; FMax(a,b)
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4229 = fadd fast float %4228, %4226
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 3
  %4232 = fadd fast float %4229, %4231
  %4233 = add i32 %4199, 0
  %4234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4234, i32 0)  ; GetDimensions(handle,mipLevel)
  %4236 = extractvalue %dx.types.Dimensions %4235, 0
  %4237 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4236)  ; FirstbitLo(value)
  %4238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.i32 %4238, 1
  %4240 = sub nsw i32 %4239, %4237
  %4241 = sitofp i32 %4240 to float
  %4242 = fsub fast float %4232, %4241
  %4243 = call float @dx.op.binary.f32(i32 35, float %4242, float 0.000000e+00)  ; FMax(a,b)
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4234, %dx.types.Handle %27, float %4205, float %4207, float %4195, float undef, i32 0, i32 0, i32 undef, float %4243)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = fcmp ule float %4245, 0x3FE0101020000000
  %4247 = extractvalue %dx.types.CBufRet.i32 %4238, 0
  %4248 = and i32 %4247, 128
  %4249 = icmp ne i32 %4248, 0
  %4250 = and i1 %4246, %4249
  br i1 %4250, label %4401, label %4251

; <label>:4251                                    ; preds = %4185
  %4252 = add i32 %4186, 20
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4186, 24
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4186, 40
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = add i32 %4186, 96
  %4262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.i32 %4262, 0
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = fmul fast float %4265, %4205
  %4267 = fmul fast float %4265, %4207
  %4268 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4269 = fadd fast float %4266, %4268
  %4270 = fadd fast float %4267, %4268
  %4271 = add i32 %4263, 0
  %4272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4271, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4273 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4272, i32 0)  ; GetDimensions(handle,mipLevel)
  %4274 = extractvalue %dx.types.Dimensions %4273, 0
  %4275 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4274)  ; FirstbitLo(value)
  %4276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.i32 %4276, 1
  %4278 = sub nsw i32 %4277, %4275
  %4279 = sitofp i32 %4278 to float
  %4280 = fsub fast float %4229, %4279
  %4281 = call float @dx.op.binary.f32(i32 35, float %4280, float 0.000000e+00)  ; FMax(a,b)
  %4282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4272, %dx.types.Handle %27, float %4269, float %4270, float %4260, float undef, i32 0, i32 0, i32 undef, float %4281)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = fmul fast float %4283, %4254
  %4285 = fadd fast float %4284, %4257
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4295 = fadd fast float %4291, %4152
  %4296 = fadd fast float %4293, %4153
  %4297 = fadd fast float %4285, %4294
  %4298 = fmul fast float %4295, %4287
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4296, float %4288, float %4298)  ; FMad(a,b,c)
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4289, float %4299)  ; FMad(a,b,c)
  %4301 = fsub fast float %4300, %4294
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 2
  %4304 = fsub fast float %4301, %4303
  %4305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.i32 %4305, 0
  %4307 = call i32 @dx.op.binary.i32(i32 40, i32 %4183, i32 %4306)  ; UMin(a,b)
  %4308 = mul i32 %4307, 36
  %4309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.i32 %4309, 0
  %4311 = add i32 %4308, 4
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4205
  %4315 = fmul fast float %4313, %4207
  %4316 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4317 = fadd fast float %4314, %4316
  %4318 = fadd fast float %4315, %4316
  %4319 = icmp eq i32 %4310, 0
  br i1 %4319, label %4388, label %4320

; <label>:4320                                    ; preds = %4251
  br label %4321

; <label>:4321                                    ; preds = %4378, %4320
  %4322 = phi float [ %4379, %4378 ], [ 0.000000e+00, %4320 ]
  %4323 = phi float [ %4380, %4378 ], [ 0.000000e+00, %4320 ]
  %4324 = phi float [ %4381, %4378 ], [ 0.000000e+00, %4320 ]
  %4325 = phi float [ %4382, %4378 ], [ 0.000000e+00, %4320 ]
  %4326 = phi float [ %4383, %4378 ], [ 0.000000e+00, %4320 ]
  %4327 = phi float [ %4384, %4378 ], [ 0.000000e+00, %4320 ]
  %4328 = phi i32 [ %4385, %4378 ], [ 0, %4320 ]
  %4329 = shl i32 %4328, 2
  %4330 = add i32 %4196, %4329
  %4331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = add i32 %4200, %4329
  %4334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4333, i32 undef)  ; BufferLoad(srv,index,wot)
  %4335 = extractvalue %dx.types.ResRet.i32 %4334, 0
  %4336 = add i32 %4335, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4337, i32 0)  ; GetDimensions(handle,mipLevel)
  %4339 = extractvalue %dx.types.Dimensions %4338, 0
  %4340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4339)  ; FirstbitLo(value)
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4343 = sub nsw i32 %4342, %4340
  %4344 = sitofp i32 %4343 to float
  %4345 = fsub fast float %4229, %4344
  %4346 = call float @dx.op.binary.f32(i32 35, float %4345, float 0.000000e+00)  ; FMax(a,b)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4337, %dx.types.Handle %27, float %4317, float %4318, float %4332, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = fcmp fast ogt float %4348, 0.000000e+00
  br i1 %4349, label %4350, label %4378

; <label>:4350                                    ; preds = %4321
  %4351 = add i32 %4311, %4329
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = and i32 %4353, 32767
  %4355 = mul nuw nsw i32 %4354, 928
  %4356 = add nuw nsw i32 %4355, 48
  %4357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 1
  %4360 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4361 = add nuw nsw i32 %4355, 60
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = fmul fast float %4358, %4348
  %4367 = fmul fast float %4359, %4348
  %4368 = fmul fast float %4360, %4348
  %4369 = fadd fast float %4366, %4322
  %4370 = fadd fast float %4367, %4323
  %4371 = fadd fast float %4368, %4324
  %4372 = fmul fast float %4363, %4348
  %4373 = fmul fast float %4364, %4348
  %4374 = fmul fast float %4365, %4348
  %4375 = fadd fast float %4372, %4325
  %4376 = fadd fast float %4373, %4326
  %4377 = fadd fast float %4374, %4327
  br label %4378

; <label>:4378                                    ; preds = %4350, %4321
  %4379 = phi float [ %4369, %4350 ], [ %4322, %4321 ]
  %4380 = phi float [ %4370, %4350 ], [ %4323, %4321 ]
  %4381 = phi float [ %4371, %4350 ], [ %4324, %4321 ]
  %4382 = phi float [ %4375, %4350 ], [ %4325, %4321 ]
  %4383 = phi float [ %4376, %4350 ], [ %4326, %4321 ]
  %4384 = phi float [ %4377, %4350 ], [ %4327, %4321 ]
  %4385 = add nuw i32 %4328, 1
  %4386 = icmp eq i32 %4385, %4310
  br i1 %4386, label %4387, label %4321

; <label>:4387                                    ; preds = %4378
  br label %4388

; <label>:4388                                    ; preds = %4387, %4251
  %4389 = phi float [ 0.000000e+00, %4251 ], [ %4379, %4387 ]
  %4390 = phi float [ 0.000000e+00, %4251 ], [ %4380, %4387 ]
  %4391 = phi float [ 0.000000e+00, %4251 ], [ %4381, %4387 ]
  %4392 = phi float [ 0.000000e+00, %4251 ], [ %4382, %4387 ]
  %4393 = phi float [ 0.000000e+00, %4251 ], [ %4383, %4387 ]
  %4394 = phi float [ 0.000000e+00, %4251 ], [ %4384, %4387 ]
  %4395 = fadd fast float %4392, %4389
  %4396 = fmul fast float %4395, 0x3F847AE140000000
  %4397 = fadd fast float %4393, %4390
  %4398 = fmul fast float %4397, 0x3F847AE140000000
  %4399 = fadd fast float %4394, %4391
  %4400 = fmul fast float %4399, 0x3F847AE140000000
  br label %4401

; <label>:4401                                    ; preds = %4388, %4185, %4130, %4127, %4098, %4060
  %4402 = phi float [ %4112, %4098 ], [ -1.310720e+05, %4060 ], [ %4304, %4388 ], [ -1.310720e+05, %4130 ], [ -1.310720e+05, %4185 ], [ -1.310720e+05, %4127 ]
  %4403 = phi float [ %4122, %4098 ], [ 0.000000e+00, %4060 ], [ %4396, %4388 ], [ 0.000000e+00, %4130 ], [ 0.000000e+00, %4185 ], [ 0.000000e+00, %4127 ]
  %4404 = phi float [ %4124, %4098 ], [ 0.000000e+00, %4060 ], [ %4398, %4388 ], [ 0.000000e+00, %4130 ], [ 0.000000e+00, %4185 ], [ 0.000000e+00, %4127 ]
  %4405 = phi float [ %4126, %4098 ], [ 0.000000e+00, %4060 ], [ %4400, %4388 ], [ 0.000000e+00, %4130 ], [ 0.000000e+00, %4185 ], [ 0.000000e+00, %4127 ]
  %4406 = phi i1 [ true, %4098 ], [ false, %4060 ], [ true, %4388 ], [ false, %4130 ], [ false, %4185 ], [ false, %4127 ]
  %4407 = and i32 %152, 3
  %4408 = icmp eq i32 %4407, 1
  %4409 = select i1 %4408, float 1.000000e+00, float 0.000000e+00
  %4410 = fsub fast float %4402, %136
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = select i1 %4406, float %4411, float 1.000000e+00
  %4413 = fmul fast float %4412, %4409
  %4414 = icmp eq i32 %4407, 3
  %4415 = select i1 %4414, float 1.000000e+00, float %4413
  %4416 = call float @dx.op.binary.f32(i32 35, float %4003, float %4415)  ; FMax(a,b)
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fcmp fast une float %4417, 0.000000e+00
  %4419 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.unary.f32(i32 25, float %4419)  ; Rsqrt(value)
  br i1 %4418, label %4428, label %4421

; <label>:4421                                    ; preds = %4401
  %4422 = fmul fast float %4420, %134
  %4423 = fmul fast float %4420, %135
  %4424 = fmul fast float %4420, %136
  %4425 = fsub fast float -0.000000e+00, %4422
  %4426 = fsub fast float -0.000000e+00, %4423
  %4427 = fsub fast float -0.000000e+00, %4424
  br label %4596

; <label>:4428                                    ; preds = %4401
  %4429 = fmul fast float %134, %4420
  %4430 = fsub fast float -0.000000e+00, %4429
  %4431 = fmul fast float %135, %4420
  %4432 = fsub fast float -0.000000e+00, %4431
  %4433 = fmul fast float %136, %4420
  %4434 = fsub fast float -0.000000e+00, %4433
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4430, float %4432, float %4434, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = fmul fast float %4417, 2.500000e+00
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = fmul fast float %4417, 0x4013FFFFE0000000
  %4439 = fadd fast float %4438, 0xBFFFFFFFE0000000
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4417, 0x4004000020000000
  %4442 = fadd fast float %4441, 0xBFF8000040000000
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4445 = fmul fast float %4006, 1.000000e+01
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fmul fast float %4446, 2.000000e+00
  %4448 = fsub fast float 3.000000e+00, %4447
  %4449 = fmul fast float %4446, %4446
  %4450 = fmul fast float %4449, %4448
  %4451 = fsub fast float 1.000000e+00, %4450
  %4452 = fsub fast float 0x3FE3333340000000, %4027
  %4453 = fmul fast float %4452, 0x400AAAAAA0000000
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4451, %4454
  %4456 = fmul fast float %4039, 0x3FEA2B8620000000
  %4457 = fmul fast float %4040, 0x3FEA2B8620000000
  %4458 = fmul fast float %4041, 0x3FEA2B8620000000
  %4459 = fadd fast float %4456, 0x3FC81DFBA0000000
  %4460 = fmul fast float %4459, %4039
  %4461 = fadd fast float %4460, 0x3F910E6020000000
  %4462 = fadd fast float %4457, 0x3FC81DFBA0000000
  %4463 = fmul fast float %4462, %4040
  %4464 = fadd fast float %4463, 0x3F910E6020000000
  %4465 = fadd fast float %4458, 0x3FC81DFBA0000000
  %4466 = fmul fast float %4465, %4041
  %4467 = fadd fast float %4466, 0x3F910E6020000000
  %4468 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = fsub fast float %4468, %4039
  %4472 = fsub fast float %4469, %4040
  %4473 = fsub fast float %4470, %4041
  %4474 = fmul fast float %4471, %4444
  %4475 = fmul fast float %4474, %4455
  %4476 = fmul fast float %4472, %4444
  %4477 = fmul fast float %4476, %4455
  %4478 = fmul fast float %4473, %4444
  %4479 = fmul fast float %4478, %4455
  %4480 = fadd fast float %4475, %4039
  %4481 = fadd fast float %4477, %4040
  %4482 = fadd fast float %4479, %4041
  %4483 = fmul fast float %4000, %4000
  %4484 = fmul fast float %4483, %4483
  %4485 = fadd fast float %4440, 1.000000e+00
  %4486 = fsub fast float %4485, %4455
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fsub fast float 1.000000e+00, %4484
  %4491 = call float @dx.op.binary.f32(i32 36, float %4487, float %4490)  ; FMin(a,b)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4493 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4494 = fadd fast float %4489, 0xBFE4CCCCC0000000
  %4495 = fmul fast float %4494, 0x4006DB6DA0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 2.000000e+00
  %4498 = fsub fast float 3.000000e+00, %4497
  %4499 = bitcast float %4024 to i32
  %4500 = ashr i32 %4499, 1
  %4501 = add nsw i32 %4500, 532487669
  %4502 = bitcast i32 %4501 to float
  %4503 = fsub fast float 1.000000e+00, %4502
  %4504 = bitcast float %4503 to i32
  %4505 = sub nsw i32 2129859010, %4504
  %4506 = bitcast i32 %4505 to float
  %4507 = fmul fast float %4506, 2.000000e+00
  %4508 = bitcast float %4025 to i32
  %4509 = ashr i32 %4508, 1
  %4510 = add nsw i32 %4509, 532487669
  %4511 = bitcast i32 %4510 to float
  %4512 = fsub fast float 1.000000e+00, %4511
  %4513 = bitcast float %4512 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, 2.000000e+00
  %4517 = bitcast float %4026 to i32
  %4518 = ashr i32 %4517, 1
  %4519 = add nsw i32 %4518, 532487669
  %4520 = bitcast i32 %4519 to float
  %4521 = fsub fast float 1.000000e+00, %4520
  %4522 = bitcast float %4521 to i32
  %4523 = sub nsw i32 2129859010, %4522
  %4524 = bitcast i32 %4523 to float
  %4525 = fmul fast float %4524, 2.000000e+00
  %4526 = fsub fast float 0x4002A9FBE0000000, %4507
  %4527 = fadd fast float %4507, 0x3FD54FDF00000000
  %4528 = bitcast float %4527 to i32
  %4529 = sub nsw i32 2129859010, %4528
  %4530 = bitcast i32 %4529 to float
  %4531 = fmul fast float %4530, %4526
  %4532 = fmul fast float %4531, %4531
  %4533 = fsub fast float 0x4002A9FBE0000000, %4516
  %4534 = fadd fast float %4516, 0x3FD54FDF00000000
  %4535 = bitcast float %4534 to i32
  %4536 = sub nsw i32 2129859010, %4535
  %4537 = bitcast i32 %4536 to float
  %4538 = fmul fast float %4537, %4533
  %4539 = fmul fast float %4538, %4538
  %4540 = fsub fast float 0x4002A9FBE0000000, %4525
  %4541 = fadd fast float %4525, 0x3FD54FDF00000000
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, %4540
  %4546 = fmul fast float %4545, %4545
  %4547 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4532)  ; FMax(a,b)
  %4548 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4539)  ; FMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4546)  ; FMax(a,b)
  %4550 = fsub fast float 1.000000e+00, %4435
  %4551 = fadd fast float %4550, %4451
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = fsub fast float 1.000000e+00, %4415
  %4554 = fmul fast float %4493, %4553
  %4555 = fmul fast float %4496, %4496
  %4556 = fmul fast float %4555, %4554
  %4557 = fmul fast float %4556, %4498
  %4558 = fmul fast float %4553, 0xBFE99999A0000000
  %4559 = fmul fast float %4558, %4444
  %4560 = fmul fast float %4559, %4455
  %4561 = fadd fast float %4560, 1.000000e+00
  %4562 = fadd fast float %4027, -1.000000e+00
  %4563 = fmul fast float %4561, %4562
  %4564 = fadd fast float %4563, 1.000000e+00
  %4565 = fsub fast float %4547, %4024
  %4566 = fsub fast float %4548, %4025
  %4567 = fsub fast float %4549, %4026
  %4568 = fmul fast float %4557, %4565
  %4569 = fmul fast float %4557, %4566
  %4570 = fmul fast float %4557, %4567
  %4571 = fadd fast float %4568, %4024
  %4572 = fadd fast float %4569, %4025
  %4573 = fadd fast float %4570, %4026
  %4574 = fsub fast float %84, %3988
  %4575 = fsub fast float %86, %3989
  %4576 = fsub fast float %88, %3990
  %4577 = fmul fast float %4557, %4574
  %4578 = fmul fast float %4557, %4575
  %4579 = fmul fast float %4557, %4576
  %4580 = fadd fast float %4577, %3988
  %4581 = fadd fast float %4578, %3989
  %4582 = fadd fast float %4579, %3990
  %4583 = fmul fast float %4557, %4552
  %4584 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = fmul fast float %4583, %4585
  %4587 = fadd fast float %4586, %4584
  %4588 = fsub fast float 1.000000e+00, %4000
  %4589 = fmul fast float %4557, %4588
  %4590 = fadd fast float %4589, %4000
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4580, float %4581, float %4582, float %4580, float %4581, float %4582)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = call float @dx.op.unary.f32(i32 25, float %4591)  ; Rsqrt(value)
  %4593 = fmul fast float %4580, %4592
  %4594 = fmul fast float %4581, %4592
  %4595 = fmul fast float %4582, %4592
  br label %4596

; <label>:4596                                    ; preds = %4428, %4421
  %4597 = phi float [ %4427, %4421 ], [ %4434, %4428 ]
  %4598 = phi float [ %4426, %4421 ], [ %4432, %4428 ]
  %4599 = phi float [ %4425, %4421 ], [ %4430, %4428 ]
  %4600 = phi float [ %4424, %4421 ], [ %4433, %4428 ]
  %4601 = phi float [ %4423, %4421 ], [ %4431, %4428 ]
  %4602 = phi float [ %4422, %4421 ], [ %4429, %4428 ]
  %4603 = phi float [ %4039, %4421 ], [ %4480, %4428 ]
  %4604 = phi float [ %4040, %4421 ], [ %4481, %4428 ]
  %4605 = phi float [ %4041, %4421 ], [ %4482, %4428 ]
  %4606 = phi float [ %3988, %4421 ], [ %4593, %4428 ]
  %4607 = phi float [ %3989, %4421 ], [ %4594, %4428 ]
  %4608 = phi float [ %3990, %4421 ], [ %4595, %4428 ]
  %4609 = phi float [ %4024, %4421 ], [ %4571, %4428 ]
  %4610 = phi float [ %4025, %4421 ], [ %4572, %4428 ]
  %4611 = phi float [ %4026, %4421 ], [ %4573, %4428 ]
  %4612 = phi float [ %4027, %4421 ], [ %4587, %4428 ]
  %4613 = phi float [ %4000, %4421 ], [ %4590, %4428 ]
  %4614 = select i1 %176, float 0.000000e+00, float %4611
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float %4599, float %4598, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4601, float %4600, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = fmul fast float %4617, 2.000000e+00
  %4619 = fmul fast float %4618, %4606
  %4620 = fmul fast float %4618, %4607
  %4621 = fmul fast float %4618, %4608
  %4622 = fsub fast float %4602, %4619
  %4623 = fsub fast float %4601, %4620
  %4624 = fsub fast float %4600, %4621
  %4625 = call float @dx.op.binary.f32(i32 36, float %4613, float 1.000000e+00)  ; FMin(a,b)
  %4626 = fsub fast float 1.000000e+00, %4613
  %4627 = bitcast float %4626 to i32
  %4628 = sub nsw i32 2129859010, %4627
  %4629 = bitcast i32 %4628 to float
  %4630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4631 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fcmp fast oeq float %4631, 0.000000e+00
  %4633 = fcmp fast oeq float %4630, 0.000000e+00
  %4634 = or i1 %4633, %4632
  br i1 %4634, label %4664, label %4635

; <label>:4635                                    ; preds = %4596
  %4636 = fsub fast float -0.000000e+00, %55
  %4637 = fsub fast float -0.000000e+00, %53
  %4638 = call float @dx.op.unary.f32(i32 24, float %4631)  ; Sqrt(value)
  %4639 = fdiv fast float %4638, %4630
  %4640 = fcmp fast ogt float %4639, 0x3FFB6F8900000000
  %4641 = select i1 %4640, float 0x3FFB6F8900000000, float %4639
  %4642 = fmul fast float %4641, 0x3FE8A23460000000
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = call float @dx.op.binary.f32(i32 35, float %4641, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4645 = fmul fast float %4643, %4630
  %4646 = fmul fast float %4644, 0x3FF279A740000000
  %4647 = fadd fast float %4646, -1.000000e+00
  %4648 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %54, float %4636, float %4637, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = call float @dx.op.unary.f32(i32 25, float %4648)  ; Rsqrt(value)
  %4650 = fmul fast float %4649, %4636
  %4651 = fmul fast float %4649, %4637
  %4652 = fmul fast float %4649, %54
  %4653 = fmul fast float %4647, %4647
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = fmul fast float %4644, 0x40005F8BE0000000
  %4656 = fsub fast float 0x400C5BF8A0000000, %4655
  %4657 = fdiv fast float %4645, %4656
  %4658 = fmul fast float %4657, 0x3FEE31C3C0000000
  %4659 = fmul fast float %4658, %4654
  %4660 = fmul fast float %4644, 0x3FDACB7480000000
  %4661 = fadd fast float %4660, 0xBFD7347680000000
  %4662 = fmul fast float %4661, %4657
  %4663 = fmul fast float %4662, %4654
  br label %4664

; <label>:4664                                    ; preds = %4635, %4596
  %4665 = phi float [ %4650, %4635 ], [ 0.000000e+00, %4596 ]
  %4666 = phi float [ %4651, %4635 ], [ 0.000000e+00, %4596 ]
  %4667 = phi float [ %4652, %4635 ], [ 0.000000e+00, %4596 ]
  %4668 = phi float [ %4659, %4635 ], [ 0.000000e+00, %4596 ]
  %4669 = phi float [ %4663, %4635 ], [ 0.000000e+00, %4596 ]
  %4670 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = fmul fast float %4670, %4670
  %4672 = fmul fast float %4671, 0x3FEE471020000000
  %4673 = fadd fast float %4672, 0xBFD42F6020000000
  %4674 = fmul fast float %4630, 0x3FD20DD760000000
  %4675 = fmul fast float %4673, %4669
  %4676 = fmul fast float %4668, 0x3FDF454380000000
  %4677 = fmul fast float %4676, %4670
  %4678 = fadd fast float %4677, %4674
  %4679 = fadd fast float %4678, %4675
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = fmul fast float %4680, 0x3FDF454380000000
  %4682 = fmul fast float %4680, %4680
  %4683 = fmul fast float %4682, 0x3FEE471020000000
  %4684 = fadd fast float %4683, 0xBFD42F6020000000
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4668, float %4669, float 0x3FD20DD760000000, float %4681, float %4684)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4687 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = fcmp fast oeq float %4687, 0.000000e+00
  %4689 = fcmp fast oeq float %4686, 0.000000e+00
  %4690 = or i1 %4689, %4688
  br i1 %4690, label %4720, label %4691

; <label>:4691                                    ; preds = %4664
  %4692 = fsub fast float -0.000000e+00, %51
  %4693 = fsub fast float -0.000000e+00, %49
  %4694 = call float @dx.op.unary.f32(i32 24, float %4687)  ; Sqrt(value)
  %4695 = fdiv fast float %4694, %4686
  %4696 = fcmp fast ogt float %4695, 0x3FFB6F8900000000
  %4697 = select i1 %4696, float 0x3FFB6F8900000000, float %4695
  %4698 = fmul fast float %4697, 0x3FE8A23460000000
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4697, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4701 = fmul fast float %4699, %4686
  %4702 = fmul fast float %4700, 0x3FF279A740000000
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4692, float %4693, float %50, float %4692, float %4693, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 25, float %4704)  ; Rsqrt(value)
  %4706 = fmul fast float %4705, %4692
  %4707 = fmul fast float %4705, %4693
  %4708 = fmul fast float %4705, %50
  %4709 = fmul fast float %4703, %4703
  %4710 = fsub fast float 1.000000e+00, %4709
  %4711 = fmul fast float %4700, 0x40005F8BE0000000
  %4712 = fsub fast float 0x400C5BF8A0000000, %4711
  %4713 = fdiv fast float %4701, %4712
  %4714 = fmul fast float %4713, 0x3FEE31C3C0000000
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %4700, 0x3FDACB7480000000
  %4717 = fadd fast float %4716, 0xBFD7347680000000
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4718, %4710
  br label %4720

; <label>:4720                                    ; preds = %4691, %4664
  %4721 = phi float [ %4706, %4691 ], [ 0.000000e+00, %4664 ]
  %4722 = phi float [ %4707, %4691 ], [ 0.000000e+00, %4664 ]
  %4723 = phi float [ %4708, %4691 ], [ 0.000000e+00, %4664 ]
  %4724 = phi float [ %4715, %4691 ], [ 0.000000e+00, %4664 ]
  %4725 = phi float [ %4719, %4691 ], [ 0.000000e+00, %4664 ]
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = fmul fast float %4726, %4726
  %4728 = fmul fast float %4727, 0x3FEE471020000000
  %4729 = fadd fast float %4728, 0xBFD42F6020000000
  %4730 = fmul fast float %4686, 0x3FD20DD760000000
  %4731 = fmul fast float %4729, %4725
  %4732 = fmul fast float %4724, 0x3FDF454380000000
  %4733 = fmul fast float %4732, %4726
  %4734 = fadd fast float %4733, %4730
  %4735 = fadd fast float %4734, %4731
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = fmul fast float %4736, 0x3FDF454380000000
  %4738 = fmul fast float %4736, %4736
  %4739 = fmul fast float %4738, 0x3FEE471020000000
  %4740 = fadd fast float %4739, 0xBFD42F6020000000
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4686, float %4724, float %4725, float 0x3FD20DD760000000, float %4737, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4743 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = fcmp fast oeq float %4743, 0.000000e+00
  %4745 = fcmp fast oeq float %4742, 0.000000e+00
  %4746 = or i1 %4745, %4744
  br i1 %4746, label %4776, label %4747

; <label>:4747                                    ; preds = %4720
  %4748 = fsub fast float -0.000000e+00, %47
  %4749 = fsub fast float -0.000000e+00, %45
  %4750 = call float @dx.op.unary.f32(i32 24, float %4743)  ; Sqrt(value)
  %4751 = fdiv fast float %4750, %4742
  %4752 = fcmp fast ogt float %4751, 0x3FFB6F8900000000
  %4753 = select i1 %4752, float 0x3FFB6F8900000000, float %4751
  %4754 = fmul fast float %4753, 0x3FE8A23460000000
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4753, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4757 = fmul fast float %4755, %4742
  %4758 = fmul fast float %4756, 0x3FF279A740000000
  %4759 = fadd fast float %4758, -1.000000e+00
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %46, float %4748, float %4749, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = call float @dx.op.unary.f32(i32 25, float %4760)  ; Rsqrt(value)
  %4762 = fmul fast float %4761, %4748
  %4763 = fmul fast float %4761, %4749
  %4764 = fmul fast float %4761, %46
  %4765 = fmul fast float %4759, %4759
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = fmul fast float %4756, 0x40005F8BE0000000
  %4768 = fsub fast float 0x400C5BF8A0000000, %4767
  %4769 = fdiv fast float %4757, %4768
  %4770 = fmul fast float %4769, 0x3FEE31C3C0000000
  %4771 = fmul fast float %4770, %4766
  %4772 = fmul fast float %4756, 0x3FDACB7480000000
  %4773 = fadd fast float %4772, 0xBFD7347680000000
  %4774 = fmul fast float %4773, %4769
  %4775 = fmul fast float %4774, %4766
  br label %4776

; <label>:4776                                    ; preds = %4747, %4720
  %4777 = phi float [ %4762, %4747 ], [ 0.000000e+00, %4720 ]
  %4778 = phi float [ %4763, %4747 ], [ 0.000000e+00, %4720 ]
  %4779 = phi float [ %4764, %4747 ], [ 0.000000e+00, %4720 ]
  %4780 = phi float [ %4771, %4747 ], [ 0.000000e+00, %4720 ]
  %4781 = phi float [ %4775, %4747 ], [ 0.000000e+00, %4720 ]
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = fmul fast float %4782, %4782
  %4784 = fmul fast float %4783, 0x3FEE471020000000
  %4785 = fadd fast float %4784, 0xBFD42F6020000000
  %4786 = fmul fast float %4742, 0x3FD20DD760000000
  %4787 = fmul fast float %4785, %4781
  %4788 = fmul fast float %4780, 0x3FDF454380000000
  %4789 = fmul fast float %4788, %4782
  %4790 = fadd fast float %4789, %4786
  %4791 = fadd fast float %4790, %4787
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4778, float %4779, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = fmul fast float %4792, 0x3FDF454380000000
  %4794 = fmul fast float %4792, %4792
  %4795 = fmul fast float %4794, 0x3FEE471020000000
  %4796 = fadd fast float %4795, 0xBFD42F6020000000
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4780, float %4781, float 0x3FD20DD760000000, float %4793, float %4796)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4679, float 0.000000e+00)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4791, float 0.000000e+00)  ; FMax(a,b)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4685, float 0.000000e+00)  ; FMax(a,b)
  %4802 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 0
  %4806 = call float @dx.op.binary.f32(i32 36, float %4603, float %4805)  ; FMin(a,b)
  %4807 = fsub fast float 1.000000e+00, %4625
  %4808 = fmul fast float %4806, %4807
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = bitcast float %4809 to i32
  %4811 = sub nsw i32 2129859010, %4810
  %4812 = bitcast i32 %4811 to float
  %4813 = call float @dx.op.binary.f32(i32 36, float %4604, float %4805)  ; FMin(a,b)
  %4814 = fmul fast float %4813, %4807
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = bitcast float %4815 to i32
  %4817 = sub nsw i32 2129859010, %4816
  %4818 = bitcast i32 %4817 to float
  %4819 = call float @dx.op.binary.f32(i32 36, float %4605, float %4805)  ; FMin(a,b)
  %4820 = fmul fast float %4819, %4807
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = fmul fast float %4798, %4625
  %4826 = fmul fast float %4825, %4812
  %4827 = fmul fast float %4799, %4625
  %4828 = fmul fast float %4827, %4818
  %4829 = fmul fast float %4800, %4625
  %4830 = fmul fast float %4829, %4824
  %4831 = call float @dx.op.binary.f32(i32 36, float %4609, float %4805)  ; FMin(a,b)
  %4832 = fmul fast float %4831, %4807
  %4833 = fsub fast float 1.000000e+00, %4832
  %4834 = bitcast float %4833 to i32
  %4835 = sub nsw i32 2129859010, %4834
  %4836 = bitcast i32 %4835 to float
  %4837 = call float @dx.op.binary.f32(i32 36, float %4610, float %4805)  ; FMin(a,b)
  %4838 = fmul fast float %4837, %4807
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = call float @dx.op.binary.f32(i32 36, float %4614, float %4805)  ; FMin(a,b)
  %4844 = fmul fast float %4843, %4807
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4801, %4625
  %4850 = fmul fast float %4849, %4836
  %4851 = fmul fast float %4802, %4625
  %4852 = fmul fast float %4851, %4842
  %4853 = fmul fast float %4803, %4625
  %4854 = fmul fast float %4853, %4848
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4826, float %4828, float %4830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = select i1 %176, float 0.000000e+00, float %4826
  %4857 = select i1 %176, float %4855, float %4828
  %4858 = select i1 %176, float 0.000000e+00, float %4830
  %4859 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4852, float %4854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = select i1 %176, float 0.000000e+00, float %4850
  %4861 = select i1 %176, float %4859, float %4852
  %4862 = select i1 %176, float 0.000000e+00, float %4854
  %4863 = fmul fast float %4616, 9.843750e-01
  %4864 = fmul fast float %4612, 9.843750e-01
  %4865 = fadd fast float %4863, 7.812500e-03
  %4866 = fadd fast float %4864, 7.812500e-03
  %4867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4865, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 2
  %4869 = extractvalue %dx.types.ResRet.f32 %4867, 3
  %4870 = fmul fast float %4868, %4609
  %4871 = fmul fast float %4868, %4610
  %4872 = fmul fast float %4868, %4614
  %4873 = fadd fast float %4870, %4869
  %4874 = fadd fast float %4871, %4869
  %4875 = fadd fast float %4872, %4869
  %4876 = fcmp fast ogt float %4001, 0.000000e+00
  br i1 %4876, label %4877, label %4903

; <label>:4877                                    ; preds = %4776
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4001, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = fadd fast float %4879, -5.000000e-01
  %4883 = fadd fast float %4880, -5.000000e-01
  %4884 = fadd fast float %4881, -5.000000e-01
  %4885 = fsub fast float 1.000000e+00, %4609
  %4886 = fsub fast float 1.000000e+00, %4610
  %4887 = fsub fast float 1.000000e+00, %4614
  %4888 = fmul fast float %4609, 4.000000e+00
  %4889 = fmul fast float %4888, %4885
  %4890 = fmul fast float %4889, %4882
  %4891 = fmul fast float %4610, 4.000000e+00
  %4892 = fmul fast float %4891, %4886
  %4893 = fmul fast float %4892, %4883
  %4894 = fmul fast float %4614, 4.000000e+00
  %4895 = fmul fast float %4894, %4887
  %4896 = fmul fast float %4895, %4884
  %4897 = fadd fast float %4890, %4873
  %4898 = fadd fast float %4893, %4874
  %4899 = fadd fast float %4896, %4875
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  br label %4903

; <label>:4903                                    ; preds = %4877, %4776
  %4904 = phi float [ %4900, %4877 ], [ %4873, %4776 ]
  %4905 = phi float [ %4901, %4877 ], [ %4874, %4776 ]
  %4906 = phi float [ %4902, %4877 ], [ %4875, %4776 ]
  %4907 = call float @dx.op.binary.f32(i32 35, float %4905, float %4906)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4904, float %4907)  ; FMax(a,b)
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = fmul fast float %4909, %4856
  %4911 = fmul fast float %4909, %4857
  %4912 = fmul fast float %4909, %4858
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4604, float %4605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = fcmp fast ogt float %4913, 0x3E7FF19E20000000
  %4915 = fdiv fast float 1.000000e+00, %4913
  %4916 = select i1 %4914, float %4915, float 0.000000e+00
  %4917 = fmul fast float %4916, %4603
  %4918 = fmul fast float %4916, %4604
  %4919 = fmul fast float %4916, %4605
  %4920 = fadd fast float %4917, -1.000000e+00
  %4921 = fadd fast float %4918, -1.000000e+00
  %4922 = fadd fast float %4919, -1.000000e+00
  %4923 = fmul fast float %4920, 5.000000e-01
  %4924 = fmul fast float %4921, 5.000000e-01
  %4925 = fmul fast float %4922, 5.000000e-01
  %4926 = fadd fast float %4923, 1.000000e+00
  %4927 = fadd fast float %4924, 1.000000e+00
  %4928 = fadd fast float %4925, 1.000000e+00
  %4929 = fmul fast float %4904, %4860
  %4930 = fmul fast float %4905, %4861
  %4931 = fmul fast float %4906, %4862
  %4932 = fsub fast float 1.000000e+00, %4616
  %4933 = bitcast float %4932 to i32
  %4934 = sitofp i32 %4933 to float
  %4935 = fmul fast float %4934, 5.000000e+00
  %4936 = fadd fast float %4935, 0xC1EFBF8940000000
  %4937 = fptosi float %4936 to i32
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4938, %4002
  %4940 = fmul fast float %4856, %4939
  %4941 = fmul fast float %4940, %4909
  %4942 = fmul fast float %4941, %4926
  %4943 = fmul fast float %4857, %4939
  %4944 = fmul fast float %4943, %4909
  %4945 = fmul fast float %4944, %4927
  %4946 = fmul fast float %4858, %4939
  %4947 = fmul fast float %4946, %4909
  %4948 = fmul fast float %4947, %4928
  %4949 = fmul fast float %4910, %3998
  %4950 = fmul fast float %4911, %3998
  %4951 = fmul fast float %4912, %3998
  %4952 = fadd fast float %4929, %3994
  %4953 = fadd fast float %4952, %4942
  %4954 = fmul fast float %4953, %3998
  %4955 = fadd fast float %4930, %3995
  %4956 = fadd fast float %4955, %4945
  %4957 = fmul fast float %4956, %3998
  %4958 = fadd fast float %4931, %3996
  %4959 = fadd fast float %4958, %4948
  %4960 = fmul fast float %4959, %3998
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4963 = fcmp fast oeq float %4962, 0.000000e+00
  br i1 %4963, label %5191, label %4964

; <label>:4964                                    ; preds = %4903
  %4965 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4967 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4969, float %4970, float %4971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = select i1 %176, float %4973, float %4969
  %4977 = select i1 %176, float %4975, float %4970
  %4978 = select i1 %176, float %4974, float %4971
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4981 = fcmp fast une float %4980, 0.000000e+00
  br i1 %4981, label %4982, label %4999

; <label>:4982                                    ; preds = %4964
  %4983 = fptoui float %75 to i32
  %4984 = fptoui float %76 to i32
  %4985 = lshr i32 %4983, 4
  %4986 = lshr i32 %4984, 4
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = fptoui float %4988 to i32
  %4990 = add i32 %4989, 15
  %4991 = lshr i32 %4990, 4
  %4992 = mul i32 %4991, %4986
  %4993 = add i32 %4992, %4985
  %4994 = shl i32 %4993, 3
  %4995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4994, i32 undef)  ; BufferLoad(srv,index,wot)
  %4996 = extractvalue %dx.types.ResRet.i32 %4995, 0
  %4997 = and i32 %4996, -268435456
  %4998 = icmp eq i32 %4997, -1342177280
  br i1 %4998, label %5009, label %4999

; <label>:4999                                    ; preds = %4982, %4964
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5003 = fmul fast float %5001, %75
  %5004 = fmul fast float %5002, %76
  %5005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5003, float %5004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.ResRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.ResRet.f32 %5005, 2
  br label %5009

; <label>:5009                                    ; preds = %4999, %4982
  %5010 = phi float [ %5006, %4999 ], [ 0.000000e+00, %4982 ]
  %5011 = phi float [ %5007, %4999 ], [ 0.000000e+00, %4982 ]
  %5012 = phi float [ %5008, %4999 ], [ 0.000000e+00, %4982 ]
  %5013 = call float @dx.op.binary.f32(i32 36, float %5011, float %5012)  ; FMin(a,b)
  %5014 = call float @dx.op.binary.f32(i32 36, float %5010, float %5013)  ; FMin(a,b)
  %5015 = fcmp fast ogt float %5014, 0.000000e+00
  br i1 %5015, label %5016, label %5191, !dx.controlflow.hints !75

; <label>:5016                                    ; preds = %5009
  %5017 = fmul fast float %5010, %4976
  %5018 = fmul fast float %5011, %4977
  %5019 = fmul fast float %5012, %4978
  %5020 = fsub fast float %4965, %4602
  %5021 = fsub fast float %4966, %4601
  %5022 = fsub fast float %4967, %4600
  %5023 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5021, float %5022, float %5020, float %5021, float %5022)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = call float @dx.op.unary.f32(i32 25, float %5023)  ; Rsqrt(value)
  %5025 = fmul fast float %5024, %5020
  %5026 = fmul fast float %5024, %5021
  %5027 = fmul fast float %5024, %5022
  %5028 = call float @dx.op.dot3.f32(i32 55, float %4965, float %4966, float %4967, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4598, float %4597, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5031 = fmul fast float %5030, %5030
  %5032 = fmul fast float %5031, %4629
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fmul fast float %5033, %5030
  %5035 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fmul fast float %5035, %5035
  %5037 = call float @dx.op.unary.f32(i32 6, float %5028)  ; FAbs(value)
  %5038 = fsub fast float 1.000000e+00, %4612
  %5039 = call float @dx.op.binary.f32(i32 35, float %5038, float 0x3F847AE140000000)  ; FMax(a,b)
  %5040 = fmul fast float %5039, %5039
  %5041 = fmul fast float %5040, %5040
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = fmul fast float %4616, %4616
  %5044 = fmul fast float %5043, %5042
  %5045 = fadd fast float %5044, %5041
  %5046 = bitcast float %5045 to i32
  %5047 = ashr i32 %5046, 1
  %5048 = add nsw i32 %5047, 532487669
  %5049 = bitcast i32 %5048 to float
  %5050 = fadd fast float %5049, %4616
  %5051 = fmul fast float %5041, %5036
  %5052 = fsub fast float 1.000000e+00, %5036
  %5053 = fadd fast float %5052, %5051
  %5054 = fmul fast float %5037, %5037
  %5055 = fmul fast float %5054, %5042
  %5056 = fadd fast float %5055, %5041
  %5057 = bitcast float %5056 to i32
  %5058 = ashr i32 %5057, 1
  %5059 = add nsw i32 %5058, 532487669
  %5060 = bitcast i32 %5059 to float
  %5061 = fadd fast float %5060, %5037
  %5062 = fmul fast float %5053, %5053
  %5063 = fmul fast float %5062, %5050
  %5064 = fmul fast float %5063, %5061
  %5065 = fdiv fast float 0x3FF0A00000000000, %5064
  %5066 = fmul fast float %5065, %5041
  %5067 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = bitcast float %5068 to i32
  %5070 = sitofp i32 %5069 to float
  %5071 = fmul fast float %5070, 5.000000e+00
  %5072 = fadd fast float %5071, 0xC1EFBF8940000000
  %5073 = fptosi float %5072 to i32
  %5074 = bitcast i32 %5073 to float
  %5075 = fsub fast float 1.000000e+00, %4609
  %5076 = fsub fast float 1.000000e+00, %4610
  %5077 = fsub fast float 1.000000e+00, %4614
  %5078 = fmul fast float %5074, %5075
  %5079 = fmul fast float %5074, %5076
  %5080 = fmul fast float %5074, %5077
  %5081 = fadd fast float %5078, %4609
  %5082 = fadd fast float %5079, %4610
  %5083 = fadd fast float %5080, %4614
  br i1 %4876, label %5084, label %5107

; <label>:5084                                    ; preds = %5016
  %5085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4001, float %5067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5089 = fadd fast float %5086, -5.000000e-01
  %5090 = fadd fast float %5087, -5.000000e-01
  %5091 = fadd fast float %5088, -5.000000e-01
  %5092 = fmul fast float %4609, 4.000000e+00
  %5093 = fmul fast float %5092, %5075
  %5094 = fmul fast float %5093, %5089
  %5095 = fmul fast float %4610, 4.000000e+00
  %5096 = fmul fast float %5095, %5076
  %5097 = fmul fast float %5096, %5090
  %5098 = fmul fast float %4614, 4.000000e+00
  %5099 = fmul fast float %5098, %5077
  %5100 = fmul fast float %5099, %5091
  %5101 = fadd fast float %5094, %5081
  %5102 = fadd fast float %5097, %5082
  %5103 = fadd fast float %5100, %5083
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  br label %5107

; <label>:5107                                    ; preds = %5084, %5016
  %5108 = phi float [ %5104, %5084 ], [ %5081, %5016 ]
  %5109 = phi float [ %5105, %5084 ], [ %5082, %5016 ]
  %5110 = phi float [ %5106, %5084 ], [ %5083, %5016 ]
  %5111 = fmul fast float %5028, 9.843750e-01
  %5112 = fadd fast float %5111, 7.812500e-03
  %5113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5112, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 3
  %5116 = fmul fast float %5114, %4609
  %5117 = fmul fast float %5114, %4610
  %5118 = fmul fast float %5114, %4614
  %5119 = fadd fast float %5116, %5115
  %5120 = fadd fast float %5117, %5115
  %5121 = fadd fast float %5118, %5115
  br i1 %4876, label %5122, label %5145

; <label>:5122                                    ; preds = %5107
  %5123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4001, float %5028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.ResRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.ResRet.f32 %5123, 2
  %5127 = fadd fast float %5124, -5.000000e-01
  %5128 = fadd fast float %5125, -5.000000e-01
  %5129 = fadd fast float %5126, -5.000000e-01
  %5130 = fmul fast float %4609, 4.000000e+00
  %5131 = fmul fast float %5130, %5075
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %4610, 4.000000e+00
  %5134 = fmul fast float %5133, %5076
  %5135 = fmul fast float %5134, %5128
  %5136 = fmul fast float %4614, 4.000000e+00
  %5137 = fmul fast float %5136, %5077
  %5138 = fmul fast float %5137, %5129
  %5139 = fadd fast float %5132, %5119
  %5140 = fadd fast float %5135, %5120
  %5141 = fadd fast float %5138, %5121
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  br label %5145

; <label>:5145                                    ; preds = %5122, %5107
  %5146 = phi float [ %5142, %5122 ], [ %5119, %5107 ]
  %5147 = phi float [ %5143, %5122 ], [ %5120, %5107 ]
  %5148 = phi float [ %5144, %5122 ], [ %5121, %5107 ]
  %5149 = call float @dx.op.binary.f32(i32 35, float %5147, float %5148)  ; FMax(a,b)
  %5150 = call float @dx.op.binary.f32(i32 35, float %5146, float %5149)  ; FMax(a,b)
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5108, %5066
  %5153 = fmul fast float %5109, %5066
  %5154 = fmul fast float %5110, %5066
  %5155 = fsub fast float 1.000000e+00, %5029
  %5156 = bitcast float %5155 to i32
  %5157 = sitofp i32 %5156 to float
  %5158 = fmul fast float %5157, 5.000000e+00
  %5159 = fadd fast float %5158, 0xC1EFBF8940000000
  %5160 = fptosi float %5159 to i32
  %5161 = bitcast i32 %5160 to float
  %5162 = fmul fast float %5161, %4002
  %5163 = fmul fast float %5151, %5162
  %5164 = fmul fast float %5163, %4926
  %5165 = fmul fast float %5163, %4927
  %5166 = fmul fast float %5163, %4928
  %5167 = fadd fast float %5164, %5152
  %5168 = fadd fast float %5165, %5153
  %5169 = fadd fast float %5166, %5154
  %5170 = fmul fast float %5034, %5017
  %5171 = fmul fast float %5170, %5151
  %5172 = fmul fast float %5034, %5018
  %5173 = fmul fast float %5172, %5151
  %5174 = fmul fast float %5034, %5019
  %5175 = fmul fast float %5174, %5151
  %5176 = fmul fast float %5170, %5167
  %5177 = fmul fast float %5172, %5168
  %5178 = fmul fast float %5174, %5169
  %5179 = fadd fast float %5171, %4910
  %5180 = fmul fast float %5179, %3998
  %5181 = fadd fast float %5173, %4911
  %5182 = fmul fast float %5181, %3998
  %5183 = fadd fast float %5175, %4912
  %5184 = fmul fast float %5183, %3998
  %5185 = fadd fast float %5176, %4953
  %5186 = fmul fast float %5185, %3998
  %5187 = fadd fast float %5177, %4956
  %5188 = fmul fast float %5187, %3998
  %5189 = fadd fast float %5178, %4959
  %5190 = fmul fast float %5189, %3998
  br label %5191

; <label>:5191                                    ; preds = %5145, %5009, %4903
  %5192 = phi float [ %4954, %4903 ], [ %4954, %5009 ], [ %5186, %5145 ]
  %5193 = phi float [ %4957, %4903 ], [ %4957, %5009 ], [ %5188, %5145 ]
  %5194 = phi float [ %4960, %4903 ], [ %4960, %5009 ], [ %5190, %5145 ]
  %5195 = phi float [ %4949, %4903 ], [ %4949, %5009 ], [ %5180, %5145 ]
  %5196 = phi float [ %4950, %4903 ], [ %4950, %5009 ], [ %5182, %5145 ]
  %5197 = phi float [ %4951, %4903 ], [ %4951, %5009 ], [ %5184, %5145 ]
  %5198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.i32 %5198, 0
  %5200 = icmp eq i32 %5199, 0
  br i1 %5200, label %5635, label %5201

; <label>:5201                                    ; preds = %5191
  %5202 = fptoui float %75 to i32
  %5203 = fptoui float %76 to i32
  %5204 = lshr i32 %5202, 4
  %5205 = lshr i32 %5203, 4
  %5206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.i32 %5206, 0
  %5208 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5205, i32 %5207, i32 %5204)  ; UMad(a,b,c)
  %5209 = add nsw i32 %5199, -1
  %5210 = call i32 @dx.op.binary.i32(i32 37, i32 %5209, i32 0)  ; IMax(a,b)
  %5211 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5212 = fptoui float %5211 to i32
  %5213 = lshr i32 %5212, 5
  %5214 = call i32 @dx.op.binary.i32(i32 40, i32 %5213, i32 8191)  ; UMin(a,b)
  %5215 = shl i32 %5214, 2
  %5216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.i32 %5216, 0
  %5218 = lshr i32 %5217, 16
  %5219 = and i32 %5217, 65535
  %5220 = lshr i32 %5217, 21
  %5221 = lshr i32 %5219, 5
  %5222 = call i32 @dx.op.binary.i32(i32 40, i32 %5221, i32 %5210)  ; UMin(a,b)
  %5223 = icmp ugt i32 %5220, %5222
  br i1 %5223, label %5635, label %5224

; <label>:5224                                    ; preds = %5201
  br label %5225

; <label>:5225                                    ; preds = %5625, %5224
  %5226 = phi i32 [ %5632, %5625 ], [ %5220, %5224 ]
  %5227 = phi float [ %5626, %5625 ], [ %5192, %5224 ]
  %5228 = phi float [ %5627, %5625 ], [ %5193, %5224 ]
  %5229 = phi float [ %5628, %5625 ], [ %5194, %5224 ]
  %5230 = phi float [ %5629, %5625 ], [ %5195, %5224 ]
  %5231 = phi float [ %5630, %5625 ], [ %5196, %5224 ]
  %5232 = phi float [ %5631, %5625 ], [ %5197, %5224 ]
  %5233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.i32 %5233, 0
  %5235 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5208, i32 %5234, i32 %5226)  ; UMad(a,b,c)
  %5236 = shl i32 %5235, 2
  %5237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.i32 %5237, 0
  %5239 = shl i32 %5226, 5
  %5240 = sub nsw i32 %5218, %5239
  %5241 = call i32 @dx.op.binary.i32(i32 37, i32 %5240, i32 0)  ; IMax(a,b)
  %5242 = call i32 @dx.op.binary.i32(i32 38, i32 %5241, i32 31)  ; IMin(a,b)
  %5243 = sub nsw i32 1, %5218
  %5244 = add nsw i32 %5243, %5219
  %5245 = call i32 @dx.op.binary.i32(i32 37, i32 %5244, i32 0)  ; IMax(a,b)
  %5246 = call i32 @dx.op.binary.i32(i32 38, i32 %5245, i32 32)  ; IMin(a,b)
  %5247 = and i32 %5246, 31
  %5248 = shl i32 -1, %5247
  %5249 = xor i32 %5248, -1
  %5250 = and i32 %5242, 31
  %5251 = shl i32 %5249, %5250
  %5252 = icmp eq i32 %5246, 32
  %5253 = select i1 %5252, i32 -1, i32 %5251
  %5254 = and i32 %5253, %5238
  %5255 = icmp eq i32 %5254, 0
  br i1 %5255, label %5625, label %5256

; <label>:5256                                    ; preds = %5225
  br label %5257

; <label>:5257                                    ; preds = %5337, %5256
  %5258 = phi i32 [ %5269, %5337 ], [ %5254, %5256 ]
  %5259 = phi float [ %5338, %5337 ], [ %5227, %5256 ]
  %5260 = phi float [ %5339, %5337 ], [ %5228, %5256 ]
  %5261 = phi float [ %5340, %5337 ], [ %5229, %5256 ]
  %5262 = phi float [ %5341, %5337 ], [ %5230, %5256 ]
  %5263 = phi float [ %5342, %5337 ], [ %5231, %5256 ]
  %5264 = phi float [ %5343, %5337 ], [ %5232, %5256 ]
  %5265 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5258)  ; FirstbitLo(value)
  %5266 = add i32 %5265, %5239
  %5267 = and i32 %5265, 31
  %5268 = shl i32 1, %5267
  %5269 = xor i32 %5268, %5258
  %5270 = mul i32 %5266, 112
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = or i32 %5270, 12
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = add i32 %5270, 44
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = add i32 %5270, 48
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 1
  %5285 = extractvalue %dx.types.ResRet.f32 %5282, 2
  %5286 = add i32 %5270, 80
  %5287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5273, float %5274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = select i1 %176, float %5288, float %5272
  %5292 = select i1 %176, float %5290, float %5273
  %5293 = select i1 %176, float %5289, float %5274
  %5294 = fsub fast float %5283, %134
  %5295 = fsub fast float %5284, %135
  %5296 = fsub fast float %5285, %136
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float %5294, float %5295, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 24, float %5297)  ; Sqrt(value)
  %5299 = fdiv fast float 1.000000e+00, %5298
  %5300 = fmul fast float %5299, %5294
  %5301 = fmul fast float %5299, %5295
  %5302 = fmul fast float %5299, %5296
  %5303 = fadd fast float %5298, %5277
  %5304 = fdiv fast float 1.000000e+00, %5303
  %5305 = fmul float %5280, %5304
  %5306 = fmul float %5305, %5305
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = and i32 %5268, %5254
  %5309 = icmp eq i32 %5308, 0
  br i1 %5309, label %5332, label %5310, !dx.controlflow.hints !76

; <label>:5310                                    ; preds = %5257
  %5311 = lshr i32 %5202, 5
  %5312 = lshr i32 %5203, 5
  %5313 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5311, i32 %5312, i32 %5266, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5314 = extractvalue %dx.types.ResRet.i32 %5313, 0
  %5315 = and i32 %5314, 3
  %5316 = icmp eq i32 %5315, 0
  %5317 = select i1 %5316, float 1.000000e+00, float 0.000000e+00
  %5318 = icmp eq i32 %5315, 3
  br i1 %5318, label %5319, label %5332

; <label>:5319                                    ; preds = %5310
  %5320 = lshr i32 %5314, 10
  %5321 = and i32 %5320, 8160
  %5322 = and i32 %5203, 31
  %5323 = or i32 %5321, %5322
  %5324 = lshr i32 %5314, 1
  %5325 = and i32 %5324, 16352
  %5326 = and i32 %5202, 31
  %5327 = or i32 %5325, %5326
  %5328 = lshr i32 %5314, 23
  %5329 = and i32 %5328, 255
  %5330 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5327, i32 %5323, i32 %5329, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  br label %5332

; <label>:5332                                    ; preds = %5319, %5310, %5257
  %5333 = phi float [ %5331, %5319 ], [ %5317, %5310 ], [ 0.000000e+00, %5257 ]
  %5334 = call float @dx.op.binary.f32(i32 36, float %5333, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.binary.f32(i32 36, float %5333, float %5334)  ; FMin(a,b)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  br i1 %5336, label %5345, label %5337, !dx.controlflow.hints !77

; <label>:5337                                    ; preds = %5581, %5332
  %5338 = phi float [ %5259, %5332 ], [ %5621, %5581 ]
  %5339 = phi float [ %5260, %5332 ], [ %5622, %5581 ]
  %5340 = phi float [ %5261, %5332 ], [ %5623, %5581 ]
  %5341 = phi float [ %5262, %5332 ], [ %5615, %5581 ]
  %5342 = phi float [ %5263, %5332 ], [ %5616, %5581 ]
  %5343 = phi float [ %5264, %5332 ], [ %5617, %5581 ]
  %5344 = icmp eq i32 %5258, %5268
  br i1 %5344, label %5624, label %5257

; <label>:5345                                    ; preds = %5332
  %5346 = fmul fast float %5333, %5291
  %5347 = fmul fast float %5333, %5292
  %5348 = fmul fast float %5333, %5293
  %5349 = fsub fast float %5285, %4402
  %5350 = fcmp fast ogt float %5349, 0.000000e+00
  %5351 = fsub fast float %136, %4402
  %5352 = fcmp fast ogt float %5351, 0.000000e+00
  %5353 = xor i1 %5352, %5350
  %5354 = fsub fast float %4402, %5285
  %5355 = fmul fast float %5354, 2.000000e+00
  %5356 = fadd fast float %5355, %5285
  %5357 = select i1 %5353, float %5285, float %5356
  %5358 = fsub fast float %5357, %136
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5358, float %5294, float %5295, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 25, float %5359)  ; Rsqrt(value)
  %5361 = fmul fast float %5360, %5294
  %5362 = fmul fast float %5360, %5295
  %5363 = fmul fast float %5360, %5358
  %5364 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fdiv fast float 1.000000e+00, %5365
  %5367 = fmul fast float %5366, %5364
  %5368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5351, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  %5370 = fcmp fast olt float %5368, 0.000000e+00
  %5371 = zext i1 %5369 to i32
  %5372 = zext i1 %5370 to i32
  %5373 = sub nsw i32 %5371, %5372
  %5374 = sitofp i32 %5373 to float
  %5375 = fsub fast float %5357, %4402
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5375, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = fcmp fast ogt float %5376, 0.000000e+00
  %5378 = fcmp fast olt float %5376, 0.000000e+00
  %5379 = zext i1 %5377 to i32
  %5380 = zext i1 %5378 to i32
  %5381 = sub nsw i32 %5379, %5380
  %5382 = sitofp i32 %5381 to float
  %5383 = fcmp fast une float %5374, %5382
  br i1 %5383, label %5384, label %5394

; <label>:5384                                    ; preds = %5345
  %5385 = fmul fast float %5367, %5363
  %5386 = fmul fast float %5367, %5362
  %5387 = fmul fast float %5367, %5361
  %5388 = fmul fast float %5387, %5387
  %5389 = fmul fast float %5386, %5386
  %5390 = fadd fast float %5388, %5389
  %5391 = fmul fast float %5385, %5385
  %5392 = fadd fast float %5390, %5391
  %5393 = call float @dx.op.unary.f32(i32 24, float %5392)  ; Sqrt(value)
  br label %5406

; <label>:5394                                    ; preds = %5345
  %5395 = icmp slt i32 %5373, 0
  br i1 %5395, label %5396, label %5406

; <label>:5396                                    ; preds = %5394
  %5397 = fsub fast float %134, %5283
  %5398 = fsub fast float %135, %5284
  %5399 = fsub fast float %136, %5357
  %5400 = fmul fast float %5397, %5397
  %5401 = fmul fast float %5398, %5398
  %5402 = fadd fast float %5400, %5401
  %5403 = fmul fast float %5399, %5399
  %5404 = fadd fast float %5402, %5403
  %5405 = call float @dx.op.unary.f32(i32 24, float %5404)  ; Sqrt(value)
  br label %5406

; <label>:5406                                    ; preds = %5396, %5394, %5384
  %5407 = phi float [ %5393, %5384 ], [ %5405, %5396 ], [ 0.000000e+00, %5394 ]
  %5408 = and i1 %5352, %5350
  %5409 = fsub fast float -0.000000e+00, %5407
  %5410 = select i1 %5408, float -0.000000e+00, float %5409
  %5411 = fmul fast float %4403, 0x3FF7154760000000
  %5412 = fmul fast float %5411, %5410
  %5413 = fmul fast float %4404, 0x3FF7154760000000
  %5414 = fmul fast float %5413, %5410
  %5415 = fmul fast float %4405, 0x3FF7154760000000
  %5416 = fmul fast float %5415, %5410
  %5417 = call float @dx.op.unary.f32(i32 21, float %5412)  ; Exp(value)
  %5418 = call float @dx.op.unary.f32(i32 21, float %5414)  ; Exp(value)
  %5419 = call float @dx.op.unary.f32(i32 21, float %5416)  ; Exp(value)
  %5420 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5421 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5422 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5423 = fmul fast float %5346, %5420
  %5424 = fmul fast float %5347, %5421
  %5425 = fmul fast float %5348, %5422
  %5426 = fsub fast float %5300, %4602
  %5427 = fsub fast float %5301, %4601
  %5428 = fsub fast float %5302, %4600
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 25, float %5429)  ; Rsqrt(value)
  %5431 = fmul fast float %5430, %5426
  %5432 = fmul fast float %5430, %5427
  %5433 = fmul fast float %5430, %5428
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4598, float %4597, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5437 = fmul fast float %5436, %5307
  %5438 = fmul fast float %5436, %5436
  %5439 = fmul fast float %5438, %4629
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fmul fast float %5437, %5440
  %5442 = bitcast float %5297 to i32
  %5443 = ashr i32 %5442, 1
  %5444 = sub nsw i32 1597463007, %5443
  %5445 = bitcast i32 %5444 to float
  %5446 = fmul fast float %5445, %5294
  %5447 = fmul fast float %5445, %5295
  %5448 = fmul fast float %5445, %5296
  %5449 = fsub fast float %5446, %4602
  %5450 = fsub fast float %5447, %4601
  %5451 = fsub fast float %5448, %4600
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float %5449, float %5450, float %5451)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.unary.f32(i32 25, float %5452)  ; Rsqrt(value)
  %5454 = fmul fast float %5449, %5453
  %5455 = fmul fast float %5450, %5453
  %5456 = fmul fast float %5451, %5453
  %5457 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float %5454, float %5455, float %5456)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = fmul fast float %5457, %5457
  %5459 = call float @dx.op.unary.f32(i32 6, float %5434)  ; FAbs(value)
  %5460 = fsub fast float 1.000000e+00, %4612
  %5461 = call float @dx.op.binary.f32(i32 35, float %5460, float 0x3F847AE140000000)  ; FMax(a,b)
  %5462 = fmul fast float %5461, %5461
  %5463 = fmul fast float %5462, %5462
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fmul fast float %4616, %4616
  %5466 = fmul fast float %5465, %5464
  %5467 = fadd fast float %5466, %5463
  %5468 = bitcast float %5467 to i32
  %5469 = ashr i32 %5468, 1
  %5470 = add nsw i32 %5469, 532487669
  %5471 = bitcast i32 %5470 to float
  %5472 = fadd fast float %5471, %4616
  %5473 = fmul fast float %5463, %5458
  %5474 = fsub fast float 1.000000e+00, %5458
  %5475 = fadd fast float %5474, %5473
  %5476 = fmul fast float %5459, %5459
  %5477 = fmul fast float %5476, %5464
  %5478 = fadd fast float %5477, %5463
  %5479 = bitcast float %5478 to i32
  %5480 = ashr i32 %5479, 1
  %5481 = add nsw i32 %5480, 532487669
  %5482 = bitcast i32 %5481 to float
  %5483 = fadd fast float %5482, %5459
  %5484 = fmul fast float %5475, %5475
  %5485 = fmul fast float %5484, %5472
  %5486 = fmul fast float %5485, %5483
  %5487 = fdiv fast float 1.000000e+00, %5486
  %5488 = bitcast float %5463 to i32
  %5489 = sitofp i32 %5488 to float
  %5490 = fmul fast float %5489, 0x3FE7F73180000000
  %5491 = fadd fast float %5490, 0x41AFE27C40000000
  %5492 = fptosi float %5491 to i32
  %5493 = bitcast i32 %5492 to float
  %5494 = fmul fast float %5280, 0x3FD80E9D60000000
  %5495 = fmul fast float %5494, %5445
  %5496 = fadd fast float %5493, %5495
  %5497 = bitcast float %5496 to i32
  %5498 = sub nsw i32 2129859010, %5497
  %5499 = bitcast i32 %5498 to float
  %5500 = fmul fast float %5463, %5487
  %5501 = fmul fast float %5500, %5493
  %5502 = fmul fast float %5501, %5499
  %5503 = call float @dx.op.unary.f32(i32 6, float %5435)  ; FAbs(value)
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = bitcast float %5504 to i32
  %5506 = sitofp i32 %5505 to float
  %5507 = fmul fast float %5506, 5.000000e+00
  %5508 = fadd fast float %5507, 0xC1EFBF8940000000
  %5509 = fptosi float %5508 to i32
  %5510 = bitcast i32 %5509 to float
  %5511 = fsub fast float 1.000000e+00, %4609
  %5512 = fsub fast float 1.000000e+00, %4610
  %5513 = fsub fast float 1.000000e+00, %4614
  %5514 = fmul fast float %5510, %5511
  %5515 = fmul fast float %5510, %5512
  %5516 = fmul fast float %5510, %5513
  %5517 = fadd fast float %5514, %4609
  %5518 = fadd fast float %5515, %4610
  %5519 = fadd fast float %5516, %4614
  br i1 %4876, label %5520, label %5543

; <label>:5520                                    ; preds = %5406
  %5521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4001, float %5503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = extractvalue %dx.types.ResRet.f32 %5521, 1
  %5524 = extractvalue %dx.types.ResRet.f32 %5521, 2
  %5525 = fadd fast float %5522, -5.000000e-01
  %5526 = fadd fast float %5523, -5.000000e-01
  %5527 = fadd fast float %5524, -5.000000e-01
  %5528 = fmul fast float %4609, 4.000000e+00
  %5529 = fmul fast float %5528, %5511
  %5530 = fmul fast float %5529, %5525
  %5531 = fmul fast float %4610, 4.000000e+00
  %5532 = fmul fast float %5531, %5512
  %5533 = fmul fast float %5532, %5526
  %5534 = fmul fast float %4614, 4.000000e+00
  %5535 = fmul fast float %5534, %5513
  %5536 = fmul fast float %5535, %5527
  %5537 = fadd fast float %5530, %5517
  %5538 = fadd fast float %5533, %5518
  %5539 = fadd fast float %5536, %5519
  %5540 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  br label %5543

; <label>:5543                                    ; preds = %5520, %5406
  %5544 = phi float [ %5540, %5520 ], [ %5517, %5406 ]
  %5545 = phi float [ %5541, %5520 ], [ %5518, %5406 ]
  %5546 = phi float [ %5542, %5520 ], [ %5519, %5406 ]
  %5547 = fmul fast float %5434, 9.843750e-01
  %5548 = fadd fast float %5547, 7.812500e-03
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5548, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 3
  %5552 = fmul fast float %5550, %4609
  %5553 = fmul fast float %5550, %4610
  %5554 = fmul fast float %5550, %4614
  %5555 = fadd fast float %5552, %5551
  %5556 = fadd fast float %5553, %5551
  %5557 = fadd fast float %5554, %5551
  br i1 %4876, label %5558, label %5581

; <label>:5558                                    ; preds = %5543
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4001, float %5434, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fmul fast float %4609, 4.000000e+00
  %5567 = fmul fast float %5566, %5511
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %4610, 4.000000e+00
  %5570 = fmul fast float %5569, %5512
  %5571 = fmul fast float %5570, %5564
  %5572 = fmul fast float %4614, 4.000000e+00
  %5573 = fmul fast float %5572, %5513
  %5574 = fmul fast float %5573, %5565
  %5575 = fadd fast float %5568, %5555
  %5576 = fadd fast float %5571, %5556
  %5577 = fadd fast float %5574, %5557
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5581

; <label>:5581                                    ; preds = %5558, %5543
  %5582 = phi float [ %5578, %5558 ], [ %5555, %5543 ]
  %5583 = phi float [ %5579, %5558 ], [ %5556, %5543 ]
  %5584 = phi float [ %5580, %5558 ], [ %5557, %5543 ]
  %5585 = call float @dx.op.binary.f32(i32 35, float %5583, float %5584)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5582, float %5585)  ; FMax(a,b)
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = fmul fast float %5544, %5502
  %5589 = fmul fast float %5545, %5502
  %5590 = fmul fast float %5546, %5502
  %5591 = fsub fast float 1.000000e+00, %5435
  %5592 = bitcast float %5591 to i32
  %5593 = sitofp i32 %5592 to float
  %5594 = fmul fast float %5593, 5.000000e+00
  %5595 = fadd fast float %5594, 0xC1EFBF8940000000
  %5596 = fptosi float %5595 to i32
  %5597 = bitcast i32 %5596 to float
  %5598 = fmul fast float %5597, %4002
  %5599 = fmul fast float %5587, %5598
  %5600 = fmul fast float %5599, %4926
  %5601 = fmul fast float %5599, %4927
  %5602 = fmul fast float %5599, %4928
  %5603 = fadd fast float %5600, %5588
  %5604 = fadd fast float %5601, %5589
  %5605 = fadd fast float %5602, %5590
  %5606 = fmul fast float %5423, %3998
  %5607 = fmul fast float %5606, %5441
  %5608 = fmul fast float %5607, %5587
  %5609 = fmul fast float %5424, %3998
  %5610 = fmul fast float %5609, %5441
  %5611 = fmul fast float %5610, %5587
  %5612 = fmul fast float %5425, %3998
  %5613 = fmul fast float %5612, %5441
  %5614 = fmul fast float %5613, %5587
  %5615 = fadd fast float %5608, %5262
  %5616 = fadd fast float %5611, %5263
  %5617 = fadd fast float %5614, %5264
  %5618 = fmul fast float %5607, %5603
  %5619 = fmul fast float %5610, %5604
  %5620 = fmul fast float %5613, %5605
  %5621 = fadd fast float %5618, %5259
  %5622 = fadd fast float %5619, %5260
  %5623 = fadd fast float %5620, %5261
  br label %5337

; <label>:5624                                    ; preds = %5337
  br label %5625

; <label>:5625                                    ; preds = %5624, %5225
  %5626 = phi float [ %5227, %5225 ], [ %5338, %5624 ]
  %5627 = phi float [ %5228, %5225 ], [ %5339, %5624 ]
  %5628 = phi float [ %5229, %5225 ], [ %5340, %5624 ]
  %5629 = phi float [ %5230, %5225 ], [ %5341, %5624 ]
  %5630 = phi float [ %5231, %5225 ], [ %5342, %5624 ]
  %5631 = phi float [ %5232, %5225 ], [ %5343, %5624 ]
  %5632 = add i32 %5226, 1
  %5633 = icmp ugt i32 %5632, %5222
  br i1 %5633, label %5634, label %5225

; <label>:5634                                    ; preds = %5625
  br label %5635

; <label>:5635                                    ; preds = %5634, %5201, %5191
  %5636 = phi float [ %5192, %5191 ], [ %5192, %5201 ], [ %5626, %5634 ]
  %5637 = phi float [ %5193, %5191 ], [ %5193, %5201 ], [ %5627, %5634 ]
  %5638 = phi float [ %5194, %5191 ], [ %5194, %5201 ], [ %5628, %5634 ]
  %5639 = phi float [ %5195, %5191 ], [ %5195, %5201 ], [ %5629, %5634 ]
  %5640 = phi float [ %5196, %5191 ], [ %5196, %5201 ], [ %5630, %5634 ]
  %5641 = phi float [ %5197, %5191 ], [ %5197, %5201 ], [ %5631, %5634 ]
  %5642 = call float @dx.op.unary.f32(i32 24, float %4603)  ; Sqrt(value)
  %5643 = call float @dx.op.unary.f32(i32 24, float %4604)  ; Sqrt(value)
  %5644 = call float @dx.op.unary.f32(i32 24, float %4605)  ; Sqrt(value)
  %5645 = fmul fast float %5642, %5639
  %5646 = fmul fast float %5643, %5640
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  br i1 %176, label %5649, label %5669

; <label>:5649                                    ; preds = %5635
  %5650 = fadd fast float %5641, %4004
  %5651 = fmul fast float %5650, %4005
  %5652 = fsub fast float 1.000000e+00, %4005
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5656 = fmul fast float %5655, %5653
  %5657 = fadd fast float %5656, %5651
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = fmul fast float %5659, %4932
  %5661 = fsub fast float %5657, %5660
  %5662 = fadd fast float %5646, %5645
  %5663 = fmul fast float %5648, %5662
  %5664 = extractvalue %dx.types.CBufRet.f32 %5654, 1
  %5665 = fsub fast float %5661, %5664
  %5666 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5667 = fmul fast float %5665, %5666
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  br label %5685

; <label>:5669                                    ; preds = %5635
  %5670 = fmul fast float %5644, %5641
  %5671 = fmul fast float %5648, %5645
  %5672 = fmul fast float %5648, %5646
  %5673 = fmul fast float %5670, %5648
  %5674 = add i32 %35, 356
  %5675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5674, i32 undef)  ; BufferLoad(srv,index,wot)
  %5676 = extractvalue %dx.types.ResRet.i32 %5675, 0
  %5677 = and i32 %5676, 32
  %5678 = icmp eq i32 %5677, 0
  br i1 %5678, label %5685, label %5679

; <label>:5679                                    ; preds = %5669
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = fmul fast float %5681, 0x3FE99999A0000000
  %5683 = fadd fast float %5681, %5671
  %5684 = fadd fast float %5682, %5673
  br label %5685

; <label>:5685                                    ; preds = %5679, %5669, %5649
  %5686 = phi float [ %5663, %5649 ], [ %5683, %5679 ], [ %5671, %5669 ]
  %5687 = phi float [ %5668, %5649 ], [ %5672, %5679 ], [ %5672, %5669 ]
  %5688 = phi float [ 1.000000e+00, %5649 ], [ %5684, %5679 ], [ %5673, %5669 ]
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 0
  %5691 = fmul fast float %5690, %5637
  %5692 = fmul fast float %5690, %5638
  %5693 = fadd fast float %5637, %5636
  %5694 = select i1 %176, float %5693, float %5636
  %5695 = fmul float %5694, %5690
  %5696 = select i1 %176, float 0.000000e+00, float %5691
  %5697 = select i1 %176, float 0.000000e+00, float %5692
  %5698 = fmul fast float %5686, %5642
  %5699 = fmul fast float %5687, %5643
  %5700 = fmul fast float %5688, %5644
  %5701 = fadd fast float %5695, %5698
  %5702 = fadd fast float %5696, %5699
  %5703 = fadd fast float %5697, %5700
  %5704 = select i1 %176, float %5687, float %5702
  %5705 = select i1 %176, float %5688, float %5703
  %5706 = call float @dx.op.binary.f32(i32 36, float %5701, float 3.225500e+04)  ; FMin(a,b)
  %5707 = call float @dx.op.binary.f32(i32 36, float %5704, float 3.225500e+04)  ; FMin(a,b)
  %5708 = call float @dx.op.binary.f32(i32 36, float %5705, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5706)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5707)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5708)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
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
!68 = !{i32 3, i32 13}
!69 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 11, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

