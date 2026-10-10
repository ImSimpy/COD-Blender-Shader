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
; shader hash: 85d6e928e560b71bfffe315435f5e10f
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
  %137 = add i32 %35, 360
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = extractvalue %dx.types.ResRet.i32 %138, 1
  %141 = extractvalue %dx.types.ResRet.i32 %138, 2
  %142 = extractvalue %dx.types.ResRet.i32 %138, 3
  %143 = bitcast i32 %139 to float
  %144 = bitcast i32 %140 to float
  %145 = bitcast i32 %141 to float
  %146 = bitcast i32 %142 to float
  %147 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = call float @dx.op.unary.f32(i32 25, float %147)  ; Rsqrt(value)
  %149 = fmul fast float %148, %84
  %150 = fmul fast float %148, %86
  %151 = fmul fast float %148, %88
  %152 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = call float @dx.op.unary.f32(i32 25, float %152)  ; Rsqrt(value)
  %154 = fmul fast float %153, %134
  %155 = fmul fast float %153, %135
  %156 = fmul fast float %153, %136
  %157 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %149, float %150, float %151)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = fmul fast float %157, %157
  %159 = fmul fast float %158, %145
  %160 = fadd fast float %159, %146
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %164 = fmul fast float %163, %152
  %165 = fsub fast float %143, %164
  %166 = fmul fast float %165, %144
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %168 = fmul fast float %167, %161
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %172 = fmul fast float %170, %75
  %173 = fmul fast float %171, %76
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = and i32 %175, 114688
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %177, float %172, float 0.000000e+00
  %179 = select i1 %177, float %173, float 0.000000e+00
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %178, float %179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fmul fast float %181, 2.550000e+02
  %183 = fptoui float %182 to i32
  %184 = select i1 %177, i32 %183, i32 0
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 3
  %188 = and i32 %187, 3
  %189 = icmp ne i32 %188, 0
  %190 = and i32 %187, 4
  %191 = icmp ne i32 %190, 0
  %192 = and i1 %189, %191
  br i1 %192, label %193, label %204

; <label>:193                                     ; preds = %0
  %194 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %195 = fmul fast float %194, %76
  %196 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %197 = fmul fast float %196, %75
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %197, float %195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fsub fast float 1.000000e+00, %199
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fcmp fast olt float %200, %202
  br label %207

; <label>:204                                     ; preds = %0
  %205 = icmp eq i32 %190, 0
  %206 = and i1 %189, %205
  br label %207

; <label>:207                                     ; preds = %204, %193
  %208 = phi i1 [ %203, %193 ], [ %206, %204 ]
  %209 = add i32 %35, 156
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = shl i32 %211, 4
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %211, 7
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 22
  %219 = shl nuw nsw i32 %218, 5
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = add i32 %35, 216
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %223, 8
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = lshr i32 %223, 16
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = add i32 %35, 36
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %35, 288
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %246, 0x3F50624DE0000000
  %250 = fmul fast float %248, 0x3F50624DE0000000
  %251 = add i32 %35, 172
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %253, 4
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %253, 7
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %253, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %35, 232
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = add i32 %35, 52
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %35, 304
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = fmul fast float %288, 0x3F50624DE0000000
  %292 = fmul fast float %290, 0x3F50624DE0000000
  %293 = add i32 %35, 188
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = shl i32 %295, 4
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %295, 7
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %295, 22
  %303 = shl nuw nsw i32 %302, 5
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %35, 248
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %307, 8
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %307, 16
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = add i32 %35, 68
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %35, 320
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = fmul fast float %330, 0x3F50624DE0000000
  %334 = fmul fast float %332, 0x3F50624DE0000000
  %335 = add i32 %35, 204
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = shl i32 %337, 4
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %337, 7
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %337, 22
  %345 = shl nuw nsw i32 %344, 5
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %35, 264
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = lshr i32 %349, 8
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = lshr i32 %349, 16
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = add i32 %35, 84
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %35, 336
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %370, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = fmul fast float %372, 0x3F50624DE0000000
  %376 = fmul fast float %374, 0x3F50624DE0000000
  %377 = add i32 %35, 348
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 32
  %381 = icmp eq i32 %380, 0
  %382 = and i32 %379, 64
  %383 = icmp eq i32 %382, 0
  %384 = and i32 %379, 128
  %385 = icmp eq i32 %384, 0
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %403, label %390

; <label>:390                                     ; preds = %207
  %391 = add i32 %35, 536
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = add i32 %393, 0
  %395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %395, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = extractvalue %dx.types.ResRet.f32 %396, 1
  %399 = extractvalue %dx.types.ResRet.f32 %396, 2
  %400 = fmul fast float %397, %65
  %401 = fmul fast float %398, %66
  %402 = fmul fast float %399, %67
  br label %403

; <label>:403                                     ; preds = %390, %207
  %404 = phi float [ %67, %207 ], [ %402, %390 ]
  %405 = phi float [ %66, %207 ], [ %401, %390 ]
  %406 = phi float [ %65, %207 ], [ %400, %390 ]
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %430, label %411

; <label>:411                                     ; preds = %403
  %412 = add i32 %35, 44
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 1
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %406, float 1.000000e+00
  %418 = add i32 %35, 60
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 1
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %405, float 1.000000e+00
  %424 = add i32 %35, 76
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 1
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %428, float %404, float 1.000000e+00
  br label %430

; <label>:430                                     ; preds = %411, %403
  %431 = phi float [ %404, %403 ], [ %429, %411 ]
  %432 = phi float [ %405, %403 ], [ %423, %411 ]
  %433 = phi float [ %406, %403 ], [ %417, %411 ]
  %434 = lshr i32 %408, 20
  %435 = and i32 %434, 3
  %436 = add nuw nsw i32 %435, 1
  %437 = add i32 %35, 24
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = add i32 %35, 28
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = or i32 %442, %439
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %903, label %445

; <label>:445                                     ; preds = %430
  %446 = and i32 %439, 262144
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, float %38, float 1.000000e+00
  %449 = select i1 %447, float %39, float 0.000000e+00
  %450 = select i1 %447, float %40, float 0.000000e+00
  %451 = select i1 %447, float %41, float 1.000000e+00
  %452 = select i1 %447, float %42, float %63
  %453 = select i1 %447, float %43, float %64
  %454 = add i32 %35, 284
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = lshr i32 %456, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = fmul fast float %458, 0x3F50624DE0000000
  %460 = add i32 %35, 88
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 16
  %464 = and i32 %463, 255
  %465 = lshr i32 %462, 24
  %466 = add i32 %35, 292
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = add i32 %35, 32
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = lshr i32 %475, 22
  %477 = shl nuw nsw i32 %476, 5
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = shl i32 %475, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %475, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 3
  %487 = fmul fast float %486, 1.000000e+03
  %488 = fmul fast float %249, %487
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = fadd fast float %489, %239
  %491 = fmul fast float %250, %487
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = fadd fast float %492, %241
  %494 = fmul fast float %459, %487
  %495 = call float @dx.op.unary.f32(i32 22, float %494)  ; Frc(value)
  %496 = fmul fast float %495, 0x401921FB60000000
  %497 = fadd fast float %496, %478
  %498 = call float @dx.op.unary.f32(i32 13, float %497)  ; Sin(value)
  %499 = call float @dx.op.unary.f32(i32 12, float %497)  ; Cos(value)
  %500 = fsub fast float -0.000000e+00, %498
  %501 = fadd fast float %452, -5.000000e-01
  %502 = fadd fast float %453, -5.000000e-01
  %503 = fmul fast float %470, %501
  %504 = fmul fast float %472, %502
  %505 = fadd fast float %503, 5.000000e-01
  %506 = fadd fast float %504, 5.000000e-01
  %507 = fmul fast float %481, %505
  %508 = fmul fast float %484, %506
  %509 = fmul fast float %499, %507
  %510 = call float @dx.op.tertiary.f32(i32 46, float %500, float %508, float %509)  ; FMad(a,b,c)
  %511 = fmul fast float %498, %507
  %512 = call float @dx.op.tertiary.f32(i32 46, float %499, float %508, float %511)  ; FMad(a,b,c)
  %513 = fadd fast float %490, %510
  %514 = fadd fast float %493, %512
  %515 = icmp ugt i32 %464, 1
  %516 = icmp ugt i32 %462, 33554431
  %517 = or i1 %516, %515
  br i1 %517, label %518, label %543

; <label>:518                                     ; preds = %445
  %519 = add i32 %35, 228
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = fmul fast float %486, %523
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = mul nuw nsw i32 %464, %465
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %525, %527
  %529 = call float @dx.op.unary.f32(i32 27, float %528)  ; Round_ni(value)
  %530 = fptoui float %529 to i32
  %531 = urem i32 %530, %464
  %532 = udiv i32 %530, %465
  %533 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %534 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %535 = uitofp i32 %531 to float
  %536 = uitofp i32 %532 to float
  %537 = fadd fast float %533, %535
  %538 = fadd fast float %534, %536
  %539 = uitofp i32 %464 to float
  %540 = uitofp i32 %465 to float
  %541 = fdiv fast float %537, %539
  %542 = fdiv fast float %538, %540
  br label %543

; <label>:543                                     ; preds = %518, %445
  %544 = phi float [ %541, %518 ], [ %513, %445 ]
  %545 = phi float [ %542, %518 ], [ %514, %445 ]
  %546 = and i32 %439, 16
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %744, label %548

; <label>:548                                     ; preds = %543
  %549 = add i32 %35, 424
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = add i32 %551, 0
  %553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %553, %dx.types.Handle %71, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = and i32 %462, 255
  %560 = uitofp i32 %559 to float
  %561 = lshr i32 %462, 8
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %558, %560
  %565 = fadd fast float %564, %563
  %566 = fmul fast float %565, 0x3F70101000000000
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 512
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %579, label %571

; <label>:571                                     ; preds = %548
  %572 = add i32 %35, 504
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = add i32 %574, 0
  %576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %576, %dx.types.Handle %72, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  br label %579

; <label>:579                                     ; preds = %571, %548
  %580 = phi float [ %578, %571 ], [ 1.000000e+00, %548 ]
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 33554432
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %691, label %585

; <label>:585                                     ; preds = %579
  %586 = add i32 %35, 224
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %588, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = add i32 %35, 228
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 65535
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = lshr i32 %599, 24
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = and i32 %599, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %599, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %599, 16
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = add i32 %35, 220
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 24
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = and i32 %616, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = lshr i32 %616, 8
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = lshr i32 %616, 16
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = bitcast float %555 to i32
  %632 = ashr i32 %631, 1
  %633 = sub nsw i32 1597463174, %632
  %634 = bitcast i32 %633 to float
  %635 = fmul fast float %555, 5.000000e-01
  %636 = fmul fast float %634, %634
  %637 = fmul fast float %636, %635
  %638 = fsub fast float 1.500000e+00, %637
  %639 = fmul fast float %634, %555
  %640 = fmul fast float %639, %638
  %641 = bitcast float %556 to i32
  %642 = ashr i32 %641, 1
  %643 = sub nsw i32 1597463174, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %556, 5.000000e-01
  %646 = fmul fast float %644, %644
  %647 = fmul fast float %646, %645
  %648 = fsub fast float 1.500000e+00, %647
  %649 = fmul fast float %644, %556
  %650 = fmul fast float %649, %648
  %651 = bitcast float %557 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %557, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %557
  %660 = fmul fast float %659, %658
  %661 = fsub fast float %640, %622
  %662 = fsub fast float %650, %626
  %663 = fsub fast float %660, %630
  %664 = fmul fast float %661, %590
  %665 = fmul fast float %662, %592
  %666 = fmul fast float %663, %597
  %667 = fadd fast float %664, %605
  %668 = fadd fast float %665, %609
  %669 = fadd fast float %666, %613
  %670 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %671 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %672 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %673 = fmul fast float %670, %670
  %674 = fmul fast float %671, %671
  %675 = fmul fast float %672, %672
  %676 = fsub fast float %673, %555
  %677 = fsub fast float %674, %556
  %678 = fsub fast float %675, %557
  %679 = fmul fast float %676, %580
  %680 = fmul fast float %677, %580
  %681 = fmul fast float %678, %580
  %682 = fadd fast float %679, %555
  %683 = fadd fast float %680, %556
  %684 = fadd fast float %681, %557
  %685 = fadd fast float %602, %566
  %686 = fsub fast float %685, %619
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = fsub fast float %687, %566
  %689 = fmul fast float %688, %580
  %690 = fadd fast float %689, %566
  br label %744

; <label>:691                                     ; preds = %579
  %692 = and i32 %582, 134217728
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %728, label %694

; <label>:694                                     ; preds = %691
  %695 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %697 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %698 = fadd fast float %695, -5.000000e-01
  %699 = fadd fast float %696, -5.000000e-01
  %700 = fadd fast float %697, -5.000000e-01
  %701 = fmul fast float %698, %580
  %702 = fmul fast float %699, %580
  %703 = fmul fast float %700, %580
  %704 = fadd fast float %701, 5.000000e-01
  %705 = fadd fast float %702, 5.000000e-01
  %706 = fadd fast float %703, 5.000000e-01
  %707 = call float @dx.op.unary.f32(i32 24, float %555)  ; Sqrt(value)
  %708 = call float @dx.op.unary.f32(i32 24, float %556)  ; Sqrt(value)
  %709 = call float @dx.op.unary.f32(i32 24, float %557)  ; Sqrt(value)
  %710 = fmul fast float %704, 2.000000e+00
  %711 = fsub fast float 1.000000e+00, %710
  %712 = fmul fast float %711, %707
  %713 = fadd fast float %712, %710
  %714 = fmul fast float %713, %707
  %715 = fmul fast float %705, 2.000000e+00
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %716, %708
  %718 = fadd fast float %717, %715
  %719 = fmul fast float %718, %708
  %720 = fmul fast float %706, 2.000000e+00
  %721 = fsub fast float 1.000000e+00, %720
  %722 = fmul fast float %721, %709
  %723 = fadd fast float %722, %720
  %724 = fmul fast float %723, %709
  %725 = fmul fast float %714, %714
  %726 = fmul fast float %719, %719
  %727 = fmul fast float %724, %724
  br label %744

; <label>:728                                     ; preds = %691
  %729 = fmul fast float %226, %226
  %730 = fmul fast float %230, %230
  %731 = fmul fast float %234, %234
  %732 = fadd fast float %729, -1.000000e+00
  %733 = fadd fast float %730, -1.000000e+00
  %734 = fadd fast float %731, -1.000000e+00
  %735 = fmul fast float %580, %732
  %736 = fmul fast float %580, %733
  %737 = fmul fast float %580, %734
  %738 = fadd fast float %735, 1.000000e+00
  %739 = fadd fast float %736, 1.000000e+00
  %740 = fadd fast float %737, 1.000000e+00
  %741 = fmul fast float %738, %555
  %742 = fmul fast float %739, %556
  %743 = fmul fast float %740, %557
  br label %744

; <label>:744                                     ; preds = %728, %694, %585, %543
  %745 = phi float [ %690, %585 ], [ %566, %694 ], [ %566, %728 ], [ 0x3FA23C0BE0000000, %543 ]
  %746 = phi float [ %682, %585 ], [ %725, %694 ], [ %741, %728 ], [ 1.000000e+00, %543 ]
  %747 = phi float [ %683, %585 ], [ %726, %694 ], [ %742, %728 ], [ 1.000000e+00, %543 ]
  %748 = phi float [ %684, %585 ], [ %727, %694 ], [ %743, %728 ], [ 1.000000e+00, %543 ]
  %749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.i32 %749, 1
  %751 = and i32 %750, 1
  %752 = icmp ne i32 %751, 0
  %753 = add i32 %35, 356
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 32
  %757 = icmp ne i32 %756, 0
  %758 = and i1 %752, %757
  %759 = select i1 %758, float 1.000000e+00, float %746
  %760 = select i1 %758, float 0x3FD3333340000000, float %747
  %761 = select i1 %758, float 0x3FD3333340000000, float %748
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 32
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %838, label %766

; <label>:766                                     ; preds = %744
  %767 = add i32 %35, 92
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %35, 440
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %772, 0
  %774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %774, %dx.types.Handle %71, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = and i32 %769, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %769, 8
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = lshr i32 %769, 16
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101000000000
  %789 = fmul fast float %776, %781
  %790 = fadd fast float %789, %784
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = fadd fast float %777, -5.000000e-01
  %793 = fadd fast float %779, -5.000000e-01
  %794 = fmul fast float %792, %788
  %795 = fmul fast float %793, %788
  %796 = fadd fast float %794, 5.000000e-01
  %797 = fadd fast float %795, 5.000000e-01
  %798 = fmul fast float %796, 2.000000e+00
  %799 = fadd fast float %798, -1.000000e+00
  %800 = fmul fast float %797, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fadd fast float %799, %801
  %803 = fmul fast float %802, 5.000000e-01
  %804 = fsub fast float %799, %801
  %805 = fmul fast float %804, 5.000000e-01
  %806 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %807 = fsub fast float 1.000000e+00, %806
  %808 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %809 = fsub fast float %807, %808
  %810 = call float @dx.op.dot3.f32(i32 55, float %803, float %805, float %809, float %803, float %805, float %809)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 25, float %810)  ; Rsqrt(value)
  %812 = fmul fast float %803, %811
  %813 = fmul fast float %805, %811
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 67108864
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %834, label %818

; <label>:818                                     ; preds = %766
  %819 = add i32 %35, 280
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 65535
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 65535
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %821, 16
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = fsub fast float %791, %829
  %831 = fmul fast float %830, %823
  %832 = fadd fast float %831, %827
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  br label %834

; <label>:834                                     ; preds = %818, %766
  %835 = phi float [ %833, %818 ], [ %791, %766 ]
  %836 = call float @dx.op.dot2.f32(i32 54, float %812, float %813, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %837 = call float @dx.op.dot2.f32(i32 54, float %812, float %813, float %450, float %451)  ; Dot2(ax,ay,bx,by)
  br label %838

; <label>:838                                     ; preds = %834, %744
  %839 = phi float [ %835, %834 ], [ 0x3FD6666660000000, %744 ]
  %840 = phi float [ %836, %834 ], [ 0.000000e+00, %744 ]
  %841 = phi float [ %837, %834 ], [ 0.000000e+00, %744 ]
  %842 = phi float [ %778, %834 ], [ 1.000000e+00, %744 ]
  %843 = add i32 %35, 160
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 22
  %847 = shl nuw nsw i32 %846, 5
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 64
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %886, label %853

; <label>:853                                     ; preds = %838
  %854 = add i32 %35, 456
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 131072
  %862 = icmp eq i32 %861, 0
  %863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %71, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = fmul fast float %864, %214
  %868 = fmul fast float %865, %217
  %869 = fmul fast float %866, %220
  br i1 %862, label %876, label %870

; <label>:870                                     ; preds = %853
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fmul fast float %872, %867
  %874 = fmul fast float %872, %868
  %875 = fmul fast float %872, %869
  br label %876

; <label>:876                                     ; preds = %870, %853
  %877 = phi float [ %873, %870 ], [ %867, %853 ]
  %878 = phi float [ %874, %870 ], [ %868, %853 ]
  %879 = phi float [ %875, %870 ], [ %869, %853 ]
  %880 = fmul fast float %877, %848
  %881 = select i1 %208, float %880, float %877
  %882 = call float @dx.op.dot3.f32(i32 55, float %881, float %878, float %879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = select i1 %208, float 0.000000e+00, float %877
  %884 = select i1 %208, float %882, float %878
  %885 = select i1 %208, float 0.000000e+00, float %879
  br label %886

; <label>:886                                     ; preds = %876, %838
  %887 = phi float [ %883, %876 ], [ 0.000000e+00, %838 ]
  %888 = phi float [ %884, %876 ], [ 0.000000e+00, %838 ]
  %889 = phi float [ %885, %876 ], [ 0.000000e+00, %838 ]
  %890 = add i32 %35, 96
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 255
  %894 = uitofp i32 %893 to float
  %895 = lshr i32 %892, 8
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = fmul fast float %897, %898
  %900 = fadd fast float %899, %894
  %901 = fmul fast float %900, 0x3F70101020000000
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  br label %903

; <label>:903                                     ; preds = %886, %430
  %904 = phi float [ 0.000000e+00, %430 ], [ %840, %886 ]
  %905 = phi float [ 0.000000e+00, %430 ], [ %841, %886 ]
  %906 = phi float [ 0.000000e+00, %430 ], [ %759, %886 ]
  %907 = phi float [ 0.000000e+00, %430 ], [ %760, %886 ]
  %908 = phi float [ 0.000000e+00, %430 ], [ %761, %886 ]
  %909 = phi float [ 0.000000e+00, %430 ], [ %887, %886 ]
  %910 = phi float [ 0.000000e+00, %430 ], [ %888, %886 ]
  %911 = phi float [ 0.000000e+00, %430 ], [ %889, %886 ]
  %912 = phi float [ 0.000000e+00, %430 ], [ %745, %886 ]
  %913 = phi float [ 0.000000e+00, %430 ], [ 1.000000e+00, %886 ]
  %914 = phi float [ 0.000000e+00, %430 ], [ %839, %886 ]
  %915 = phi float [ 0.000000e+00, %430 ], [ %842, %886 ]
  %916 = phi float [ 0.000000e+00, %430 ], [ %902, %886 ]
  br i1 %381, label %1758, label %917

; <label>:917                                     ; preds = %903
  %918 = icmp ult i32 %436, 2
  %919 = add i32 %35, 40
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %35, 44
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = or i32 %924, %921
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %1758, label %927

; <label>:927                                     ; preds = %917
  %928 = and i32 %921, 262144
  %929 = icmp ne i32 %928, 0
  %930 = select i1 %929, float %38, float 1.000000e+00
  %931 = select i1 %929, float %39, float 0.000000e+00
  %932 = select i1 %929, float %40, float 0.000000e+00
  %933 = select i1 %929, float %41, float 1.000000e+00
  %934 = select i1 %929, float %42, float %63
  %935 = select i1 %929, float %43, float %64
  %936 = add i32 %35, 300
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 16
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = fmul fast float %940, 0x3F50624DE0000000
  %942 = add i32 %35, 104
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 16
  %946 = and i32 %945, 255
  %947 = lshr i32 %944, 24
  %948 = add i32 %35, 308
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = lshr i32 %950, 16
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = add i32 %35, 48
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 22
  %959 = shl nuw nsw i32 %958, 5
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = shl i32 %957, 4
  %962 = and i32 %961, 32752
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = lshr i32 %957, 7
  %965 = and i32 %964, 32752
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %969 = fmul fast float %968, 1.000000e+03
  %970 = fmul fast float %291, %969
  %971 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %972 = fadd fast float %971, %281
  %973 = fmul fast float %292, %969
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = fadd fast float %974, %283
  %976 = fmul fast float %941, %969
  %977 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %978 = fmul fast float %977, 0x401921FB60000000
  %979 = fadd fast float %978, %960
  %980 = call float @dx.op.unary.f32(i32 13, float %979)  ; Sin(value)
  %981 = call float @dx.op.unary.f32(i32 12, float %979)  ; Cos(value)
  %982 = fsub fast float -0.000000e+00, %980
  %983 = fadd fast float %934, -5.000000e-01
  %984 = fadd fast float %935, -5.000000e-01
  %985 = fmul fast float %952, %983
  %986 = fmul fast float %954, %984
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fadd fast float %986, 5.000000e-01
  %989 = fmul fast float %963, %987
  %990 = fmul fast float %966, %988
  %991 = fmul fast float %981, %989
  %992 = call float @dx.op.tertiary.f32(i32 46, float %982, float %990, float %991)  ; FMad(a,b,c)
  %993 = fmul fast float %980, %989
  %994 = call float @dx.op.tertiary.f32(i32 46, float %981, float %990, float %993)  ; FMad(a,b,c)
  %995 = fadd fast float %972, %992
  %996 = fadd fast float %975, %994
  %997 = icmp ugt i32 %946, 1
  %998 = icmp ugt i32 %944, 33554431
  %999 = or i1 %998, %997
  br i1 %999, label %1000, label %1025

; <label>:1000                                    ; preds = %927
  %1001 = add i32 %35, 244
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = lshr i32 %1003, 16
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = fmul fast float %968, %1005
  %1007 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1008 = mul nuw nsw i32 %946, %947
  %1009 = uitofp i32 %1008 to float
  %1010 = fmul fast float %1007, %1009
  %1011 = call float @dx.op.unary.f32(i32 27, float %1010)  ; Round_ni(value)
  %1012 = fptoui float %1011 to i32
  %1013 = urem i32 %1012, %946
  %1014 = udiv i32 %1012, %947
  %1015 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %1016 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %1017 = uitofp i32 %1013 to float
  %1018 = uitofp i32 %1014 to float
  %1019 = fadd fast float %1015, %1017
  %1020 = fadd fast float %1016, %1018
  %1021 = uitofp i32 %946 to float
  %1022 = uitofp i32 %947 to float
  %1023 = fdiv fast float %1019, %1021
  %1024 = fdiv fast float %1020, %1022
  br label %1025

; <label>:1025                                    ; preds = %1000, %927
  %1026 = phi float [ %1023, %1000 ], [ %995, %927 ]
  %1027 = phi float [ %1024, %1000 ], [ %996, %927 ]
  %1028 = and i32 %921, 16777216
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1139, label %1030

; <label>:1030                                    ; preds = %1025
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = fadd fast float %1032, %134
  %1036 = fadd fast float %1033, %135
  %1037 = fadd fast float %1034, %136
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1041 = icmp eq i32 %36, 65535
  br i1 %1041, label %1136, label %1042

; <label>:1042                                    ; preds = %1030
  %1043 = lshr i32 %36, 1
  %1044 = shl i32 %1043, 2
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %36, 1
  %1048 = icmp ne i32 %1047, 0
  %1049 = lshr i32 %1046, 16
  %1050 = and i32 %1046, 65535
  %1051 = select i1 %1048, i32 %1049, i32 %1050
  %1052 = icmp eq i32 %1051, 65535
  br i1 %1052, label %1132, label %1053

; <label>:1053                                    ; preds = %1042
  %1054 = mul nuw nsw i32 %1051, 40
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = add nuw nsw i32 %1054, 12
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = add nuw nsw i32 %1054, 24
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = add nuw nsw i32 %1054, 36
  %1070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = fsub fast float %1035, %1056
  %1073 = fsub fast float %1036, %1057
  %1074 = fsub fast float %1037, %1058
  %1075 = fmul fast float %1071, %1072
  %1076 = fmul fast float %1071, %1073
  %1077 = fmul fast float %1071, %1074
  %1078 = call float @dx.op.unary.f32(i32 27, float %1075)  ; Round_ni(value)
  %1079 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1077)  ; Round_ni(value)
  %1081 = fadd fast float %1078, 5.000000e-01
  %1082 = fadd fast float %1079, 5.000000e-01
  %1083 = fadd fast float %1080, 5.000000e-01
  %1084 = fmul fast float %1081, %1061
  %1085 = fmul fast float %1082, %1062
  %1086 = fmul fast float %1083, %1063
  %1087 = shl i32 %36, 2
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = add i32 %1089, 0
  %1091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1092 = call float @dx.op.unary.f32(i32 22, float %1084)  ; Frc(value)
  %1093 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1094 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1091, %dx.types.Handle %30, float %1092, float %1093, float %1094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = fmul fast float %1096, 1.023000e+03
  %1100 = fmul fast float %1097, 1.023000e+03
  %1101 = fmul fast float %1098, 1.023000e+03
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1106 = call float @dx.op.unary.f32(i32 27, float %1103)  ; Round_ni(value)
  %1107 = call float @dx.op.unary.f32(i32 27, float %1104)  ; Round_ni(value)
  %1108 = fsub fast float %1075, %1078
  %1109 = fsub fast float %1076, %1079
  %1110 = fsub fast float %1077, %1080
  %1111 = fmul fast float %1108, 7.500000e-01
  %1112 = fmul fast float %1109, 7.500000e-01
  %1113 = fmul fast float %1110, 7.500000e-01
  %1114 = fadd fast float %1078, 1.250000e-01
  %1115 = fadd fast float %1114, %1111
  %1116 = fadd fast float %1115, %1105
  %1117 = fadd fast float %1079, 1.250000e-01
  %1118 = fadd fast float %1117, %1112
  %1119 = fadd fast float %1118, %1106
  %1120 = fadd fast float %1080, 1.250000e-01
  %1121 = fadd fast float %1120, %1113
  %1122 = fadd fast float %1121, %1107
  %1123 = fmul fast float %1116, %1066
  %1124 = fmul fast float %1119, %1067
  %1125 = fmul fast float %1122, %1068
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = add i32 %1127, 0
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1129, %dx.types.Handle %28, float %1123, float %1124, float %1125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  br label %1132

; <label>:1132                                    ; preds = %1053, %1042
  %1133 = phi float [ %1131, %1053 ], [ -1.000000e+00, %1042 ]
  %1134 = fadd fast float %1133, %1040
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  br label %1136

; <label>:1136                                    ; preds = %1132, %1030
  %1137 = phi float [ %1135, %1132 ], [ %1040, %1030 ]
  %1138 = fmul fast float %1137, %433
  br label %1139

; <label>:1139                                    ; preds = %1136, %1025
  %1140 = phi float [ %1138, %1136 ], [ %433, %1025 ]
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 256
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1191, label %1145

; <label>:1145                                    ; preds = %1139
  %1146 = add i32 %35, 492
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1150, %dx.types.Handle %72, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = add i32 %35, 116
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = shl i32 %1155, 4
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = lshr i32 %1155, 7
  %1160 = and i32 %1159, 32752
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fsub fast float 1.000000e+00, %1140
  %1163 = call float @dx.op.binary.f32(i32 35, float %1162, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1164 = bitcast float %1140 to i32
  %1165 = sitofp i32 %1164 to float
  %1166 = fadd fast float %1165, 0xC1CFBF8940000000
  %1167 = fmul fast float %1161, %1166
  %1168 = fadd fast float %1167, 0x41CFBF8940000000
  %1169 = fptosi float %1168 to i32
  %1170 = bitcast i32 %1169 to float
  %1171 = bitcast float %1163 to i32
  %1172 = sitofp i32 %1171 to float
  %1173 = fadd fast float %1172, 0xC1CFBF8940000000
  %1174 = fmul fast float %1173, %1161
  %1175 = fadd fast float %1174, 0x41CFBF8940000000
  %1176 = fptosi float %1175 to i32
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1170, %1158
  %1179 = fmul fast float %1177, %1158
  %1180 = fsub fast float %1163, %1178
  %1181 = fadd fast float %1179, %1163
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = fsub fast float %1152, %1182
  %1185 = fsub fast float %1183, %1182
  %1186 = bitcast float %1185 to i32
  %1187 = sub nsw i32 2129859010, %1186
  %1188 = bitcast i32 %1187 to float
  %1189 = fmul fast float %1188, %1184
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  br label %1191

; <label>:1191                                    ; preds = %1145, %1139
  %1192 = phi float [ %1190, %1145 ], [ %1140, %1139 ]
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 128
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1213, label %1197

; <label>:1197                                    ; preds = %1191
  %1198 = add i32 %35, 476
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %1200, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1202, %dx.types.Handle %72, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 524288
  %1208 = icmp ne i32 %1207, 0
  %1209 = fcmp fast ogt float %1204, 0x3FE0101020000000
  %1210 = select i1 %1209, float 1.000000e+00, float 0.000000e+00
  %1211 = select i1 %1208, float %1210, float %1204
  %1212 = fmul fast float %1211, %1192
  br label %1213

; <label>:1213                                    ; preds = %1197, %1191
  %1214 = phi float [ %1212, %1197 ], [ %1192, %1191 ]
  %1215 = fcmp fast ult float %1214, 0x3F70101020000000
  br i1 %1215, label %1758, label %1216

; <label>:1216                                    ; preds = %1213
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 16
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1419, label %1221

; <label>:1221                                    ; preds = %1216
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %35, 428
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %1226, 0
  %1228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1228, %dx.types.Handle %71, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = and i32 %1223, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = lshr i32 %1223, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1233, %1235
  %1240 = fadd fast float %1239, %1238
  %1241 = fmul fast float %1240, 0x3F70101000000000
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 512
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1254, label %1246

; <label>:1246                                    ; preds = %1221
  %1247 = add i32 %35, 508
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %72, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  br label %1254

; <label>:1254                                    ; preds = %1246, %1221
  %1255 = phi float [ %1253, %1246 ], [ 1.000000e+00, %1221 ]
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 33554432
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1366, label %1260

; <label>:1260                                    ; preds = %1254
  %1261 = add i32 %35, 240
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 65535
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = lshr i32 %1263, 16
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = add i32 %35, 244
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 65535
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 24
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = and i32 %1274, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = lshr i32 %1274, 8
  %1282 = and i32 %1281, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = lshr i32 %1274, 16
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = add i32 %35, 236
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 24
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = and i32 %1291, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1291, 8
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1291, 16
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = bitcast float %1230 to i32
  %1307 = ashr i32 %1306, 1
  %1308 = sub nsw i32 1597463174, %1307
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1230, 5.000000e-01
  %1311 = fmul fast float %1309, %1309
  %1312 = fmul fast float %1311, %1310
  %1313 = fsub fast float 1.500000e+00, %1312
  %1314 = fmul fast float %1309, %1230
  %1315 = fmul fast float %1314, %1313
  %1316 = bitcast float %1231 to i32
  %1317 = ashr i32 %1316, 1
  %1318 = sub nsw i32 1597463174, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1231, 5.000000e-01
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float 1.500000e+00, %1322
  %1324 = fmul fast float %1319, %1231
  %1325 = fmul fast float %1324, %1323
  %1326 = bitcast float %1232 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1232, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1232
  %1335 = fmul fast float %1334, %1333
  %1336 = fsub fast float %1315, %1297
  %1337 = fsub fast float %1325, %1301
  %1338 = fsub fast float %1335, %1305
  %1339 = fmul fast float %1336, %1265
  %1340 = fmul fast float %1337, %1267
  %1341 = fmul fast float %1338, %1272
  %1342 = fadd fast float %1339, %1280
  %1343 = fadd fast float %1340, %1284
  %1344 = fadd fast float %1341, %1288
  %1345 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1348 = fmul fast float %1345, %1345
  %1349 = fmul fast float %1346, %1346
  %1350 = fmul fast float %1347, %1347
  %1351 = fsub fast float %1348, %1230
  %1352 = fsub fast float %1349, %1231
  %1353 = fsub fast float %1350, %1232
  %1354 = fmul fast float %1351, %1255
  %1355 = fmul fast float %1352, %1255
  %1356 = fmul fast float %1353, %1255
  %1357 = fadd fast float %1354, %1230
  %1358 = fadd fast float %1355, %1231
  %1359 = fadd fast float %1356, %1232
  %1360 = fadd fast float %1277, %1241
  %1361 = fsub fast float %1360, %1294
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fsub fast float %1362, %1241
  %1364 = fmul fast float %1363, %1255
  %1365 = fadd fast float %1364, %1241
  br label %1419

; <label>:1366                                    ; preds = %1254
  %1367 = and i32 %1257, 134217728
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1403, label %1369

; <label>:1369                                    ; preds = %1366
  %1370 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1371 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %1372 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %1373 = fadd fast float %1370, -5.000000e-01
  %1374 = fadd fast float %1371, -5.000000e-01
  %1375 = fadd fast float %1372, -5.000000e-01
  %1376 = fmul fast float %1373, %1255
  %1377 = fmul fast float %1374, %1255
  %1378 = fmul fast float %1375, %1255
  %1379 = fadd fast float %1376, 5.000000e-01
  %1380 = fadd fast float %1377, 5.000000e-01
  %1381 = fadd fast float %1378, 5.000000e-01
  %1382 = call float @dx.op.unary.f32(i32 24, float %1230)  ; Sqrt(value)
  %1383 = call float @dx.op.unary.f32(i32 24, float %1231)  ; Sqrt(value)
  %1384 = call float @dx.op.unary.f32(i32 24, float %1232)  ; Sqrt(value)
  %1385 = fmul fast float %1379, 2.000000e+00
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = fmul fast float %1386, %1382
  %1388 = fadd fast float %1387, %1385
  %1389 = fmul fast float %1388, %1382
  %1390 = fmul fast float %1380, 2.000000e+00
  %1391 = fsub fast float 1.000000e+00, %1390
  %1392 = fmul fast float %1391, %1383
  %1393 = fadd fast float %1392, %1390
  %1394 = fmul fast float %1393, %1383
  %1395 = fmul fast float %1381, 2.000000e+00
  %1396 = fsub fast float 1.000000e+00, %1395
  %1397 = fmul fast float %1396, %1384
  %1398 = fadd fast float %1397, %1395
  %1399 = fmul fast float %1398, %1384
  %1400 = fmul fast float %1389, %1389
  %1401 = fmul fast float %1394, %1394
  %1402 = fmul fast float %1399, %1399
  br label %1419

; <label>:1403                                    ; preds = %1366
  %1404 = fmul fast float %268, %268
  %1405 = fmul fast float %272, %272
  %1406 = fmul fast float %276, %276
  %1407 = fadd fast float %1404, -1.000000e+00
  %1408 = fadd fast float %1405, -1.000000e+00
  %1409 = fadd fast float %1406, -1.000000e+00
  %1410 = fmul fast float %1255, %1407
  %1411 = fmul fast float %1255, %1408
  %1412 = fmul fast float %1255, %1409
  %1413 = fadd fast float %1410, 1.000000e+00
  %1414 = fadd fast float %1411, 1.000000e+00
  %1415 = fadd fast float %1412, 1.000000e+00
  %1416 = fmul fast float %1413, %1230
  %1417 = fmul fast float %1414, %1231
  %1418 = fmul fast float %1415, %1232
  br label %1419

; <label>:1419                                    ; preds = %1403, %1369, %1260, %1216
  %1420 = phi float [ %1365, %1260 ], [ %1241, %1369 ], [ %1241, %1403 ], [ 0x3FA23C0BE0000000, %1216 ]
  %1421 = phi float [ %1357, %1260 ], [ %1400, %1369 ], [ %1416, %1403 ], [ 1.000000e+00, %1216 ]
  %1422 = phi float [ %1358, %1260 ], [ %1401, %1369 ], [ %1417, %1403 ], [ 1.000000e+00, %1216 ]
  %1423 = phi float [ %1359, %1260 ], [ %1402, %1369 ], [ %1418, %1403 ], [ 1.000000e+00, %1216 ]
  %1424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.i32 %1424, 1
  %1426 = and i32 %1425, 1
  %1427 = icmp ne i32 %1426, 0
  %1428 = add i32 %35, 356
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 32
  %1432 = icmp ne i32 %1431, 0
  %1433 = and i1 %1427, %1432
  %1434 = select i1 %1433, float 1.000000e+00, float %1421
  %1435 = select i1 %1433, float 0x3FD3333340000000, float %1422
  %1436 = select i1 %1433, float 0x3FD3333340000000, float %1423
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 32
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1513, label %1441

; <label>:1441                                    ; preds = %1419
  %1442 = add i32 %35, 108
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %35, 444
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = add i32 %1447, 0
  %1449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1449, %dx.types.Handle %71, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = and i32 %1444, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %1444, 8
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = lshr i32 %1444, 16
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = fmul fast float %1462, 0x3F70101000000000
  %1464 = fmul fast float %1451, %1456
  %1465 = fadd fast float %1464, %1459
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = fadd fast float %1452, -5.000000e-01
  %1468 = fadd fast float %1454, -5.000000e-01
  %1469 = fmul fast float %1467, %1463
  %1470 = fmul fast float %1468, %1463
  %1471 = fadd fast float %1469, 5.000000e-01
  %1472 = fadd fast float %1470, 5.000000e-01
  %1473 = fmul fast float %1471, 2.000000e+00
  %1474 = fadd fast float %1473, -1.000000e+00
  %1475 = fmul fast float %1472, 2.000000e+00
  %1476 = fadd fast float %1475, -1.000000e+00
  %1477 = fadd fast float %1474, %1476
  %1478 = fmul fast float %1477, 5.000000e-01
  %1479 = fsub fast float %1474, %1476
  %1480 = fmul fast float %1479, 5.000000e-01
  %1481 = call float @dx.op.unary.f32(i32 6, float %1478)  ; FAbs(value)
  %1482 = fsub fast float 1.000000e+00, %1481
  %1483 = call float @dx.op.unary.f32(i32 6, float %1480)  ; FAbs(value)
  %1484 = fsub fast float %1482, %1483
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1480, float %1484, float %1478, float %1480, float %1484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.unary.f32(i32 25, float %1485)  ; Rsqrt(value)
  %1487 = fmul fast float %1478, %1486
  %1488 = fmul fast float %1480, %1486
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 67108864
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1509, label %1493

; <label>:1493                                    ; preds = %1441
  %1494 = add i32 %35, 296
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 65535
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 65535
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = lshr i32 %1496, 16
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = fsub fast float %1466, %1504
  %1506 = fmul fast float %1505, %1498
  %1507 = fadd fast float %1506, %1502
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  br label %1509

; <label>:1509                                    ; preds = %1493, %1441
  %1510 = phi float [ %1508, %1493 ], [ %1466, %1441 ]
  %1511 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1488, float %930, float %931)  ; Dot2(ax,ay,bx,by)
  %1512 = call float @dx.op.dot2.f32(i32 54, float %1487, float %1488, float %932, float %933)  ; Dot2(ax,ay,bx,by)
  br label %1513

; <label>:1513                                    ; preds = %1509, %1419
  %1514 = phi float [ %1510, %1509 ], [ 0x3FD6666660000000, %1419 ]
  %1515 = phi float [ %1511, %1509 ], [ 0.000000e+00, %1419 ]
  %1516 = phi float [ %1512, %1509 ], [ 0.000000e+00, %1419 ]
  %1517 = phi float [ %1453, %1509 ], [ 1.000000e+00, %1419 ]
  %1518 = add i32 %35, 176
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = lshr i32 %1520, 22
  %1522 = shl nuw nsw i32 %1521, 5
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 64
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1561, label %1528

; <label>:1528                                    ; preds = %1513
  %1529 = add i32 %35, 460
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 131072
  %1537 = icmp eq i32 %1536, 0
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %71, float %1026, float %1027, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.ResRet.f32 %1538, 1
  %1541 = extractvalue %dx.types.ResRet.f32 %1538, 2
  %1542 = fmul fast float %1539, %256
  %1543 = fmul fast float %1540, %259
  %1544 = fmul fast float %1541, %262
  br i1 %1537, label %1551, label %1545

; <label>:1545                                    ; preds = %1528
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = fmul fast float %1547, %1542
  %1549 = fmul fast float %1547, %1543
  %1550 = fmul fast float %1547, %1544
  br label %1551

; <label>:1551                                    ; preds = %1545, %1528
  %1552 = phi float [ %1548, %1545 ], [ %1542, %1528 ]
  %1553 = phi float [ %1549, %1545 ], [ %1543, %1528 ]
  %1554 = phi float [ %1550, %1545 ], [ %1544, %1528 ]
  %1555 = fmul fast float %1552, %1523
  %1556 = select i1 %208, float %1555, float %1552
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1556, float %1553, float %1554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = select i1 %208, float 0.000000e+00, float %1552
  %1559 = select i1 %208, float %1557, float %1553
  %1560 = select i1 %208, float 0.000000e+00, float %1554
  br label %1561

; <label>:1561                                    ; preds = %1551, %1513
  %1562 = phi float [ %1558, %1551 ], [ 0.000000e+00, %1513 ]
  %1563 = phi float [ %1559, %1551 ], [ 0.000000e+00, %1513 ]
  %1564 = phi float [ %1560, %1551 ], [ 0.000000e+00, %1513 ]
  %1565 = add i32 %35, 112
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = lshr i32 %1567, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = fmul fast float %1572, %1573
  %1575 = fadd fast float %1574, %1569
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  br i1 %918, label %1578, label %1586

; <label>:1578                                    ; preds = %1561
  %1579 = fsub fast float 1.000000e+00, %1214
  %1580 = fmul fast float %1579, %906
  %1581 = fmul fast float %1579, %907
  %1582 = fmul fast float %1579, %908
  %1583 = fmul fast float %1579, %909
  %1584 = fmul fast float %1579, %910
  %1585 = fmul fast float %1579, %911
  br label %1586

; <label>:1586                                    ; preds = %1578, %1561
  %1587 = phi float [ %1580, %1578 ], [ %906, %1561 ]
  %1588 = phi float [ %1581, %1578 ], [ %907, %1561 ]
  %1589 = phi float [ %1582, %1578 ], [ %908, %1561 ]
  %1590 = phi float [ %1583, %1578 ], [ %909, %1561 ]
  %1591 = phi float [ %1584, %1578 ], [ %910, %1561 ]
  %1592 = phi float [ %1585, %1578 ], [ %911, %1561 ]
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 3
  %1596 = icmp eq i32 %1595, 3
  br i1 %1596, label %1675, label %1597

; <label>:1597                                    ; preds = %1586
  %1598 = and i32 %1594, 16
  %1599 = icmp ne i32 %1598, 0
  %1600 = select i1 %1599, float %1214, float 0.000000e+00
  %1601 = icmp eq i32 %1595, 0
  br i1 %1601, label %1602, label %1630

; <label>:1602                                    ; preds = %1597
  %1603 = and i32 %1594, 64
  %1604 = icmp ne i32 %1603, 0
  %1605 = select i1 %1604, float %1214, float 0.000000e+00
  %1606 = fsub fast float %1434, %1587
  %1607 = fsub fast float %1435, %1588
  %1608 = fsub fast float %1436, %1589
  %1609 = fmul fast float %1600, %1606
  %1610 = fmul fast float %1600, %1607
  %1611 = fmul fast float %1600, %1608
  %1612 = fadd fast float %1609, %1587
  %1613 = fadd fast float %1610, %1588
  %1614 = fadd fast float %1611, %1589
  %1615 = fsub fast float %1420, %912
  %1616 = fmul fast float %1600, %1615
  %1617 = fadd fast float %1616, %912
  %1618 = fsub fast float %1562, %1590
  %1619 = fsub fast float %1563, %1591
  %1620 = fsub fast float %1564, %1592
  %1621 = fmul fast float %1605, %1618
  %1622 = fmul fast float %1605, %1619
  %1623 = fmul fast float %1605, %1620
  %1624 = fadd fast float %1621, %1590
  %1625 = fadd fast float %1622, %1591
  %1626 = fadd fast float %1623, %1592
  %1627 = fsub fast float %1577, %916
  %1628 = fmul fast float %1600, %1627
  %1629 = fadd fast float %1628, %916
  br label %1675

; <label>:1630                                    ; preds = %1597
  %1631 = icmp eq i32 %1595, 1
  br i1 %1631, label %1632, label %1645

; <label>:1632                                    ; preds = %1630
  %1633 = fadd fast float %1434, -1.000000e+00
  %1634 = fadd fast float %1435, -1.000000e+00
  %1635 = fadd fast float %1436, -1.000000e+00
  %1636 = fmul fast float %1600, %1633
  %1637 = fmul fast float %1600, %1634
  %1638 = fmul fast float %1600, %1635
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fmul fast float %1639, %1587
  %1643 = fmul fast float %1640, %1588
  %1644 = fmul fast float %1641, %1589
  br label %1675

; <label>:1645                                    ; preds = %1630
  %1646 = icmp eq i32 %1595, 2
  br i1 %1646, label %1647, label %1675

; <label>:1647                                    ; preds = %1645
  %1648 = call float @dx.op.unary.f32(i32 24, float %1434)  ; Sqrt(value)
  %1649 = call float @dx.op.unary.f32(i32 24, float %1435)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %1436)  ; Sqrt(value)
  %1651 = fadd fast float %1648, -5.000000e-01
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fmul fast float %1651, %1600
  %1655 = fmul fast float %1652, %1600
  %1656 = fmul fast float %1653, %1600
  %1657 = fadd fast float %1654, 5.000000e-01
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fmul fast float %1657, 2.000000e+00
  %1661 = fsub fast float 1.000000e+00, %1660
  %1662 = fmul fast float %1661, %1587
  %1663 = fadd fast float %1662, %1660
  %1664 = fmul fast float %1663, %1587
  %1665 = fmul fast float %1658, 2.000000e+00
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = fmul fast float %1666, %1588
  %1668 = fadd fast float %1667, %1665
  %1669 = fmul fast float %1668, %1588
  %1670 = fmul fast float %1659, 2.000000e+00
  %1671 = fsub fast float 1.000000e+00, %1670
  %1672 = fmul fast float %1671, %1589
  %1673 = fadd fast float %1672, %1670
  %1674 = fmul fast float %1673, %1589
  br label %1675

; <label>:1675                                    ; preds = %1647, %1645, %1632, %1602, %1586
  %1676 = phi float [ %1587, %1586 ], [ %1664, %1647 ], [ %1587, %1645 ], [ %1642, %1632 ], [ %1612, %1602 ]
  %1677 = phi float [ %1588, %1586 ], [ %1669, %1647 ], [ %1588, %1645 ], [ %1643, %1632 ], [ %1613, %1602 ]
  %1678 = phi float [ %1589, %1586 ], [ %1674, %1647 ], [ %1589, %1645 ], [ %1644, %1632 ], [ %1614, %1602 ]
  %1679 = phi float [ %1590, %1586 ], [ %1590, %1647 ], [ %1590, %1645 ], [ %1590, %1632 ], [ %1624, %1602 ]
  %1680 = phi float [ %1591, %1586 ], [ %1591, %1647 ], [ %1591, %1645 ], [ %1591, %1632 ], [ %1625, %1602 ]
  %1681 = phi float [ %1592, %1586 ], [ %1592, %1647 ], [ %1592, %1645 ], [ %1592, %1632 ], [ %1626, %1602 ]
  %1682 = phi float [ %912, %1586 ], [ %912, %1647 ], [ %912, %1645 ], [ %912, %1632 ], [ %1617, %1602 ]
  %1683 = phi float [ %916, %1586 ], [ %916, %1647 ], [ %916, %1645 ], [ %916, %1632 ], [ %1629, %1602 ]
  %1684 = and i32 %1594, 12
  %1685 = icmp eq i32 %1684, 12
  br i1 %1685, label %1758, label %1686

; <label>:1686                                    ; preds = %1675
  %1687 = and i32 %1594, 2097184
  %1688 = icmp eq i32 %1687, 2097184
  %1689 = select i1 %1688, float %1214, float 0.000000e+00
  %1690 = and i32 %1594, 4194336
  %1691 = icmp eq i32 %1690, 4194336
  %1692 = select i1 %1691, float %1214, float 0.000000e+00
  %1693 = and i32 %1594, 8388640
  %1694 = icmp eq i32 %1693, 8388640
  %1695 = select i1 %1694, float %1214, float 0.000000e+00
  %1696 = icmp eq i32 %1684, 0
  br i1 %1696, label %1697, label %1710

; <label>:1697                                    ; preds = %1686
  %1698 = fsub fast float %1515, %904
  %1699 = fsub fast float %1516, %905
  %1700 = fmul fast float %1689, %1698
  %1701 = fmul fast float %1689, %1699
  %1702 = fadd fast float %1700, %904
  %1703 = fadd fast float %1701, %905
  %1704 = fsub fast float %1517, %915
  %1705 = fmul fast float %1692, %1704
  %1706 = fadd fast float %1705, %915
  %1707 = fsub fast float %1514, %914
  %1708 = fmul fast float %1695, %1707
  %1709 = fadd fast float %1708, %914
  br label %1758

; <label>:1710                                    ; preds = %1686
  %1711 = icmp eq i32 %1684, 4
  br i1 %1711, label %1712, label %1744

; <label>:1712                                    ; preds = %1710
  %1713 = fmul fast float %1689, %1515
  %1714 = fmul fast float %1689, %1516
  %1715 = fadd fast float %1713, %904
  %1716 = fadd fast float %1714, %905
  %1717 = call float @dx.op.binary.f32(i32 36, float %915, float %1517)  ; FMin(a,b)
  %1718 = fsub fast float %1717, %915
  %1719 = fmul fast float %1718, %1692
  %1720 = fadd fast float %1719, %915
  %1721 = fadd fast float %1514, %914
  %1722 = fmul fast float %1721, 0x3FF337FAE0000000
  %1723 = fmul fast float %914, %914
  %1724 = fmul fast float %1514, %1514
  %1725 = fadd fast float %1724, %1723
  %1726 = fmul fast float %1725, 0x3FE5152B00000000
  %1727 = fmul fast float %914, 0xBFCC1F85E0000000
  %1728 = fmul fast float %1727, %1514
  %1729 = fadd fast float %1728, 0xBFE1363700000000
  %1730 = fadd fast float %1729, %1722
  %1731 = fsub fast float %1730, %1726
  %1732 = fmul fast float %1721, 0x3FBA6F0D00000000
  %1733 = fmul fast float %1725, 0x3FD0432880000000
  %1734 = fmul fast float %914, 0xBFEF110800000000
  %1735 = fmul fast float %1734, %1514
  %1736 = fadd fast float %1735, 1.000000e+00
  %1737 = fsub fast float %1736, %1732
  %1738 = fadd fast float %1737, %1733
  %1739 = fdiv fast float %1731, %1738
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = fsub fast float %1740, %914
  %1742 = fmul fast float %1741, %1695
  %1743 = fadd fast float %1742, %914
  br label %1758

; <label>:1744                                    ; preds = %1710
  %1745 = icmp eq i32 %1684, 8
  br i1 %1745, label %1746, label %1758

; <label>:1746                                    ; preds = %1744
  %1747 = fmul fast float %1689, %1515
  %1748 = fmul fast float %1689, %1516
  %1749 = fadd fast float %1747, %904
  %1750 = fadd fast float %1748, %905
  %1751 = call float @dx.op.binary.f32(i32 36, float %915, float %1517)  ; FMin(a,b)
  %1752 = fsub fast float %1751, %915
  %1753 = fmul fast float %1752, %1692
  %1754 = fadd fast float %1753, %915
  %1755 = fsub fast float %1514, %914
  %1756 = fmul fast float %1695, %1755
  %1757 = fadd fast float %1756, %914
  br label %1758

; <label>:1758                                    ; preds = %1746, %1744, %1712, %1697, %1675, %1213, %917, %903
  %1759 = phi float [ %904, %1675 ], [ %904, %1213 ], [ %904, %903 ], [ %1749, %1746 ], [ %904, %1744 ], [ %1715, %1712 ], [ %1702, %1697 ], [ %904, %917 ]
  %1760 = phi float [ %905, %1675 ], [ %905, %1213 ], [ %905, %903 ], [ %1750, %1746 ], [ %905, %1744 ], [ %1716, %1712 ], [ %1703, %1697 ], [ %905, %917 ]
  %1761 = phi float [ %1676, %1675 ], [ %906, %1213 ], [ %906, %903 ], [ %1676, %1746 ], [ %1676, %1744 ], [ %1676, %1712 ], [ %1676, %1697 ], [ %906, %917 ]
  %1762 = phi float [ %1677, %1675 ], [ %907, %1213 ], [ %907, %903 ], [ %1677, %1746 ], [ %1677, %1744 ], [ %1677, %1712 ], [ %1677, %1697 ], [ %907, %917 ]
  %1763 = phi float [ %1678, %1675 ], [ %908, %1213 ], [ %908, %903 ], [ %1678, %1746 ], [ %1678, %1744 ], [ %1678, %1712 ], [ %1678, %1697 ], [ %908, %917 ]
  %1764 = phi float [ %1679, %1675 ], [ %909, %1213 ], [ %909, %903 ], [ %1679, %1746 ], [ %1679, %1744 ], [ %1679, %1712 ], [ %1679, %1697 ], [ %909, %917 ]
  %1765 = phi float [ %1680, %1675 ], [ %910, %1213 ], [ %910, %903 ], [ %1680, %1746 ], [ %1680, %1744 ], [ %1680, %1712 ], [ %1680, %1697 ], [ %910, %917 ]
  %1766 = phi float [ %1681, %1675 ], [ %911, %1213 ], [ %911, %903 ], [ %1681, %1746 ], [ %1681, %1744 ], [ %1681, %1712 ], [ %1681, %1697 ], [ %911, %917 ]
  %1767 = phi float [ %1682, %1675 ], [ %912, %1213 ], [ %912, %903 ], [ %1682, %1746 ], [ %1682, %1744 ], [ %1682, %1712 ], [ %1682, %1697 ], [ %912, %917 ]
  %1768 = phi float [ %914, %1675 ], [ %914, %1213 ], [ %914, %903 ], [ %1757, %1746 ], [ %914, %1744 ], [ %1743, %1712 ], [ %1709, %1697 ], [ %914, %917 ]
  %1769 = phi float [ %915, %1675 ], [ %915, %1213 ], [ %915, %903 ], [ %1754, %1746 ], [ %915, %1744 ], [ %1720, %1712 ], [ %1706, %1697 ], [ %915, %917 ]
  %1770 = phi float [ %1683, %1675 ], [ %916, %1213 ], [ %916, %903 ], [ %1683, %1746 ], [ %1683, %1744 ], [ %1683, %1712 ], [ %1683, %1697 ], [ %916, %917 ]
  br i1 %383, label %2612, label %1771

; <label>:1771                                    ; preds = %1758
  %1772 = icmp ult i32 %436, 3
  %1773 = add i32 %35, 56
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = add i32 %35, 60
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = or i32 %1778, %1775
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %2612, label %1781

; <label>:1781                                    ; preds = %1771
  %1782 = and i32 %1775, 262144
  %1783 = icmp ne i32 %1782, 0
  %1784 = select i1 %1783, float %38, float 1.000000e+00
  %1785 = select i1 %1783, float %39, float 0.000000e+00
  %1786 = select i1 %1783, float %40, float 0.000000e+00
  %1787 = select i1 %1783, float %41, float 1.000000e+00
  %1788 = select i1 %1783, float %42, float %63
  %1789 = select i1 %1783, float %43, float %64
  %1790 = add i32 %35, 316
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = lshr i32 %1792, 16
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = fmul fast float %1794, 0x3F50624DE0000000
  %1796 = add i32 %35, 120
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 16
  %1800 = and i32 %1799, 255
  %1801 = lshr i32 %1798, 24
  %1802 = add i32 %35, 324
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 65535
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1804, 16
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = add i32 %35, 64
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = lshr i32 %1811, 22
  %1813 = shl nuw nsw i32 %1812, 5
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = shl i32 %1811, 4
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = lshr i32 %1811, 7
  %1819 = and i32 %1818, 32752
  %1820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1819)  ; LegacyF16ToF32(value)
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1823 = fmul fast float %1822, 1.000000e+03
  %1824 = fmul fast float %333, %1823
  %1825 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1826 = fadd fast float %1825, %323
  %1827 = fmul fast float %334, %1823
  %1828 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1829 = fadd fast float %1828, %325
  %1830 = fmul fast float %1795, %1823
  %1831 = call float @dx.op.unary.f32(i32 22, float %1830)  ; Frc(value)
  %1832 = fmul fast float %1831, 0x401921FB60000000
  %1833 = fadd fast float %1832, %1814
  %1834 = call float @dx.op.unary.f32(i32 13, float %1833)  ; Sin(value)
  %1835 = call float @dx.op.unary.f32(i32 12, float %1833)  ; Cos(value)
  %1836 = fsub fast float -0.000000e+00, %1834
  %1837 = fadd fast float %1788, -5.000000e-01
  %1838 = fadd fast float %1789, -5.000000e-01
  %1839 = fmul fast float %1806, %1837
  %1840 = fmul fast float %1808, %1838
  %1841 = fadd fast float %1839, 5.000000e-01
  %1842 = fadd fast float %1840, 5.000000e-01
  %1843 = fmul fast float %1817, %1841
  %1844 = fmul fast float %1820, %1842
  %1845 = fmul fast float %1835, %1843
  %1846 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1844, float %1845)  ; FMad(a,b,c)
  %1847 = fmul fast float %1834, %1843
  %1848 = call float @dx.op.tertiary.f32(i32 46, float %1835, float %1844, float %1847)  ; FMad(a,b,c)
  %1849 = fadd fast float %1826, %1846
  %1850 = fadd fast float %1829, %1848
  %1851 = icmp ugt i32 %1800, 1
  %1852 = icmp ugt i32 %1798, 33554431
  %1853 = or i1 %1852, %1851
  br i1 %1853, label %1854, label %1879

; <label>:1854                                    ; preds = %1781
  %1855 = add i32 %35, 260
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 16
  %1859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1858)  ; LegacyF16ToF32(value)
  %1860 = fmul fast float %1822, %1859
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = mul nuw nsw i32 %1800, %1801
  %1863 = uitofp i32 %1862 to float
  %1864 = fmul fast float %1861, %1863
  %1865 = call float @dx.op.unary.f32(i32 27, float %1864)  ; Round_ni(value)
  %1866 = fptoui float %1865 to i32
  %1867 = urem i32 %1866, %1800
  %1868 = udiv i32 %1866, %1801
  %1869 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1870 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1871 = uitofp i32 %1867 to float
  %1872 = uitofp i32 %1868 to float
  %1873 = fadd fast float %1869, %1871
  %1874 = fadd fast float %1870, %1872
  %1875 = uitofp i32 %1800 to float
  %1876 = uitofp i32 %1801 to float
  %1877 = fdiv fast float %1873, %1875
  %1878 = fdiv fast float %1874, %1876
  br label %1879

; <label>:1879                                    ; preds = %1854, %1781
  %1880 = phi float [ %1877, %1854 ], [ %1849, %1781 ]
  %1881 = phi float [ %1878, %1854 ], [ %1850, %1781 ]
  %1882 = and i32 %1775, 16777216
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1993, label %1884

; <label>:1884                                    ; preds = %1879
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1889 = fadd fast float %1886, %134
  %1890 = fadd fast float %1887, %135
  %1891 = fadd fast float %1888, %136
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = icmp eq i32 %36, 65535
  br i1 %1895, label %1990, label %1896

; <label>:1896                                    ; preds = %1884
  %1897 = lshr i32 %36, 1
  %1898 = shl i32 %1897, 2
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = and i32 %36, 1
  %1902 = icmp ne i32 %1901, 0
  %1903 = lshr i32 %1900, 16
  %1904 = and i32 %1900, 65535
  %1905 = select i1 %1902, i32 %1903, i32 %1904
  %1906 = icmp eq i32 %1905, 65535
  br i1 %1906, label %1986, label %1907

; <label>:1907                                    ; preds = %1896
  %1908 = mul nuw nsw i32 %1905, 40
  %1909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = add nuw nsw i32 %1908, 12
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = add nuw nsw i32 %1908, 24
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.ResRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.ResRet.f32 %1919, 2
  %1923 = add nuw nsw i32 %1908, 36
  %1924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = fsub fast float %1889, %1910
  %1927 = fsub fast float %1890, %1911
  %1928 = fsub fast float %1891, %1912
  %1929 = fmul fast float %1925, %1926
  %1930 = fmul fast float %1925, %1927
  %1931 = fmul fast float %1925, %1928
  %1932 = call float @dx.op.unary.f32(i32 27, float %1929)  ; Round_ni(value)
  %1933 = call float @dx.op.unary.f32(i32 27, float %1930)  ; Round_ni(value)
  %1934 = call float @dx.op.unary.f32(i32 27, float %1931)  ; Round_ni(value)
  %1935 = fadd fast float %1932, 5.000000e-01
  %1936 = fadd fast float %1933, 5.000000e-01
  %1937 = fadd fast float %1934, 5.000000e-01
  %1938 = fmul fast float %1935, %1915
  %1939 = fmul fast float %1936, %1916
  %1940 = fmul fast float %1937, %1917
  %1941 = shl i32 %36, 2
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = add i32 %1943, 0
  %1945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1946 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1947 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1948 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1945, %dx.types.Handle %30, float %1946, float %1947, float %1948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = fmul fast float %1950, 1.023000e+03
  %1954 = fmul fast float %1951, 1.023000e+03
  %1955 = fmul fast float %1952, 1.023000e+03
  %1956 = fadd fast float %1953, 5.000000e-01
  %1957 = fadd fast float %1954, 5.000000e-01
  %1958 = fadd fast float %1955, 5.000000e-01
  %1959 = call float @dx.op.unary.f32(i32 27, float %1956)  ; Round_ni(value)
  %1960 = call float @dx.op.unary.f32(i32 27, float %1957)  ; Round_ni(value)
  %1961 = call float @dx.op.unary.f32(i32 27, float %1958)  ; Round_ni(value)
  %1962 = fsub fast float %1929, %1932
  %1963 = fsub fast float %1930, %1933
  %1964 = fsub fast float %1931, %1934
  %1965 = fmul fast float %1962, 7.500000e-01
  %1966 = fmul fast float %1963, 7.500000e-01
  %1967 = fmul fast float %1964, 7.500000e-01
  %1968 = fadd fast float %1932, 1.250000e-01
  %1969 = fadd fast float %1968, %1965
  %1970 = fadd fast float %1969, %1959
  %1971 = fadd fast float %1933, 1.250000e-01
  %1972 = fadd fast float %1971, %1966
  %1973 = fadd fast float %1972, %1960
  %1974 = fadd fast float %1934, 1.250000e-01
  %1975 = fadd fast float %1974, %1967
  %1976 = fadd fast float %1975, %1961
  %1977 = fmul fast float %1970, %1920
  %1978 = fmul fast float %1973, %1921
  %1979 = fmul fast float %1976, %1922
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = add i32 %1981, 0
  %1983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1983, %dx.types.Handle %28, float %1977, float %1978, float %1979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  br label %1986

; <label>:1986                                    ; preds = %1907, %1896
  %1987 = phi float [ %1985, %1907 ], [ -1.000000e+00, %1896 ]
  %1988 = fadd fast float %1987, %1894
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  br label %1990

; <label>:1990                                    ; preds = %1986, %1884
  %1991 = phi float [ %1989, %1986 ], [ %1894, %1884 ]
  %1992 = fmul fast float %1991, %432
  br label %1993

; <label>:1993                                    ; preds = %1990, %1879
  %1994 = phi float [ %1992, %1990 ], [ %432, %1879 ]
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = and i32 %1996, 256
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2045, label %1999

; <label>:1999                                    ; preds = %1993
  %2000 = add i32 %35, 496
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %2002, 0
  %2004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2004, %dx.types.Handle %72, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = add i32 %35, 132
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = shl i32 %2009, 4
  %2011 = and i32 %2010, 32752
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = lshr i32 %2009, 7
  %2014 = and i32 %2013, 32752
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = fsub fast float 1.000000e+00, %1994
  %2017 = call float @dx.op.binary.f32(i32 35, float %2016, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2018 = bitcast float %1994 to i32
  %2019 = sitofp i32 %2018 to float
  %2020 = fadd fast float %2019, 0xC1CFBF8940000000
  %2021 = fmul fast float %2015, %2020
  %2022 = fadd fast float %2021, 0x41CFBF8940000000
  %2023 = fptosi float %2022 to i32
  %2024 = bitcast i32 %2023 to float
  %2025 = bitcast float %2017 to i32
  %2026 = sitofp i32 %2025 to float
  %2027 = fadd fast float %2026, 0xC1CFBF8940000000
  %2028 = fmul fast float %2027, %2015
  %2029 = fadd fast float %2028, 0x41CFBF8940000000
  %2030 = fptosi float %2029 to i32
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2024, %2012
  %2033 = fmul fast float %2031, %2012
  %2034 = fsub fast float %2017, %2032
  %2035 = fadd fast float %2033, %2017
  %2036 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2038 = fsub fast float %2006, %2036
  %2039 = fsub fast float %2037, %2036
  %2040 = bitcast float %2039 to i32
  %2041 = sub nsw i32 2129859010, %2040
  %2042 = bitcast i32 %2041 to float
  %2043 = fmul fast float %2042, %2038
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  br label %2045

; <label>:2045                                    ; preds = %1999, %1993
  %2046 = phi float [ %2044, %1999 ], [ %1994, %1993 ]
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 128
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %2067, label %2051

; <label>:2051                                    ; preds = %2045
  %2052 = add i32 %35, 480
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %2054, 0
  %2056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2056, %dx.types.Handle %72, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 524288
  %2062 = icmp ne i32 %2061, 0
  %2063 = fcmp fast ogt float %2058, 0x3FE0101020000000
  %2064 = select i1 %2063, float 1.000000e+00, float 0.000000e+00
  %2065 = select i1 %2062, float %2064, float %2058
  %2066 = fmul fast float %2065, %2046
  br label %2067

; <label>:2067                                    ; preds = %2051, %2045
  %2068 = phi float [ %2066, %2051 ], [ %2046, %2045 ]
  %2069 = fcmp fast ult float %2068, 0x3F70101020000000
  br i1 %2069, label %2612, label %2070

; <label>:2070                                    ; preds = %2067
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 16
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2273, label %2075

; <label>:2075                                    ; preds = %2070
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %35, 432
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2082, %dx.types.Handle %71, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = extractvalue %dx.types.ResRet.f32 %2083, 3
  %2088 = and i32 %2077, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = lshr i32 %2077, 8
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2087, %2089
  %2094 = fadd fast float %2093, %2092
  %2095 = fmul fast float %2094, 0x3F70101000000000
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 512
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2108, label %2100

; <label>:2100                                    ; preds = %2075
  %2101 = add i32 %35, 512
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = add i32 %2103, 0
  %2105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2105, %dx.types.Handle %72, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  br label %2108

; <label>:2108                                    ; preds = %2100, %2075
  %2109 = phi float [ %2107, %2100 ], [ 1.000000e+00, %2075 ]
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 33554432
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2220, label %2114

; <label>:2114                                    ; preds = %2108
  %2115 = add i32 %35, 256
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %2117, 65535
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = lshr i32 %2117, 16
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = add i32 %35, 260
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = and i32 %2124, 65535
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = lshr i32 %2128, 24
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = and i32 %2128, 255
  %2133 = uitofp i32 %2132 to float
  %2134 = fmul fast float %2133, 0x3F70101020000000
  %2135 = lshr i32 %2128, 8
  %2136 = and i32 %2135, 255
  %2137 = uitofp i32 %2136 to float
  %2138 = fmul fast float %2137, 0x3F70101020000000
  %2139 = lshr i32 %2128, 16
  %2140 = and i32 %2139, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = add i32 %35, 252
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = lshr i32 %2145, 24
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = and i32 %2145, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101020000000
  %2152 = lshr i32 %2145, 8
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F70101020000000
  %2156 = lshr i32 %2145, 16
  %2157 = and i32 %2156, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2158, 0x3F70101020000000
  %2160 = bitcast float %2084 to i32
  %2161 = ashr i32 %2160, 1
  %2162 = sub nsw i32 1597463174, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2084, 5.000000e-01
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float 1.500000e+00, %2166
  %2168 = fmul fast float %2163, %2084
  %2169 = fmul fast float %2168, %2167
  %2170 = bitcast float %2085 to i32
  %2171 = ashr i32 %2170, 1
  %2172 = sub nsw i32 1597463174, %2171
  %2173 = bitcast i32 %2172 to float
  %2174 = fmul fast float %2085, 5.000000e-01
  %2175 = fmul fast float %2173, %2173
  %2176 = fmul fast float %2175, %2174
  %2177 = fsub fast float 1.500000e+00, %2176
  %2178 = fmul fast float %2173, %2085
  %2179 = fmul fast float %2178, %2177
  %2180 = bitcast float %2086 to i32
  %2181 = ashr i32 %2180, 1
  %2182 = sub nsw i32 1597463174, %2181
  %2183 = bitcast i32 %2182 to float
  %2184 = fmul fast float %2086, 5.000000e-01
  %2185 = fmul fast float %2183, %2183
  %2186 = fmul fast float %2185, %2184
  %2187 = fsub fast float 1.500000e+00, %2186
  %2188 = fmul fast float %2183, %2086
  %2189 = fmul fast float %2188, %2187
  %2190 = fsub fast float %2169, %2151
  %2191 = fsub fast float %2179, %2155
  %2192 = fsub fast float %2189, %2159
  %2193 = fmul fast float %2190, %2119
  %2194 = fmul fast float %2191, %2121
  %2195 = fmul fast float %2192, %2126
  %2196 = fadd fast float %2193, %2134
  %2197 = fadd fast float %2194, %2138
  %2198 = fadd fast float %2195, %2142
  %2199 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2200 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2201 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2202 = fmul fast float %2199, %2199
  %2203 = fmul fast float %2200, %2200
  %2204 = fmul fast float %2201, %2201
  %2205 = fsub fast float %2202, %2084
  %2206 = fsub fast float %2203, %2085
  %2207 = fsub fast float %2204, %2086
  %2208 = fmul fast float %2205, %2109
  %2209 = fmul fast float %2206, %2109
  %2210 = fmul fast float %2207, %2109
  %2211 = fadd fast float %2208, %2084
  %2212 = fadd fast float %2209, %2085
  %2213 = fadd fast float %2210, %2086
  %2214 = fadd fast float %2131, %2095
  %2215 = fsub fast float %2214, %2148
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fsub fast float %2216, %2095
  %2218 = fmul fast float %2217, %2109
  %2219 = fadd fast float %2218, %2095
  br label %2273

; <label>:2220                                    ; preds = %2108
  %2221 = and i32 %2111, 134217728
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2257, label %2223

; <label>:2223                                    ; preds = %2220
  %2224 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2225 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %2226 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %2227 = fadd fast float %2224, -5.000000e-01
  %2228 = fadd fast float %2225, -5.000000e-01
  %2229 = fadd fast float %2226, -5.000000e-01
  %2230 = fmul fast float %2227, %2109
  %2231 = fmul fast float %2228, %2109
  %2232 = fmul fast float %2229, %2109
  %2233 = fadd fast float %2230, 5.000000e-01
  %2234 = fadd fast float %2231, 5.000000e-01
  %2235 = fadd fast float %2232, 5.000000e-01
  %2236 = call float @dx.op.unary.f32(i32 24, float %2084)  ; Sqrt(value)
  %2237 = call float @dx.op.unary.f32(i32 24, float %2085)  ; Sqrt(value)
  %2238 = call float @dx.op.unary.f32(i32 24, float %2086)  ; Sqrt(value)
  %2239 = fmul fast float %2233, 2.000000e+00
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = fmul fast float %2240, %2236
  %2242 = fadd fast float %2241, %2239
  %2243 = fmul fast float %2242, %2236
  %2244 = fmul fast float %2234, 2.000000e+00
  %2245 = fsub fast float 1.000000e+00, %2244
  %2246 = fmul fast float %2245, %2237
  %2247 = fadd fast float %2246, %2244
  %2248 = fmul fast float %2247, %2237
  %2249 = fmul fast float %2235, 2.000000e+00
  %2250 = fsub fast float 1.000000e+00, %2249
  %2251 = fmul fast float %2250, %2238
  %2252 = fadd fast float %2251, %2249
  %2253 = fmul fast float %2252, %2238
  %2254 = fmul fast float %2243, %2243
  %2255 = fmul fast float %2248, %2248
  %2256 = fmul fast float %2253, %2253
  br label %2273

; <label>:2257                                    ; preds = %2220
  %2258 = fmul fast float %310, %310
  %2259 = fmul fast float %314, %314
  %2260 = fmul fast float %318, %318
  %2261 = fadd fast float %2258, -1.000000e+00
  %2262 = fadd fast float %2259, -1.000000e+00
  %2263 = fadd fast float %2260, -1.000000e+00
  %2264 = fmul fast float %2109, %2261
  %2265 = fmul fast float %2109, %2262
  %2266 = fmul fast float %2109, %2263
  %2267 = fadd fast float %2264, 1.000000e+00
  %2268 = fadd fast float %2265, 1.000000e+00
  %2269 = fadd fast float %2266, 1.000000e+00
  %2270 = fmul fast float %2267, %2084
  %2271 = fmul fast float %2268, %2085
  %2272 = fmul fast float %2269, %2086
  br label %2273

; <label>:2273                                    ; preds = %2257, %2223, %2114, %2070
  %2274 = phi float [ %2219, %2114 ], [ %2095, %2223 ], [ %2095, %2257 ], [ 0x3FA23C0BE0000000, %2070 ]
  %2275 = phi float [ %2211, %2114 ], [ %2254, %2223 ], [ %2270, %2257 ], [ 1.000000e+00, %2070 ]
  %2276 = phi float [ %2212, %2114 ], [ %2255, %2223 ], [ %2271, %2257 ], [ 1.000000e+00, %2070 ]
  %2277 = phi float [ %2213, %2114 ], [ %2256, %2223 ], [ %2272, %2257 ], [ 1.000000e+00, %2070 ]
  %2278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.i32 %2278, 1
  %2280 = and i32 %2279, 1
  %2281 = icmp ne i32 %2280, 0
  %2282 = add i32 %35, 356
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 32
  %2286 = icmp ne i32 %2285, 0
  %2287 = and i1 %2281, %2286
  %2288 = select i1 %2287, float 1.000000e+00, float %2275
  %2289 = select i1 %2287, float 0x3FD3333340000000, float %2276
  %2290 = select i1 %2287, float 0x3FD3333340000000, float %2277
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = and i32 %2292, 32
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2367, label %2295

; <label>:2295                                    ; preds = %2273
  %2296 = add i32 %35, 124
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = add i32 %35, 448
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = add i32 %2301, 0
  %2303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2303, %dx.types.Handle %71, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = extractvalue %dx.types.ResRet.f32 %2304, 3
  %2309 = and i32 %2298, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = lshr i32 %2298, 8
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = lshr i32 %2298, 16
  %2315 = and i32 %2314, 255
  %2316 = uitofp i32 %2315 to float
  %2317 = fmul fast float %2316, 0x3F70101000000000
  %2318 = fmul fast float %2305, %2310
  %2319 = fadd fast float %2318, %2313
  %2320 = fmul fast float %2319, 0x3F70101000000000
  %2321 = fadd fast float %2306, -5.000000e-01
  %2322 = fadd fast float %2308, -5.000000e-01
  %2323 = fmul fast float %2321, %2317
  %2324 = fmul fast float %2322, %2317
  %2325 = fadd fast float %2323, 5.000000e-01
  %2326 = fadd fast float %2324, 5.000000e-01
  %2327 = fmul fast float %2325, 2.000000e+00
  %2328 = fadd fast float %2327, -1.000000e+00
  %2329 = fmul fast float %2326, 2.000000e+00
  %2330 = fadd fast float %2329, -1.000000e+00
  %2331 = fadd fast float %2328, %2330
  %2332 = fmul fast float %2331, 5.000000e-01
  %2333 = fsub fast float %2328, %2330
  %2334 = fmul fast float %2333, 5.000000e-01
  %2335 = call float @dx.op.unary.f32(i32 6, float %2332)  ; FAbs(value)
  %2336 = fsub fast float 1.000000e+00, %2335
  %2337 = call float @dx.op.unary.f32(i32 6, float %2334)  ; FAbs(value)
  %2338 = fsub fast float %2336, %2337
  %2339 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2334, float %2338, float %2332, float %2334, float %2338)  ; Dot3(ax,ay,az,bx,by,bz)
  %2340 = call float @dx.op.unary.f32(i32 25, float %2339)  ; Rsqrt(value)
  %2341 = fmul fast float %2332, %2340
  %2342 = fmul fast float %2334, %2340
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 67108864
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2363, label %2347

; <label>:2347                                    ; preds = %2295
  %2348 = add i32 %35, 312
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 65535
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 65535
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = lshr i32 %2350, 16
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = fsub fast float %2320, %2358
  %2360 = fmul fast float %2359, %2352
  %2361 = fadd fast float %2360, %2356
  %2362 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  br label %2363

; <label>:2363                                    ; preds = %2347, %2295
  %2364 = phi float [ %2362, %2347 ], [ %2320, %2295 ]
  %2365 = call float @dx.op.dot2.f32(i32 54, float %2341, float %2342, float %1784, float %1785)  ; Dot2(ax,ay,bx,by)
  %2366 = call float @dx.op.dot2.f32(i32 54, float %2341, float %2342, float %1786, float %1787)  ; Dot2(ax,ay,bx,by)
  br label %2367

; <label>:2367                                    ; preds = %2363, %2273
  %2368 = phi float [ %2364, %2363 ], [ 0x3FD6666660000000, %2273 ]
  %2369 = phi float [ %2365, %2363 ], [ 0.000000e+00, %2273 ]
  %2370 = phi float [ %2366, %2363 ], [ 0.000000e+00, %2273 ]
  %2371 = phi float [ %2307, %2363 ], [ 1.000000e+00, %2273 ]
  %2372 = add i32 %35, 192
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = lshr i32 %2374, 22
  %2376 = shl nuw nsw i32 %2375, 5
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 64
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2415, label %2382

; <label>:2382                                    ; preds = %2367
  %2383 = add i32 %35, 464
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = add i32 %2385, 0
  %2387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 131072
  %2391 = icmp eq i32 %2390, 0
  %2392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2387, %dx.types.Handle %71, float %1880, float %1881, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.ResRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.ResRet.f32 %2392, 2
  %2396 = fmul fast float %2393, %298
  %2397 = fmul fast float %2394, %301
  %2398 = fmul fast float %2395, %304
  br i1 %2391, label %2405, label %2399

; <label>:2399                                    ; preds = %2382
  %2400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2400, 0
  %2402 = fmul fast float %2401, %2396
  %2403 = fmul fast float %2401, %2397
  %2404 = fmul fast float %2401, %2398
  br label %2405

; <label>:2405                                    ; preds = %2399, %2382
  %2406 = phi float [ %2402, %2399 ], [ %2396, %2382 ]
  %2407 = phi float [ %2403, %2399 ], [ %2397, %2382 ]
  %2408 = phi float [ %2404, %2399 ], [ %2398, %2382 ]
  %2409 = fmul fast float %2406, %2377
  %2410 = select i1 %208, float %2409, float %2406
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2407, float %2408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = select i1 %208, float 0.000000e+00, float %2406
  %2413 = select i1 %208, float %2411, float %2407
  %2414 = select i1 %208, float 0.000000e+00, float %2408
  br label %2415

; <label>:2415                                    ; preds = %2405, %2367
  %2416 = phi float [ %2412, %2405 ], [ 0.000000e+00, %2367 ]
  %2417 = phi float [ %2413, %2405 ], [ 0.000000e+00, %2367 ]
  %2418 = phi float [ %2414, %2405 ], [ 0.000000e+00, %2367 ]
  %2419 = add i32 %35, 128
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = lshr i32 %2421, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2289, float %2290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2428 = fmul fast float %2426, %2427
  %2429 = fadd fast float %2428, %2423
  %2430 = fmul fast float %2429, 0x3F70101020000000
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  br i1 %1772, label %2432, label %2440

; <label>:2432                                    ; preds = %2415
  %2433 = fsub fast float 1.000000e+00, %2068
  %2434 = fmul fast float %2433, %1761
  %2435 = fmul fast float %2433, %1762
  %2436 = fmul fast float %2433, %1763
  %2437 = fmul fast float %2433, %1764
  %2438 = fmul fast float %2433, %1765
  %2439 = fmul fast float %2433, %1766
  br label %2440

; <label>:2440                                    ; preds = %2432, %2415
  %2441 = phi float [ %2434, %2432 ], [ %1761, %2415 ]
  %2442 = phi float [ %2435, %2432 ], [ %1762, %2415 ]
  %2443 = phi float [ %2436, %2432 ], [ %1763, %2415 ]
  %2444 = phi float [ %2437, %2432 ], [ %1764, %2415 ]
  %2445 = phi float [ %2438, %2432 ], [ %1765, %2415 ]
  %2446 = phi float [ %2439, %2432 ], [ %1766, %2415 ]
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 3
  %2450 = icmp eq i32 %2449, 3
  br i1 %2450, label %2529, label %2451

; <label>:2451                                    ; preds = %2440
  %2452 = and i32 %2448, 16
  %2453 = icmp ne i32 %2452, 0
  %2454 = select i1 %2453, float %2068, float 0.000000e+00
  %2455 = icmp eq i32 %2449, 0
  br i1 %2455, label %2456, label %2484

; <label>:2456                                    ; preds = %2451
  %2457 = and i32 %2448, 64
  %2458 = icmp ne i32 %2457, 0
  %2459 = select i1 %2458, float %2068, float 0.000000e+00
  %2460 = fsub fast float %2288, %2441
  %2461 = fsub fast float %2289, %2442
  %2462 = fsub fast float %2290, %2443
  %2463 = fmul fast float %2454, %2460
  %2464 = fmul fast float %2454, %2461
  %2465 = fmul fast float %2454, %2462
  %2466 = fadd fast float %2463, %2441
  %2467 = fadd fast float %2464, %2442
  %2468 = fadd fast float %2465, %2443
  %2469 = fsub fast float %2274, %1767
  %2470 = fmul fast float %2454, %2469
  %2471 = fadd fast float %2470, %1767
  %2472 = fsub fast float %2416, %2444
  %2473 = fsub fast float %2417, %2445
  %2474 = fsub fast float %2418, %2446
  %2475 = fmul fast float %2459, %2472
  %2476 = fmul fast float %2459, %2473
  %2477 = fmul fast float %2459, %2474
  %2478 = fadd fast float %2475, %2444
  %2479 = fadd fast float %2476, %2445
  %2480 = fadd fast float %2477, %2446
  %2481 = fsub fast float %2431, %1770
  %2482 = fmul fast float %2454, %2481
  %2483 = fadd fast float %2482, %1770
  br label %2529

; <label>:2484                                    ; preds = %2451
  %2485 = icmp eq i32 %2449, 1
  br i1 %2485, label %2486, label %2499

; <label>:2486                                    ; preds = %2484
  %2487 = fadd fast float %2288, -1.000000e+00
  %2488 = fadd fast float %2289, -1.000000e+00
  %2489 = fadd fast float %2290, -1.000000e+00
  %2490 = fmul fast float %2454, %2487
  %2491 = fmul fast float %2454, %2488
  %2492 = fmul fast float %2454, %2489
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fmul fast float %2493, %2441
  %2497 = fmul fast float %2494, %2442
  %2498 = fmul fast float %2495, %2443
  br label %2529

; <label>:2499                                    ; preds = %2484
  %2500 = icmp eq i32 %2449, 2
  br i1 %2500, label %2501, label %2529

; <label>:2501                                    ; preds = %2499
  %2502 = call float @dx.op.unary.f32(i32 24, float %2288)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %2289)  ; Sqrt(value)
  %2504 = call float @dx.op.unary.f32(i32 24, float %2290)  ; Sqrt(value)
  %2505 = fadd fast float %2502, -5.000000e-01
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fadd fast float %2504, -5.000000e-01
  %2508 = fmul fast float %2505, %2454
  %2509 = fmul fast float %2506, %2454
  %2510 = fmul fast float %2507, %2454
  %2511 = fadd fast float %2508, 5.000000e-01
  %2512 = fadd fast float %2509, 5.000000e-01
  %2513 = fadd fast float %2510, 5.000000e-01
  %2514 = fmul fast float %2511, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2441
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2441
  %2519 = fmul fast float %2512, 2.000000e+00
  %2520 = fsub fast float 1.000000e+00, %2519
  %2521 = fmul fast float %2520, %2442
  %2522 = fadd fast float %2521, %2519
  %2523 = fmul fast float %2522, %2442
  %2524 = fmul fast float %2513, 2.000000e+00
  %2525 = fsub fast float 1.000000e+00, %2524
  %2526 = fmul fast float %2525, %2443
  %2527 = fadd fast float %2526, %2524
  %2528 = fmul fast float %2527, %2443
  br label %2529

; <label>:2529                                    ; preds = %2501, %2499, %2486, %2456, %2440
  %2530 = phi float [ %2441, %2440 ], [ %2518, %2501 ], [ %2441, %2499 ], [ %2496, %2486 ], [ %2466, %2456 ]
  %2531 = phi float [ %2442, %2440 ], [ %2523, %2501 ], [ %2442, %2499 ], [ %2497, %2486 ], [ %2467, %2456 ]
  %2532 = phi float [ %2443, %2440 ], [ %2528, %2501 ], [ %2443, %2499 ], [ %2498, %2486 ], [ %2468, %2456 ]
  %2533 = phi float [ %2444, %2440 ], [ %2444, %2501 ], [ %2444, %2499 ], [ %2444, %2486 ], [ %2478, %2456 ]
  %2534 = phi float [ %2445, %2440 ], [ %2445, %2501 ], [ %2445, %2499 ], [ %2445, %2486 ], [ %2479, %2456 ]
  %2535 = phi float [ %2446, %2440 ], [ %2446, %2501 ], [ %2446, %2499 ], [ %2446, %2486 ], [ %2480, %2456 ]
  %2536 = phi float [ %1767, %2440 ], [ %1767, %2501 ], [ %1767, %2499 ], [ %1767, %2486 ], [ %2471, %2456 ]
  %2537 = phi float [ %1770, %2440 ], [ %1770, %2501 ], [ %1770, %2499 ], [ %1770, %2486 ], [ %2483, %2456 ]
  %2538 = and i32 %2448, 12
  %2539 = icmp eq i32 %2538, 12
  br i1 %2539, label %2612, label %2540

; <label>:2540                                    ; preds = %2529
  %2541 = and i32 %2448, 2097184
  %2542 = icmp eq i32 %2541, 2097184
  %2543 = select i1 %2542, float %2068, float 0.000000e+00
  %2544 = and i32 %2448, 4194336
  %2545 = icmp eq i32 %2544, 4194336
  %2546 = select i1 %2545, float %2068, float 0.000000e+00
  %2547 = and i32 %2448, 8388640
  %2548 = icmp eq i32 %2547, 8388640
  %2549 = select i1 %2548, float %2068, float 0.000000e+00
  %2550 = icmp eq i32 %2538, 0
  br i1 %2550, label %2551, label %2564

; <label>:2551                                    ; preds = %2540
  %2552 = fsub fast float %2369, %1759
  %2553 = fsub fast float %2370, %1760
  %2554 = fmul fast float %2543, %2552
  %2555 = fmul fast float %2543, %2553
  %2556 = fadd fast float %2554, %1759
  %2557 = fadd fast float %2555, %1760
  %2558 = fsub fast float %2371, %1769
  %2559 = fmul fast float %2546, %2558
  %2560 = fadd fast float %2559, %1769
  %2561 = fsub fast float %2368, %1768
  %2562 = fmul fast float %2549, %2561
  %2563 = fadd fast float %2562, %1768
  br label %2612

; <label>:2564                                    ; preds = %2540
  %2565 = icmp eq i32 %2538, 4
  br i1 %2565, label %2566, label %2598

; <label>:2566                                    ; preds = %2564
  %2567 = fmul fast float %2543, %2369
  %2568 = fmul fast float %2543, %2370
  %2569 = fadd fast float %2567, %1759
  %2570 = fadd fast float %2568, %1760
  %2571 = call float @dx.op.binary.f32(i32 36, float %1769, float %2371)  ; FMin(a,b)
  %2572 = fsub fast float %2571, %1769
  %2573 = fmul fast float %2572, %2546
  %2574 = fadd fast float %2573, %1769
  %2575 = fadd fast float %2368, %1768
  %2576 = fmul fast float %2575, 0x3FF337FAE0000000
  %2577 = fmul fast float %1768, %1768
  %2578 = fmul fast float %2368, %2368
  %2579 = fadd fast float %2578, %2577
  %2580 = fmul fast float %2579, 0x3FE5152B00000000
  %2581 = fmul fast float %1768, 0xBFCC1F85E0000000
  %2582 = fmul fast float %2581, %2368
  %2583 = fadd fast float %2582, 0xBFE1363700000000
  %2584 = fadd fast float %2583, %2576
  %2585 = fsub fast float %2584, %2580
  %2586 = fmul fast float %2575, 0x3FBA6F0D00000000
  %2587 = fmul fast float %2579, 0x3FD0432880000000
  %2588 = fmul fast float %1768, 0xBFEF110800000000
  %2589 = fmul fast float %2588, %2368
  %2590 = fadd fast float %2589, 1.000000e+00
  %2591 = fsub fast float %2590, %2586
  %2592 = fadd fast float %2591, %2587
  %2593 = fdiv fast float %2585, %2592
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = fsub fast float %2594, %1768
  %2596 = fmul fast float %2595, %2549
  %2597 = fadd fast float %2596, %1768
  br label %2612

; <label>:2598                                    ; preds = %2564
  %2599 = icmp eq i32 %2538, 8
  br i1 %2599, label %2600, label %2612

; <label>:2600                                    ; preds = %2598
  %2601 = fmul fast float %2543, %2369
  %2602 = fmul fast float %2543, %2370
  %2603 = fadd fast float %2601, %1759
  %2604 = fadd fast float %2602, %1760
  %2605 = call float @dx.op.binary.f32(i32 36, float %1769, float %2371)  ; FMin(a,b)
  %2606 = fsub fast float %2605, %1769
  %2607 = fmul fast float %2606, %2546
  %2608 = fadd fast float %2607, %1769
  %2609 = fsub fast float %2368, %1768
  %2610 = fmul fast float %2549, %2609
  %2611 = fadd fast float %2610, %1768
  br label %2612

; <label>:2612                                    ; preds = %2600, %2598, %2566, %2551, %2529, %2067, %1771, %1758
  %2613 = phi float [ %1759, %2529 ], [ %1759, %2067 ], [ %1759, %1758 ], [ %2603, %2600 ], [ %1759, %2598 ], [ %2569, %2566 ], [ %2556, %2551 ], [ %1759, %1771 ]
  %2614 = phi float [ %1760, %2529 ], [ %1760, %2067 ], [ %1760, %1758 ], [ %2604, %2600 ], [ %1760, %2598 ], [ %2570, %2566 ], [ %2557, %2551 ], [ %1760, %1771 ]
  %2615 = phi float [ %2530, %2529 ], [ %1761, %2067 ], [ %1761, %1758 ], [ %2530, %2600 ], [ %2530, %2598 ], [ %2530, %2566 ], [ %2530, %2551 ], [ %1761, %1771 ]
  %2616 = phi float [ %2531, %2529 ], [ %1762, %2067 ], [ %1762, %1758 ], [ %2531, %2600 ], [ %2531, %2598 ], [ %2531, %2566 ], [ %2531, %2551 ], [ %1762, %1771 ]
  %2617 = phi float [ %2532, %2529 ], [ %1763, %2067 ], [ %1763, %1758 ], [ %2532, %2600 ], [ %2532, %2598 ], [ %2532, %2566 ], [ %2532, %2551 ], [ %1763, %1771 ]
  %2618 = phi float [ %2533, %2529 ], [ %1764, %2067 ], [ %1764, %1758 ], [ %2533, %2600 ], [ %2533, %2598 ], [ %2533, %2566 ], [ %2533, %2551 ], [ %1764, %1771 ]
  %2619 = phi float [ %2534, %2529 ], [ %1765, %2067 ], [ %1765, %1758 ], [ %2534, %2600 ], [ %2534, %2598 ], [ %2534, %2566 ], [ %2534, %2551 ], [ %1765, %1771 ]
  %2620 = phi float [ %2535, %2529 ], [ %1766, %2067 ], [ %1766, %1758 ], [ %2535, %2600 ], [ %2535, %2598 ], [ %2535, %2566 ], [ %2535, %2551 ], [ %1766, %1771 ]
  %2621 = phi float [ %2536, %2529 ], [ %1767, %2067 ], [ %1767, %1758 ], [ %2536, %2600 ], [ %2536, %2598 ], [ %2536, %2566 ], [ %2536, %2551 ], [ %1767, %1771 ]
  %2622 = phi float [ %1768, %2529 ], [ %1768, %2067 ], [ %1768, %1758 ], [ %2611, %2600 ], [ %1768, %2598 ], [ %2597, %2566 ], [ %2563, %2551 ], [ %1768, %1771 ]
  %2623 = phi float [ %1769, %2529 ], [ %1769, %2067 ], [ %1769, %1758 ], [ %2608, %2600 ], [ %1769, %2598 ], [ %2574, %2566 ], [ %2560, %2551 ], [ %1769, %1771 ]
  %2624 = phi float [ %2537, %2529 ], [ %1770, %2067 ], [ %1770, %1758 ], [ %2537, %2600 ], [ %2537, %2598 ], [ %2537, %2566 ], [ %2537, %2551 ], [ %1770, %1771 ]
  br i1 %385, label %3466, label %2625

; <label>:2625                                    ; preds = %2612
  %2626 = icmp ult i32 %436, 4
  %2627 = add i32 %35, 72
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = add i32 %35, 76
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = or i32 %2632, %2629
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %3466, label %2635

; <label>:2635                                    ; preds = %2625
  %2636 = and i32 %2629, 262144
  %2637 = icmp ne i32 %2636, 0
  %2638 = select i1 %2637, float %38, float 1.000000e+00
  %2639 = select i1 %2637, float %39, float 0.000000e+00
  %2640 = select i1 %2637, float %40, float 0.000000e+00
  %2641 = select i1 %2637, float %41, float 1.000000e+00
  %2642 = select i1 %2637, float %42, float %63
  %2643 = select i1 %2637, float %43, float %64
  %2644 = add i32 %35, 332
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = lshr i32 %2646, 16
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = fmul fast float %2648, 0x3F50624DE0000000
  %2650 = add i32 %35, 136
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = lshr i32 %2652, 16
  %2654 = and i32 %2653, 255
  %2655 = lshr i32 %2652, 24
  %2656 = add i32 %35, 340
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2658, 16
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = add i32 %35, 80
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = lshr i32 %2665, 22
  %2667 = shl nuw nsw i32 %2666, 5
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = shl i32 %2665, 4
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = lshr i32 %2665, 7
  %2673 = and i32 %2672, 32752
  %2674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2673)  ; LegacyF16ToF32(value)
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %2677 = fmul fast float %2676, 1.000000e+03
  %2678 = fmul fast float %375, %2677
  %2679 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2680 = fadd fast float %2679, %365
  %2681 = fmul fast float %376, %2677
  %2682 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2683 = fadd fast float %2682, %367
  %2684 = fmul fast float %2649, %2677
  %2685 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2686 = fmul fast float %2685, 0x401921FB60000000
  %2687 = fadd fast float %2686, %2668
  %2688 = call float @dx.op.unary.f32(i32 13, float %2687)  ; Sin(value)
  %2689 = call float @dx.op.unary.f32(i32 12, float %2687)  ; Cos(value)
  %2690 = fsub fast float -0.000000e+00, %2688
  %2691 = fadd fast float %2642, -5.000000e-01
  %2692 = fadd fast float %2643, -5.000000e-01
  %2693 = fmul fast float %2660, %2691
  %2694 = fmul fast float %2662, %2692
  %2695 = fadd fast float %2693, 5.000000e-01
  %2696 = fadd fast float %2694, 5.000000e-01
  %2697 = fmul fast float %2671, %2695
  %2698 = fmul fast float %2674, %2696
  %2699 = fmul fast float %2689, %2697
  %2700 = call float @dx.op.tertiary.f32(i32 46, float %2690, float %2698, float %2699)  ; FMad(a,b,c)
  %2701 = fmul fast float %2688, %2697
  %2702 = call float @dx.op.tertiary.f32(i32 46, float %2689, float %2698, float %2701)  ; FMad(a,b,c)
  %2703 = fadd fast float %2680, %2700
  %2704 = fadd fast float %2683, %2702
  %2705 = icmp ugt i32 %2654, 1
  %2706 = icmp ugt i32 %2652, 33554431
  %2707 = or i1 %2706, %2705
  br i1 %2707, label %2708, label %2733

; <label>:2708                                    ; preds = %2635
  %2709 = add i32 %35, 276
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = lshr i32 %2711, 16
  %2713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2712)  ; LegacyF16ToF32(value)
  %2714 = fmul fast float %2676, %2713
  %2715 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2716 = mul nuw nsw i32 %2654, %2655
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2715, %2717
  %2719 = call float @dx.op.unary.f32(i32 27, float %2718)  ; Round_ni(value)
  %2720 = fptoui float %2719 to i32
  %2721 = urem i32 %2720, %2654
  %2722 = udiv i32 %2720, %2655
  %2723 = call float @dx.op.unary.f32(i32 22, float %2703)  ; Frc(value)
  %2724 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2725 = uitofp i32 %2721 to float
  %2726 = uitofp i32 %2722 to float
  %2727 = fadd fast float %2723, %2725
  %2728 = fadd fast float %2724, %2726
  %2729 = uitofp i32 %2654 to float
  %2730 = uitofp i32 %2655 to float
  %2731 = fdiv fast float %2727, %2729
  %2732 = fdiv fast float %2728, %2730
  br label %2733

; <label>:2733                                    ; preds = %2708, %2635
  %2734 = phi float [ %2731, %2708 ], [ %2703, %2635 ]
  %2735 = phi float [ %2732, %2708 ], [ %2704, %2635 ]
  %2736 = and i32 %2629, 16777216
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %2847, label %2738

; <label>:2738                                    ; preds = %2733
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.CBufRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.CBufRet.f32 %2739, 2
  %2743 = fadd fast float %2740, %134
  %2744 = fadd fast float %2741, %135
  %2745 = fadd fast float %2742, %136
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = icmp eq i32 %36, 65535
  br i1 %2749, label %2844, label %2750

; <label>:2750                                    ; preds = %2738
  %2751 = lshr i32 %36, 1
  %2752 = shl i32 %2751, 2
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = and i32 %36, 1
  %2756 = icmp ne i32 %2755, 0
  %2757 = lshr i32 %2754, 16
  %2758 = and i32 %2754, 65535
  %2759 = select i1 %2756, i32 %2757, i32 %2758
  %2760 = icmp eq i32 %2759, 65535
  br i1 %2760, label %2840, label %2761

; <label>:2761                                    ; preds = %2750
  %2762 = mul nuw nsw i32 %2759, 40
  %2763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.ResRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.ResRet.f32 %2763, 2
  %2767 = add nuw nsw i32 %2762, 12
  %2768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = add nuw nsw i32 %2762, 24
  %2773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.ResRet.f32 %2773, 2
  %2777 = add nuw nsw i32 %2762, 36
  %2778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = fsub fast float %2743, %2764
  %2781 = fsub fast float %2744, %2765
  %2782 = fsub fast float %2745, %2766
  %2783 = fmul fast float %2779, %2780
  %2784 = fmul fast float %2779, %2781
  %2785 = fmul fast float %2779, %2782
  %2786 = call float @dx.op.unary.f32(i32 27, float %2783)  ; Round_ni(value)
  %2787 = call float @dx.op.unary.f32(i32 27, float %2784)  ; Round_ni(value)
  %2788 = call float @dx.op.unary.f32(i32 27, float %2785)  ; Round_ni(value)
  %2789 = fadd fast float %2786, 5.000000e-01
  %2790 = fadd fast float %2787, 5.000000e-01
  %2791 = fadd fast float %2788, 5.000000e-01
  %2792 = fmul fast float %2789, %2769
  %2793 = fmul fast float %2790, %2770
  %2794 = fmul fast float %2791, %2771
  %2795 = shl i32 %36, 2
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = add i32 %2797, 0
  %2799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2800 = call float @dx.op.unary.f32(i32 22, float %2792)  ; Frc(value)
  %2801 = call float @dx.op.unary.f32(i32 22, float %2793)  ; Frc(value)
  %2802 = call float @dx.op.unary.f32(i32 22, float %2794)  ; Frc(value)
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2799, %dx.types.Handle %30, float %2800, float %2801, float %2802, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  %2807 = fmul fast float %2804, 1.023000e+03
  %2808 = fmul fast float %2805, 1.023000e+03
  %2809 = fmul fast float %2806, 1.023000e+03
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fadd fast float %2809, 5.000000e-01
  %2813 = call float @dx.op.unary.f32(i32 27, float %2810)  ; Round_ni(value)
  %2814 = call float @dx.op.unary.f32(i32 27, float %2811)  ; Round_ni(value)
  %2815 = call float @dx.op.unary.f32(i32 27, float %2812)  ; Round_ni(value)
  %2816 = fsub fast float %2783, %2786
  %2817 = fsub fast float %2784, %2787
  %2818 = fsub fast float %2785, %2788
  %2819 = fmul fast float %2816, 7.500000e-01
  %2820 = fmul fast float %2817, 7.500000e-01
  %2821 = fmul fast float %2818, 7.500000e-01
  %2822 = fadd fast float %2786, 1.250000e-01
  %2823 = fadd fast float %2822, %2819
  %2824 = fadd fast float %2823, %2813
  %2825 = fadd fast float %2787, 1.250000e-01
  %2826 = fadd fast float %2825, %2820
  %2827 = fadd fast float %2826, %2814
  %2828 = fadd fast float %2788, 1.250000e-01
  %2829 = fadd fast float %2828, %2821
  %2830 = fadd fast float %2829, %2815
  %2831 = fmul fast float %2824, %2774
  %2832 = fmul fast float %2827, %2775
  %2833 = fmul fast float %2830, %2776
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %2835, 0
  %2837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2837, %dx.types.Handle %28, float %2831, float %2832, float %2833, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  br label %2840

; <label>:2840                                    ; preds = %2761, %2750
  %2841 = phi float [ %2839, %2761 ], [ -1.000000e+00, %2750 ]
  %2842 = fadd fast float %2841, %2748
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  br label %2844

; <label>:2844                                    ; preds = %2840, %2738
  %2845 = phi float [ %2843, %2840 ], [ %2748, %2738 ]
  %2846 = fmul fast float %2845, %431
  br label %2847

; <label>:2847                                    ; preds = %2844, %2733
  %2848 = phi float [ %2846, %2844 ], [ %431, %2733 ]
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = and i32 %2850, 256
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2899, label %2853

; <label>:2853                                    ; preds = %2847
  %2854 = add i32 %35, 500
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %2856, 0
  %2858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2858, %dx.types.Handle %72, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = add i32 %35, 148
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = shl i32 %2863, 4
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = lshr i32 %2863, 7
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = fsub fast float 1.000000e+00, %2848
  %2871 = call float @dx.op.binary.f32(i32 35, float %2870, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2872 = bitcast float %2848 to i32
  %2873 = sitofp i32 %2872 to float
  %2874 = fadd fast float %2873, 0xC1CFBF8940000000
  %2875 = fmul fast float %2869, %2874
  %2876 = fadd fast float %2875, 0x41CFBF8940000000
  %2877 = fptosi float %2876 to i32
  %2878 = bitcast i32 %2877 to float
  %2879 = bitcast float %2871 to i32
  %2880 = sitofp i32 %2879 to float
  %2881 = fadd fast float %2880, 0xC1CFBF8940000000
  %2882 = fmul fast float %2881, %2869
  %2883 = fadd fast float %2882, 0x41CFBF8940000000
  %2884 = fptosi float %2883 to i32
  %2885 = bitcast i32 %2884 to float
  %2886 = fmul fast float %2878, %2866
  %2887 = fmul fast float %2885, %2866
  %2888 = fsub fast float %2871, %2886
  %2889 = fadd fast float %2887, %2871
  %2890 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2891 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  %2892 = fsub fast float %2860, %2890
  %2893 = fsub fast float %2891, %2890
  %2894 = bitcast float %2893 to i32
  %2895 = sub nsw i32 2129859010, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2896, %2892
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  br label %2899

; <label>:2899                                    ; preds = %2853, %2847
  %2900 = phi float [ %2898, %2853 ], [ %2848, %2847 ]
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 128
  %2904 = icmp eq i32 %2903, 0
  br i1 %2904, label %2921, label %2905

; <label>:2905                                    ; preds = %2899
  %2906 = add i32 %35, 484
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %2908, 0
  %2910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2910, %dx.types.Handle %72, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 524288
  %2916 = icmp ne i32 %2915, 0
  %2917 = fcmp fast ogt float %2912, 0x3FE0101020000000
  %2918 = select i1 %2917, float 1.000000e+00, float 0.000000e+00
  %2919 = select i1 %2916, float %2918, float %2912
  %2920 = fmul fast float %2919, %2900
  br label %2921

; <label>:2921                                    ; preds = %2905, %2899
  %2922 = phi float [ %2920, %2905 ], [ %2900, %2899 ]
  %2923 = fcmp fast ult float %2922, 0x3F70101020000000
  br i1 %2923, label %3466, label %2924

; <label>:2924                                    ; preds = %2921
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 16
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %3127, label %2929

; <label>:2929                                    ; preds = %2924
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %35, 436
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2936, %dx.types.Handle %71, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.ResRet.f32 %2937, 3
  %2942 = and i32 %2931, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = lshr i32 %2931, 8
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2941, %2943
  %2948 = fadd fast float %2947, %2946
  %2949 = fmul fast float %2948, 0x3F70101000000000
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 512
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %2962, label %2954

; <label>:2954                                    ; preds = %2929
  %2955 = add i32 %35, 516
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %72, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  br label %2962

; <label>:2962                                    ; preds = %2954, %2929
  %2963 = phi float [ %2961, %2954 ], [ 1.000000e+00, %2929 ]
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 33554432
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3074, label %2968

; <label>:2968                                    ; preds = %2962
  %2969 = add i32 %35, 272
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = lshr i32 %2971, 16
  %2975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2974)  ; LegacyF16ToF32(value)
  %2976 = add i32 %35, 276
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = and i32 %2978, 65535
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 24
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = and i32 %2982, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = lshr i32 %2982, 8
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2982, 16
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = add i32 %35, 268
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 24
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = and i32 %2999, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %2999, 8
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %2999, 16
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = bitcast float %2938 to i32
  %3015 = ashr i32 %3014, 1
  %3016 = sub nsw i32 1597463174, %3015
  %3017 = bitcast i32 %3016 to float
  %3018 = fmul fast float %2938, 5.000000e-01
  %3019 = fmul fast float %3017, %3017
  %3020 = fmul fast float %3019, %3018
  %3021 = fsub fast float 1.500000e+00, %3020
  %3022 = fmul fast float %3017, %2938
  %3023 = fmul fast float %3022, %3021
  %3024 = bitcast float %2939 to i32
  %3025 = ashr i32 %3024, 1
  %3026 = sub nsw i32 1597463174, %3025
  %3027 = bitcast i32 %3026 to float
  %3028 = fmul fast float %2939, 5.000000e-01
  %3029 = fmul fast float %3027, %3027
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float 1.500000e+00, %3030
  %3032 = fmul fast float %3027, %2939
  %3033 = fmul fast float %3032, %3031
  %3034 = bitcast float %2940 to i32
  %3035 = ashr i32 %3034, 1
  %3036 = sub nsw i32 1597463174, %3035
  %3037 = bitcast i32 %3036 to float
  %3038 = fmul fast float %2940, 5.000000e-01
  %3039 = fmul fast float %3037, %3037
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float 1.500000e+00, %3040
  %3042 = fmul fast float %3037, %2940
  %3043 = fmul fast float %3042, %3041
  %3044 = fsub fast float %3023, %3005
  %3045 = fsub fast float %3033, %3009
  %3046 = fsub fast float %3043, %3013
  %3047 = fmul fast float %3044, %2973
  %3048 = fmul fast float %3045, %2975
  %3049 = fmul fast float %3046, %2980
  %3050 = fadd fast float %3047, %2988
  %3051 = fadd fast float %3048, %2992
  %3052 = fadd fast float %3049, %2996
  %3053 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3054 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3055 = call float @dx.op.unary.f32(i32 7, float %3052)  ; Saturate(value)
  %3056 = fmul fast float %3053, %3053
  %3057 = fmul fast float %3054, %3054
  %3058 = fmul fast float %3055, %3055
  %3059 = fsub fast float %3056, %2938
  %3060 = fsub fast float %3057, %2939
  %3061 = fsub fast float %3058, %2940
  %3062 = fmul fast float %3059, %2963
  %3063 = fmul fast float %3060, %2963
  %3064 = fmul fast float %3061, %2963
  %3065 = fadd fast float %3062, %2938
  %3066 = fadd fast float %3063, %2939
  %3067 = fadd fast float %3064, %2940
  %3068 = fadd fast float %2985, %2949
  %3069 = fsub fast float %3068, %3002
  %3070 = call float @dx.op.unary.f32(i32 7, float %3069)  ; Saturate(value)
  %3071 = fsub fast float %3070, %2949
  %3072 = fmul fast float %3071, %2963
  %3073 = fadd fast float %3072, %2949
  br label %3127

; <label>:3074                                    ; preds = %2962
  %3075 = and i32 %2965, 134217728
  %3076 = icmp eq i32 %3075, 0
  br i1 %3076, label %3111, label %3077

; <label>:3077                                    ; preds = %3074
  %3078 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3079 = call float @dx.op.unary.f32(i32 24, float %356)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %3081 = fadd fast float %3078, -5.000000e-01
  %3082 = fadd fast float %3079, -5.000000e-01
  %3083 = fadd fast float %3080, -5.000000e-01
  %3084 = fmul fast float %3081, %2963
  %3085 = fmul fast float %3082, %2963
  %3086 = fmul fast float %3083, %2963
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = call float @dx.op.unary.f32(i32 24, float %2938)  ; Sqrt(value)
  %3091 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %3092 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3093 = fmul fast float %3087, 2.000000e+00
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = fmul fast float %3094, %3090
  %3096 = fadd fast float %3095, %3093
  %3097 = fmul fast float %3096, %3090
  %3098 = fmul fast float %3088, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3099, %3091
  %3101 = fadd fast float %3100, %3098
  %3102 = fmul fast float %3101, %3091
  %3103 = fmul fast float %3089, 2.000000e+00
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = fmul fast float %3104, %3092
  %3106 = fadd fast float %3105, %3103
  %3107 = fmul fast float %3106, %3092
  %3108 = fmul fast float %3097, %3097
  %3109 = fmul fast float %3102, %3102
  %3110 = fmul fast float %3107, %3107
  br label %3127

; <label>:3111                                    ; preds = %3074
  %3112 = fmul fast float %352, %352
  %3113 = fmul fast float %356, %356
  %3114 = fmul fast float %360, %360
  %3115 = fadd fast float %3112, -1.000000e+00
  %3116 = fadd fast float %3113, -1.000000e+00
  %3117 = fadd fast float %3114, -1.000000e+00
  %3118 = fmul fast float %2963, %3115
  %3119 = fmul fast float %2963, %3116
  %3120 = fmul fast float %2963, %3117
  %3121 = fadd fast float %3118, 1.000000e+00
  %3122 = fadd fast float %3119, 1.000000e+00
  %3123 = fadd fast float %3120, 1.000000e+00
  %3124 = fmul fast float %3121, %2938
  %3125 = fmul fast float %3122, %2939
  %3126 = fmul fast float %3123, %2940
  br label %3127

; <label>:3127                                    ; preds = %3111, %3077, %2968, %2924
  %3128 = phi float [ %3073, %2968 ], [ %2949, %3077 ], [ %2949, %3111 ], [ 0x3FA23C0BE0000000, %2924 ]
  %3129 = phi float [ %3065, %2968 ], [ %3108, %3077 ], [ %3124, %3111 ], [ 1.000000e+00, %2924 ]
  %3130 = phi float [ %3066, %2968 ], [ %3109, %3077 ], [ %3125, %3111 ], [ 1.000000e+00, %2924 ]
  %3131 = phi float [ %3067, %2968 ], [ %3110, %3077 ], [ %3126, %3111 ], [ 1.000000e+00, %2924 ]
  %3132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.i32 %3132, 1
  %3134 = and i32 %3133, 1
  %3135 = icmp ne i32 %3134, 0
  %3136 = add i32 %35, 356
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 32
  %3140 = icmp ne i32 %3139, 0
  %3141 = and i1 %3135, %3140
  %3142 = select i1 %3141, float 1.000000e+00, float %3129
  %3143 = select i1 %3141, float 0x3FD3333340000000, float %3130
  %3144 = select i1 %3141, float 0x3FD3333340000000, float %3131
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 32
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3221, label %3149

; <label>:3149                                    ; preds = %3127
  %3150 = add i32 %35, 140
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %35, 452
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %71, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  %3161 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3162 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3163 = and i32 %3152, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3152, 8
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = lshr i32 %3152, 16
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101000000000
  %3172 = fmul fast float %3159, %3164
  %3173 = fadd fast float %3172, %3167
  %3174 = fmul fast float %3173, 0x3F70101000000000
  %3175 = fadd fast float %3160, -5.000000e-01
  %3176 = fadd fast float %3162, -5.000000e-01
  %3177 = fmul fast float %3175, %3171
  %3178 = fmul fast float %3176, %3171
  %3179 = fadd fast float %3177, 5.000000e-01
  %3180 = fadd fast float %3178, 5.000000e-01
  %3181 = fmul fast float %3179, 2.000000e+00
  %3182 = fadd fast float %3181, -1.000000e+00
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fadd fast float %3183, -1.000000e+00
  %3185 = fadd fast float %3182, %3184
  %3186 = fmul fast float %3185, 5.000000e-01
  %3187 = fsub fast float %3182, %3184
  %3188 = fmul fast float %3187, 5.000000e-01
  %3189 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3190 = fsub fast float 1.000000e+00, %3189
  %3191 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3192 = fsub fast float %3190, %3191
  %3193 = call float @dx.op.dot3.f32(i32 55, float %3186, float %3188, float %3192, float %3186, float %3188, float %3192)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = call float @dx.op.unary.f32(i32 25, float %3193)  ; Rsqrt(value)
  %3195 = fmul fast float %3186, %3194
  %3196 = fmul fast float %3188, %3194
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 67108864
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3217, label %3201

; <label>:3201                                    ; preds = %3149
  %3202 = add i32 %35, 328
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = and i32 %3204, 65535
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = lshr i32 %3204, 16
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = fsub fast float %3174, %3212
  %3214 = fmul fast float %3213, %3206
  %3215 = fadd fast float %3214, %3210
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  br label %3217

; <label>:3217                                    ; preds = %3201, %3149
  %3218 = phi float [ %3216, %3201 ], [ %3174, %3149 ]
  %3219 = call float @dx.op.dot2.f32(i32 54, float %3195, float %3196, float %2638, float %2639)  ; Dot2(ax,ay,bx,by)
  %3220 = call float @dx.op.dot2.f32(i32 54, float %3195, float %3196, float %2640, float %2641)  ; Dot2(ax,ay,bx,by)
  br label %3221

; <label>:3221                                    ; preds = %3217, %3127
  %3222 = phi float [ %3218, %3217 ], [ 0x3FD6666660000000, %3127 ]
  %3223 = phi float [ %3219, %3217 ], [ 0.000000e+00, %3127 ]
  %3224 = phi float [ %3220, %3217 ], [ 0.000000e+00, %3127 ]
  %3225 = phi float [ %3161, %3217 ], [ 1.000000e+00, %3127 ]
  %3226 = add i32 %35, 208
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = lshr i32 %3228, 22
  %3230 = shl nuw nsw i32 %3229, 5
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = and i32 %3233, 64
  %3235 = icmp eq i32 %3234, 0
  br i1 %3235, label %3269, label %3236

; <label>:3236                                    ; preds = %3221
  %3237 = add i32 %35, 468
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = add i32 %3239, 0
  %3241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 131072
  %3245 = icmp eq i32 %3244, 0
  %3246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3241, %dx.types.Handle %71, float %2734, float %2735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.ResRet.f32 %3246, 1
  %3249 = extractvalue %dx.types.ResRet.f32 %3246, 2
  %3250 = fmul fast float %3247, %340
  %3251 = fmul fast float %3248, %343
  %3252 = fmul fast float %3249, %346
  br i1 %3245, label %3259, label %3253

; <label>:3253                                    ; preds = %3236
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = fmul fast float %3255, %3250
  %3257 = fmul fast float %3255, %3251
  %3258 = fmul fast float %3255, %3252
  br label %3259

; <label>:3259                                    ; preds = %3253, %3236
  %3260 = phi float [ %3256, %3253 ], [ %3250, %3236 ]
  %3261 = phi float [ %3257, %3253 ], [ %3251, %3236 ]
  %3262 = phi float [ %3258, %3253 ], [ %3252, %3236 ]
  %3263 = fmul fast float %3260, %3231
  %3264 = select i1 %208, float %3263, float %3260
  %3265 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3261, float %3262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3266 = select i1 %208, float 0.000000e+00, float %3260
  %3267 = select i1 %208, float %3265, float %3261
  %3268 = select i1 %208, float 0.000000e+00, float %3262
  br label %3269

; <label>:3269                                    ; preds = %3259, %3221
  %3270 = phi float [ %3266, %3259 ], [ 0.000000e+00, %3221 ]
  %3271 = phi float [ %3267, %3259 ], [ 0.000000e+00, %3221 ]
  %3272 = phi float [ %3268, %3259 ], [ 0.000000e+00, %3221 ]
  %3273 = add i32 %35, 144
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = lshr i32 %3275, 8
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3143, float %3144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = fmul fast float %3280, %3281
  %3283 = fadd fast float %3282, %3277
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  br i1 %2626, label %3286, label %3294

; <label>:3286                                    ; preds = %3269
  %3287 = fsub fast float 1.000000e+00, %2922
  %3288 = fmul fast float %3287, %2615
  %3289 = fmul fast float %3287, %2616
  %3290 = fmul fast float %3287, %2617
  %3291 = fmul fast float %3287, %2618
  %3292 = fmul fast float %3287, %2619
  %3293 = fmul fast float %3287, %2620
  br label %3294

; <label>:3294                                    ; preds = %3286, %3269
  %3295 = phi float [ %3288, %3286 ], [ %2615, %3269 ]
  %3296 = phi float [ %3289, %3286 ], [ %2616, %3269 ]
  %3297 = phi float [ %3290, %3286 ], [ %2617, %3269 ]
  %3298 = phi float [ %3291, %3286 ], [ %2618, %3269 ]
  %3299 = phi float [ %3292, %3286 ], [ %2619, %3269 ]
  %3300 = phi float [ %3293, %3286 ], [ %2620, %3269 ]
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 3
  %3304 = icmp eq i32 %3303, 3
  br i1 %3304, label %3383, label %3305

; <label>:3305                                    ; preds = %3294
  %3306 = and i32 %3302, 16
  %3307 = icmp ne i32 %3306, 0
  %3308 = select i1 %3307, float %2922, float 0.000000e+00
  %3309 = icmp eq i32 %3303, 0
  br i1 %3309, label %3310, label %3338

; <label>:3310                                    ; preds = %3305
  %3311 = and i32 %3302, 64
  %3312 = icmp ne i32 %3311, 0
  %3313 = select i1 %3312, float %2922, float 0.000000e+00
  %3314 = fsub fast float %3142, %3295
  %3315 = fsub fast float %3143, %3296
  %3316 = fsub fast float %3144, %3297
  %3317 = fmul fast float %3308, %3314
  %3318 = fmul fast float %3308, %3315
  %3319 = fmul fast float %3308, %3316
  %3320 = fadd fast float %3317, %3295
  %3321 = fadd fast float %3318, %3296
  %3322 = fadd fast float %3319, %3297
  %3323 = fsub fast float %3128, %2621
  %3324 = fmul fast float %3308, %3323
  %3325 = fadd fast float %3324, %2621
  %3326 = fsub fast float %3270, %3298
  %3327 = fsub fast float %3271, %3299
  %3328 = fsub fast float %3272, %3300
  %3329 = fmul fast float %3313, %3326
  %3330 = fmul fast float %3313, %3327
  %3331 = fmul fast float %3313, %3328
  %3332 = fadd fast float %3329, %3298
  %3333 = fadd fast float %3330, %3299
  %3334 = fadd fast float %3331, %3300
  %3335 = fsub fast float %3285, %2624
  %3336 = fmul fast float %3308, %3335
  %3337 = fadd fast float %3336, %2624
  br label %3383

; <label>:3338                                    ; preds = %3305
  %3339 = icmp eq i32 %3303, 1
  br i1 %3339, label %3340, label %3353

; <label>:3340                                    ; preds = %3338
  %3341 = fadd fast float %3142, -1.000000e+00
  %3342 = fadd fast float %3143, -1.000000e+00
  %3343 = fadd fast float %3144, -1.000000e+00
  %3344 = fmul fast float %3308, %3341
  %3345 = fmul fast float %3308, %3342
  %3346 = fmul fast float %3308, %3343
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fmul fast float %3347, %3295
  %3351 = fmul fast float %3348, %3296
  %3352 = fmul fast float %3349, %3297
  br label %3383

; <label>:3353                                    ; preds = %3338
  %3354 = icmp eq i32 %3303, 2
  br i1 %3354, label %3355, label %3383

; <label>:3355                                    ; preds = %3353
  %3356 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3357 = call float @dx.op.unary.f32(i32 24, float %3143)  ; Sqrt(value)
  %3358 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3359 = fadd fast float %3356, -5.000000e-01
  %3360 = fadd fast float %3357, -5.000000e-01
  %3361 = fadd fast float %3358, -5.000000e-01
  %3362 = fmul fast float %3359, %3308
  %3363 = fmul fast float %3360, %3308
  %3364 = fmul fast float %3361, %3308
  %3365 = fadd fast float %3362, 5.000000e-01
  %3366 = fadd fast float %3363, 5.000000e-01
  %3367 = fadd fast float %3364, 5.000000e-01
  %3368 = fmul fast float %3365, 2.000000e+00
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3369, %3295
  %3371 = fadd fast float %3370, %3368
  %3372 = fmul fast float %3371, %3295
  %3373 = fmul fast float %3366, 2.000000e+00
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3374, %3296
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3296
  %3378 = fmul fast float %3367, 2.000000e+00
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3379, %3297
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3297
  br label %3383

; <label>:3383                                    ; preds = %3355, %3353, %3340, %3310, %3294
  %3384 = phi float [ %3295, %3294 ], [ %3372, %3355 ], [ %3295, %3353 ], [ %3350, %3340 ], [ %3320, %3310 ]
  %3385 = phi float [ %3296, %3294 ], [ %3377, %3355 ], [ %3296, %3353 ], [ %3351, %3340 ], [ %3321, %3310 ]
  %3386 = phi float [ %3297, %3294 ], [ %3382, %3355 ], [ %3297, %3353 ], [ %3352, %3340 ], [ %3322, %3310 ]
  %3387 = phi float [ %3298, %3294 ], [ %3298, %3355 ], [ %3298, %3353 ], [ %3298, %3340 ], [ %3332, %3310 ]
  %3388 = phi float [ %3299, %3294 ], [ %3299, %3355 ], [ %3299, %3353 ], [ %3299, %3340 ], [ %3333, %3310 ]
  %3389 = phi float [ %3300, %3294 ], [ %3300, %3355 ], [ %3300, %3353 ], [ %3300, %3340 ], [ %3334, %3310 ]
  %3390 = phi float [ %2621, %3294 ], [ %2621, %3355 ], [ %2621, %3353 ], [ %2621, %3340 ], [ %3325, %3310 ]
  %3391 = phi float [ %2624, %3294 ], [ %2624, %3355 ], [ %2624, %3353 ], [ %2624, %3340 ], [ %3337, %3310 ]
  %3392 = and i32 %3302, 12
  %3393 = icmp eq i32 %3392, 12
  br i1 %3393, label %3466, label %3394

; <label>:3394                                    ; preds = %3383
  %3395 = and i32 %3302, 2097184
  %3396 = icmp eq i32 %3395, 2097184
  %3397 = select i1 %3396, float %2922, float 0.000000e+00
  %3398 = and i32 %3302, 4194336
  %3399 = icmp eq i32 %3398, 4194336
  %3400 = select i1 %3399, float %2922, float 0.000000e+00
  %3401 = and i32 %3302, 8388640
  %3402 = icmp eq i32 %3401, 8388640
  %3403 = select i1 %3402, float %2922, float 0.000000e+00
  %3404 = icmp eq i32 %3392, 0
  br i1 %3404, label %3405, label %3418

; <label>:3405                                    ; preds = %3394
  %3406 = fsub fast float %3223, %2613
  %3407 = fsub fast float %3224, %2614
  %3408 = fmul fast float %3397, %3406
  %3409 = fmul fast float %3397, %3407
  %3410 = fadd fast float %3408, %2613
  %3411 = fadd fast float %3409, %2614
  %3412 = fsub fast float %3225, %2623
  %3413 = fmul fast float %3400, %3412
  %3414 = fadd fast float %3413, %2623
  %3415 = fsub fast float %3222, %2622
  %3416 = fmul fast float %3403, %3415
  %3417 = fadd fast float %3416, %2622
  br label %3466

; <label>:3418                                    ; preds = %3394
  %3419 = icmp eq i32 %3392, 4
  br i1 %3419, label %3420, label %3452

; <label>:3420                                    ; preds = %3418
  %3421 = fmul fast float %3397, %3223
  %3422 = fmul fast float %3397, %3224
  %3423 = fadd fast float %3421, %2613
  %3424 = fadd fast float %3422, %2614
  %3425 = call float @dx.op.binary.f32(i32 36, float %2623, float %3225)  ; FMin(a,b)
  %3426 = fsub fast float %3425, %2623
  %3427 = fmul fast float %3426, %3400
  %3428 = fadd fast float %3427, %2623
  %3429 = fadd fast float %3222, %2622
  %3430 = fmul fast float %3429, 0x3FF337FAE0000000
  %3431 = fmul fast float %2622, %2622
  %3432 = fmul fast float %3222, %3222
  %3433 = fadd fast float %3432, %3431
  %3434 = fmul fast float %3433, 0x3FE5152B00000000
  %3435 = fmul fast float %2622, 0xBFCC1F85E0000000
  %3436 = fmul fast float %3435, %3222
  %3437 = fadd fast float %3436, 0xBFE1363700000000
  %3438 = fadd fast float %3437, %3430
  %3439 = fsub fast float %3438, %3434
  %3440 = fmul fast float %3429, 0x3FBA6F0D00000000
  %3441 = fmul fast float %3433, 0x3FD0432880000000
  %3442 = fmul fast float %2622, 0xBFEF110800000000
  %3443 = fmul fast float %3442, %3222
  %3444 = fadd fast float %3443, 1.000000e+00
  %3445 = fsub fast float %3444, %3440
  %3446 = fadd fast float %3445, %3441
  %3447 = fdiv fast float %3439, %3446
  %3448 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3449 = fsub fast float %3448, %2622
  %3450 = fmul fast float %3449, %3403
  %3451 = fadd fast float %3450, %2622
  br label %3466

; <label>:3452                                    ; preds = %3418
  %3453 = icmp eq i32 %3392, 8
  br i1 %3453, label %3454, label %3466

; <label>:3454                                    ; preds = %3452
  %3455 = fmul fast float %3397, %3223
  %3456 = fmul fast float %3397, %3224
  %3457 = fadd fast float %3455, %2613
  %3458 = fadd fast float %3456, %2614
  %3459 = call float @dx.op.binary.f32(i32 36, float %2623, float %3225)  ; FMin(a,b)
  %3460 = fsub fast float %3459, %2623
  %3461 = fmul fast float %3460, %3400
  %3462 = fadd fast float %3461, %2623
  %3463 = fsub fast float %3222, %2622
  %3464 = fmul fast float %3403, %3463
  %3465 = fadd fast float %3464, %2622
  br label %3466

; <label>:3466                                    ; preds = %3454, %3452, %3420, %3405, %3383, %2921, %2625, %2612
  %3467 = phi float [ %2613, %3383 ], [ %2613, %2921 ], [ %2613, %2612 ], [ %2613, %2625 ], [ %3410, %3405 ], [ %3423, %3420 ], [ %2613, %3452 ], [ %3457, %3454 ]
  %3468 = phi float [ %2614, %3383 ], [ %2614, %2921 ], [ %2614, %2612 ], [ %2614, %2625 ], [ %3411, %3405 ], [ %3424, %3420 ], [ %2614, %3452 ], [ %3458, %3454 ]
  %3469 = phi float [ %3384, %3383 ], [ %2615, %2921 ], [ %2615, %2612 ], [ %2615, %2625 ], [ %3384, %3405 ], [ %3384, %3420 ], [ %3384, %3452 ], [ %3384, %3454 ]
  %3470 = phi float [ %3385, %3383 ], [ %2616, %2921 ], [ %2616, %2612 ], [ %2616, %2625 ], [ %3385, %3405 ], [ %3385, %3420 ], [ %3385, %3452 ], [ %3385, %3454 ]
  %3471 = phi float [ %3386, %3383 ], [ %2617, %2921 ], [ %2617, %2612 ], [ %2617, %2625 ], [ %3386, %3405 ], [ %3386, %3420 ], [ %3386, %3452 ], [ %3386, %3454 ]
  %3472 = phi float [ %3387, %3383 ], [ %2618, %2921 ], [ %2618, %2612 ], [ %2618, %2625 ], [ %3387, %3405 ], [ %3387, %3420 ], [ %3387, %3452 ], [ %3387, %3454 ]
  %3473 = phi float [ %3388, %3383 ], [ %2619, %2921 ], [ %2619, %2612 ], [ %2619, %2625 ], [ %3388, %3405 ], [ %3388, %3420 ], [ %3388, %3452 ], [ %3388, %3454 ]
  %3474 = phi float [ %3389, %3383 ], [ %2620, %2921 ], [ %2620, %2612 ], [ %2620, %2625 ], [ %3389, %3405 ], [ %3389, %3420 ], [ %3389, %3452 ], [ %3389, %3454 ]
  %3475 = phi float [ %3390, %3383 ], [ %2621, %2921 ], [ %2621, %2612 ], [ %2621, %2625 ], [ %3390, %3405 ], [ %3390, %3420 ], [ %3390, %3452 ], [ %3390, %3454 ]
  %3476 = phi float [ %2622, %3383 ], [ %2622, %2921 ], [ %2622, %2612 ], [ %2622, %2625 ], [ %3417, %3405 ], [ %3451, %3420 ], [ %2622, %3452 ], [ %3465, %3454 ]
  %3477 = phi float [ %2623, %3383 ], [ %2623, %2921 ], [ %2623, %2612 ], [ %2623, %2625 ], [ %3414, %3405 ], [ %3428, %3420 ], [ %2623, %3452 ], [ %3462, %3454 ]
  %3478 = phi float [ %3391, %3383 ], [ %2624, %2921 ], [ %2624, %2612 ], [ %2624, %2625 ], [ %3391, %3405 ], [ %3391, %3420 ], [ %3391, %3452 ], [ %3391, %3454 ]
  %3479 = add i32 %35, 408
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = bitcast i32 %3481 to float
  %3483 = fcmp fast oge float %3482, 0.000000e+00
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = select i1 %3483, float %3482, float %3485
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3467, float %3468, float %3467, float %3468)  ; Dot2(ax,ay,bx,by)
  %3488 = fmul fast float %3487, 0x3FE3333340000000
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3489, float %3467, float %3468, float %3489)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.unary.f32(i32 25, float %3490)  ; Rsqrt(value)
  %3492 = fmul fast float %3491, %3467
  %3493 = fmul fast float %3491, %3468
  %3494 = fmul fast float %3489, %3491
  %3495 = fmul fast float %3494, %84
  %3496 = fmul fast float %3494, %86
  %3497 = fmul fast float %3494, %88
  %3498 = fmul fast float %3492, %56
  %3499 = fmul fast float %3492, %57
  %3500 = fmul fast float %3492, %58
  %3501 = fadd fast float %3495, %3498
  %3502 = fadd fast float %3496, %3499
  %3503 = fadd fast float %3497, %3500
  %3504 = fmul fast float %98, %3493
  %3505 = fmul fast float %99, %3493
  %3506 = fmul fast float %100, %3493
  %3507 = fadd fast float %3501, %3504
  %3508 = fadd fast float %3502, %3505
  %3509 = fadd fast float %3503, %3506
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float %3507, float %3508, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = call float @dx.op.unary.f32(i32 25, float %3510)  ; Rsqrt(value)
  %3512 = fmul fast float %3507, %3511
  %3513 = fmul fast float %3508, %3511
  %3514 = fmul fast float %3509, %3511
  %3515 = and i32 %37, 1
  %3516 = icmp eq i32 %3515, 0
  br i1 %3516, label %3517, label %4029

; <label>:3517                                    ; preds = %3466
  %3518 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3519 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3520 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3521 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3522 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3523 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3524 = fadd fast float %3518, %134
  %3525 = fadd fast float %3519, %135
  %3526 = fadd fast float %3520, %136
  %3527 = fadd fast float %3521, %134
  %3528 = fadd fast float %3522, %135
  %3529 = fadd fast float %3523, %136
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3537 = fmul fast float %3531, %75
  %3538 = fmul fast float %3537, %3535
  %3539 = fmul fast float %3532, %76
  %3540 = fmul fast float %3539, %3536
  %3541 = fptoui float %3538 to i32
  %3542 = fptoui float %3540 to i32
  %3543 = fadd fast float %3531, -1.000000e+00
  %3544 = fadd fast float %3532, -1.000000e+00
  %3545 = fptoui float %3543 to i32
  %3546 = fptoui float %3544 to i32
  %3547 = call i32 @dx.op.binary.i32(i32 40, i32 %3541, i32 %3545)  ; UMin(a,b)
  %3548 = call i32 @dx.op.binary.i32(i32 40, i32 %3542, i32 %3546)  ; UMin(a,b)
  %3549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.f32 %3549, 2
  %3551 = extractvalue %dx.types.CBufRet.f32 %3549, 3
  %3552 = fmul fast float %3550, %70
  %3553 = fsub fast float %3552, %3551
  %3554 = fadd fast float %3533, -1.000000e+00
  %3555 = call float @dx.op.binary.f32(i32 36, float %3553, float %3554)  ; FMin(a,b)
  %3556 = fptoui float %3555 to i32
  %3557 = fptoui float %3531 to i32
  %3558 = fptoui float %3532 to i32
  %3559 = mul i32 %3556, %3558
  %3560 = add i32 %3559, %3548
  %3561 = mul i32 %3560, %3557
  %3562 = add i32 %3561, %3547
  %3563 = shl i32 %3562, 2
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = and i32 %3565, 1023
  %3567 = lshr i32 %3565, 10
  %3568 = icmp eq i32 %3566, 0
  br i1 %3568, label %3997, label %3569

; <label>:3569                                    ; preds = %3517
  %3570 = and i32 %3565, 1023
  br label %3571

; <label>:3571                                    ; preds = %3698, %3569
  %3572 = phi i32 [ %3648, %3698 ], [ 0, %3569 ]
  %3573 = phi float [ %3699, %3698 ], [ 0.000000e+00, %3569 ]
  %3574 = phi float [ %3700, %3698 ], [ %913, %3569 ]
  %3575 = phi float [ %3701, %3698 ], [ %3486, %3569 ]
  %3576 = phi float [ %3702, %3698 ], [ %3478, %3569 ]
  %3577 = phi float [ %3703, %3698 ], [ 0.000000e+00, %3569 ]
  %3578 = phi float [ %3704, %3698 ], [ 0.000000e+00, %3569 ]
  %3579 = phi float [ %3705, %3698 ], [ %3472, %3569 ]
  %3580 = phi float [ %3706, %3698 ], [ %3473, %3569 ]
  %3581 = phi float [ %3707, %3698 ], [ %3474, %3569 ]
  %3582 = phi float [ %3708, %3698 ], [ %3512, %3569 ]
  %3583 = phi float [ %3709, %3698 ], [ %3513, %3569 ]
  %3584 = phi float [ %3710, %3698 ], [ %3514, %3569 ]
  %3585 = phi float [ %3711, %3698 ], [ %3477, %3569 ]
  %3586 = phi float [ %3712, %3698 ], [ %3476, %3569 ]
  %3587 = phi float [ %3713, %3698 ], [ 0.000000e+00, %3569 ]
  %3588 = phi float [ %3714, %3698 ], [ %3475, %3569 ]
  %3589 = phi float [ %3715, %3698 ], [ %3469, %3569 ]
  %3590 = phi float [ %3716, %3698 ], [ %3470, %3569 ]
  %3591 = phi float [ %3717, %3698 ], [ %3471, %3569 ]
  %3592 = add nuw nsw i32 %3572, %3567
  %3593 = shl i32 %3592, 2
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = shl i32 %3595, 8
  %3597 = or i32 %3596, 48
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = or i32 %3596, 64
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.i32 %3604, 1
  %3607 = or i32 %3596, 80
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3611 = or i32 %3596, 96
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3596, 112
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3620 = or i32 %3596, 128
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = or i32 %3596, 144
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = extractvalue %dx.types.ResRet.f32 %3627, 2
  %3631 = extractvalue %dx.types.ResRet.f32 %3627, 3
  %3632 = or i32 %3596, 160
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = or i32 %3596, 192
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = or i32 %3596, 208
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = or i32 %3596, 248
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = add nuw nsw i32 %3572, 1
  %3649 = bitcast float %3602 to i32
  %3650 = and i32 %3649, 512
  %3651 = icmp eq i32 %3650, 0
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = or i32 %3596, 16
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = or i32 %3596, 32
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3667, float %3668, float %3669, float %3670, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.unary.f32(i32 27, float %3657)  ; Round_ni(value)
  %3673 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 27, float %3664)  ; Round_ni(value)
  %3675 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3676 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3677 = call float @dx.op.unary.f32(i32 27, float %3676)  ; Round_ni(value)
  %3678 = fadd fast float %3675, %3673
  %3679 = fadd fast float %3678, %3677
  %3680 = fcmp fast oeq float %3679, 0.000000e+00
  %3681 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3682 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = call float @dx.op.dot4.f32(i32 56, float %3660, float %3661, float %3662, float %3663, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3685 = fsub fast float %3681, %3657
  %3686 = fsub fast float %3683, %3657
  %3687 = fsub fast float %3682, %3664
  %3688 = fsub fast float %3684, %3664
  %3689 = call float @dx.op.dot3.f32(i32 55, float %3599, float %3600, float %3601, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3692 = fadd fast float %3691, %3689
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3695 = fcmp fast ogt float %3693, %3694
  %3696 = and i1 %3680, %3695
  %3697 = and i1 %3651, %3696
  br i1 %3697, label %3719, label %3698

; <label>:3698                                    ; preds = %3983, %3800, %3719, %3571
  %3699 = phi float [ %3573, %3719 ], [ %3803, %3800 ], [ %3803, %3983 ], [ %3573, %3571 ]
  %3700 = phi float [ %3574, %3719 ], [ %3574, %3800 ], [ %3958, %3983 ], [ %3574, %3571 ]
  %3701 = phi float [ %3575, %3719 ], [ %3575, %3800 ], [ %3957, %3983 ], [ %3575, %3571 ]
  %3702 = phi float [ %3576, %3719 ], [ %3576, %3800 ], [ %3955, %3983 ], [ %3576, %3571 ]
  %3703 = phi float [ %3577, %3719 ], [ %3577, %3800 ], [ %3927, %3983 ], [ %3577, %3571 ]
  %3704 = phi float [ %3578, %3719 ], [ %3578, %3800 ], [ %3925, %3983 ], [ %3578, %3571 ]
  %3705 = phi float [ %3579, %3719 ], [ %3579, %3800 ], [ %3993, %3983 ], [ %3579, %3571 ]
  %3706 = phi float [ %3580, %3719 ], [ %3580, %3800 ], [ %3994, %3983 ], [ %3580, %3571 ]
  %3707 = phi float [ %3581, %3719 ], [ %3581, %3800 ], [ %3995, %3983 ], [ %3581, %3571 ]
  %3708 = phi float [ %3582, %3719 ], [ %3582, %3800 ], [ %3906, %3983 ], [ %3582, %3571 ]
  %3709 = phi float [ %3583, %3719 ], [ %3583, %3800 ], [ %3907, %3983 ], [ %3583, %3571 ]
  %3710 = phi float [ %3584, %3719 ], [ %3584, %3800 ], [ %3908, %3983 ], [ %3584, %3571 ]
  %3711 = phi float [ %3585, %3719 ], [ %3585, %3800 ], [ %3935, %3983 ], [ %3585, %3571 ]
  %3712 = phi float [ %3586, %3719 ], [ %3586, %3800 ], [ %3932, %3983 ], [ %3586, %3571 ]
  %3713 = phi float [ %3587, %3719 ], [ %3587, %3800 ], [ %3929, %3983 ], [ %3587, %3571 ]
  %3714 = phi float [ %3588, %3719 ], [ %3588, %3800 ], [ %3923, %3983 ], [ %3588, %3571 ]
  %3715 = phi float [ %3589, %3719 ], [ %3589, %3800 ], [ %3918, %3983 ], [ %3589, %3571 ]
  %3716 = phi float [ %3590, %3719 ], [ %3590, %3800 ], [ %3919, %3983 ], [ %3590, %3571 ]
  %3717 = phi float [ %3591, %3719 ], [ %3591, %3800 ], [ %3920, %3983 ], [ %3591, %3571 ]
  %3718 = icmp eq i32 %3648, %3570
  br i1 %3718, label %3996, label %3571

; <label>:3719                                    ; preds = %3571
  %3720 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3721 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3725 = extractvalue %dx.types.ResRet.i32 %3604, 3
  %3726 = extractvalue %dx.types.ResRet.i32 %3604, 2
  %3727 = add i32 %3725, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3728, %dx.types.Handle %3729, float %3657, float %3664, float undef, float undef, i32 0, i32 0, i32 undef, float %3685, float %3687, float undef, float %3686, float %3688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = fmul fast float %3731, %3724
  %3733 = fadd fast float %3732, %3723
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3657, %3613
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3664, float %3735)  ; FMad(a,b,c)
  %3737 = fadd fast float %3736, %3722
  %3738 = fmul fast float %3657, %3615
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3664, float %3738)  ; FMad(a,b,c)
  %3740 = fadd fast float %3739, %3721
  %3741 = fmul fast float %3685, %3613
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3687, float %3741)  ; FMad(a,b,c)
  %3743 = fmul fast float %3685, %3615
  %3744 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3687, float %3743)  ; FMad(a,b,c)
  %3745 = fmul fast float %3686, %3613
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3614, float %3688, float %3745)  ; FMad(a,b,c)
  %3747 = fmul fast float %3686, %3615
  %3748 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3688, float %3747)  ; FMad(a,b,c)
  %3749 = add i32 %3726, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3750, %dx.types.Handle %3729, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = and i32 %3649, 1024
  %3754 = icmp ne i32 %3753, 0
  %3755 = fcmp fast ogt float %3752, 0x3FE0101020000000
  %3756 = uitofp i1 %3755 to float
  %3757 = select i1 %3754, float %3756, float %3752
  %3758 = and i32 %3649, 8192
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3720, float 1.000000e+00
  %3761 = fmul fast float %3657, 2.000000e+00
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3764 = fmul fast float %3763, %3646
  %3765 = fsub fast float %3764, %3646
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3664, 2.000000e+00
  %3768 = fadd fast float %3767, -1.000000e+00
  %3769 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3770 = fmul fast float %3769, %3647
  %3771 = fsub fast float %3770, %3647
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3676, %3609
  %3774 = fsub fast float %3773, %3609
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3734, %3760
  %3777 = fmul fast float %3776, %3731
  %3778 = fmul fast float %3777, %3766
  %3779 = fmul fast float %3778, %3757
  %3780 = fmul fast float %3779, %3772
  %3781 = fmul fast float %3780, %3775
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3785 = fsub fast float %3693, %3784
  %3786 = fmul fast float %3785, %3783
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3781, %3610
  %3789 = fadd fast float %3781, %3610
  %3790 = fmul fast float %3789, %3619
  %3791 = fsub fast float %3790, %3619
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3793 = and i32 %3649, 128
  %3794 = icmp ne i32 %3793, 0
  %3795 = select i1 %3794, float %3792, float %3788
  %3796 = fmul fast float %3795, %3787
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = fcmp fast ugt float %3796, %3798
  br i1 %3799, label %3800, label %3698

; <label>:3800                                    ; preds = %3719
  %3801 = select i1 %3759, float %3796, float 0.000000e+00
  %3802 = fadd fast float %3801, %3573
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  br i1 %3759, label %3698, label %3804

; <label>:3804                                    ; preds = %3800
  %3805 = and i32 %3649, 4
  %3806 = and i32 %3649, 8
  %3807 = add i32 %3605, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = bitcast float %3631 to i32
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3815, 8
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = fmul fast float %3814, %3817
  %3822 = fadd fast float %3821, %3820
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = add i32 %3606, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3825, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = bitcast float %3625 to i32
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = lshr i32 %3831, 8
  %3835 = and i32 %3834, 255
  %3836 = uitofp i32 %3835 to float
  %3837 = lshr i32 %3831, 16
  %3838 = and i32 %3837, 255
  %3839 = uitofp i32 %3838 to float
  %3840 = fmul fast float %3839, 0x3F70101000000000
  %3841 = fmul fast float %3827, %3833
  %3842 = fadd fast float %3841, %3836
  %3843 = fmul fast float %3842, 0x3F70101000000000
  %3844 = fadd fast float %3828, -5.000000e-01
  %3845 = fadd fast float %3830, -5.000000e-01
  %3846 = fmul fast float %3844, %3840
  %3847 = fmul fast float %3845, %3840
  %3848 = fadd fast float %3846, 5.000000e-01
  %3849 = fadd fast float %3847, 5.000000e-01
  %3850 = fmul fast float %3811, %3634
  %3851 = fmul fast float %3812, %3635
  %3852 = fmul fast float %3813, %3636
  %3853 = fmul fast float %3848, 2.000000e+00
  %3854 = fadd fast float %3853, -1.000000e+00
  %3855 = fmul fast float %3849, 2.000000e+00
  %3856 = fadd fast float %3855, -1.000000e+00
  %3857 = fadd fast float %3854, %3856
  %3858 = fmul fast float %3857, 5.000000e-01
  %3859 = fsub fast float %3854, %3856
  %3860 = fmul fast float %3859, 5.000000e-01
  %3861 = call float @dx.op.unary.f32(i32 6, float %3858)  ; FAbs(value)
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3864 = fsub fast float %3862, %3863
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3860, float %3864, float %3858, float %3860, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.unary.f32(i32 25, float %3865)  ; Rsqrt(value)
  %3867 = fmul fast float %3858, %3866
  %3868 = fmul fast float %3860, %3866
  %3869 = fmul fast float %3866, %3864
  %3870 = fmul fast float %3869, %3599
  %3871 = fmul fast float %3869, %3600
  %3872 = fmul fast float %3869, %3601
  %3873 = fmul fast float %3867, %3622
  %3874 = fmul fast float %3867, %3623
  %3875 = fmul fast float %3867, %3624
  %3876 = fadd fast float %3873, %3870
  %3877 = fadd fast float %3874, %3871
  %3878 = fadd fast float %3875, %3872
  %3879 = fmul fast float %3868, %3628
  %3880 = fmul fast float %3868, %3629
  %3881 = fmul fast float %3868, %3630
  %3882 = fadd fast float %3876, %3879
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3884, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call float @dx.op.unary.f32(i32 25, float %3885)  ; Rsqrt(value)
  %3887 = fmul fast float %3882, %3886
  %3888 = fmul fast float %3883, %3886
  %3889 = fmul fast float %3884, %3886
  %3890 = icmp ne i32 %3806, 0
  %3891 = select i1 %3890, float 1.000000e+00, float 0.000000e+00
  %3892 = fmul fast float %3796, %3891
  %3893 = and i32 %3649, 1
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3895, label %3899

; <label>:3895                                    ; preds = %3804
  %3896 = fsub fast float %3887, %3582
  %3897 = fsub fast float %3888, %3583
  %3898 = fsub fast float %3889, %3584
  br label %3899

; <label>:3899                                    ; preds = %3895, %3804
  %3900 = phi float [ %3896, %3895 ], [ %3887, %3804 ]
  %3901 = phi float [ %3897, %3895 ], [ %3888, %3804 ]
  %3902 = phi float [ %3898, %3895 ], [ %3889, %3804 ]
  %3903 = fmul float %3902, %3892
  %3904 = fmul float %3901, %3892
  %3905 = fmul float %3900, %3892
  %3906 = fadd fast float %3905, %3582
  %3907 = fadd fast float %3904, %3583
  %3908 = fadd fast float %3903, %3584
  %3909 = icmp ne i32 %3805, 0
  %3910 = select i1 %3909, float 1.000000e+00, float 0.000000e+00
  %3911 = fmul fast float %3796, %3910
  %3912 = fsub fast float %3850, %3589
  %3913 = fsub fast float %3851, %3590
  %3914 = fsub fast float %3852, %3591
  %3915 = fmul fast float %3912, %3911
  %3916 = fmul fast float %3913, %3911
  %3917 = fmul fast float %3914, %3911
  %3918 = fadd fast float %3915, %3589
  %3919 = fadd fast float %3916, %3590
  %3920 = fadd fast float %3917, %3591
  %3921 = fsub fast float %3823, %3588
  %3922 = fmul fast float %3921, %3911
  %3923 = fadd fast float %3922, %3588
  %3924 = fmul fast float %3911, %3578
  %3925 = fsub fast float %3578, %3924
  %3926 = fmul fast float %3911, %3577
  %3927 = fsub fast float %3577, %3926
  %3928 = fadd fast float %3796, %3587
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fsub fast float %3843, %3586
  %3931 = fmul fast float %3930, %3892
  %3932 = fadd fast float %3931, %3586
  %3933 = fsub fast float %3829, %3585
  %3934 = fmul fast float %3933, %3892
  %3935 = fadd fast float %3934, %3585
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fmul fast float %3939, %3936
  %3941 = fadd fast float %3940, %3938
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = bitcast float %3637 to i32
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = lshr i32 %3943, 16
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = fcmp fast oge float %3945, 0.000000e+00
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = select i1 %3948, float %3945, float %3950
  %3952 = fadd fast float %3951, %3947
  %3953 = fsub fast float %3942, %3576
  %3954 = fmul fast float %3953, %3796
  %3955 = fadd fast float %3954, %3576
  %3956 = fmul fast float %3952, %3796
  %3957 = call float @dx.op.binary.f32(i32 35, float %3575, float %3956)  ; FMax(a,b)
  %3958 = call float @dx.op.binary.f32(i32 35, float %3574, float %3796)  ; FMax(a,b)
  %3959 = and i32 %3649, 16
  %3960 = icmp eq i32 %3959, 0
  br i1 %3960, label %3983, label %3961

; <label>:3961                                    ; preds = %3899
  %3962 = bitcast float %3643 to i32
  %3963 = add i32 %3640, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = and i32 %3962, 65535
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = fmul fast float %3966, %3634
  %3972 = fmul fast float %3967, %3635
  %3973 = fmul fast float %3968, %3636
  %3974 = and i32 %3649, 16384
  %3975 = icmp ne i32 %3974, 0
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 0
  %3978 = select i1 %3975, float %3977, float 1.000000e+00
  %3979 = fmul fast float %3978, %3970
  %3980 = fmul fast float %3971, %3979
  %3981 = fmul fast float %3972, %3979
  %3982 = fmul fast float %3973, %3979
  br label %3983

; <label>:3983                                    ; preds = %3961, %3899
  %3984 = phi float [ %3980, %3961 ], [ 0.000000e+00, %3899 ]
  %3985 = phi float [ %3981, %3961 ], [ 0.000000e+00, %3899 ]
  %3986 = phi float [ %3982, %3961 ], [ 0.000000e+00, %3899 ]
  %3987 = fsub fast float %3984, %3579
  %3988 = fsub fast float %3985, %3580
  %3989 = fsub fast float %3986, %3581
  %3990 = fmul fast float %3987, %3796
  %3991 = fmul fast float %3988, %3796
  %3992 = fmul fast float %3989, %3796
  %3993 = fadd fast float %3990, %3579
  %3994 = fadd fast float %3991, %3580
  %3995 = fadd fast float %3992, %3581
  br label %3698

; <label>:3996                                    ; preds = %3698
  br label %3997

; <label>:3997                                    ; preds = %3996, %3517
  %3998 = phi float [ 0.000000e+00, %3517 ], [ %3699, %3996 ]
  %3999 = phi float [ %913, %3517 ], [ %3700, %3996 ]
  %4000 = phi float [ %3486, %3517 ], [ %3701, %3996 ]
  %4001 = phi float [ %3478, %3517 ], [ %3702, %3996 ]
  %4002 = phi float [ 0.000000e+00, %3517 ], [ %3703, %3996 ]
  %4003 = phi float [ 0.000000e+00, %3517 ], [ %3704, %3996 ]
  %4004 = phi float [ %3472, %3517 ], [ %3705, %3996 ]
  %4005 = phi float [ %3473, %3517 ], [ %3706, %3996 ]
  %4006 = phi float [ %3474, %3517 ], [ %3707, %3996 ]
  %4007 = phi float [ %3512, %3517 ], [ %3708, %3996 ]
  %4008 = phi float [ %3513, %3517 ], [ %3709, %3996 ]
  %4009 = phi float [ %3514, %3517 ], [ %3710, %3996 ]
  %4010 = phi float [ %3477, %3517 ], [ %3711, %3996 ]
  %4011 = phi float [ %3476, %3517 ], [ %3712, %3996 ]
  %4012 = phi float [ 0.000000e+00, %3517 ], [ %3713, %3996 ]
  %4013 = phi float [ %3475, %3517 ], [ %3714, %3996 ]
  %4014 = phi float [ %3469, %3517 ], [ %3715, %3996 ]
  %4015 = phi float [ %3470, %3517 ], [ %3716, %3996 ]
  %4016 = phi float [ %3471, %3517 ], [ %3717, %3996 ]
  %4017 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %4007, float %4008, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = call float @dx.op.unary.f32(i32 25, float %4017)  ; Rsqrt(value)
  %4019 = fmul fast float %4018, %4007
  %4020 = fmul fast float %4018, %4008
  %4021 = fmul fast float %4018, %4009
  %4022 = fadd fast float %4012, %913
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4019, float %4020, float %4021, float %4019, float %4020, float %4021)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4025, %4019
  %4027 = fmul fast float %4025, %4020
  %4028 = fmul fast float %4025, %4021
  br label %4029

; <label>:4029                                    ; preds = %3997, %3466
  %4030 = phi float [ %4026, %3997 ], [ %3512, %3466 ]
  %4031 = phi float [ %4027, %3997 ], [ %3513, %3466 ]
  %4032 = phi float [ %4028, %3997 ], [ %3514, %3466 ]
  %4033 = phi float [ %4014, %3997 ], [ %3469, %3466 ]
  %4034 = phi float [ %4015, %3997 ], [ %3470, %3466 ]
  %4035 = phi float [ %4016, %3997 ], [ %3471, %3466 ]
  %4036 = phi float [ %4004, %3997 ], [ %3472, %3466 ]
  %4037 = phi float [ %4005, %3997 ], [ %3473, %3466 ]
  %4038 = phi float [ %4006, %3997 ], [ %3474, %3466 ]
  %4039 = phi float [ %4013, %3997 ], [ %3475, %3466 ]
  %4040 = phi float [ %4023, %3997 ], [ %913, %3466 ]
  %4041 = phi float [ %4011, %3997 ], [ %3476, %3466 ]
  %4042 = phi float [ %4010, %3997 ], [ %3477, %3466 ]
  %4043 = phi float [ %4003, %3997 ], [ 0.000000e+00, %3466 ]
  %4044 = phi float [ %4002, %3997 ], [ 0.000000e+00, %3466 ]
  %4045 = phi float [ %3998, %3997 ], [ 0.000000e+00, %3466 ]
  %4046 = phi float [ %4000, %3997 ], [ %3486, %3466 ]
  %4047 = phi float [ %3999, %3997 ], [ %913, %3466 ]
  %4048 = phi float [ %4001, %3997 ], [ %3478, %3466 ]
  %4049 = add i32 %35, 392
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.i32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.i32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.i32 %4050, 3
  %4055 = bitcast i32 %4051 to float
  %4056 = bitcast i32 %4052 to float
  %4057 = bitcast i32 %4053 to float
  %4058 = bitcast i32 %4054 to float
  %4059 = fsub fast float %4033, %4055
  %4060 = fsub fast float %4034, %4056
  %4061 = fsub fast float %4035, %4057
  %4062 = fmul fast float %4059, %168
  %4063 = fmul fast float %4060, %168
  %4064 = fmul fast float %4061, %168
  %4065 = fadd fast float %4062, %4055
  %4066 = fadd fast float %4063, %4056
  %4067 = fadd fast float %4064, %4057
  %4068 = fsub fast float %4040, %4058
  %4069 = fmul fast float %4068, %168
  %4070 = fadd fast float %4069, %4058
  %4071 = fadd fast float %4039, 0xBFB99999A0000000
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = fmul fast float %4072, 0x3FF1C71C80000000
  %4074 = call float @dx.op.binary.f32(i32 36, float %4039, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4075 = fsub fast float 1.000000e+00, %4073
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %4065, %4076
  %4078 = fmul fast float %4066, %4076
  %4079 = fmul fast float %4067, %4076
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = fmul fast float %4065, %4073
  %4084 = fmul fast float %4066, %4073
  %4085 = fmul fast float %4067, %4073
  %4086 = fadd fast float %4083, %4074
  %4087 = fadd fast float %4084, %4074
  %4088 = fadd fast float %4085, %4074
  %4089 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4090 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4091 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.i32 %4093, 3
  %4095 = and i32 %4094, 8
  %4096 = icmp ne i32 %4095, 0
  %4097 = call float @dx.op.binary.f32(i32 35, float %4080, float %4065)  ; FMax(a,b)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4081, float %4065)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4082, float %4065)  ; FMax(a,b)
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4080, float %4081, float %4082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = select i1 %208, float %4065, float %4080
  %4102 = select i1 %208, float %4100, float %4081
  %4103 = select i1 %208, float 1.000000e+00, float %4082
  %4104 = select i1 %4096, float %4097, float %4101
  %4105 = select i1 %4096, float %4098, float %4102
  %4106 = select i1 %4096, float %4099, float %4103
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4111 = fadd fast float %4108, %134
  %4112 = fadd fast float %4109, %135
  %4113 = fadd fast float %4110, %136
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4117 = fsub fast float %4111, %4115
  %4118 = fsub fast float %4112, %4116
  %4119 = fmul fast float %4117, %4117
  %4120 = fmul fast float %4118, %4118
  %4121 = fadd fast float %4119, %4120
  %4122 = call float @dx.op.unary.f32(i32 24, float %4121)  ; Sqrt(value)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4124 = fcmp fast olt float %4122, %4123
  br i1 %4124, label %4125, label %4192

; <label>:4125                                    ; preds = %4029
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4133 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4136 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4137 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4138 = fadd fast float %4135, %4111
  %4139 = fadd fast float %4136, %4112
  %4140 = fadd fast float %4137, %4113
  %4141 = fmul fast float %4138, %4127
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4129, float %4141)  ; FMad(a,b,c)
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4131, float %4142)  ; FMad(a,b,c)
  %4144 = fmul fast float %4138, %4132
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4133, float %4144)  ; FMad(a,b,c)
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4134, float %4145)  ; FMad(a,b,c)
  %4147 = fsub fast float %4143, %4135
  %4148 = fsub fast float %4146, %4136
  %4149 = fsub fast float %4147, %4115
  %4150 = fadd fast float %4149, %4123
  %4151 = fsub fast float %4148, %4116
  %4152 = fadd fast float %4151, %4123
  %4153 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4154 = fmul fast float %4150, %4153
  %4155 = fmul fast float %4152, %4153
  %4156 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4158 = fsub fast float 1.000000e+00, %4156
  %4159 = fsub fast float 1.000000e+00, %4157
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = fcmp fast ugt float %4161, 0.000000e+00
  br i1 %4162, label %4163, label %4466

; <label>:4163                                    ; preds = %4125
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4166 = fmul fast float %4165, %4161
  %4167 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4168 = fadd fast float %4167, %4166
  %4169 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4170 = fadd fast float %4168, %4137
  %4171 = fmul fast float %4143, %4131
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4134, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4169, float %4172)  ; FMad(a,b,c)
  %4174 = fsub fast float %4173, %4137
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4177 = fsub fast float %4174, %4176
  %4178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = fadd fast float %4183, %4179
  %4187 = fmul fast float %4186, 0x3F847AE140000000
  %4188 = fadd fast float %4184, %4180
  %4189 = fmul fast float %4188, 0x3F847AE140000000
  %4190 = fadd fast float %4185, %4181
  %4191 = fmul fast float %4190, 0x3F847AE140000000
  br label %4466

; <label>:4192                                    ; preds = %4029
  %4193 = and i32 %184, 1
  %4194 = icmp eq i32 %4193, 0
  br i1 %4194, label %4466, label %4195

; <label>:4195                                    ; preds = %4192
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4203 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4206 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4207 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4208 = fadd fast float %4205, %4111
  %4209 = fadd fast float %4206, %4112
  %4210 = fadd fast float %4207, %4113
  %4211 = fmul fast float %4208, %4197
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4199, float %4211)  ; FMad(a,b,c)
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4201, float %4212)  ; FMad(a,b,c)
  %4214 = fmul fast float %4208, %4202
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4203, float %4214)  ; FMad(a,b,c)
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4204, float %4215)  ; FMad(a,b,c)
  %4217 = fsub fast float %4213, %4205
  %4218 = fsub fast float %4216, %4206
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.i32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.i32 %4226, 1
  %4229 = udiv i32 %4228, %4227
  %4230 = fsub fast float %4217, %4220
  %4231 = fsub fast float %4218, %4221
  %4232 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4233 = call float @dx.op.binary.f32(i32 35, float %4231, float 0.000000e+00)  ; FMax(a,b)
  %4234 = call float @dx.op.binary.f32(i32 36, float %4232, float %4222)  ; FMin(a,b)
  %4235 = call float @dx.op.binary.f32(i32 36, float %4233, float %4223)  ; FMin(a,b)
  %4236 = add i32 %4227, -1
  %4237 = add i32 %4229, -1
  %4238 = fmul fast float %4234, %4225
  %4239 = fmul fast float %4235, %4225
  %4240 = fptoui float %4238 to i32
  %4241 = fptoui float %4239 to i32
  %4242 = call i32 @dx.op.binary.i32(i32 40, i32 %4240, i32 %4236)  ; UMin(a,b)
  %4243 = call i32 @dx.op.binary.i32(i32 40, i32 %4241, i32 %4237)  ; UMin(a,b)
  %4244 = mul i32 %4243, %4227
  %4245 = add i32 %4244, %4242
  %4246 = shl i32 %4245, 2
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = icmp eq i32 %4248, -1
  br i1 %4249, label %4466, label %4250

; <label>:4250                                    ; preds = %4195
  %4251 = mul i32 %4248, 148
  %4252 = add i32 %4251, 4
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4251, 8
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4251, 36
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = add i32 %4251, 60
  %4262 = add i32 %4251, 92
  %4263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.i32 %4263, 0
  %4265 = add i32 %4251, 116
  %4266 = fsub fast float %4217, %4254
  %4267 = fsub fast float %4218, %4257
  %4268 = fmul fast float %4225, %4266
  %4269 = fmul fast float %4225, %4267
  %4270 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4275 = call float @dx.op.unary.f32(i32 83, float %4270)  ; DerivCoarseX(value)
  %4276 = call float @dx.op.unary.f32(i32 83, float %4272)  ; DerivCoarseX(value)
  %4277 = call float @dx.op.unary.f32(i32 84, float %4270)  ; DerivCoarseY(value)
  %4278 = call float @dx.op.unary.f32(i32 84, float %4272)  ; DerivCoarseY(value)
  %4279 = fmul fast float %4275, %4274
  %4280 = fmul fast float %4276, %4274
  %4281 = fmul fast float %4277, %4274
  %4282 = fmul fast float %4278, %4274
  %4283 = call float @dx.op.dot2.f32(i32 54, float %4281, float %4282, float %4281, float %4282)  ; Dot2(ax,ay,bx,by)
  %4284 = call float @dx.op.dot2.f32(i32 54, float %4279, float %4280, float %4279, float %4280)  ; Dot2(ax,ay,bx,by)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4284, float %4283)  ; FMax(a,b)
  %4286 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4287 = fmul fast float %4286, 5.000000e-01
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4290 = fadd fast float %4289, %4287
  %4291 = call float @dx.op.binary.f32(i32 35, float %4290, float 0.000000e+00)  ; FMax(a,b)
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = fadd fast float %4293, %4291
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4297 = fadd fast float %4294, %4296
  %4298 = add i32 %4264, 0
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4299, i32 0)  ; GetDimensions(handle,mipLevel)
  %4301 = extractvalue %dx.types.Dimensions %4300, 0
  %4302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4301)  ; FirstbitLo(value)
  %4303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.i32 %4303, 1
  %4305 = sub nsw i32 %4304, %4302
  %4306 = sitofp i32 %4305 to float
  %4307 = fsub fast float %4297, %4306
  %4308 = call float @dx.op.binary.f32(i32 35, float %4307, float 0.000000e+00)  ; FMax(a,b)
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4299, %dx.types.Handle %27, float %4270, float %4272, float %4260, float undef, i32 0, i32 0, i32 undef, float %4308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = fcmp ule float %4310, 0x3FE0101020000000
  %4312 = extractvalue %dx.types.CBufRet.i32 %4303, 0
  %4313 = and i32 %4312, 128
  %4314 = icmp ne i32 %4313, 0
  %4315 = and i1 %4311, %4314
  br i1 %4315, label %4466, label %4316

; <label>:4316                                    ; preds = %4250
  %4317 = add i32 %4251, 20
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = add i32 %4251, 24
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = add i32 %4251, 40
  %4324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = add i32 %4251, 96
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4331 = fmul fast float %4330, %4270
  %4332 = fmul fast float %4330, %4272
  %4333 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4334 = fadd fast float %4331, %4333
  %4335 = fadd fast float %4332, %4333
  %4336 = add i32 %4328, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4337, i32 0)  ; GetDimensions(handle,mipLevel)
  %4339 = extractvalue %dx.types.Dimensions %4338, 0
  %4340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4339)  ; FirstbitLo(value)
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4343 = sub nsw i32 %4342, %4340
  %4344 = sitofp i32 %4343 to float
  %4345 = fsub fast float %4294, %4344
  %4346 = call float @dx.op.binary.f32(i32 35, float %4345, float 0.000000e+00)  ; FMax(a,b)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4337, %dx.types.Handle %27, float %4334, float %4335, float %4325, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %4319
  %4350 = fadd fast float %4349, %4322
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4354 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4359 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4360 = fadd fast float %4356, %4217
  %4361 = fadd fast float %4358, %4218
  %4362 = fadd fast float %4350, %4359
  %4363 = fmul fast float %4360, %4352
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4361, float %4353, float %4363)  ; FMad(a,b,c)
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4354, float %4364)  ; FMad(a,b,c)
  %4366 = fsub fast float %4365, %4359
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4369 = fsub fast float %4366, %4368
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 0
  %4372 = call i32 @dx.op.binary.i32(i32 40, i32 %4248, i32 %4371)  ; UMin(a,b)
  %4373 = mul i32 %4372, 36
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = add i32 %4373, 4
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = fmul fast float %4378, %4270
  %4380 = fmul fast float %4378, %4272
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4382 = fadd fast float %4379, %4381
  %4383 = fadd fast float %4380, %4381
  %4384 = icmp eq i32 %4375, 0
  br i1 %4384, label %4453, label %4385

; <label>:4385                                    ; preds = %4316
  br label %4386

; <label>:4386                                    ; preds = %4443, %4385
  %4387 = phi float [ %4444, %4443 ], [ 0.000000e+00, %4385 ]
  %4388 = phi float [ %4445, %4443 ], [ 0.000000e+00, %4385 ]
  %4389 = phi float [ %4446, %4443 ], [ 0.000000e+00, %4385 ]
  %4390 = phi float [ %4447, %4443 ], [ 0.000000e+00, %4385 ]
  %4391 = phi float [ %4448, %4443 ], [ 0.000000e+00, %4385 ]
  %4392 = phi float [ %4449, %4443 ], [ 0.000000e+00, %4385 ]
  %4393 = phi i32 [ %4450, %4443 ], [ 0, %4385 ]
  %4394 = shl i32 %4393, 2
  %4395 = add i32 %4261, %4394
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = add i32 %4265, %4394
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = add i32 %4400, 0
  %4402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4401, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4402, i32 0)  ; GetDimensions(handle,mipLevel)
  %4404 = extractvalue %dx.types.Dimensions %4403, 0
  %4405 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4404)  ; FirstbitLo(value)
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 1
  %4408 = sub nsw i32 %4407, %4405
  %4409 = sitofp i32 %4408 to float
  %4410 = fsub fast float %4294, %4409
  %4411 = call float @dx.op.binary.f32(i32 35, float %4410, float 0.000000e+00)  ; FMax(a,b)
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4402, %dx.types.Handle %27, float %4382, float %4383, float %4397, float undef, i32 0, i32 0, i32 undef, float %4411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = fcmp fast ogt float %4413, 0.000000e+00
  br i1 %4414, label %4415, label %4443

; <label>:4415                                    ; preds = %4386
  %4416 = add i32 %4376, %4394
  %4417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.i32 %4417, 0
  %4419 = and i32 %4418, 32767
  %4420 = mul nuw nsw i32 %4419, 928
  %4421 = add nuw nsw i32 %4420, 48
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = add nuw nsw i32 %4420, 60
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = fmul fast float %4423, %4413
  %4432 = fmul fast float %4424, %4413
  %4433 = fmul fast float %4425, %4413
  %4434 = fadd fast float %4431, %4387
  %4435 = fadd fast float %4432, %4388
  %4436 = fadd fast float %4433, %4389
  %4437 = fmul fast float %4428, %4413
  %4438 = fmul fast float %4429, %4413
  %4439 = fmul fast float %4430, %4413
  %4440 = fadd fast float %4437, %4390
  %4441 = fadd fast float %4438, %4391
  %4442 = fadd fast float %4439, %4392
  br label %4443

; <label>:4443                                    ; preds = %4415, %4386
  %4444 = phi float [ %4434, %4415 ], [ %4387, %4386 ]
  %4445 = phi float [ %4435, %4415 ], [ %4388, %4386 ]
  %4446 = phi float [ %4436, %4415 ], [ %4389, %4386 ]
  %4447 = phi float [ %4440, %4415 ], [ %4390, %4386 ]
  %4448 = phi float [ %4441, %4415 ], [ %4391, %4386 ]
  %4449 = phi float [ %4442, %4415 ], [ %4392, %4386 ]
  %4450 = add nuw i32 %4393, 1
  %4451 = icmp eq i32 %4450, %4375
  br i1 %4451, label %4452, label %4386

; <label>:4452                                    ; preds = %4443
  br label %4453

; <label>:4453                                    ; preds = %4452, %4316
  %4454 = phi float [ 0.000000e+00, %4316 ], [ %4444, %4452 ]
  %4455 = phi float [ 0.000000e+00, %4316 ], [ %4445, %4452 ]
  %4456 = phi float [ 0.000000e+00, %4316 ], [ %4446, %4452 ]
  %4457 = phi float [ 0.000000e+00, %4316 ], [ %4447, %4452 ]
  %4458 = phi float [ 0.000000e+00, %4316 ], [ %4448, %4452 ]
  %4459 = phi float [ 0.000000e+00, %4316 ], [ %4449, %4452 ]
  %4460 = fadd fast float %4457, %4454
  %4461 = fmul fast float %4460, 0x3F847AE140000000
  %4462 = fadd fast float %4458, %4455
  %4463 = fmul fast float %4462, 0x3F847AE140000000
  %4464 = fadd fast float %4459, %4456
  %4465 = fmul fast float %4464, 0x3F847AE140000000
  br label %4466

; <label>:4466                                    ; preds = %4453, %4250, %4195, %4192, %4163, %4125
  %4467 = phi float [ %4177, %4163 ], [ -1.310720e+05, %4125 ], [ %4369, %4453 ], [ -1.310720e+05, %4195 ], [ -1.310720e+05, %4250 ], [ -1.310720e+05, %4192 ]
  %4468 = phi float [ %4187, %4163 ], [ 0.000000e+00, %4125 ], [ %4461, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4469 = phi float [ %4189, %4163 ], [ 0.000000e+00, %4125 ], [ %4463, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4470 = phi float [ %4191, %4163 ], [ 0.000000e+00, %4125 ], [ %4465, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4471 = phi i1 [ true, %4163 ], [ false, %4125 ], [ true, %4453 ], [ false, %4195 ], [ false, %4250 ], [ false, %4192 ]
  %4472 = and i32 %184, 3
  %4473 = icmp eq i32 %4472, 1
  %4474 = select i1 %4473, float 1.000000e+00, float 0.000000e+00
  %4475 = fsub fast float %4467, %136
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = select i1 %4471, float %4476, float 1.000000e+00
  %4478 = fmul fast float %4477, %4474
  %4479 = icmp eq i32 %4472, 3
  %4480 = select i1 %4479, float 1.000000e+00, float %4478
  %4481 = call float @dx.op.binary.f32(i32 35, float %4045, float %4480)  ; FMax(a,b)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fcmp fast une float %4482, 0.000000e+00
  %4484 = fsub fast float -0.000000e+00, %154
  %4485 = fsub fast float -0.000000e+00, %155
  %4486 = fsub fast float -0.000000e+00, %156
  br i1 %4483, label %4487, label %4649

; <label>:4487                                    ; preds = %4466
  %4488 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = fmul fast float %4482, 2.500000e+00
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4482, 0x4013FFFFE0000000
  %4492 = fadd fast float %4491, 0xBFFFFFFFE0000000
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = fmul fast float %4482, 0x4004000020000000
  %4495 = fadd fast float %4494, 0xBFF8000040000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4498 = fmul fast float %4071, 1.000000e+01
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, 2.000000e+00
  %4501 = fsub fast float 3.000000e+00, %4500
  %4502 = fmul fast float %4499, %4499
  %4503 = fmul fast float %4502, %4501
  %4504 = fsub fast float 1.000000e+00, %4503
  %4505 = fsub fast float 0x3FE3333340000000, %4092
  %4506 = fmul fast float %4505, 0x400AAAAAA0000000
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = fmul fast float %4504, %4507
  %4509 = fmul fast float %4104, 0x3FEA2B8620000000
  %4510 = fmul fast float %4105, 0x3FEA2B8620000000
  %4511 = fmul fast float %4106, 0x3FEA2B8620000000
  %4512 = fadd fast float %4509, 0x3FC81DFBA0000000
  %4513 = fmul fast float %4512, %4104
  %4514 = fadd fast float %4513, 0x3F910E6020000000
  %4515 = fadd fast float %4510, 0x3FC81DFBA0000000
  %4516 = fmul fast float %4515, %4105
  %4517 = fadd fast float %4516, 0x3F910E6020000000
  %4518 = fadd fast float %4511, 0x3FC81DFBA0000000
  %4519 = fmul fast float %4518, %4106
  %4520 = fadd fast float %4519, 0x3F910E6020000000
  %4521 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4523 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4524 = fsub fast float %4521, %4104
  %4525 = fsub fast float %4522, %4105
  %4526 = fsub fast float %4523, %4106
  %4527 = fmul fast float %4524, %4497
  %4528 = fmul fast float %4527, %4508
  %4529 = fmul fast float %4525, %4497
  %4530 = fmul fast float %4529, %4508
  %4531 = fmul fast float %4526, %4497
  %4532 = fmul fast float %4531, %4508
  %4533 = fadd fast float %4528, %4104
  %4534 = fadd fast float %4530, %4105
  %4535 = fadd fast float %4532, %4106
  %4536 = fmul fast float %4042, %4042
  %4537 = fmul fast float %4536, %4536
  %4538 = fadd fast float %4493, 1.000000e+00
  %4539 = fsub fast float %4538, %4508
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = fsub fast float 1.000000e+00, %4537
  %4544 = call float @dx.op.binary.f32(i32 36, float %4540, float %4543)  ; FMin(a,b)
  %4545 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4546 = call float @dx.op.binary.f32(i32 35, float %4544, float %4545)  ; FMax(a,b)
  %4547 = fadd fast float %4542, 0xBFE4CCCCC0000000
  %4548 = fmul fast float %4547, 0x4006DB6DA0000000
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = fsub fast float 3.000000e+00, %4550
  %4552 = bitcast float %4089 to i32
  %4553 = ashr i32 %4552, 1
  %4554 = add nsw i32 %4553, 532487669
  %4555 = bitcast i32 %4554 to float
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, 2.000000e+00
  %4561 = bitcast float %4090 to i32
  %4562 = ashr i32 %4561, 1
  %4563 = add nsw i32 %4562, 532487669
  %4564 = bitcast i32 %4563 to float
  %4565 = fsub fast float 1.000000e+00, %4564
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = bitcast i32 %4567 to float
  %4569 = fmul fast float %4568, 2.000000e+00
  %4570 = bitcast float %4091 to i32
  %4571 = ashr i32 %4570, 1
  %4572 = add nsw i32 %4571, 532487669
  %4573 = bitcast i32 %4572 to float
  %4574 = fsub fast float 1.000000e+00, %4573
  %4575 = bitcast float %4574 to i32
  %4576 = sub nsw i32 2129859010, %4575
  %4577 = bitcast i32 %4576 to float
  %4578 = fmul fast float %4577, 2.000000e+00
  %4579 = fsub fast float 0x4002A9FBE0000000, %4560
  %4580 = fadd fast float %4560, 0x3FD54FDF00000000
  %4581 = bitcast float %4580 to i32
  %4582 = sub nsw i32 2129859010, %4581
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4583, %4579
  %4585 = fmul fast float %4584, %4584
  %4586 = fsub fast float 0x4002A9FBE0000000, %4569
  %4587 = fadd fast float %4569, 0x3FD54FDF00000000
  %4588 = bitcast float %4587 to i32
  %4589 = sub nsw i32 2129859010, %4588
  %4590 = bitcast i32 %4589 to float
  %4591 = fmul fast float %4590, %4586
  %4592 = fmul fast float %4591, %4591
  %4593 = fsub fast float 0x4002A9FBE0000000, %4578
  %4594 = fadd fast float %4578, 0x3FD54FDF00000000
  %4595 = bitcast float %4594 to i32
  %4596 = sub nsw i32 2129859010, %4595
  %4597 = bitcast i32 %4596 to float
  %4598 = fmul fast float %4597, %4593
  %4599 = fmul fast float %4598, %4598
  %4600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4585)  ; FMax(a,b)
  %4601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4592)  ; FMax(a,b)
  %4602 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4599)  ; FMax(a,b)
  %4603 = fsub fast float 1.000000e+00, %4488
  %4604 = fadd fast float %4603, %4504
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fsub fast float 1.000000e+00, %4480
  %4607 = fmul fast float %4546, %4606
  %4608 = fmul fast float %4549, %4549
  %4609 = fmul fast float %4608, %4607
  %4610 = fmul fast float %4609, %4551
  %4611 = fmul fast float %4606, 0xBFE99999A0000000
  %4612 = fmul fast float %4611, %4497
  %4613 = fmul fast float %4612, %4508
  %4614 = fadd fast float %4613, 1.000000e+00
  %4615 = fadd fast float %4092, -1.000000e+00
  %4616 = fmul fast float %4614, %4615
  %4617 = fadd fast float %4616, 1.000000e+00
  %4618 = fsub fast float %4600, %4089
  %4619 = fsub fast float %4601, %4090
  %4620 = fsub fast float %4602, %4091
  %4621 = fmul fast float %4610, %4618
  %4622 = fmul fast float %4610, %4619
  %4623 = fmul fast float %4610, %4620
  %4624 = fadd fast float %4621, %4089
  %4625 = fadd fast float %4622, %4090
  %4626 = fadd fast float %4623, %4091
  %4627 = fsub fast float %84, %4030
  %4628 = fsub fast float %86, %4031
  %4629 = fsub fast float %88, %4032
  %4630 = fmul fast float %4610, %4627
  %4631 = fmul fast float %4610, %4628
  %4632 = fmul fast float %4610, %4629
  %4633 = fadd fast float %4630, %4030
  %4634 = fadd fast float %4631, %4031
  %4635 = fadd fast float %4632, %4032
  %4636 = fmul fast float %4610, %4605
  %4637 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4638 = fsub fast float 1.000000e+00, %4637
  %4639 = fmul fast float %4636, %4638
  %4640 = fadd fast float %4639, %4637
  %4641 = fsub fast float 1.000000e+00, %4042
  %4642 = fmul fast float %4610, %4641
  %4643 = fadd fast float %4642, %4042
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.unary.f32(i32 25, float %4644)  ; Rsqrt(value)
  %4646 = fmul fast float %4633, %4645
  %4647 = fmul fast float %4634, %4645
  %4648 = fmul fast float %4635, %4645
  br label %4649

; <label>:4649                                    ; preds = %4487, %4466
  %4650 = phi float [ %4624, %4487 ], [ %4089, %4466 ]
  %4651 = phi float [ %4625, %4487 ], [ %4090, %4466 ]
  %4652 = phi float [ %4626, %4487 ], [ %4091, %4466 ]
  %4653 = phi float [ %4533, %4487 ], [ %4104, %4466 ]
  %4654 = phi float [ %4534, %4487 ], [ %4105, %4466 ]
  %4655 = phi float [ %4535, %4487 ], [ %4106, %4466 ]
  %4656 = phi float [ %4646, %4487 ], [ %4030, %4466 ]
  %4657 = phi float [ %4647, %4487 ], [ %4031, %4466 ]
  %4658 = phi float [ %4648, %4487 ], [ %4032, %4466 ]
  %4659 = phi float [ %4640, %4487 ], [ %4092, %4466 ]
  %4660 = phi float [ %4643, %4487 ], [ %4042, %4466 ]
  %4661 = select i1 %208, float 0.000000e+00, float %4652
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = fmul fast float %4664, 2.000000e+00
  %4666 = fmul fast float %4665, %4656
  %4667 = fmul fast float %4665, %4657
  %4668 = fmul fast float %4665, %4658
  %4669 = fsub fast float %154, %4666
  %4670 = fsub fast float %155, %4667
  %4671 = fsub fast float %156, %4668
  %4672 = call float @dx.op.binary.f32(i32 36, float %4660, float 1.000000e+00)  ; FMin(a,b)
  %4673 = fsub fast float 1.000000e+00, %4660
  %4674 = bitcast float %4673 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4678 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = fcmp fast oeq float %4678, 0.000000e+00
  %4680 = fcmp fast oeq float %4677, 0.000000e+00
  %4681 = or i1 %4680, %4679
  br i1 %4681, label %4711, label %4682

; <label>:4682                                    ; preds = %4649
  %4683 = fsub fast float -0.000000e+00, %55
  %4684 = fsub fast float -0.000000e+00, %53
  %4685 = call float @dx.op.unary.f32(i32 24, float %4678)  ; Sqrt(value)
  %4686 = fdiv fast float %4685, %4677
  %4687 = fcmp fast ogt float %4686, 0x3FFB6F8900000000
  %4688 = select i1 %4687, float 0x3FFB6F8900000000, float %4686
  %4689 = fmul fast float %4688, 0x3FE8A23460000000
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4688, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4692 = fmul fast float %4690, %4677
  %4693 = fmul fast float %4691, 0x3FF279A740000000
  %4694 = fadd fast float %4693, -1.000000e+00
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %54, float %4683, float %4684, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.unary.f32(i32 25, float %4695)  ; Rsqrt(value)
  %4697 = fmul fast float %4696, %4683
  %4698 = fmul fast float %4696, %4684
  %4699 = fmul fast float %4696, %54
  %4700 = fmul fast float %4694, %4694
  %4701 = fsub fast float 1.000000e+00, %4700
  %4702 = fmul fast float %4691, 0x40005F8BE0000000
  %4703 = fsub fast float 0x400C5BF8A0000000, %4702
  %4704 = fdiv fast float %4692, %4703
  %4705 = fmul fast float %4704, 0x3FEE31C3C0000000
  %4706 = fmul fast float %4705, %4701
  %4707 = fmul fast float %4691, 0x3FDACB7480000000
  %4708 = fadd fast float %4707, 0xBFD7347680000000
  %4709 = fmul fast float %4708, %4704
  %4710 = fmul fast float %4709, %4701
  br label %4711

; <label>:4711                                    ; preds = %4682, %4649
  %4712 = phi float [ %4697, %4682 ], [ 0.000000e+00, %4649 ]
  %4713 = phi float [ %4698, %4682 ], [ 0.000000e+00, %4649 ]
  %4714 = phi float [ %4699, %4682 ], [ 0.000000e+00, %4649 ]
  %4715 = phi float [ %4706, %4682 ], [ 0.000000e+00, %4649 ]
  %4716 = phi float [ %4710, %4682 ], [ 0.000000e+00, %4649 ]
  %4717 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4713, float %4714, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = fmul fast float %4717, %4717
  %4719 = fmul fast float %4718, 0x3FEE471020000000
  %4720 = fadd fast float %4719, 0xBFD42F6020000000
  %4721 = fmul fast float %4677, 0x3FD20DD760000000
  %4722 = fmul fast float %4720, %4716
  %4723 = fmul fast float %4715, 0x3FDF454380000000
  %4724 = fmul fast float %4723, %4717
  %4725 = fadd fast float %4724, %4721
  %4726 = fadd fast float %4725, %4722
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4713, float %4714, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = fmul fast float %4727, 0x3FDF454380000000
  %4729 = fmul fast float %4727, %4727
  %4730 = fmul fast float %4729, 0x3FEE471020000000
  %4731 = fadd fast float %4730, 0xBFD42F6020000000
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4715, float %4716, float 0x3FD20DD760000000, float %4728, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4734 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = fcmp fast oeq float %4734, 0.000000e+00
  %4736 = fcmp fast oeq float %4733, 0.000000e+00
  %4737 = or i1 %4736, %4735
  br i1 %4737, label %4767, label %4738

; <label>:4738                                    ; preds = %4711
  %4739 = fsub fast float -0.000000e+00, %51
  %4740 = fsub fast float -0.000000e+00, %49
  %4741 = call float @dx.op.unary.f32(i32 24, float %4734)  ; Sqrt(value)
  %4742 = fdiv fast float %4741, %4733
  %4743 = fcmp fast ogt float %4742, 0x3FFB6F8900000000
  %4744 = select i1 %4743, float 0x3FFB6F8900000000, float %4742
  %4745 = fmul fast float %4744, 0x3FE8A23460000000
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = call float @dx.op.binary.f32(i32 35, float %4744, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4748 = fmul fast float %4746, %4733
  %4749 = fmul fast float %4747, 0x3FF279A740000000
  %4750 = fadd fast float %4749, -1.000000e+00
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %50, float %4739, float %4740, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.unary.f32(i32 25, float %4751)  ; Rsqrt(value)
  %4753 = fmul fast float %4752, %4739
  %4754 = fmul fast float %4752, %4740
  %4755 = fmul fast float %4752, %50
  %4756 = fmul fast float %4750, %4750
  %4757 = fsub fast float 1.000000e+00, %4756
  %4758 = fmul fast float %4747, 0x40005F8BE0000000
  %4759 = fsub fast float 0x400C5BF8A0000000, %4758
  %4760 = fdiv fast float %4748, %4759
  %4761 = fmul fast float %4760, 0x3FEE31C3C0000000
  %4762 = fmul fast float %4761, %4757
  %4763 = fmul fast float %4747, 0x3FDACB7480000000
  %4764 = fadd fast float %4763, 0xBFD7347680000000
  %4765 = fmul fast float %4764, %4760
  %4766 = fmul fast float %4765, %4757
  br label %4767

; <label>:4767                                    ; preds = %4738, %4711
  %4768 = phi float [ %4753, %4738 ], [ 0.000000e+00, %4711 ]
  %4769 = phi float [ %4754, %4738 ], [ 0.000000e+00, %4711 ]
  %4770 = phi float [ %4755, %4738 ], [ 0.000000e+00, %4711 ]
  %4771 = phi float [ %4762, %4738 ], [ 0.000000e+00, %4711 ]
  %4772 = phi float [ %4766, %4738 ], [ 0.000000e+00, %4711 ]
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4769, float %4770, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = fmul fast float %4773, %4773
  %4775 = fmul fast float %4774, 0x3FEE471020000000
  %4776 = fadd fast float %4775, 0xBFD42F6020000000
  %4777 = fmul fast float %4733, 0x3FD20DD760000000
  %4778 = fmul fast float %4776, %4772
  %4779 = fmul fast float %4771, 0x3FDF454380000000
  %4780 = fmul fast float %4779, %4773
  %4781 = fadd fast float %4780, %4777
  %4782 = fadd fast float %4781, %4778
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4769, float %4770, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = fmul fast float %4783, 0x3FDF454380000000
  %4785 = fmul fast float %4783, %4783
  %4786 = fmul fast float %4785, 0x3FEE471020000000
  %4787 = fadd fast float %4786, 0xBFD42F6020000000
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4771, float %4772, float 0x3FD20DD760000000, float %4784, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4790 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fcmp fast oeq float %4790, 0.000000e+00
  %4792 = fcmp fast oeq float %4789, 0.000000e+00
  %4793 = or i1 %4792, %4791
  br i1 %4793, label %4823, label %4794

; <label>:4794                                    ; preds = %4767
  %4795 = fsub fast float -0.000000e+00, %47
  %4796 = fsub fast float -0.000000e+00, %45
  %4797 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4798 = fdiv fast float %4797, %4789
  %4799 = fcmp fast ogt float %4798, 0x3FFB6F8900000000
  %4800 = select i1 %4799, float 0x3FFB6F8900000000, float %4798
  %4801 = fmul fast float %4800, 0x3FE8A23460000000
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4804 = fmul fast float %4802, %4789
  %4805 = fmul fast float %4803, 0x3FF279A740000000
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %46, float %4795, float %4796, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4808, %4795
  %4810 = fmul fast float %4808, %4796
  %4811 = fmul fast float %4808, %46
  %4812 = fmul fast float %4806, %4806
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = fmul fast float %4803, 0x40005F8BE0000000
  %4815 = fsub fast float 0x400C5BF8A0000000, %4814
  %4816 = fdiv fast float %4804, %4815
  %4817 = fmul fast float %4816, 0x3FEE31C3C0000000
  %4818 = fmul fast float %4817, %4813
  %4819 = fmul fast float %4803, 0x3FDACB7480000000
  %4820 = fadd fast float %4819, 0xBFD7347680000000
  %4821 = fmul fast float %4820, %4816
  %4822 = fmul fast float %4821, %4813
  br label %4823

; <label>:4823                                    ; preds = %4794, %4767
  %4824 = phi float [ %4809, %4794 ], [ 0.000000e+00, %4767 ]
  %4825 = phi float [ %4810, %4794 ], [ 0.000000e+00, %4767 ]
  %4826 = phi float [ %4811, %4794 ], [ 0.000000e+00, %4767 ]
  %4827 = phi float [ %4818, %4794 ], [ 0.000000e+00, %4767 ]
  %4828 = phi float [ %4822, %4794 ], [ 0.000000e+00, %4767 ]
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = fmul fast float %4829, %4829
  %4831 = fmul fast float %4830, 0x3FEE471020000000
  %4832 = fadd fast float %4831, 0xBFD42F6020000000
  %4833 = fmul fast float %4789, 0x3FD20DD760000000
  %4834 = fmul fast float %4832, %4828
  %4835 = fmul fast float %4827, 0x3FDF454380000000
  %4836 = fmul fast float %4835, %4829
  %4837 = fadd fast float %4836, %4833
  %4838 = fadd fast float %4837, %4834
  %4839 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4840 = fmul fast float %4839, 0x3FDF454380000000
  %4841 = fmul fast float %4839, %4839
  %4842 = fmul fast float %4841, 0x3FEE471020000000
  %4843 = fadd fast float %4842, 0xBFD42F6020000000
  %4844 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4827, float %4828, float 0x3FD20DD760000000, float %4840, float %4843)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4726, float 0.000000e+00)  ; FMax(a,b)
  %4846 = call float @dx.op.binary.f32(i32 35, float %4782, float 0.000000e+00)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4838, float 0.000000e+00)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float %4732, float 0.000000e+00)  ; FMax(a,b)
  %4849 = call float @dx.op.binary.f32(i32 35, float %4788, float 0.000000e+00)  ; FMax(a,b)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4844, float 0.000000e+00)  ; FMax(a,b)
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = call float @dx.op.binary.f32(i32 36, float %4653, float %4852)  ; FMin(a,b)
  %4854 = fsub fast float 1.000000e+00, %4672
  %4855 = fmul fast float %4853, %4854
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = call float @dx.op.binary.f32(i32 36, float %4654, float %4852)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4854
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4655, float %4852)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4854
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4845, %4672
  %4873 = fmul fast float %4872, %4859
  %4874 = fmul fast float %4846, %4672
  %4875 = fmul fast float %4874, %4865
  %4876 = fmul fast float %4847, %4672
  %4877 = fmul fast float %4876, %4871
  %4878 = call float @dx.op.binary.f32(i32 36, float %4650, float %4852)  ; FMin(a,b)
  %4879 = fmul fast float %4878, %4854
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = bitcast float %4880 to i32
  %4882 = sub nsw i32 2129859010, %4881
  %4883 = bitcast i32 %4882 to float
  %4884 = call float @dx.op.binary.f32(i32 36, float %4651, float %4852)  ; FMin(a,b)
  %4885 = fmul fast float %4884, %4854
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = bitcast float %4886 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = call float @dx.op.binary.f32(i32 36, float %4661, float %4852)  ; FMin(a,b)
  %4891 = fmul fast float %4890, %4854
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = bitcast float %4892 to i32
  %4894 = sub nsw i32 2129859010, %4893
  %4895 = bitcast i32 %4894 to float
  %4896 = fmul fast float %4848, %4672
  %4897 = fmul fast float %4896, %4883
  %4898 = fmul fast float %4849, %4672
  %4899 = fmul fast float %4898, %4889
  %4900 = fmul fast float %4850, %4672
  %4901 = fmul fast float %4900, %4895
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4875, float %4877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = select i1 %208, float 0.000000e+00, float %4873
  %4904 = select i1 %208, float %4902, float %4875
  %4905 = select i1 %208, float 0.000000e+00, float %4877
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4899, float %4901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = select i1 %208, float 0.000000e+00, float %4897
  %4908 = select i1 %208, float %4906, float %4899
  %4909 = select i1 %208, float 0.000000e+00, float %4901
  %4910 = fmul fast float %4663, 9.843750e-01
  %4911 = fmul fast float %4659, 9.843750e-01
  %4912 = fadd fast float %4910, 7.812500e-03
  %4913 = fadd fast float %4911, 7.812500e-03
  %4914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 2
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 3
  %4917 = fmul fast float %4915, %4650
  %4918 = fmul fast float %4915, %4651
  %4919 = fmul fast float %4915, %4661
  %4920 = fadd fast float %4917, %4916
  %4921 = fadd fast float %4918, %4916
  %4922 = fadd fast float %4919, %4916
  %4923 = fcmp fast ogt float %4043, 0.000000e+00
  br i1 %4923, label %4924, label %4950

; <label>:4924                                    ; preds = %4823
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4043, float %4663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4929 = fadd fast float %4926, -5.000000e-01
  %4930 = fadd fast float %4927, -5.000000e-01
  %4931 = fadd fast float %4928, -5.000000e-01
  %4932 = fsub fast float 1.000000e+00, %4650
  %4933 = fsub fast float 1.000000e+00, %4651
  %4934 = fsub fast float 1.000000e+00, %4661
  %4935 = fmul fast float %4650, 4.000000e+00
  %4936 = fmul fast float %4935, %4932
  %4937 = fmul fast float %4936, %4929
  %4938 = fmul fast float %4651, 4.000000e+00
  %4939 = fmul fast float %4938, %4933
  %4940 = fmul fast float %4939, %4930
  %4941 = fmul fast float %4661, 4.000000e+00
  %4942 = fmul fast float %4941, %4934
  %4943 = fmul fast float %4942, %4931
  %4944 = fadd fast float %4937, %4920
  %4945 = fadd fast float %4940, %4921
  %4946 = fadd fast float %4943, %4922
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  br label %4950

; <label>:4950                                    ; preds = %4924, %4823
  %4951 = phi float [ %4947, %4924 ], [ %4920, %4823 ]
  %4952 = phi float [ %4948, %4924 ], [ %4921, %4823 ]
  %4953 = phi float [ %4949, %4924 ], [ %4922, %4823 ]
  %4954 = call float @dx.op.binary.f32(i32 35, float %4952, float %4953)  ; FMax(a,b)
  %4955 = call float @dx.op.binary.f32(i32 35, float %4951, float %4954)  ; FMax(a,b)
  %4956 = fsub fast float 1.000000e+00, %4955
  %4957 = fmul fast float %4956, %4903
  %4958 = fmul fast float %4956, %4904
  %4959 = fmul fast float %4956, %4905
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4654, float %4655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = fcmp fast ogt float %4960, 0x3E7FF19E20000000
  %4962 = fdiv fast float 1.000000e+00, %4960
  %4963 = select i1 %4961, float %4962, float 0.000000e+00
  %4964 = fmul fast float %4963, %4653
  %4965 = fmul fast float %4963, %4654
  %4966 = fmul fast float %4963, %4655
  %4967 = fadd fast float %4964, -1.000000e+00
  %4968 = fadd fast float %4965, -1.000000e+00
  %4969 = fadd fast float %4966, -1.000000e+00
  %4970 = fmul fast float %4967, 5.000000e-01
  %4971 = fmul fast float %4968, 5.000000e-01
  %4972 = fmul fast float %4969, 5.000000e-01
  %4973 = fadd fast float %4970, 1.000000e+00
  %4974 = fadd fast float %4971, 1.000000e+00
  %4975 = fadd fast float %4972, 1.000000e+00
  %4976 = fmul fast float %4951, %4907
  %4977 = fmul fast float %4952, %4908
  %4978 = fmul fast float %4953, %4909
  %4979 = fsub fast float 1.000000e+00, %4663
  %4980 = bitcast float %4979 to i32
  %4981 = sitofp i32 %4980 to float
  %4982 = fmul fast float %4981, 5.000000e+00
  %4983 = fadd fast float %4982, 0xC1EFBF8940000000
  %4984 = fptosi float %4983 to i32
  %4985 = bitcast i32 %4984 to float
  %4986 = fmul fast float %4985, %4044
  %4987 = fmul fast float %4903, %4986
  %4988 = fmul fast float %4987, %4956
  %4989 = fmul fast float %4988, %4973
  %4990 = fmul fast float %4904, %4986
  %4991 = fmul fast float %4990, %4956
  %4992 = fmul fast float %4991, %4974
  %4993 = fmul fast float %4905, %4986
  %4994 = fmul fast float %4993, %4956
  %4995 = fmul fast float %4994, %4975
  %4996 = fmul fast float %4957, %4070
  %4997 = fmul fast float %4958, %4070
  %4998 = fmul fast float %4959, %4070
  %4999 = fadd fast float %4976, %4036
  %5000 = fadd fast float %4999, %4989
  %5001 = fmul fast float %5000, %4070
  %5002 = fadd fast float %4977, %4037
  %5003 = fadd fast float %5002, %4992
  %5004 = fmul fast float %5003, %4070
  %5005 = fadd fast float %4978, %4038
  %5006 = fadd fast float %5005, %4995
  %5007 = fmul fast float %5006, %4070
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5010 = fcmp fast oeq float %5009, 0.000000e+00
  br i1 %5010, label %5238, label %5011

; <label>:5011                                    ; preds = %4950
  %5012 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5008, 2
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = call float @dx.op.dot3.f32(i32 55, float %5016, float %5017, float %5018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = select i1 %208, float %5020, float %5016
  %5024 = select i1 %208, float %5022, float %5017
  %5025 = select i1 %208, float %5021, float %5018
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5028 = fcmp fast une float %5027, 0.000000e+00
  br i1 %5028, label %5029, label %5046

; <label>:5029                                    ; preds = %5011
  %5030 = fptoui float %75 to i32
  %5031 = fptoui float %76 to i32
  %5032 = lshr i32 %5030, 4
  %5033 = lshr i32 %5031, 4
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5036 = fptoui float %5035 to i32
  %5037 = add i32 %5036, 15
  %5038 = lshr i32 %5037, 4
  %5039 = mul i32 %5038, %5033
  %5040 = add i32 %5039, %5032
  %5041 = shl i32 %5040, 3
  %5042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5041, i32 undef)  ; BufferLoad(srv,index,wot)
  %5043 = extractvalue %dx.types.ResRet.i32 %5042, 0
  %5044 = and i32 %5043, -268435456
  %5045 = icmp eq i32 %5044, -1342177280
  br i1 %5045, label %5056, label %5046

; <label>:5046                                    ; preds = %5029, %5011
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 3
  %5050 = fmul fast float %5048, %75
  %5051 = fmul fast float %5049, %76
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5050, float %5051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  br label %5056

; <label>:5056                                    ; preds = %5046, %5029
  %5057 = phi float [ %5053, %5046 ], [ 0.000000e+00, %5029 ]
  %5058 = phi float [ %5054, %5046 ], [ 0.000000e+00, %5029 ]
  %5059 = phi float [ %5055, %5046 ], [ 0.000000e+00, %5029 ]
  %5060 = call float @dx.op.binary.f32(i32 36, float %5058, float %5059)  ; FMin(a,b)
  %5061 = call float @dx.op.binary.f32(i32 36, float %5057, float %5060)  ; FMin(a,b)
  %5062 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5062, label %5063, label %5238, !dx.controlflow.hints !75

; <label>:5063                                    ; preds = %5056
  %5064 = fmul fast float %5057, %5023
  %5065 = fmul fast float %5058, %5024
  %5066 = fmul fast float %5059, %5025
  %5067 = fsub fast float %5012, %154
  %5068 = fsub fast float %5013, %155
  %5069 = fsub fast float %5014, %156
  %5070 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = call float @dx.op.unary.f32(i32 25, float %5070)  ; Rsqrt(value)
  %5072 = fmul fast float %5071, %5067
  %5073 = fmul fast float %5071, %5068
  %5074 = fmul fast float %5071, %5069
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5078 = fmul fast float %5077, %5077
  %5079 = fmul fast float %5078, %4676
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5077
  %5082 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = fmul fast float %5082, %5082
  %5084 = call float @dx.op.unary.f32(i32 6, float %5075)  ; FAbs(value)
  %5085 = fsub fast float 1.000000e+00, %4659
  %5086 = call float @dx.op.binary.f32(i32 35, float %5085, float 0x3F847AE140000000)  ; FMax(a,b)
  %5087 = fmul fast float %5086, %5086
  %5088 = fmul fast float %5087, %5087
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = fmul fast float %4663, %4663
  %5091 = fmul fast float %5090, %5089
  %5092 = fadd fast float %5091, %5088
  %5093 = bitcast float %5092 to i32
  %5094 = ashr i32 %5093, 1
  %5095 = add nsw i32 %5094, 532487669
  %5096 = bitcast i32 %5095 to float
  %5097 = fadd fast float %5096, %4663
  %5098 = fmul fast float %5088, %5083
  %5099 = fsub fast float 1.000000e+00, %5083
  %5100 = fadd fast float %5099, %5098
  %5101 = fmul fast float %5084, %5084
  %5102 = fmul fast float %5101, %5089
  %5103 = fadd fast float %5102, %5088
  %5104 = bitcast float %5103 to i32
  %5105 = ashr i32 %5104, 1
  %5106 = add nsw i32 %5105, 532487669
  %5107 = bitcast i32 %5106 to float
  %5108 = fadd fast float %5107, %5084
  %5109 = fmul fast float %5100, %5100
  %5110 = fmul fast float %5109, %5097
  %5111 = fmul fast float %5110, %5108
  %5112 = fdiv fast float 0x3FF0A00000000000, %5111
  %5113 = fmul fast float %5112, %5088
  %5114 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = bitcast float %5115 to i32
  %5117 = sitofp i32 %5116 to float
  %5118 = fmul fast float %5117, 5.000000e+00
  %5119 = fadd fast float %5118, 0xC1EFBF8940000000
  %5120 = fptosi float %5119 to i32
  %5121 = bitcast i32 %5120 to float
  %5122 = fsub fast float 1.000000e+00, %4650
  %5123 = fsub fast float 1.000000e+00, %4651
  %5124 = fsub fast float 1.000000e+00, %4661
  %5125 = fmul fast float %5121, %5122
  %5126 = fmul fast float %5121, %5123
  %5127 = fmul fast float %5121, %5124
  %5128 = fadd fast float %5125, %4650
  %5129 = fadd fast float %5126, %4651
  %5130 = fadd fast float %5127, %4661
  br i1 %4923, label %5131, label %5154

; <label>:5131                                    ; preds = %5063
  %5132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4043, float %5114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.ResRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.ResRet.f32 %5132, 2
  %5136 = fadd fast float %5133, -5.000000e-01
  %5137 = fadd fast float %5134, -5.000000e-01
  %5138 = fadd fast float %5135, -5.000000e-01
  %5139 = fmul fast float %4650, 4.000000e+00
  %5140 = fmul fast float %5139, %5122
  %5141 = fmul fast float %5140, %5136
  %5142 = fmul fast float %4651, 4.000000e+00
  %5143 = fmul fast float %5142, %5123
  %5144 = fmul fast float %5143, %5137
  %5145 = fmul fast float %4661, 4.000000e+00
  %5146 = fmul fast float %5145, %5124
  %5147 = fmul fast float %5146, %5138
  %5148 = fadd fast float %5141, %5128
  %5149 = fadd fast float %5144, %5129
  %5150 = fadd fast float %5147, %5130
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  br label %5154

; <label>:5154                                    ; preds = %5131, %5063
  %5155 = phi float [ %5151, %5131 ], [ %5128, %5063 ]
  %5156 = phi float [ %5152, %5131 ], [ %5129, %5063 ]
  %5157 = phi float [ %5153, %5131 ], [ %5130, %5063 ]
  %5158 = fmul fast float %5075, 9.843750e-01
  %5159 = fadd fast float %5158, 7.812500e-03
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5159, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 3
  %5163 = fmul fast float %5161, %4650
  %5164 = fmul fast float %5161, %4651
  %5165 = fmul fast float %5161, %4661
  %5166 = fadd fast float %5163, %5162
  %5167 = fadd fast float %5164, %5162
  %5168 = fadd fast float %5165, %5162
  br i1 %4923, label %5169, label %5192

; <label>:5169                                    ; preds = %5154
  %5170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4043, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = fadd fast float %5171, -5.000000e-01
  %5175 = fadd fast float %5172, -5.000000e-01
  %5176 = fadd fast float %5173, -5.000000e-01
  %5177 = fmul fast float %4650, 4.000000e+00
  %5178 = fmul fast float %5177, %5122
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %4651, 4.000000e+00
  %5181 = fmul fast float %5180, %5123
  %5182 = fmul fast float %5181, %5175
  %5183 = fmul fast float %4661, 4.000000e+00
  %5184 = fmul fast float %5183, %5124
  %5185 = fmul fast float %5184, %5176
  %5186 = fadd fast float %5179, %5166
  %5187 = fadd fast float %5182, %5167
  %5188 = fadd fast float %5185, %5168
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5191 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  br label %5192

; <label>:5192                                    ; preds = %5169, %5154
  %5193 = phi float [ %5189, %5169 ], [ %5166, %5154 ]
  %5194 = phi float [ %5190, %5169 ], [ %5167, %5154 ]
  %5195 = phi float [ %5191, %5169 ], [ %5168, %5154 ]
  %5196 = call float @dx.op.binary.f32(i32 35, float %5194, float %5195)  ; FMax(a,b)
  %5197 = call float @dx.op.binary.f32(i32 35, float %5193, float %5196)  ; FMax(a,b)
  %5198 = fsub fast float 1.000000e+00, %5197
  %5199 = fmul fast float %5155, %5113
  %5200 = fmul fast float %5156, %5113
  %5201 = fmul fast float %5157, %5113
  %5202 = fsub fast float 1.000000e+00, %5076
  %5203 = bitcast float %5202 to i32
  %5204 = sitofp i32 %5203 to float
  %5205 = fmul fast float %5204, 5.000000e+00
  %5206 = fadd fast float %5205, 0xC1EFBF8940000000
  %5207 = fptosi float %5206 to i32
  %5208 = bitcast i32 %5207 to float
  %5209 = fmul fast float %5208, %4044
  %5210 = fmul fast float %5198, %5209
  %5211 = fmul fast float %5210, %4973
  %5212 = fmul fast float %5210, %4974
  %5213 = fmul fast float %5210, %4975
  %5214 = fadd fast float %5211, %5199
  %5215 = fadd fast float %5212, %5200
  %5216 = fadd fast float %5213, %5201
  %5217 = fmul fast float %5081, %5064
  %5218 = fmul fast float %5217, %5198
  %5219 = fmul fast float %5081, %5065
  %5220 = fmul fast float %5219, %5198
  %5221 = fmul fast float %5081, %5066
  %5222 = fmul fast float %5221, %5198
  %5223 = fmul fast float %5217, %5214
  %5224 = fmul fast float %5219, %5215
  %5225 = fmul fast float %5221, %5216
  %5226 = fadd fast float %5218, %4957
  %5227 = fmul fast float %5226, %4070
  %5228 = fadd fast float %5220, %4958
  %5229 = fmul fast float %5228, %4070
  %5230 = fadd fast float %5222, %4959
  %5231 = fmul fast float %5230, %4070
  %5232 = fadd fast float %5223, %5000
  %5233 = fmul fast float %5232, %4070
  %5234 = fadd fast float %5224, %5003
  %5235 = fmul fast float %5234, %4070
  %5236 = fadd fast float %5225, %5006
  %5237 = fmul fast float %5236, %4070
  br label %5238

; <label>:5238                                    ; preds = %5192, %5056, %4950
  %5239 = phi float [ %5001, %4950 ], [ %5001, %5056 ], [ %5233, %5192 ]
  %5240 = phi float [ %5004, %4950 ], [ %5004, %5056 ], [ %5235, %5192 ]
  %5241 = phi float [ %5007, %4950 ], [ %5007, %5056 ], [ %5237, %5192 ]
  %5242 = phi float [ %4996, %4950 ], [ %4996, %5056 ], [ %5227, %5192 ]
  %5243 = phi float [ %4997, %4950 ], [ %4997, %5056 ], [ %5229, %5192 ]
  %5244 = phi float [ %4998, %4950 ], [ %4998, %5056 ], [ %5231, %5192 ]
  %5245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.i32 %5245, 0
  %5247 = icmp eq i32 %5246, 0
  br i1 %5247, label %5682, label %5248

; <label>:5248                                    ; preds = %5238
  %5249 = fptoui float %75 to i32
  %5250 = fptoui float %76 to i32
  %5251 = lshr i32 %5249, 4
  %5252 = lshr i32 %5250, 4
  %5253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.i32 %5253, 0
  %5255 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5252, i32 %5254, i32 %5251)  ; UMad(a,b,c)
  %5256 = add nsw i32 %5246, -1
  %5257 = call i32 @dx.op.binary.i32(i32 37, i32 %5256, i32 0)  ; IMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5259 = fptoui float %5258 to i32
  %5260 = lshr i32 %5259, 5
  %5261 = call i32 @dx.op.binary.i32(i32 40, i32 %5260, i32 8191)  ; UMin(a,b)
  %5262 = shl i32 %5261, 2
  %5263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.i32 %5263, 0
  %5265 = lshr i32 %5264, 16
  %5266 = and i32 %5264, 65535
  %5267 = lshr i32 %5264, 21
  %5268 = lshr i32 %5266, 5
  %5269 = call i32 @dx.op.binary.i32(i32 40, i32 %5268, i32 %5257)  ; UMin(a,b)
  %5270 = icmp ugt i32 %5267, %5269
  br i1 %5270, label %5682, label %5271

; <label>:5271                                    ; preds = %5248
  br label %5272

; <label>:5272                                    ; preds = %5672, %5271
  %5273 = phi i32 [ %5679, %5672 ], [ %5267, %5271 ]
  %5274 = phi float [ %5673, %5672 ], [ %5239, %5271 ]
  %5275 = phi float [ %5674, %5672 ], [ %5240, %5271 ]
  %5276 = phi float [ %5675, %5672 ], [ %5241, %5271 ]
  %5277 = phi float [ %5676, %5672 ], [ %5242, %5271 ]
  %5278 = phi float [ %5677, %5672 ], [ %5243, %5271 ]
  %5279 = phi float [ %5678, %5672 ], [ %5244, %5271 ]
  %5280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.i32 %5280, 0
  %5282 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5255, i32 %5281, i32 %5273)  ; UMad(a,b,c)
  %5283 = shl i32 %5282, 2
  %5284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.i32 %5284, 0
  %5286 = shl i32 %5273, 5
  %5287 = sub nsw i32 %5265, %5286
  %5288 = call i32 @dx.op.binary.i32(i32 37, i32 %5287, i32 0)  ; IMax(a,b)
  %5289 = call i32 @dx.op.binary.i32(i32 38, i32 %5288, i32 31)  ; IMin(a,b)
  %5290 = sub nsw i32 1, %5265
  %5291 = add nsw i32 %5290, %5266
  %5292 = call i32 @dx.op.binary.i32(i32 37, i32 %5291, i32 0)  ; IMax(a,b)
  %5293 = call i32 @dx.op.binary.i32(i32 38, i32 %5292, i32 32)  ; IMin(a,b)
  %5294 = and i32 %5293, 31
  %5295 = shl i32 -1, %5294
  %5296 = xor i32 %5295, -1
  %5297 = and i32 %5289, 31
  %5298 = shl i32 %5296, %5297
  %5299 = icmp eq i32 %5293, 32
  %5300 = select i1 %5299, i32 -1, i32 %5298
  %5301 = and i32 %5300, %5285
  %5302 = icmp eq i32 %5301, 0
  br i1 %5302, label %5672, label %5303

; <label>:5303                                    ; preds = %5272
  br label %5304

; <label>:5304                                    ; preds = %5384, %5303
  %5305 = phi i32 [ %5316, %5384 ], [ %5301, %5303 ]
  %5306 = phi float [ %5385, %5384 ], [ %5274, %5303 ]
  %5307 = phi float [ %5386, %5384 ], [ %5275, %5303 ]
  %5308 = phi float [ %5387, %5384 ], [ %5276, %5303 ]
  %5309 = phi float [ %5388, %5384 ], [ %5277, %5303 ]
  %5310 = phi float [ %5389, %5384 ], [ %5278, %5303 ]
  %5311 = phi float [ %5390, %5384 ], [ %5279, %5303 ]
  %5312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5305)  ; FirstbitLo(value)
  %5313 = add i32 %5312, %5286
  %5314 = and i32 %5312, 31
  %5315 = shl i32 1, %5314
  %5316 = xor i32 %5315, %5305
  %5317 = mul i32 %5313, 112
  %5318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5317, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5322 = or i32 %5317, 12
  %5323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = add i32 %5317, 44
  %5326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.f32 %5326, 0
  %5328 = add i32 %5317, 48
  %5329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5333 = add i32 %5317, 80
  %5334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = select i1 %208, float %5335, float %5319
  %5339 = select i1 %208, float %5337, float %5320
  %5340 = select i1 %208, float %5336, float %5321
  %5341 = fsub fast float %5330, %134
  %5342 = fsub fast float %5331, %135
  %5343 = fsub fast float %5332, %136
  %5344 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 24, float %5344)  ; Sqrt(value)
  %5346 = fdiv fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5346, %5341
  %5348 = fmul fast float %5346, %5342
  %5349 = fmul fast float %5346, %5343
  %5350 = fadd fast float %5345, %5324
  %5351 = fdiv fast float 1.000000e+00, %5350
  %5352 = fmul float %5327, %5351
  %5353 = fmul float %5352, %5352
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = and i32 %5315, %5301
  %5356 = icmp eq i32 %5355, 0
  br i1 %5356, label %5379, label %5357, !dx.controlflow.hints !76

; <label>:5357                                    ; preds = %5304
  %5358 = lshr i32 %5249, 5
  %5359 = lshr i32 %5250, 5
  %5360 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5358, i32 %5359, i32 %5313, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5361 = extractvalue %dx.types.ResRet.i32 %5360, 0
  %5362 = and i32 %5361, 3
  %5363 = icmp eq i32 %5362, 0
  %5364 = select i1 %5363, float 1.000000e+00, float 0.000000e+00
  %5365 = icmp eq i32 %5362, 3
  br i1 %5365, label %5366, label %5379

; <label>:5366                                    ; preds = %5357
  %5367 = lshr i32 %5361, 10
  %5368 = and i32 %5367, 8160
  %5369 = and i32 %5250, 31
  %5370 = or i32 %5368, %5369
  %5371 = lshr i32 %5361, 1
  %5372 = and i32 %5371, 16352
  %5373 = and i32 %5249, 31
  %5374 = or i32 %5372, %5373
  %5375 = lshr i32 %5361, 23
  %5376 = and i32 %5375, 255
  %5377 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5374, i32 %5370, i32 %5376, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  br label %5379

; <label>:5379                                    ; preds = %5366, %5357, %5304
  %5380 = phi float [ %5378, %5366 ], [ %5364, %5357 ], [ 0.000000e+00, %5304 ]
  %5381 = call float @dx.op.binary.f32(i32 36, float %5380, float %5380)  ; FMin(a,b)
  %5382 = call float @dx.op.binary.f32(i32 36, float %5380, float %5381)  ; FMin(a,b)
  %5383 = fcmp fast ogt float %5382, 0.000000e+00
  br i1 %5383, label %5392, label %5384, !dx.controlflow.hints !77

; <label>:5384                                    ; preds = %5628, %5379
  %5385 = phi float [ %5306, %5379 ], [ %5668, %5628 ]
  %5386 = phi float [ %5307, %5379 ], [ %5669, %5628 ]
  %5387 = phi float [ %5308, %5379 ], [ %5670, %5628 ]
  %5388 = phi float [ %5309, %5379 ], [ %5662, %5628 ]
  %5389 = phi float [ %5310, %5379 ], [ %5663, %5628 ]
  %5390 = phi float [ %5311, %5379 ], [ %5664, %5628 ]
  %5391 = icmp eq i32 %5305, %5315
  br i1 %5391, label %5671, label %5304

; <label>:5392                                    ; preds = %5379
  %5393 = fmul fast float %5380, %5338
  %5394 = fmul fast float %5380, %5339
  %5395 = fmul fast float %5380, %5340
  %5396 = fsub fast float %5332, %4467
  %5397 = fcmp fast ogt float %5396, 0.000000e+00
  %5398 = fsub fast float %136, %4467
  %5399 = fcmp fast ogt float %5398, 0.000000e+00
  %5400 = xor i1 %5399, %5397
  %5401 = fsub fast float %4467, %5332
  %5402 = fmul fast float %5401, 2.000000e+00
  %5403 = fadd fast float %5402, %5332
  %5404 = select i1 %5400, float %5332, float %5403
  %5405 = fsub fast float %5404, %136
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5405, float %5341, float %5342, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = call float @dx.op.unary.f32(i32 25, float %5406)  ; Rsqrt(value)
  %5408 = fmul fast float %5407, %5341
  %5409 = fmul fast float %5407, %5342
  %5410 = fmul fast float %5407, %5405
  %5411 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fdiv fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5413, %5411
  %5415 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5398, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = fcmp fast ogt float %5415, 0.000000e+00
  %5417 = fcmp fast olt float %5415, 0.000000e+00
  %5418 = zext i1 %5416 to i32
  %5419 = zext i1 %5417 to i32
  %5420 = sub nsw i32 %5418, %5419
  %5421 = sitofp i32 %5420 to float
  %5422 = fsub fast float %5404, %4467
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5422, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = fcmp fast ogt float %5423, 0.000000e+00
  %5425 = fcmp fast olt float %5423, 0.000000e+00
  %5426 = zext i1 %5424 to i32
  %5427 = zext i1 %5425 to i32
  %5428 = sub nsw i32 %5426, %5427
  %5429 = sitofp i32 %5428 to float
  %5430 = fcmp fast une float %5421, %5429
  br i1 %5430, label %5431, label %5441

; <label>:5431                                    ; preds = %5392
  %5432 = fmul fast float %5414, %5410
  %5433 = fmul fast float %5414, %5409
  %5434 = fmul fast float %5414, %5408
  %5435 = fmul fast float %5434, %5434
  %5436 = fmul fast float %5433, %5433
  %5437 = fadd fast float %5435, %5436
  %5438 = fmul fast float %5432, %5432
  %5439 = fadd fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 24, float %5439)  ; Sqrt(value)
  br label %5453

; <label>:5441                                    ; preds = %5392
  %5442 = icmp slt i32 %5420, 0
  br i1 %5442, label %5443, label %5453

; <label>:5443                                    ; preds = %5441
  %5444 = fsub fast float %134, %5330
  %5445 = fsub fast float %135, %5331
  %5446 = fsub fast float %136, %5404
  %5447 = fmul fast float %5444, %5444
  %5448 = fmul fast float %5445, %5445
  %5449 = fadd fast float %5447, %5448
  %5450 = fmul fast float %5446, %5446
  %5451 = fadd fast float %5449, %5450
  %5452 = call float @dx.op.unary.f32(i32 24, float %5451)  ; Sqrt(value)
  br label %5453

; <label>:5453                                    ; preds = %5443, %5441, %5431
  %5454 = phi float [ %5440, %5431 ], [ %5452, %5443 ], [ 0.000000e+00, %5441 ]
  %5455 = and i1 %5399, %5397
  %5456 = fsub fast float -0.000000e+00, %5454
  %5457 = select i1 %5455, float -0.000000e+00, float %5456
  %5458 = fmul fast float %4468, 0x3FF7154760000000
  %5459 = fmul fast float %5458, %5457
  %5460 = fmul fast float %4469, 0x3FF7154760000000
  %5461 = fmul fast float %5460, %5457
  %5462 = fmul fast float %4470, 0x3FF7154760000000
  %5463 = fmul fast float %5462, %5457
  %5464 = call float @dx.op.unary.f32(i32 21, float %5459)  ; Exp(value)
  %5465 = call float @dx.op.unary.f32(i32 21, float %5461)  ; Exp(value)
  %5466 = call float @dx.op.unary.f32(i32 21, float %5463)  ; Exp(value)
  %5467 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5470 = fmul fast float %5393, %5467
  %5471 = fmul fast float %5394, %5468
  %5472 = fmul fast float %5395, %5469
  %5473 = fsub fast float %5347, %154
  %5474 = fsub fast float %5348, %155
  %5475 = fsub fast float %5349, %156
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5475, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 25, float %5476)  ; Rsqrt(value)
  %5478 = fmul fast float %5477, %5473
  %5479 = fmul fast float %5477, %5474
  %5480 = fmul fast float %5477, %5475
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5348, float %5349, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5484 = fmul fast float %5483, %5354
  %5485 = fmul fast float %5483, %5483
  %5486 = fmul fast float %5485, %4676
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = fmul fast float %5484, %5487
  %5489 = bitcast float %5344 to i32
  %5490 = ashr i32 %5489, 1
  %5491 = sub nsw i32 1597463007, %5490
  %5492 = bitcast i32 %5491 to float
  %5493 = fmul fast float %5492, %5341
  %5494 = fmul fast float %5492, %5342
  %5495 = fmul fast float %5492, %5343
  %5496 = fsub fast float %5493, %154
  %5497 = fsub fast float %5494, %155
  %5498 = fsub fast float %5495, %156
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5496, float %5497, float %5498, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = call float @dx.op.unary.f32(i32 25, float %5499)  ; Rsqrt(value)
  %5501 = fmul fast float %5496, %5500
  %5502 = fmul fast float %5497, %5500
  %5503 = fmul fast float %5498, %5500
  %5504 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fmul fast float %5504, %5504
  %5506 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5507 = fsub fast float 1.000000e+00, %4659
  %5508 = call float @dx.op.binary.f32(i32 35, float %5507, float 0x3F847AE140000000)  ; FMax(a,b)
  %5509 = fmul fast float %5508, %5508
  %5510 = fmul fast float %5509, %5509
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %4663, %4663
  %5513 = fmul fast float %5512, %5511
  %5514 = fadd fast float %5513, %5510
  %5515 = bitcast float %5514 to i32
  %5516 = ashr i32 %5515, 1
  %5517 = add nsw i32 %5516, 532487669
  %5518 = bitcast i32 %5517 to float
  %5519 = fadd fast float %5518, %4663
  %5520 = fmul fast float %5510, %5505
  %5521 = fsub fast float 1.000000e+00, %5505
  %5522 = fadd fast float %5521, %5520
  %5523 = fmul fast float %5506, %5506
  %5524 = fmul fast float %5523, %5511
  %5525 = fadd fast float %5524, %5510
  %5526 = bitcast float %5525 to i32
  %5527 = ashr i32 %5526, 1
  %5528 = add nsw i32 %5527, 532487669
  %5529 = bitcast i32 %5528 to float
  %5530 = fadd fast float %5529, %5506
  %5531 = fmul fast float %5522, %5522
  %5532 = fmul fast float %5531, %5519
  %5533 = fmul fast float %5532, %5530
  %5534 = fdiv fast float 1.000000e+00, %5533
  %5535 = bitcast float %5510 to i32
  %5536 = sitofp i32 %5535 to float
  %5537 = fmul fast float %5536, 0x3FE7F73180000000
  %5538 = fadd fast float %5537, 0x41AFE27C40000000
  %5539 = fptosi float %5538 to i32
  %5540 = bitcast i32 %5539 to float
  %5541 = fmul fast float %5327, 0x3FD80E9D60000000
  %5542 = fmul fast float %5541, %5492
  %5543 = fadd fast float %5540, %5542
  %5544 = bitcast float %5543 to i32
  %5545 = sub nsw i32 2129859010, %5544
  %5546 = bitcast i32 %5545 to float
  %5547 = fmul fast float %5510, %5534
  %5548 = fmul fast float %5547, %5540
  %5549 = fmul fast float %5548, %5546
  %5550 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = bitcast float %5551 to i32
  %5553 = sitofp i32 %5552 to float
  %5554 = fmul fast float %5553, 5.000000e+00
  %5555 = fadd fast float %5554, 0xC1EFBF8940000000
  %5556 = fptosi float %5555 to i32
  %5557 = bitcast i32 %5556 to float
  %5558 = fsub fast float 1.000000e+00, %4650
  %5559 = fsub fast float 1.000000e+00, %4651
  %5560 = fsub fast float 1.000000e+00, %4661
  %5561 = fmul fast float %5557, %5558
  %5562 = fmul fast float %5557, %5559
  %5563 = fmul fast float %5557, %5560
  %5564 = fadd fast float %5561, %4650
  %5565 = fadd fast float %5562, %4651
  %5566 = fadd fast float %5563, %4661
  br i1 %4923, label %5567, label %5590

; <label>:5567                                    ; preds = %5453
  %5568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4043, float %5550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5572 = fadd fast float %5569, -5.000000e-01
  %5573 = fadd fast float %5570, -5.000000e-01
  %5574 = fadd fast float %5571, -5.000000e-01
  %5575 = fmul fast float %4650, 4.000000e+00
  %5576 = fmul fast float %5575, %5558
  %5577 = fmul fast float %5576, %5572
  %5578 = fmul fast float %4651, 4.000000e+00
  %5579 = fmul fast float %5578, %5559
  %5580 = fmul fast float %5579, %5573
  %5581 = fmul fast float %4661, 4.000000e+00
  %5582 = fmul fast float %5581, %5560
  %5583 = fmul fast float %5582, %5574
  %5584 = fadd fast float %5577, %5564
  %5585 = fadd fast float %5580, %5565
  %5586 = fadd fast float %5583, %5566
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  br label %5590

; <label>:5590                                    ; preds = %5567, %5453
  %5591 = phi float [ %5587, %5567 ], [ %5564, %5453 ]
  %5592 = phi float [ %5588, %5567 ], [ %5565, %5453 ]
  %5593 = phi float [ %5589, %5567 ], [ %5566, %5453 ]
  %5594 = fmul fast float %5481, 9.843750e-01
  %5595 = fadd fast float %5594, 7.812500e-03
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5595, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 3
  %5599 = fmul fast float %5597, %4650
  %5600 = fmul fast float %5597, %4651
  %5601 = fmul fast float %5597, %4661
  %5602 = fadd fast float %5599, %5598
  %5603 = fadd fast float %5600, %5598
  %5604 = fadd fast float %5601, %5598
  br i1 %4923, label %5605, label %5628

; <label>:5605                                    ; preds = %5590
  %5606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4043, float %5481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.ResRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.ResRet.f32 %5606, 2
  %5610 = fadd fast float %5607, -5.000000e-01
  %5611 = fadd fast float %5608, -5.000000e-01
  %5612 = fadd fast float %5609, -5.000000e-01
  %5613 = fmul fast float %4650, 4.000000e+00
  %5614 = fmul fast float %5613, %5558
  %5615 = fmul fast float %5614, %5610
  %5616 = fmul fast float %4651, 4.000000e+00
  %5617 = fmul fast float %5616, %5559
  %5618 = fmul fast float %5617, %5611
  %5619 = fmul fast float %4661, 4.000000e+00
  %5620 = fmul fast float %5619, %5560
  %5621 = fmul fast float %5620, %5612
  %5622 = fadd fast float %5615, %5602
  %5623 = fadd fast float %5618, %5603
  %5624 = fadd fast float %5621, %5604
  %5625 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5627 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  br label %5628

; <label>:5628                                    ; preds = %5605, %5590
  %5629 = phi float [ %5625, %5605 ], [ %5602, %5590 ]
  %5630 = phi float [ %5626, %5605 ], [ %5603, %5590 ]
  %5631 = phi float [ %5627, %5605 ], [ %5604, %5590 ]
  %5632 = call float @dx.op.binary.f32(i32 35, float %5630, float %5631)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float %5629, float %5632)  ; FMax(a,b)
  %5634 = fsub fast float 1.000000e+00, %5633
  %5635 = fmul fast float %5591, %5549
  %5636 = fmul fast float %5592, %5549
  %5637 = fmul fast float %5593, %5549
  %5638 = fsub fast float 1.000000e+00, %5482
  %5639 = bitcast float %5638 to i32
  %5640 = sitofp i32 %5639 to float
  %5641 = fmul fast float %5640, 5.000000e+00
  %5642 = fadd fast float %5641, 0xC1EFBF8940000000
  %5643 = fptosi float %5642 to i32
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, %4044
  %5646 = fmul fast float %5634, %5645
  %5647 = fmul fast float %5646, %4973
  %5648 = fmul fast float %5646, %4974
  %5649 = fmul fast float %5646, %4975
  %5650 = fadd fast float %5647, %5635
  %5651 = fadd fast float %5648, %5636
  %5652 = fadd fast float %5649, %5637
  %5653 = fmul fast float %5470, %4070
  %5654 = fmul fast float %5653, %5488
  %5655 = fmul fast float %5654, %5634
  %5656 = fmul fast float %5471, %4070
  %5657 = fmul fast float %5656, %5488
  %5658 = fmul fast float %5657, %5634
  %5659 = fmul fast float %5472, %4070
  %5660 = fmul fast float %5659, %5488
  %5661 = fmul fast float %5660, %5634
  %5662 = fadd fast float %5655, %5309
  %5663 = fadd fast float %5658, %5310
  %5664 = fadd fast float %5661, %5311
  %5665 = fmul fast float %5654, %5650
  %5666 = fmul fast float %5657, %5651
  %5667 = fmul fast float %5660, %5652
  %5668 = fadd fast float %5665, %5306
  %5669 = fadd fast float %5666, %5307
  %5670 = fadd fast float %5667, %5308
  br label %5384

; <label>:5671                                    ; preds = %5384
  br label %5672

; <label>:5672                                    ; preds = %5671, %5272
  %5673 = phi float [ %5274, %5272 ], [ %5385, %5671 ]
  %5674 = phi float [ %5275, %5272 ], [ %5386, %5671 ]
  %5675 = phi float [ %5276, %5272 ], [ %5387, %5671 ]
  %5676 = phi float [ %5277, %5272 ], [ %5388, %5671 ]
  %5677 = phi float [ %5278, %5272 ], [ %5389, %5671 ]
  %5678 = phi float [ %5279, %5272 ], [ %5390, %5671 ]
  %5679 = add i32 %5273, 1
  %5680 = icmp ugt i32 %5679, %5269
  br i1 %5680, label %5681, label %5272

; <label>:5681                                    ; preds = %5672
  br label %5682

; <label>:5682                                    ; preds = %5681, %5248, %5238
  %5683 = phi float [ %5239, %5238 ], [ %5239, %5248 ], [ %5673, %5681 ]
  %5684 = phi float [ %5240, %5238 ], [ %5240, %5248 ], [ %5674, %5681 ]
  %5685 = phi float [ %5241, %5238 ], [ %5241, %5248 ], [ %5675, %5681 ]
  %5686 = phi float [ %5242, %5238 ], [ %5242, %5248 ], [ %5676, %5681 ]
  %5687 = phi float [ %5243, %5238 ], [ %5243, %5248 ], [ %5677, %5681 ]
  %5688 = phi float [ %5244, %5238 ], [ %5244, %5248 ], [ %5678, %5681 ]
  %5689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.i32 %5689, 3
  %5691 = bitcast i32 %5690 to float
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5692, %168
  %5694 = fadd fast float %5693, %5691
  %5695 = call float @dx.op.unary.f32(i32 24, float %4653)  ; Sqrt(value)
  %5696 = call float @dx.op.unary.f32(i32 24, float %4654)  ; Sqrt(value)
  %5697 = call float @dx.op.unary.f32(i32 24, float %4655)  ; Sqrt(value)
  %5698 = fmul fast float %5695, %5686
  %5699 = fmul fast float %5696, %5687
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 0
  br i1 %208, label %5702, label %5731

; <label>:5702                                    ; preds = %5682
  %5703 = fadd fast float %5688, %4046
  %5704 = fmul fast float %5703, %4048
  %5705 = fsub fast float 1.000000e+00, %4048
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 3
  %5709 = fmul fast float %5708, %5706
  %5710 = fadd fast float %5709, %5704
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5713 = fmul fast float %5712, %4979
  %5714 = fsub fast float %5710, %5713
  %5715 = fadd fast float %5699, %5698
  %5716 = fmul fast float %5701, %5715
  %5717 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5718 = fsub fast float %5714, %5717
  %5719 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5720 = fmul fast float %5718, %5719
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5724 = fsub fast float %5721, %5723
  %5725 = fmul fast float %5724, 1.000000e+01
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fsub fast float %4047, %5694
  %5728 = fmul fast float %5726, %5727
  %5729 = fadd fast float %5728, %5694
  %5730 = fmul fast float %5729, %5721
  br label %5747

; <label>:5731                                    ; preds = %5682
  %5732 = fmul fast float %5697, %5688
  %5733 = fmul fast float %5701, %5698
  %5734 = fmul fast float %5701, %5699
  %5735 = fmul fast float %5732, %5701
  %5736 = add i32 %35, 356
  %5737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5736, i32 undef)  ; BufferLoad(srv,index,wot)
  %5738 = extractvalue %dx.types.ResRet.i32 %5737, 0
  %5739 = and i32 %5738, 32
  %5740 = icmp eq i32 %5739, 0
  br i1 %5740, label %5747, label %5741

; <label>:5741                                    ; preds = %5731
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = fmul fast float %5743, 0x3FE99999A0000000
  %5745 = fadd fast float %5743, %5733
  %5746 = fadd fast float %5744, %5735
  br label %5747

; <label>:5747                                    ; preds = %5741, %5731, %5702
  %5748 = phi float [ %5716, %5702 ], [ %5745, %5741 ], [ %5733, %5731 ]
  %5749 = phi float [ %5730, %5702 ], [ %5734, %5741 ], [ %5734, %5731 ]
  %5750 = phi float [ %5729, %5702 ], [ %5746, %5741 ], [ %5735, %5731 ]
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = fmul fast float %5752, %5684
  %5754 = fmul fast float %5752, %5685
  %5755 = fadd fast float %5684, %5683
  %5756 = select i1 %208, float %5755, float %5683
  %5757 = fmul float %5756, %5752
  %5758 = select i1 %208, float 0.000000e+00, float %5753
  %5759 = select i1 %208, float 0.000000e+00, float %5754
  %5760 = fmul fast float %5748, %5695
  %5761 = fmul fast float %5749, %5696
  %5762 = fmul fast float %5750, %5697
  %5763 = fadd fast float %5757, %5760
  %5764 = fadd fast float %5758, %5761
  %5765 = fadd fast float %5759, %5762
  %5766 = select i1 %208, float %5749, float %5764
  %5767 = select i1 %208, float %5750, float %5765
  %5768 = call float @dx.op.binary.f32(i32 36, float %5763, float 3.225500e+04)  ; FMin(a,b)
  %5769 = call float @dx.op.binary.f32(i32 36, float %5766, float 3.225500e+04)  ; FMin(a,b)
  %5770 = call float @dx.op.binary.f32(i32 36, float %5767, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5768)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5769)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5770)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

