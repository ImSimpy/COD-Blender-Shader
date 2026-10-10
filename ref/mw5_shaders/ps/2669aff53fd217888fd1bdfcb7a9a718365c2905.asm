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
; shader hash: 487fb77e302febf57dd9725b43dba376
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
  %359 = add i32 %35, 568
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
  br i1 %349, label %1837, label %885

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
  br i1 %894, label %1837, label %895

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
  br i1 %1183, label %1837, label %1184

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
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 1024
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1567, label %1537

; <label>:1537                                    ; preds = %1529
  %1538 = add i32 %35, 168
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = lshr i32 %1540, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = lshr i32 %1540, 16
  %1549 = and i32 %1548, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = fmul fast float %1543, %1543
  %1553 = fmul fast float %1547, %1547
  %1554 = fmul fast float %1551, %1551
  %1555 = add i32 %35, 540
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1559, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = fmul fast float %1552, %1561
  %1565 = fmul fast float %1553, %1562
  %1566 = fmul fast float %1554, %1563
  br label %1567

; <label>:1567                                    ; preds = %1537, %1529
  %1568 = phi float [ %1564, %1537 ], [ 0.000000e+00, %1529 ]
  %1569 = phi float [ %1565, %1537 ], [ 0.000000e+00, %1529 ]
  %1570 = phi float [ %1566, %1537 ], [ 0.000000e+00, %1529 ]
  %1571 = fcmp fast ogt float %1568, 0.000000e+00
  %1572 = fcmp fast ogt float %1569, 0.000000e+00
  %1573 = fcmp fast ogt float %1570, 0.000000e+00
  %1574 = call float @dx.op.unary.f32(i32 23, float %1568)  ; Log(value)
  %1575 = call float @dx.op.unary.f32(i32 23, float %1569)  ; Log(value)
  %1576 = call float @dx.op.unary.f32(i32 23, float %1570)  ; Log(value)
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = lshr i32 %1578, 7
  %1580 = and i32 %1579, 32752
  %1581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1580)  ; LegacyF16ToF32(value)
  %1582 = fmul fast float %1574, 0xBFE62E4300000000
  %1583 = fmul fast float %1582, %1581
  %1584 = fmul fast float %1575, 0xBFE62E4300000000
  %1585 = fmul fast float %1584, %1581
  %1586 = fmul fast float %1576, 0xBFE62E4300000000
  %1587 = fmul fast float %1586, %1581
  %1588 = select i1 %1571, float %1583, float 1.270000e+02
  %1589 = select i1 %1572, float %1585, float 1.270000e+02
  %1590 = select i1 %1573, float %1587, float 1.270000e+02
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 10240
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1615, label %1595

; <label>:1595                                    ; preds = %1567
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 2048
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1615, label %1600

; <label>:1600                                    ; preds = %1595
  %1601 = add i32 %35, 556
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = add i32 %1603, 0
  %1605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1605, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1607 = extractvalue %dx.types.ResRet.f32 %1606, 3
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = shl i32 %1609, 4
  %1611 = and i32 %1610, 32752
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = fmul fast float %1612, %1607
  %1614 = call float @dx.op.binary.f32(i32 35, float %1613, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1615

; <label>:1615                                    ; preds = %1600, %1595, %1567
  %1616 = phi float [ %1614, %1600 ], [ 0x3F70101020000000, %1595 ], [ 0x3F70101020000000, %1567 ]
  %1617 = add i32 %35, 112
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = lshr i32 %1619, 8
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1403, float %1404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1626 = fmul fast float %1624, %1625
  %1627 = fadd fast float %1626, %1621
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  br i1 %886, label %1630, label %1665

; <label>:1630                                    ; preds = %1615
  %1631 = fmul fast float %1616, 2.000000e+00
  %1632 = fcmp fast olt float %1588, 1.270000e+02
  %1633 = fcmp fast olt float %1589, 1.270000e+02
  %1634 = fcmp fast olt float %1590, 1.270000e+02
  %1635 = fmul fast float %1588, 0xBFF7154760000000
  %1636 = fmul fast float %1635, %1631
  %1637 = fmul fast float %1589, 0xBFF7154760000000
  %1638 = fmul fast float %1637, %1631
  %1639 = fmul fast float %1590, 0xBFF7154760000000
  %1640 = fmul fast float %1639, %1631
  %1641 = call float @dx.op.unary.f32(i32 21, float %1636)  ; Exp(value)
  %1642 = call float @dx.op.unary.f32(i32 21, float %1638)  ; Exp(value)
  %1643 = call float @dx.op.unary.f32(i32 21, float %1640)  ; Exp(value)
  %1644 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1646 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1647 = fadd fast float %1644, -1.000000e+00
  %1648 = select i1 %1632, float %1647, float -1.000000e+00
  %1649 = fadd fast float %1645, -1.000000e+00
  %1650 = select i1 %1633, float %1649, float -1.000000e+00
  %1651 = fadd fast float %1646, -1.000000e+00
  %1652 = select i1 %1634, float %1651, float -1.000000e+00
  %1653 = fmul fast float %1648, %1182
  %1654 = fmul fast float %1650, %1182
  %1655 = fmul fast float %1652, %1182
  %1656 = fadd fast float %1653, 1.000000e+00
  %1657 = fadd fast float %1654, 1.000000e+00
  %1658 = fadd fast float %1655, 1.000000e+00
  %1659 = fmul fast float %1656, %874
  %1660 = fmul fast float %1657, %875
  %1661 = fmul fast float %1658, %876
  %1662 = fmul fast float %1656, %877
  %1663 = fmul fast float %1657, %878
  %1664 = fmul fast float %1658, %879
  br label %1665

; <label>:1665                                    ; preds = %1630, %1615
  %1666 = phi float [ %1659, %1630 ], [ %874, %1615 ]
  %1667 = phi float [ %1660, %1630 ], [ %875, %1615 ]
  %1668 = phi float [ %1661, %1630 ], [ %876, %1615 ]
  %1669 = phi float [ %1662, %1630 ], [ %877, %1615 ]
  %1670 = phi float [ %1663, %1630 ], [ %878, %1615 ]
  %1671 = phi float [ %1664, %1630 ], [ %879, %1615 ]
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 3
  %1675 = icmp eq i32 %1674, 3
  br i1 %1675, label %1754, label %1676

; <label>:1676                                    ; preds = %1665
  %1677 = and i32 %1673, 16
  %1678 = icmp ne i32 %1677, 0
  %1679 = select i1 %1678, float %1182, float 0.000000e+00
  %1680 = icmp eq i32 %1674, 0
  br i1 %1680, label %1681, label %1709

; <label>:1681                                    ; preds = %1676
  %1682 = and i32 %1673, 64
  %1683 = icmp ne i32 %1682, 0
  %1684 = select i1 %1683, float %1182, float 0.000000e+00
  %1685 = fsub fast float %1402, %1666
  %1686 = fsub fast float %1403, %1667
  %1687 = fsub fast float %1404, %1668
  %1688 = fmul fast float %1679, %1685
  %1689 = fmul fast float %1679, %1686
  %1690 = fmul fast float %1679, %1687
  %1691 = fadd fast float %1688, %1666
  %1692 = fadd fast float %1689, %1667
  %1693 = fadd fast float %1690, %1668
  %1694 = fsub fast float %1388, %880
  %1695 = fmul fast float %1679, %1694
  %1696 = fadd fast float %1695, %880
  %1697 = fsub fast float %1530, %1669
  %1698 = fsub fast float %1531, %1670
  %1699 = fsub fast float %1532, %1671
  %1700 = fmul fast float %1684, %1697
  %1701 = fmul fast float %1684, %1698
  %1702 = fmul fast float %1684, %1699
  %1703 = fadd fast float %1700, %1669
  %1704 = fadd fast float %1701, %1670
  %1705 = fadd fast float %1702, %1671
  %1706 = fsub fast float %1629, %884
  %1707 = fmul fast float %1679, %1706
  %1708 = fadd fast float %1707, %884
  br label %1754

; <label>:1709                                    ; preds = %1676
  %1710 = icmp eq i32 %1674, 1
  br i1 %1710, label %1711, label %1724

; <label>:1711                                    ; preds = %1709
  %1712 = fadd fast float %1402, -1.000000e+00
  %1713 = fadd fast float %1403, -1.000000e+00
  %1714 = fadd fast float %1404, -1.000000e+00
  %1715 = fmul fast float %1679, %1712
  %1716 = fmul fast float %1679, %1713
  %1717 = fmul fast float %1679, %1714
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fmul fast float %1718, %1666
  %1722 = fmul fast float %1719, %1667
  %1723 = fmul fast float %1720, %1668
  br label %1754

; <label>:1724                                    ; preds = %1709
  %1725 = icmp eq i32 %1674, 2
  br i1 %1725, label %1726, label %1754

; <label>:1726                                    ; preds = %1724
  %1727 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1728 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1729 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1730 = fadd fast float %1727, -5.000000e-01
  %1731 = fadd fast float %1728, -5.000000e-01
  %1732 = fadd fast float %1729, -5.000000e-01
  %1733 = fmul fast float %1730, %1679
  %1734 = fmul fast float %1731, %1679
  %1735 = fmul fast float %1732, %1679
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fadd fast float %1734, 5.000000e-01
  %1738 = fadd fast float %1735, 5.000000e-01
  %1739 = fmul fast float %1736, 2.000000e+00
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = fmul fast float %1740, %1666
  %1742 = fadd fast float %1741, %1739
  %1743 = fmul fast float %1742, %1666
  %1744 = fmul fast float %1737, 2.000000e+00
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1745, %1667
  %1747 = fadd fast float %1746, %1744
  %1748 = fmul fast float %1747, %1667
  %1749 = fmul fast float %1738, 2.000000e+00
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = fmul fast float %1750, %1668
  %1752 = fadd fast float %1751, %1749
  %1753 = fmul fast float %1752, %1668
  br label %1754

; <label>:1754                                    ; preds = %1726, %1724, %1711, %1681, %1665
  %1755 = phi float [ %1666, %1665 ], [ %1743, %1726 ], [ %1666, %1724 ], [ %1721, %1711 ], [ %1691, %1681 ]
  %1756 = phi float [ %1667, %1665 ], [ %1748, %1726 ], [ %1667, %1724 ], [ %1722, %1711 ], [ %1692, %1681 ]
  %1757 = phi float [ %1668, %1665 ], [ %1753, %1726 ], [ %1668, %1724 ], [ %1723, %1711 ], [ %1693, %1681 ]
  %1758 = phi float [ %1669, %1665 ], [ %1669, %1726 ], [ %1669, %1724 ], [ %1669, %1711 ], [ %1703, %1681 ]
  %1759 = phi float [ %1670, %1665 ], [ %1670, %1726 ], [ %1670, %1724 ], [ %1670, %1711 ], [ %1704, %1681 ]
  %1760 = phi float [ %1671, %1665 ], [ %1671, %1726 ], [ %1671, %1724 ], [ %1671, %1711 ], [ %1705, %1681 ]
  %1761 = phi float [ %880, %1665 ], [ %880, %1726 ], [ %880, %1724 ], [ %880, %1711 ], [ %1696, %1681 ]
  %1762 = phi float [ %884, %1665 ], [ %884, %1726 ], [ %884, %1724 ], [ %884, %1711 ], [ %1708, %1681 ]
  %1763 = and i32 %1673, 12
  %1764 = icmp eq i32 %1763, 12
  br i1 %1764, label %1837, label %1765

; <label>:1765                                    ; preds = %1754
  %1766 = and i32 %1673, 2097184
  %1767 = icmp eq i32 %1766, 2097184
  %1768 = select i1 %1767, float %1182, float 0.000000e+00
  %1769 = and i32 %1673, 4194336
  %1770 = icmp eq i32 %1769, 4194336
  %1771 = select i1 %1770, float %1182, float 0.000000e+00
  %1772 = and i32 %1673, 8388640
  %1773 = icmp eq i32 %1772, 8388640
  %1774 = select i1 %1773, float %1182, float 0.000000e+00
  %1775 = icmp eq i32 %1763, 0
  br i1 %1775, label %1776, label %1789

; <label>:1776                                    ; preds = %1765
  %1777 = fsub fast float %1483, %872
  %1778 = fsub fast float %1484, %873
  %1779 = fmul fast float %1768, %1777
  %1780 = fmul fast float %1768, %1778
  %1781 = fadd fast float %1779, %872
  %1782 = fadd fast float %1780, %873
  %1783 = fsub fast float %1485, %883
  %1784 = fmul fast float %1771, %1783
  %1785 = fadd fast float %1784, %883
  %1786 = fsub fast float %1482, %882
  %1787 = fmul fast float %1774, %1786
  %1788 = fadd fast float %1787, %882
  br label %1837

; <label>:1789                                    ; preds = %1765
  %1790 = icmp eq i32 %1763, 4
  br i1 %1790, label %1791, label %1823

; <label>:1791                                    ; preds = %1789
  %1792 = fmul fast float %1768, %1483
  %1793 = fmul fast float %1768, %1484
  %1794 = fadd fast float %1792, %872
  %1795 = fadd fast float %1793, %873
  %1796 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1797 = fsub fast float %1796, %883
  %1798 = fmul fast float %1797, %1771
  %1799 = fadd fast float %1798, %883
  %1800 = fadd fast float %1482, %882
  %1801 = fmul fast float %1800, 0x3FF337FAE0000000
  %1802 = fmul fast float %882, %882
  %1803 = fmul fast float %1482, %1482
  %1804 = fadd fast float %1803, %1802
  %1805 = fmul fast float %1804, 0x3FE5152B00000000
  %1806 = fmul fast float %882, 0xBFCC1F85E0000000
  %1807 = fmul fast float %1806, %1482
  %1808 = fadd fast float %1807, 0xBFE1363700000000
  %1809 = fadd fast float %1808, %1801
  %1810 = fsub fast float %1809, %1805
  %1811 = fmul fast float %1800, 0x3FBA6F0D00000000
  %1812 = fmul fast float %1804, 0x3FD0432880000000
  %1813 = fmul fast float %882, 0xBFEF110800000000
  %1814 = fmul fast float %1813, %1482
  %1815 = fadd fast float %1814, 1.000000e+00
  %1816 = fsub fast float %1815, %1811
  %1817 = fadd fast float %1816, %1812
  %1818 = fdiv fast float %1810, %1817
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1820 = fsub fast float %1819, %882
  %1821 = fmul fast float %1820, %1774
  %1822 = fadd fast float %1821, %882
  br label %1837

; <label>:1823                                    ; preds = %1789
  %1824 = icmp eq i32 %1763, 8
  br i1 %1824, label %1825, label %1837

; <label>:1825                                    ; preds = %1823
  %1826 = fmul fast float %1768, %1483
  %1827 = fmul fast float %1768, %1484
  %1828 = fadd fast float %1826, %872
  %1829 = fadd fast float %1827, %873
  %1830 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1831 = fsub fast float %1830, %883
  %1832 = fmul fast float %1831, %1771
  %1833 = fadd fast float %1832, %883
  %1834 = fsub fast float %1482, %882
  %1835 = fmul fast float %1774, %1834
  %1836 = fadd fast float %1835, %882
  br label %1837

; <label>:1837                                    ; preds = %1825, %1823, %1791, %1776, %1754, %1181, %885, %871
  %1838 = phi float [ %872, %1754 ], [ %872, %1181 ], [ %872, %871 ], [ %1828, %1825 ], [ %872, %1823 ], [ %1794, %1791 ], [ %1781, %1776 ], [ %872, %885 ]
  %1839 = phi float [ %873, %1754 ], [ %873, %1181 ], [ %873, %871 ], [ %1829, %1825 ], [ %873, %1823 ], [ %1795, %1791 ], [ %1782, %1776 ], [ %873, %885 ]
  %1840 = phi float [ %1755, %1754 ], [ %874, %1181 ], [ %874, %871 ], [ %1755, %1825 ], [ %1755, %1823 ], [ %1755, %1791 ], [ %1755, %1776 ], [ %874, %885 ]
  %1841 = phi float [ %1756, %1754 ], [ %875, %1181 ], [ %875, %871 ], [ %1756, %1825 ], [ %1756, %1823 ], [ %1756, %1791 ], [ %1756, %1776 ], [ %875, %885 ]
  %1842 = phi float [ %1757, %1754 ], [ %876, %1181 ], [ %876, %871 ], [ %1757, %1825 ], [ %1757, %1823 ], [ %1757, %1791 ], [ %1757, %1776 ], [ %876, %885 ]
  %1843 = phi float [ %1758, %1754 ], [ %877, %1181 ], [ %877, %871 ], [ %1758, %1825 ], [ %1758, %1823 ], [ %1758, %1791 ], [ %1758, %1776 ], [ %877, %885 ]
  %1844 = phi float [ %1759, %1754 ], [ %878, %1181 ], [ %878, %871 ], [ %1759, %1825 ], [ %1759, %1823 ], [ %1759, %1791 ], [ %1759, %1776 ], [ %878, %885 ]
  %1845 = phi float [ %1760, %1754 ], [ %879, %1181 ], [ %879, %871 ], [ %1760, %1825 ], [ %1760, %1823 ], [ %1760, %1791 ], [ %1760, %1776 ], [ %879, %885 ]
  %1846 = phi float [ %1761, %1754 ], [ %880, %1181 ], [ %880, %871 ], [ %1761, %1825 ], [ %1761, %1823 ], [ %1761, %1791 ], [ %1761, %1776 ], [ %880, %885 ]
  %1847 = phi float [ %882, %1754 ], [ %882, %1181 ], [ %882, %871 ], [ %1836, %1825 ], [ %882, %1823 ], [ %1822, %1791 ], [ %1788, %1776 ], [ %882, %885 ]
  %1848 = phi float [ %883, %1754 ], [ %883, %1181 ], [ %883, %871 ], [ %1833, %1825 ], [ %883, %1823 ], [ %1799, %1791 ], [ %1785, %1776 ], [ %883, %885 ]
  %1849 = phi float [ %1762, %1754 ], [ %884, %1181 ], [ %884, %871 ], [ %1762, %1825 ], [ %1762, %1823 ], [ %1762, %1791 ], [ %1762, %1776 ], [ %884, %885 ]
  br i1 %351, label %2802, label %1850

; <label>:1850                                    ; preds = %1837
  %1851 = icmp ult i32 %404, 3
  %1852 = add i32 %35, 56
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = add i32 %35, 60
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = or i32 %1857, %1854
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %2802, label %1860

; <label>:1860                                    ; preds = %1850
  %1861 = and i32 %1854, 262144
  %1862 = icmp ne i32 %1861, 0
  %1863 = select i1 %1862, float %38, float 1.000000e+00
  %1864 = select i1 %1862, float %39, float 0.000000e+00
  %1865 = select i1 %1862, float %40, float 0.000000e+00
  %1866 = select i1 %1862, float %41, float 1.000000e+00
  %1867 = select i1 %1862, float %42, float %63
  %1868 = select i1 %1862, float %43, float %64
  %1869 = add i32 %35, 316
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = lshr i32 %1871, 16
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = fmul fast float %1873, 0x3F50624DE0000000
  %1875 = add i32 %35, 120
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = and i32 %1878, 255
  %1880 = lshr i32 %1877, 24
  %1881 = add i32 %35, 324
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 65535
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = lshr i32 %1883, 16
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = add i32 %35, 64
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = lshr i32 %1890, 22
  %1892 = shl nuw nsw i32 %1891, 5
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = shl i32 %1890, 4
  %1895 = and i32 %1894, 32752
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = lshr i32 %1890, 7
  %1898 = and i32 %1897, 32752
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1902 = fmul fast float %1901, 1.000000e+03
  %1903 = fmul fast float %301, %1902
  %1904 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1905 = fadd fast float %1904, %291
  %1906 = fmul fast float %302, %1902
  %1907 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1908 = fadd fast float %1907, %293
  %1909 = fmul fast float %1874, %1902
  %1910 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1911 = fmul fast float %1910, 0x401921FB60000000
  %1912 = fadd fast float %1911, %1893
  %1913 = call float @dx.op.unary.f32(i32 13, float %1912)  ; Sin(value)
  %1914 = call float @dx.op.unary.f32(i32 12, float %1912)  ; Cos(value)
  %1915 = fsub fast float -0.000000e+00, %1913
  %1916 = fadd fast float %1867, -5.000000e-01
  %1917 = fadd fast float %1868, -5.000000e-01
  %1918 = fmul fast float %1885, %1916
  %1919 = fmul fast float %1887, %1917
  %1920 = fadd fast float %1918, 5.000000e-01
  %1921 = fadd fast float %1919, 5.000000e-01
  %1922 = fmul fast float %1896, %1920
  %1923 = fmul fast float %1899, %1921
  %1924 = fmul fast float %1914, %1922
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1915, float %1923, float %1924)  ; FMad(a,b,c)
  %1926 = fmul fast float %1913, %1922
  %1927 = call float @dx.op.tertiary.f32(i32 46, float %1914, float %1923, float %1926)  ; FMad(a,b,c)
  %1928 = fadd fast float %1905, %1925
  %1929 = fadd fast float %1908, %1927
  %1930 = icmp ugt i32 %1879, 1
  %1931 = icmp ugt i32 %1877, 33554431
  %1932 = or i1 %1931, %1930
  br i1 %1932, label %1933, label %1958

; <label>:1933                                    ; preds = %1860
  %1934 = add i32 %35, 260
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = lshr i32 %1936, 16
  %1938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1937)  ; LegacyF16ToF32(value)
  %1939 = fmul fast float %1901, %1938
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = mul nuw nsw i32 %1879, %1880
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1940, %1942
  %1944 = call float @dx.op.unary.f32(i32 27, float %1943)  ; Round_ni(value)
  %1945 = fptoui float %1944 to i32
  %1946 = urem i32 %1945, %1879
  %1947 = udiv i32 %1945, %1880
  %1948 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1949 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1950 = uitofp i32 %1946 to float
  %1951 = uitofp i32 %1947 to float
  %1952 = fadd fast float %1948, %1950
  %1953 = fadd fast float %1949, %1951
  %1954 = uitofp i32 %1879 to float
  %1955 = uitofp i32 %1880 to float
  %1956 = fdiv fast float %1952, %1954
  %1957 = fdiv fast float %1953, %1955
  br label %1958

; <label>:1958                                    ; preds = %1933, %1860
  %1959 = phi float [ %1956, %1933 ], [ %1928, %1860 ]
  %1960 = phi float [ %1957, %1933 ], [ %1929, %1860 ]
  %1961 = and i32 %1854, 16777216
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %2072, label %1963

; <label>:1963                                    ; preds = %1958
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 0
  %1966 = extractvalue %dx.types.CBufRet.f32 %1964, 1
  %1967 = extractvalue %dx.types.CBufRet.f32 %1964, 2
  %1968 = fadd fast float %1965, %134
  %1969 = fadd fast float %1966, %135
  %1970 = fadd fast float %1967, %136
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = icmp eq i32 %36, 65535
  br i1 %1974, label %2069, label %1975

; <label>:1975                                    ; preds = %1963
  %1976 = lshr i32 %36, 1
  %1977 = shl i32 %1976, 2
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %36, 1
  %1981 = icmp ne i32 %1980, 0
  %1982 = lshr i32 %1979, 16
  %1983 = and i32 %1979, 65535
  %1984 = select i1 %1981, i32 %1982, i32 %1983
  %1985 = icmp eq i32 %1984, 65535
  br i1 %1985, label %2065, label %1986

; <label>:1986                                    ; preds = %1975
  %1987 = mul nuw nsw i32 %1984, 40
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = add nuw nsw i32 %1987, 12
  %1993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.ResRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.ResRet.f32 %1993, 2
  %1997 = add nuw nsw i32 %1987, 24
  %1998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = extractvalue %dx.types.ResRet.f32 %1998, 1
  %2001 = extractvalue %dx.types.ResRet.f32 %1998, 2
  %2002 = add nuw nsw i32 %1987, 36
  %2003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = fsub fast float %1968, %1989
  %2006 = fsub fast float %1969, %1990
  %2007 = fsub fast float %1970, %1991
  %2008 = fmul fast float %2004, %2005
  %2009 = fmul fast float %2004, %2006
  %2010 = fmul fast float %2004, %2007
  %2011 = call float @dx.op.unary.f32(i32 27, float %2008)  ; Round_ni(value)
  %2012 = call float @dx.op.unary.f32(i32 27, float %2009)  ; Round_ni(value)
  %2013 = call float @dx.op.unary.f32(i32 27, float %2010)  ; Round_ni(value)
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = fadd fast float %2013, 5.000000e-01
  %2017 = fmul fast float %2014, %1994
  %2018 = fmul fast float %2015, %1995
  %2019 = fmul fast float %2016, %1996
  %2020 = shl i32 %36, 2
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call float @dx.op.unary.f32(i32 22, float %2017)  ; Frc(value)
  %2026 = call float @dx.op.unary.f32(i32 22, float %2018)  ; Frc(value)
  %2027 = call float @dx.op.unary.f32(i32 22, float %2019)  ; Frc(value)
  %2028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2024, %dx.types.Handle %30, float %2025, float %2026, float %2027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.ResRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.ResRet.f32 %2028, 2
  %2032 = fmul fast float %2029, 1.023000e+03
  %2033 = fmul fast float %2030, 1.023000e+03
  %2034 = fmul fast float %2031, 1.023000e+03
  %2035 = fadd fast float %2032, 5.000000e-01
  %2036 = fadd fast float %2033, 5.000000e-01
  %2037 = fadd fast float %2034, 5.000000e-01
  %2038 = call float @dx.op.unary.f32(i32 27, float %2035)  ; Round_ni(value)
  %2039 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = fsub fast float %2008, %2011
  %2042 = fsub fast float %2009, %2012
  %2043 = fsub fast float %2010, %2013
  %2044 = fmul fast float %2041, 7.500000e-01
  %2045 = fmul fast float %2042, 7.500000e-01
  %2046 = fmul fast float %2043, 7.500000e-01
  %2047 = fadd fast float %2011, 1.250000e-01
  %2048 = fadd fast float %2047, %2044
  %2049 = fadd fast float %2048, %2038
  %2050 = fadd fast float %2012, 1.250000e-01
  %2051 = fadd fast float %2050, %2045
  %2052 = fadd fast float %2051, %2039
  %2053 = fadd fast float %2013, 1.250000e-01
  %2054 = fadd fast float %2053, %2046
  %2055 = fadd fast float %2054, %2040
  %2056 = fmul fast float %2049, %1999
  %2057 = fmul fast float %2052, %2000
  %2058 = fmul fast float %2055, %2001
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = add i32 %2060, 0
  %2062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2062, %dx.types.Handle %28, float %2056, float %2057, float %2058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  br label %2065

; <label>:2065                                    ; preds = %1986, %1975
  %2066 = phi float [ %2064, %1986 ], [ -1.000000e+00, %1975 ]
  %2067 = fadd fast float %2066, %1973
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  br label %2069

; <label>:2069                                    ; preds = %2065, %1963
  %2070 = phi float [ %2068, %2065 ], [ %1973, %1963 ]
  %2071 = fmul fast float %2070, %400
  br label %2072

; <label>:2072                                    ; preds = %2069, %1958
  %2073 = phi float [ %2071, %2069 ], [ %400, %1958 ]
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 256
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2124, label %2078

; <label>:2078                                    ; preds = %2072
  %2079 = add i32 %35, 512
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = add i32 %2081, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2083, %dx.types.Handle %72, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = add i32 %35, 132
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = shl i32 %2088, 4
  %2090 = and i32 %2089, 32752
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = lshr i32 %2088, 7
  %2093 = and i32 %2092, 32752
  %2094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2093)  ; LegacyF16ToF32(value)
  %2095 = fsub fast float 1.000000e+00, %2073
  %2096 = call float @dx.op.binary.f32(i32 35, float %2095, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2097 = bitcast float %2073 to i32
  %2098 = sitofp i32 %2097 to float
  %2099 = fadd fast float %2098, 0xC1CFBF8940000000
  %2100 = fmul fast float %2094, %2099
  %2101 = fadd fast float %2100, 0x41CFBF8940000000
  %2102 = fptosi float %2101 to i32
  %2103 = bitcast i32 %2102 to float
  %2104 = bitcast float %2096 to i32
  %2105 = sitofp i32 %2104 to float
  %2106 = fadd fast float %2105, 0xC1CFBF8940000000
  %2107 = fmul fast float %2106, %2094
  %2108 = fadd fast float %2107, 0x41CFBF8940000000
  %2109 = fptosi float %2108 to i32
  %2110 = bitcast i32 %2109 to float
  %2111 = fmul fast float %2103, %2091
  %2112 = fmul fast float %2110, %2091
  %2113 = fsub fast float %2096, %2111
  %2114 = fadd fast float %2112, %2096
  %2115 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2116 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2117 = fsub fast float %2085, %2115
  %2118 = fsub fast float %2116, %2115
  %2119 = bitcast float %2118 to i32
  %2120 = sub nsw i32 2129859010, %2119
  %2121 = bitcast i32 %2120 to float
  %2122 = fmul fast float %2121, %2117
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  br label %2124

; <label>:2124                                    ; preds = %2078, %2072
  %2125 = phi float [ %2123, %2078 ], [ %2073, %2072 ]
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %2127, 128
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2146, label %2130

; <label>:2130                                    ; preds = %2124
  %2131 = add i32 %35, 496
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = add i32 %2133, 0
  %2135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2135, %dx.types.Handle %72, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = and i32 %2139, 524288
  %2141 = icmp ne i32 %2140, 0
  %2142 = fcmp fast ogt float %2137, 0x3FE0101020000000
  %2143 = select i1 %2142, float 1.000000e+00, float 0.000000e+00
  %2144 = select i1 %2141, float %2143, float %2137
  %2145 = fmul fast float %2144, %2125
  br label %2146

; <label>:2146                                    ; preds = %2130, %2124
  %2147 = phi float [ %2145, %2130 ], [ %2125, %2124 ]
  %2148 = fcmp fast ult float %2147, 0x3F70101020000000
  br i1 %2148, label %2802, label %2149

; <label>:2149                                    ; preds = %2146
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = and i32 %2151, 16
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2352, label %2154

; <label>:2154                                    ; preds = %2149
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %35, 448
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %2159, 0
  %2161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2161, %dx.types.Handle %71, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.ResRet.f32 %2162, 1
  %2165 = extractvalue %dx.types.ResRet.f32 %2162, 2
  %2166 = extractvalue %dx.types.ResRet.f32 %2162, 3
  %2167 = and i32 %2156, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = lshr i32 %2156, 8
  %2170 = and i32 %2169, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = fmul fast float %2166, %2168
  %2173 = fadd fast float %2172, %2171
  %2174 = fmul fast float %2173, 0x3F70101000000000
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 512
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2187, label %2179

; <label>:2179                                    ; preds = %2154
  %2180 = add i32 %35, 528
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2182, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2184, %dx.types.Handle %72, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  br label %2187

; <label>:2187                                    ; preds = %2179, %2154
  %2188 = phi float [ %2186, %2179 ], [ 1.000000e+00, %2154 ]
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 33554432
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2299, label %2193

; <label>:2193                                    ; preds = %2187
  %2194 = add i32 %35, 256
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 65535
  %2198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2197)  ; LegacyF16ToF32(value)
  %2199 = lshr i32 %2196, 16
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = add i32 %35, 260
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 65535
  %2205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2204)  ; LegacyF16ToF32(value)
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = lshr i32 %2207, 24
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2209, 0x3F70101020000000
  %2211 = and i32 %2207, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101020000000
  %2214 = lshr i32 %2207, 8
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = fmul fast float %2216, 0x3F70101020000000
  %2218 = lshr i32 %2207, 16
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2220, 0x3F70101020000000
  %2222 = add i32 %35, 252
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = lshr i32 %2224, 24
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2226, 0x3F70101020000000
  %2228 = and i32 %2224, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = lshr i32 %2224, 8
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = lshr i32 %2224, 16
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = bitcast float %2163 to i32
  %2240 = ashr i32 %2239, 1
  %2241 = sub nsw i32 1597463174, %2240
  %2242 = bitcast i32 %2241 to float
  %2243 = fmul fast float %2163, 5.000000e-01
  %2244 = fmul fast float %2242, %2242
  %2245 = fmul fast float %2244, %2243
  %2246 = fsub fast float 1.500000e+00, %2245
  %2247 = fmul fast float %2242, %2163
  %2248 = fmul fast float %2247, %2246
  %2249 = bitcast float %2164 to i32
  %2250 = ashr i32 %2249, 1
  %2251 = sub nsw i32 1597463174, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2164, 5.000000e-01
  %2254 = fmul fast float %2252, %2252
  %2255 = fmul fast float %2254, %2253
  %2256 = fsub fast float 1.500000e+00, %2255
  %2257 = fmul fast float %2252, %2164
  %2258 = fmul fast float %2257, %2256
  %2259 = bitcast float %2165 to i32
  %2260 = ashr i32 %2259, 1
  %2261 = sub nsw i32 1597463174, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2165, 5.000000e-01
  %2264 = fmul fast float %2262, %2262
  %2265 = fmul fast float %2264, %2263
  %2266 = fsub fast float 1.500000e+00, %2265
  %2267 = fmul fast float %2262, %2165
  %2268 = fmul fast float %2267, %2266
  %2269 = fsub fast float %2248, %2230
  %2270 = fsub fast float %2258, %2234
  %2271 = fsub fast float %2268, %2238
  %2272 = fmul fast float %2269, %2198
  %2273 = fmul fast float %2270, %2200
  %2274 = fmul fast float %2271, %2205
  %2275 = fadd fast float %2272, %2213
  %2276 = fadd fast float %2273, %2217
  %2277 = fadd fast float %2274, %2221
  %2278 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2280 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2281 = fmul fast float %2278, %2278
  %2282 = fmul fast float %2279, %2279
  %2283 = fmul fast float %2280, %2280
  %2284 = fsub fast float %2281, %2163
  %2285 = fsub fast float %2282, %2164
  %2286 = fsub fast float %2283, %2165
  %2287 = fmul fast float %2284, %2188
  %2288 = fmul fast float %2285, %2188
  %2289 = fmul fast float %2286, %2188
  %2290 = fadd fast float %2287, %2163
  %2291 = fadd fast float %2288, %2164
  %2292 = fadd fast float %2289, %2165
  %2293 = fadd fast float %2210, %2174
  %2294 = fsub fast float %2293, %2227
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fsub fast float %2295, %2174
  %2297 = fmul fast float %2296, %2188
  %2298 = fadd fast float %2297, %2174
  br label %2352

; <label>:2299                                    ; preds = %2187
  %2300 = and i32 %2190, 134217728
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2336, label %2302

; <label>:2302                                    ; preds = %2299
  %2303 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2304 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2305 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2306 = fadd fast float %2303, -5.000000e-01
  %2307 = fadd fast float %2304, -5.000000e-01
  %2308 = fadd fast float %2305, -5.000000e-01
  %2309 = fmul fast float %2306, %2188
  %2310 = fmul fast float %2307, %2188
  %2311 = fmul fast float %2308, %2188
  %2312 = fadd fast float %2309, 5.000000e-01
  %2313 = fadd fast float %2310, 5.000000e-01
  %2314 = fadd fast float %2311, 5.000000e-01
  %2315 = call float @dx.op.unary.f32(i32 24, float %2163)  ; Sqrt(value)
  %2316 = call float @dx.op.unary.f32(i32 24, float %2164)  ; Sqrt(value)
  %2317 = call float @dx.op.unary.f32(i32 24, float %2165)  ; Sqrt(value)
  %2318 = fmul fast float %2312, 2.000000e+00
  %2319 = fsub fast float 1.000000e+00, %2318
  %2320 = fmul fast float %2319, %2315
  %2321 = fadd fast float %2320, %2318
  %2322 = fmul fast float %2321, %2315
  %2323 = fmul fast float %2313, 2.000000e+00
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = fmul fast float %2324, %2316
  %2326 = fadd fast float %2325, %2323
  %2327 = fmul fast float %2326, %2316
  %2328 = fmul fast float %2314, 2.000000e+00
  %2329 = fsub fast float 1.000000e+00, %2328
  %2330 = fmul fast float %2329, %2317
  %2331 = fadd fast float %2330, %2328
  %2332 = fmul fast float %2331, %2317
  %2333 = fmul fast float %2322, %2322
  %2334 = fmul fast float %2327, %2327
  %2335 = fmul fast float %2332, %2332
  br label %2352

; <label>:2336                                    ; preds = %2299
  %2337 = fmul fast float %278, %278
  %2338 = fmul fast float %282, %282
  %2339 = fmul fast float %286, %286
  %2340 = fadd fast float %2337, -1.000000e+00
  %2341 = fadd fast float %2338, -1.000000e+00
  %2342 = fadd fast float %2339, -1.000000e+00
  %2343 = fmul fast float %2188, %2340
  %2344 = fmul fast float %2188, %2341
  %2345 = fmul fast float %2188, %2342
  %2346 = fadd fast float %2343, 1.000000e+00
  %2347 = fadd fast float %2344, 1.000000e+00
  %2348 = fadd fast float %2345, 1.000000e+00
  %2349 = fmul fast float %2346, %2163
  %2350 = fmul fast float %2347, %2164
  %2351 = fmul fast float %2348, %2165
  br label %2352

; <label>:2352                                    ; preds = %2336, %2302, %2193, %2149
  %2353 = phi float [ %2298, %2193 ], [ %2174, %2302 ], [ %2174, %2336 ], [ 0x3FA23C0BE0000000, %2149 ]
  %2354 = phi float [ %2290, %2193 ], [ %2333, %2302 ], [ %2349, %2336 ], [ 1.000000e+00, %2149 ]
  %2355 = phi float [ %2291, %2193 ], [ %2334, %2302 ], [ %2350, %2336 ], [ 1.000000e+00, %2149 ]
  %2356 = phi float [ %2292, %2193 ], [ %2335, %2302 ], [ %2351, %2336 ], [ 1.000000e+00, %2149 ]
  %2357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.i32 %2357, 1
  %2359 = and i32 %2358, 1
  %2360 = icmp ne i32 %2359, 0
  %2361 = add i32 %35, 356
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 32
  %2365 = icmp ne i32 %2364, 0
  %2366 = and i1 %2360, %2365
  %2367 = select i1 %2366, float 1.000000e+00, float %2354
  %2368 = select i1 %2366, float 0x3FD3333340000000, float %2355
  %2369 = select i1 %2366, float 0x3FD3333340000000, float %2356
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 32
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2446, label %2374

; <label>:2374                                    ; preds = %2352
  %2375 = add i32 %35, 124
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %35, 464
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = add i32 %2380, 0
  %2382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2382, %dx.types.Handle %71, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = extractvalue %dx.types.ResRet.f32 %2383, 3
  %2388 = and i32 %2377, 255
  %2389 = uitofp i32 %2388 to float
  %2390 = lshr i32 %2377, 8
  %2391 = and i32 %2390, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = lshr i32 %2377, 16
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101000000000
  %2397 = fmul fast float %2384, %2389
  %2398 = fadd fast float %2397, %2392
  %2399 = fmul fast float %2398, 0x3F70101000000000
  %2400 = fadd fast float %2385, -5.000000e-01
  %2401 = fadd fast float %2387, -5.000000e-01
  %2402 = fmul fast float %2400, %2396
  %2403 = fmul fast float %2401, %2396
  %2404 = fadd fast float %2402, 5.000000e-01
  %2405 = fadd fast float %2403, 5.000000e-01
  %2406 = fmul fast float %2404, 2.000000e+00
  %2407 = fadd fast float %2406, -1.000000e+00
  %2408 = fmul fast float %2405, 2.000000e+00
  %2409 = fadd fast float %2408, -1.000000e+00
  %2410 = fadd fast float %2407, %2409
  %2411 = fmul fast float %2410, 5.000000e-01
  %2412 = fsub fast float %2407, %2409
  %2413 = fmul fast float %2412, 5.000000e-01
  %2414 = call float @dx.op.unary.f32(i32 6, float %2411)  ; FAbs(value)
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = call float @dx.op.unary.f32(i32 6, float %2413)  ; FAbs(value)
  %2417 = fsub fast float %2415, %2416
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2413, float %2417, float %2411, float %2413, float %2417)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = call float @dx.op.unary.f32(i32 25, float %2418)  ; Rsqrt(value)
  %2420 = fmul fast float %2411, %2419
  %2421 = fmul fast float %2413, %2419
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 67108864
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2442, label %2426

; <label>:2426                                    ; preds = %2374
  %2427 = add i32 %35, 312
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 65535
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 65535
  %2435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2434)  ; LegacyF16ToF32(value)
  %2436 = lshr i32 %2429, 16
  %2437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2436)  ; LegacyF16ToF32(value)
  %2438 = fsub fast float %2399, %2437
  %2439 = fmul fast float %2438, %2431
  %2440 = fadd fast float %2439, %2435
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  br label %2442

; <label>:2442                                    ; preds = %2426, %2374
  %2443 = phi float [ %2441, %2426 ], [ %2399, %2374 ]
  %2444 = call float @dx.op.dot2.f32(i32 54, float %2420, float %2421, float %1863, float %1864)  ; Dot2(ax,ay,bx,by)
  %2445 = call float @dx.op.dot2.f32(i32 54, float %2420, float %2421, float %1865, float %1866)  ; Dot2(ax,ay,bx,by)
  br label %2446

; <label>:2446                                    ; preds = %2442, %2352
  %2447 = phi float [ %2443, %2442 ], [ 0x3FD6666660000000, %2352 ]
  %2448 = phi float [ %2444, %2442 ], [ 0.000000e+00, %2352 ]
  %2449 = phi float [ %2445, %2442 ], [ 0.000000e+00, %2352 ]
  %2450 = phi float [ %2386, %2442 ], [ 1.000000e+00, %2352 ]
  %2451 = add i32 %35, 192
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = lshr i32 %2453, 22
  %2455 = shl nuw nsw i32 %2454, 5
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 64
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2494, label %2461

; <label>:2461                                    ; preds = %2446
  %2462 = add i32 %35, 480
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = add i32 %2464, 0
  %2466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 131072
  %2470 = icmp eq i32 %2469, 0
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2466, %dx.types.Handle %71, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = extractvalue %dx.types.ResRet.f32 %2471, 1
  %2474 = extractvalue %dx.types.ResRet.f32 %2471, 2
  %2475 = fmul fast float %2472, %266
  %2476 = fmul fast float %2473, %269
  %2477 = fmul fast float %2474, %272
  br i1 %2470, label %2484, label %2478

; <label>:2478                                    ; preds = %2461
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 0
  %2481 = fmul fast float %2480, %2475
  %2482 = fmul fast float %2480, %2476
  %2483 = fmul fast float %2480, %2477
  br label %2484

; <label>:2484                                    ; preds = %2478, %2461
  %2485 = phi float [ %2481, %2478 ], [ %2475, %2461 ]
  %2486 = phi float [ %2482, %2478 ], [ %2476, %2461 ]
  %2487 = phi float [ %2483, %2478 ], [ %2477, %2461 ]
  %2488 = fmul fast float %2485, %2456
  %2489 = select i1 %176, float %2488, float %2485
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2489, float %2486, float %2487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = select i1 %176, float 0.000000e+00, float %2485
  %2492 = select i1 %176, float %2490, float %2486
  %2493 = select i1 %176, float 0.000000e+00, float %2487
  br label %2494

; <label>:2494                                    ; preds = %2484, %2446
  %2495 = phi float [ %2491, %2484 ], [ 0.000000e+00, %2446 ]
  %2496 = phi float [ %2492, %2484 ], [ 0.000000e+00, %2446 ]
  %2497 = phi float [ %2493, %2484 ], [ 0.000000e+00, %2446 ]
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 1024
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2532, label %2502

; <label>:2502                                    ; preds = %2494
  %2503 = add i32 %35, 184
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 255
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = lshr i32 %2505, 8
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = fmul fast float %2511, 0x3F70101020000000
  %2513 = lshr i32 %2505, 16
  %2514 = and i32 %2513, 255
  %2515 = uitofp i32 %2514 to float
  %2516 = fmul fast float %2515, 0x3F70101020000000
  %2517 = fmul fast float %2508, %2508
  %2518 = fmul fast float %2512, %2512
  %2519 = fmul fast float %2516, %2516
  %2520 = add i32 %35, 544
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %72, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = fmul fast float %2517, %2526
  %2530 = fmul fast float %2518, %2527
  %2531 = fmul fast float %2519, %2528
  br label %2532

; <label>:2532                                    ; preds = %2502, %2494
  %2533 = phi float [ %2529, %2502 ], [ 0.000000e+00, %2494 ]
  %2534 = phi float [ %2530, %2502 ], [ 0.000000e+00, %2494 ]
  %2535 = phi float [ %2531, %2502 ], [ 0.000000e+00, %2494 ]
  %2536 = fcmp fast ogt float %2533, 0.000000e+00
  %2537 = fcmp fast ogt float %2534, 0.000000e+00
  %2538 = fcmp fast ogt float %2535, 0.000000e+00
  %2539 = call float @dx.op.unary.f32(i32 23, float %2533)  ; Log(value)
  %2540 = call float @dx.op.unary.f32(i32 23, float %2534)  ; Log(value)
  %2541 = call float @dx.op.unary.f32(i32 23, float %2535)  ; Log(value)
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = lshr i32 %2543, 7
  %2545 = and i32 %2544, 32752
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = fmul fast float %2539, 0xBFE62E4300000000
  %2548 = fmul fast float %2547, %2546
  %2549 = fmul fast float %2540, 0xBFE62E4300000000
  %2550 = fmul fast float %2549, %2546
  %2551 = fmul fast float %2541, 0xBFE62E4300000000
  %2552 = fmul fast float %2551, %2546
  %2553 = select i1 %2536, float %2548, float 1.270000e+02
  %2554 = select i1 %2537, float %2550, float 1.270000e+02
  %2555 = select i1 %2538, float %2552, float 1.270000e+02
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 10240
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2580, label %2560

; <label>:2560                                    ; preds = %2532
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = and i32 %2562, 2048
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %2580, label %2565

; <label>:2565                                    ; preds = %2560
  %2566 = add i32 %35, 560
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = add i32 %2568, 0
  %2570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2570, %dx.types.Handle %72, float %1959, float %1960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 3
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = shl i32 %2574, 4
  %2576 = and i32 %2575, 32752
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = fmul fast float %2577, %2572
  %2579 = call float @dx.op.binary.f32(i32 35, float %2578, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2580

; <label>:2580                                    ; preds = %2565, %2560, %2532
  %2581 = phi float [ %2579, %2565 ], [ 0x3F70101020000000, %2560 ], [ 0x3F70101020000000, %2532 ]
  %2582 = add i32 %35, 128
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = lshr i32 %2584, 8
  %2588 = and i32 %2587, 255
  %2589 = uitofp i32 %2588 to float
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = fmul fast float %2589, %2590
  %2592 = fadd fast float %2591, %2586
  %2593 = fmul fast float %2592, 0x3F70101020000000
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  br i1 %1851, label %2595, label %2630

; <label>:2595                                    ; preds = %2580
  %2596 = fmul fast float %2581, 2.000000e+00
  %2597 = fcmp fast olt float %2553, 1.270000e+02
  %2598 = fcmp fast olt float %2554, 1.270000e+02
  %2599 = fcmp fast olt float %2555, 1.270000e+02
  %2600 = fmul fast float %2553, 0xBFF7154760000000
  %2601 = fmul fast float %2600, %2596
  %2602 = fmul fast float %2554, 0xBFF7154760000000
  %2603 = fmul fast float %2602, %2596
  %2604 = fmul fast float %2555, 0xBFF7154760000000
  %2605 = fmul fast float %2604, %2596
  %2606 = call float @dx.op.unary.f32(i32 21, float %2601)  ; Exp(value)
  %2607 = call float @dx.op.unary.f32(i32 21, float %2603)  ; Exp(value)
  %2608 = call float @dx.op.unary.f32(i32 21, float %2605)  ; Exp(value)
  %2609 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2610 = call float @dx.op.unary.f32(i32 7, float %2607)  ; Saturate(value)
  %2611 = call float @dx.op.unary.f32(i32 7, float %2608)  ; Saturate(value)
  %2612 = fadd fast float %2609, -1.000000e+00
  %2613 = select i1 %2597, float %2612, float -1.000000e+00
  %2614 = fadd fast float %2610, -1.000000e+00
  %2615 = select i1 %2598, float %2614, float -1.000000e+00
  %2616 = fadd fast float %2611, -1.000000e+00
  %2617 = select i1 %2599, float %2616, float -1.000000e+00
  %2618 = fmul fast float %2613, %2147
  %2619 = fmul fast float %2615, %2147
  %2620 = fmul fast float %2617, %2147
  %2621 = fadd fast float %2618, 1.000000e+00
  %2622 = fadd fast float %2619, 1.000000e+00
  %2623 = fadd fast float %2620, 1.000000e+00
  %2624 = fmul fast float %2621, %1840
  %2625 = fmul fast float %2622, %1841
  %2626 = fmul fast float %2623, %1842
  %2627 = fmul fast float %2621, %1843
  %2628 = fmul fast float %2622, %1844
  %2629 = fmul fast float %2623, %1845
  br label %2630

; <label>:2630                                    ; preds = %2595, %2580
  %2631 = phi float [ %2624, %2595 ], [ %1840, %2580 ]
  %2632 = phi float [ %2625, %2595 ], [ %1841, %2580 ]
  %2633 = phi float [ %2626, %2595 ], [ %1842, %2580 ]
  %2634 = phi float [ %2627, %2595 ], [ %1843, %2580 ]
  %2635 = phi float [ %2628, %2595 ], [ %1844, %2580 ]
  %2636 = phi float [ %2629, %2595 ], [ %1845, %2580 ]
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 3
  %2640 = icmp eq i32 %2639, 3
  br i1 %2640, label %2719, label %2641

; <label>:2641                                    ; preds = %2630
  %2642 = and i32 %2638, 16
  %2643 = icmp ne i32 %2642, 0
  %2644 = select i1 %2643, float %2147, float 0.000000e+00
  %2645 = icmp eq i32 %2639, 0
  br i1 %2645, label %2646, label %2674

; <label>:2646                                    ; preds = %2641
  %2647 = and i32 %2638, 64
  %2648 = icmp ne i32 %2647, 0
  %2649 = select i1 %2648, float %2147, float 0.000000e+00
  %2650 = fsub fast float %2367, %2631
  %2651 = fsub fast float %2368, %2632
  %2652 = fsub fast float %2369, %2633
  %2653 = fmul fast float %2644, %2650
  %2654 = fmul fast float %2644, %2651
  %2655 = fmul fast float %2644, %2652
  %2656 = fadd fast float %2653, %2631
  %2657 = fadd fast float %2654, %2632
  %2658 = fadd fast float %2655, %2633
  %2659 = fsub fast float %2353, %1846
  %2660 = fmul fast float %2644, %2659
  %2661 = fadd fast float %2660, %1846
  %2662 = fsub fast float %2495, %2634
  %2663 = fsub fast float %2496, %2635
  %2664 = fsub fast float %2497, %2636
  %2665 = fmul fast float %2649, %2662
  %2666 = fmul fast float %2649, %2663
  %2667 = fmul fast float %2649, %2664
  %2668 = fadd fast float %2665, %2634
  %2669 = fadd fast float %2666, %2635
  %2670 = fadd fast float %2667, %2636
  %2671 = fsub fast float %2594, %1849
  %2672 = fmul fast float %2644, %2671
  %2673 = fadd fast float %2672, %1849
  br label %2719

; <label>:2674                                    ; preds = %2641
  %2675 = icmp eq i32 %2639, 1
  br i1 %2675, label %2676, label %2689

; <label>:2676                                    ; preds = %2674
  %2677 = fadd fast float %2367, -1.000000e+00
  %2678 = fadd fast float %2368, -1.000000e+00
  %2679 = fadd fast float %2369, -1.000000e+00
  %2680 = fmul fast float %2644, %2677
  %2681 = fmul fast float %2644, %2678
  %2682 = fmul fast float %2644, %2679
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fadd fast float %2681, 1.000000e+00
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fmul fast float %2683, %2631
  %2687 = fmul fast float %2684, %2632
  %2688 = fmul fast float %2685, %2633
  br label %2719

; <label>:2689                                    ; preds = %2674
  %2690 = icmp eq i32 %2639, 2
  br i1 %2690, label %2691, label %2719

; <label>:2691                                    ; preds = %2689
  %2692 = call float @dx.op.unary.f32(i32 24, float %2367)  ; Sqrt(value)
  %2693 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2694 = call float @dx.op.unary.f32(i32 24, float %2369)  ; Sqrt(value)
  %2695 = fadd fast float %2692, -5.000000e-01
  %2696 = fadd fast float %2693, -5.000000e-01
  %2697 = fadd fast float %2694, -5.000000e-01
  %2698 = fmul fast float %2695, %2644
  %2699 = fmul fast float %2696, %2644
  %2700 = fmul fast float %2697, %2644
  %2701 = fadd fast float %2698, 5.000000e-01
  %2702 = fadd fast float %2699, 5.000000e-01
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fmul fast float %2701, 2.000000e+00
  %2705 = fsub fast float 1.000000e+00, %2704
  %2706 = fmul fast float %2705, %2631
  %2707 = fadd fast float %2706, %2704
  %2708 = fmul fast float %2707, %2631
  %2709 = fmul fast float %2702, 2.000000e+00
  %2710 = fsub fast float 1.000000e+00, %2709
  %2711 = fmul fast float %2710, %2632
  %2712 = fadd fast float %2711, %2709
  %2713 = fmul fast float %2712, %2632
  %2714 = fmul fast float %2703, 2.000000e+00
  %2715 = fsub fast float 1.000000e+00, %2714
  %2716 = fmul fast float %2715, %2633
  %2717 = fadd fast float %2716, %2714
  %2718 = fmul fast float %2717, %2633
  br label %2719

; <label>:2719                                    ; preds = %2691, %2689, %2676, %2646, %2630
  %2720 = phi float [ %2631, %2630 ], [ %2708, %2691 ], [ %2631, %2689 ], [ %2686, %2676 ], [ %2656, %2646 ]
  %2721 = phi float [ %2632, %2630 ], [ %2713, %2691 ], [ %2632, %2689 ], [ %2687, %2676 ], [ %2657, %2646 ]
  %2722 = phi float [ %2633, %2630 ], [ %2718, %2691 ], [ %2633, %2689 ], [ %2688, %2676 ], [ %2658, %2646 ]
  %2723 = phi float [ %2634, %2630 ], [ %2634, %2691 ], [ %2634, %2689 ], [ %2634, %2676 ], [ %2668, %2646 ]
  %2724 = phi float [ %2635, %2630 ], [ %2635, %2691 ], [ %2635, %2689 ], [ %2635, %2676 ], [ %2669, %2646 ]
  %2725 = phi float [ %2636, %2630 ], [ %2636, %2691 ], [ %2636, %2689 ], [ %2636, %2676 ], [ %2670, %2646 ]
  %2726 = phi float [ %1846, %2630 ], [ %1846, %2691 ], [ %1846, %2689 ], [ %1846, %2676 ], [ %2661, %2646 ]
  %2727 = phi float [ %1849, %2630 ], [ %1849, %2691 ], [ %1849, %2689 ], [ %1849, %2676 ], [ %2673, %2646 ]
  %2728 = and i32 %2638, 12
  %2729 = icmp eq i32 %2728, 12
  br i1 %2729, label %2802, label %2730

; <label>:2730                                    ; preds = %2719
  %2731 = and i32 %2638, 2097184
  %2732 = icmp eq i32 %2731, 2097184
  %2733 = select i1 %2732, float %2147, float 0.000000e+00
  %2734 = and i32 %2638, 4194336
  %2735 = icmp eq i32 %2734, 4194336
  %2736 = select i1 %2735, float %2147, float 0.000000e+00
  %2737 = and i32 %2638, 8388640
  %2738 = icmp eq i32 %2737, 8388640
  %2739 = select i1 %2738, float %2147, float 0.000000e+00
  %2740 = icmp eq i32 %2728, 0
  br i1 %2740, label %2741, label %2754

; <label>:2741                                    ; preds = %2730
  %2742 = fsub fast float %2448, %1838
  %2743 = fsub fast float %2449, %1839
  %2744 = fmul fast float %2733, %2742
  %2745 = fmul fast float %2733, %2743
  %2746 = fadd fast float %2744, %1838
  %2747 = fadd fast float %2745, %1839
  %2748 = fsub fast float %2450, %1848
  %2749 = fmul fast float %2736, %2748
  %2750 = fadd fast float %2749, %1848
  %2751 = fsub fast float %2447, %1847
  %2752 = fmul fast float %2739, %2751
  %2753 = fadd fast float %2752, %1847
  br label %2802

; <label>:2754                                    ; preds = %2730
  %2755 = icmp eq i32 %2728, 4
  br i1 %2755, label %2756, label %2788

; <label>:2756                                    ; preds = %2754
  %2757 = fmul fast float %2733, %2448
  %2758 = fmul fast float %2733, %2449
  %2759 = fadd fast float %2757, %1838
  %2760 = fadd fast float %2758, %1839
  %2761 = call float @dx.op.binary.f32(i32 36, float %1848, float %2450)  ; FMin(a,b)
  %2762 = fsub fast float %2761, %1848
  %2763 = fmul fast float %2762, %2736
  %2764 = fadd fast float %2763, %1848
  %2765 = fadd fast float %2447, %1847
  %2766 = fmul fast float %2765, 0x3FF337FAE0000000
  %2767 = fmul fast float %1847, %1847
  %2768 = fmul fast float %2447, %2447
  %2769 = fadd fast float %2768, %2767
  %2770 = fmul fast float %2769, 0x3FE5152B00000000
  %2771 = fmul fast float %1847, 0xBFCC1F85E0000000
  %2772 = fmul fast float %2771, %2447
  %2773 = fadd fast float %2772, 0xBFE1363700000000
  %2774 = fadd fast float %2773, %2766
  %2775 = fsub fast float %2774, %2770
  %2776 = fmul fast float %2765, 0x3FBA6F0D00000000
  %2777 = fmul fast float %2769, 0x3FD0432880000000
  %2778 = fmul fast float %1847, 0xBFEF110800000000
  %2779 = fmul fast float %2778, %2447
  %2780 = fadd fast float %2779, 1.000000e+00
  %2781 = fsub fast float %2780, %2776
  %2782 = fadd fast float %2781, %2777
  %2783 = fdiv fast float %2775, %2782
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fsub fast float %2784, %1847
  %2786 = fmul fast float %2785, %2739
  %2787 = fadd fast float %2786, %1847
  br label %2802

; <label>:2788                                    ; preds = %2754
  %2789 = icmp eq i32 %2728, 8
  br i1 %2789, label %2790, label %2802

; <label>:2790                                    ; preds = %2788
  %2791 = fmul fast float %2733, %2448
  %2792 = fmul fast float %2733, %2449
  %2793 = fadd fast float %2791, %1838
  %2794 = fadd fast float %2792, %1839
  %2795 = call float @dx.op.binary.f32(i32 36, float %1848, float %2450)  ; FMin(a,b)
  %2796 = fsub fast float %2795, %1848
  %2797 = fmul fast float %2796, %2736
  %2798 = fadd fast float %2797, %1848
  %2799 = fsub fast float %2447, %1847
  %2800 = fmul fast float %2739, %2799
  %2801 = fadd fast float %2800, %1847
  br label %2802

; <label>:2802                                    ; preds = %2790, %2788, %2756, %2741, %2719, %2146, %1850, %1837
  %2803 = phi float [ %1838, %2719 ], [ %1838, %2146 ], [ %1838, %1837 ], [ %2793, %2790 ], [ %1838, %2788 ], [ %2759, %2756 ], [ %2746, %2741 ], [ %1838, %1850 ]
  %2804 = phi float [ %1839, %2719 ], [ %1839, %2146 ], [ %1839, %1837 ], [ %2794, %2790 ], [ %1839, %2788 ], [ %2760, %2756 ], [ %2747, %2741 ], [ %1839, %1850 ]
  %2805 = phi float [ %2720, %2719 ], [ %1840, %2146 ], [ %1840, %1837 ], [ %2720, %2790 ], [ %2720, %2788 ], [ %2720, %2756 ], [ %2720, %2741 ], [ %1840, %1850 ]
  %2806 = phi float [ %2721, %2719 ], [ %1841, %2146 ], [ %1841, %1837 ], [ %2721, %2790 ], [ %2721, %2788 ], [ %2721, %2756 ], [ %2721, %2741 ], [ %1841, %1850 ]
  %2807 = phi float [ %2722, %2719 ], [ %1842, %2146 ], [ %1842, %1837 ], [ %2722, %2790 ], [ %2722, %2788 ], [ %2722, %2756 ], [ %2722, %2741 ], [ %1842, %1850 ]
  %2808 = phi float [ %2723, %2719 ], [ %1843, %2146 ], [ %1843, %1837 ], [ %2723, %2790 ], [ %2723, %2788 ], [ %2723, %2756 ], [ %2723, %2741 ], [ %1843, %1850 ]
  %2809 = phi float [ %2724, %2719 ], [ %1844, %2146 ], [ %1844, %1837 ], [ %2724, %2790 ], [ %2724, %2788 ], [ %2724, %2756 ], [ %2724, %2741 ], [ %1844, %1850 ]
  %2810 = phi float [ %2725, %2719 ], [ %1845, %2146 ], [ %1845, %1837 ], [ %2725, %2790 ], [ %2725, %2788 ], [ %2725, %2756 ], [ %2725, %2741 ], [ %1845, %1850 ]
  %2811 = phi float [ %2726, %2719 ], [ %1846, %2146 ], [ %1846, %1837 ], [ %2726, %2790 ], [ %2726, %2788 ], [ %2726, %2756 ], [ %2726, %2741 ], [ %1846, %1850 ]
  %2812 = phi float [ %1847, %2719 ], [ %1847, %2146 ], [ %1847, %1837 ], [ %2801, %2790 ], [ %1847, %2788 ], [ %2787, %2756 ], [ %2753, %2741 ], [ %1847, %1850 ]
  %2813 = phi float [ %1848, %2719 ], [ %1848, %2146 ], [ %1848, %1837 ], [ %2798, %2790 ], [ %1848, %2788 ], [ %2764, %2756 ], [ %2750, %2741 ], [ %1848, %1850 ]
  %2814 = phi float [ %2727, %2719 ], [ %1849, %2146 ], [ %1849, %1837 ], [ %2727, %2790 ], [ %2727, %2788 ], [ %2727, %2756 ], [ %2727, %2741 ], [ %1849, %1850 ]
  br i1 %353, label %3767, label %2815

; <label>:2815                                    ; preds = %2802
  %2816 = icmp ult i32 %404, 4
  %2817 = add i32 %35, 72
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = add i32 %35, 76
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = or i32 %2822, %2819
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %3767, label %2825

; <label>:2825                                    ; preds = %2815
  %2826 = and i32 %2819, 262144
  %2827 = icmp ne i32 %2826, 0
  %2828 = select i1 %2827, float %38, float 1.000000e+00
  %2829 = select i1 %2827, float %39, float 0.000000e+00
  %2830 = select i1 %2827, float %40, float 0.000000e+00
  %2831 = select i1 %2827, float %41, float 1.000000e+00
  %2832 = select i1 %2827, float %42, float %63
  %2833 = select i1 %2827, float %43, float %64
  %2834 = add i32 %35, 332
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = lshr i32 %2836, 16
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = fmul fast float %2838, 0x3F50624DE0000000
  %2840 = add i32 %35, 136
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = lshr i32 %2842, 16
  %2844 = and i32 %2843, 255
  %2845 = lshr i32 %2842, 24
  %2846 = add i32 %35, 340
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = and i32 %2848, 65535
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = lshr i32 %2848, 16
  %2852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2851)  ; LegacyF16ToF32(value)
  %2853 = add i32 %35, 80
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = lshr i32 %2855, 22
  %2857 = shl nuw nsw i32 %2856, 5
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = shl i32 %2855, 4
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2855, 7
  %2863 = and i32 %2862, 32752
  %2864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2863)  ; LegacyF16ToF32(value)
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 3
  %2867 = fmul fast float %2866, 1.000000e+03
  %2868 = fmul fast float %343, %2867
  %2869 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2870 = fadd fast float %2869, %333
  %2871 = fmul fast float %344, %2867
  %2872 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2873 = fadd fast float %2872, %335
  %2874 = fmul fast float %2839, %2867
  %2875 = call float @dx.op.unary.f32(i32 22, float %2874)  ; Frc(value)
  %2876 = fmul fast float %2875, 0x401921FB60000000
  %2877 = fadd fast float %2876, %2858
  %2878 = call float @dx.op.unary.f32(i32 13, float %2877)  ; Sin(value)
  %2879 = call float @dx.op.unary.f32(i32 12, float %2877)  ; Cos(value)
  %2880 = fsub fast float -0.000000e+00, %2878
  %2881 = fadd fast float %2832, -5.000000e-01
  %2882 = fadd fast float %2833, -5.000000e-01
  %2883 = fmul fast float %2850, %2881
  %2884 = fmul fast float %2852, %2882
  %2885 = fadd fast float %2883, 5.000000e-01
  %2886 = fadd fast float %2884, 5.000000e-01
  %2887 = fmul fast float %2861, %2885
  %2888 = fmul fast float %2864, %2886
  %2889 = fmul fast float %2879, %2887
  %2890 = call float @dx.op.tertiary.f32(i32 46, float %2880, float %2888, float %2889)  ; FMad(a,b,c)
  %2891 = fmul fast float %2878, %2887
  %2892 = call float @dx.op.tertiary.f32(i32 46, float %2879, float %2888, float %2891)  ; FMad(a,b,c)
  %2893 = fadd fast float %2870, %2890
  %2894 = fadd fast float %2873, %2892
  %2895 = icmp ugt i32 %2844, 1
  %2896 = icmp ugt i32 %2842, 33554431
  %2897 = or i1 %2896, %2895
  br i1 %2897, label %2898, label %2923

; <label>:2898                                    ; preds = %2825
  %2899 = add i32 %35, 276
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 16
  %2903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2902)  ; LegacyF16ToF32(value)
  %2904 = fmul fast float %2866, %2903
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = mul nuw nsw i32 %2844, %2845
  %2907 = uitofp i32 %2906 to float
  %2908 = fmul fast float %2905, %2907
  %2909 = call float @dx.op.unary.f32(i32 27, float %2908)  ; Round_ni(value)
  %2910 = fptoui float %2909 to i32
  %2911 = urem i32 %2910, %2844
  %2912 = udiv i32 %2910, %2845
  %2913 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2914 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2915 = uitofp i32 %2911 to float
  %2916 = uitofp i32 %2912 to float
  %2917 = fadd fast float %2913, %2915
  %2918 = fadd fast float %2914, %2916
  %2919 = uitofp i32 %2844 to float
  %2920 = uitofp i32 %2845 to float
  %2921 = fdiv fast float %2917, %2919
  %2922 = fdiv fast float %2918, %2920
  br label %2923

; <label>:2923                                    ; preds = %2898, %2825
  %2924 = phi float [ %2921, %2898 ], [ %2893, %2825 ]
  %2925 = phi float [ %2922, %2898 ], [ %2894, %2825 ]
  %2926 = and i32 %2819, 16777216
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %3037, label %2928

; <label>:2928                                    ; preds = %2923
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.CBufRet.f32 %2929, 1
  %2932 = extractvalue %dx.types.CBufRet.f32 %2929, 2
  %2933 = fadd fast float %2930, %134
  %2934 = fadd fast float %2931, %135
  %2935 = fadd fast float %2932, %136
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2939 = icmp eq i32 %36, 65535
  br i1 %2939, label %3034, label %2940

; <label>:2940                                    ; preds = %2928
  %2941 = lshr i32 %36, 1
  %2942 = shl i32 %2941, 2
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %36, 1
  %2946 = icmp ne i32 %2945, 0
  %2947 = lshr i32 %2944, 16
  %2948 = and i32 %2944, 65535
  %2949 = select i1 %2946, i32 %2947, i32 %2948
  %2950 = icmp eq i32 %2949, 65535
  br i1 %2950, label %3030, label %2951

; <label>:2951                                    ; preds = %2940
  %2952 = mul nuw nsw i32 %2949, 40
  %2953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  %2955 = extractvalue %dx.types.ResRet.f32 %2953, 1
  %2956 = extractvalue %dx.types.ResRet.f32 %2953, 2
  %2957 = add nuw nsw i32 %2952, 12
  %2958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = add nuw nsw i32 %2952, 24
  %2963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = add nuw nsw i32 %2952, 36
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = fsub fast float %2933, %2954
  %2971 = fsub fast float %2934, %2955
  %2972 = fsub fast float %2935, %2956
  %2973 = fmul fast float %2969, %2970
  %2974 = fmul fast float %2969, %2971
  %2975 = fmul fast float %2969, %2972
  %2976 = call float @dx.op.unary.f32(i32 27, float %2973)  ; Round_ni(value)
  %2977 = call float @dx.op.unary.f32(i32 27, float %2974)  ; Round_ni(value)
  %2978 = call float @dx.op.unary.f32(i32 27, float %2975)  ; Round_ni(value)
  %2979 = fadd fast float %2976, 5.000000e-01
  %2980 = fadd fast float %2977, 5.000000e-01
  %2981 = fadd fast float %2978, 5.000000e-01
  %2982 = fmul fast float %2979, %2959
  %2983 = fmul fast float %2980, %2960
  %2984 = fmul fast float %2981, %2961
  %2985 = shl i32 %36, 2
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = add i32 %2987, 0
  %2989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2990 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2991 = call float @dx.op.unary.f32(i32 22, float %2983)  ; Frc(value)
  %2992 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2989, %dx.types.Handle %30, float %2990, float %2991, float %2992, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = fmul fast float %2994, 1.023000e+03
  %2998 = fmul fast float %2995, 1.023000e+03
  %2999 = fmul fast float %2996, 1.023000e+03
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = fadd fast float %2998, 5.000000e-01
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = fsub fast float %2973, %2976
  %3007 = fsub fast float %2974, %2977
  %3008 = fsub fast float %2975, %2978
  %3009 = fmul fast float %3006, 7.500000e-01
  %3010 = fmul fast float %3007, 7.500000e-01
  %3011 = fmul fast float %3008, 7.500000e-01
  %3012 = fadd fast float %2976, 1.250000e-01
  %3013 = fadd fast float %3012, %3009
  %3014 = fadd fast float %3013, %3003
  %3015 = fadd fast float %2977, 1.250000e-01
  %3016 = fadd fast float %3015, %3010
  %3017 = fadd fast float %3016, %3004
  %3018 = fadd fast float %2978, 1.250000e-01
  %3019 = fadd fast float %3018, %3011
  %3020 = fadd fast float %3019, %3005
  %3021 = fmul fast float %3014, %2964
  %3022 = fmul fast float %3017, %2965
  %3023 = fmul fast float %3020, %2966
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3027, %dx.types.Handle %28, float %3021, float %3022, float %3023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  br label %3030

; <label>:3030                                    ; preds = %2951, %2940
  %3031 = phi float [ %3029, %2951 ], [ -1.000000e+00, %2940 ]
  %3032 = fadd fast float %3031, %2938
  %3033 = call float @dx.op.unary.f32(i32 7, float %3032)  ; Saturate(value)
  br label %3034

; <label>:3034                                    ; preds = %3030, %2928
  %3035 = phi float [ %3033, %3030 ], [ %2938, %2928 ]
  %3036 = fmul fast float %3035, %399
  br label %3037

; <label>:3037                                    ; preds = %3034, %2923
  %3038 = phi float [ %3036, %3034 ], [ %399, %2923 ]
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 256
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3089, label %3043

; <label>:3043                                    ; preds = %3037
  %3044 = add i32 %35, 516
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3048, %dx.types.Handle %72, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = add i32 %35, 148
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = shl i32 %3053, 4
  %3055 = and i32 %3054, 32752
  %3056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3055)  ; LegacyF16ToF32(value)
  %3057 = lshr i32 %3053, 7
  %3058 = and i32 %3057, 32752
  %3059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3058)  ; LegacyF16ToF32(value)
  %3060 = fsub fast float 1.000000e+00, %3038
  %3061 = call float @dx.op.binary.f32(i32 35, float %3060, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3062 = bitcast float %3038 to i32
  %3063 = sitofp i32 %3062 to float
  %3064 = fadd fast float %3063, 0xC1CFBF8940000000
  %3065 = fmul fast float %3059, %3064
  %3066 = fadd fast float %3065, 0x41CFBF8940000000
  %3067 = fptosi float %3066 to i32
  %3068 = bitcast i32 %3067 to float
  %3069 = bitcast float %3061 to i32
  %3070 = sitofp i32 %3069 to float
  %3071 = fadd fast float %3070, 0xC1CFBF8940000000
  %3072 = fmul fast float %3071, %3059
  %3073 = fadd fast float %3072, 0x41CFBF8940000000
  %3074 = fptosi float %3073 to i32
  %3075 = bitcast i32 %3074 to float
  %3076 = fmul fast float %3068, %3056
  %3077 = fmul fast float %3075, %3056
  %3078 = fsub fast float %3061, %3076
  %3079 = fadd fast float %3077, %3061
  %3080 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3081 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  %3082 = fsub fast float %3050, %3080
  %3083 = fsub fast float %3081, %3080
  %3084 = bitcast float %3083 to i32
  %3085 = sub nsw i32 2129859010, %3084
  %3086 = bitcast i32 %3085 to float
  %3087 = fmul fast float %3086, %3082
  %3088 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  br label %3089

; <label>:3089                                    ; preds = %3043, %3037
  %3090 = phi float [ %3088, %3043 ], [ %3038, %3037 ]
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = and i32 %3092, 128
  %3094 = icmp eq i32 %3093, 0
  br i1 %3094, label %3111, label %3095

; <label>:3095                                    ; preds = %3089
  %3096 = add i32 %35, 500
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = add i32 %3098, 0
  %3100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3100, %dx.types.Handle %72, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 524288
  %3106 = icmp ne i32 %3105, 0
  %3107 = fcmp fast ogt float %3102, 0x3FE0101020000000
  %3108 = select i1 %3107, float 1.000000e+00, float 0.000000e+00
  %3109 = select i1 %3106, float %3108, float %3102
  %3110 = fmul fast float %3109, %3090
  br label %3111

; <label>:3111                                    ; preds = %3095, %3089
  %3112 = phi float [ %3110, %3095 ], [ %3090, %3089 ]
  %3113 = fcmp fast ult float %3112, 0x3F70101020000000
  br i1 %3113, label %3767, label %3114

; <label>:3114                                    ; preds = %3111
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 16
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3317, label %3119

; <label>:3119                                    ; preds = %3114
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %35, 452
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = add i32 %3124, 0
  %3126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3126, %dx.types.Handle %71, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 1
  %3130 = extractvalue %dx.types.ResRet.f32 %3127, 2
  %3131 = extractvalue %dx.types.ResRet.f32 %3127, 3
  %3132 = and i32 %3121, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = lshr i32 %3121, 8
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = fmul fast float %3131, %3133
  %3138 = fadd fast float %3137, %3136
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = and i32 %3141, 512
  %3143 = icmp eq i32 %3142, 0
  br i1 %3143, label %3152, label %3144

; <label>:3144                                    ; preds = %3119
  %3145 = add i32 %35, 532
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %72, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  br label %3152

; <label>:3152                                    ; preds = %3144, %3119
  %3153 = phi float [ %3151, %3144 ], [ 1.000000e+00, %3119 ]
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 33554432
  %3157 = icmp eq i32 %3156, 0
  br i1 %3157, label %3264, label %3158

; <label>:3158                                    ; preds = %3152
  %3159 = add i32 %35, 272
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3161, 16
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = add i32 %35, 276
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 65535
  %3170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3169)  ; LegacyF16ToF32(value)
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = lshr i32 %3172, 24
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = and i32 %3172, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3177, 0x3F70101020000000
  %3179 = lshr i32 %3172, 8
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = lshr i32 %3172, 16
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = add i32 %35, 268
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = lshr i32 %3189, 24
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = and i32 %3189, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = lshr i32 %3189, 8
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = lshr i32 %3189, 16
  %3201 = and i32 %3200, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = bitcast float %3128 to i32
  %3205 = ashr i32 %3204, 1
  %3206 = sub nsw i32 1597463174, %3205
  %3207 = bitcast i32 %3206 to float
  %3208 = fmul fast float %3128, 5.000000e-01
  %3209 = fmul fast float %3207, %3207
  %3210 = fmul fast float %3209, %3208
  %3211 = fsub fast float 1.500000e+00, %3210
  %3212 = fmul fast float %3207, %3128
  %3213 = fmul fast float %3212, %3211
  %3214 = bitcast float %3129 to i32
  %3215 = ashr i32 %3214, 1
  %3216 = sub nsw i32 1597463174, %3215
  %3217 = bitcast i32 %3216 to float
  %3218 = fmul fast float %3129, 5.000000e-01
  %3219 = fmul fast float %3217, %3217
  %3220 = fmul fast float %3219, %3218
  %3221 = fsub fast float 1.500000e+00, %3220
  %3222 = fmul fast float %3217, %3129
  %3223 = fmul fast float %3222, %3221
  %3224 = bitcast float %3130 to i32
  %3225 = ashr i32 %3224, 1
  %3226 = sub nsw i32 1597463174, %3225
  %3227 = bitcast i32 %3226 to float
  %3228 = fmul fast float %3130, 5.000000e-01
  %3229 = fmul fast float %3227, %3227
  %3230 = fmul fast float %3229, %3228
  %3231 = fsub fast float 1.500000e+00, %3230
  %3232 = fmul fast float %3227, %3130
  %3233 = fmul fast float %3232, %3231
  %3234 = fsub fast float %3213, %3195
  %3235 = fsub fast float %3223, %3199
  %3236 = fsub fast float %3233, %3203
  %3237 = fmul fast float %3234, %3163
  %3238 = fmul fast float %3235, %3165
  %3239 = fmul fast float %3236, %3170
  %3240 = fadd fast float %3237, %3178
  %3241 = fadd fast float %3238, %3182
  %3242 = fadd fast float %3239, %3186
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3246 = fmul fast float %3243, %3243
  %3247 = fmul fast float %3244, %3244
  %3248 = fmul fast float %3245, %3245
  %3249 = fsub fast float %3246, %3128
  %3250 = fsub fast float %3247, %3129
  %3251 = fsub fast float %3248, %3130
  %3252 = fmul fast float %3249, %3153
  %3253 = fmul fast float %3250, %3153
  %3254 = fmul fast float %3251, %3153
  %3255 = fadd fast float %3252, %3128
  %3256 = fadd fast float %3253, %3129
  %3257 = fadd fast float %3254, %3130
  %3258 = fadd fast float %3175, %3139
  %3259 = fsub fast float %3258, %3192
  %3260 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3261 = fsub fast float %3260, %3139
  %3262 = fmul fast float %3261, %3153
  %3263 = fadd fast float %3262, %3139
  br label %3317

; <label>:3264                                    ; preds = %3152
  %3265 = and i32 %3155, 134217728
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3301, label %3267

; <label>:3267                                    ; preds = %3264
  %3268 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3269 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3270 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fadd fast float %3269, -5.000000e-01
  %3273 = fadd fast float %3270, -5.000000e-01
  %3274 = fmul fast float %3271, %3153
  %3275 = fmul fast float %3272, %3153
  %3276 = fmul fast float %3273, %3153
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = fadd fast float %3275, 5.000000e-01
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3283 = fmul fast float %3277, 2.000000e+00
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = fmul fast float %3284, %3280
  %3286 = fadd fast float %3285, %3283
  %3287 = fmul fast float %3286, %3280
  %3288 = fmul fast float %3278, 2.000000e+00
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3289, %3281
  %3291 = fadd fast float %3290, %3288
  %3292 = fmul fast float %3291, %3281
  %3293 = fmul fast float %3279, 2.000000e+00
  %3294 = fsub fast float 1.000000e+00, %3293
  %3295 = fmul fast float %3294, %3282
  %3296 = fadd fast float %3295, %3293
  %3297 = fmul fast float %3296, %3282
  %3298 = fmul fast float %3287, %3287
  %3299 = fmul fast float %3292, %3292
  %3300 = fmul fast float %3297, %3297
  br label %3317

; <label>:3301                                    ; preds = %3264
  %3302 = fmul fast float %320, %320
  %3303 = fmul fast float %324, %324
  %3304 = fmul fast float %328, %328
  %3305 = fadd fast float %3302, -1.000000e+00
  %3306 = fadd fast float %3303, -1.000000e+00
  %3307 = fadd fast float %3304, -1.000000e+00
  %3308 = fmul fast float %3153, %3305
  %3309 = fmul fast float %3153, %3306
  %3310 = fmul fast float %3153, %3307
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fmul fast float %3311, %3128
  %3315 = fmul fast float %3312, %3129
  %3316 = fmul fast float %3313, %3130
  br label %3317

; <label>:3317                                    ; preds = %3301, %3267, %3158, %3114
  %3318 = phi float [ %3263, %3158 ], [ %3139, %3267 ], [ %3139, %3301 ], [ 0x3FA23C0BE0000000, %3114 ]
  %3319 = phi float [ %3255, %3158 ], [ %3298, %3267 ], [ %3314, %3301 ], [ 1.000000e+00, %3114 ]
  %3320 = phi float [ %3256, %3158 ], [ %3299, %3267 ], [ %3315, %3301 ], [ 1.000000e+00, %3114 ]
  %3321 = phi float [ %3257, %3158 ], [ %3300, %3267 ], [ %3316, %3301 ], [ 1.000000e+00, %3114 ]
  %3322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.i32 %3322, 1
  %3324 = and i32 %3323, 1
  %3325 = icmp ne i32 %3324, 0
  %3326 = add i32 %35, 356
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 32
  %3330 = icmp ne i32 %3329, 0
  %3331 = and i1 %3325, %3330
  %3332 = select i1 %3331, float 1.000000e+00, float %3319
  %3333 = select i1 %3331, float 0x3FD3333340000000, float %3320
  %3334 = select i1 %3331, float 0x3FD3333340000000, float %3321
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 32
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3411, label %3339

; <label>:3339                                    ; preds = %3317
  %3340 = add i32 %35, 140
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = add i32 %35, 468
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = add i32 %3345, 0
  %3347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3347, %dx.types.Handle %71, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = extractvalue %dx.types.ResRet.f32 %3348, 3
  %3353 = and i32 %3342, 255
  %3354 = uitofp i32 %3353 to float
  %3355 = lshr i32 %3342, 8
  %3356 = and i32 %3355, 255
  %3357 = uitofp i32 %3356 to float
  %3358 = lshr i32 %3342, 16
  %3359 = and i32 %3358, 255
  %3360 = uitofp i32 %3359 to float
  %3361 = fmul fast float %3360, 0x3F70101000000000
  %3362 = fmul fast float %3349, %3354
  %3363 = fadd fast float %3362, %3357
  %3364 = fmul fast float %3363, 0x3F70101000000000
  %3365 = fadd fast float %3350, -5.000000e-01
  %3366 = fadd fast float %3352, -5.000000e-01
  %3367 = fmul fast float %3365, %3361
  %3368 = fmul fast float %3366, %3361
  %3369 = fadd fast float %3367, 5.000000e-01
  %3370 = fadd fast float %3368, 5.000000e-01
  %3371 = fmul fast float %3369, 2.000000e+00
  %3372 = fadd fast float %3371, -1.000000e+00
  %3373 = fmul fast float %3370, 2.000000e+00
  %3374 = fadd fast float %3373, -1.000000e+00
  %3375 = fadd fast float %3372, %3374
  %3376 = fmul fast float %3375, 5.000000e-01
  %3377 = fsub fast float %3372, %3374
  %3378 = fmul fast float %3377, 5.000000e-01
  %3379 = call float @dx.op.unary.f32(i32 6, float %3376)  ; FAbs(value)
  %3380 = fsub fast float 1.000000e+00, %3379
  %3381 = call float @dx.op.unary.f32(i32 6, float %3378)  ; FAbs(value)
  %3382 = fsub fast float %3380, %3381
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3376, float %3378, float %3382, float %3376, float %3378, float %3382)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = call float @dx.op.unary.f32(i32 25, float %3383)  ; Rsqrt(value)
  %3385 = fmul fast float %3376, %3384
  %3386 = fmul fast float %3378, %3384
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 67108864
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3407, label %3391

; <label>:3391                                    ; preds = %3339
  %3392 = add i32 %35, 328
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, 65535
  %3396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3395)  ; LegacyF16ToF32(value)
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, 65535
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = lshr i32 %3394, 16
  %3402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3401)  ; LegacyF16ToF32(value)
  %3403 = fsub fast float %3364, %3402
  %3404 = fmul fast float %3403, %3396
  %3405 = fadd fast float %3404, %3400
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  br label %3407

; <label>:3407                                    ; preds = %3391, %3339
  %3408 = phi float [ %3406, %3391 ], [ %3364, %3339 ]
  %3409 = call float @dx.op.dot2.f32(i32 54, float %3385, float %3386, float %2828, float %2829)  ; Dot2(ax,ay,bx,by)
  %3410 = call float @dx.op.dot2.f32(i32 54, float %3385, float %3386, float %2830, float %2831)  ; Dot2(ax,ay,bx,by)
  br label %3411

; <label>:3411                                    ; preds = %3407, %3317
  %3412 = phi float [ %3408, %3407 ], [ 0x3FD6666660000000, %3317 ]
  %3413 = phi float [ %3409, %3407 ], [ 0.000000e+00, %3317 ]
  %3414 = phi float [ %3410, %3407 ], [ 0.000000e+00, %3317 ]
  %3415 = phi float [ %3351, %3407 ], [ 1.000000e+00, %3317 ]
  %3416 = add i32 %35, 208
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 22
  %3420 = shl nuw nsw i32 %3419, 5
  %3421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3420)  ; LegacyF16ToF32(value)
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 64
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3459, label %3426

; <label>:3426                                    ; preds = %3411
  %3427 = add i32 %35, 484
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = add i32 %3429, 0
  %3431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 131072
  %3435 = icmp eq i32 %3434, 0
  %3436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3431, %dx.types.Handle %71, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = extractvalue %dx.types.ResRet.f32 %3436, 1
  %3439 = extractvalue %dx.types.ResRet.f32 %3436, 2
  %3440 = fmul fast float %3437, %308
  %3441 = fmul fast float %3438, %311
  %3442 = fmul fast float %3439, %314
  br i1 %3435, label %3449, label %3443

; <label>:3443                                    ; preds = %3426
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 0
  %3446 = fmul fast float %3445, %3440
  %3447 = fmul fast float %3445, %3441
  %3448 = fmul fast float %3445, %3442
  br label %3449

; <label>:3449                                    ; preds = %3443, %3426
  %3450 = phi float [ %3446, %3443 ], [ %3440, %3426 ]
  %3451 = phi float [ %3447, %3443 ], [ %3441, %3426 ]
  %3452 = phi float [ %3448, %3443 ], [ %3442, %3426 ]
  %3453 = fmul fast float %3450, %3421
  %3454 = select i1 %176, float %3453, float %3450
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3451, float %3452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = select i1 %176, float 0.000000e+00, float %3450
  %3457 = select i1 %176, float %3455, float %3451
  %3458 = select i1 %176, float 0.000000e+00, float %3452
  br label %3459

; <label>:3459                                    ; preds = %3449, %3411
  %3460 = phi float [ %3456, %3449 ], [ 0.000000e+00, %3411 ]
  %3461 = phi float [ %3457, %3449 ], [ 0.000000e+00, %3411 ]
  %3462 = phi float [ %3458, %3449 ], [ 0.000000e+00, %3411 ]
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 1024
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3497, label %3467

; <label>:3467                                    ; preds = %3459
  %3468 = add i32 %35, 200
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3472, 0x3F70101020000000
  %3474 = lshr i32 %3470, 8
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = lshr i32 %3470, 16
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101020000000
  %3482 = fmul fast float %3473, %3473
  %3483 = fmul fast float %3477, %3477
  %3484 = fmul fast float %3481, %3481
  %3485 = add i32 %35, 548
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = add i32 %3487, 0
  %3489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3489, %dx.types.Handle %72, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3493 = extractvalue %dx.types.ResRet.f32 %3490, 2
  %3494 = fmul fast float %3482, %3491
  %3495 = fmul fast float %3483, %3492
  %3496 = fmul fast float %3484, %3493
  br label %3497

; <label>:3497                                    ; preds = %3467, %3459
  %3498 = phi float [ %3494, %3467 ], [ 0.000000e+00, %3459 ]
  %3499 = phi float [ %3495, %3467 ], [ 0.000000e+00, %3459 ]
  %3500 = phi float [ %3496, %3467 ], [ 0.000000e+00, %3459 ]
  %3501 = fcmp fast ogt float %3498, 0.000000e+00
  %3502 = fcmp fast ogt float %3499, 0.000000e+00
  %3503 = fcmp fast ogt float %3500, 0.000000e+00
  %3504 = call float @dx.op.unary.f32(i32 23, float %3498)  ; Log(value)
  %3505 = call float @dx.op.unary.f32(i32 23, float %3499)  ; Log(value)
  %3506 = call float @dx.op.unary.f32(i32 23, float %3500)  ; Log(value)
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = lshr i32 %3508, 7
  %3510 = and i32 %3509, 32752
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = fmul fast float %3504, 0xBFE62E4300000000
  %3513 = fmul fast float %3512, %3511
  %3514 = fmul fast float %3505, 0xBFE62E4300000000
  %3515 = fmul fast float %3514, %3511
  %3516 = fmul fast float %3506, 0xBFE62E4300000000
  %3517 = fmul fast float %3516, %3511
  %3518 = select i1 %3501, float %3513, float 1.270000e+02
  %3519 = select i1 %3502, float %3515, float 1.270000e+02
  %3520 = select i1 %3503, float %3517, float 1.270000e+02
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 10240
  %3524 = icmp eq i32 %3523, 0
  br i1 %3524, label %3545, label %3525

; <label>:3525                                    ; preds = %3497
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 2048
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3545, label %3530

; <label>:3530                                    ; preds = %3525
  %3531 = add i32 %35, 564
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = add i32 %3533, 0
  %3535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3535, %dx.types.Handle %72, float %2924, float %2925, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = shl i32 %3539, 4
  %3541 = and i32 %3540, 32752
  %3542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3541)  ; LegacyF16ToF32(value)
  %3543 = fmul fast float %3542, %3537
  %3544 = call float @dx.op.binary.f32(i32 35, float %3543, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3545

; <label>:3545                                    ; preds = %3530, %3525, %3497
  %3546 = phi float [ %3544, %3530 ], [ 0x3F70101020000000, %3525 ], [ 0x3F70101020000000, %3497 ]
  %3547 = add i32 %35, 144
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 255
  %3551 = uitofp i32 %3550 to float
  %3552 = lshr i32 %3549, 8
  %3553 = and i32 %3552, 255
  %3554 = uitofp i32 %3553 to float
  %3555 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3333, float %3334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3556 = fmul fast float %3554, %3555
  %3557 = fadd fast float %3556, %3551
  %3558 = fmul fast float %3557, 0x3F70101020000000
  %3559 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  br i1 %2816, label %3560, label %3595

; <label>:3560                                    ; preds = %3545
  %3561 = fmul fast float %3546, 2.000000e+00
  %3562 = fcmp fast olt float %3518, 1.270000e+02
  %3563 = fcmp fast olt float %3519, 1.270000e+02
  %3564 = fcmp fast olt float %3520, 1.270000e+02
  %3565 = fmul fast float %3518, 0xBFF7154760000000
  %3566 = fmul fast float %3565, %3561
  %3567 = fmul fast float %3519, 0xBFF7154760000000
  %3568 = fmul fast float %3567, %3561
  %3569 = fmul fast float %3520, 0xBFF7154760000000
  %3570 = fmul fast float %3569, %3561
  %3571 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3572 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3573 = call float @dx.op.unary.f32(i32 21, float %3570)  ; Exp(value)
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = fadd fast float %3574, -1.000000e+00
  %3578 = select i1 %3562, float %3577, float -1.000000e+00
  %3579 = fadd fast float %3575, -1.000000e+00
  %3580 = select i1 %3563, float %3579, float -1.000000e+00
  %3581 = fadd fast float %3576, -1.000000e+00
  %3582 = select i1 %3564, float %3581, float -1.000000e+00
  %3583 = fmul fast float %3578, %3112
  %3584 = fmul fast float %3580, %3112
  %3585 = fmul fast float %3582, %3112
  %3586 = fadd fast float %3583, 1.000000e+00
  %3587 = fadd fast float %3584, 1.000000e+00
  %3588 = fadd fast float %3585, 1.000000e+00
  %3589 = fmul fast float %3586, %2805
  %3590 = fmul fast float %3587, %2806
  %3591 = fmul fast float %3588, %2807
  %3592 = fmul fast float %3586, %2808
  %3593 = fmul fast float %3587, %2809
  %3594 = fmul fast float %3588, %2810
  br label %3595

; <label>:3595                                    ; preds = %3560, %3545
  %3596 = phi float [ %3589, %3560 ], [ %2805, %3545 ]
  %3597 = phi float [ %3590, %3560 ], [ %2806, %3545 ]
  %3598 = phi float [ %3591, %3560 ], [ %2807, %3545 ]
  %3599 = phi float [ %3592, %3560 ], [ %2808, %3545 ]
  %3600 = phi float [ %3593, %3560 ], [ %2809, %3545 ]
  %3601 = phi float [ %3594, %3560 ], [ %2810, %3545 ]
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 3
  %3605 = icmp eq i32 %3604, 3
  br i1 %3605, label %3684, label %3606

; <label>:3606                                    ; preds = %3595
  %3607 = and i32 %3603, 16
  %3608 = icmp ne i32 %3607, 0
  %3609 = select i1 %3608, float %3112, float 0.000000e+00
  %3610 = icmp eq i32 %3604, 0
  br i1 %3610, label %3611, label %3639

; <label>:3611                                    ; preds = %3606
  %3612 = and i32 %3603, 64
  %3613 = icmp ne i32 %3612, 0
  %3614 = select i1 %3613, float %3112, float 0.000000e+00
  %3615 = fsub fast float %3332, %3596
  %3616 = fsub fast float %3333, %3597
  %3617 = fsub fast float %3334, %3598
  %3618 = fmul fast float %3609, %3615
  %3619 = fmul fast float %3609, %3616
  %3620 = fmul fast float %3609, %3617
  %3621 = fadd fast float %3618, %3596
  %3622 = fadd fast float %3619, %3597
  %3623 = fadd fast float %3620, %3598
  %3624 = fsub fast float %3318, %2811
  %3625 = fmul fast float %3609, %3624
  %3626 = fadd fast float %3625, %2811
  %3627 = fsub fast float %3460, %3599
  %3628 = fsub fast float %3461, %3600
  %3629 = fsub fast float %3462, %3601
  %3630 = fmul fast float %3614, %3627
  %3631 = fmul fast float %3614, %3628
  %3632 = fmul fast float %3614, %3629
  %3633 = fadd fast float %3630, %3599
  %3634 = fadd fast float %3631, %3600
  %3635 = fadd fast float %3632, %3601
  %3636 = fsub fast float %3559, %2814
  %3637 = fmul fast float %3609, %3636
  %3638 = fadd fast float %3637, %2814
  br label %3684

; <label>:3639                                    ; preds = %3606
  %3640 = icmp eq i32 %3604, 1
  br i1 %3640, label %3641, label %3654

; <label>:3641                                    ; preds = %3639
  %3642 = fadd fast float %3332, -1.000000e+00
  %3643 = fadd fast float %3333, -1.000000e+00
  %3644 = fadd fast float %3334, -1.000000e+00
  %3645 = fmul fast float %3609, %3642
  %3646 = fmul fast float %3609, %3643
  %3647 = fmul fast float %3609, %3644
  %3648 = fadd fast float %3645, 1.000000e+00
  %3649 = fadd fast float %3646, 1.000000e+00
  %3650 = fadd fast float %3647, 1.000000e+00
  %3651 = fmul fast float %3648, %3596
  %3652 = fmul fast float %3649, %3597
  %3653 = fmul fast float %3650, %3598
  br label %3684

; <label>:3654                                    ; preds = %3639
  %3655 = icmp eq i32 %3604, 2
  br i1 %3655, label %3656, label %3684

; <label>:3656                                    ; preds = %3654
  %3657 = call float @dx.op.unary.f32(i32 24, float %3332)  ; Sqrt(value)
  %3658 = call float @dx.op.unary.f32(i32 24, float %3333)  ; Sqrt(value)
  %3659 = call float @dx.op.unary.f32(i32 24, float %3334)  ; Sqrt(value)
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fadd fast float %3659, -5.000000e-01
  %3663 = fmul fast float %3660, %3609
  %3664 = fmul fast float %3661, %3609
  %3665 = fmul fast float %3662, %3609
  %3666 = fadd fast float %3663, 5.000000e-01
  %3667 = fadd fast float %3664, 5.000000e-01
  %3668 = fadd fast float %3665, 5.000000e-01
  %3669 = fmul fast float %3666, 2.000000e+00
  %3670 = fsub fast float 1.000000e+00, %3669
  %3671 = fmul fast float %3670, %3596
  %3672 = fadd fast float %3671, %3669
  %3673 = fmul fast float %3672, %3596
  %3674 = fmul fast float %3667, 2.000000e+00
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = fmul fast float %3675, %3597
  %3677 = fadd fast float %3676, %3674
  %3678 = fmul fast float %3677, %3597
  %3679 = fmul fast float %3668, 2.000000e+00
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = fmul fast float %3680, %3598
  %3682 = fadd fast float %3681, %3679
  %3683 = fmul fast float %3682, %3598
  br label %3684

; <label>:3684                                    ; preds = %3656, %3654, %3641, %3611, %3595
  %3685 = phi float [ %3596, %3595 ], [ %3673, %3656 ], [ %3596, %3654 ], [ %3651, %3641 ], [ %3621, %3611 ]
  %3686 = phi float [ %3597, %3595 ], [ %3678, %3656 ], [ %3597, %3654 ], [ %3652, %3641 ], [ %3622, %3611 ]
  %3687 = phi float [ %3598, %3595 ], [ %3683, %3656 ], [ %3598, %3654 ], [ %3653, %3641 ], [ %3623, %3611 ]
  %3688 = phi float [ %3599, %3595 ], [ %3599, %3656 ], [ %3599, %3654 ], [ %3599, %3641 ], [ %3633, %3611 ]
  %3689 = phi float [ %3600, %3595 ], [ %3600, %3656 ], [ %3600, %3654 ], [ %3600, %3641 ], [ %3634, %3611 ]
  %3690 = phi float [ %3601, %3595 ], [ %3601, %3656 ], [ %3601, %3654 ], [ %3601, %3641 ], [ %3635, %3611 ]
  %3691 = phi float [ %2811, %3595 ], [ %2811, %3656 ], [ %2811, %3654 ], [ %2811, %3641 ], [ %3626, %3611 ]
  %3692 = phi float [ %2814, %3595 ], [ %2814, %3656 ], [ %2814, %3654 ], [ %2814, %3641 ], [ %3638, %3611 ]
  %3693 = and i32 %3603, 12
  %3694 = icmp eq i32 %3693, 12
  br i1 %3694, label %3767, label %3695

; <label>:3695                                    ; preds = %3684
  %3696 = and i32 %3603, 2097184
  %3697 = icmp eq i32 %3696, 2097184
  %3698 = select i1 %3697, float %3112, float 0.000000e+00
  %3699 = and i32 %3603, 4194336
  %3700 = icmp eq i32 %3699, 4194336
  %3701 = select i1 %3700, float %3112, float 0.000000e+00
  %3702 = and i32 %3603, 8388640
  %3703 = icmp eq i32 %3702, 8388640
  %3704 = select i1 %3703, float %3112, float 0.000000e+00
  %3705 = icmp eq i32 %3693, 0
  br i1 %3705, label %3706, label %3719

; <label>:3706                                    ; preds = %3695
  %3707 = fsub fast float %3413, %2803
  %3708 = fsub fast float %3414, %2804
  %3709 = fmul fast float %3698, %3707
  %3710 = fmul fast float %3698, %3708
  %3711 = fadd fast float %3709, %2803
  %3712 = fadd fast float %3710, %2804
  %3713 = fsub fast float %3415, %2813
  %3714 = fmul fast float %3701, %3713
  %3715 = fadd fast float %3714, %2813
  %3716 = fsub fast float %3412, %2812
  %3717 = fmul fast float %3704, %3716
  %3718 = fadd fast float %3717, %2812
  br label %3767

; <label>:3719                                    ; preds = %3695
  %3720 = icmp eq i32 %3693, 4
  br i1 %3720, label %3721, label %3753

; <label>:3721                                    ; preds = %3719
  %3722 = fmul fast float %3698, %3413
  %3723 = fmul fast float %3698, %3414
  %3724 = fadd fast float %3722, %2803
  %3725 = fadd fast float %3723, %2804
  %3726 = call float @dx.op.binary.f32(i32 36, float %2813, float %3415)  ; FMin(a,b)
  %3727 = fsub fast float %3726, %2813
  %3728 = fmul fast float %3727, %3701
  %3729 = fadd fast float %3728, %2813
  %3730 = fadd fast float %3412, %2812
  %3731 = fmul fast float %3730, 0x3FF337FAE0000000
  %3732 = fmul fast float %2812, %2812
  %3733 = fmul fast float %3412, %3412
  %3734 = fadd fast float %3733, %3732
  %3735 = fmul fast float %3734, 0x3FE5152B00000000
  %3736 = fmul fast float %2812, 0xBFCC1F85E0000000
  %3737 = fmul fast float %3736, %3412
  %3738 = fadd fast float %3737, 0xBFE1363700000000
  %3739 = fadd fast float %3738, %3731
  %3740 = fsub fast float %3739, %3735
  %3741 = fmul fast float %3730, 0x3FBA6F0D00000000
  %3742 = fmul fast float %3734, 0x3FD0432880000000
  %3743 = fmul fast float %2812, 0xBFEF110800000000
  %3744 = fmul fast float %3743, %3412
  %3745 = fadd fast float %3744, 1.000000e+00
  %3746 = fsub fast float %3745, %3741
  %3747 = fadd fast float %3746, %3742
  %3748 = fdiv fast float %3740, %3747
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fsub fast float %3749, %2812
  %3751 = fmul fast float %3750, %3704
  %3752 = fadd fast float %3751, %2812
  br label %3767

; <label>:3753                                    ; preds = %3719
  %3754 = icmp eq i32 %3693, 8
  br i1 %3754, label %3755, label %3767

; <label>:3755                                    ; preds = %3753
  %3756 = fmul fast float %3698, %3413
  %3757 = fmul fast float %3698, %3414
  %3758 = fadd fast float %3756, %2803
  %3759 = fadd fast float %3757, %2804
  %3760 = call float @dx.op.binary.f32(i32 36, float %2813, float %3415)  ; FMin(a,b)
  %3761 = fsub fast float %3760, %2813
  %3762 = fmul fast float %3761, %3701
  %3763 = fadd fast float %3762, %2813
  %3764 = fsub fast float %3412, %2812
  %3765 = fmul fast float %3704, %3764
  %3766 = fadd fast float %3765, %2812
  br label %3767

; <label>:3767                                    ; preds = %3755, %3753, %3721, %3706, %3684, %3111, %2815, %2802
  %3768 = phi float [ %2803, %3684 ], [ %2803, %3111 ], [ %2803, %2802 ], [ %2803, %2815 ], [ %3711, %3706 ], [ %3724, %3721 ], [ %2803, %3753 ], [ %3758, %3755 ]
  %3769 = phi float [ %2804, %3684 ], [ %2804, %3111 ], [ %2804, %2802 ], [ %2804, %2815 ], [ %3712, %3706 ], [ %3725, %3721 ], [ %2804, %3753 ], [ %3759, %3755 ]
  %3770 = phi float [ %3685, %3684 ], [ %2805, %3111 ], [ %2805, %2802 ], [ %2805, %2815 ], [ %3685, %3706 ], [ %3685, %3721 ], [ %3685, %3753 ], [ %3685, %3755 ]
  %3771 = phi float [ %3686, %3684 ], [ %2806, %3111 ], [ %2806, %2802 ], [ %2806, %2815 ], [ %3686, %3706 ], [ %3686, %3721 ], [ %3686, %3753 ], [ %3686, %3755 ]
  %3772 = phi float [ %3687, %3684 ], [ %2807, %3111 ], [ %2807, %2802 ], [ %2807, %2815 ], [ %3687, %3706 ], [ %3687, %3721 ], [ %3687, %3753 ], [ %3687, %3755 ]
  %3773 = phi float [ %3688, %3684 ], [ %2808, %3111 ], [ %2808, %2802 ], [ %2808, %2815 ], [ %3688, %3706 ], [ %3688, %3721 ], [ %3688, %3753 ], [ %3688, %3755 ]
  %3774 = phi float [ %3689, %3684 ], [ %2809, %3111 ], [ %2809, %2802 ], [ %2809, %2815 ], [ %3689, %3706 ], [ %3689, %3721 ], [ %3689, %3753 ], [ %3689, %3755 ]
  %3775 = phi float [ %3690, %3684 ], [ %2810, %3111 ], [ %2810, %2802 ], [ %2810, %2815 ], [ %3690, %3706 ], [ %3690, %3721 ], [ %3690, %3753 ], [ %3690, %3755 ]
  %3776 = phi float [ %3691, %3684 ], [ %2811, %3111 ], [ %2811, %2802 ], [ %2811, %2815 ], [ %3691, %3706 ], [ %3691, %3721 ], [ %3691, %3753 ], [ %3691, %3755 ]
  %3777 = phi float [ %2812, %3684 ], [ %2812, %3111 ], [ %2812, %2802 ], [ %2812, %2815 ], [ %3718, %3706 ], [ %3752, %3721 ], [ %2812, %3753 ], [ %3766, %3755 ]
  %3778 = phi float [ %2813, %3684 ], [ %2813, %3111 ], [ %2813, %2802 ], [ %2813, %2815 ], [ %3715, %3706 ], [ %3729, %3721 ], [ %2813, %3753 ], [ %3763, %3755 ]
  %3779 = phi float [ %3692, %3684 ], [ %2814, %3111 ], [ %2814, %2802 ], [ %2814, %2815 ], [ %3692, %3706 ], [ %3692, %3721 ], [ %3692, %3753 ], [ %3692, %3755 ]
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = call float @dx.op.dot2.f32(i32 54, float %3768, float %3769, float %3768, float %3769)  ; Dot2(ax,ay,bx,by)
  %3783 = fmul fast float %3782, 0x3FE3333340000000
  %3784 = fsub fast float 1.000000e+00, %3783
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3768, float %3769, float %3784, float %3768, float %3769, float %3784)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = call float @dx.op.unary.f32(i32 25, float %3785)  ; Rsqrt(value)
  %3787 = fmul fast float %3786, %3768
  %3788 = fmul fast float %3786, %3769
  %3789 = fmul fast float %3784, %3786
  %3790 = fmul fast float %3789, %84
  %3791 = fmul fast float %3789, %86
  %3792 = fmul fast float %3789, %88
  %3793 = fmul fast float %3787, %56
  %3794 = fmul fast float %3787, %57
  %3795 = fmul fast float %3787, %58
  %3796 = fadd fast float %3790, %3793
  %3797 = fadd fast float %3791, %3794
  %3798 = fadd fast float %3792, %3795
  %3799 = fmul fast float %98, %3788
  %3800 = fmul fast float %99, %3788
  %3801 = fmul fast float %100, %3788
  %3802 = fadd fast float %3796, %3799
  %3803 = fadd fast float %3797, %3800
  %3804 = fadd fast float %3798, %3801
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3802, float %3803, float %3804, float %3802, float %3803, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 25, float %3805)  ; Rsqrt(value)
  %3807 = fmul fast float %3802, %3806
  %3808 = fmul fast float %3803, %3806
  %3809 = fmul fast float %3804, %3806
  %3810 = and i32 %37, 1
  %3811 = icmp eq i32 %3810, 0
  br i1 %3811, label %3812, label %4320

; <label>:3812                                    ; preds = %3767
  %3813 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3814 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3815 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3816 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3817 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3818 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3819 = fadd fast float %3813, %134
  %3820 = fadd fast float %3814, %135
  %3821 = fadd fast float %3815, %136
  %3822 = fadd fast float %3816, %134
  %3823 = fadd fast float %3817, %135
  %3824 = fadd fast float %3818, %136
  %3825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3826 = extractvalue %dx.types.CBufRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.CBufRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.CBufRet.f32 %3825, 2
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 3
  %3832 = fmul fast float %3826, %75
  %3833 = fmul fast float %3832, %3830
  %3834 = fmul fast float %3827, %76
  %3835 = fmul fast float %3834, %3831
  %3836 = fptoui float %3833 to i32
  %3837 = fptoui float %3835 to i32
  %3838 = fadd fast float %3826, -1.000000e+00
  %3839 = fadd fast float %3827, -1.000000e+00
  %3840 = fptoui float %3838 to i32
  %3841 = fptoui float %3839 to i32
  %3842 = call i32 @dx.op.binary.i32(i32 40, i32 %3836, i32 %3840)  ; UMin(a,b)
  %3843 = call i32 @dx.op.binary.i32(i32 40, i32 %3837, i32 %3841)  ; UMin(a,b)
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 2
  %3846 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3847 = fmul fast float %3845, %70
  %3848 = fsub fast float %3847, %3846
  %3849 = fadd fast float %3828, -1.000000e+00
  %3850 = call float @dx.op.binary.f32(i32 36, float %3848, float %3849)  ; FMin(a,b)
  %3851 = fptoui float %3850 to i32
  %3852 = fptoui float %3826 to i32
  %3853 = fptoui float %3827 to i32
  %3854 = mul i32 %3851, %3853
  %3855 = add i32 %3854, %3843
  %3856 = mul i32 %3855, %3852
  %3857 = add i32 %3856, %3842
  %3858 = shl i32 %3857, 2
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = and i32 %3860, 1023
  %3862 = lshr i32 %3860, 10
  %3863 = icmp eq i32 %3861, 0
  br i1 %3863, label %4289, label %3864

; <label>:3864                                    ; preds = %3812
  %3865 = and i32 %3860, 1023
  br label %3866

; <label>:3866                                    ; preds = %3992, %3864
  %3867 = phi i32 [ %3942, %3992 ], [ 0, %3864 ]
  %3868 = phi float [ %3993, %3992 ], [ 0.000000e+00, %3864 ]
  %3869 = phi float [ %3994, %3992 ], [ %3781, %3864 ]
  %3870 = phi float [ %3995, %3992 ], [ %3779, %3864 ]
  %3871 = phi float [ %3996, %3992 ], [ 0.000000e+00, %3864 ]
  %3872 = phi float [ %3997, %3992 ], [ 0.000000e+00, %3864 ]
  %3873 = phi float [ %3998, %3992 ], [ %3773, %3864 ]
  %3874 = phi float [ %3999, %3992 ], [ %3774, %3864 ]
  %3875 = phi float [ %4000, %3992 ], [ %3775, %3864 ]
  %3876 = phi float [ %4001, %3992 ], [ %3807, %3864 ]
  %3877 = phi float [ %4002, %3992 ], [ %3808, %3864 ]
  %3878 = phi float [ %4003, %3992 ], [ %3809, %3864 ]
  %3879 = phi float [ %4004, %3992 ], [ %3778, %3864 ]
  %3880 = phi float [ %4005, %3992 ], [ %3777, %3864 ]
  %3881 = phi float [ %4006, %3992 ], [ 0.000000e+00, %3864 ]
  %3882 = phi float [ %4007, %3992 ], [ %3776, %3864 ]
  %3883 = phi float [ %4008, %3992 ], [ %3770, %3864 ]
  %3884 = phi float [ %4009, %3992 ], [ %3771, %3864 ]
  %3885 = phi float [ %4010, %3992 ], [ %3772, %3864 ]
  %3886 = add nuw nsw i32 %3867, %3862
  %3887 = shl i32 %3886, 2
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = shl i32 %3889, 8
  %3891 = or i32 %3890, 48
  %3892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3897 = or i32 %3890, 64
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.i32 %3898, 1
  %3901 = or i32 %3890, 80
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3905 = or i32 %3890, 96
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %3911 = or i32 %3890, 112
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3914 = or i32 %3890, 128
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %3920 = or i32 %3890, 144
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = or i32 %3890, 160
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = or i32 %3890, 192
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = or i32 %3890, 208
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = or i32 %3890, 248
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = add nuw nsw i32 %3867, 1
  %3943 = bitcast float %3896 to i32
  %3944 = and i32 %3943, 512
  %3945 = icmp eq i32 %3944, 0
  %3946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = extractvalue %dx.types.ResRet.f32 %3946, 3
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = or i32 %3890, 16
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3959 = or i32 %3890, 32
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3964 = extractvalue %dx.types.ResRet.f32 %3960, 3
  %3965 = call float @dx.op.dot4.f32(i32 56, float %3961, float %3962, float %3963, float %3964, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3966 = call float @dx.op.unary.f32(i32 27, float %3951)  ; Round_ni(value)
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = call float @dx.op.unary.f32(i32 27, float %3958)  ; Round_ni(value)
  %3969 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3971 = call float @dx.op.unary.f32(i32 27, float %3970)  ; Round_ni(value)
  %3972 = fadd fast float %3969, %3967
  %3973 = fadd fast float %3972, %3971
  %3974 = fcmp fast oeq float %3973, 0.000000e+00
  %3975 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3819, float %3820, float %3821, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %3819, float %3820, float %3821, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %3822, float %3823, float %3824, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = fsub fast float %3975, %3951
  %3980 = fsub fast float %3977, %3951
  %3981 = fsub fast float %3976, %3958
  %3982 = fsub fast float %3978, %3958
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3986 = fadd fast float %3985, %3983
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3989 = fcmp fast ogt float %3987, %3988
  %3990 = and i1 %3974, %3989
  %3991 = and i1 %3945, %3990
  br i1 %3991, label %4012, label %3992

; <label>:3992                                    ; preds = %4275, %4093, %4012, %3866
  %3993 = phi float [ %3868, %4012 ], [ %4096, %4093 ], [ %4096, %4275 ], [ %3868, %3866 ]
  %3994 = phi float [ %3869, %4012 ], [ %3869, %4093 ], [ %4250, %4275 ], [ %3869, %3866 ]
  %3995 = phi float [ %3870, %4012 ], [ %3870, %4093 ], [ %4248, %4275 ], [ %3870, %3866 ]
  %3996 = phi float [ %3871, %4012 ], [ %3871, %4093 ], [ %4220, %4275 ], [ %3871, %3866 ]
  %3997 = phi float [ %3872, %4012 ], [ %3872, %4093 ], [ %4218, %4275 ], [ %3872, %3866 ]
  %3998 = phi float [ %3873, %4012 ], [ %3873, %4093 ], [ %4285, %4275 ], [ %3873, %3866 ]
  %3999 = phi float [ %3874, %4012 ], [ %3874, %4093 ], [ %4286, %4275 ], [ %3874, %3866 ]
  %4000 = phi float [ %3875, %4012 ], [ %3875, %4093 ], [ %4287, %4275 ], [ %3875, %3866 ]
  %4001 = phi float [ %3876, %4012 ], [ %3876, %4093 ], [ %4199, %4275 ], [ %3876, %3866 ]
  %4002 = phi float [ %3877, %4012 ], [ %3877, %4093 ], [ %4200, %4275 ], [ %3877, %3866 ]
  %4003 = phi float [ %3878, %4012 ], [ %3878, %4093 ], [ %4201, %4275 ], [ %3878, %3866 ]
  %4004 = phi float [ %3879, %4012 ], [ %3879, %4093 ], [ %4228, %4275 ], [ %3879, %3866 ]
  %4005 = phi float [ %3880, %4012 ], [ %3880, %4093 ], [ %4225, %4275 ], [ %3880, %3866 ]
  %4006 = phi float [ %3881, %4012 ], [ %3881, %4093 ], [ %4222, %4275 ], [ %3881, %3866 ]
  %4007 = phi float [ %3882, %4012 ], [ %3882, %4093 ], [ %4216, %4275 ], [ %3882, %3866 ]
  %4008 = phi float [ %3883, %4012 ], [ %3883, %4093 ], [ %4211, %4275 ], [ %3883, %3866 ]
  %4009 = phi float [ %3884, %4012 ], [ %3884, %4093 ], [ %4212, %4275 ], [ %3884, %3866 ]
  %4010 = phi float [ %3885, %4012 ], [ %3885, %4093 ], [ %4213, %4275 ], [ %3885, %3866 ]
  %4011 = icmp eq i32 %3942, %3865
  br i1 %4011, label %4288, label %3866

; <label>:4012                                    ; preds = %3866
  %4013 = extractvalue %dx.types.ResRet.f32 %3912, 3
  %4014 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %4015 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %4018 = extractvalue %dx.types.ResRet.i32 %3898, 3
  %4019 = extractvalue %dx.types.ResRet.i32 %3898, 2
  %4020 = add i32 %4018, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4021, %dx.types.Handle %4022, float %3951, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3979, float %3981, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = fmul fast float %4024, %4017
  %4026 = fadd fast float %4025, %4016
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fmul fast float %3951, %3907
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3958, float %4028)  ; FMad(a,b,c)
  %4030 = fadd fast float %4029, %4015
  %4031 = fmul fast float %3951, %3909
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3958, float %4031)  ; FMad(a,b,c)
  %4033 = fadd fast float %4032, %4014
  %4034 = fmul fast float %3979, %3907
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3981, float %4034)  ; FMad(a,b,c)
  %4036 = fmul fast float %3979, %3909
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3981, float %4036)  ; FMad(a,b,c)
  %4038 = fmul fast float %3980, %3907
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3982, float %4038)  ; FMad(a,b,c)
  %4040 = fmul fast float %3980, %3909
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3982, float %4040)  ; FMad(a,b,c)
  %4042 = add i32 %4019, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4043, %dx.types.Handle %4022, float %4030, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %4035, float %4037, float undef, float %4039, float %4041, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = and i32 %3943, 1024
  %4047 = icmp ne i32 %4046, 0
  %4048 = fcmp fast ogt float %4045, 0x3FE0101020000000
  %4049 = uitofp i1 %4048 to float
  %4050 = select i1 %4047, float %4049, float %4045
  %4051 = and i32 %3943, 8192
  %4052 = icmp ne i32 %4051, 0
  %4053 = select i1 %4052, float %4013, float 1.000000e+00
  %4054 = fmul fast float %3951, 2.000000e+00
  %4055 = fadd fast float %4054, -1.000000e+00
  %4056 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4057 = fmul fast float %4056, %3940
  %4058 = fsub fast float %4057, %3940
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %3958, 2.000000e+00
  %4061 = fadd fast float %4060, -1.000000e+00
  %4062 = call float @dx.op.unary.f32(i32 6, float %4061)  ; FAbs(value)
  %4063 = fmul fast float %4062, %3941
  %4064 = fsub fast float %4063, %3941
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = fmul fast float %3970, %3903
  %4067 = fsub fast float %4066, %3903
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %4027, %4053
  %4070 = fmul fast float %4069, %4024
  %4071 = fmul fast float %4070, %4059
  %4072 = fmul fast float %4071, %4050
  %4073 = fmul fast float %4072, %4065
  %4074 = fmul fast float %4073, %4068
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4078 = fsub fast float %3987, %4077
  %4079 = fmul fast float %4078, %4076
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = fmul fast float %4074, %3904
  %4082 = fadd fast float %4074, %3904
  %4083 = fmul fast float %4082, %3913
  %4084 = fsub fast float %4083, %3913
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = and i32 %3943, 128
  %4087 = icmp ne i32 %4086, 0
  %4088 = select i1 %4087, float %4085, float %4081
  %4089 = fmul fast float %4088, %4080
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = fcmp fast ugt float %4089, %4091
  br i1 %4092, label %4093, label %3992

; <label>:4093                                    ; preds = %4012
  %4094 = select i1 %4052, float %4089, float 0.000000e+00
  %4095 = fadd fast float %4094, %3868
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  br i1 %4052, label %3992, label %4097

; <label>:4097                                    ; preds = %4093
  %4098 = and i32 %3943, 4
  %4099 = and i32 %3943, 8
  %4100 = add i32 %3899, 0
  %4101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4100, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4101, %dx.types.Handle %4102, float %4030, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %4035, float %4037, float undef, float %4039, float %4041, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.ResRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.ResRet.f32 %4103, 2
  %4107 = extractvalue %dx.types.ResRet.f32 %4103, 3
  %4108 = bitcast float %3925 to i32
  %4109 = and i32 %4108, 255
  %4110 = uitofp i32 %4109 to float
  %4111 = lshr i32 %4108, 8
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = fmul fast float %4107, %4110
  %4115 = fadd fast float %4114, %4113
  %4116 = fmul fast float %4115, 0x3F70101000000000
  %4117 = add i32 %3900, 0
  %4118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4118, %dx.types.Handle %4102, float %4030, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %4035, float %4037, float undef, float %4039, float %4041, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4123 = extractvalue %dx.types.ResRet.f32 %4119, 3
  %4124 = bitcast float %3919 to i32
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4124, 8
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = lshr i32 %4124, 16
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = fmul fast float %4132, 0x3F70101000000000
  %4134 = fmul fast float %4120, %4126
  %4135 = fadd fast float %4134, %4129
  %4136 = fmul fast float %4135, 0x3F70101000000000
  %4137 = fadd fast float %4121, -5.000000e-01
  %4138 = fadd fast float %4123, -5.000000e-01
  %4139 = fmul fast float %4137, %4133
  %4140 = fmul fast float %4138, %4133
  %4141 = fadd fast float %4139, 5.000000e-01
  %4142 = fadd fast float %4140, 5.000000e-01
  %4143 = fmul fast float %4104, %3928
  %4144 = fmul fast float %4105, %3929
  %4145 = fmul fast float %4106, %3930
  %4146 = fmul fast float %4141, 2.000000e+00
  %4147 = fadd fast float %4146, -1.000000e+00
  %4148 = fmul fast float %4142, 2.000000e+00
  %4149 = fadd fast float %4148, -1.000000e+00
  %4150 = fadd fast float %4147, %4149
  %4151 = fmul fast float %4150, 5.000000e-01
  %4152 = fsub fast float %4147, %4149
  %4153 = fmul fast float %4152, 5.000000e-01
  %4154 = call float @dx.op.unary.f32(i32 6, float %4151)  ; FAbs(value)
  %4155 = fsub fast float 1.000000e+00, %4154
  %4156 = call float @dx.op.unary.f32(i32 6, float %4153)  ; FAbs(value)
  %4157 = fsub fast float %4155, %4156
  %4158 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4153, float %4157, float %4151, float %4153, float %4157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = call float @dx.op.unary.f32(i32 25, float %4158)  ; Rsqrt(value)
  %4160 = fmul fast float %4151, %4159
  %4161 = fmul fast float %4153, %4159
  %4162 = fmul fast float %4159, %4157
  %4163 = fmul fast float %4162, %3893
  %4164 = fmul fast float %4162, %3894
  %4165 = fmul fast float %4162, %3895
  %4166 = fmul fast float %4160, %3916
  %4167 = fmul fast float %4160, %3917
  %4168 = fmul fast float %4160, %3918
  %4169 = fadd fast float %4166, %4163
  %4170 = fadd fast float %4167, %4164
  %4171 = fadd fast float %4168, %4165
  %4172 = fmul fast float %4161, %3922
  %4173 = fmul fast float %4161, %3923
  %4174 = fmul fast float %4161, %3924
  %4175 = fadd fast float %4169, %4172
  %4176 = fadd fast float %4170, %4173
  %4177 = fadd fast float %4171, %4174
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4175, float %4176, float %4177, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call float @dx.op.unary.f32(i32 25, float %4178)  ; Rsqrt(value)
  %4180 = fmul fast float %4175, %4179
  %4181 = fmul fast float %4176, %4179
  %4182 = fmul fast float %4177, %4179
  %4183 = icmp ne i32 %4099, 0
  %4184 = select i1 %4183, float 1.000000e+00, float 0.000000e+00
  %4185 = fmul fast float %4089, %4184
  %4186 = and i32 %3943, 1
  %4187 = icmp eq i32 %4186, 0
  br i1 %4187, label %4188, label %4192

; <label>:4188                                    ; preds = %4097
  %4189 = fsub fast float %4180, %3876
  %4190 = fsub fast float %4181, %3877
  %4191 = fsub fast float %4182, %3878
  br label %4192

; <label>:4192                                    ; preds = %4188, %4097
  %4193 = phi float [ %4189, %4188 ], [ %4180, %4097 ]
  %4194 = phi float [ %4190, %4188 ], [ %4181, %4097 ]
  %4195 = phi float [ %4191, %4188 ], [ %4182, %4097 ]
  %4196 = fmul float %4195, %4185
  %4197 = fmul float %4194, %4185
  %4198 = fmul float %4193, %4185
  %4199 = fadd fast float %4198, %3876
  %4200 = fadd fast float %4197, %3877
  %4201 = fadd fast float %4196, %3878
  %4202 = icmp ne i32 %4098, 0
  %4203 = select i1 %4202, float 1.000000e+00, float 0.000000e+00
  %4204 = fmul fast float %4089, %4203
  %4205 = fsub fast float %4143, %3883
  %4206 = fsub fast float %4144, %3884
  %4207 = fsub fast float %4145, %3885
  %4208 = fmul fast float %4205, %4204
  %4209 = fmul fast float %4206, %4204
  %4210 = fmul fast float %4207, %4204
  %4211 = fadd fast float %4208, %3883
  %4212 = fadd fast float %4209, %3884
  %4213 = fadd fast float %4210, %3885
  %4214 = fsub fast float %4116, %3882
  %4215 = fmul fast float %4214, %4204
  %4216 = fadd fast float %4215, %3882
  %4217 = fmul fast float %4204, %3872
  %4218 = fsub fast float %3872, %4217
  %4219 = fmul fast float %4204, %3871
  %4220 = fsub fast float %3871, %4219
  %4221 = fadd fast float %4089, %3881
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = fsub fast float %4136, %3880
  %4224 = fmul fast float %4223, %4185
  %4225 = fadd fast float %4224, %3880
  %4226 = fsub fast float %4122, %3879
  %4227 = fmul fast float %4226, %4185
  %4228 = fadd fast float %4227, %3879
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4143, float %4144, float %4145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.CBufRet.f32 %4230, 1
  %4233 = fmul fast float %4232, %4229
  %4234 = fadd fast float %4233, %4231
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = bitcast float %3931 to i32
  %4237 = and i32 %4236, 65535
  %4238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4237)  ; LegacyF16ToF32(value)
  %4239 = lshr i32 %4236, 16
  %4240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4239)  ; LegacyF16ToF32(value)
  %4241 = fcmp fast oge float %4238, 0.000000e+00
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = select i1 %4241, float %4238, float %4243
  %4245 = fadd fast float %4244, %4240
  %4246 = fsub fast float %4235, %3870
  %4247 = fmul fast float %4246, %4089
  %4248 = fadd fast float %4247, %3870
  %4249 = fmul fast float %4245, %4089
  %4250 = call float @dx.op.binary.f32(i32 35, float %3869, float %4249)  ; FMax(a,b)
  %4251 = and i32 %3943, 16
  %4252 = icmp eq i32 %4251, 0
  br i1 %4252, label %4275, label %4253

; <label>:4253                                    ; preds = %4192
  %4254 = bitcast float %3937 to i32
  %4255 = add i32 %3934, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4256, %dx.types.Handle %4102, float %4030, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %4035, float %4037, float undef, float %4039, float %4041, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = and i32 %4254, 65535
  %4262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4261)  ; LegacyF16ToF32(value)
  %4263 = fmul fast float %4258, %3928
  %4264 = fmul fast float %4259, %3929
  %4265 = fmul fast float %4260, %3930
  %4266 = and i32 %3943, 16384
  %4267 = icmp ne i32 %4266, 0
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = select i1 %4267, float %4269, float 1.000000e+00
  %4271 = fmul fast float %4270, %4262
  %4272 = fmul fast float %4263, %4271
  %4273 = fmul fast float %4264, %4271
  %4274 = fmul fast float %4265, %4271
  br label %4275

; <label>:4275                                    ; preds = %4253, %4192
  %4276 = phi float [ %4272, %4253 ], [ 0.000000e+00, %4192 ]
  %4277 = phi float [ %4273, %4253 ], [ 0.000000e+00, %4192 ]
  %4278 = phi float [ %4274, %4253 ], [ 0.000000e+00, %4192 ]
  %4279 = fsub fast float %4276, %3873
  %4280 = fsub fast float %4277, %3874
  %4281 = fsub fast float %4278, %3875
  %4282 = fmul fast float %4279, %4089
  %4283 = fmul fast float %4280, %4089
  %4284 = fmul fast float %4281, %4089
  %4285 = fadd fast float %4282, %3873
  %4286 = fadd fast float %4283, %3874
  %4287 = fadd fast float %4284, %3875
  br label %3992

; <label>:4288                                    ; preds = %3992
  br label %4289

; <label>:4289                                    ; preds = %4288, %3812
  %4290 = phi float [ 0.000000e+00, %3812 ], [ %3993, %4288 ]
  %4291 = phi float [ %3781, %3812 ], [ %3994, %4288 ]
  %4292 = phi float [ %3779, %3812 ], [ %3995, %4288 ]
  %4293 = phi float [ 0.000000e+00, %3812 ], [ %3996, %4288 ]
  %4294 = phi float [ 0.000000e+00, %3812 ], [ %3997, %4288 ]
  %4295 = phi float [ %3773, %3812 ], [ %3998, %4288 ]
  %4296 = phi float [ %3774, %3812 ], [ %3999, %4288 ]
  %4297 = phi float [ %3775, %3812 ], [ %4000, %4288 ]
  %4298 = phi float [ %3807, %3812 ], [ %4001, %4288 ]
  %4299 = phi float [ %3808, %3812 ], [ %4002, %4288 ]
  %4300 = phi float [ %3809, %3812 ], [ %4003, %4288 ]
  %4301 = phi float [ %3778, %3812 ], [ %4004, %4288 ]
  %4302 = phi float [ %3777, %3812 ], [ %4005, %4288 ]
  %4303 = phi float [ 0.000000e+00, %3812 ], [ %4006, %4288 ]
  %4304 = phi float [ %3776, %3812 ], [ %4007, %4288 ]
  %4305 = phi float [ %3770, %3812 ], [ %4008, %4288 ]
  %4306 = phi float [ %3771, %3812 ], [ %4009, %4288 ]
  %4307 = phi float [ %3772, %3812 ], [ %4010, %4288 ]
  %4308 = call float @dx.op.dot3.f32(i32 55, float %4298, float %4299, float %4300, float %4298, float %4299, float %4300)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 25, float %4308)  ; Rsqrt(value)
  %4310 = fmul fast float %4309, %4298
  %4311 = fmul fast float %4309, %4299
  %4312 = fmul fast float %4309, %4300
  %4313 = fadd fast float %4303, %881
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = call float @dx.op.dot3.f32(i32 55, float %4310, float %4311, float %4312, float %4310, float %4311, float %4312)  ; Dot3(ax,ay,az,bx,by,bz)
  %4316 = call float @dx.op.unary.f32(i32 25, float %4315)  ; Rsqrt(value)
  %4317 = fmul fast float %4316, %4310
  %4318 = fmul fast float %4316, %4311
  %4319 = fmul fast float %4316, %4312
  br label %4320

; <label>:4320                                    ; preds = %4289, %3767
  %4321 = phi float [ %4317, %4289 ], [ %3807, %3767 ]
  %4322 = phi float [ %4318, %4289 ], [ %3808, %3767 ]
  %4323 = phi float [ %4319, %4289 ], [ %3809, %3767 ]
  %4324 = phi float [ %4305, %4289 ], [ %3770, %3767 ]
  %4325 = phi float [ %4306, %4289 ], [ %3771, %3767 ]
  %4326 = phi float [ %4307, %4289 ], [ %3772, %3767 ]
  %4327 = phi float [ %4295, %4289 ], [ %3773, %3767 ]
  %4328 = phi float [ %4296, %4289 ], [ %3774, %3767 ]
  %4329 = phi float [ %4297, %4289 ], [ %3775, %3767 ]
  %4330 = phi float [ %4304, %4289 ], [ %3776, %3767 ]
  %4331 = phi float [ %4314, %4289 ], [ %881, %3767 ]
  %4332 = phi float [ %4302, %4289 ], [ %3777, %3767 ]
  %4333 = phi float [ %4301, %4289 ], [ %3778, %3767 ]
  %4334 = phi float [ %4294, %4289 ], [ 0.000000e+00, %3767 ]
  %4335 = phi float [ %4293, %4289 ], [ 0.000000e+00, %3767 ]
  %4336 = phi float [ %4290, %4289 ], [ 0.000000e+00, %3767 ]
  %4337 = phi float [ %4291, %4289 ], [ %3781, %3767 ]
  %4338 = phi float [ %4292, %4289 ], [ %3779, %3767 ]
  %4339 = fadd fast float %4330, 0xBFB99999A0000000
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4340, 0x3FF1C71C80000000
  %4342 = call float @dx.op.binary.f32(i32 36, float %4330, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4343 = fsub fast float 1.000000e+00, %4341
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4344, %4324
  %4346 = fmul fast float %4344, %4325
  %4347 = fmul fast float %4344, %4326
  %4348 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = fmul fast float %4341, %4324
  %4352 = fmul fast float %4341, %4325
  %4353 = fmul fast float %4341, %4326
  %4354 = fadd fast float %4351, %4342
  %4355 = fadd fast float %4352, %4342
  %4356 = fadd fast float %4353, %4342
  %4357 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 3
  %4363 = and i32 %4362, 8
  %4364 = icmp ne i32 %4363, 0
  %4365 = call float @dx.op.binary.f32(i32 35, float %4348, float %4324)  ; FMax(a,b)
  %4366 = call float @dx.op.binary.f32(i32 35, float %4349, float %4324)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4350, float %4324)  ; FMax(a,b)
  %4368 = call float @dx.op.dot3.f32(i32 55, float %4348, float %4349, float %4350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4369 = select i1 %176, float %4324, float %4348
  %4370 = select i1 %176, float %4368, float %4349
  %4371 = select i1 %176, float 1.000000e+00, float %4350
  %4372 = select i1 %4364, float %4365, float %4369
  %4373 = select i1 %4364, float %4366, float %4370
  %4374 = select i1 %4364, float %4367, float %4371
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4379 = fadd fast float %4376, %134
  %4380 = fadd fast float %4377, %135
  %4381 = fadd fast float %4378, %136
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4385 = fsub fast float %4379, %4383
  %4386 = fsub fast float %4380, %4384
  %4387 = fmul fast float %4385, %4385
  %4388 = fmul fast float %4386, %4386
  %4389 = fadd fast float %4387, %4388
  %4390 = call float @dx.op.unary.f32(i32 24, float %4389)  ; Sqrt(value)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4392 = fcmp fast olt float %4390, %4391
  br i1 %4392, label %4393, label %4460

; <label>:4393                                    ; preds = %4320
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4402 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4403 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4404 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4405 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4406 = fadd fast float %4403, %4379
  %4407 = fadd fast float %4404, %4380
  %4408 = fadd fast float %4405, %4381
  %4409 = fmul fast float %4406, %4395
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4407, float %4397, float %4409)  ; FMad(a,b,c)
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4399, float %4410)  ; FMad(a,b,c)
  %4412 = fmul fast float %4406, %4400
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4407, float %4401, float %4412)  ; FMad(a,b,c)
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4402, float %4413)  ; FMad(a,b,c)
  %4415 = fsub fast float %4411, %4403
  %4416 = fsub fast float %4414, %4404
  %4417 = fsub fast float %4415, %4383
  %4418 = fadd fast float %4417, %4391
  %4419 = fsub fast float %4416, %4384
  %4420 = fadd fast float %4419, %4391
  %4421 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4422 = fmul fast float %4418, %4421
  %4423 = fmul fast float %4420, %4421
  %4424 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4426 = fsub fast float 1.000000e+00, %4424
  %4427 = fsub fast float 1.000000e+00, %4425
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4426, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = fcmp fast ugt float %4429, 0.000000e+00
  br i1 %4430, label %4431, label %4734

; <label>:4431                                    ; preds = %4393
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4434 = fmul fast float %4433, %4429
  %4435 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4436 = fadd fast float %4435, %4434
  %4437 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4438 = fadd fast float %4436, %4405
  %4439 = fmul fast float %4411, %4399
  %4440 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4402, float %4439)  ; FMad(a,b,c)
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4438, float %4437, float %4440)  ; FMad(a,b,c)
  %4442 = fsub fast float %4441, %4405
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4445 = fsub fast float %4442, %4444
  %4446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4426, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4426, float %4427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = fadd fast float %4451, %4447
  %4455 = fmul fast float %4454, 0x3F847AE140000000
  %4456 = fadd fast float %4452, %4448
  %4457 = fmul fast float %4456, 0x3F847AE140000000
  %4458 = fadd fast float %4453, %4449
  %4459 = fmul fast float %4458, 0x3F847AE140000000
  br label %4734

; <label>:4460                                    ; preds = %4320
  %4461 = and i32 %152, 1
  %4462 = icmp eq i32 %4461, 0
  br i1 %4462, label %4734, label %4463

; <label>:4463                                    ; preds = %4460
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4464, 3
  %4474 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4475 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4476 = fadd fast float %4473, %4379
  %4477 = fadd fast float %4474, %4380
  %4478 = fadd fast float %4475, %4381
  %4479 = fmul fast float %4476, %4465
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4467, float %4479)  ; FMad(a,b,c)
  %4481 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4469, float %4480)  ; FMad(a,b,c)
  %4482 = fmul fast float %4476, %4470
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4471, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = fsub fast float %4481, %4473
  %4486 = fsub fast float %4484, %4474
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.i32 %4494, 0
  %4496 = extractvalue %dx.types.CBufRet.i32 %4494, 1
  %4497 = udiv i32 %4496, %4495
  %4498 = fsub fast float %4485, %4488
  %4499 = fsub fast float %4486, %4489
  %4500 = call float @dx.op.binary.f32(i32 35, float %4498, float 0.000000e+00)  ; FMax(a,b)
  %4501 = call float @dx.op.binary.f32(i32 35, float %4499, float 0.000000e+00)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 36, float %4500, float %4490)  ; FMin(a,b)
  %4503 = call float @dx.op.binary.f32(i32 36, float %4501, float %4491)  ; FMin(a,b)
  %4504 = add i32 %4495, -1
  %4505 = add i32 %4497, -1
  %4506 = fmul fast float %4502, %4493
  %4507 = fmul fast float %4503, %4493
  %4508 = fptoui float %4506 to i32
  %4509 = fptoui float %4507 to i32
  %4510 = call i32 @dx.op.binary.i32(i32 40, i32 %4508, i32 %4504)  ; UMin(a,b)
  %4511 = call i32 @dx.op.binary.i32(i32 40, i32 %4509, i32 %4505)  ; UMin(a,b)
  %4512 = mul i32 %4511, %4495
  %4513 = add i32 %4512, %4510
  %4514 = shl i32 %4513, 2
  %4515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4514, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.i32 %4515, 0
  %4517 = icmp eq i32 %4516, -1
  br i1 %4517, label %4734, label %4518

; <label>:4518                                    ; preds = %4463
  %4519 = mul i32 %4516, 148
  %4520 = add i32 %4519, 4
  %4521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4520, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = add i32 %4519, 8
  %4524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4523, i32 undef)  ; BufferLoad(srv,index,wot)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = add i32 %4519, 36
  %4527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = add i32 %4519, 60
  %4530 = add i32 %4519, 92
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = add i32 %4519, 116
  %4534 = fsub fast float %4485, %4522
  %4535 = fsub fast float %4486, %4525
  %4536 = fmul fast float %4493, %4534
  %4537 = fmul fast float %4493, %4535
  %4538 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4539 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 2
  %4543 = call float @dx.op.unary.f32(i32 83, float %4538)  ; DerivCoarseX(value)
  %4544 = call float @dx.op.unary.f32(i32 83, float %4540)  ; DerivCoarseX(value)
  %4545 = call float @dx.op.unary.f32(i32 84, float %4538)  ; DerivCoarseY(value)
  %4546 = call float @dx.op.unary.f32(i32 84, float %4540)  ; DerivCoarseY(value)
  %4547 = fmul fast float %4543, %4542
  %4548 = fmul fast float %4544, %4542
  %4549 = fmul fast float %4545, %4542
  %4550 = fmul fast float %4546, %4542
  %4551 = call float @dx.op.dot2.f32(i32 54, float %4549, float %4550, float %4549, float %4550)  ; Dot2(ax,ay,bx,by)
  %4552 = call float @dx.op.dot2.f32(i32 54, float %4547, float %4548, float %4547, float %4548)  ; Dot2(ax,ay,bx,by)
  %4553 = call float @dx.op.binary.f32(i32 35, float %4552, float %4551)  ; FMax(a,b)
  %4554 = call float @dx.op.unary.f32(i32 23, float %4553)  ; Log(value)
  %4555 = fmul fast float %4554, 5.000000e-01
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4558 = fadd fast float %4557, %4555
  %4559 = call float @dx.op.binary.f32(i32 35, float %4558, float 0.000000e+00)  ; FMax(a,b)
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4562 = fadd fast float %4561, %4559
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 3
  %4565 = fadd fast float %4562, %4564
  %4566 = add i32 %4532, 0
  %4567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4566, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4568 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4567, i32 0)  ; GetDimensions(handle,mipLevel)
  %4569 = extractvalue %dx.types.Dimensions %4568, 0
  %4570 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4569)  ; FirstbitLo(value)
  %4571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.i32 %4571, 1
  %4573 = sub nsw i32 %4572, %4570
  %4574 = sitofp i32 %4573 to float
  %4575 = fsub fast float %4565, %4574
  %4576 = call float @dx.op.binary.f32(i32 35, float %4575, float 0.000000e+00)  ; FMax(a,b)
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4567, %dx.types.Handle %27, float %4538, float %4540, float %4528, float undef, i32 0, i32 0, i32 undef, float %4576)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = fcmp ule float %4578, 0x3FE0101020000000
  %4580 = extractvalue %dx.types.CBufRet.i32 %4571, 0
  %4581 = and i32 %4580, 128
  %4582 = icmp ne i32 %4581, 0
  %4583 = and i1 %4579, %4582
  br i1 %4583, label %4734, label %4584

; <label>:4584                                    ; preds = %4518
  %4585 = add i32 %4519, 20
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = add i32 %4519, 24
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = add i32 %4519, 40
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = add i32 %4519, 96
  %4595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.i32 %4595, 0
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 2
  %4599 = fmul fast float %4598, %4538
  %4600 = fmul fast float %4598, %4540
  %4601 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4602 = fadd fast float %4599, %4601
  %4603 = fadd fast float %4600, %4601
  %4604 = add i32 %4596, 0
  %4605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4604, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4606 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4605, i32 0)  ; GetDimensions(handle,mipLevel)
  %4607 = extractvalue %dx.types.Dimensions %4606, 0
  %4608 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4607)  ; FirstbitLo(value)
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 1
  %4611 = sub nsw i32 %4610, %4608
  %4612 = sitofp i32 %4611 to float
  %4613 = fsub fast float %4562, %4612
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0.000000e+00)  ; FMax(a,b)
  %4615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4605, %dx.types.Handle %27, float %4602, float %4603, float %4593, float undef, i32 0, i32 0, i32 undef, float %4614)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = fmul fast float %4616, %4587
  %4618 = fadd fast float %4617, %4590
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4627 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4628 = fadd fast float %4624, %4485
  %4629 = fadd fast float %4626, %4486
  %4630 = fadd fast float %4618, %4627
  %4631 = fmul fast float %4628, %4620
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4621, float %4631)  ; FMad(a,b,c)
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4622, float %4632)  ; FMad(a,b,c)
  %4634 = fsub fast float %4633, %4627
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fsub fast float %4634, %4636
  %4638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.i32 %4638, 0
  %4640 = call i32 @dx.op.binary.i32(i32 40, i32 %4516, i32 %4639)  ; UMin(a,b)
  %4641 = mul i32 %4640, 36
  %4642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4641, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.i32 %4642, 0
  %4644 = add i32 %4641, 4
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4647 = fmul fast float %4646, %4538
  %4648 = fmul fast float %4646, %4540
  %4649 = extractvalue %dx.types.CBufRet.f32 %4645, 1
  %4650 = fadd fast float %4647, %4649
  %4651 = fadd fast float %4648, %4649
  %4652 = icmp eq i32 %4643, 0
  br i1 %4652, label %4721, label %4653

; <label>:4653                                    ; preds = %4584
  br label %4654

; <label>:4654                                    ; preds = %4711, %4653
  %4655 = phi float [ %4712, %4711 ], [ 0.000000e+00, %4653 ]
  %4656 = phi float [ %4713, %4711 ], [ 0.000000e+00, %4653 ]
  %4657 = phi float [ %4714, %4711 ], [ 0.000000e+00, %4653 ]
  %4658 = phi float [ %4715, %4711 ], [ 0.000000e+00, %4653 ]
  %4659 = phi float [ %4716, %4711 ], [ 0.000000e+00, %4653 ]
  %4660 = phi float [ %4717, %4711 ], [ 0.000000e+00, %4653 ]
  %4661 = phi i32 [ %4718, %4711 ], [ 0, %4653 ]
  %4662 = shl i32 %4661, 2
  %4663 = add i32 %4529, %4662
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = add i32 %4533, %4662
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = add i32 %4668, 0
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4669, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4670, i32 0)  ; GetDimensions(handle,mipLevel)
  %4672 = extractvalue %dx.types.Dimensions %4671, 0
  %4673 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4672)  ; FirstbitLo(value)
  %4674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.i32 %4674, 1
  %4676 = sub nsw i32 %4675, %4673
  %4677 = sitofp i32 %4676 to float
  %4678 = fsub fast float %4562, %4677
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0.000000e+00)  ; FMax(a,b)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4670, %dx.types.Handle %27, float %4650, float %4651, float %4665, float undef, i32 0, i32 0, i32 undef, float %4679)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = fcmp fast ogt float %4681, 0.000000e+00
  br i1 %4682, label %4683, label %4711

; <label>:4683                                    ; preds = %4654
  %4684 = add i32 %4644, %4662
  %4685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.i32 %4685, 0
  %4687 = and i32 %4686, 32767
  %4688 = mul nuw nsw i32 %4687, 928
  %4689 = add nuw nsw i32 %4688, 48
  %4690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4689, i32 undef)  ; BufferLoad(srv,index,wot)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = add nuw nsw i32 %4688, 60
  %4695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4694, i32 undef)  ; BufferLoad(srv,index,wot)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = fmul fast float %4691, %4681
  %4700 = fmul fast float %4692, %4681
  %4701 = fmul fast float %4693, %4681
  %4702 = fadd fast float %4699, %4655
  %4703 = fadd fast float %4700, %4656
  %4704 = fadd fast float %4701, %4657
  %4705 = fmul fast float %4696, %4681
  %4706 = fmul fast float %4697, %4681
  %4707 = fmul fast float %4698, %4681
  %4708 = fadd fast float %4705, %4658
  %4709 = fadd fast float %4706, %4659
  %4710 = fadd fast float %4707, %4660
  br label %4711

; <label>:4711                                    ; preds = %4683, %4654
  %4712 = phi float [ %4702, %4683 ], [ %4655, %4654 ]
  %4713 = phi float [ %4703, %4683 ], [ %4656, %4654 ]
  %4714 = phi float [ %4704, %4683 ], [ %4657, %4654 ]
  %4715 = phi float [ %4708, %4683 ], [ %4658, %4654 ]
  %4716 = phi float [ %4709, %4683 ], [ %4659, %4654 ]
  %4717 = phi float [ %4710, %4683 ], [ %4660, %4654 ]
  %4718 = add nuw i32 %4661, 1
  %4719 = icmp eq i32 %4718, %4643
  br i1 %4719, label %4720, label %4654

; <label>:4720                                    ; preds = %4711
  br label %4721

; <label>:4721                                    ; preds = %4720, %4584
  %4722 = phi float [ 0.000000e+00, %4584 ], [ %4712, %4720 ]
  %4723 = phi float [ 0.000000e+00, %4584 ], [ %4713, %4720 ]
  %4724 = phi float [ 0.000000e+00, %4584 ], [ %4714, %4720 ]
  %4725 = phi float [ 0.000000e+00, %4584 ], [ %4715, %4720 ]
  %4726 = phi float [ 0.000000e+00, %4584 ], [ %4716, %4720 ]
  %4727 = phi float [ 0.000000e+00, %4584 ], [ %4717, %4720 ]
  %4728 = fadd fast float %4725, %4722
  %4729 = fmul fast float %4728, 0x3F847AE140000000
  %4730 = fadd fast float %4726, %4723
  %4731 = fmul fast float %4730, 0x3F847AE140000000
  %4732 = fadd fast float %4727, %4724
  %4733 = fmul fast float %4732, 0x3F847AE140000000
  br label %4734

; <label>:4734                                    ; preds = %4721, %4518, %4463, %4460, %4431, %4393
  %4735 = phi float [ %4445, %4431 ], [ -1.310720e+05, %4393 ], [ %4637, %4721 ], [ -1.310720e+05, %4463 ], [ -1.310720e+05, %4518 ], [ -1.310720e+05, %4460 ]
  %4736 = phi float [ %4455, %4431 ], [ 0.000000e+00, %4393 ], [ %4729, %4721 ], [ 0.000000e+00, %4463 ], [ 0.000000e+00, %4518 ], [ 0.000000e+00, %4460 ]
  %4737 = phi float [ %4457, %4431 ], [ 0.000000e+00, %4393 ], [ %4731, %4721 ], [ 0.000000e+00, %4463 ], [ 0.000000e+00, %4518 ], [ 0.000000e+00, %4460 ]
  %4738 = phi float [ %4459, %4431 ], [ 0.000000e+00, %4393 ], [ %4733, %4721 ], [ 0.000000e+00, %4463 ], [ 0.000000e+00, %4518 ], [ 0.000000e+00, %4460 ]
  %4739 = phi i1 [ true, %4431 ], [ false, %4393 ], [ true, %4721 ], [ false, %4463 ], [ false, %4518 ], [ false, %4460 ]
  %4740 = and i32 %152, 3
  %4741 = icmp eq i32 %4740, 1
  %4742 = select i1 %4741, float 1.000000e+00, float 0.000000e+00
  %4743 = fsub fast float %4735, %136
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = select i1 %4739, float %4744, float 1.000000e+00
  %4746 = fmul fast float %4745, %4742
  %4747 = icmp eq i32 %4740, 3
  %4748 = select i1 %4747, float 1.000000e+00, float %4746
  %4749 = call float @dx.op.binary.f32(i32 35, float %4336, float %4748)  ; FMax(a,b)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fcmp fast une float %4750, 0.000000e+00
  %4752 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = call float @dx.op.unary.f32(i32 25, float %4752)  ; Rsqrt(value)
  br i1 %4751, label %4761, label %4754

; <label>:4754                                    ; preds = %4734
  %4755 = fmul fast float %4753, %134
  %4756 = fmul fast float %4753, %135
  %4757 = fmul fast float %4753, %136
  %4758 = fsub fast float -0.000000e+00, %4755
  %4759 = fsub fast float -0.000000e+00, %4756
  %4760 = fsub fast float -0.000000e+00, %4757
  br label %4929

; <label>:4761                                    ; preds = %4734
  %4762 = fmul fast float %134, %4753
  %4763 = fsub fast float -0.000000e+00, %4762
  %4764 = fmul fast float %135, %4753
  %4765 = fsub fast float -0.000000e+00, %4764
  %4766 = fmul fast float %136, %4753
  %4767 = fsub fast float -0.000000e+00, %4766
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4765, float %4767, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = fmul fast float %4750, 2.500000e+00
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fmul fast float %4750, 0x4013FFFFE0000000
  %4772 = fadd fast float %4771, 0xBFFFFFFFE0000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4750, 0x4004000020000000
  %4775 = fadd fast float %4774, 0xBFF8000040000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4778 = fmul fast float %4339, 1.000000e+01
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, 2.000000e+00
  %4781 = fsub fast float 3.000000e+00, %4780
  %4782 = fmul fast float %4779, %4779
  %4783 = fmul fast float %4782, %4781
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = fsub fast float 0x3FE3333340000000, %4360
  %4786 = fmul fast float %4785, 0x400AAAAAA0000000
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4784, %4787
  %4789 = fmul fast float %4372, 0x3FEA2B8620000000
  %4790 = fmul fast float %4373, 0x3FEA2B8620000000
  %4791 = fmul fast float %4374, 0x3FEA2B8620000000
  %4792 = fadd fast float %4789, 0x3FC81DFBA0000000
  %4793 = fmul fast float %4792, %4372
  %4794 = fadd fast float %4793, 0x3F910E6020000000
  %4795 = fadd fast float %4790, 0x3FC81DFBA0000000
  %4796 = fmul fast float %4795, %4373
  %4797 = fadd fast float %4796, 0x3F910E6020000000
  %4798 = fadd fast float %4791, 0x3FC81DFBA0000000
  %4799 = fmul fast float %4798, %4374
  %4800 = fadd fast float %4799, 0x3F910E6020000000
  %4801 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = fsub fast float %4801, %4372
  %4805 = fsub fast float %4802, %4373
  %4806 = fsub fast float %4803, %4374
  %4807 = fmul fast float %4804, %4777
  %4808 = fmul fast float %4807, %4788
  %4809 = fmul fast float %4805, %4777
  %4810 = fmul fast float %4809, %4788
  %4811 = fmul fast float %4806, %4777
  %4812 = fmul fast float %4811, %4788
  %4813 = fadd fast float %4808, %4372
  %4814 = fadd fast float %4810, %4373
  %4815 = fadd fast float %4812, %4374
  %4816 = fmul fast float %4333, %4333
  %4817 = fmul fast float %4816, %4816
  %4818 = fadd fast float %4773, 1.000000e+00
  %4819 = fsub fast float %4818, %4788
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = fsub fast float 1.000000e+00, %4817
  %4824 = call float @dx.op.binary.f32(i32 36, float %4820, float %4823)  ; FMin(a,b)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4826 = call float @dx.op.binary.f32(i32 35, float %4824, float %4825)  ; FMax(a,b)
  %4827 = fadd fast float %4822, 0xBFE4CCCCC0000000
  %4828 = fmul fast float %4827, 0x4006DB6DA0000000
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4829, 2.000000e+00
  %4831 = fsub fast float 3.000000e+00, %4830
  %4832 = bitcast float %4357 to i32
  %4833 = ashr i32 %4832, 1
  %4834 = add nsw i32 %4833, 532487669
  %4835 = bitcast i32 %4834 to float
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = bitcast float %4836 to i32
  %4838 = sub nsw i32 2129859010, %4837
  %4839 = bitcast i32 %4838 to float
  %4840 = fmul fast float %4839, 2.000000e+00
  %4841 = bitcast float %4358 to i32
  %4842 = ashr i32 %4841, 1
  %4843 = add nsw i32 %4842, 532487669
  %4844 = bitcast i32 %4843 to float
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4848, 2.000000e+00
  %4850 = bitcast float %4359 to i32
  %4851 = ashr i32 %4850, 1
  %4852 = add nsw i32 %4851, 532487669
  %4853 = bitcast i32 %4852 to float
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = bitcast float %4854 to i32
  %4856 = sub nsw i32 2129859010, %4855
  %4857 = bitcast i32 %4856 to float
  %4858 = fmul fast float %4857, 2.000000e+00
  %4859 = fsub fast float 0x4002A9FBE0000000, %4840
  %4860 = fadd fast float %4840, 0x3FD54FDF00000000
  %4861 = bitcast float %4860 to i32
  %4862 = sub nsw i32 2129859010, %4861
  %4863 = bitcast i32 %4862 to float
  %4864 = fmul fast float %4863, %4859
  %4865 = fmul fast float %4864, %4864
  %4866 = fsub fast float 0x4002A9FBE0000000, %4849
  %4867 = fadd fast float %4849, 0x3FD54FDF00000000
  %4868 = bitcast float %4867 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = fmul fast float %4870, %4866
  %4872 = fmul fast float %4871, %4871
  %4873 = fsub fast float 0x4002A9FBE0000000, %4858
  %4874 = fadd fast float %4858, 0x3FD54FDF00000000
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = fmul fast float %4877, %4873
  %4879 = fmul fast float %4878, %4878
  %4880 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4865)  ; FMax(a,b)
  %4881 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4872)  ; FMax(a,b)
  %4882 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4879)  ; FMax(a,b)
  %4883 = fsub fast float 1.000000e+00, %4768
  %4884 = fadd fast float %4883, %4784
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fsub fast float 1.000000e+00, %4748
  %4887 = fmul fast float %4826, %4886
  %4888 = fmul fast float %4829, %4829
  %4889 = fmul fast float %4888, %4887
  %4890 = fmul fast float %4889, %4831
  %4891 = fmul fast float %4886, 0xBFE99999A0000000
  %4892 = fmul fast float %4891, %4777
  %4893 = fmul fast float %4892, %4788
  %4894 = fadd fast float %4893, 1.000000e+00
  %4895 = fadd fast float %4360, -1.000000e+00
  %4896 = fmul fast float %4894, %4895
  %4897 = fadd fast float %4896, 1.000000e+00
  %4898 = fsub fast float %4880, %4357
  %4899 = fsub fast float %4881, %4358
  %4900 = fsub fast float %4882, %4359
  %4901 = fmul fast float %4890, %4898
  %4902 = fmul fast float %4890, %4899
  %4903 = fmul fast float %4890, %4900
  %4904 = fadd fast float %4901, %4357
  %4905 = fadd fast float %4902, %4358
  %4906 = fadd fast float %4903, %4359
  %4907 = fsub fast float %84, %4321
  %4908 = fsub fast float %86, %4322
  %4909 = fsub fast float %88, %4323
  %4910 = fmul fast float %4890, %4907
  %4911 = fmul fast float %4890, %4908
  %4912 = fmul fast float %4890, %4909
  %4913 = fadd fast float %4910, %4321
  %4914 = fadd fast float %4911, %4322
  %4915 = fadd fast float %4912, %4323
  %4916 = fmul fast float %4890, %4885
  %4917 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4918 = fsub fast float 1.000000e+00, %4917
  %4919 = fmul fast float %4916, %4918
  %4920 = fadd fast float %4919, %4917
  %4921 = fsub fast float 1.000000e+00, %4333
  %4922 = fmul fast float %4890, %4921
  %4923 = fadd fast float %4922, %4333
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4914, float %4915, float %4913, float %4914, float %4915)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call float @dx.op.unary.f32(i32 25, float %4924)  ; Rsqrt(value)
  %4926 = fmul fast float %4913, %4925
  %4927 = fmul fast float %4914, %4925
  %4928 = fmul fast float %4915, %4925
  br label %4929

; <label>:4929                                    ; preds = %4761, %4754
  %4930 = phi float [ %4760, %4754 ], [ %4767, %4761 ]
  %4931 = phi float [ %4759, %4754 ], [ %4765, %4761 ]
  %4932 = phi float [ %4758, %4754 ], [ %4763, %4761 ]
  %4933 = phi float [ %4757, %4754 ], [ %4766, %4761 ]
  %4934 = phi float [ %4756, %4754 ], [ %4764, %4761 ]
  %4935 = phi float [ %4755, %4754 ], [ %4762, %4761 ]
  %4936 = phi float [ %4357, %4754 ], [ %4904, %4761 ]
  %4937 = phi float [ %4358, %4754 ], [ %4905, %4761 ]
  %4938 = phi float [ %4359, %4754 ], [ %4906, %4761 ]
  %4939 = phi float [ %4372, %4754 ], [ %4813, %4761 ]
  %4940 = phi float [ %4373, %4754 ], [ %4814, %4761 ]
  %4941 = phi float [ %4374, %4754 ], [ %4815, %4761 ]
  %4942 = phi float [ %4321, %4754 ], [ %4926, %4761 ]
  %4943 = phi float [ %4322, %4754 ], [ %4927, %4761 ]
  %4944 = phi float [ %4323, %4754 ], [ %4928, %4761 ]
  %4945 = phi float [ %4360, %4754 ], [ %4920, %4761 ]
  %4946 = phi float [ %4333, %4754 ], [ %4923, %4761 ]
  %4947 = select i1 %176, float 0.000000e+00, float %4938
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %4932, float %4931, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4935, float %4934, float %4933, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = fmul fast float %4950, 2.000000e+00
  %4952 = fmul fast float %4951, %4942
  %4953 = fmul fast float %4951, %4943
  %4954 = fmul fast float %4951, %4944
  %4955 = fsub fast float %4935, %4952
  %4956 = fsub fast float %4934, %4953
  %4957 = fsub fast float %4933, %4954
  %4958 = call float @dx.op.binary.f32(i32 36, float %4946, float 1.000000e+00)  ; FMin(a,b)
  %4959 = fsub fast float 1.000000e+00, %4946
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4963 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = fcmp fast oeq float %4963, 0.000000e+00
  %4965 = fcmp fast oeq float %4962, 0.000000e+00
  %4966 = or i1 %4965, %4964
  br i1 %4966, label %4996, label %4967

; <label>:4967                                    ; preds = %4929
  %4968 = fsub fast float -0.000000e+00, %55
  %4969 = fsub fast float -0.000000e+00, %53
  %4970 = call float @dx.op.unary.f32(i32 24, float %4963)  ; Sqrt(value)
  %4971 = fdiv fast float %4970, %4962
  %4972 = fcmp fast ogt float %4971, 0x3FFB6F8900000000
  %4973 = select i1 %4972, float 0x3FFB6F8900000000, float %4971
  %4974 = fmul fast float %4973, 0x3FE8A23460000000
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4973, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4977 = fmul fast float %4975, %4962
  %4978 = fmul fast float %4976, 0x3FF279A740000000
  %4979 = fadd fast float %4978, -1.000000e+00
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %54, float %4968, float %4969, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = call float @dx.op.unary.f32(i32 25, float %4980)  ; Rsqrt(value)
  %4982 = fmul fast float %4981, %4968
  %4983 = fmul fast float %4981, %4969
  %4984 = fmul fast float %4981, %54
  %4985 = fmul fast float %4979, %4979
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = fmul fast float %4976, 0x40005F8BE0000000
  %4988 = fsub fast float 0x400C5BF8A0000000, %4987
  %4989 = fdiv fast float %4977, %4988
  %4990 = fmul fast float %4989, 0x3FEE31C3C0000000
  %4991 = fmul fast float %4990, %4986
  %4992 = fmul fast float %4976, 0x3FDACB7480000000
  %4993 = fadd fast float %4992, 0xBFD7347680000000
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, %4986
  br label %4996

; <label>:4996                                    ; preds = %4967, %4929
  %4997 = phi float [ %4982, %4967 ], [ 0.000000e+00, %4929 ]
  %4998 = phi float [ %4983, %4967 ], [ 0.000000e+00, %4929 ]
  %4999 = phi float [ %4984, %4967 ], [ 0.000000e+00, %4929 ]
  %5000 = phi float [ %4991, %4967 ], [ 0.000000e+00, %4929 ]
  %5001 = phi float [ %4995, %4967 ], [ 0.000000e+00, %4929 ]
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = fmul fast float %5002, %5002
  %5004 = fmul fast float %5003, 0x3FEE471020000000
  %5005 = fadd fast float %5004, 0xBFD42F6020000000
  %5006 = fmul fast float %4962, 0x3FD20DD760000000
  %5007 = fmul fast float %5005, %5001
  %5008 = fmul fast float %5000, 0x3FDF454380000000
  %5009 = fmul fast float %5008, %5002
  %5010 = fadd fast float %5009, %5006
  %5011 = fadd fast float %5010, %5007
  %5012 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5013 = fmul fast float %5012, 0x3FDF454380000000
  %5014 = fmul fast float %5012, %5012
  %5015 = fmul fast float %5014, 0x3FEE471020000000
  %5016 = fadd fast float %5015, 0xBFD42F6020000000
  %5017 = call float @dx.op.dot3.f32(i32 55, float %4962, float %5000, float %5001, float 0x3FD20DD760000000, float %5013, float %5016)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5019 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = fcmp fast oeq float %5019, 0.000000e+00
  %5021 = fcmp fast oeq float %5018, 0.000000e+00
  %5022 = or i1 %5021, %5020
  br i1 %5022, label %5052, label %5023

; <label>:5023                                    ; preds = %4996
  %5024 = fsub fast float -0.000000e+00, %51
  %5025 = fsub fast float -0.000000e+00, %49
  %5026 = call float @dx.op.unary.f32(i32 24, float %5019)  ; Sqrt(value)
  %5027 = fdiv fast float %5026, %5018
  %5028 = fcmp fast ogt float %5027, 0x3FFB6F8900000000
  %5029 = select i1 %5028, float 0x3FFB6F8900000000, float %5027
  %5030 = fmul fast float %5029, 0x3FE8A23460000000
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = call float @dx.op.binary.f32(i32 35, float %5029, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5033 = fmul fast float %5031, %5018
  %5034 = fmul fast float %5032, 0x3FF279A740000000
  %5035 = fadd fast float %5034, -1.000000e+00
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %50, float %5024, float %5025, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5037, %5024
  %5039 = fmul fast float %5037, %5025
  %5040 = fmul fast float %5037, %50
  %5041 = fmul fast float %5035, %5035
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = fmul fast float %5032, 0x40005F8BE0000000
  %5044 = fsub fast float 0x400C5BF8A0000000, %5043
  %5045 = fdiv fast float %5033, %5044
  %5046 = fmul fast float %5045, 0x3FEE31C3C0000000
  %5047 = fmul fast float %5046, %5042
  %5048 = fmul fast float %5032, 0x3FDACB7480000000
  %5049 = fadd fast float %5048, 0xBFD7347680000000
  %5050 = fmul fast float %5049, %5045
  %5051 = fmul fast float %5050, %5042
  br label %5052

; <label>:5052                                    ; preds = %5023, %4996
  %5053 = phi float [ %5038, %5023 ], [ 0.000000e+00, %4996 ]
  %5054 = phi float [ %5039, %5023 ], [ 0.000000e+00, %4996 ]
  %5055 = phi float [ %5040, %5023 ], [ 0.000000e+00, %4996 ]
  %5056 = phi float [ %5047, %5023 ], [ 0.000000e+00, %4996 ]
  %5057 = phi float [ %5051, %5023 ], [ 0.000000e+00, %4996 ]
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = fmul fast float %5058, %5058
  %5060 = fmul fast float %5059, 0x3FEE471020000000
  %5061 = fadd fast float %5060, 0xBFD42F6020000000
  %5062 = fmul fast float %5018, 0x3FD20DD760000000
  %5063 = fmul fast float %5061, %5057
  %5064 = fmul fast float %5056, 0x3FDF454380000000
  %5065 = fmul fast float %5064, %5058
  %5066 = fadd fast float %5065, %5062
  %5067 = fadd fast float %5066, %5063
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5055, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = fmul fast float %5068, 0x3FDF454380000000
  %5070 = fmul fast float %5068, %5068
  %5071 = fmul fast float %5070, 0x3FEE471020000000
  %5072 = fadd fast float %5071, 0xBFD42F6020000000
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5056, float %5057, float 0x3FD20DD760000000, float %5069, float %5072)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5075 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fcmp fast oeq float %5075, 0.000000e+00
  %5077 = fcmp fast oeq float %5074, 0.000000e+00
  %5078 = or i1 %5077, %5076
  br i1 %5078, label %5108, label %5079

; <label>:5079                                    ; preds = %5052
  %5080 = fsub fast float -0.000000e+00, %47
  %5081 = fsub fast float -0.000000e+00, %45
  %5082 = call float @dx.op.unary.f32(i32 24, float %5075)  ; Sqrt(value)
  %5083 = fdiv fast float %5082, %5074
  %5084 = fcmp fast ogt float %5083, 0x3FFB6F8900000000
  %5085 = select i1 %5084, float 0x3FFB6F8900000000, float %5083
  %5086 = fmul fast float %5085, 0x3FE8A23460000000
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = call float @dx.op.binary.f32(i32 35, float %5085, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5089 = fmul fast float %5087, %5074
  %5090 = fmul fast float %5088, 0x3FF279A740000000
  %5091 = fadd fast float %5090, -1.000000e+00
  %5092 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %46, float %5080, float %5081, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = call float @dx.op.unary.f32(i32 25, float %5092)  ; Rsqrt(value)
  %5094 = fmul fast float %5093, %5080
  %5095 = fmul fast float %5093, %5081
  %5096 = fmul fast float %5093, %46
  %5097 = fmul fast float %5091, %5091
  %5098 = fsub fast float 1.000000e+00, %5097
  %5099 = fmul fast float %5088, 0x40005F8BE0000000
  %5100 = fsub fast float 0x400C5BF8A0000000, %5099
  %5101 = fdiv fast float %5089, %5100
  %5102 = fmul fast float %5101, 0x3FEE31C3C0000000
  %5103 = fmul fast float %5102, %5098
  %5104 = fmul fast float %5088, 0x3FDACB7480000000
  %5105 = fadd fast float %5104, 0xBFD7347680000000
  %5106 = fmul fast float %5105, %5101
  %5107 = fmul fast float %5106, %5098
  br label %5108

; <label>:5108                                    ; preds = %5079, %5052
  %5109 = phi float [ %5094, %5079 ], [ 0.000000e+00, %5052 ]
  %5110 = phi float [ %5095, %5079 ], [ 0.000000e+00, %5052 ]
  %5111 = phi float [ %5096, %5079 ], [ 0.000000e+00, %5052 ]
  %5112 = phi float [ %5103, %5079 ], [ 0.000000e+00, %5052 ]
  %5113 = phi float [ %5107, %5079 ], [ 0.000000e+00, %5052 ]
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = fmul fast float %5114, %5114
  %5116 = fmul fast float %5115, 0x3FEE471020000000
  %5117 = fadd fast float %5116, 0xBFD42F6020000000
  %5118 = fmul fast float %5074, 0x3FD20DD760000000
  %5119 = fmul fast float %5117, %5113
  %5120 = fmul fast float %5112, 0x3FDF454380000000
  %5121 = fmul fast float %5120, %5114
  %5122 = fadd fast float %5121, %5118
  %5123 = fadd fast float %5122, %5119
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = fmul fast float %5124, 0x3FDF454380000000
  %5126 = fmul fast float %5124, %5124
  %5127 = fmul fast float %5126, 0x3FEE471020000000
  %5128 = fadd fast float %5127, 0xBFD42F6020000000
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5112, float %5113, float 0x3FD20DD760000000, float %5125, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5011, float 0.000000e+00)  ; FMax(a,b)
  %5131 = call float @dx.op.binary.f32(i32 35, float %5067, float 0.000000e+00)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5123, float 0.000000e+00)  ; FMax(a,b)
  %5133 = call float @dx.op.binary.f32(i32 35, float %5017, float 0.000000e+00)  ; FMax(a,b)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5073, float 0.000000e+00)  ; FMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5129, float 0.000000e+00)  ; FMax(a,b)
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = call float @dx.op.binary.f32(i32 36, float %4939, float %5137)  ; FMin(a,b)
  %5139 = fsub fast float 1.000000e+00, %4958
  %5140 = fmul fast float %5138, %5139
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = bitcast float %5141 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = call float @dx.op.binary.f32(i32 36, float %4940, float %5137)  ; FMin(a,b)
  %5146 = fmul fast float %5145, %5139
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = bitcast float %5147 to i32
  %5149 = sub nsw i32 2129859010, %5148
  %5150 = bitcast i32 %5149 to float
  %5151 = call float @dx.op.binary.f32(i32 36, float %4941, float %5137)  ; FMin(a,b)
  %5152 = fmul fast float %5151, %5139
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = fmul fast float %5130, %4958
  %5158 = fmul fast float %5157, %5144
  %5159 = fmul fast float %5131, %4958
  %5160 = fmul fast float %5159, %5150
  %5161 = fmul fast float %5132, %4958
  %5162 = fmul fast float %5161, %5156
  %5163 = call float @dx.op.binary.f32(i32 36, float %4936, float %5137)  ; FMin(a,b)
  %5164 = fmul fast float %5163, %5139
  %5165 = fsub fast float 1.000000e+00, %5164
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = call float @dx.op.binary.f32(i32 36, float %4937, float %5137)  ; FMin(a,b)
  %5170 = fmul fast float %5169, %5139
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = bitcast float %5171 to i32
  %5173 = sub nsw i32 2129859010, %5172
  %5174 = bitcast i32 %5173 to float
  %5175 = call float @dx.op.binary.f32(i32 36, float %4947, float %5137)  ; FMin(a,b)
  %5176 = fmul fast float %5175, %5139
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = bitcast float %5177 to i32
  %5179 = sub nsw i32 2129859010, %5178
  %5180 = bitcast i32 %5179 to float
  %5181 = fmul fast float %5133, %4958
  %5182 = fmul fast float %5181, %5168
  %5183 = fmul fast float %5134, %4958
  %5184 = fmul fast float %5183, %5174
  %5185 = fmul fast float %5135, %4958
  %5186 = fmul fast float %5185, %5180
  %5187 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5160, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = select i1 %176, float 0.000000e+00, float %5158
  %5189 = select i1 %176, float %5187, float %5160
  %5190 = select i1 %176, float 0.000000e+00, float %5162
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5184, float %5186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = select i1 %176, float 0.000000e+00, float %5182
  %5193 = select i1 %176, float %5191, float %5184
  %5194 = select i1 %176, float 0.000000e+00, float %5186
  %5195 = fmul fast float %4949, 9.843750e-01
  %5196 = fmul fast float %4945, 9.843750e-01
  %5197 = fadd fast float %5195, 7.812500e-03
  %5198 = fadd fast float %5196, 7.812500e-03
  %5199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5197, float %5198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 2
  %5201 = extractvalue %dx.types.ResRet.f32 %5199, 3
  %5202 = fmul fast float %5200, %4936
  %5203 = fmul fast float %5200, %4937
  %5204 = fmul fast float %5200, %4947
  %5205 = fadd fast float %5202, %5201
  %5206 = fadd fast float %5203, %5201
  %5207 = fadd fast float %5204, %5201
  %5208 = fcmp fast ogt float %4334, 0.000000e+00
  br i1 %5208, label %5209, label %5235

; <label>:5209                                    ; preds = %5108
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4334, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = fadd fast float %5211, -5.000000e-01
  %5215 = fadd fast float %5212, -5.000000e-01
  %5216 = fadd fast float %5213, -5.000000e-01
  %5217 = fsub fast float 1.000000e+00, %4936
  %5218 = fsub fast float 1.000000e+00, %4937
  %5219 = fsub fast float 1.000000e+00, %4947
  %5220 = fmul fast float %4936, 4.000000e+00
  %5221 = fmul fast float %5220, %5217
  %5222 = fmul fast float %5221, %5214
  %5223 = fmul fast float %4937, 4.000000e+00
  %5224 = fmul fast float %5223, %5218
  %5225 = fmul fast float %5224, %5215
  %5226 = fmul fast float %4947, 4.000000e+00
  %5227 = fmul fast float %5226, %5219
  %5228 = fmul fast float %5227, %5216
  %5229 = fadd fast float %5222, %5205
  %5230 = fadd fast float %5225, %5206
  %5231 = fadd fast float %5228, %5207
  %5232 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5234 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  br label %5235

; <label>:5235                                    ; preds = %5209, %5108
  %5236 = phi float [ %5232, %5209 ], [ %5205, %5108 ]
  %5237 = phi float [ %5233, %5209 ], [ %5206, %5108 ]
  %5238 = phi float [ %5234, %5209 ], [ %5207, %5108 ]
  %5239 = call float @dx.op.binary.f32(i32 35, float %5237, float %5238)  ; FMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5236, float %5239)  ; FMax(a,b)
  %5241 = fsub fast float 1.000000e+00, %5240
  %5242 = fmul fast float %5241, %5188
  %5243 = fmul fast float %5241, %5189
  %5244 = fmul fast float %5241, %5190
  %5245 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4940, float %4941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fcmp fast ogt float %5245, 0x3E7FF19E20000000
  %5247 = fdiv fast float 1.000000e+00, %5245
  %5248 = select i1 %5246, float %5247, float 0.000000e+00
  %5249 = fmul fast float %5248, %4939
  %5250 = fmul fast float %5248, %4940
  %5251 = fmul fast float %5248, %4941
  %5252 = fadd fast float %5249, -1.000000e+00
  %5253 = fadd fast float %5250, -1.000000e+00
  %5254 = fadd fast float %5251, -1.000000e+00
  %5255 = fmul fast float %5252, 5.000000e-01
  %5256 = fmul fast float %5253, 5.000000e-01
  %5257 = fmul fast float %5254, 5.000000e-01
  %5258 = fadd fast float %5255, 1.000000e+00
  %5259 = fadd fast float %5256, 1.000000e+00
  %5260 = fadd fast float %5257, 1.000000e+00
  %5261 = fmul fast float %5236, %5192
  %5262 = fmul fast float %5237, %5193
  %5263 = fmul fast float %5238, %5194
  %5264 = fsub fast float 1.000000e+00, %4949
  %5265 = bitcast float %5264 to i32
  %5266 = sitofp i32 %5265 to float
  %5267 = fmul fast float %5266, 5.000000e+00
  %5268 = fadd fast float %5267, 0xC1EFBF8940000000
  %5269 = fptosi float %5268 to i32
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5270, %4335
  %5272 = fmul fast float %5188, %5271
  %5273 = fmul fast float %5272, %5241
  %5274 = fmul fast float %5273, %5258
  %5275 = fmul fast float %5189, %5271
  %5276 = fmul fast float %5275, %5241
  %5277 = fmul fast float %5276, %5259
  %5278 = fmul fast float %5190, %5271
  %5279 = fmul fast float %5278, %5241
  %5280 = fmul fast float %5279, %5260
  %5281 = fmul fast float %5242, %4331
  %5282 = fmul fast float %5243, %4331
  %5283 = fmul fast float %5244, %4331
  %5284 = fadd fast float %5261, %4327
  %5285 = fadd fast float %5284, %5274
  %5286 = fmul fast float %5285, %4331
  %5287 = fadd fast float %5262, %4328
  %5288 = fadd fast float %5287, %5277
  %5289 = fmul fast float %5288, %4331
  %5290 = fadd fast float %5263, %4329
  %5291 = fadd fast float %5290, %5280
  %5292 = fmul fast float %5291, %4331
  %5293 = bitcast i32 %4961 to float
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5296 = fcmp fast oeq float %5295, 0.000000e+00
  br i1 %5296, label %5524, label %5297

; <label>:5297                                    ; preds = %5235
  %5298 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5299 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5300 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5308 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = select i1 %176, float %5306, float %5302
  %5310 = select i1 %176, float %5308, float %5303
  %5311 = select i1 %176, float %5307, float %5304
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5314 = fcmp fast une float %5313, 0.000000e+00
  br i1 %5314, label %5315, label %5332

; <label>:5315                                    ; preds = %5297
  %5316 = fptoui float %75 to i32
  %5317 = fptoui float %76 to i32
  %5318 = lshr i32 %5316, 4
  %5319 = lshr i32 %5317, 4
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  %5322 = fptoui float %5321 to i32
  %5323 = add i32 %5322, 15
  %5324 = lshr i32 %5323, 4
  %5325 = mul i32 %5324, %5319
  %5326 = add i32 %5325, %5318
  %5327 = shl i32 %5326, 3
  %5328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.i32 %5328, 0
  %5330 = and i32 %5329, -268435456
  %5331 = icmp eq i32 %5330, -1342177280
  br i1 %5331, label %5342, label %5332

; <label>:5332                                    ; preds = %5315, %5297
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5335 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5336 = fmul fast float %5334, %75
  %5337 = fmul fast float %5335, %76
  %5338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5336, float %5337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5339 = extractvalue %dx.types.ResRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.ResRet.f32 %5338, 1
  %5341 = extractvalue %dx.types.ResRet.f32 %5338, 2
  br label %5342

; <label>:5342                                    ; preds = %5332, %5315
  %5343 = phi float [ %5339, %5332 ], [ 0.000000e+00, %5315 ]
  %5344 = phi float [ %5340, %5332 ], [ 0.000000e+00, %5315 ]
  %5345 = phi float [ %5341, %5332 ], [ 0.000000e+00, %5315 ]
  %5346 = call float @dx.op.binary.f32(i32 36, float %5344, float %5345)  ; FMin(a,b)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5343, float %5346)  ; FMin(a,b)
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  br i1 %5348, label %5349, label %5524, !dx.controlflow.hints !75

; <label>:5349                                    ; preds = %5342
  %5350 = fmul fast float %5343, %5309
  %5351 = fmul fast float %5344, %5310
  %5352 = fmul fast float %5345, %5311
  %5353 = fsub fast float %5298, %4935
  %5354 = fsub fast float %5299, %4934
  %5355 = fsub fast float %5300, %4933
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5354, float %5355, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = call float @dx.op.unary.f32(i32 25, float %5356)  ; Rsqrt(value)
  %5358 = fmul fast float %5357, %5353
  %5359 = fmul fast float %5357, %5354
  %5360 = fmul fast float %5357, %5355
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4931, float %4930, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5364 = fmul fast float %5363, %5363
  %5365 = fmul fast float %5364, %5293
  %5366 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5367 = fmul fast float %5366, %5363
  %5368 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fmul fast float %5368, %5368
  %5370 = call float @dx.op.unary.f32(i32 6, float %5361)  ; FAbs(value)
  %5371 = fsub fast float 1.000000e+00, %4945
  %5372 = call float @dx.op.binary.f32(i32 35, float %5371, float 0x3F847AE140000000)  ; FMax(a,b)
  %5373 = fmul fast float %5372, %5372
  %5374 = fmul fast float %5373, %5373
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = fmul fast float %4949, %4949
  %5377 = fmul fast float %5376, %5375
  %5378 = fadd fast float %5377, %5374
  %5379 = bitcast float %5378 to i32
  %5380 = ashr i32 %5379, 1
  %5381 = add nsw i32 %5380, 532487669
  %5382 = bitcast i32 %5381 to float
  %5383 = fadd fast float %5382, %4949
  %5384 = fmul fast float %5374, %5369
  %5385 = fsub fast float 1.000000e+00, %5369
  %5386 = fadd fast float %5385, %5384
  %5387 = fmul fast float %5370, %5370
  %5388 = fmul fast float %5387, %5375
  %5389 = fadd fast float %5388, %5374
  %5390 = bitcast float %5389 to i32
  %5391 = ashr i32 %5390, 1
  %5392 = add nsw i32 %5391, 532487669
  %5393 = bitcast i32 %5392 to float
  %5394 = fadd fast float %5393, %5370
  %5395 = fmul fast float %5386, %5386
  %5396 = fmul fast float %5395, %5383
  %5397 = fmul fast float %5396, %5394
  %5398 = fdiv fast float 0x3FF0A00000000000, %5397
  %5399 = fmul fast float %5398, %5374
  %5400 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = bitcast float %5401 to i32
  %5403 = sitofp i32 %5402 to float
  %5404 = fmul fast float %5403, 5.000000e+00
  %5405 = fadd fast float %5404, 0xC1EFBF8940000000
  %5406 = fptosi float %5405 to i32
  %5407 = bitcast i32 %5406 to float
  %5408 = fsub fast float 1.000000e+00, %4936
  %5409 = fsub fast float 1.000000e+00, %4937
  %5410 = fsub fast float 1.000000e+00, %4947
  %5411 = fmul fast float %5407, %5408
  %5412 = fmul fast float %5407, %5409
  %5413 = fmul fast float %5407, %5410
  %5414 = fadd fast float %5411, %4936
  %5415 = fadd fast float %5412, %4937
  %5416 = fadd fast float %5413, %4947
  br i1 %5208, label %5417, label %5440

; <label>:5417                                    ; preds = %5349
  %5418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4334, float %5400, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.ResRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.ResRet.f32 %5418, 2
  %5422 = fadd fast float %5419, -5.000000e-01
  %5423 = fadd fast float %5420, -5.000000e-01
  %5424 = fadd fast float %5421, -5.000000e-01
  %5425 = fmul fast float %4936, 4.000000e+00
  %5426 = fmul fast float %5425, %5408
  %5427 = fmul fast float %5426, %5422
  %5428 = fmul fast float %4937, 4.000000e+00
  %5429 = fmul fast float %5428, %5409
  %5430 = fmul fast float %5429, %5423
  %5431 = fmul fast float %4947, 4.000000e+00
  %5432 = fmul fast float %5431, %5410
  %5433 = fmul fast float %5432, %5424
  %5434 = fadd fast float %5427, %5414
  %5435 = fadd fast float %5430, %5415
  %5436 = fadd fast float %5433, %5416
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  br label %5440

; <label>:5440                                    ; preds = %5417, %5349
  %5441 = phi float [ %5437, %5417 ], [ %5414, %5349 ]
  %5442 = phi float [ %5438, %5417 ], [ %5415, %5349 ]
  %5443 = phi float [ %5439, %5417 ], [ %5416, %5349 ]
  %5444 = fmul fast float %5361, 9.843750e-01
  %5445 = fadd fast float %5444, 7.812500e-03
  %5446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5445, float %5198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 3
  %5449 = fmul fast float %5447, %4936
  %5450 = fmul fast float %5447, %4937
  %5451 = fmul fast float %5447, %4947
  %5452 = fadd fast float %5449, %5448
  %5453 = fadd fast float %5450, %5448
  %5454 = fadd fast float %5451, %5448
  br i1 %5208, label %5455, label %5478

; <label>:5455                                    ; preds = %5440
  %5456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4334, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = fadd fast float %5457, -5.000000e-01
  %5461 = fadd fast float %5458, -5.000000e-01
  %5462 = fadd fast float %5459, -5.000000e-01
  %5463 = fmul fast float %4936, 4.000000e+00
  %5464 = fmul fast float %5463, %5408
  %5465 = fmul fast float %5464, %5460
  %5466 = fmul fast float %4937, 4.000000e+00
  %5467 = fmul fast float %5466, %5409
  %5468 = fmul fast float %5467, %5461
  %5469 = fmul fast float %4947, 4.000000e+00
  %5470 = fmul fast float %5469, %5410
  %5471 = fmul fast float %5470, %5462
  %5472 = fadd fast float %5465, %5452
  %5473 = fadd fast float %5468, %5453
  %5474 = fadd fast float %5471, %5454
  %5475 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5476 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  br label %5478

; <label>:5478                                    ; preds = %5455, %5440
  %5479 = phi float [ %5475, %5455 ], [ %5452, %5440 ]
  %5480 = phi float [ %5476, %5455 ], [ %5453, %5440 ]
  %5481 = phi float [ %5477, %5455 ], [ %5454, %5440 ]
  %5482 = call float @dx.op.binary.f32(i32 35, float %5480, float %5481)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 35, float %5479, float %5482)  ; FMax(a,b)
  %5484 = fsub fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5441, %5399
  %5486 = fmul fast float %5442, %5399
  %5487 = fmul fast float %5443, %5399
  %5488 = fsub fast float 1.000000e+00, %5362
  %5489 = bitcast float %5488 to i32
  %5490 = sitofp i32 %5489 to float
  %5491 = fmul fast float %5490, 5.000000e+00
  %5492 = fadd fast float %5491, 0xC1EFBF8940000000
  %5493 = fptosi float %5492 to i32
  %5494 = bitcast i32 %5493 to float
  %5495 = fmul fast float %5494, %4335
  %5496 = fmul fast float %5484, %5495
  %5497 = fmul fast float %5496, %5258
  %5498 = fmul fast float %5496, %5259
  %5499 = fmul fast float %5496, %5260
  %5500 = fadd fast float %5497, %5485
  %5501 = fadd fast float %5498, %5486
  %5502 = fadd fast float %5499, %5487
  %5503 = fmul fast float %5367, %5350
  %5504 = fmul fast float %5503, %5484
  %5505 = fmul fast float %5367, %5351
  %5506 = fmul fast float %5505, %5484
  %5507 = fmul fast float %5367, %5352
  %5508 = fmul fast float %5507, %5484
  %5509 = fmul fast float %5503, %5500
  %5510 = fmul fast float %5505, %5501
  %5511 = fmul fast float %5507, %5502
  %5512 = fadd fast float %5504, %5242
  %5513 = fmul fast float %5512, %4331
  %5514 = fadd fast float %5506, %5243
  %5515 = fmul fast float %5514, %4331
  %5516 = fadd fast float %5508, %5244
  %5517 = fmul fast float %5516, %4331
  %5518 = fadd fast float %5509, %5285
  %5519 = fmul fast float %5518, %4331
  %5520 = fadd fast float %5510, %5288
  %5521 = fmul fast float %5520, %4331
  %5522 = fadd fast float %5511, %5291
  %5523 = fmul fast float %5522, %4331
  br label %5524

; <label>:5524                                    ; preds = %5478, %5342, %5235
  %5525 = phi float [ %5286, %5235 ], [ %5286, %5342 ], [ %5519, %5478 ]
  %5526 = phi float [ %5289, %5235 ], [ %5289, %5342 ], [ %5521, %5478 ]
  %5527 = phi float [ %5292, %5235 ], [ %5292, %5342 ], [ %5523, %5478 ]
  %5528 = phi float [ %5281, %5235 ], [ %5281, %5342 ], [ %5513, %5478 ]
  %5529 = phi float [ %5282, %5235 ], [ %5282, %5342 ], [ %5515, %5478 ]
  %5530 = phi float [ %5283, %5235 ], [ %5283, %5342 ], [ %5517, %5478 ]
  %5531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.i32 %5531, 0
  %5533 = icmp eq i32 %5532, 0
  br i1 %5533, label %5968, label %5534

; <label>:5534                                    ; preds = %5524
  %5535 = fptoui float %75 to i32
  %5536 = fptoui float %76 to i32
  %5537 = lshr i32 %5535, 4
  %5538 = lshr i32 %5536, 4
  %5539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.i32 %5539, 0
  %5541 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5538, i32 %5540, i32 %5537)  ; UMad(a,b,c)
  %5542 = add nsw i32 %5532, -1
  %5543 = call i32 @dx.op.binary.i32(i32 37, i32 %5542, i32 0)  ; IMax(a,b)
  %5544 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5545 = fptoui float %5544 to i32
  %5546 = lshr i32 %5545, 5
  %5547 = call i32 @dx.op.binary.i32(i32 40, i32 %5546, i32 8191)  ; UMin(a,b)
  %5548 = shl i32 %5547, 2
  %5549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5548, i32 undef)  ; BufferLoad(srv,index,wot)
  %5550 = extractvalue %dx.types.ResRet.i32 %5549, 0
  %5551 = lshr i32 %5550, 16
  %5552 = and i32 %5550, 65535
  %5553 = lshr i32 %5550, 21
  %5554 = lshr i32 %5552, 5
  %5555 = call i32 @dx.op.binary.i32(i32 40, i32 %5554, i32 %5543)  ; UMin(a,b)
  %5556 = icmp ugt i32 %5553, %5555
  br i1 %5556, label %5968, label %5557

; <label>:5557                                    ; preds = %5534
  br label %5558

; <label>:5558                                    ; preds = %5958, %5557
  %5559 = phi i32 [ %5965, %5958 ], [ %5553, %5557 ]
  %5560 = phi float [ %5959, %5958 ], [ %5525, %5557 ]
  %5561 = phi float [ %5960, %5958 ], [ %5526, %5557 ]
  %5562 = phi float [ %5961, %5958 ], [ %5527, %5557 ]
  %5563 = phi float [ %5962, %5958 ], [ %5528, %5557 ]
  %5564 = phi float [ %5963, %5958 ], [ %5529, %5557 ]
  %5565 = phi float [ %5964, %5958 ], [ %5530, %5557 ]
  %5566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.i32 %5566, 0
  %5568 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5541, i32 %5567, i32 %5559)  ; UMad(a,b,c)
  %5569 = shl i32 %5568, 2
  %5570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5569, i32 undef)  ; BufferLoad(srv,index,wot)
  %5571 = extractvalue %dx.types.ResRet.i32 %5570, 0
  %5572 = shl i32 %5559, 5
  %5573 = sub nsw i32 %5551, %5572
  %5574 = call i32 @dx.op.binary.i32(i32 37, i32 %5573, i32 0)  ; IMax(a,b)
  %5575 = call i32 @dx.op.binary.i32(i32 38, i32 %5574, i32 31)  ; IMin(a,b)
  %5576 = sub nsw i32 1, %5551
  %5577 = add nsw i32 %5576, %5552
  %5578 = call i32 @dx.op.binary.i32(i32 37, i32 %5577, i32 0)  ; IMax(a,b)
  %5579 = call i32 @dx.op.binary.i32(i32 38, i32 %5578, i32 32)  ; IMin(a,b)
  %5580 = and i32 %5579, 31
  %5581 = shl i32 -1, %5580
  %5582 = xor i32 %5581, -1
  %5583 = and i32 %5575, 31
  %5584 = shl i32 %5582, %5583
  %5585 = icmp eq i32 %5579, 32
  %5586 = select i1 %5585, i32 -1, i32 %5584
  %5587 = and i32 %5586, %5571
  %5588 = icmp eq i32 %5587, 0
  br i1 %5588, label %5958, label %5589

; <label>:5589                                    ; preds = %5558
  br label %5590

; <label>:5590                                    ; preds = %5670, %5589
  %5591 = phi i32 [ %5602, %5670 ], [ %5587, %5589 ]
  %5592 = phi float [ %5671, %5670 ], [ %5560, %5589 ]
  %5593 = phi float [ %5672, %5670 ], [ %5561, %5589 ]
  %5594 = phi float [ %5673, %5670 ], [ %5562, %5589 ]
  %5595 = phi float [ %5674, %5670 ], [ %5563, %5589 ]
  %5596 = phi float [ %5675, %5670 ], [ %5564, %5589 ]
  %5597 = phi float [ %5676, %5670 ], [ %5565, %5589 ]
  %5598 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5591)  ; FirstbitLo(value)
  %5599 = add i32 %5598, %5572
  %5600 = and i32 %5598, 31
  %5601 = shl i32 1, %5600
  %5602 = xor i32 %5601, %5591
  %5603 = mul i32 %5599, 112
  %5604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5603, i32 undef)  ; BufferLoad(srv,index,wot)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5608 = or i32 %5603, 12
  %5609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5608, i32 undef)  ; BufferLoad(srv,index,wot)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = add i32 %5603, 44
  %5612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5611, i32 undef)  ; BufferLoad(srv,index,wot)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = add i32 %5603, 48
  %5615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5614, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5619 = add i32 %5603, 80
  %5620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5619, i32 undef)  ; BufferLoad(srv,index,wot)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = select i1 %176, float %5621, float %5605
  %5625 = select i1 %176, float %5623, float %5606
  %5626 = select i1 %176, float %5622, float %5607
  %5627 = fsub fast float %5616, %134
  %5628 = fsub fast float %5617, %135
  %5629 = fsub fast float %5618, %136
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float %5627, float %5628, float %5629)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = call float @dx.op.unary.f32(i32 24, float %5630)  ; Sqrt(value)
  %5632 = fdiv fast float 1.000000e+00, %5631
  %5633 = fmul fast float %5632, %5627
  %5634 = fmul fast float %5632, %5628
  %5635 = fmul fast float %5632, %5629
  %5636 = fadd fast float %5631, %5610
  %5637 = fdiv fast float 1.000000e+00, %5636
  %5638 = fmul float %5613, %5637
  %5639 = fmul float %5638, %5638
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = and i32 %5601, %5587
  %5642 = icmp eq i32 %5641, 0
  br i1 %5642, label %5665, label %5643, !dx.controlflow.hints !76

; <label>:5643                                    ; preds = %5590
  %5644 = lshr i32 %5535, 5
  %5645 = lshr i32 %5536, 5
  %5646 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5644, i32 %5645, i32 %5599, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = and i32 %5647, 3
  %5649 = icmp eq i32 %5648, 0
  %5650 = select i1 %5649, float 1.000000e+00, float 0.000000e+00
  %5651 = icmp eq i32 %5648, 3
  br i1 %5651, label %5652, label %5665

; <label>:5652                                    ; preds = %5643
  %5653 = lshr i32 %5647, 10
  %5654 = and i32 %5653, 8160
  %5655 = and i32 %5536, 31
  %5656 = or i32 %5654, %5655
  %5657 = lshr i32 %5647, 1
  %5658 = and i32 %5657, 16352
  %5659 = and i32 %5535, 31
  %5660 = or i32 %5658, %5659
  %5661 = lshr i32 %5647, 23
  %5662 = and i32 %5661, 255
  %5663 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5660, i32 %5656, i32 %5662, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  br label %5665

; <label>:5665                                    ; preds = %5652, %5643, %5590
  %5666 = phi float [ %5664, %5652 ], [ %5650, %5643 ], [ 0.000000e+00, %5590 ]
  %5667 = call float @dx.op.binary.f32(i32 36, float %5666, float %5666)  ; FMin(a,b)
  %5668 = call float @dx.op.binary.f32(i32 36, float %5666, float %5667)  ; FMin(a,b)
  %5669 = fcmp fast ogt float %5668, 0.000000e+00
  br i1 %5669, label %5678, label %5670, !dx.controlflow.hints !77

; <label>:5670                                    ; preds = %5914, %5665
  %5671 = phi float [ %5592, %5665 ], [ %5954, %5914 ]
  %5672 = phi float [ %5593, %5665 ], [ %5955, %5914 ]
  %5673 = phi float [ %5594, %5665 ], [ %5956, %5914 ]
  %5674 = phi float [ %5595, %5665 ], [ %5948, %5914 ]
  %5675 = phi float [ %5596, %5665 ], [ %5949, %5914 ]
  %5676 = phi float [ %5597, %5665 ], [ %5950, %5914 ]
  %5677 = icmp eq i32 %5591, %5601
  br i1 %5677, label %5957, label %5590

; <label>:5678                                    ; preds = %5665
  %5679 = fmul fast float %5666, %5624
  %5680 = fmul fast float %5666, %5625
  %5681 = fmul fast float %5666, %5626
  %5682 = fsub fast float %5618, %4735
  %5683 = fcmp fast ogt float %5682, 0.000000e+00
  %5684 = fsub fast float %136, %4735
  %5685 = fcmp fast ogt float %5684, 0.000000e+00
  %5686 = xor i1 %5685, %5683
  %5687 = fsub fast float %4735, %5618
  %5688 = fmul fast float %5687, 2.000000e+00
  %5689 = fadd fast float %5688, %5618
  %5690 = select i1 %5686, float %5618, float %5689
  %5691 = fsub fast float %5690, %136
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5691, float %5627, float %5628, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = call float @dx.op.unary.f32(i32 25, float %5692)  ; Rsqrt(value)
  %5694 = fmul fast float %5693, %5627
  %5695 = fmul fast float %5693, %5628
  %5696 = fmul fast float %5693, %5691
  %5697 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = fdiv fast float 1.000000e+00, %5698
  %5700 = fmul fast float %5699, %5697
  %5701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5684, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = fcmp fast ogt float %5701, 0.000000e+00
  %5703 = fcmp fast olt float %5701, 0.000000e+00
  %5704 = zext i1 %5702 to i32
  %5705 = zext i1 %5703 to i32
  %5706 = sub nsw i32 %5704, %5705
  %5707 = sitofp i32 %5706 to float
  %5708 = fsub fast float %5690, %4735
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5708, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = fcmp fast ogt float %5709, 0.000000e+00
  %5711 = fcmp fast olt float %5709, 0.000000e+00
  %5712 = zext i1 %5710 to i32
  %5713 = zext i1 %5711 to i32
  %5714 = sub nsw i32 %5712, %5713
  %5715 = sitofp i32 %5714 to float
  %5716 = fcmp fast une float %5707, %5715
  br i1 %5716, label %5717, label %5727

; <label>:5717                                    ; preds = %5678
  %5718 = fmul fast float %5700, %5696
  %5719 = fmul fast float %5700, %5695
  %5720 = fmul fast float %5700, %5694
  %5721 = fmul fast float %5720, %5720
  %5722 = fmul fast float %5719, %5719
  %5723 = fadd fast float %5721, %5722
  %5724 = fmul fast float %5718, %5718
  %5725 = fadd fast float %5723, %5724
  %5726 = call float @dx.op.unary.f32(i32 24, float %5725)  ; Sqrt(value)
  br label %5739

; <label>:5727                                    ; preds = %5678
  %5728 = icmp slt i32 %5706, 0
  br i1 %5728, label %5729, label %5739

; <label>:5729                                    ; preds = %5727
  %5730 = fsub fast float %134, %5616
  %5731 = fsub fast float %135, %5617
  %5732 = fsub fast float %136, %5690
  %5733 = fmul fast float %5730, %5730
  %5734 = fmul fast float %5731, %5731
  %5735 = fadd fast float %5733, %5734
  %5736 = fmul fast float %5732, %5732
  %5737 = fadd fast float %5735, %5736
  %5738 = call float @dx.op.unary.f32(i32 24, float %5737)  ; Sqrt(value)
  br label %5739

; <label>:5739                                    ; preds = %5729, %5727, %5717
  %5740 = phi float [ %5726, %5717 ], [ %5738, %5729 ], [ 0.000000e+00, %5727 ]
  %5741 = and i1 %5685, %5683
  %5742 = fsub fast float -0.000000e+00, %5740
  %5743 = select i1 %5741, float -0.000000e+00, float %5742
  %5744 = fmul fast float %4736, 0x3FF7154760000000
  %5745 = fmul fast float %5744, %5743
  %5746 = fmul fast float %4737, 0x3FF7154760000000
  %5747 = fmul fast float %5746, %5743
  %5748 = fmul fast float %4738, 0x3FF7154760000000
  %5749 = fmul fast float %5748, %5743
  %5750 = call float @dx.op.unary.f32(i32 21, float %5745)  ; Exp(value)
  %5751 = call float @dx.op.unary.f32(i32 21, float %5747)  ; Exp(value)
  %5752 = call float @dx.op.unary.f32(i32 21, float %5749)  ; Exp(value)
  %5753 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5754 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5755 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5756 = fmul fast float %5679, %5753
  %5757 = fmul fast float %5680, %5754
  %5758 = fmul fast float %5681, %5755
  %5759 = fsub fast float %5633, %4935
  %5760 = fsub fast float %5634, %4934
  %5761 = fsub fast float %5635, %4933
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5763, %5759
  %5765 = fmul fast float %5763, %5760
  %5766 = fmul fast float %5763, %5761
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.dot3.f32(i32 55, float %4932, float %4931, float %4930, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5770 = fmul fast float %5769, %5640
  %5771 = fmul fast float %5769, %5769
  %5772 = fmul fast float %5771, %5293
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fmul fast float %5770, %5773
  %5775 = bitcast float %5630 to i32
  %5776 = ashr i32 %5775, 1
  %5777 = sub nsw i32 1597463007, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = fmul fast float %5778, %5627
  %5780 = fmul fast float %5778, %5628
  %5781 = fmul fast float %5778, %5629
  %5782 = fsub fast float %5779, %4935
  %5783 = fsub fast float %5780, %4934
  %5784 = fsub fast float %5781, %4933
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = call float @dx.op.unary.f32(i32 25, float %5785)  ; Rsqrt(value)
  %5787 = fmul fast float %5782, %5786
  %5788 = fmul fast float %5783, %5786
  %5789 = fmul fast float %5784, %5786
  %5790 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fmul fast float %5790, %5790
  %5792 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5793 = fsub fast float 1.000000e+00, %4945
  %5794 = call float @dx.op.binary.f32(i32 35, float %5793, float 0x3F847AE140000000)  ; FMax(a,b)
  %5795 = fmul fast float %5794, %5794
  %5796 = fmul fast float %5795, %5795
  %5797 = fsub fast float 1.000000e+00, %5796
  %5798 = fmul fast float %4949, %4949
  %5799 = fmul fast float %5798, %5797
  %5800 = fadd fast float %5799, %5796
  %5801 = bitcast float %5800 to i32
  %5802 = ashr i32 %5801, 1
  %5803 = add nsw i32 %5802, 532487669
  %5804 = bitcast i32 %5803 to float
  %5805 = fadd fast float %5804, %4949
  %5806 = fmul fast float %5796, %5791
  %5807 = fsub fast float 1.000000e+00, %5791
  %5808 = fadd fast float %5807, %5806
  %5809 = fmul fast float %5792, %5792
  %5810 = fmul fast float %5809, %5797
  %5811 = fadd fast float %5810, %5796
  %5812 = bitcast float %5811 to i32
  %5813 = ashr i32 %5812, 1
  %5814 = add nsw i32 %5813, 532487669
  %5815 = bitcast i32 %5814 to float
  %5816 = fadd fast float %5815, %5792
  %5817 = fmul fast float %5808, %5808
  %5818 = fmul fast float %5817, %5805
  %5819 = fmul fast float %5818, %5816
  %5820 = fdiv fast float 1.000000e+00, %5819
  %5821 = bitcast float %5796 to i32
  %5822 = sitofp i32 %5821 to float
  %5823 = fmul fast float %5822, 0x3FE7F73180000000
  %5824 = fadd fast float %5823, 0x41AFE27C40000000
  %5825 = fptosi float %5824 to i32
  %5826 = bitcast i32 %5825 to float
  %5827 = fmul fast float %5613, 0x3FD80E9D60000000
  %5828 = fmul fast float %5827, %5778
  %5829 = fadd fast float %5826, %5828
  %5830 = bitcast float %5829 to i32
  %5831 = sub nsw i32 2129859010, %5830
  %5832 = bitcast i32 %5831 to float
  %5833 = fmul fast float %5796, %5820
  %5834 = fmul fast float %5833, %5826
  %5835 = fmul fast float %5834, %5832
  %5836 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5837 = fsub fast float 1.000000e+00, %5836
  %5838 = bitcast float %5837 to i32
  %5839 = sitofp i32 %5838 to float
  %5840 = fmul fast float %5839, 5.000000e+00
  %5841 = fadd fast float %5840, 0xC1EFBF8940000000
  %5842 = fptosi float %5841 to i32
  %5843 = bitcast i32 %5842 to float
  %5844 = fsub fast float 1.000000e+00, %4936
  %5845 = fsub fast float 1.000000e+00, %4937
  %5846 = fsub fast float 1.000000e+00, %4947
  %5847 = fmul fast float %5843, %5844
  %5848 = fmul fast float %5843, %5845
  %5849 = fmul fast float %5843, %5846
  %5850 = fadd fast float %5847, %4936
  %5851 = fadd fast float %5848, %4937
  %5852 = fadd fast float %5849, %4947
  br i1 %5208, label %5853, label %5876

; <label>:5853                                    ; preds = %5739
  %5854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4334, float %5836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.ResRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.ResRet.f32 %5854, 2
  %5858 = fadd fast float %5855, -5.000000e-01
  %5859 = fadd fast float %5856, -5.000000e-01
  %5860 = fadd fast float %5857, -5.000000e-01
  %5861 = fmul fast float %4936, 4.000000e+00
  %5862 = fmul fast float %5861, %5844
  %5863 = fmul fast float %5862, %5858
  %5864 = fmul fast float %4937, 4.000000e+00
  %5865 = fmul fast float %5864, %5845
  %5866 = fmul fast float %5865, %5859
  %5867 = fmul fast float %4947, 4.000000e+00
  %5868 = fmul fast float %5867, %5846
  %5869 = fmul fast float %5868, %5860
  %5870 = fadd fast float %5863, %5850
  %5871 = fadd fast float %5866, %5851
  %5872 = fadd fast float %5869, %5852
  %5873 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5875 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  br label %5876

; <label>:5876                                    ; preds = %5853, %5739
  %5877 = phi float [ %5873, %5853 ], [ %5850, %5739 ]
  %5878 = phi float [ %5874, %5853 ], [ %5851, %5739 ]
  %5879 = phi float [ %5875, %5853 ], [ %5852, %5739 ]
  %5880 = fmul fast float %5767, 9.843750e-01
  %5881 = fadd fast float %5880, 7.812500e-03
  %5882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5881, float %5198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 3
  %5885 = fmul fast float %5883, %4936
  %5886 = fmul fast float %5883, %4937
  %5887 = fmul fast float %5883, %4947
  %5888 = fadd fast float %5885, %5884
  %5889 = fadd fast float %5886, %5884
  %5890 = fadd fast float %5887, %5884
  br i1 %5208, label %5891, label %5914

; <label>:5891                                    ; preds = %5876
  %5892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4334, float %5767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.ResRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.ResRet.f32 %5892, 2
  %5896 = fadd fast float %5893, -5.000000e-01
  %5897 = fadd fast float %5894, -5.000000e-01
  %5898 = fadd fast float %5895, -5.000000e-01
  %5899 = fmul fast float %4936, 4.000000e+00
  %5900 = fmul fast float %5899, %5844
  %5901 = fmul fast float %5900, %5896
  %5902 = fmul fast float %4937, 4.000000e+00
  %5903 = fmul fast float %5902, %5845
  %5904 = fmul fast float %5903, %5897
  %5905 = fmul fast float %4947, 4.000000e+00
  %5906 = fmul fast float %5905, %5846
  %5907 = fmul fast float %5906, %5898
  %5908 = fadd fast float %5901, %5888
  %5909 = fadd fast float %5904, %5889
  %5910 = fadd fast float %5907, %5890
  %5911 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5912 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5913 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  br label %5914

; <label>:5914                                    ; preds = %5891, %5876
  %5915 = phi float [ %5911, %5891 ], [ %5888, %5876 ]
  %5916 = phi float [ %5912, %5891 ], [ %5889, %5876 ]
  %5917 = phi float [ %5913, %5891 ], [ %5890, %5876 ]
  %5918 = call float @dx.op.binary.f32(i32 35, float %5916, float %5917)  ; FMax(a,b)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5915, float %5918)  ; FMax(a,b)
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5877, %5835
  %5922 = fmul fast float %5878, %5835
  %5923 = fmul fast float %5879, %5835
  %5924 = fsub fast float 1.000000e+00, %5768
  %5925 = bitcast float %5924 to i32
  %5926 = sitofp i32 %5925 to float
  %5927 = fmul fast float %5926, 5.000000e+00
  %5928 = fadd fast float %5927, 0xC1EFBF8940000000
  %5929 = fptosi float %5928 to i32
  %5930 = bitcast i32 %5929 to float
  %5931 = fmul fast float %5930, %4335
  %5932 = fmul fast float %5920, %5931
  %5933 = fmul fast float %5932, %5258
  %5934 = fmul fast float %5932, %5259
  %5935 = fmul fast float %5932, %5260
  %5936 = fadd fast float %5933, %5921
  %5937 = fadd fast float %5934, %5922
  %5938 = fadd fast float %5935, %5923
  %5939 = fmul fast float %5756, %4331
  %5940 = fmul fast float %5939, %5774
  %5941 = fmul fast float %5940, %5920
  %5942 = fmul fast float %5757, %4331
  %5943 = fmul fast float %5942, %5774
  %5944 = fmul fast float %5943, %5920
  %5945 = fmul fast float %5758, %4331
  %5946 = fmul fast float %5945, %5774
  %5947 = fmul fast float %5946, %5920
  %5948 = fadd fast float %5941, %5595
  %5949 = fadd fast float %5944, %5596
  %5950 = fadd fast float %5947, %5597
  %5951 = fmul fast float %5940, %5936
  %5952 = fmul fast float %5943, %5937
  %5953 = fmul fast float %5946, %5938
  %5954 = fadd fast float %5951, %5592
  %5955 = fadd fast float %5952, %5593
  %5956 = fadd fast float %5953, %5594
  br label %5670

; <label>:5957                                    ; preds = %5670
  br label %5958

; <label>:5958                                    ; preds = %5957, %5558
  %5959 = phi float [ %5560, %5558 ], [ %5671, %5957 ]
  %5960 = phi float [ %5561, %5558 ], [ %5672, %5957 ]
  %5961 = phi float [ %5562, %5558 ], [ %5673, %5957 ]
  %5962 = phi float [ %5563, %5558 ], [ %5674, %5957 ]
  %5963 = phi float [ %5564, %5558 ], [ %5675, %5957 ]
  %5964 = phi float [ %5565, %5558 ], [ %5676, %5957 ]
  %5965 = add i32 %5559, 1
  %5966 = icmp ugt i32 %5965, %5555
  br i1 %5966, label %5967, label %5558

; <label>:5967                                    ; preds = %5958
  br label %5968

; <label>:5968                                    ; preds = %5967, %5534, %5524
  %5969 = phi float [ %5525, %5524 ], [ %5525, %5534 ], [ %5959, %5967 ]
  %5970 = phi float [ %5526, %5524 ], [ %5526, %5534 ], [ %5960, %5967 ]
  %5971 = phi float [ %5527, %5524 ], [ %5527, %5534 ], [ %5961, %5967 ]
  %5972 = phi float [ %5528, %5524 ], [ %5528, %5534 ], [ %5962, %5967 ]
  %5973 = phi float [ %5529, %5524 ], [ %5529, %5534 ], [ %5963, %5967 ]
  %5974 = phi float [ %5530, %5524 ], [ %5530, %5534 ], [ %5964, %5967 ]
  %5975 = call float @dx.op.unary.f32(i32 24, float %4939)  ; Sqrt(value)
  %5976 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  %5977 = call float @dx.op.unary.f32(i32 24, float %4941)  ; Sqrt(value)
  %5978 = fmul fast float %5975, %5972
  %5979 = fmul fast float %5976, %5973
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  br i1 %176, label %5982, label %6002

; <label>:5982                                    ; preds = %5968
  %5983 = fadd fast float %5974, %4337
  %5984 = fmul fast float %5983, %4338
  %5985 = fsub fast float 1.000000e+00, %4338
  %5986 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 3
  %5989 = fmul fast float %5988, %5986
  %5990 = fadd fast float %5989, %5984
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = fmul fast float %5992, %5264
  %5994 = fsub fast float %5990, %5993
  %5995 = fadd fast float %5979, %5978
  %5996 = fmul fast float %5981, %5995
  %5997 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5998 = fsub fast float %5994, %5997
  %5999 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %6000 = fmul fast float %5998, %5999
  %6001 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  br label %6018

; <label>:6002                                    ; preds = %5968
  %6003 = fmul fast float %5977, %5974
  %6004 = fmul fast float %5981, %5978
  %6005 = fmul fast float %5981, %5979
  %6006 = fmul fast float %6003, %5981
  %6007 = add i32 %35, 356
  %6008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.i32 %6008, 0
  %6010 = and i32 %6009, 32
  %6011 = icmp eq i32 %6010, 0
  br i1 %6011, label %6018, label %6012

; <label>:6012                                    ; preds = %6002
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = fmul fast float %6014, 0x3FE99999A0000000
  %6016 = fadd fast float %6014, %6004
  %6017 = fadd fast float %6015, %6006
  br label %6018

; <label>:6018                                    ; preds = %6012, %6002, %5982
  %6019 = phi float [ %5996, %5982 ], [ %6016, %6012 ], [ %6004, %6002 ]
  %6020 = phi float [ %6001, %5982 ], [ %6005, %6012 ], [ %6005, %6002 ]
  %6021 = phi float [ 1.000000e+00, %5982 ], [ %6017, %6012 ], [ %6006, %6002 ]
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = fmul fast float %6023, %5970
  %6025 = fmul fast float %6023, %5971
  %6026 = fadd fast float %5970, %5969
  %6027 = select i1 %176, float %6026, float %5969
  %6028 = fmul float %6027, %6023
  %6029 = select i1 %176, float 0.000000e+00, float %6024
  %6030 = select i1 %176, float 0.000000e+00, float %6025
  %6031 = fmul fast float %6019, %5975
  %6032 = fmul fast float %6020, %5976
  %6033 = fmul fast float %6021, %5977
  %6034 = fadd fast float %6028, %6031
  %6035 = fadd fast float %6029, %6032
  %6036 = fadd fast float %6030, %6033
  %6037 = select i1 %176, float %6020, float %6035
  %6038 = select i1 %176, float %6021, float %6036
  %6039 = call float @dx.op.binary.f32(i32 36, float %6034, float 3.225500e+04)  ; FMin(a,b)
  %6040 = call float @dx.op.binary.f32(i32 36, float %6037, float 3.225500e+04)  ; FMin(a,b)
  %6041 = call float @dx.op.binary.f32(i32 36, float %6038, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6039)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6041)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

