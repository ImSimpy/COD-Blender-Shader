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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 228a46faa02f3d425557f014471ee8df
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %66
  %74 = fmul fast float %72, %67
  %75 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = bitcast float %75 to i32
  %77 = ashr i32 %76, 1
  %78 = sub nsw i32 1597250115, %77
  %79 = bitcast i32 %78 to float
  %80 = fmul fast float %79, %58
  %81 = fmul fast float %79, %59
  %82 = fmul fast float %79, %60
  %83 = fmul fast float %59, %56
  %84 = fmul fast float %60, %55
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %60, %54
  %87 = fmul fast float %58, %56
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %58, %55
  %90 = fmul fast float %59, %54
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %85, %57
  %93 = fmul fast float %88, %57
  %94 = fmul fast float %91, %57
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %98 = fmul fast float %73, 2.000000e+00
  %99 = fmul fast float %98, %96
  %100 = fmul fast float %74, 2.000000e+00
  %101 = fmul fast float %100, %97
  %102 = fsub fast float 1.000000e+00, %99
  %103 = fsub fast float 1.000000e+00, %101
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %102, %105
  %109 = fmul fast float %102, %106
  %110 = fmul fast float %102, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %103, %112
  %116 = fmul fast float %103, %113
  %117 = fmul fast float %103, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fadd fast float %115, %119
  %123 = fadd fast float %122, %108
  %124 = fadd fast float %116, %120
  %125 = fadd fast float %124, %109
  %126 = fadd fast float %117, %121
  %127 = fadd fast float %126, %110
  %128 = fmul fast float %123, %68
  %129 = fmul fast float %125, %68
  %130 = fmul fast float %127, %68
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = fmul fast float %132, %73
  %135 = fmul fast float %133, %74
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %137, 114688
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %139, float %134, float 0.000000e+00
  %141 = select i1 %139, float %135, float 0.000000e+00
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fmul fast float %143, 2.550000e+02
  %145 = fptoui float %144 to i32
  %146 = select i1 %139, i32 %145, i32 0
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 3
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %149, 4
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %166

; <label>:155                                     ; preds = %0
  %156 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %157 = fmul fast float %156, %74
  %158 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %159 = fmul fast float %158, %73
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %159, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fsub fast float 1.000000e+00, %161
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = fcmp fast olt float %162, %164
  br label %169

; <label>:166                                     ; preds = %0
  %167 = icmp eq i32 %152, 0
  %168 = and i1 %151, %167
  br label %169

; <label>:169                                     ; preds = %166, %155
  %170 = phi i1 [ %165, %155 ], [ %168, %166 ]
  %171 = add i32 %33, 156
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = shl i32 %173, 4
  %175 = and i32 %174, 32752
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %173, 7
  %178 = and i32 %177, 32752
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %173, 22
  %181 = shl nuw nsw i32 %180, 5
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = add i32 %33, 216
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = lshr i32 %185, 8
  %190 = and i32 %189, 255
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F70101020000000
  %193 = lshr i32 %185, 16
  %194 = and i32 %193, 255
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F70101020000000
  %197 = add i32 %33, 36
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %199, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = add i32 %33, 288
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 65535
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %206, 16
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = fmul fast float %208, 0x3F50624DE0000000
  %212 = fmul fast float %210, 0x3F50624DE0000000
  %213 = add i32 %33, 172
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = shl i32 %215, 4
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %215, 7
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %215, 22
  %223 = shl nuw nsw i32 %222, 5
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = add i32 %33, 232
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = lshr i32 %227, 8
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %227, 16
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = add i32 %33, 52
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %33, 304
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = fmul fast float %250, 0x3F50624DE0000000
  %254 = fmul fast float %252, 0x3F50624DE0000000
  %255 = add i32 %33, 188
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %257, 4
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %257, 7
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 22
  %265 = shl nuw nsw i32 %264, 5
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %33, 248
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %269, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = add i32 %33, 68
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %33, 320
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = fmul fast float %292, 0x3F50624DE0000000
  %296 = fmul fast float %294, 0x3F50624DE0000000
  %297 = add i32 %33, 204
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = shl i32 %299, 4
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %299, 7
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %299, 22
  %307 = shl nuw nsw i32 %306, 5
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %33, 264
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %311, 8
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %311, 16
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = add i32 %33, 84
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %33, 336
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = fmul fast float %334, 0x3F50624DE0000000
  %338 = fmul fast float %336, 0x3F50624DE0000000
  %339 = add i32 %33, 348
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 32
  %343 = icmp eq i32 %342, 0
  %344 = and i32 %341, 64
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %341, 128
  %347 = icmp eq i32 %346, 0
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 2
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %365, label %352

; <label>:352                                     ; preds = %169
  %353 = add i32 %33, 472
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = add i32 %355, 0
  %357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %357, %dx.types.Handle %70, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = fmul fast float %359, %63
  %363 = fmul fast float %360, %64
  %364 = fmul fast float %361, %65
  br label %365

; <label>:365                                     ; preds = %352, %169
  %366 = phi float [ %65, %169 ], [ %364, %352 ]
  %367 = phi float [ %64, %169 ], [ %363, %352 ]
  %368 = phi float [ %63, %169 ], [ %362, %352 ]
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 2
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %392, label %373

; <label>:373                                     ; preds = %365
  %374 = add i32 %33, 44
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %368, float 1.000000e+00
  %380 = add i32 %33, 60
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %367, float 1.000000e+00
  %386 = add i32 %33, 76
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %366, float 1.000000e+00
  br label %392

; <label>:392                                     ; preds = %373, %365
  %393 = phi float [ %366, %365 ], [ %391, %373 ]
  %394 = phi float [ %367, %365 ], [ %385, %373 ]
  %395 = phi float [ %368, %365 ], [ %379, %373 ]
  %396 = lshr i32 %370, 20
  %397 = and i32 %396, 3
  %398 = add nuw nsw i32 %397, 1
  %399 = add i32 %33, 24
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = add i32 %33, 28
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = or i32 %404, %401
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %932, label %407

; <label>:407                                     ; preds = %392
  %408 = and i32 %401, 262144
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %36, float 1.000000e+00
  %411 = select i1 %409, float %37, float 0.000000e+00
  %412 = select i1 %409, float %38, float 0.000000e+00
  %413 = select i1 %409, float %39, float 1.000000e+00
  %414 = select i1 %409, float %40, float %61
  %415 = select i1 %409, float %41, float %62
  %416 = add i32 %33, 284
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = lshr i32 %418, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = fmul fast float %420, 0x3F50624DE0000000
  %422 = add i32 %33, 88
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = lshr i32 %424, 24
  %428 = add i32 %33, 292
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = add i32 %33, 32
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = lshr i32 %437, 22
  %439 = shl nuw nsw i32 %438, 5
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = shl i32 %437, 4
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %437, 7
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %449 = fmul fast float %448, 1.000000e+03
  %450 = fmul fast float %211, %449
  %451 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %452 = fadd fast float %451, %201
  %453 = fmul fast float %212, %449
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fadd fast float %454, %203
  %456 = fmul fast float %421, %449
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fmul fast float %457, 0x401921FB60000000
  %459 = fadd fast float %458, %440
  %460 = call float @dx.op.unary.f32(i32 13, float %459)  ; Sin(value)
  %461 = call float @dx.op.unary.f32(i32 12, float %459)  ; Cos(value)
  %462 = fsub fast float -0.000000e+00, %460
  %463 = fadd fast float %414, -5.000000e-01
  %464 = fadd fast float %415, -5.000000e-01
  %465 = fmul fast float %432, %463
  %466 = fmul fast float %434, %464
  %467 = fadd fast float %465, 5.000000e-01
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fmul fast float %443, %467
  %470 = fmul fast float %446, %468
  %471 = fmul fast float %461, %469
  %472 = call float @dx.op.tertiary.f32(i32 46, float %462, float %470, float %471)  ; FMad(a,b,c)
  %473 = fmul fast float %460, %469
  %474 = call float @dx.op.tertiary.f32(i32 46, float %461, float %470, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %452, %472
  %476 = fadd fast float %455, %474
  %477 = icmp ugt i32 %426, 1
  %478 = icmp ugt i32 %424, 33554431
  %479 = or i1 %478, %477
  br i1 %479, label %480, label %505

; <label>:480                                     ; preds = %407
  %481 = add i32 %33, 228
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 16
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = fmul fast float %448, %485
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = mul nuw nsw i32 %426, %427
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %487, %489
  %491 = call float @dx.op.unary.f32(i32 27, float %490)  ; Round_ni(value)
  %492 = fptoui float %491 to i32
  %493 = urem i32 %492, %426
  %494 = udiv i32 %492, %427
  %495 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %496 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %497 = uitofp i32 %493 to float
  %498 = uitofp i32 %494 to float
  %499 = fadd fast float %495, %497
  %500 = fadd fast float %496, %498
  %501 = uitofp i32 %426 to float
  %502 = uitofp i32 %427 to float
  %503 = fdiv fast float %499, %501
  %504 = fdiv fast float %500, %502
  br label %505

; <label>:505                                     ; preds = %480, %407
  %506 = phi float [ %503, %480 ], [ %475, %407 ]
  %507 = phi float [ %504, %480 ], [ %476, %407 ]
  %508 = and i32 %401, 16
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %706, label %510

; <label>:510                                     ; preds = %505
  %511 = add i32 %33, 360
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = add i32 %513, 0
  %515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %516 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %515, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = extractvalue %dx.types.ResRet.f32 %516, 2
  %520 = extractvalue %dx.types.ResRet.f32 %516, 3
  %521 = and i32 %424, 255
  %522 = uitofp i32 %521 to float
  %523 = lshr i32 %424, 8
  %524 = and i32 %523, 255
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %520, %522
  %527 = fadd fast float %526, %525
  %528 = fmul fast float %527, 0x3F70101000000000
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 512
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %541, label %533

; <label>:533                                     ; preds = %510
  %534 = add i32 %33, 440
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %536, 0
  %538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %538, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  br label %541

; <label>:541                                     ; preds = %533, %510
  %542 = phi float [ %540, %533 ], [ 1.000000e+00, %510 ]
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 33554432
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %653, label %547

; <label>:547                                     ; preds = %541
  %548 = add i32 %33, 224
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = add i32 %33, 228
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 24
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = and i32 %561, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = lshr i32 %561, 8
  %569 = and i32 %568, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %561, 16
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = add i32 %33, 220
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = lshr i32 %578, 24
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = and i32 %578, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = lshr i32 %578, 8
  %586 = and i32 %585, 255
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, 0x3F70101020000000
  %589 = lshr i32 %578, 16
  %590 = and i32 %589, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = bitcast float %517 to i32
  %594 = ashr i32 %593, 1
  %595 = sub nsw i32 1597463174, %594
  %596 = bitcast i32 %595 to float
  %597 = fmul fast float %517, 5.000000e-01
  %598 = fmul fast float %596, %596
  %599 = fmul fast float %598, %597
  %600 = fsub fast float 1.500000e+00, %599
  %601 = fmul fast float %596, %517
  %602 = fmul fast float %601, %600
  %603 = bitcast float %518 to i32
  %604 = ashr i32 %603, 1
  %605 = sub nsw i32 1597463174, %604
  %606 = bitcast i32 %605 to float
  %607 = fmul fast float %518, 5.000000e-01
  %608 = fmul fast float %606, %606
  %609 = fmul fast float %608, %607
  %610 = fsub fast float 1.500000e+00, %609
  %611 = fmul fast float %606, %518
  %612 = fmul fast float %611, %610
  %613 = bitcast float %519 to i32
  %614 = ashr i32 %613, 1
  %615 = sub nsw i32 1597463174, %614
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %519, 5.000000e-01
  %618 = fmul fast float %616, %616
  %619 = fmul fast float %618, %617
  %620 = fsub fast float 1.500000e+00, %619
  %621 = fmul fast float %616, %519
  %622 = fmul fast float %621, %620
  %623 = fsub fast float %602, %584
  %624 = fsub fast float %612, %588
  %625 = fsub fast float %622, %592
  %626 = fmul fast float %623, %552
  %627 = fmul fast float %624, %554
  %628 = fmul fast float %625, %559
  %629 = fadd fast float %626, %567
  %630 = fadd fast float %627, %571
  %631 = fadd fast float %628, %575
  %632 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = fmul fast float %632, %632
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fsub fast float %635, %517
  %639 = fsub fast float %636, %518
  %640 = fsub fast float %637, %519
  %641 = fmul fast float %638, %542
  %642 = fmul fast float %639, %542
  %643 = fmul fast float %640, %542
  %644 = fadd fast float %641, %517
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %564, %528
  %648 = fsub fast float %647, %581
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fsub fast float %649, %528
  %651 = fmul fast float %650, %542
  %652 = fadd fast float %651, %528
  br label %706

; <label>:653                                     ; preds = %541
  %654 = and i32 %544, 134217728
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %690, label %656

; <label>:656                                     ; preds = %653
  %657 = call float @dx.op.unary.f32(i32 24, float %188)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %192)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %196)  ; Sqrt(value)
  %660 = fadd fast float %657, -5.000000e-01
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fmul fast float %660, %542
  %664 = fmul fast float %661, %542
  %665 = fmul fast float %662, %542
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = fmul fast float %666, 2.000000e+00
  %673 = fsub fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %669
  %675 = fadd fast float %674, %672
  %676 = fmul fast float %675, %669
  %677 = fmul fast float %667, 2.000000e+00
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fmul fast float %678, %670
  %680 = fadd fast float %679, %677
  %681 = fmul fast float %680, %670
  %682 = fmul fast float %668, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %671
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %671
  %687 = fmul fast float %676, %676
  %688 = fmul fast float %681, %681
  %689 = fmul fast float %686, %686
  br label %706

; <label>:690                                     ; preds = %653
  %691 = fmul fast float %188, %188
  %692 = fmul fast float %192, %192
  %693 = fmul fast float %196, %196
  %694 = fadd fast float %691, -1.000000e+00
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fmul fast float %542, %694
  %698 = fmul fast float %542, %695
  %699 = fmul fast float %542, %696
  %700 = fadd fast float %697, 1.000000e+00
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fmul fast float %700, %517
  %704 = fmul fast float %701, %518
  %705 = fmul fast float %702, %519
  br label %706

; <label>:706                                     ; preds = %690, %656, %547, %505
  %707 = phi float [ %652, %547 ], [ %528, %656 ], [ %528, %690 ], [ 0x3FA23C0BE0000000, %505 ]
  %708 = phi float [ %644, %547 ], [ %687, %656 ], [ %703, %690 ], [ 1.000000e+00, %505 ]
  %709 = phi float [ %645, %547 ], [ %688, %656 ], [ %704, %690 ], [ 1.000000e+00, %505 ]
  %710 = phi float [ %646, %547 ], [ %689, %656 ], [ %705, %690 ], [ 1.000000e+00, %505 ]
  %711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.i32 %711, 1
  %713 = and i32 %712, 1
  %714 = icmp ne i32 %713, 0
  %715 = add i32 %33, 356
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 32
  %719 = icmp ne i32 %718, 0
  %720 = and i1 %714, %719
  %721 = select i1 %720, float 1.000000e+00, float %708
  %722 = select i1 %720, float 0x3FD3333340000000, float %709
  %723 = select i1 %720, float 0x3FD3333340000000, float %710
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 32
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %800, label %728

; <label>:728                                     ; preds = %706
  %729 = add i32 %33, 92
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %33, 376
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %734, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %736, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  %742 = and i32 %731, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %731, 8
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %731, 16
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = fmul fast float %738, %743
  %752 = fadd fast float %751, %746
  %753 = fmul fast float %752, 0x3F70101000000000
  %754 = fadd fast float %739, -5.000000e-01
  %755 = fadd fast float %741, -5.000000e-01
  %756 = fmul fast float %754, %750
  %757 = fmul fast float %755, %750
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fmul fast float %758, 2.000000e+00
  %761 = fadd fast float %760, -1.000000e+00
  %762 = fmul fast float %759, 2.000000e+00
  %763 = fadd fast float %762, -1.000000e+00
  %764 = fadd fast float %761, %763
  %765 = fmul fast float %764, 5.000000e-01
  %766 = fsub fast float %761, %763
  %767 = fmul fast float %766, 5.000000e-01
  %768 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %769 = fsub fast float 1.000000e+00, %768
  %770 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %771 = fsub fast float %769, %770
  %772 = call float @dx.op.dot3.f32(i32 55, float %765, float %767, float %771, float %765, float %767, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %765, %773
  %775 = fmul fast float %767, %773
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 67108864
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %796, label %780

; <label>:780                                     ; preds = %728
  %781 = add i32 %33, 280
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 65535
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %783, 16
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = fsub fast float %753, %791
  %793 = fmul fast float %792, %785
  %794 = fadd fast float %793, %789
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  br label %796

; <label>:796                                     ; preds = %780, %728
  %797 = phi float [ %795, %780 ], [ %753, %728 ]
  %798 = call float @dx.op.dot2.f32(i32 54, float %774, float %775, float %410, float %411)  ; Dot2(ax,ay,bx,by)
  %799 = call float @dx.op.dot2.f32(i32 54, float %774, float %775, float %412, float %413)  ; Dot2(ax,ay,bx,by)
  br label %800

; <label>:800                                     ; preds = %796, %706
  %801 = phi float [ %797, %796 ], [ 0x3FD6666660000000, %706 ]
  %802 = phi float [ %798, %796 ], [ 0.000000e+00, %706 ]
  %803 = phi float [ %799, %796 ], [ 0.000000e+00, %706 ]
  %804 = phi float [ %740, %796 ], [ 1.000000e+00, %706 ]
  %805 = add i32 %33, 160
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = lshr i32 %807, 22
  %809 = shl nuw nsw i32 %808, 5
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 64
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %848, label %815

; <label>:815                                     ; preds = %800
  %816 = add i32 %33, 392
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %818, 0
  %820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 131072
  %824 = icmp eq i32 %823, 0
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %820, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = fmul fast float %826, %176
  %830 = fmul fast float %827, %179
  %831 = fmul fast float %828, %182
  br i1 %824, label %838, label %832

; <label>:832                                     ; preds = %815
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = fmul fast float %834, %829
  %836 = fmul fast float %834, %830
  %837 = fmul fast float %834, %831
  br label %838

; <label>:838                                     ; preds = %832, %815
  %839 = phi float [ %835, %832 ], [ %829, %815 ]
  %840 = phi float [ %836, %832 ], [ %830, %815 ]
  %841 = phi float [ %837, %832 ], [ %831, %815 ]
  %842 = fmul fast float %839, %810
  %843 = select i1 %170, float %842, float %839
  %844 = call float @dx.op.dot3.f32(i32 55, float %843, float %840, float %841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = select i1 %170, float 0.000000e+00, float %839
  %846 = select i1 %170, float %844, float %840
  %847 = select i1 %170, float 0.000000e+00, float %841
  br label %848

; <label>:848                                     ; preds = %838, %800
  %849 = phi float [ %845, %838 ], [ 0.000000e+00, %800 ]
  %850 = phi float [ %846, %838 ], [ 0.000000e+00, %800 ]
  %851 = phi float [ %847, %838 ], [ 0.000000e+00, %800 ]
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 26624
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %913, label %856

; <label>:856                                     ; preds = %848
  %857 = add i32 %33, 456
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = extractvalue %dx.types.ResRet.f32 %862, 1
  %865 = extractvalue %dx.types.ResRet.f32 %862, 3
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = and i32 %867, 1048576
  %869 = icmp ne i32 %868, 0
  %870 = and i32 %867, 8192
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %886, label %872

; <label>:872                                     ; preds = %856
  %873 = extractvalue %dx.types.ResRet.f32 %862, 2
  %874 = select i1 %869, float %873, float %864
  %875 = select i1 %869, float %863, float %864
  %876 = add i32 %33, 96
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F80101020000000
  %883 = fmul fast float %882, %875
  %884 = fmul fast float %882, %864
  %885 = fmul fast float %882, %874
  br label %886

; <label>:886                                     ; preds = %872, %856
  %887 = phi float [ %883, %872 ], [ 0.000000e+00, %856 ]
  %888 = phi float [ %884, %872 ], [ 0.000000e+00, %856 ]
  %889 = phi float [ %885, %872 ], [ 0.000000e+00, %856 ]
  %890 = and i32 %867, 2048
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %900, label %892

; <label>:892                                     ; preds = %886
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = shl i32 %894, 4
  %896 = and i32 %895, 32752
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = fmul fast float %897, %865
  %899 = call float @dx.op.binary.f32(i32 35, float %898, float 0x3F70101020000000)  ; FMax(a,b)
  br label %900

; <label>:900                                     ; preds = %892, %886
  %901 = phi float [ %899, %892 ], [ 0x3F70101020000000, %886 ]
  %902 = and i32 %867, 16384
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %913, label %904

; <label>:904                                     ; preds = %900
  %905 = add i32 %33, 96
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 24
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %863, 0x3F70101020000000
  %911 = select i1 %869, float 0x3F70101020000000, float %910
  %912 = fmul fast float %911, %909
  br label %913

; <label>:913                                     ; preds = %904, %900, %848
  %914 = phi float [ %887, %904 ], [ %887, %900 ], [ 0.000000e+00, %848 ]
  %915 = phi float [ %888, %904 ], [ %888, %900 ], [ 0.000000e+00, %848 ]
  %916 = phi float [ %889, %904 ], [ %889, %900 ], [ 0.000000e+00, %848 ]
  %917 = phi float [ %901, %904 ], [ %901, %900 ], [ 0x3F70101020000000, %848 ]
  %918 = phi float [ %912, %904 ], [ 0.000000e+00, %900 ], [ 0.000000e+00, %848 ]
  %919 = add i32 %33, 96
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %921, 8
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = fmul fast float %926, %927
  %929 = fadd fast float %928, %923
  %930 = fmul fast float %929, 0x3F70101020000000
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  br label %932

; <label>:932                                     ; preds = %913, %392
  %933 = phi float [ 0.000000e+00, %392 ], [ %802, %913 ]
  %934 = phi float [ 0.000000e+00, %392 ], [ %803, %913 ]
  %935 = phi float [ 0.000000e+00, %392 ], [ %849, %913 ]
  %936 = phi float [ 0.000000e+00, %392 ], [ %850, %913 ]
  %937 = phi float [ 0.000000e+00, %392 ], [ %851, %913 ]
  %938 = phi float [ 0.000000e+00, %392 ], [ %721, %913 ]
  %939 = phi float [ 0.000000e+00, %392 ], [ %722, %913 ]
  %940 = phi float [ 0.000000e+00, %392 ], [ %723, %913 ]
  %941 = phi float [ 0.000000e+00, %392 ], [ %914, %913 ]
  %942 = phi float [ 0.000000e+00, %392 ], [ %915, %913 ]
  %943 = phi float [ 0.000000e+00, %392 ], [ %916, %913 ]
  %944 = phi float [ 0.000000e+00, %392 ], [ %707, %913 ]
  %945 = phi float [ 0.000000e+00, %392 ], [ 1.000000e+00, %913 ]
  %946 = phi float [ 0.000000e+00, %392 ], [ %801, %913 ]
  %947 = phi float [ 0.000000e+00, %392 ], [ %804, %913 ]
  %948 = phi float [ 0.000000e+00, %392 ], [ %917, %913 ]
  %949 = phi float [ 0.000000e+00, %392 ], [ %918, %913 ]
  %950 = phi float [ 0.000000e+00, %392 ], [ %931, %913 ]
  br i1 %343, label %1903, label %951

; <label>:951                                     ; preds = %932
  %952 = icmp ult i32 %398, 2
  %953 = add i32 %33, 40
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = add i32 %33, 44
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = or i32 %958, %955
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %1903, label %961

; <label>:961                                     ; preds = %951
  %962 = and i32 %955, 262144
  %963 = icmp ne i32 %962, 0
  %964 = select i1 %963, float %36, float 1.000000e+00
  %965 = select i1 %963, float %37, float 0.000000e+00
  %966 = select i1 %963, float %38, float 0.000000e+00
  %967 = select i1 %963, float %39, float 1.000000e+00
  %968 = select i1 %963, float %40, float %61
  %969 = select i1 %963, float %41, float %62
  %970 = add i32 %33, 300
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = lshr i32 %972, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = fmul fast float %974, 0x3F50624DE0000000
  %976 = add i32 %33, 104
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 16
  %980 = and i32 %979, 255
  %981 = lshr i32 %978, 24
  %982 = add i32 %33, 308
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 65535
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %984, 16
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = add i32 %33, 48
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = lshr i32 %991, 22
  %993 = shl nuw nsw i32 %992, 5
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = shl i32 %991, 4
  %996 = and i32 %995, 32752
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = lshr i32 %991, 7
  %999 = and i32 %998, 32752
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 3
  %1003 = fmul fast float %1002, 1.000000e+03
  %1004 = fmul fast float %253, %1003
  %1005 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1006 = fadd fast float %1005, %243
  %1007 = fmul fast float %254, %1003
  %1008 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1009 = fadd fast float %1008, %245
  %1010 = fmul fast float %975, %1003
  %1011 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1012 = fmul fast float %1011, 0x401921FB60000000
  %1013 = fadd fast float %1012, %994
  %1014 = call float @dx.op.unary.f32(i32 13, float %1013)  ; Sin(value)
  %1015 = call float @dx.op.unary.f32(i32 12, float %1013)  ; Cos(value)
  %1016 = fsub fast float -0.000000e+00, %1014
  %1017 = fadd fast float %968, -5.000000e-01
  %1018 = fadd fast float %969, -5.000000e-01
  %1019 = fmul fast float %986, %1017
  %1020 = fmul fast float %988, %1018
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fmul fast float %997, %1021
  %1024 = fmul fast float %1000, %1022
  %1025 = fmul fast float %1015, %1023
  %1026 = call float @dx.op.tertiary.f32(i32 46, float %1016, float %1024, float %1025)  ; FMad(a,b,c)
  %1027 = fmul fast float %1014, %1023
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %1024, float %1027)  ; FMad(a,b,c)
  %1029 = fadd fast float %1006, %1026
  %1030 = fadd fast float %1009, %1028
  %1031 = icmp ugt i32 %980, 1
  %1032 = icmp ugt i32 %978, 33554431
  %1033 = or i1 %1032, %1031
  br i1 %1033, label %1034, label %1059

; <label>:1034                                    ; preds = %961
  %1035 = add i32 %33, 244
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = lshr i32 %1037, 16
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = fmul fast float %1002, %1039
  %1041 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1042 = mul nuw nsw i32 %980, %981
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1041, %1043
  %1045 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1046 = fptoui float %1045 to i32
  %1047 = urem i32 %1046, %980
  %1048 = udiv i32 %1046, %981
  %1049 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1050 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1051 = uitofp i32 %1047 to float
  %1052 = uitofp i32 %1048 to float
  %1053 = fadd fast float %1049, %1051
  %1054 = fadd fast float %1050, %1052
  %1055 = uitofp i32 %980 to float
  %1056 = uitofp i32 %981 to float
  %1057 = fdiv fast float %1053, %1055
  %1058 = fdiv fast float %1054, %1056
  br label %1059

; <label>:1059                                    ; preds = %1034, %961
  %1060 = phi float [ %1057, %1034 ], [ %1029, %961 ]
  %1061 = phi float [ %1058, %1034 ], [ %1030, %961 ]
  %1062 = and i32 %955, 16777216
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1173, label %1064

; <label>:1064                                    ; preds = %1059
  %1065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.CBufRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.CBufRet.f32 %1065, 2
  %1069 = fadd fast float %1066, %128
  %1070 = fadd fast float %1067, %129
  %1071 = fadd fast float %1068, %130
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1075 = icmp eq i32 %34, 65535
  br i1 %1075, label %1170, label %1076

; <label>:1076                                    ; preds = %1064
  %1077 = lshr i32 %34, 1
  %1078 = shl i32 %1077, 2
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %34, 1
  %1082 = icmp ne i32 %1081, 0
  %1083 = lshr i32 %1080, 16
  %1084 = and i32 %1080, 65535
  %1085 = select i1 %1082, i32 %1083, i32 %1084
  %1086 = icmp eq i32 %1085, 65535
  br i1 %1086, label %1166, label %1087

; <label>:1087                                    ; preds = %1076
  %1088 = mul nuw nsw i32 %1085, 40
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = add nuw nsw i32 %1088, 12
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = add nuw nsw i32 %1088, 24
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = add nuw nsw i32 %1088, 36
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = fsub fast float %1069, %1090
  %1107 = fsub fast float %1070, %1091
  %1108 = fsub fast float %1071, %1092
  %1109 = fmul fast float %1105, %1106
  %1110 = fmul fast float %1105, %1107
  %1111 = fmul fast float %1105, %1108
  %1112 = call float @dx.op.unary.f32(i32 27, float %1109)  ; Round_ni(value)
  %1113 = call float @dx.op.unary.f32(i32 27, float %1110)  ; Round_ni(value)
  %1114 = call float @dx.op.unary.f32(i32 27, float %1111)  ; Round_ni(value)
  %1115 = fadd fast float %1112, 5.000000e-01
  %1116 = fadd fast float %1113, 5.000000e-01
  %1117 = fadd fast float %1114, 5.000000e-01
  %1118 = fmul fast float %1115, %1095
  %1119 = fmul fast float %1116, %1096
  %1120 = fmul fast float %1117, %1097
  %1121 = shl i32 %34, 2
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = add i32 %1123, 0
  %1125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1126 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1127 = call float @dx.op.unary.f32(i32 22, float %1119)  ; Frc(value)
  %1128 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1125, %dx.types.Handle %30, float %1126, float %1127, float %1128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = fmul fast float %1130, 1.023000e+03
  %1134 = fmul fast float %1131, 1.023000e+03
  %1135 = fmul fast float %1132, 1.023000e+03
  %1136 = fadd fast float %1133, 5.000000e-01
  %1137 = fadd fast float %1134, 5.000000e-01
  %1138 = fadd fast float %1135, 5.000000e-01
  %1139 = call float @dx.op.unary.f32(i32 27, float %1136)  ; Round_ni(value)
  %1140 = call float @dx.op.unary.f32(i32 27, float %1137)  ; Round_ni(value)
  %1141 = call float @dx.op.unary.f32(i32 27, float %1138)  ; Round_ni(value)
  %1142 = fsub fast float %1109, %1112
  %1143 = fsub fast float %1110, %1113
  %1144 = fsub fast float %1111, %1114
  %1145 = fmul fast float %1142, 7.500000e-01
  %1146 = fmul fast float %1143, 7.500000e-01
  %1147 = fmul fast float %1144, 7.500000e-01
  %1148 = fadd fast float %1112, 1.250000e-01
  %1149 = fadd fast float %1148, %1145
  %1150 = fadd fast float %1149, %1139
  %1151 = fadd fast float %1113, 1.250000e-01
  %1152 = fadd fast float %1151, %1146
  %1153 = fadd fast float %1152, %1140
  %1154 = fadd fast float %1114, 1.250000e-01
  %1155 = fadd fast float %1154, %1147
  %1156 = fadd fast float %1155, %1141
  %1157 = fmul fast float %1150, %1100
  %1158 = fmul fast float %1153, %1101
  %1159 = fmul fast float %1156, %1102
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1163, %dx.types.Handle %28, float %1157, float %1158, float %1159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  br label %1166

; <label>:1166                                    ; preds = %1087, %1076
  %1167 = phi float [ %1165, %1087 ], [ -1.000000e+00, %1076 ]
  %1168 = fadd fast float %1167, %1074
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  br label %1170

; <label>:1170                                    ; preds = %1166, %1064
  %1171 = phi float [ %1169, %1166 ], [ %1074, %1064 ]
  %1172 = fmul fast float %1171, %395
  br label %1173

; <label>:1173                                    ; preds = %1170, %1059
  %1174 = phi float [ %1172, %1170 ], [ %395, %1059 ]
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 256
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1225, label %1179

; <label>:1179                                    ; preds = %1173
  %1180 = add i32 %33, 428
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %1182, 0
  %1184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1184, %dx.types.Handle %70, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = add i32 %33, 116
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = shl i32 %1189, 4
  %1191 = and i32 %1190, 32752
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = lshr i32 %1189, 7
  %1194 = and i32 %1193, 32752
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = fsub fast float 1.000000e+00, %1174
  %1197 = call float @dx.op.binary.f32(i32 35, float %1196, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1198 = bitcast float %1174 to i32
  %1199 = sitofp i32 %1198 to float
  %1200 = fadd fast float %1199, 0xC1CFBF8940000000
  %1201 = fmul fast float %1195, %1200
  %1202 = fadd fast float %1201, 0x41CFBF8940000000
  %1203 = fptosi float %1202 to i32
  %1204 = bitcast i32 %1203 to float
  %1205 = bitcast float %1197 to i32
  %1206 = sitofp i32 %1205 to float
  %1207 = fadd fast float %1206, 0xC1CFBF8940000000
  %1208 = fmul fast float %1207, %1195
  %1209 = fadd fast float %1208, 0x41CFBF8940000000
  %1210 = fptosi float %1209 to i32
  %1211 = bitcast i32 %1210 to float
  %1212 = fmul fast float %1204, %1192
  %1213 = fmul fast float %1211, %1192
  %1214 = fsub fast float %1197, %1212
  %1215 = fadd fast float %1213, %1197
  %1216 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1217 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1218 = fsub fast float %1186, %1216
  %1219 = fsub fast float %1217, %1216
  %1220 = bitcast float %1219 to i32
  %1221 = sub nsw i32 2129859010, %1220
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1222, %1218
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  br label %1225

; <label>:1225                                    ; preds = %1179, %1173
  %1226 = phi float [ %1224, %1179 ], [ %1174, %1173 ]
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 128
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1247, label %1231

; <label>:1231                                    ; preds = %1225
  %1232 = add i32 %33, 412
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %70, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 524288
  %1242 = icmp ne i32 %1241, 0
  %1243 = fcmp fast ogt float %1238, 0x3FE0101020000000
  %1244 = select i1 %1243, float 1.000000e+00, float 0.000000e+00
  %1245 = select i1 %1242, float %1244, float %1238
  %1246 = fmul fast float %1245, %1226
  br label %1247

; <label>:1247                                    ; preds = %1231, %1225
  %1248 = phi float [ %1246, %1231 ], [ %1226, %1225 ]
  %1249 = fcmp fast ult float %1248, 0x3F70101020000000
  br i1 %1249, label %1903, label %1250

; <label>:1250                                    ; preds = %1247
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 16
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1453, label %1255

; <label>:1255                                    ; preds = %1250
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = add i32 %33, 364
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = add i32 %1260, 0
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1262, %dx.types.Handle %69, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = and i32 %1257, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = lshr i32 %1257, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1267, %1269
  %1274 = fadd fast float %1273, %1272
  %1275 = fmul fast float %1274, 0x3F70101000000000
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 512
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1288, label %1280

; <label>:1280                                    ; preds = %1255
  %1281 = add i32 %33, 444
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %1283, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1285, %dx.types.Handle %70, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  br label %1288

; <label>:1288                                    ; preds = %1280, %1255
  %1289 = phi float [ %1287, %1280 ], [ 1.000000e+00, %1255 ]
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 33554432
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1400, label %1294

; <label>:1294                                    ; preds = %1288
  %1295 = add i32 %33, 240
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1297, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = add i32 %33, 244
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 65535
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 24
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = and i32 %1308, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1308, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1308, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = add i32 %33, 236
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = lshr i32 %1325, 24
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = and i32 %1325, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101020000000
  %1332 = lshr i32 %1325, 8
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = lshr i32 %1325, 16
  %1337 = and i32 %1336, 255
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = bitcast float %1264 to i32
  %1341 = ashr i32 %1340, 1
  %1342 = sub nsw i32 1597463174, %1341
  %1343 = bitcast i32 %1342 to float
  %1344 = fmul fast float %1264, 5.000000e-01
  %1345 = fmul fast float %1343, %1343
  %1346 = fmul fast float %1345, %1344
  %1347 = fsub fast float 1.500000e+00, %1346
  %1348 = fmul fast float %1343, %1264
  %1349 = fmul fast float %1348, %1347
  %1350 = bitcast float %1265 to i32
  %1351 = ashr i32 %1350, 1
  %1352 = sub nsw i32 1597463174, %1351
  %1353 = bitcast i32 %1352 to float
  %1354 = fmul fast float %1265, 5.000000e-01
  %1355 = fmul fast float %1353, %1353
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float 1.500000e+00, %1356
  %1358 = fmul fast float %1353, %1265
  %1359 = fmul fast float %1358, %1357
  %1360 = bitcast float %1266 to i32
  %1361 = ashr i32 %1360, 1
  %1362 = sub nsw i32 1597463174, %1361
  %1363 = bitcast i32 %1362 to float
  %1364 = fmul fast float %1266, 5.000000e-01
  %1365 = fmul fast float %1363, %1363
  %1366 = fmul fast float %1365, %1364
  %1367 = fsub fast float 1.500000e+00, %1366
  %1368 = fmul fast float %1363, %1266
  %1369 = fmul fast float %1368, %1367
  %1370 = fsub fast float %1349, %1331
  %1371 = fsub fast float %1359, %1335
  %1372 = fsub fast float %1369, %1339
  %1373 = fmul fast float %1370, %1299
  %1374 = fmul fast float %1371, %1301
  %1375 = fmul fast float %1372, %1306
  %1376 = fadd fast float %1373, %1314
  %1377 = fadd fast float %1374, %1318
  %1378 = fadd fast float %1375, %1322
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = fmul fast float %1379, %1379
  %1383 = fmul fast float %1380, %1380
  %1384 = fmul fast float %1381, %1381
  %1385 = fsub fast float %1382, %1264
  %1386 = fsub fast float %1383, %1265
  %1387 = fsub fast float %1384, %1266
  %1388 = fmul fast float %1385, %1289
  %1389 = fmul fast float %1386, %1289
  %1390 = fmul fast float %1387, %1289
  %1391 = fadd fast float %1388, %1264
  %1392 = fadd fast float %1389, %1265
  %1393 = fadd fast float %1390, %1266
  %1394 = fadd fast float %1311, %1275
  %1395 = fsub fast float %1394, %1328
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fsub fast float %1396, %1275
  %1398 = fmul fast float %1397, %1289
  %1399 = fadd fast float %1398, %1275
  br label %1453

; <label>:1400                                    ; preds = %1288
  %1401 = and i32 %1291, 134217728
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1437, label %1403

; <label>:1403                                    ; preds = %1400
  %1404 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1407 = fadd fast float %1404, -5.000000e-01
  %1408 = fadd fast float %1405, -5.000000e-01
  %1409 = fadd fast float %1406, -5.000000e-01
  %1410 = fmul fast float %1407, %1289
  %1411 = fmul fast float %1408, %1289
  %1412 = fmul fast float %1409, %1289
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1417 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1418 = call float @dx.op.unary.f32(i32 24, float %1266)  ; Sqrt(value)
  %1419 = fmul fast float %1413, 2.000000e+00
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = fmul fast float %1420, %1416
  %1422 = fadd fast float %1421, %1419
  %1423 = fmul fast float %1422, %1416
  %1424 = fmul fast float %1414, 2.000000e+00
  %1425 = fsub fast float 1.000000e+00, %1424
  %1426 = fmul fast float %1425, %1417
  %1427 = fadd fast float %1426, %1424
  %1428 = fmul fast float %1427, %1417
  %1429 = fmul fast float %1415, 2.000000e+00
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = fmul fast float %1430, %1418
  %1432 = fadd fast float %1431, %1429
  %1433 = fmul fast float %1432, %1418
  %1434 = fmul fast float %1423, %1423
  %1435 = fmul fast float %1428, %1428
  %1436 = fmul fast float %1433, %1433
  br label %1453

; <label>:1437                                    ; preds = %1400
  %1438 = fmul fast float %230, %230
  %1439 = fmul fast float %234, %234
  %1440 = fmul fast float %238, %238
  %1441 = fadd fast float %1438, -1.000000e+00
  %1442 = fadd fast float %1439, -1.000000e+00
  %1443 = fadd fast float %1440, -1.000000e+00
  %1444 = fmul fast float %1289, %1441
  %1445 = fmul fast float %1289, %1442
  %1446 = fmul fast float %1289, %1443
  %1447 = fadd fast float %1444, 1.000000e+00
  %1448 = fadd fast float %1445, 1.000000e+00
  %1449 = fadd fast float %1446, 1.000000e+00
  %1450 = fmul fast float %1447, %1264
  %1451 = fmul fast float %1448, %1265
  %1452 = fmul fast float %1449, %1266
  br label %1453

; <label>:1453                                    ; preds = %1437, %1403, %1294, %1250
  %1454 = phi float [ %1399, %1294 ], [ %1275, %1403 ], [ %1275, %1437 ], [ 0x3FA23C0BE0000000, %1250 ]
  %1455 = phi float [ %1391, %1294 ], [ %1434, %1403 ], [ %1450, %1437 ], [ 1.000000e+00, %1250 ]
  %1456 = phi float [ %1392, %1294 ], [ %1435, %1403 ], [ %1451, %1437 ], [ 1.000000e+00, %1250 ]
  %1457 = phi float [ %1393, %1294 ], [ %1436, %1403 ], [ %1452, %1437 ], [ 1.000000e+00, %1250 ]
  %1458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.i32 %1458, 1
  %1460 = and i32 %1459, 1
  %1461 = icmp ne i32 %1460, 0
  %1462 = add i32 %33, 356
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 32
  %1466 = icmp ne i32 %1465, 0
  %1467 = and i1 %1461, %1466
  %1468 = select i1 %1467, float 1.000000e+00, float %1455
  %1469 = select i1 %1467, float 0x3FD3333340000000, float %1456
  %1470 = select i1 %1467, float 0x3FD3333340000000, float %1457
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 32
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1547, label %1475

; <label>:1475                                    ; preds = %1453
  %1476 = add i32 %33, 108
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = add i32 %33, 380
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %69, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.ResRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.ResRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.ResRet.f32 %1484, 3
  %1489 = and i32 %1478, 255
  %1490 = uitofp i32 %1489 to float
  %1491 = lshr i32 %1478, 8
  %1492 = and i32 %1491, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = lshr i32 %1478, 16
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101000000000
  %1498 = fmul fast float %1485, %1490
  %1499 = fadd fast float %1498, %1493
  %1500 = fmul fast float %1499, 0x3F70101000000000
  %1501 = fadd fast float %1486, -5.000000e-01
  %1502 = fadd fast float %1488, -5.000000e-01
  %1503 = fmul fast float %1501, %1497
  %1504 = fmul fast float %1502, %1497
  %1505 = fadd fast float %1503, 5.000000e-01
  %1506 = fadd fast float %1504, 5.000000e-01
  %1507 = fmul fast float %1505, 2.000000e+00
  %1508 = fadd fast float %1507, -1.000000e+00
  %1509 = fmul fast float %1506, 2.000000e+00
  %1510 = fadd fast float %1509, -1.000000e+00
  %1511 = fadd fast float %1508, %1510
  %1512 = fmul fast float %1511, 5.000000e-01
  %1513 = fsub fast float %1508, %1510
  %1514 = fmul fast float %1513, 5.000000e-01
  %1515 = call float @dx.op.unary.f32(i32 6, float %1512)  ; FAbs(value)
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = call float @dx.op.unary.f32(i32 6, float %1514)  ; FAbs(value)
  %1518 = fsub fast float %1516, %1517
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1514, float %1518, float %1512, float %1514, float %1518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = call float @dx.op.unary.f32(i32 25, float %1519)  ; Rsqrt(value)
  %1521 = fmul fast float %1512, %1520
  %1522 = fmul fast float %1514, %1520
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 67108864
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1543, label %1527

; <label>:1527                                    ; preds = %1475
  %1528 = add i32 %33, 296
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 65535
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 65535
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = lshr i32 %1530, 16
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = fsub fast float %1500, %1538
  %1540 = fmul fast float %1539, %1532
  %1541 = fadd fast float %1540, %1536
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br label %1543

; <label>:1543                                    ; preds = %1527, %1475
  %1544 = phi float [ %1542, %1527 ], [ %1500, %1475 ]
  %1545 = call float @dx.op.dot2.f32(i32 54, float %1521, float %1522, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %1546 = call float @dx.op.dot2.f32(i32 54, float %1521, float %1522, float %966, float %967)  ; Dot2(ax,ay,bx,by)
  br label %1547

; <label>:1547                                    ; preds = %1543, %1453
  %1548 = phi float [ %1544, %1543 ], [ 0x3FD6666660000000, %1453 ]
  %1549 = phi float [ %1545, %1543 ], [ 0.000000e+00, %1453 ]
  %1550 = phi float [ %1546, %1543 ], [ 0.000000e+00, %1453 ]
  %1551 = phi float [ %1487, %1543 ], [ 1.000000e+00, %1453 ]
  %1552 = add i32 %33, 176
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = lshr i32 %1554, 22
  %1556 = shl nuw nsw i32 %1555, 5
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 64
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1595, label %1562

; <label>:1562                                    ; preds = %1547
  %1563 = add i32 %33, 396
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 131072
  %1571 = icmp eq i32 %1570, 0
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %69, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = fmul fast float %1573, %218
  %1577 = fmul fast float %1574, %221
  %1578 = fmul fast float %1575, %224
  br i1 %1571, label %1585, label %1579

; <label>:1579                                    ; preds = %1562
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = fmul fast float %1581, %1576
  %1583 = fmul fast float %1581, %1577
  %1584 = fmul fast float %1581, %1578
  br label %1585

; <label>:1585                                    ; preds = %1579, %1562
  %1586 = phi float [ %1582, %1579 ], [ %1576, %1562 ]
  %1587 = phi float [ %1583, %1579 ], [ %1577, %1562 ]
  %1588 = phi float [ %1584, %1579 ], [ %1578, %1562 ]
  %1589 = fmul fast float %1586, %1557
  %1590 = select i1 %170, float %1589, float %1586
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1587, float %1588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = select i1 %170, float 0.000000e+00, float %1586
  %1593 = select i1 %170, float %1591, float %1587
  %1594 = select i1 %170, float 0.000000e+00, float %1588
  br label %1595

; <label>:1595                                    ; preds = %1585, %1547
  %1596 = phi float [ %1592, %1585 ], [ 0.000000e+00, %1547 ]
  %1597 = phi float [ %1593, %1585 ], [ 0.000000e+00, %1547 ]
  %1598 = phi float [ %1594, %1585 ], [ 0.000000e+00, %1547 ]
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 26624
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1660, label %1603

; <label>:1603                                    ; preds = %1595
  %1604 = add i32 %33, 460
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = add i32 %1606, 0
  %1608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1608, %dx.types.Handle %70, float %1060, float %1061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = extractvalue %dx.types.ResRet.f32 %1609, 1
  %1612 = extractvalue %dx.types.ResRet.f32 %1609, 3
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 1048576
  %1616 = icmp ne i32 %1615, 0
  %1617 = and i32 %1614, 8192
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1633, label %1619

; <label>:1619                                    ; preds = %1603
  %1620 = extractvalue %dx.types.ResRet.f32 %1609, 2
  %1621 = select i1 %1616, float %1620, float %1611
  %1622 = select i1 %1616, float %1610, float %1611
  %1623 = add i32 %33, 112
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = lshr i32 %1625, 16
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F80101020000000
  %1630 = fmul fast float %1629, %1622
  %1631 = fmul fast float %1629, %1611
  %1632 = fmul fast float %1629, %1621
  br label %1633

; <label>:1633                                    ; preds = %1619, %1603
  %1634 = phi float [ %1630, %1619 ], [ 0.000000e+00, %1603 ]
  %1635 = phi float [ %1631, %1619 ], [ 0.000000e+00, %1603 ]
  %1636 = phi float [ %1632, %1619 ], [ 0.000000e+00, %1603 ]
  %1637 = and i32 %1614, 2048
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1647, label %1639

; <label>:1639                                    ; preds = %1633
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = shl i32 %1641, 4
  %1643 = and i32 %1642, 32752
  %1644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1643)  ; LegacyF16ToF32(value)
  %1645 = fmul fast float %1644, %1612
  %1646 = call float @dx.op.binary.f32(i32 35, float %1645, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1647

; <label>:1647                                    ; preds = %1639, %1633
  %1648 = phi float [ %1646, %1639 ], [ 0x3F70101020000000, %1633 ]
  %1649 = and i32 %1614, 16384
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1660, label %1651

; <label>:1651                                    ; preds = %1647
  %1652 = add i32 %33, 112
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = lshr i32 %1654, 24
  %1656 = uitofp i32 %1655 to float
  %1657 = fmul fast float %1610, 0x3F70101020000000
  %1658 = select i1 %1616, float 0x3F70101020000000, float %1657
  %1659 = fmul fast float %1658, %1656
  br label %1660

; <label>:1660                                    ; preds = %1651, %1647, %1595
  %1661 = phi float [ %1634, %1651 ], [ %1634, %1647 ], [ 0.000000e+00, %1595 ]
  %1662 = phi float [ %1635, %1651 ], [ %1635, %1647 ], [ 0.000000e+00, %1595 ]
  %1663 = phi float [ %1636, %1651 ], [ %1636, %1647 ], [ 0.000000e+00, %1595 ]
  %1664 = phi float [ %1648, %1651 ], [ %1648, %1647 ], [ 0x3F70101020000000, %1595 ]
  %1665 = phi float [ %1659, %1651 ], [ 0.000000e+00, %1647 ], [ 0.000000e+00, %1595 ]
  %1666 = add i32 %33, 112
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 255
  %1670 = uitofp i32 %1669 to float
  %1671 = lshr i32 %1668, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1469, float %1470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = fmul fast float %1673, %1674
  %1676 = fadd fast float %1675, %1670
  %1677 = fmul fast float %1676, 0x3F70101020000000
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  br i1 %952, label %1679, label %1687

; <label>:1679                                    ; preds = %1660
  %1680 = fsub fast float 1.000000e+00, %1248
  %1681 = fmul fast float %1680, %938
  %1682 = fmul fast float %1680, %939
  %1683 = fmul fast float %1680, %940
  %1684 = fmul fast float %1680, %935
  %1685 = fmul fast float %1680, %936
  %1686 = fmul fast float %1680, %937
  br label %1687

; <label>:1687                                    ; preds = %1679, %1660
  %1688 = phi float [ %1684, %1679 ], [ %935, %1660 ]
  %1689 = phi float [ %1685, %1679 ], [ %936, %1660 ]
  %1690 = phi float [ %1686, %1679 ], [ %937, %1660 ]
  %1691 = phi float [ %1681, %1679 ], [ %938, %1660 ]
  %1692 = phi float [ %1682, %1679 ], [ %939, %1660 ]
  %1693 = phi float [ %1683, %1679 ], [ %940, %1660 ]
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 3
  %1697 = icmp eq i32 %1696, 3
  br i1 %1697, label %1776, label %1698

; <label>:1698                                    ; preds = %1687
  %1699 = and i32 %1695, 16
  %1700 = icmp ne i32 %1699, 0
  %1701 = select i1 %1700, float %1248, float 0.000000e+00
  %1702 = icmp eq i32 %1696, 0
  br i1 %1702, label %1703, label %1731

; <label>:1703                                    ; preds = %1698
  %1704 = and i32 %1695, 64
  %1705 = icmp ne i32 %1704, 0
  %1706 = select i1 %1705, float %1248, float 0.000000e+00
  %1707 = fsub fast float %1468, %1691
  %1708 = fsub fast float %1469, %1692
  %1709 = fsub fast float %1470, %1693
  %1710 = fmul fast float %1701, %1707
  %1711 = fmul fast float %1701, %1708
  %1712 = fmul fast float %1701, %1709
  %1713 = fadd fast float %1710, %1691
  %1714 = fadd fast float %1711, %1692
  %1715 = fadd fast float %1712, %1693
  %1716 = fsub fast float %1454, %944
  %1717 = fmul fast float %1701, %1716
  %1718 = fadd fast float %1717, %944
  %1719 = fsub fast float %1596, %1688
  %1720 = fsub fast float %1597, %1689
  %1721 = fsub fast float %1598, %1690
  %1722 = fmul fast float %1706, %1719
  %1723 = fmul fast float %1706, %1720
  %1724 = fmul fast float %1706, %1721
  %1725 = fadd fast float %1722, %1688
  %1726 = fadd fast float %1723, %1689
  %1727 = fadd fast float %1724, %1690
  %1728 = fsub fast float %1678, %950
  %1729 = fmul fast float %1701, %1728
  %1730 = fadd fast float %1729, %950
  br label %1776

; <label>:1731                                    ; preds = %1698
  %1732 = icmp eq i32 %1696, 1
  br i1 %1732, label %1733, label %1746

; <label>:1733                                    ; preds = %1731
  %1734 = fadd fast float %1468, -1.000000e+00
  %1735 = fadd fast float %1469, -1.000000e+00
  %1736 = fadd fast float %1470, -1.000000e+00
  %1737 = fmul fast float %1701, %1734
  %1738 = fmul fast float %1701, %1735
  %1739 = fmul fast float %1701, %1736
  %1740 = fadd fast float %1737, 1.000000e+00
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fmul fast float %1740, %1691
  %1744 = fmul fast float %1741, %1692
  %1745 = fmul fast float %1742, %1693
  br label %1776

; <label>:1746                                    ; preds = %1731
  %1747 = icmp eq i32 %1696, 2
  br i1 %1747, label %1748, label %1776

; <label>:1748                                    ; preds = %1746
  %1749 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1751 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fadd fast float %1751, -5.000000e-01
  %1755 = fmul fast float %1752, %1701
  %1756 = fmul fast float %1753, %1701
  %1757 = fmul fast float %1754, %1701
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1762, %1691
  %1764 = fadd fast float %1763, %1761
  %1765 = fmul fast float %1764, %1691
  %1766 = fmul fast float %1759, 2.000000e+00
  %1767 = fsub fast float 1.000000e+00, %1766
  %1768 = fmul fast float %1767, %1692
  %1769 = fadd fast float %1768, %1766
  %1770 = fmul fast float %1769, %1692
  %1771 = fmul fast float %1760, 2.000000e+00
  %1772 = fsub fast float 1.000000e+00, %1771
  %1773 = fmul fast float %1772, %1693
  %1774 = fadd fast float %1773, %1771
  %1775 = fmul fast float %1774, %1693
  br label %1776

; <label>:1776                                    ; preds = %1748, %1746, %1733, %1703, %1687
  %1777 = phi float [ %1688, %1687 ], [ %1688, %1748 ], [ %1688, %1746 ], [ %1688, %1733 ], [ %1725, %1703 ]
  %1778 = phi float [ %1689, %1687 ], [ %1689, %1748 ], [ %1689, %1746 ], [ %1689, %1733 ], [ %1726, %1703 ]
  %1779 = phi float [ %1690, %1687 ], [ %1690, %1748 ], [ %1690, %1746 ], [ %1690, %1733 ], [ %1727, %1703 ]
  %1780 = phi float [ %1691, %1687 ], [ %1765, %1748 ], [ %1691, %1746 ], [ %1743, %1733 ], [ %1713, %1703 ]
  %1781 = phi float [ %1692, %1687 ], [ %1770, %1748 ], [ %1692, %1746 ], [ %1744, %1733 ], [ %1714, %1703 ]
  %1782 = phi float [ %1693, %1687 ], [ %1775, %1748 ], [ %1693, %1746 ], [ %1745, %1733 ], [ %1715, %1703 ]
  %1783 = phi float [ %944, %1687 ], [ %944, %1748 ], [ %944, %1746 ], [ %944, %1733 ], [ %1718, %1703 ]
  %1784 = phi float [ %950, %1687 ], [ %950, %1748 ], [ %950, %1746 ], [ %950, %1733 ], [ %1730, %1703 ]
  %1785 = and i32 %1695, 12
  %1786 = icmp eq i32 %1785, 12
  br i1 %1786, label %1903, label %1787

; <label>:1787                                    ; preds = %1776
  %1788 = and i32 %1695, 2097184
  %1789 = icmp eq i32 %1788, 2097184
  %1790 = select i1 %1789, float %1248, float 0.000000e+00
  %1791 = and i32 %1695, 4194336
  %1792 = icmp eq i32 %1791, 4194336
  %1793 = select i1 %1792, float %1248, float 0.000000e+00
  %1794 = and i32 %1695, 8388640
  %1795 = icmp eq i32 %1794, 8388640
  %1796 = select i1 %1795, float %1248, float 0.000000e+00
  %1797 = and i32 %1695, 2048
  %1798 = icmp ne i32 %1797, 0
  %1799 = select i1 %1798, float %1248, float 0.000000e+00
  %1800 = and i32 %1695, 8192
  %1801 = icmp ne i32 %1800, 0
  %1802 = select i1 %1801, float %1248, float 0.000000e+00
  %1803 = and i32 %1695, 16384
  %1804 = icmp ne i32 %1803, 0
  %1805 = select i1 %1804, float %1248, float 0.000000e+00
  %1806 = icmp eq i32 %1785, 0
  br i1 %1806, label %1807, label %1835

; <label>:1807                                    ; preds = %1787
  %1808 = fsub fast float %1549, %933
  %1809 = fsub fast float %1550, %934
  %1810 = fmul fast float %1790, %1808
  %1811 = fmul fast float %1790, %1809
  %1812 = fadd fast float %1810, %933
  %1813 = fadd fast float %1811, %934
  %1814 = fsub fast float %1551, %947
  %1815 = fmul fast float %1793, %1814
  %1816 = fadd fast float %1815, %947
  %1817 = fsub fast float %1548, %946
  %1818 = fmul fast float %1796, %1817
  %1819 = fadd fast float %1818, %946
  %1820 = fsub fast float %1664, %948
  %1821 = fmul fast float %1799, %1820
  %1822 = fadd fast float %1821, %948
  %1823 = fsub fast float %1661, %941
  %1824 = fsub fast float %1662, %942
  %1825 = fsub fast float %1663, %943
  %1826 = fmul fast float %1802, %1823
  %1827 = fmul fast float %1802, %1824
  %1828 = fmul fast float %1802, %1825
  %1829 = fadd fast float %1826, %941
  %1830 = fadd fast float %1827, %942
  %1831 = fadd fast float %1828, %943
  %1832 = fsub fast float %1665, %949
  %1833 = fmul fast float %1805, %1832
  %1834 = fadd fast float %1833, %949
  br label %1903

; <label>:1835                                    ; preds = %1787
  %1836 = icmp eq i32 %1785, 4
  br i1 %1836, label %1837, label %1879

; <label>:1837                                    ; preds = %1835
  %1838 = fmul fast float %1790, %1549
  %1839 = fmul fast float %1790, %1550
  %1840 = fadd fast float %1838, %933
  %1841 = fadd fast float %1839, %934
  %1842 = call float @dx.op.binary.f32(i32 36, float %947, float %1551)  ; FMin(a,b)
  %1843 = fsub fast float %1842, %947
  %1844 = fmul fast float %1843, %1793
  %1845 = fadd fast float %1844, %947
  %1846 = fadd fast float %1548, %946
  %1847 = fmul fast float %1846, 0x3FF337FAE0000000
  %1848 = fmul fast float %946, %946
  %1849 = fmul fast float %1548, %1548
  %1850 = fadd fast float %1849, %1848
  %1851 = fmul fast float %1850, 0x3FE5152B00000000
  %1852 = fmul fast float %946, 0xBFCC1F85E0000000
  %1853 = fmul fast float %1852, %1548
  %1854 = fadd fast float %1853, 0xBFE1363700000000
  %1855 = fadd fast float %1854, %1847
  %1856 = fsub fast float %1855, %1851
  %1857 = fmul fast float %1846, 0x3FBA6F0D00000000
  %1858 = fmul fast float %1850, 0x3FD0432880000000
  %1859 = fmul fast float %946, 0xBFEF110800000000
  %1860 = fmul fast float %1859, %1548
  %1861 = fadd fast float %1860, 1.000000e+00
  %1862 = fsub fast float %1861, %1857
  %1863 = fadd fast float %1862, %1858
  %1864 = fdiv fast float %1856, %1863
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1866 = fsub fast float %1865, %946
  %1867 = fmul fast float %1866, %1796
  %1868 = fadd fast float %1867, %946
  %1869 = fmul fast float %1799, %1664
  %1870 = fadd fast float %1869, %948
  %1871 = fmul fast float %1802, %1661
  %1872 = fmul fast float %1802, %1662
  %1873 = fmul fast float %1802, %1663
  %1874 = fadd fast float %1871, %941
  %1875 = fadd fast float %1872, %942
  %1876 = fadd fast float %1873, %943
  %1877 = fmul fast float %1805, %1665
  %1878 = fadd fast float %1877, %949
  br label %1903

; <label>:1879                                    ; preds = %1835
  %1880 = icmp eq i32 %1785, 8
  br i1 %1880, label %1881, label %1903

; <label>:1881                                    ; preds = %1879
  %1882 = fmul fast float %1790, %1549
  %1883 = fmul fast float %1790, %1550
  %1884 = fadd fast float %1882, %933
  %1885 = fadd fast float %1883, %934
  %1886 = call float @dx.op.binary.f32(i32 36, float %947, float %1551)  ; FMin(a,b)
  %1887 = fsub fast float %1886, %947
  %1888 = fmul fast float %1887, %1793
  %1889 = fadd fast float %1888, %947
  %1890 = fsub fast float %1548, %946
  %1891 = fmul fast float %1796, %1890
  %1892 = fadd fast float %1891, %946
  %1893 = fmul fast float %1799, %1664
  %1894 = fadd fast float %1893, %948
  %1895 = fmul fast float %1802, %1661
  %1896 = fmul fast float %1802, %1662
  %1897 = fmul fast float %1802, %1663
  %1898 = fadd fast float %1895, %941
  %1899 = fadd fast float %1896, %942
  %1900 = fadd fast float %1897, %943
  %1901 = fmul fast float %1805, %1665
  %1902 = fadd fast float %1901, %949
  br label %1903

; <label>:1903                                    ; preds = %1881, %1879, %1837, %1807, %1776, %1247, %951, %932
  %1904 = phi float [ %933, %1776 ], [ %933, %1247 ], [ %933, %932 ], [ %1884, %1881 ], [ %933, %1879 ], [ %1840, %1837 ], [ %1812, %1807 ], [ %933, %951 ]
  %1905 = phi float [ %934, %1776 ], [ %934, %1247 ], [ %934, %932 ], [ %1885, %1881 ], [ %934, %1879 ], [ %1841, %1837 ], [ %1813, %1807 ], [ %934, %951 ]
  %1906 = phi float [ %1777, %1776 ], [ %935, %1247 ], [ %935, %932 ], [ %1777, %1881 ], [ %1777, %1879 ], [ %1777, %1837 ], [ %1777, %1807 ], [ %935, %951 ]
  %1907 = phi float [ %1778, %1776 ], [ %936, %1247 ], [ %936, %932 ], [ %1778, %1881 ], [ %1778, %1879 ], [ %1778, %1837 ], [ %1778, %1807 ], [ %936, %951 ]
  %1908 = phi float [ %1779, %1776 ], [ %937, %1247 ], [ %937, %932 ], [ %1779, %1881 ], [ %1779, %1879 ], [ %1779, %1837 ], [ %1779, %1807 ], [ %937, %951 ]
  %1909 = phi float [ %1780, %1776 ], [ %938, %1247 ], [ %938, %932 ], [ %1780, %1881 ], [ %1780, %1879 ], [ %1780, %1837 ], [ %1780, %1807 ], [ %938, %951 ]
  %1910 = phi float [ %1781, %1776 ], [ %939, %1247 ], [ %939, %932 ], [ %1781, %1881 ], [ %1781, %1879 ], [ %1781, %1837 ], [ %1781, %1807 ], [ %939, %951 ]
  %1911 = phi float [ %1782, %1776 ], [ %940, %1247 ], [ %940, %932 ], [ %1782, %1881 ], [ %1782, %1879 ], [ %1782, %1837 ], [ %1782, %1807 ], [ %940, %951 ]
  %1912 = phi float [ %941, %1776 ], [ %941, %1247 ], [ %941, %932 ], [ %1898, %1881 ], [ %941, %1879 ], [ %1874, %1837 ], [ %1829, %1807 ], [ %941, %951 ]
  %1913 = phi float [ %942, %1776 ], [ %942, %1247 ], [ %942, %932 ], [ %1899, %1881 ], [ %942, %1879 ], [ %1875, %1837 ], [ %1830, %1807 ], [ %942, %951 ]
  %1914 = phi float [ %943, %1776 ], [ %943, %1247 ], [ %943, %932 ], [ %1900, %1881 ], [ %943, %1879 ], [ %1876, %1837 ], [ %1831, %1807 ], [ %943, %951 ]
  %1915 = phi float [ %1783, %1776 ], [ %944, %1247 ], [ %944, %932 ], [ %1783, %1881 ], [ %1783, %1879 ], [ %1783, %1837 ], [ %1783, %1807 ], [ %944, %951 ]
  %1916 = phi float [ %946, %1776 ], [ %946, %1247 ], [ %946, %932 ], [ %1892, %1881 ], [ %946, %1879 ], [ %1868, %1837 ], [ %1819, %1807 ], [ %946, %951 ]
  %1917 = phi float [ %947, %1776 ], [ %947, %1247 ], [ %947, %932 ], [ %1889, %1881 ], [ %947, %1879 ], [ %1845, %1837 ], [ %1816, %1807 ], [ %947, %951 ]
  %1918 = phi float [ %948, %1776 ], [ %948, %1247 ], [ %948, %932 ], [ %1894, %1881 ], [ %948, %1879 ], [ %1870, %1837 ], [ %1822, %1807 ], [ %948, %951 ]
  %1919 = phi float [ %949, %1776 ], [ %949, %1247 ], [ %949, %932 ], [ %1902, %1881 ], [ %949, %1879 ], [ %1878, %1837 ], [ %1834, %1807 ], [ %949, %951 ]
  %1920 = phi float [ %1784, %1776 ], [ %950, %1247 ], [ %950, %932 ], [ %1784, %1881 ], [ %1784, %1879 ], [ %1784, %1837 ], [ %1784, %1807 ], [ %950, %951 ]
  br i1 %345, label %2873, label %1921

; <label>:1921                                    ; preds = %1903
  %1922 = icmp ult i32 %398, 3
  %1923 = add i32 %33, 56
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = add i32 %33, 60
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = or i32 %1928, %1925
  %1930 = icmp eq i32 %1929, 0
  br i1 %1930, label %2873, label %1931

; <label>:1931                                    ; preds = %1921
  %1932 = and i32 %1925, 262144
  %1933 = icmp ne i32 %1932, 0
  %1934 = select i1 %1933, float %36, float 1.000000e+00
  %1935 = select i1 %1933, float %37, float 0.000000e+00
  %1936 = select i1 %1933, float %38, float 0.000000e+00
  %1937 = select i1 %1933, float %39, float 1.000000e+00
  %1938 = select i1 %1933, float %40, float %61
  %1939 = select i1 %1933, float %41, float %62
  %1940 = add i32 %33, 316
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 16
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fmul fast float %1944, 0x3F50624DE0000000
  %1946 = add i32 %33, 120
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 16
  %1950 = and i32 %1949, 255
  %1951 = lshr i32 %1948, 24
  %1952 = add i32 %33, 324
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = and i32 %1954, 65535
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = lshr i32 %1954, 16
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = add i32 %33, 64
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = lshr i32 %1961, 22
  %1963 = shl nuw nsw i32 %1962, 5
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = shl i32 %1961, 4
  %1966 = and i32 %1965, 32752
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = lshr i32 %1961, 7
  %1969 = and i32 %1968, 32752
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %1973 = fmul fast float %1972, 1.000000e+03
  %1974 = fmul fast float %295, %1973
  %1975 = call float @dx.op.unary.f32(i32 22, float %1974)  ; Frc(value)
  %1976 = fadd fast float %1975, %285
  %1977 = fmul fast float %296, %1973
  %1978 = call float @dx.op.unary.f32(i32 22, float %1977)  ; Frc(value)
  %1979 = fadd fast float %1978, %287
  %1980 = fmul fast float %1945, %1973
  %1981 = call float @dx.op.unary.f32(i32 22, float %1980)  ; Frc(value)
  %1982 = fmul fast float %1981, 0x401921FB60000000
  %1983 = fadd fast float %1982, %1964
  %1984 = call float @dx.op.unary.f32(i32 13, float %1983)  ; Sin(value)
  %1985 = call float @dx.op.unary.f32(i32 12, float %1983)  ; Cos(value)
  %1986 = fsub fast float -0.000000e+00, %1984
  %1987 = fadd fast float %1938, -5.000000e-01
  %1988 = fadd fast float %1939, -5.000000e-01
  %1989 = fmul fast float %1956, %1987
  %1990 = fmul fast float %1958, %1988
  %1991 = fadd fast float %1989, 5.000000e-01
  %1992 = fadd fast float %1990, 5.000000e-01
  %1993 = fmul fast float %1967, %1991
  %1994 = fmul fast float %1970, %1992
  %1995 = fmul fast float %1985, %1993
  %1996 = call float @dx.op.tertiary.f32(i32 46, float %1986, float %1994, float %1995)  ; FMad(a,b,c)
  %1997 = fmul fast float %1984, %1993
  %1998 = call float @dx.op.tertiary.f32(i32 46, float %1985, float %1994, float %1997)  ; FMad(a,b,c)
  %1999 = fadd fast float %1976, %1996
  %2000 = fadd fast float %1979, %1998
  %2001 = icmp ugt i32 %1950, 1
  %2002 = icmp ugt i32 %1948, 33554431
  %2003 = or i1 %2002, %2001
  br i1 %2003, label %2004, label %2029

; <label>:2004                                    ; preds = %1931
  %2005 = add i32 %33, 260
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = lshr i32 %2007, 16
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = fmul fast float %1972, %2009
  %2011 = call float @dx.op.unary.f32(i32 22, float %2010)  ; Frc(value)
  %2012 = mul nuw nsw i32 %1950, %1951
  %2013 = uitofp i32 %2012 to float
  %2014 = fmul fast float %2011, %2013
  %2015 = call float @dx.op.unary.f32(i32 27, float %2014)  ; Round_ni(value)
  %2016 = fptoui float %2015 to i32
  %2017 = urem i32 %2016, %1950
  %2018 = udiv i32 %2016, %1951
  %2019 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2020 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2021 = uitofp i32 %2017 to float
  %2022 = uitofp i32 %2018 to float
  %2023 = fadd fast float %2019, %2021
  %2024 = fadd fast float %2020, %2022
  %2025 = uitofp i32 %1950 to float
  %2026 = uitofp i32 %1951 to float
  %2027 = fdiv fast float %2023, %2025
  %2028 = fdiv fast float %2024, %2026
  br label %2029

; <label>:2029                                    ; preds = %2004, %1931
  %2030 = phi float [ %2027, %2004 ], [ %1999, %1931 ]
  %2031 = phi float [ %2028, %2004 ], [ %2000, %1931 ]
  %2032 = and i32 %1925, 16777216
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2143, label %2034

; <label>:2034                                    ; preds = %2029
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2039 = fadd fast float %2036, %128
  %2040 = fadd fast float %2037, %129
  %2041 = fadd fast float %2038, %130
  %2042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.f32 %2042, 0
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = icmp eq i32 %34, 65535
  br i1 %2045, label %2140, label %2046

; <label>:2046                                    ; preds = %2034
  %2047 = lshr i32 %34, 1
  %2048 = shl i32 %2047, 2
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = and i32 %34, 1
  %2052 = icmp ne i32 %2051, 0
  %2053 = lshr i32 %2050, 16
  %2054 = and i32 %2050, 65535
  %2055 = select i1 %2052, i32 %2053, i32 %2054
  %2056 = icmp eq i32 %2055, 65535
  br i1 %2056, label %2136, label %2057

; <label>:2057                                    ; preds = %2046
  %2058 = mul nuw nsw i32 %2055, 40
  %2059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.ResRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.ResRet.f32 %2059, 2
  %2063 = add nuw nsw i32 %2058, 12
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = add nuw nsw i32 %2058, 24
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = add nuw nsw i32 %2058, 36
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = fsub fast float %2039, %2060
  %2077 = fsub fast float %2040, %2061
  %2078 = fsub fast float %2041, %2062
  %2079 = fmul fast float %2075, %2076
  %2080 = fmul fast float %2075, %2077
  %2081 = fmul fast float %2075, %2078
  %2082 = call float @dx.op.unary.f32(i32 27, float %2079)  ; Round_ni(value)
  %2083 = call float @dx.op.unary.f32(i32 27, float %2080)  ; Round_ni(value)
  %2084 = call float @dx.op.unary.f32(i32 27, float %2081)  ; Round_ni(value)
  %2085 = fadd fast float %2082, 5.000000e-01
  %2086 = fadd fast float %2083, 5.000000e-01
  %2087 = fadd fast float %2084, 5.000000e-01
  %2088 = fmul fast float %2085, %2065
  %2089 = fmul fast float %2086, %2066
  %2090 = fmul fast float %2087, %2067
  %2091 = shl i32 %34, 2
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = add i32 %2093, 0
  %2095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2096 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2097 = call float @dx.op.unary.f32(i32 22, float %2089)  ; Frc(value)
  %2098 = call float @dx.op.unary.f32(i32 22, float %2090)  ; Frc(value)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2095, %dx.types.Handle %30, float %2096, float %2097, float %2098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = fmul fast float %2100, 1.023000e+03
  %2104 = fmul fast float %2101, 1.023000e+03
  %2105 = fmul fast float %2102, 1.023000e+03
  %2106 = fadd fast float %2103, 5.000000e-01
  %2107 = fadd fast float %2104, 5.000000e-01
  %2108 = fadd fast float %2105, 5.000000e-01
  %2109 = call float @dx.op.unary.f32(i32 27, float %2106)  ; Round_ni(value)
  %2110 = call float @dx.op.unary.f32(i32 27, float %2107)  ; Round_ni(value)
  %2111 = call float @dx.op.unary.f32(i32 27, float %2108)  ; Round_ni(value)
  %2112 = fsub fast float %2079, %2082
  %2113 = fsub fast float %2080, %2083
  %2114 = fsub fast float %2081, %2084
  %2115 = fmul fast float %2112, 7.500000e-01
  %2116 = fmul fast float %2113, 7.500000e-01
  %2117 = fmul fast float %2114, 7.500000e-01
  %2118 = fadd fast float %2082, 1.250000e-01
  %2119 = fadd fast float %2118, %2115
  %2120 = fadd fast float %2119, %2109
  %2121 = fadd fast float %2083, 1.250000e-01
  %2122 = fadd fast float %2121, %2116
  %2123 = fadd fast float %2122, %2110
  %2124 = fadd fast float %2084, 1.250000e-01
  %2125 = fadd fast float %2124, %2117
  %2126 = fadd fast float %2125, %2111
  %2127 = fmul fast float %2120, %2070
  %2128 = fmul fast float %2123, %2071
  %2129 = fmul fast float %2126, %2072
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = add i32 %2131, 0
  %2133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2133, %dx.types.Handle %28, float %2127, float %2128, float %2129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  br label %2136

; <label>:2136                                    ; preds = %2057, %2046
  %2137 = phi float [ %2135, %2057 ], [ -1.000000e+00, %2046 ]
  %2138 = fadd fast float %2137, %2044
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  br label %2140

; <label>:2140                                    ; preds = %2136, %2034
  %2141 = phi float [ %2139, %2136 ], [ %2044, %2034 ]
  %2142 = fmul fast float %2141, %394
  br label %2143

; <label>:2143                                    ; preds = %2140, %2029
  %2144 = phi float [ %2142, %2140 ], [ %394, %2029 ]
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 256
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2195, label %2149

; <label>:2149                                    ; preds = %2143
  %2150 = add i32 %33, 432
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %2152, 0
  %2154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2154, %dx.types.Handle %70, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = add i32 %33, 132
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = shl i32 %2159, 4
  %2161 = and i32 %2160, 32752
  %2162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2161)  ; LegacyF16ToF32(value)
  %2163 = lshr i32 %2159, 7
  %2164 = and i32 %2163, 32752
  %2165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2164)  ; LegacyF16ToF32(value)
  %2166 = fsub fast float 1.000000e+00, %2144
  %2167 = call float @dx.op.binary.f32(i32 35, float %2166, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2168 = bitcast float %2144 to i32
  %2169 = sitofp i32 %2168 to float
  %2170 = fadd fast float %2169, 0xC1CFBF8940000000
  %2171 = fmul fast float %2165, %2170
  %2172 = fadd fast float %2171, 0x41CFBF8940000000
  %2173 = fptosi float %2172 to i32
  %2174 = bitcast i32 %2173 to float
  %2175 = bitcast float %2167 to i32
  %2176 = sitofp i32 %2175 to float
  %2177 = fadd fast float %2176, 0xC1CFBF8940000000
  %2178 = fmul fast float %2177, %2165
  %2179 = fadd fast float %2178, 0x41CFBF8940000000
  %2180 = fptosi float %2179 to i32
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2174, %2162
  %2183 = fmul fast float %2181, %2162
  %2184 = fsub fast float %2167, %2182
  %2185 = fadd fast float %2183, %2167
  %2186 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2188 = fsub fast float %2156, %2186
  %2189 = fsub fast float %2187, %2186
  %2190 = bitcast float %2189 to i32
  %2191 = sub nsw i32 2129859010, %2190
  %2192 = bitcast i32 %2191 to float
  %2193 = fmul fast float %2192, %2188
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  br label %2195

; <label>:2195                                    ; preds = %2149, %2143
  %2196 = phi float [ %2194, %2149 ], [ %2144, %2143 ]
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = and i32 %2198, 128
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2217, label %2201

; <label>:2201                                    ; preds = %2195
  %2202 = add i32 %33, 416
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = add i32 %2204, 0
  %2206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2206, %dx.types.Handle %70, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %2210, 524288
  %2212 = icmp ne i32 %2211, 0
  %2213 = fcmp fast ogt float %2208, 0x3FE0101020000000
  %2214 = select i1 %2213, float 1.000000e+00, float 0.000000e+00
  %2215 = select i1 %2212, float %2214, float %2208
  %2216 = fmul fast float %2215, %2196
  br label %2217

; <label>:2217                                    ; preds = %2201, %2195
  %2218 = phi float [ %2216, %2201 ], [ %2196, %2195 ]
  %2219 = fcmp fast ult float %2218, 0x3F70101020000000
  br i1 %2219, label %2873, label %2220

; <label>:2220                                    ; preds = %2217
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 16
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2423, label %2225

; <label>:2225                                    ; preds = %2220
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %33, 368
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %69, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = extractvalue %dx.types.ResRet.f32 %2233, 1
  %2236 = extractvalue %dx.types.ResRet.f32 %2233, 2
  %2237 = extractvalue %dx.types.ResRet.f32 %2233, 3
  %2238 = and i32 %2227, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = lshr i32 %2227, 8
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2237, %2239
  %2244 = fadd fast float %2243, %2242
  %2245 = fmul fast float %2244, 0x3F70101000000000
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 512
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2258, label %2250

; <label>:2250                                    ; preds = %2225
  %2251 = add i32 %33, 448
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %2253, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2255, %dx.types.Handle %70, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  br label %2258

; <label>:2258                                    ; preds = %2250, %2225
  %2259 = phi float [ %2257, %2250 ], [ 1.000000e+00, %2225 ]
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 33554432
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2370, label %2264

; <label>:2264                                    ; preds = %2258
  %2265 = add i32 %33, 256
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 65535
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = lshr i32 %2267, 16
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = add i32 %33, 260
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 65535
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = lshr i32 %2278, 24
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = and i32 %2278, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = fmul fast float %2283, 0x3F70101020000000
  %2285 = lshr i32 %2278, 8
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = lshr i32 %2278, 16
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = add i32 %33, 252
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = lshr i32 %2295, 24
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = and i32 %2295, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = fmul fast float %2300, 0x3F70101020000000
  %2302 = lshr i32 %2295, 8
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101020000000
  %2306 = lshr i32 %2295, 16
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = bitcast float %2234 to i32
  %2311 = ashr i32 %2310, 1
  %2312 = sub nsw i32 1597463174, %2311
  %2313 = bitcast i32 %2312 to float
  %2314 = fmul fast float %2234, 5.000000e-01
  %2315 = fmul fast float %2313, %2313
  %2316 = fmul fast float %2315, %2314
  %2317 = fsub fast float 1.500000e+00, %2316
  %2318 = fmul fast float %2313, %2234
  %2319 = fmul fast float %2318, %2317
  %2320 = bitcast float %2235 to i32
  %2321 = ashr i32 %2320, 1
  %2322 = sub nsw i32 1597463174, %2321
  %2323 = bitcast i32 %2322 to float
  %2324 = fmul fast float %2235, 5.000000e-01
  %2325 = fmul fast float %2323, %2323
  %2326 = fmul fast float %2325, %2324
  %2327 = fsub fast float 1.500000e+00, %2326
  %2328 = fmul fast float %2323, %2235
  %2329 = fmul fast float %2328, %2327
  %2330 = bitcast float %2236 to i32
  %2331 = ashr i32 %2330, 1
  %2332 = sub nsw i32 1597463174, %2331
  %2333 = bitcast i32 %2332 to float
  %2334 = fmul fast float %2236, 5.000000e-01
  %2335 = fmul fast float %2333, %2333
  %2336 = fmul fast float %2335, %2334
  %2337 = fsub fast float 1.500000e+00, %2336
  %2338 = fmul fast float %2333, %2236
  %2339 = fmul fast float %2338, %2337
  %2340 = fsub fast float %2319, %2301
  %2341 = fsub fast float %2329, %2305
  %2342 = fsub fast float %2339, %2309
  %2343 = fmul fast float %2340, %2269
  %2344 = fmul fast float %2341, %2271
  %2345 = fmul fast float %2342, %2276
  %2346 = fadd fast float %2343, %2284
  %2347 = fadd fast float %2344, %2288
  %2348 = fadd fast float %2345, %2292
  %2349 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2352 = fmul fast float %2349, %2349
  %2353 = fmul fast float %2350, %2350
  %2354 = fmul fast float %2351, %2351
  %2355 = fsub fast float %2352, %2234
  %2356 = fsub fast float %2353, %2235
  %2357 = fsub fast float %2354, %2236
  %2358 = fmul fast float %2355, %2259
  %2359 = fmul fast float %2356, %2259
  %2360 = fmul fast float %2357, %2259
  %2361 = fadd fast float %2358, %2234
  %2362 = fadd fast float %2359, %2235
  %2363 = fadd fast float %2360, %2236
  %2364 = fadd fast float %2281, %2245
  %2365 = fsub fast float %2364, %2298
  %2366 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  %2367 = fsub fast float %2366, %2245
  %2368 = fmul fast float %2367, %2259
  %2369 = fadd fast float %2368, %2245
  br label %2423

; <label>:2370                                    ; preds = %2258
  %2371 = and i32 %2261, 134217728
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2407, label %2373

; <label>:2373                                    ; preds = %2370
  %2374 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2377 = fadd fast float %2374, -5.000000e-01
  %2378 = fadd fast float %2375, -5.000000e-01
  %2379 = fadd fast float %2376, -5.000000e-01
  %2380 = fmul fast float %2377, %2259
  %2381 = fmul fast float %2378, %2259
  %2382 = fmul fast float %2379, %2259
  %2383 = fadd fast float %2380, 5.000000e-01
  %2384 = fadd fast float %2381, 5.000000e-01
  %2385 = fadd fast float %2382, 5.000000e-01
  %2386 = call float @dx.op.unary.f32(i32 24, float %2234)  ; Sqrt(value)
  %2387 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2388 = call float @dx.op.unary.f32(i32 24, float %2236)  ; Sqrt(value)
  %2389 = fmul fast float %2383, 2.000000e+00
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = fmul fast float %2390, %2386
  %2392 = fadd fast float %2391, %2389
  %2393 = fmul fast float %2392, %2386
  %2394 = fmul fast float %2384, 2.000000e+00
  %2395 = fsub fast float 1.000000e+00, %2394
  %2396 = fmul fast float %2395, %2387
  %2397 = fadd fast float %2396, %2394
  %2398 = fmul fast float %2397, %2387
  %2399 = fmul fast float %2385, 2.000000e+00
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2400, %2388
  %2402 = fadd fast float %2401, %2399
  %2403 = fmul fast float %2402, %2388
  %2404 = fmul fast float %2393, %2393
  %2405 = fmul fast float %2398, %2398
  %2406 = fmul fast float %2403, %2403
  br label %2423

; <label>:2407                                    ; preds = %2370
  %2408 = fmul fast float %272, %272
  %2409 = fmul fast float %276, %276
  %2410 = fmul fast float %280, %280
  %2411 = fadd fast float %2408, -1.000000e+00
  %2412 = fadd fast float %2409, -1.000000e+00
  %2413 = fadd fast float %2410, -1.000000e+00
  %2414 = fmul fast float %2259, %2411
  %2415 = fmul fast float %2259, %2412
  %2416 = fmul fast float %2259, %2413
  %2417 = fadd fast float %2414, 1.000000e+00
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fadd fast float %2416, 1.000000e+00
  %2420 = fmul fast float %2417, %2234
  %2421 = fmul fast float %2418, %2235
  %2422 = fmul fast float %2419, %2236
  br label %2423

; <label>:2423                                    ; preds = %2407, %2373, %2264, %2220
  %2424 = phi float [ %2369, %2264 ], [ %2245, %2373 ], [ %2245, %2407 ], [ 0x3FA23C0BE0000000, %2220 ]
  %2425 = phi float [ %2361, %2264 ], [ %2404, %2373 ], [ %2420, %2407 ], [ 1.000000e+00, %2220 ]
  %2426 = phi float [ %2362, %2264 ], [ %2405, %2373 ], [ %2421, %2407 ], [ 1.000000e+00, %2220 ]
  %2427 = phi float [ %2363, %2264 ], [ %2406, %2373 ], [ %2422, %2407 ], [ 1.000000e+00, %2220 ]
  %2428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.i32 %2428, 1
  %2430 = and i32 %2429, 1
  %2431 = icmp ne i32 %2430, 0
  %2432 = add i32 %33, 356
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 32
  %2436 = icmp ne i32 %2435, 0
  %2437 = and i1 %2431, %2436
  %2438 = select i1 %2437, float 1.000000e+00, float %2425
  %2439 = select i1 %2437, float 0x3FD3333340000000, float %2426
  %2440 = select i1 %2437, float 0x3FD3333340000000, float %2427
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 32
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2517, label %2445

; <label>:2445                                    ; preds = %2423
  %2446 = add i32 %33, 124
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = add i32 %33, 384
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = add i32 %2451, 0
  %2453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2453, %dx.types.Handle %69, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = extractvalue %dx.types.ResRet.f32 %2454, 3
  %2459 = and i32 %2448, 255
  %2460 = uitofp i32 %2459 to float
  %2461 = lshr i32 %2448, 8
  %2462 = and i32 %2461, 255
  %2463 = uitofp i32 %2462 to float
  %2464 = lshr i32 %2448, 16
  %2465 = and i32 %2464, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = fmul fast float %2466, 0x3F70101000000000
  %2468 = fmul fast float %2455, %2460
  %2469 = fadd fast float %2468, %2463
  %2470 = fmul fast float %2469, 0x3F70101000000000
  %2471 = fadd fast float %2456, -5.000000e-01
  %2472 = fadd fast float %2458, -5.000000e-01
  %2473 = fmul fast float %2471, %2467
  %2474 = fmul fast float %2472, %2467
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fadd fast float %2474, 5.000000e-01
  %2477 = fmul fast float %2475, 2.000000e+00
  %2478 = fadd fast float %2477, -1.000000e+00
  %2479 = fmul fast float %2476, 2.000000e+00
  %2480 = fadd fast float %2479, -1.000000e+00
  %2481 = fadd fast float %2478, %2480
  %2482 = fmul fast float %2481, 5.000000e-01
  %2483 = fsub fast float %2478, %2480
  %2484 = fmul fast float %2483, 5.000000e-01
  %2485 = call float @dx.op.unary.f32(i32 6, float %2482)  ; FAbs(value)
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = call float @dx.op.unary.f32(i32 6, float %2484)  ; FAbs(value)
  %2488 = fsub fast float %2486, %2487
  %2489 = call float @dx.op.dot3.f32(i32 55, float %2482, float %2484, float %2488, float %2482, float %2484, float %2488)  ; Dot3(ax,ay,az,bx,by,bz)
  %2490 = call float @dx.op.unary.f32(i32 25, float %2489)  ; Rsqrt(value)
  %2491 = fmul fast float %2482, %2490
  %2492 = fmul fast float %2484, %2490
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 67108864
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2513, label %2497

; <label>:2497                                    ; preds = %2445
  %2498 = add i32 %33, 312
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 65535
  %2502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2501)  ; LegacyF16ToF32(value)
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 65535
  %2506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2505)  ; LegacyF16ToF32(value)
  %2507 = lshr i32 %2500, 16
  %2508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2507)  ; LegacyF16ToF32(value)
  %2509 = fsub fast float %2470, %2508
  %2510 = fmul fast float %2509, %2502
  %2511 = fadd fast float %2510, %2506
  %2512 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  br label %2513

; <label>:2513                                    ; preds = %2497, %2445
  %2514 = phi float [ %2512, %2497 ], [ %2470, %2445 ]
  %2515 = call float @dx.op.dot2.f32(i32 54, float %2491, float %2492, float %1934, float %1935)  ; Dot2(ax,ay,bx,by)
  %2516 = call float @dx.op.dot2.f32(i32 54, float %2491, float %2492, float %1936, float %1937)  ; Dot2(ax,ay,bx,by)
  br label %2517

; <label>:2517                                    ; preds = %2513, %2423
  %2518 = phi float [ %2514, %2513 ], [ 0x3FD6666660000000, %2423 ]
  %2519 = phi float [ %2515, %2513 ], [ 0.000000e+00, %2423 ]
  %2520 = phi float [ %2516, %2513 ], [ 0.000000e+00, %2423 ]
  %2521 = phi float [ %2457, %2513 ], [ 1.000000e+00, %2423 ]
  %2522 = add i32 %33, 192
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = lshr i32 %2524, 22
  %2526 = shl nuw nsw i32 %2525, 5
  %2527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2526)  ; LegacyF16ToF32(value)
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 64
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2565, label %2532

; <label>:2532                                    ; preds = %2517
  %2533 = add i32 %33, 400
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = add i32 %2535, 0
  %2537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 131072
  %2541 = icmp eq i32 %2540, 0
  %2542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2537, %dx.types.Handle %69, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2543 = extractvalue %dx.types.ResRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.ResRet.f32 %2542, 1
  %2545 = extractvalue %dx.types.ResRet.f32 %2542, 2
  %2546 = fmul fast float %2543, %260
  %2547 = fmul fast float %2544, %263
  %2548 = fmul fast float %2545, %266
  br i1 %2541, label %2555, label %2549

; <label>:2549                                    ; preds = %2532
  %2550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.f32 %2550, 0
  %2552 = fmul fast float %2551, %2546
  %2553 = fmul fast float %2551, %2547
  %2554 = fmul fast float %2551, %2548
  br label %2555

; <label>:2555                                    ; preds = %2549, %2532
  %2556 = phi float [ %2552, %2549 ], [ %2546, %2532 ]
  %2557 = phi float [ %2553, %2549 ], [ %2547, %2532 ]
  %2558 = phi float [ %2554, %2549 ], [ %2548, %2532 ]
  %2559 = fmul fast float %2556, %2527
  %2560 = select i1 %170, float %2559, float %2556
  %2561 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2557, float %2558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2562 = select i1 %170, float 0.000000e+00, float %2556
  %2563 = select i1 %170, float %2561, float %2557
  %2564 = select i1 %170, float 0.000000e+00, float %2558
  br label %2565

; <label>:2565                                    ; preds = %2555, %2517
  %2566 = phi float [ %2562, %2555 ], [ 0.000000e+00, %2517 ]
  %2567 = phi float [ %2563, %2555 ], [ 0.000000e+00, %2517 ]
  %2568 = phi float [ %2564, %2555 ], [ 0.000000e+00, %2517 ]
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 26624
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %2630, label %2573

; <label>:2573                                    ; preds = %2565
  %2574 = add i32 %33, 464
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = add i32 %2576, 0
  %2578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2578, %dx.types.Handle %70, float %2030, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2580 = extractvalue %dx.types.ResRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.ResRet.f32 %2579, 1
  %2582 = extractvalue %dx.types.ResRet.f32 %2579, 3
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 1048576
  %2586 = icmp ne i32 %2585, 0
  %2587 = and i32 %2584, 8192
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2603, label %2589

; <label>:2589                                    ; preds = %2573
  %2590 = extractvalue %dx.types.ResRet.f32 %2579, 2
  %2591 = select i1 %2586, float %2590, float %2581
  %2592 = select i1 %2586, float %2580, float %2581
  %2593 = add i32 %33, 128
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 16
  %2597 = and i32 %2596, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = fmul fast float %2598, 0x3F80101020000000
  %2600 = fmul fast float %2599, %2592
  %2601 = fmul fast float %2599, %2581
  %2602 = fmul fast float %2599, %2591
  br label %2603

; <label>:2603                                    ; preds = %2589, %2573
  %2604 = phi float [ %2600, %2589 ], [ 0.000000e+00, %2573 ]
  %2605 = phi float [ %2601, %2589 ], [ 0.000000e+00, %2573 ]
  %2606 = phi float [ %2602, %2589 ], [ 0.000000e+00, %2573 ]
  %2607 = and i32 %2584, 2048
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2617, label %2609

; <label>:2609                                    ; preds = %2603
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = shl i32 %2611, 4
  %2613 = and i32 %2612, 32752
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = fmul fast float %2614, %2582
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2617

; <label>:2617                                    ; preds = %2609, %2603
  %2618 = phi float [ %2616, %2609 ], [ 0x3F70101020000000, %2603 ]
  %2619 = and i32 %2584, 16384
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %2630, label %2621

; <label>:2621                                    ; preds = %2617
  %2622 = add i32 %33, 128
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = lshr i32 %2624, 24
  %2626 = uitofp i32 %2625 to float
  %2627 = fmul fast float %2580, 0x3F70101020000000
  %2628 = select i1 %2586, float 0x3F70101020000000, float %2627
  %2629 = fmul fast float %2628, %2626
  br label %2630

; <label>:2630                                    ; preds = %2621, %2617, %2565
  %2631 = phi float [ %2604, %2621 ], [ %2604, %2617 ], [ 0.000000e+00, %2565 ]
  %2632 = phi float [ %2605, %2621 ], [ %2605, %2617 ], [ 0.000000e+00, %2565 ]
  %2633 = phi float [ %2606, %2621 ], [ %2606, %2617 ], [ 0.000000e+00, %2565 ]
  %2634 = phi float [ %2618, %2621 ], [ %2618, %2617 ], [ 0x3F70101020000000, %2565 ]
  %2635 = phi float [ %2629, %2621 ], [ 0.000000e+00, %2617 ], [ 0.000000e+00, %2565 ]
  %2636 = add i32 %33, 128
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = lshr i32 %2638, 8
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2439, float %2440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = fmul fast float %2643, %2644
  %2646 = fadd fast float %2645, %2640
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  br i1 %1922, label %2649, label %2657

; <label>:2649                                    ; preds = %2630
  %2650 = fsub fast float 1.000000e+00, %2218
  %2651 = fmul fast float %2650, %1909
  %2652 = fmul fast float %2650, %1910
  %2653 = fmul fast float %2650, %1911
  %2654 = fmul fast float %2650, %1906
  %2655 = fmul fast float %2650, %1907
  %2656 = fmul fast float %2650, %1908
  br label %2657

; <label>:2657                                    ; preds = %2649, %2630
  %2658 = phi float [ %2654, %2649 ], [ %1906, %2630 ]
  %2659 = phi float [ %2655, %2649 ], [ %1907, %2630 ]
  %2660 = phi float [ %2656, %2649 ], [ %1908, %2630 ]
  %2661 = phi float [ %2651, %2649 ], [ %1909, %2630 ]
  %2662 = phi float [ %2652, %2649 ], [ %1910, %2630 ]
  %2663 = phi float [ %2653, %2649 ], [ %1911, %2630 ]
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 3
  %2667 = icmp eq i32 %2666, 3
  br i1 %2667, label %2746, label %2668

; <label>:2668                                    ; preds = %2657
  %2669 = and i32 %2665, 16
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %2218, float 0.000000e+00
  %2672 = icmp eq i32 %2666, 0
  br i1 %2672, label %2673, label %2701

; <label>:2673                                    ; preds = %2668
  %2674 = and i32 %2665, 64
  %2675 = icmp ne i32 %2674, 0
  %2676 = select i1 %2675, float %2218, float 0.000000e+00
  %2677 = fsub fast float %2438, %2661
  %2678 = fsub fast float %2439, %2662
  %2679 = fsub fast float %2440, %2663
  %2680 = fmul fast float %2671, %2677
  %2681 = fmul fast float %2671, %2678
  %2682 = fmul fast float %2671, %2679
  %2683 = fadd fast float %2680, %2661
  %2684 = fadd fast float %2681, %2662
  %2685 = fadd fast float %2682, %2663
  %2686 = fsub fast float %2424, %1915
  %2687 = fmul fast float %2671, %2686
  %2688 = fadd fast float %2687, %1915
  %2689 = fsub fast float %2566, %2658
  %2690 = fsub fast float %2567, %2659
  %2691 = fsub fast float %2568, %2660
  %2692 = fmul fast float %2676, %2689
  %2693 = fmul fast float %2676, %2690
  %2694 = fmul fast float %2676, %2691
  %2695 = fadd fast float %2692, %2658
  %2696 = fadd fast float %2693, %2659
  %2697 = fadd fast float %2694, %2660
  %2698 = fsub fast float %2648, %1920
  %2699 = fmul fast float %2671, %2698
  %2700 = fadd fast float %2699, %1920
  br label %2746

; <label>:2701                                    ; preds = %2668
  %2702 = icmp eq i32 %2666, 1
  br i1 %2702, label %2703, label %2716

; <label>:2703                                    ; preds = %2701
  %2704 = fadd fast float %2438, -1.000000e+00
  %2705 = fadd fast float %2439, -1.000000e+00
  %2706 = fadd fast float %2440, -1.000000e+00
  %2707 = fmul fast float %2671, %2704
  %2708 = fmul fast float %2671, %2705
  %2709 = fmul fast float %2671, %2706
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fmul fast float %2710, %2661
  %2714 = fmul fast float %2711, %2662
  %2715 = fmul fast float %2712, %2663
  br label %2746

; <label>:2716                                    ; preds = %2701
  %2717 = icmp eq i32 %2666, 2
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2716
  %2719 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fmul fast float %2722, %2671
  %2726 = fmul fast float %2723, %2671
  %2727 = fmul fast float %2724, %2671
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fsub fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2732, %2661
  %2734 = fadd fast float %2733, %2731
  %2735 = fmul fast float %2734, %2661
  %2736 = fmul fast float %2729, 2.000000e+00
  %2737 = fsub fast float 1.000000e+00, %2736
  %2738 = fmul fast float %2737, %2662
  %2739 = fadd fast float %2738, %2736
  %2740 = fmul fast float %2739, %2662
  %2741 = fmul fast float %2730, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2663
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2663
  br label %2746

; <label>:2746                                    ; preds = %2718, %2716, %2703, %2673, %2657
  %2747 = phi float [ %2658, %2657 ], [ %2658, %2718 ], [ %2658, %2716 ], [ %2658, %2703 ], [ %2695, %2673 ]
  %2748 = phi float [ %2659, %2657 ], [ %2659, %2718 ], [ %2659, %2716 ], [ %2659, %2703 ], [ %2696, %2673 ]
  %2749 = phi float [ %2660, %2657 ], [ %2660, %2718 ], [ %2660, %2716 ], [ %2660, %2703 ], [ %2697, %2673 ]
  %2750 = phi float [ %2661, %2657 ], [ %2735, %2718 ], [ %2661, %2716 ], [ %2713, %2703 ], [ %2683, %2673 ]
  %2751 = phi float [ %2662, %2657 ], [ %2740, %2718 ], [ %2662, %2716 ], [ %2714, %2703 ], [ %2684, %2673 ]
  %2752 = phi float [ %2663, %2657 ], [ %2745, %2718 ], [ %2663, %2716 ], [ %2715, %2703 ], [ %2685, %2673 ]
  %2753 = phi float [ %1915, %2657 ], [ %1915, %2718 ], [ %1915, %2716 ], [ %1915, %2703 ], [ %2688, %2673 ]
  %2754 = phi float [ %1920, %2657 ], [ %1920, %2718 ], [ %1920, %2716 ], [ %1920, %2703 ], [ %2700, %2673 ]
  %2755 = and i32 %2665, 12
  %2756 = icmp eq i32 %2755, 12
  br i1 %2756, label %2873, label %2757

; <label>:2757                                    ; preds = %2746
  %2758 = and i32 %2665, 2097184
  %2759 = icmp eq i32 %2758, 2097184
  %2760 = select i1 %2759, float %2218, float 0.000000e+00
  %2761 = and i32 %2665, 4194336
  %2762 = icmp eq i32 %2761, 4194336
  %2763 = select i1 %2762, float %2218, float 0.000000e+00
  %2764 = and i32 %2665, 8388640
  %2765 = icmp eq i32 %2764, 8388640
  %2766 = select i1 %2765, float %2218, float 0.000000e+00
  %2767 = and i32 %2665, 2048
  %2768 = icmp ne i32 %2767, 0
  %2769 = select i1 %2768, float %2218, float 0.000000e+00
  %2770 = and i32 %2665, 8192
  %2771 = icmp ne i32 %2770, 0
  %2772 = select i1 %2771, float %2218, float 0.000000e+00
  %2773 = and i32 %2665, 16384
  %2774 = icmp ne i32 %2773, 0
  %2775 = select i1 %2774, float %2218, float 0.000000e+00
  %2776 = icmp eq i32 %2755, 0
  br i1 %2776, label %2777, label %2805

; <label>:2777                                    ; preds = %2757
  %2778 = fsub fast float %2519, %1904
  %2779 = fsub fast float %2520, %1905
  %2780 = fmul fast float %2760, %2778
  %2781 = fmul fast float %2760, %2779
  %2782 = fadd fast float %2780, %1904
  %2783 = fadd fast float %2781, %1905
  %2784 = fsub fast float %2521, %1917
  %2785 = fmul fast float %2763, %2784
  %2786 = fadd fast float %2785, %1917
  %2787 = fsub fast float %2518, %1916
  %2788 = fmul fast float %2766, %2787
  %2789 = fadd fast float %2788, %1916
  %2790 = fsub fast float %2634, %1918
  %2791 = fmul fast float %2769, %2790
  %2792 = fadd fast float %2791, %1918
  %2793 = fsub fast float %2631, %1912
  %2794 = fsub fast float %2632, %1913
  %2795 = fsub fast float %2633, %1914
  %2796 = fmul fast float %2772, %2793
  %2797 = fmul fast float %2772, %2794
  %2798 = fmul fast float %2772, %2795
  %2799 = fadd fast float %2796, %1912
  %2800 = fadd fast float %2797, %1913
  %2801 = fadd fast float %2798, %1914
  %2802 = fsub fast float %2635, %1919
  %2803 = fmul fast float %2775, %2802
  %2804 = fadd fast float %2803, %1919
  br label %2873

; <label>:2805                                    ; preds = %2757
  %2806 = icmp eq i32 %2755, 4
  br i1 %2806, label %2807, label %2849

; <label>:2807                                    ; preds = %2805
  %2808 = fmul fast float %2760, %2519
  %2809 = fmul fast float %2760, %2520
  %2810 = fadd fast float %2808, %1904
  %2811 = fadd fast float %2809, %1905
  %2812 = call float @dx.op.binary.f32(i32 36, float %1917, float %2521)  ; FMin(a,b)
  %2813 = fsub fast float %2812, %1917
  %2814 = fmul fast float %2813, %2763
  %2815 = fadd fast float %2814, %1917
  %2816 = fadd fast float %2518, %1916
  %2817 = fmul fast float %2816, 0x3FF337FAE0000000
  %2818 = fmul fast float %1916, %1916
  %2819 = fmul fast float %2518, %2518
  %2820 = fadd fast float %2819, %2818
  %2821 = fmul fast float %2820, 0x3FE5152B00000000
  %2822 = fmul fast float %1916, 0xBFCC1F85E0000000
  %2823 = fmul fast float %2822, %2518
  %2824 = fadd fast float %2823, 0xBFE1363700000000
  %2825 = fadd fast float %2824, %2817
  %2826 = fsub fast float %2825, %2821
  %2827 = fmul fast float %2816, 0x3FBA6F0D00000000
  %2828 = fmul fast float %2820, 0x3FD0432880000000
  %2829 = fmul fast float %1916, 0xBFEF110800000000
  %2830 = fmul fast float %2829, %2518
  %2831 = fadd fast float %2830, 1.000000e+00
  %2832 = fsub fast float %2831, %2827
  %2833 = fadd fast float %2832, %2828
  %2834 = fdiv fast float %2826, %2833
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = fsub fast float %2835, %1916
  %2837 = fmul fast float %2836, %2766
  %2838 = fadd fast float %2837, %1916
  %2839 = fmul fast float %2769, %2634
  %2840 = fadd fast float %2839, %1918
  %2841 = fmul fast float %2772, %2631
  %2842 = fmul fast float %2772, %2632
  %2843 = fmul fast float %2772, %2633
  %2844 = fadd fast float %2841, %1912
  %2845 = fadd fast float %2842, %1913
  %2846 = fadd fast float %2843, %1914
  %2847 = fmul fast float %2775, %2635
  %2848 = fadd fast float %2847, %1919
  br label %2873

; <label>:2849                                    ; preds = %2805
  %2850 = icmp eq i32 %2755, 8
  br i1 %2850, label %2851, label %2873

; <label>:2851                                    ; preds = %2849
  %2852 = fmul fast float %2760, %2519
  %2853 = fmul fast float %2760, %2520
  %2854 = fadd fast float %2852, %1904
  %2855 = fadd fast float %2853, %1905
  %2856 = call float @dx.op.binary.f32(i32 36, float %1917, float %2521)  ; FMin(a,b)
  %2857 = fsub fast float %2856, %1917
  %2858 = fmul fast float %2857, %2763
  %2859 = fadd fast float %2858, %1917
  %2860 = fsub fast float %2518, %1916
  %2861 = fmul fast float %2766, %2860
  %2862 = fadd fast float %2861, %1916
  %2863 = fmul fast float %2769, %2634
  %2864 = fadd fast float %2863, %1918
  %2865 = fmul fast float %2772, %2631
  %2866 = fmul fast float %2772, %2632
  %2867 = fmul fast float %2772, %2633
  %2868 = fadd fast float %2865, %1912
  %2869 = fadd fast float %2866, %1913
  %2870 = fadd fast float %2867, %1914
  %2871 = fmul fast float %2775, %2635
  %2872 = fadd fast float %2871, %1919
  br label %2873

; <label>:2873                                    ; preds = %2851, %2849, %2807, %2777, %2746, %2217, %1921, %1903
  %2874 = phi float [ %1904, %2746 ], [ %1904, %2217 ], [ %1904, %1903 ], [ %2854, %2851 ], [ %1904, %2849 ], [ %2810, %2807 ], [ %2782, %2777 ], [ %1904, %1921 ]
  %2875 = phi float [ %1905, %2746 ], [ %1905, %2217 ], [ %1905, %1903 ], [ %2855, %2851 ], [ %1905, %2849 ], [ %2811, %2807 ], [ %2783, %2777 ], [ %1905, %1921 ]
  %2876 = phi float [ %2747, %2746 ], [ %1906, %2217 ], [ %1906, %1903 ], [ %2747, %2851 ], [ %2747, %2849 ], [ %2747, %2807 ], [ %2747, %2777 ], [ %1906, %1921 ]
  %2877 = phi float [ %2748, %2746 ], [ %1907, %2217 ], [ %1907, %1903 ], [ %2748, %2851 ], [ %2748, %2849 ], [ %2748, %2807 ], [ %2748, %2777 ], [ %1907, %1921 ]
  %2878 = phi float [ %2749, %2746 ], [ %1908, %2217 ], [ %1908, %1903 ], [ %2749, %2851 ], [ %2749, %2849 ], [ %2749, %2807 ], [ %2749, %2777 ], [ %1908, %1921 ]
  %2879 = phi float [ %2750, %2746 ], [ %1909, %2217 ], [ %1909, %1903 ], [ %2750, %2851 ], [ %2750, %2849 ], [ %2750, %2807 ], [ %2750, %2777 ], [ %1909, %1921 ]
  %2880 = phi float [ %2751, %2746 ], [ %1910, %2217 ], [ %1910, %1903 ], [ %2751, %2851 ], [ %2751, %2849 ], [ %2751, %2807 ], [ %2751, %2777 ], [ %1910, %1921 ]
  %2881 = phi float [ %2752, %2746 ], [ %1911, %2217 ], [ %1911, %1903 ], [ %2752, %2851 ], [ %2752, %2849 ], [ %2752, %2807 ], [ %2752, %2777 ], [ %1911, %1921 ]
  %2882 = phi float [ %1912, %2746 ], [ %1912, %2217 ], [ %1912, %1903 ], [ %2868, %2851 ], [ %1912, %2849 ], [ %2844, %2807 ], [ %2799, %2777 ], [ %1912, %1921 ]
  %2883 = phi float [ %1913, %2746 ], [ %1913, %2217 ], [ %1913, %1903 ], [ %2869, %2851 ], [ %1913, %2849 ], [ %2845, %2807 ], [ %2800, %2777 ], [ %1913, %1921 ]
  %2884 = phi float [ %1914, %2746 ], [ %1914, %2217 ], [ %1914, %1903 ], [ %2870, %2851 ], [ %1914, %2849 ], [ %2846, %2807 ], [ %2801, %2777 ], [ %1914, %1921 ]
  %2885 = phi float [ %2753, %2746 ], [ %1915, %2217 ], [ %1915, %1903 ], [ %2753, %2851 ], [ %2753, %2849 ], [ %2753, %2807 ], [ %2753, %2777 ], [ %1915, %1921 ]
  %2886 = phi float [ %1916, %2746 ], [ %1916, %2217 ], [ %1916, %1903 ], [ %2862, %2851 ], [ %1916, %2849 ], [ %2838, %2807 ], [ %2789, %2777 ], [ %1916, %1921 ]
  %2887 = phi float [ %1917, %2746 ], [ %1917, %2217 ], [ %1917, %1903 ], [ %2859, %2851 ], [ %1917, %2849 ], [ %2815, %2807 ], [ %2786, %2777 ], [ %1917, %1921 ]
  %2888 = phi float [ %1918, %2746 ], [ %1918, %2217 ], [ %1918, %1903 ], [ %2864, %2851 ], [ %1918, %2849 ], [ %2840, %2807 ], [ %2792, %2777 ], [ %1918, %1921 ]
  %2889 = phi float [ %1919, %2746 ], [ %1919, %2217 ], [ %1919, %1903 ], [ %2872, %2851 ], [ %1919, %2849 ], [ %2848, %2807 ], [ %2804, %2777 ], [ %1919, %1921 ]
  %2890 = phi float [ %2754, %2746 ], [ %1920, %2217 ], [ %1920, %1903 ], [ %2754, %2851 ], [ %2754, %2849 ], [ %2754, %2807 ], [ %2754, %2777 ], [ %1920, %1921 ]
  br i1 %347, label %3843, label %2891

; <label>:2891                                    ; preds = %2873
  %2892 = icmp ult i32 %398, 4
  %2893 = add i32 %33, 72
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %33, 76
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = or i32 %2898, %2895
  %2900 = icmp eq i32 %2899, 0
  br i1 %2900, label %3843, label %2901

; <label>:2901                                    ; preds = %2891
  %2902 = and i32 %2895, 262144
  %2903 = icmp ne i32 %2902, 0
  %2904 = select i1 %2903, float %36, float 1.000000e+00
  %2905 = select i1 %2903, float %37, float 0.000000e+00
  %2906 = select i1 %2903, float %38, float 0.000000e+00
  %2907 = select i1 %2903, float %39, float 1.000000e+00
  %2908 = select i1 %2903, float %40, float %61
  %2909 = select i1 %2903, float %41, float %62
  %2910 = add i32 %33, 332
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = lshr i32 %2912, 16
  %2914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2913)  ; LegacyF16ToF32(value)
  %2915 = fmul fast float %2914, 0x3F50624DE0000000
  %2916 = add i32 %33, 136
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 16
  %2920 = and i32 %2919, 255
  %2921 = lshr i32 %2918, 24
  %2922 = add i32 %33, 340
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 65535
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = lshr i32 %2924, 16
  %2928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2927)  ; LegacyF16ToF32(value)
  %2929 = add i32 %33, 80
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = lshr i32 %2931, 22
  %2933 = shl nuw nsw i32 %2932, 5
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = shl i32 %2931, 4
  %2936 = and i32 %2935, 32752
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = lshr i32 %2931, 7
  %2939 = and i32 %2938, 32752
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 3
  %2943 = fmul fast float %2942, 1.000000e+03
  %2944 = fmul fast float %337, %2943
  %2945 = call float @dx.op.unary.f32(i32 22, float %2944)  ; Frc(value)
  %2946 = fadd fast float %2945, %327
  %2947 = fmul fast float %338, %2943
  %2948 = call float @dx.op.unary.f32(i32 22, float %2947)  ; Frc(value)
  %2949 = fadd fast float %2948, %329
  %2950 = fmul fast float %2915, %2943
  %2951 = call float @dx.op.unary.f32(i32 22, float %2950)  ; Frc(value)
  %2952 = fmul fast float %2951, 0x401921FB60000000
  %2953 = fadd fast float %2952, %2934
  %2954 = call float @dx.op.unary.f32(i32 13, float %2953)  ; Sin(value)
  %2955 = call float @dx.op.unary.f32(i32 12, float %2953)  ; Cos(value)
  %2956 = fsub fast float -0.000000e+00, %2954
  %2957 = fadd fast float %2908, -5.000000e-01
  %2958 = fadd fast float %2909, -5.000000e-01
  %2959 = fmul fast float %2926, %2957
  %2960 = fmul fast float %2928, %2958
  %2961 = fadd fast float %2959, 5.000000e-01
  %2962 = fadd fast float %2960, 5.000000e-01
  %2963 = fmul fast float %2937, %2961
  %2964 = fmul fast float %2940, %2962
  %2965 = fmul fast float %2955, %2963
  %2966 = call float @dx.op.tertiary.f32(i32 46, float %2956, float %2964, float %2965)  ; FMad(a,b,c)
  %2967 = fmul fast float %2954, %2963
  %2968 = call float @dx.op.tertiary.f32(i32 46, float %2955, float %2964, float %2967)  ; FMad(a,b,c)
  %2969 = fadd fast float %2946, %2966
  %2970 = fadd fast float %2949, %2968
  %2971 = icmp ugt i32 %2920, 1
  %2972 = icmp ugt i32 %2918, 33554431
  %2973 = or i1 %2972, %2971
  br i1 %2973, label %2974, label %2999

; <label>:2974                                    ; preds = %2901
  %2975 = add i32 %33, 276
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = lshr i32 %2977, 16
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = fmul fast float %2942, %2979
  %2981 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2982 = mul nuw nsw i32 %2920, %2921
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2981, %2983
  %2985 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2986 = fptoui float %2985 to i32
  %2987 = urem i32 %2986, %2920
  %2988 = udiv i32 %2986, %2921
  %2989 = call float @dx.op.unary.f32(i32 22, float %2969)  ; Frc(value)
  %2990 = call float @dx.op.unary.f32(i32 22, float %2970)  ; Frc(value)
  %2991 = uitofp i32 %2987 to float
  %2992 = uitofp i32 %2988 to float
  %2993 = fadd fast float %2989, %2991
  %2994 = fadd fast float %2990, %2992
  %2995 = uitofp i32 %2920 to float
  %2996 = uitofp i32 %2921 to float
  %2997 = fdiv fast float %2993, %2995
  %2998 = fdiv fast float %2994, %2996
  br label %2999

; <label>:2999                                    ; preds = %2974, %2901
  %3000 = phi float [ %2997, %2974 ], [ %2969, %2901 ]
  %3001 = phi float [ %2998, %2974 ], [ %2970, %2901 ]
  %3002 = and i32 %2895, 16777216
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3113, label %3004

; <label>:3004                                    ; preds = %2999
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.CBufRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.CBufRet.f32 %3005, 2
  %3009 = fadd fast float %3006, %128
  %3010 = fadd fast float %3007, %129
  %3011 = fadd fast float %3008, %130
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = icmp eq i32 %34, 65535
  br i1 %3015, label %3110, label %3016

; <label>:3016                                    ; preds = %3004
  %3017 = lshr i32 %34, 1
  %3018 = shl i32 %3017, 2
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = and i32 %34, 1
  %3022 = icmp ne i32 %3021, 0
  %3023 = lshr i32 %3020, 16
  %3024 = and i32 %3020, 65535
  %3025 = select i1 %3022, i32 %3023, i32 %3024
  %3026 = icmp eq i32 %3025, 65535
  br i1 %3026, label %3106, label %3027

; <label>:3027                                    ; preds = %3016
  %3028 = mul nuw nsw i32 %3025, 40
  %3029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = add nuw nsw i32 %3028, 12
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = extractvalue %dx.types.ResRet.f32 %3034, 2
  %3038 = add nuw nsw i32 %3028, 24
  %3039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.ResRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.ResRet.f32 %3039, 2
  %3043 = add nuw nsw i32 %3028, 36
  %3044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = fsub fast float %3009, %3030
  %3047 = fsub fast float %3010, %3031
  %3048 = fsub fast float %3011, %3032
  %3049 = fmul fast float %3045, %3046
  %3050 = fmul fast float %3045, %3047
  %3051 = fmul fast float %3045, %3048
  %3052 = call float @dx.op.unary.f32(i32 27, float %3049)  ; Round_ni(value)
  %3053 = call float @dx.op.unary.f32(i32 27, float %3050)  ; Round_ni(value)
  %3054 = call float @dx.op.unary.f32(i32 27, float %3051)  ; Round_ni(value)
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = fadd fast float %3054, 5.000000e-01
  %3058 = fmul fast float %3055, %3035
  %3059 = fmul fast float %3056, %3036
  %3060 = fmul fast float %3057, %3037
  %3061 = shl i32 %34, 2
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %3063, 0
  %3065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3066 = call float @dx.op.unary.f32(i32 22, float %3058)  ; Frc(value)
  %3067 = call float @dx.op.unary.f32(i32 22, float %3059)  ; Frc(value)
  %3068 = call float @dx.op.unary.f32(i32 22, float %3060)  ; Frc(value)
  %3069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3065, %dx.types.Handle %30, float %3066, float %3067, float %3068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.ResRet.f32 %3069, 2
  %3073 = fmul fast float %3070, 1.023000e+03
  %3074 = fmul fast float %3071, 1.023000e+03
  %3075 = fmul fast float %3072, 1.023000e+03
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = call float @dx.op.unary.f32(i32 27, float %3076)  ; Round_ni(value)
  %3080 = call float @dx.op.unary.f32(i32 27, float %3077)  ; Round_ni(value)
  %3081 = call float @dx.op.unary.f32(i32 27, float %3078)  ; Round_ni(value)
  %3082 = fsub fast float %3049, %3052
  %3083 = fsub fast float %3050, %3053
  %3084 = fsub fast float %3051, %3054
  %3085 = fmul fast float %3082, 7.500000e-01
  %3086 = fmul fast float %3083, 7.500000e-01
  %3087 = fmul fast float %3084, 7.500000e-01
  %3088 = fadd fast float %3052, 1.250000e-01
  %3089 = fadd fast float %3088, %3085
  %3090 = fadd fast float %3089, %3079
  %3091 = fadd fast float %3053, 1.250000e-01
  %3092 = fadd fast float %3091, %3086
  %3093 = fadd fast float %3092, %3080
  %3094 = fadd fast float %3054, 1.250000e-01
  %3095 = fadd fast float %3094, %3087
  %3096 = fadd fast float %3095, %3081
  %3097 = fmul fast float %3090, %3040
  %3098 = fmul fast float %3093, %3041
  %3099 = fmul fast float %3096, %3042
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = add i32 %3101, 0
  %3103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3103, %dx.types.Handle %28, float %3097, float %3098, float %3099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  br label %3106

; <label>:3106                                    ; preds = %3027, %3016
  %3107 = phi float [ %3105, %3027 ], [ -1.000000e+00, %3016 ]
  %3108 = fadd fast float %3107, %3014
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  br label %3110

; <label>:3110                                    ; preds = %3106, %3004
  %3111 = phi float [ %3109, %3106 ], [ %3014, %3004 ]
  %3112 = fmul fast float %3111, %393
  br label %3113

; <label>:3113                                    ; preds = %3110, %2999
  %3114 = phi float [ %3112, %3110 ], [ %393, %2999 ]
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 256
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3165, label %3119

; <label>:3119                                    ; preds = %3113
  %3120 = add i32 %33, 436
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %70, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = add i32 %33, 148
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = shl i32 %3129, 4
  %3131 = and i32 %3130, 32752
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = lshr i32 %3129, 7
  %3134 = and i32 %3133, 32752
  %3135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3134)  ; LegacyF16ToF32(value)
  %3136 = fsub fast float 1.000000e+00, %3114
  %3137 = call float @dx.op.binary.f32(i32 35, float %3136, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3138 = bitcast float %3114 to i32
  %3139 = sitofp i32 %3138 to float
  %3140 = fadd fast float %3139, 0xC1CFBF8940000000
  %3141 = fmul fast float %3135, %3140
  %3142 = fadd fast float %3141, 0x41CFBF8940000000
  %3143 = fptosi float %3142 to i32
  %3144 = bitcast i32 %3143 to float
  %3145 = bitcast float %3137 to i32
  %3146 = sitofp i32 %3145 to float
  %3147 = fadd fast float %3146, 0xC1CFBF8940000000
  %3148 = fmul fast float %3147, %3135
  %3149 = fadd fast float %3148, 0x41CFBF8940000000
  %3150 = fptosi float %3149 to i32
  %3151 = bitcast i32 %3150 to float
  %3152 = fmul fast float %3144, %3132
  %3153 = fmul fast float %3151, %3132
  %3154 = fsub fast float %3137, %3152
  %3155 = fadd fast float %3153, %3137
  %3156 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3157 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  %3158 = fsub fast float %3126, %3156
  %3159 = fsub fast float %3157, %3156
  %3160 = bitcast float %3159 to i32
  %3161 = sub nsw i32 2129859010, %3160
  %3162 = bitcast i32 %3161 to float
  %3163 = fmul fast float %3162, %3158
  %3164 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  br label %3165

; <label>:3165                                    ; preds = %3119, %3113
  %3166 = phi float [ %3164, %3119 ], [ %3114, %3113 ]
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 128
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3187, label %3171

; <label>:3171                                    ; preds = %3165
  %3172 = add i32 %33, 420
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %3174, 0
  %3176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3176, %dx.types.Handle %70, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = and i32 %3180, 524288
  %3182 = icmp ne i32 %3181, 0
  %3183 = fcmp fast ogt float %3178, 0x3FE0101020000000
  %3184 = select i1 %3183, float 1.000000e+00, float 0.000000e+00
  %3185 = select i1 %3182, float %3184, float %3178
  %3186 = fmul fast float %3185, %3166
  br label %3187

; <label>:3187                                    ; preds = %3171, %3165
  %3188 = phi float [ %3186, %3171 ], [ %3166, %3165 ]
  %3189 = fcmp fast ult float %3188, 0x3F70101020000000
  br i1 %3189, label %3843, label %3190

; <label>:3190                                    ; preds = %3187
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 16
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3393, label %3195

; <label>:3195                                    ; preds = %3190
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = add i32 %33, 372
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = add i32 %3200, 0
  %3202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3202, %dx.types.Handle %69, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3207 = extractvalue %dx.types.ResRet.f32 %3203, 3
  %3208 = and i32 %3197, 255
  %3209 = uitofp i32 %3208 to float
  %3210 = lshr i32 %3197, 8
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3207, %3209
  %3214 = fadd fast float %3213, %3212
  %3215 = fmul fast float %3214, 0x3F70101000000000
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = and i32 %3217, 512
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3228, label %3220

; <label>:3220                                    ; preds = %3195
  %3221 = add i32 %33, 452
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = add i32 %3223, 0
  %3225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3225, %dx.types.Handle %70, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  br label %3228

; <label>:3228                                    ; preds = %3220, %3195
  %3229 = phi float [ %3227, %3220 ], [ 1.000000e+00, %3195 ]
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 33554432
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3340, label %3234

; <label>:3234                                    ; preds = %3228
  %3235 = add i32 %33, 272
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 65535
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = lshr i32 %3237, 16
  %3241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3240)  ; LegacyF16ToF32(value)
  %3242 = add i32 %33, 276
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 65535
  %3246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3245)  ; LegacyF16ToF32(value)
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = lshr i32 %3248, 24
  %3250 = uitofp i32 %3249 to float
  %3251 = fmul fast float %3250, 0x3F70101020000000
  %3252 = and i32 %3248, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = lshr i32 %3248, 8
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = lshr i32 %3248, 16
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = fmul fast float %3261, 0x3F70101020000000
  %3263 = add i32 %33, 268
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = lshr i32 %3265, 24
  %3267 = uitofp i32 %3266 to float
  %3268 = fmul fast float %3267, 0x3F70101020000000
  %3269 = and i32 %3265, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = lshr i32 %3265, 8
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3274, 0x3F70101020000000
  %3276 = lshr i32 %3265, 16
  %3277 = and i32 %3276, 255
  %3278 = uitofp i32 %3277 to float
  %3279 = fmul fast float %3278, 0x3F70101020000000
  %3280 = bitcast float %3204 to i32
  %3281 = ashr i32 %3280, 1
  %3282 = sub nsw i32 1597463174, %3281
  %3283 = bitcast i32 %3282 to float
  %3284 = fmul fast float %3204, 5.000000e-01
  %3285 = fmul fast float %3283, %3283
  %3286 = fmul fast float %3285, %3284
  %3287 = fsub fast float 1.500000e+00, %3286
  %3288 = fmul fast float %3283, %3204
  %3289 = fmul fast float %3288, %3287
  %3290 = bitcast float %3205 to i32
  %3291 = ashr i32 %3290, 1
  %3292 = sub nsw i32 1597463174, %3291
  %3293 = bitcast i32 %3292 to float
  %3294 = fmul fast float %3205, 5.000000e-01
  %3295 = fmul fast float %3293, %3293
  %3296 = fmul fast float %3295, %3294
  %3297 = fsub fast float 1.500000e+00, %3296
  %3298 = fmul fast float %3293, %3205
  %3299 = fmul fast float %3298, %3297
  %3300 = bitcast float %3206 to i32
  %3301 = ashr i32 %3300, 1
  %3302 = sub nsw i32 1597463174, %3301
  %3303 = bitcast i32 %3302 to float
  %3304 = fmul fast float %3206, 5.000000e-01
  %3305 = fmul fast float %3303, %3303
  %3306 = fmul fast float %3305, %3304
  %3307 = fsub fast float 1.500000e+00, %3306
  %3308 = fmul fast float %3303, %3206
  %3309 = fmul fast float %3308, %3307
  %3310 = fsub fast float %3289, %3271
  %3311 = fsub fast float %3299, %3275
  %3312 = fsub fast float %3309, %3279
  %3313 = fmul fast float %3310, %3239
  %3314 = fmul fast float %3311, %3241
  %3315 = fmul fast float %3312, %3246
  %3316 = fadd fast float %3313, %3254
  %3317 = fadd fast float %3314, %3258
  %3318 = fadd fast float %3315, %3262
  %3319 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  %3320 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  %3321 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3322 = fmul fast float %3319, %3319
  %3323 = fmul fast float %3320, %3320
  %3324 = fmul fast float %3321, %3321
  %3325 = fsub fast float %3322, %3204
  %3326 = fsub fast float %3323, %3205
  %3327 = fsub fast float %3324, %3206
  %3328 = fmul fast float %3325, %3229
  %3329 = fmul fast float %3326, %3229
  %3330 = fmul fast float %3327, %3229
  %3331 = fadd fast float %3328, %3204
  %3332 = fadd fast float %3329, %3205
  %3333 = fadd fast float %3330, %3206
  %3334 = fadd fast float %3251, %3215
  %3335 = fsub fast float %3334, %3268
  %3336 = call float @dx.op.unary.f32(i32 7, float %3335)  ; Saturate(value)
  %3337 = fsub fast float %3336, %3215
  %3338 = fmul fast float %3337, %3229
  %3339 = fadd fast float %3338, %3215
  br label %3393

; <label>:3340                                    ; preds = %3228
  %3341 = and i32 %3231, 134217728
  %3342 = icmp eq i32 %3341, 0
  br i1 %3342, label %3377, label %3343

; <label>:3343                                    ; preds = %3340
  %3344 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3345 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3346 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fmul fast float %3347, %3229
  %3351 = fmul fast float %3348, %3229
  %3352 = fmul fast float %3349, %3229
  %3353 = fadd fast float %3350, 5.000000e-01
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fadd fast float %3352, 5.000000e-01
  %3356 = call float @dx.op.unary.f32(i32 24, float %3204)  ; Sqrt(value)
  %3357 = call float @dx.op.unary.f32(i32 24, float %3205)  ; Sqrt(value)
  %3358 = call float @dx.op.unary.f32(i32 24, float %3206)  ; Sqrt(value)
  %3359 = fmul fast float %3353, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3356
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3356
  %3364 = fmul fast float %3354, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3357
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3357
  %3369 = fmul fast float %3355, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3358
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3358
  %3374 = fmul fast float %3363, %3363
  %3375 = fmul fast float %3368, %3368
  %3376 = fmul fast float %3373, %3373
  br label %3393

; <label>:3377                                    ; preds = %3340
  %3378 = fmul fast float %314, %314
  %3379 = fmul fast float %318, %318
  %3380 = fmul fast float %322, %322
  %3381 = fadd fast float %3378, -1.000000e+00
  %3382 = fadd fast float %3379, -1.000000e+00
  %3383 = fadd fast float %3380, -1.000000e+00
  %3384 = fmul fast float %3229, %3381
  %3385 = fmul fast float %3229, %3382
  %3386 = fmul fast float %3229, %3383
  %3387 = fadd fast float %3384, 1.000000e+00
  %3388 = fadd fast float %3385, 1.000000e+00
  %3389 = fadd fast float %3386, 1.000000e+00
  %3390 = fmul fast float %3387, %3204
  %3391 = fmul fast float %3388, %3205
  %3392 = fmul fast float %3389, %3206
  br label %3393

; <label>:3393                                    ; preds = %3377, %3343, %3234, %3190
  %3394 = phi float [ %3339, %3234 ], [ %3215, %3343 ], [ %3215, %3377 ], [ 0x3FA23C0BE0000000, %3190 ]
  %3395 = phi float [ %3331, %3234 ], [ %3374, %3343 ], [ %3390, %3377 ], [ 1.000000e+00, %3190 ]
  %3396 = phi float [ %3332, %3234 ], [ %3375, %3343 ], [ %3391, %3377 ], [ 1.000000e+00, %3190 ]
  %3397 = phi float [ %3333, %3234 ], [ %3376, %3343 ], [ %3392, %3377 ], [ 1.000000e+00, %3190 ]
  %3398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3399 = extractvalue %dx.types.CBufRet.i32 %3398, 1
  %3400 = and i32 %3399, 1
  %3401 = icmp ne i32 %3400, 0
  %3402 = add i32 %33, 356
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 32
  %3406 = icmp ne i32 %3405, 0
  %3407 = and i1 %3401, %3406
  %3408 = select i1 %3407, float 1.000000e+00, float %3395
  %3409 = select i1 %3407, float 0x3FD3333340000000, float %3396
  %3410 = select i1 %3407, float 0x3FD3333340000000, float %3397
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = and i32 %3412, 32
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %3487, label %3415

; <label>:3415                                    ; preds = %3393
  %3416 = add i32 %33, 140
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = add i32 %33, 388
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = add i32 %3421, 0
  %3423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3423, %dx.types.Handle %69, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3428 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3429 = and i32 %3418, 255
  %3430 = uitofp i32 %3429 to float
  %3431 = lshr i32 %3418, 8
  %3432 = and i32 %3431, 255
  %3433 = uitofp i32 %3432 to float
  %3434 = lshr i32 %3418, 16
  %3435 = and i32 %3434, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = fmul fast float %3436, 0x3F70101000000000
  %3438 = fmul fast float %3425, %3430
  %3439 = fadd fast float %3438, %3433
  %3440 = fmul fast float %3439, 0x3F70101000000000
  %3441 = fadd fast float %3426, -5.000000e-01
  %3442 = fadd fast float %3428, -5.000000e-01
  %3443 = fmul fast float %3441, %3437
  %3444 = fmul fast float %3442, %3437
  %3445 = fadd fast float %3443, 5.000000e-01
  %3446 = fadd fast float %3444, 5.000000e-01
  %3447 = fmul fast float %3445, 2.000000e+00
  %3448 = fadd fast float %3447, -1.000000e+00
  %3449 = fmul fast float %3446, 2.000000e+00
  %3450 = fadd fast float %3449, -1.000000e+00
  %3451 = fadd fast float %3448, %3450
  %3452 = fmul fast float %3451, 5.000000e-01
  %3453 = fsub fast float %3448, %3450
  %3454 = fmul fast float %3453, 5.000000e-01
  %3455 = call float @dx.op.unary.f32(i32 6, float %3452)  ; FAbs(value)
  %3456 = fsub fast float 1.000000e+00, %3455
  %3457 = call float @dx.op.unary.f32(i32 6, float %3454)  ; FAbs(value)
  %3458 = fsub fast float %3456, %3457
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3454, float %3458, float %3452, float %3454, float %3458)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = call float @dx.op.unary.f32(i32 25, float %3459)  ; Rsqrt(value)
  %3461 = fmul fast float %3452, %3460
  %3462 = fmul fast float %3454, %3460
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 67108864
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3483, label %3467

; <label>:3467                                    ; preds = %3415
  %3468 = add i32 %33, 328
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 65535
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 65535
  %3476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3475)  ; LegacyF16ToF32(value)
  %3477 = lshr i32 %3470, 16
  %3478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3477)  ; LegacyF16ToF32(value)
  %3479 = fsub fast float %3440, %3478
  %3480 = fmul fast float %3479, %3472
  %3481 = fadd fast float %3480, %3476
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  br label %3483

; <label>:3483                                    ; preds = %3467, %3415
  %3484 = phi float [ %3482, %3467 ], [ %3440, %3415 ]
  %3485 = call float @dx.op.dot2.f32(i32 54, float %3461, float %3462, float %2904, float %2905)  ; Dot2(ax,ay,bx,by)
  %3486 = call float @dx.op.dot2.f32(i32 54, float %3461, float %3462, float %2906, float %2907)  ; Dot2(ax,ay,bx,by)
  br label %3487

; <label>:3487                                    ; preds = %3483, %3393
  %3488 = phi float [ %3484, %3483 ], [ 0x3FD6666660000000, %3393 ]
  %3489 = phi float [ %3485, %3483 ], [ 0.000000e+00, %3393 ]
  %3490 = phi float [ %3486, %3483 ], [ 0.000000e+00, %3393 ]
  %3491 = phi float [ %3427, %3483 ], [ 1.000000e+00, %3393 ]
  %3492 = add i32 %33, 208
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = lshr i32 %3494, 22
  %3496 = shl nuw nsw i32 %3495, 5
  %3497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3496)  ; LegacyF16ToF32(value)
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 64
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3535, label %3502

; <label>:3502                                    ; preds = %3487
  %3503 = add i32 %33, 404
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = add i32 %3505, 0
  %3507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 131072
  %3511 = icmp eq i32 %3510, 0
  %3512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3507, %dx.types.Handle %69, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = fmul fast float %3513, %302
  %3517 = fmul fast float %3514, %305
  %3518 = fmul fast float %3515, %308
  br i1 %3511, label %3525, label %3519

; <label>:3519                                    ; preds = %3502
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 0
  %3522 = fmul fast float %3521, %3516
  %3523 = fmul fast float %3521, %3517
  %3524 = fmul fast float %3521, %3518
  br label %3525

; <label>:3525                                    ; preds = %3519, %3502
  %3526 = phi float [ %3522, %3519 ], [ %3516, %3502 ]
  %3527 = phi float [ %3523, %3519 ], [ %3517, %3502 ]
  %3528 = phi float [ %3524, %3519 ], [ %3518, %3502 ]
  %3529 = fmul fast float %3526, %3497
  %3530 = select i1 %170, float %3529, float %3526
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3530, float %3527, float %3528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = select i1 %170, float 0.000000e+00, float %3526
  %3533 = select i1 %170, float %3531, float %3527
  %3534 = select i1 %170, float 0.000000e+00, float %3528
  br label %3535

; <label>:3535                                    ; preds = %3525, %3487
  %3536 = phi float [ %3532, %3525 ], [ 0.000000e+00, %3487 ]
  %3537 = phi float [ %3533, %3525 ], [ 0.000000e+00, %3487 ]
  %3538 = phi float [ %3534, %3525 ], [ 0.000000e+00, %3487 ]
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = and i32 %3540, 26624
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3600, label %3543

; <label>:3543                                    ; preds = %3535
  %3544 = add i32 %33, 468
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = add i32 %3546, 0
  %3548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3548, %dx.types.Handle %70, float %3000, float %3001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.ResRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3549, 3
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 1048576
  %3556 = icmp ne i32 %3555, 0
  %3557 = and i32 %3554, 8192
  %3558 = icmp eq i32 %3557, 0
  br i1 %3558, label %3573, label %3559

; <label>:3559                                    ; preds = %3543
  %3560 = extractvalue %dx.types.ResRet.f32 %3549, 2
  %3561 = select i1 %3556, float %3560, float %3551
  %3562 = select i1 %3556, float %3550, float %3551
  %3563 = add i32 %33, 144
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = lshr i32 %3565, 16
  %3567 = and i32 %3566, 255
  %3568 = uitofp i32 %3567 to float
  %3569 = fmul fast float %3568, 0x3F80101020000000
  %3570 = fmul fast float %3569, %3562
  %3571 = fmul fast float %3569, %3551
  %3572 = fmul fast float %3569, %3561
  br label %3573

; <label>:3573                                    ; preds = %3559, %3543
  %3574 = phi float [ %3570, %3559 ], [ 0.000000e+00, %3543 ]
  %3575 = phi float [ %3571, %3559 ], [ 0.000000e+00, %3543 ]
  %3576 = phi float [ %3572, %3559 ], [ 0.000000e+00, %3543 ]
  %3577 = and i32 %3554, 2048
  %3578 = icmp eq i32 %3577, 0
  br i1 %3578, label %3587, label %3579

; <label>:3579                                    ; preds = %3573
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = shl i32 %3581, 4
  %3583 = and i32 %3582, 32752
  %3584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3583)  ; LegacyF16ToF32(value)
  %3585 = fmul fast float %3584, %3552
  %3586 = call float @dx.op.binary.f32(i32 35, float %3585, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3587

; <label>:3587                                    ; preds = %3579, %3573
  %3588 = phi float [ %3586, %3579 ], [ 0x3F70101020000000, %3573 ]
  %3589 = and i32 %3554, 16384
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3600, label %3591

; <label>:3591                                    ; preds = %3587
  %3592 = add i32 %33, 144
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = lshr i32 %3594, 24
  %3596 = uitofp i32 %3595 to float
  %3597 = fmul fast float %3550, 0x3F70101020000000
  %3598 = select i1 %3556, float 0x3F70101020000000, float %3597
  %3599 = fmul fast float %3598, %3596
  br label %3600

; <label>:3600                                    ; preds = %3591, %3587, %3535
  %3601 = phi float [ %3574, %3591 ], [ %3574, %3587 ], [ 0.000000e+00, %3535 ]
  %3602 = phi float [ %3575, %3591 ], [ %3575, %3587 ], [ 0.000000e+00, %3535 ]
  %3603 = phi float [ %3576, %3591 ], [ %3576, %3587 ], [ 0.000000e+00, %3535 ]
  %3604 = phi float [ %3588, %3591 ], [ %3588, %3587 ], [ 0x3F70101020000000, %3535 ]
  %3605 = phi float [ %3599, %3591 ], [ 0.000000e+00, %3587 ], [ 0.000000e+00, %3535 ]
  %3606 = add i32 %33, 144
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = lshr i32 %3608, 8
  %3612 = and i32 %3611, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3409, float %3410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = fmul fast float %3613, %3614
  %3616 = fadd fast float %3615, %3610
  %3617 = fmul fast float %3616, 0x3F70101020000000
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  br i1 %2892, label %3619, label %3627

; <label>:3619                                    ; preds = %3600
  %3620 = fsub fast float 1.000000e+00, %3188
  %3621 = fmul fast float %3620, %2879
  %3622 = fmul fast float %3620, %2880
  %3623 = fmul fast float %3620, %2881
  %3624 = fmul fast float %3620, %2876
  %3625 = fmul fast float %3620, %2877
  %3626 = fmul fast float %3620, %2878
  br label %3627

; <label>:3627                                    ; preds = %3619, %3600
  %3628 = phi float [ %3624, %3619 ], [ %2876, %3600 ]
  %3629 = phi float [ %3625, %3619 ], [ %2877, %3600 ]
  %3630 = phi float [ %3626, %3619 ], [ %2878, %3600 ]
  %3631 = phi float [ %3621, %3619 ], [ %2879, %3600 ]
  %3632 = phi float [ %3622, %3619 ], [ %2880, %3600 ]
  %3633 = phi float [ %3623, %3619 ], [ %2881, %3600 ]
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = and i32 %3635, 3
  %3637 = icmp eq i32 %3636, 3
  br i1 %3637, label %3716, label %3638

; <label>:3638                                    ; preds = %3627
  %3639 = and i32 %3635, 16
  %3640 = icmp ne i32 %3639, 0
  %3641 = select i1 %3640, float %3188, float 0.000000e+00
  %3642 = icmp eq i32 %3636, 0
  br i1 %3642, label %3643, label %3671

; <label>:3643                                    ; preds = %3638
  %3644 = and i32 %3635, 64
  %3645 = icmp ne i32 %3644, 0
  %3646 = select i1 %3645, float %3188, float 0.000000e+00
  %3647 = fsub fast float %3408, %3631
  %3648 = fsub fast float %3409, %3632
  %3649 = fsub fast float %3410, %3633
  %3650 = fmul fast float %3641, %3647
  %3651 = fmul fast float %3641, %3648
  %3652 = fmul fast float %3641, %3649
  %3653 = fadd fast float %3650, %3631
  %3654 = fadd fast float %3651, %3632
  %3655 = fadd fast float %3652, %3633
  %3656 = fsub fast float %3394, %2885
  %3657 = fmul fast float %3641, %3656
  %3658 = fadd fast float %3657, %2885
  %3659 = fsub fast float %3536, %3628
  %3660 = fsub fast float %3537, %3629
  %3661 = fsub fast float %3538, %3630
  %3662 = fmul fast float %3646, %3659
  %3663 = fmul fast float %3646, %3660
  %3664 = fmul fast float %3646, %3661
  %3665 = fadd fast float %3662, %3628
  %3666 = fadd fast float %3663, %3629
  %3667 = fadd fast float %3664, %3630
  %3668 = fsub fast float %3618, %2890
  %3669 = fmul fast float %3641, %3668
  %3670 = fadd fast float %3669, %2890
  br label %3716

; <label>:3671                                    ; preds = %3638
  %3672 = icmp eq i32 %3636, 1
  br i1 %3672, label %3673, label %3686

; <label>:3673                                    ; preds = %3671
  %3674 = fadd fast float %3408, -1.000000e+00
  %3675 = fadd fast float %3409, -1.000000e+00
  %3676 = fadd fast float %3410, -1.000000e+00
  %3677 = fmul fast float %3641, %3674
  %3678 = fmul fast float %3641, %3675
  %3679 = fmul fast float %3641, %3676
  %3680 = fadd fast float %3677, 1.000000e+00
  %3681 = fadd fast float %3678, 1.000000e+00
  %3682 = fadd fast float %3679, 1.000000e+00
  %3683 = fmul fast float %3680, %3631
  %3684 = fmul fast float %3681, %3632
  %3685 = fmul fast float %3682, %3633
  br label %3716

; <label>:3686                                    ; preds = %3671
  %3687 = icmp eq i32 %3636, 2
  br i1 %3687, label %3688, label %3716

; <label>:3688                                    ; preds = %3686
  %3689 = call float @dx.op.unary.f32(i32 24, float %3408)  ; Sqrt(value)
  %3690 = call float @dx.op.unary.f32(i32 24, float %3409)  ; Sqrt(value)
  %3691 = call float @dx.op.unary.f32(i32 24, float %3410)  ; Sqrt(value)
  %3692 = fadd fast float %3689, -5.000000e-01
  %3693 = fadd fast float %3690, -5.000000e-01
  %3694 = fadd fast float %3691, -5.000000e-01
  %3695 = fmul fast float %3692, %3641
  %3696 = fmul fast float %3693, %3641
  %3697 = fmul fast float %3694, %3641
  %3698 = fadd fast float %3695, 5.000000e-01
  %3699 = fadd fast float %3696, 5.000000e-01
  %3700 = fadd fast float %3697, 5.000000e-01
  %3701 = fmul fast float %3698, 2.000000e+00
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3702, %3631
  %3704 = fadd fast float %3703, %3701
  %3705 = fmul fast float %3704, %3631
  %3706 = fmul fast float %3699, 2.000000e+00
  %3707 = fsub fast float 1.000000e+00, %3706
  %3708 = fmul fast float %3707, %3632
  %3709 = fadd fast float %3708, %3706
  %3710 = fmul fast float %3709, %3632
  %3711 = fmul fast float %3700, 2.000000e+00
  %3712 = fsub fast float 1.000000e+00, %3711
  %3713 = fmul fast float %3712, %3633
  %3714 = fadd fast float %3713, %3711
  %3715 = fmul fast float %3714, %3633
  br label %3716

; <label>:3716                                    ; preds = %3688, %3686, %3673, %3643, %3627
  %3717 = phi float [ %3628, %3627 ], [ %3628, %3688 ], [ %3628, %3686 ], [ %3628, %3673 ], [ %3665, %3643 ]
  %3718 = phi float [ %3629, %3627 ], [ %3629, %3688 ], [ %3629, %3686 ], [ %3629, %3673 ], [ %3666, %3643 ]
  %3719 = phi float [ %3630, %3627 ], [ %3630, %3688 ], [ %3630, %3686 ], [ %3630, %3673 ], [ %3667, %3643 ]
  %3720 = phi float [ %3631, %3627 ], [ %3705, %3688 ], [ %3631, %3686 ], [ %3683, %3673 ], [ %3653, %3643 ]
  %3721 = phi float [ %3632, %3627 ], [ %3710, %3688 ], [ %3632, %3686 ], [ %3684, %3673 ], [ %3654, %3643 ]
  %3722 = phi float [ %3633, %3627 ], [ %3715, %3688 ], [ %3633, %3686 ], [ %3685, %3673 ], [ %3655, %3643 ]
  %3723 = phi float [ %2885, %3627 ], [ %2885, %3688 ], [ %2885, %3686 ], [ %2885, %3673 ], [ %3658, %3643 ]
  %3724 = phi float [ %2890, %3627 ], [ %2890, %3688 ], [ %2890, %3686 ], [ %2890, %3673 ], [ %3670, %3643 ]
  %3725 = and i32 %3635, 12
  %3726 = icmp eq i32 %3725, 12
  br i1 %3726, label %3843, label %3727

; <label>:3727                                    ; preds = %3716
  %3728 = and i32 %3635, 2097184
  %3729 = icmp eq i32 %3728, 2097184
  %3730 = select i1 %3729, float %3188, float 0.000000e+00
  %3731 = and i32 %3635, 4194336
  %3732 = icmp eq i32 %3731, 4194336
  %3733 = select i1 %3732, float %3188, float 0.000000e+00
  %3734 = and i32 %3635, 8388640
  %3735 = icmp eq i32 %3734, 8388640
  %3736 = select i1 %3735, float %3188, float 0.000000e+00
  %3737 = and i32 %3635, 2048
  %3738 = icmp ne i32 %3737, 0
  %3739 = select i1 %3738, float %3188, float 0.000000e+00
  %3740 = and i32 %3635, 8192
  %3741 = icmp ne i32 %3740, 0
  %3742 = select i1 %3741, float %3188, float 0.000000e+00
  %3743 = and i32 %3635, 16384
  %3744 = icmp ne i32 %3743, 0
  %3745 = select i1 %3744, float %3188, float 0.000000e+00
  %3746 = icmp eq i32 %3725, 0
  br i1 %3746, label %3747, label %3775

; <label>:3747                                    ; preds = %3727
  %3748 = fsub fast float %3489, %2874
  %3749 = fsub fast float %3490, %2875
  %3750 = fmul fast float %3730, %3748
  %3751 = fmul fast float %3730, %3749
  %3752 = fadd fast float %3750, %2874
  %3753 = fadd fast float %3751, %2875
  %3754 = fsub fast float %3491, %2887
  %3755 = fmul fast float %3733, %3754
  %3756 = fadd fast float %3755, %2887
  %3757 = fsub fast float %3488, %2886
  %3758 = fmul fast float %3736, %3757
  %3759 = fadd fast float %3758, %2886
  %3760 = fsub fast float %3604, %2888
  %3761 = fmul fast float %3739, %3760
  %3762 = fadd fast float %3761, %2888
  %3763 = fsub fast float %3601, %2882
  %3764 = fsub fast float %3602, %2883
  %3765 = fsub fast float %3603, %2884
  %3766 = fmul fast float %3742, %3763
  %3767 = fmul fast float %3742, %3764
  %3768 = fmul fast float %3742, %3765
  %3769 = fadd fast float %3766, %2882
  %3770 = fadd fast float %3767, %2883
  %3771 = fadd fast float %3768, %2884
  %3772 = fsub fast float %3605, %2889
  %3773 = fmul fast float %3745, %3772
  %3774 = fadd fast float %3773, %2889
  br label %3843

; <label>:3775                                    ; preds = %3727
  %3776 = icmp eq i32 %3725, 4
  br i1 %3776, label %3777, label %3819

; <label>:3777                                    ; preds = %3775
  %3778 = fmul fast float %3730, %3489
  %3779 = fmul fast float %3730, %3490
  %3780 = fadd fast float %3778, %2874
  %3781 = fadd fast float %3779, %2875
  %3782 = call float @dx.op.binary.f32(i32 36, float %2887, float %3491)  ; FMin(a,b)
  %3783 = fsub fast float %3782, %2887
  %3784 = fmul fast float %3783, %3733
  %3785 = fadd fast float %3784, %2887
  %3786 = fadd fast float %3488, %2886
  %3787 = fmul fast float %3786, 0x3FF337FAE0000000
  %3788 = fmul fast float %2886, %2886
  %3789 = fmul fast float %3488, %3488
  %3790 = fadd fast float %3789, %3788
  %3791 = fmul fast float %3790, 0x3FE5152B00000000
  %3792 = fmul fast float %2886, 0xBFCC1F85E0000000
  %3793 = fmul fast float %3792, %3488
  %3794 = fadd fast float %3793, 0xBFE1363700000000
  %3795 = fadd fast float %3794, %3787
  %3796 = fsub fast float %3795, %3791
  %3797 = fmul fast float %3786, 0x3FBA6F0D00000000
  %3798 = fmul fast float %3790, 0x3FD0432880000000
  %3799 = fmul fast float %2886, 0xBFEF110800000000
  %3800 = fmul fast float %3799, %3488
  %3801 = fadd fast float %3800, 1.000000e+00
  %3802 = fsub fast float %3801, %3797
  %3803 = fadd fast float %3802, %3798
  %3804 = fdiv fast float %3796, %3803
  %3805 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3806 = fsub fast float %3805, %2886
  %3807 = fmul fast float %3806, %3736
  %3808 = fadd fast float %3807, %2886
  %3809 = fmul fast float %3739, %3604
  %3810 = fadd fast float %3809, %2888
  %3811 = fmul fast float %3742, %3601
  %3812 = fmul fast float %3742, %3602
  %3813 = fmul fast float %3742, %3603
  %3814 = fadd fast float %3811, %2882
  %3815 = fadd fast float %3812, %2883
  %3816 = fadd fast float %3813, %2884
  %3817 = fmul fast float %3745, %3605
  %3818 = fadd fast float %3817, %2889
  br label %3843

; <label>:3819                                    ; preds = %3775
  %3820 = icmp eq i32 %3725, 8
  br i1 %3820, label %3821, label %3843

; <label>:3821                                    ; preds = %3819
  %3822 = fmul fast float %3730, %3489
  %3823 = fmul fast float %3730, %3490
  %3824 = fadd fast float %3822, %2874
  %3825 = fadd fast float %3823, %2875
  %3826 = call float @dx.op.binary.f32(i32 36, float %2887, float %3491)  ; FMin(a,b)
  %3827 = fsub fast float %3826, %2887
  %3828 = fmul fast float %3827, %3733
  %3829 = fadd fast float %3828, %2887
  %3830 = fsub fast float %3488, %2886
  %3831 = fmul fast float %3736, %3830
  %3832 = fadd fast float %3831, %2886
  %3833 = fmul fast float %3739, %3604
  %3834 = fadd fast float %3833, %2888
  %3835 = fmul fast float %3742, %3601
  %3836 = fmul fast float %3742, %3602
  %3837 = fmul fast float %3742, %3603
  %3838 = fadd fast float %3835, %2882
  %3839 = fadd fast float %3836, %2883
  %3840 = fadd fast float %3837, %2884
  %3841 = fmul fast float %3745, %3605
  %3842 = fadd fast float %3841, %2889
  br label %3843

; <label>:3843                                    ; preds = %3821, %3819, %3777, %3747, %3716, %3187, %2891, %2873
  %3844 = phi float [ %2874, %3716 ], [ %2874, %3187 ], [ %2874, %2873 ], [ %2874, %2891 ], [ %3752, %3747 ], [ %3780, %3777 ], [ %2874, %3819 ], [ %3824, %3821 ]
  %3845 = phi float [ %2875, %3716 ], [ %2875, %3187 ], [ %2875, %2873 ], [ %2875, %2891 ], [ %3753, %3747 ], [ %3781, %3777 ], [ %2875, %3819 ], [ %3825, %3821 ]
  %3846 = phi float [ %3717, %3716 ], [ %2876, %3187 ], [ %2876, %2873 ], [ %2876, %2891 ], [ %3717, %3747 ], [ %3717, %3777 ], [ %3717, %3819 ], [ %3717, %3821 ]
  %3847 = phi float [ %3718, %3716 ], [ %2877, %3187 ], [ %2877, %2873 ], [ %2877, %2891 ], [ %3718, %3747 ], [ %3718, %3777 ], [ %3718, %3819 ], [ %3718, %3821 ]
  %3848 = phi float [ %3719, %3716 ], [ %2878, %3187 ], [ %2878, %2873 ], [ %2878, %2891 ], [ %3719, %3747 ], [ %3719, %3777 ], [ %3719, %3819 ], [ %3719, %3821 ]
  %3849 = phi float [ %3720, %3716 ], [ %2879, %3187 ], [ %2879, %2873 ], [ %2879, %2891 ], [ %3720, %3747 ], [ %3720, %3777 ], [ %3720, %3819 ], [ %3720, %3821 ]
  %3850 = phi float [ %3721, %3716 ], [ %2880, %3187 ], [ %2880, %2873 ], [ %2880, %2891 ], [ %3721, %3747 ], [ %3721, %3777 ], [ %3721, %3819 ], [ %3721, %3821 ]
  %3851 = phi float [ %3722, %3716 ], [ %2881, %3187 ], [ %2881, %2873 ], [ %2881, %2891 ], [ %3722, %3747 ], [ %3722, %3777 ], [ %3722, %3819 ], [ %3722, %3821 ]
  %3852 = phi float [ %2882, %3716 ], [ %2882, %3187 ], [ %2882, %2873 ], [ %2882, %2891 ], [ %3769, %3747 ], [ %3814, %3777 ], [ %2882, %3819 ], [ %3838, %3821 ]
  %3853 = phi float [ %2883, %3716 ], [ %2883, %3187 ], [ %2883, %2873 ], [ %2883, %2891 ], [ %3770, %3747 ], [ %3815, %3777 ], [ %2883, %3819 ], [ %3839, %3821 ]
  %3854 = phi float [ %2884, %3716 ], [ %2884, %3187 ], [ %2884, %2873 ], [ %2884, %2891 ], [ %3771, %3747 ], [ %3816, %3777 ], [ %2884, %3819 ], [ %3840, %3821 ]
  %3855 = phi float [ %3723, %3716 ], [ %2885, %3187 ], [ %2885, %2873 ], [ %2885, %2891 ], [ %3723, %3747 ], [ %3723, %3777 ], [ %3723, %3819 ], [ %3723, %3821 ]
  %3856 = phi float [ %2886, %3716 ], [ %2886, %3187 ], [ %2886, %2873 ], [ %2886, %2891 ], [ %3759, %3747 ], [ %3808, %3777 ], [ %2886, %3819 ], [ %3832, %3821 ]
  %3857 = phi float [ %2887, %3716 ], [ %2887, %3187 ], [ %2887, %2873 ], [ %2887, %2891 ], [ %3756, %3747 ], [ %3785, %3777 ], [ %2887, %3819 ], [ %3829, %3821 ]
  %3858 = phi float [ %2888, %3716 ], [ %2888, %3187 ], [ %2888, %2873 ], [ %2888, %2891 ], [ %3762, %3747 ], [ %3810, %3777 ], [ %2888, %3819 ], [ %3834, %3821 ]
  %3859 = phi float [ %2889, %3716 ], [ %2889, %3187 ], [ %2889, %2873 ], [ %2889, %2891 ], [ %3774, %3747 ], [ %3818, %3777 ], [ %2889, %3819 ], [ %3842, %3821 ]
  %3860 = phi float [ %3724, %3716 ], [ %2890, %3187 ], [ %2890, %2873 ], [ %2890, %2891 ], [ %3724, %3747 ], [ %3724, %3777 ], [ %3724, %3819 ], [ %3724, %3821 ]
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 0
  %3863 = call float @dx.op.dot2.f32(i32 54, float %3844, float %3845, float %3844, float %3845)  ; Dot2(ax,ay,bx,by)
  %3864 = fmul fast float %3863, 0x3FE3333340000000
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3865, float %3844, float %3845, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3844
  %3869 = fmul fast float %3867, %3845
  %3870 = fmul fast float %3865, %3867
  %3871 = fmul fast float %3870, %80
  %3872 = fmul fast float %3870, %81
  %3873 = fmul fast float %3870, %82
  %3874 = fmul fast float %3868, %54
  %3875 = fmul fast float %3868, %55
  %3876 = fmul fast float %3868, %56
  %3877 = fadd fast float %3871, %3874
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fmul fast float %92, %3869
  %3881 = fmul fast float %93, %3869
  %3882 = fmul fast float %94, %3869
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3883, %3887
  %3889 = fmul fast float %3884, %3887
  %3890 = fmul fast float %3885, %3887
  %3891 = and i32 %35, 1
  %3892 = icmp eq i32 %3891, 0
  br i1 %3892, label %3893, label %4454

; <label>:3893                                    ; preds = %3843
  %3894 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3895 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3896 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3897 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3898 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3899 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3900 = fadd fast float %3894, %128
  %3901 = fadd fast float %3895, %129
  %3902 = fadd fast float %3896, %130
  %3903 = fadd fast float %3897, %128
  %3904 = fadd fast float %3898, %129
  %3905 = fadd fast float %3899, %130
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 3
  %3913 = fmul fast float %3907, %73
  %3914 = fmul fast float %3913, %3911
  %3915 = fmul fast float %3908, %74
  %3916 = fmul fast float %3915, %3912
  %3917 = fptoui float %3914 to i32
  %3918 = fptoui float %3916 to i32
  %3919 = fadd fast float %3907, -1.000000e+00
  %3920 = fadd fast float %3908, -1.000000e+00
  %3921 = fptoui float %3919 to i32
  %3922 = fptoui float %3920 to i32
  %3923 = call i32 @dx.op.binary.i32(i32 40, i32 %3917, i32 %3921)  ; UMin(a,b)
  %3924 = call i32 @dx.op.binary.i32(i32 40, i32 %3918, i32 %3922)  ; UMin(a,b)
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 2
  %3927 = extractvalue %dx.types.CBufRet.f32 %3925, 3
  %3928 = fmul fast float %3926, %68
  %3929 = fsub fast float %3928, %3927
  %3930 = fadd fast float %3909, -1.000000e+00
  %3931 = call float @dx.op.binary.f32(i32 36, float %3929, float %3930)  ; FMin(a,b)
  %3932 = fptoui float %3931 to i32
  %3933 = fptoui float %3907 to i32
  %3934 = fptoui float %3908 to i32
  %3935 = mul i32 %3932, %3934
  %3936 = add i32 %3935, %3924
  %3937 = mul i32 %3936, %3933
  %3938 = add i32 %3937, %3923
  %3939 = shl i32 %3938, 2
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = and i32 %3941, 1023
  %3943 = lshr i32 %3941, 10
  %3944 = icmp eq i32 %3942, 0
  br i1 %3944, label %4420, label %3945

; <label>:3945                                    ; preds = %3893
  %3946 = and i32 %3941, 1023
  br label %3947

; <label>:3947                                    ; preds = %4076, %3945
  %3948 = phi i32 [ %4026, %4076 ], [ 0, %3945 ]
  %3949 = phi float [ %4077, %4076 ], [ 0.000000e+00, %3945 ]
  %3950 = phi float [ %4078, %4076 ], [ %3862, %3945 ]
  %3951 = phi float [ %4079, %4076 ], [ %3860, %3945 ]
  %3952 = phi float [ %4080, %4076 ], [ %3859, %3945 ]
  %3953 = phi float [ %4081, %4076 ], [ 0.000000e+00, %3945 ]
  %3954 = phi float [ %4082, %4076 ], [ %3852, %3945 ]
  %3955 = phi float [ %4083, %4076 ], [ %3853, %3945 ]
  %3956 = phi float [ %4084, %4076 ], [ %3854, %3945 ]
  %3957 = phi float [ %4085, %4076 ], [ %3846, %3945 ]
  %3958 = phi float [ %4086, %4076 ], [ %3847, %3945 ]
  %3959 = phi float [ %4087, %4076 ], [ %3848, %3945 ]
  %3960 = phi float [ %4088, %4076 ], [ %3888, %3945 ]
  %3961 = phi float [ %4089, %4076 ], [ %3889, %3945 ]
  %3962 = phi float [ %4090, %4076 ], [ %3890, %3945 ]
  %3963 = phi float [ %4091, %4076 ], [ %3857, %3945 ]
  %3964 = phi float [ %4092, %4076 ], [ %3856, %3945 ]
  %3965 = phi float [ %4093, %4076 ], [ 0.000000e+00, %3945 ]
  %3966 = phi float [ %4094, %4076 ], [ %3855, %3945 ]
  %3967 = phi float [ %4095, %4076 ], [ %3849, %3945 ]
  %3968 = phi float [ %4096, %4076 ], [ %3850, %3945 ]
  %3969 = phi float [ %4097, %4076 ], [ %3851, %3945 ]
  %3970 = add nuw nsw i32 %3948, %3943
  %3971 = shl i32 %3970, 2
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = shl i32 %3973, 8
  %3975 = or i32 %3974, 48
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = or i32 %3974, 64
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.i32 %3982, 1
  %3985 = or i32 %3974, 80
  %3986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 2
  %3988 = extractvalue %dx.types.ResRet.f32 %3986, 3
  %3989 = or i32 %3974, 96
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = or i32 %3974, 112
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %3998 = or i32 %3974, 128
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.ResRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3999, 2
  %4003 = extractvalue %dx.types.ResRet.f32 %3999, 3
  %4004 = or i32 %3974, 144
  %4005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = extractvalue %dx.types.ResRet.f32 %4005, 3
  %4010 = or i32 %3974, 160
  %4011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4011, 3
  %4016 = or i32 %3974, 192
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = or i32 %3974, 208
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = or i32 %3974, 248
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = add nuw nsw i32 %3948, 1
  %4027 = bitcast float %3980 to i32
  %4028 = and i32 %4027, 512
  %4029 = icmp eq i32 %4028, 0
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4035 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4036 = or i32 %3974, 16
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4043 = or i32 %3974, 32
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4050 = call float @dx.op.unary.f32(i32 27, float %4035)  ; Round_ni(value)
  %4051 = call float @dx.op.unary.f32(i32 6, float %4050)  ; FAbs(value)
  %4052 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4053 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4054 = call float @dx.op.unary.f32(i32 6, float %4049)  ; FAbs(value)
  %4055 = call float @dx.op.unary.f32(i32 27, float %4054)  ; Round_ni(value)
  %4056 = fadd fast float %4053, %4051
  %4057 = fadd fast float %4056, %4055
  %4058 = fcmp fast oeq float %4057, 0.000000e+00
  %4059 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %3900, float %3901, float %3902, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4060 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %3900, float %3901, float %3902, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4061 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %3903, float %3904, float %3905, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4062 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %3903, float %3904, float %3905, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4063 = fsub fast float %4059, %4035
  %4064 = fsub fast float %4061, %4035
  %4065 = fsub fast float %4060, %4042
  %4066 = fsub fast float %4062, %4042
  %4067 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4070 = fadd fast float %4069, %4067
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4073 = fcmp fast ogt float %4071, %4072
  %4074 = and i1 %4058, %4073
  %4075 = and i1 %4029, %4074
  br i1 %4075, label %4099, label %4076

; <label>:4076                                    ; preds = %4406, %4180, %4099, %3947
  %4077 = phi float [ %3949, %4099 ], [ %4183, %4180 ], [ %4183, %4406 ], [ %3949, %3947 ]
  %4078 = phi float [ %3950, %4099 ], [ %3950, %4180 ], [ %4382, %4406 ], [ %3950, %3947 ]
  %4079 = phi float [ %3951, %4099 ], [ %3951, %4180 ], [ %4380, %4406 ], [ %3951, %3947 ]
  %4080 = phi float [ %3952, %4099 ], [ %3952, %4180 ], [ %4307, %4406 ], [ %3952, %3947 ]
  %4081 = phi float [ %3953, %4099 ], [ %3953, %4180 ], [ %4305, %4406 ], [ %3953, %3947 ]
  %4082 = phi float [ %3954, %4099 ], [ %3954, %4180 ], [ %4350, %4406 ], [ %3954, %3947 ]
  %4083 = phi float [ %3955, %4099 ], [ %3955, %4180 ], [ %4351, %4406 ], [ %3955, %3947 ]
  %4084 = phi float [ %3956, %4099 ], [ %3956, %4180 ], [ %4352, %4406 ], [ %3956, %3947 ]
  %4085 = phi float [ %3957, %4099 ], [ %3957, %4180 ], [ %4416, %4406 ], [ %3957, %3947 ]
  %4086 = phi float [ %3958, %4099 ], [ %3958, %4180 ], [ %4417, %4406 ], [ %3958, %3947 ]
  %4087 = phi float [ %3959, %4099 ], [ %3959, %4180 ], [ %4418, %4406 ], [ %3959, %3947 ]
  %4088 = phi float [ %3960, %4099 ], [ %3960, %4180 ], [ %4286, %4406 ], [ %3960, %3947 ]
  %4089 = phi float [ %3961, %4099 ], [ %3961, %4180 ], [ %4287, %4406 ], [ %3961, %3947 ]
  %4090 = phi float [ %3962, %4099 ], [ %3962, %4180 ], [ %4288, %4406 ], [ %3962, %3947 ]
  %4091 = phi float [ %3963, %4099 ], [ %3963, %4180 ], [ %4360, %4406 ], [ %3963, %3947 ]
  %4092 = phi float [ %3964, %4099 ], [ %3964, %4180 ], [ %4357, %4406 ], [ %3964, %3947 ]
  %4093 = phi float [ %3965, %4099 ], [ %3965, %4180 ], [ %4354, %4406 ], [ %3965, %3947 ]
  %4094 = phi float [ %3966, %4099 ], [ %3966, %4180 ], [ %4303, %4406 ], [ %3966, %3947 ]
  %4095 = phi float [ %3967, %4099 ], [ %3967, %4180 ], [ %4298, %4406 ], [ %3967, %3947 ]
  %4096 = phi float [ %3968, %4099 ], [ %3968, %4180 ], [ %4299, %4406 ], [ %3968, %3947 ]
  %4097 = phi float [ %3969, %4099 ], [ %3969, %4180 ], [ %4300, %4406 ], [ %3969, %3947 ]
  %4098 = icmp eq i32 %4026, %3946
  br i1 %4098, label %4419, label %3947

; <label>:4099                                    ; preds = %3947
  %4100 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %4101 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %3986, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %4105 = extractvalue %dx.types.ResRet.i32 %3982, 3
  %4106 = extractvalue %dx.types.ResRet.i32 %3982, 2
  %4107 = add i32 %4105, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4108, %dx.types.Handle %4109, float %4035, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4063, float %4065, float undef, float %4064, float %4066, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = fmul fast float %4111, %4104
  %4113 = fadd fast float %4112, %4103
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4035, %3991
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %4042, float %4115)  ; FMad(a,b,c)
  %4117 = fadd fast float %4116, %4102
  %4118 = fmul fast float %4035, %3993
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4042, float %4118)  ; FMad(a,b,c)
  %4120 = fadd fast float %4119, %4101
  %4121 = fmul fast float %4063, %3991
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %4065, float %4121)  ; FMad(a,b,c)
  %4123 = fmul fast float %4063, %3993
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4065, float %4123)  ; FMad(a,b,c)
  %4125 = fmul fast float %4064, %3991
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %4066, float %4125)  ; FMad(a,b,c)
  %4127 = fmul fast float %4064, %3993
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %4066, float %4127)  ; FMad(a,b,c)
  %4129 = add i32 %4106, 0
  %4130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4130, %dx.types.Handle %4109, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = and i32 %4027, 1024
  %4134 = icmp ne i32 %4133, 0
  %4135 = fcmp fast ogt float %4132, 0x3FE0101020000000
  %4136 = uitofp i1 %4135 to float
  %4137 = select i1 %4134, float %4136, float %4132
  %4138 = and i32 %4027, 8192
  %4139 = icmp ne i32 %4138, 0
  %4140 = select i1 %4139, float %4100, float 1.000000e+00
  %4141 = fmul fast float %4035, 2.000000e+00
  %4142 = fadd fast float %4141, -1.000000e+00
  %4143 = call float @dx.op.unary.f32(i32 6, float %4142)  ; FAbs(value)
  %4144 = fmul fast float %4143, %4024
  %4145 = fsub fast float %4144, %4024
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4042, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4150 = fmul fast float %4149, %4025
  %4151 = fsub fast float %4150, %4025
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4054, %3987
  %4154 = fsub fast float %4153, %3987
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fmul fast float %4114, %4140
  %4157 = fmul fast float %4156, %4111
  %4158 = fmul fast float %4157, %4146
  %4159 = fmul fast float %4158, %4137
  %4160 = fmul fast float %4159, %4152
  %4161 = fmul fast float %4160, %4155
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4165 = fsub fast float %4071, %4164
  %4166 = fmul fast float %4165, %4163
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4161, %3988
  %4169 = fadd fast float %4161, %3988
  %4170 = fmul fast float %4169, %3997
  %4171 = fsub fast float %4170, %3997
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = and i32 %4027, 128
  %4174 = icmp ne i32 %4173, 0
  %4175 = select i1 %4174, float %4172, float %4168
  %4176 = fmul fast float %4175, %4167
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = fcmp fast ugt float %4176, %4178
  br i1 %4179, label %4180, label %4076

; <label>:4180                                    ; preds = %4099
  %4181 = select i1 %4139, float %4176, float 0.000000e+00
  %4182 = fadd fast float %4181, %3949
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  br i1 %4139, label %4076, label %4184

; <label>:4184                                    ; preds = %4180
  %4185 = and i32 %4027, 4
  %4186 = and i32 %4027, 8
  %4187 = add i32 %3983, 0
  %4188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4187, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4188, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4195 = bitcast float %4009 to i32
  %4196 = and i32 %4195, 255
  %4197 = uitofp i32 %4196 to float
  %4198 = lshr i32 %4195, 8
  %4199 = and i32 %4198, 255
  %4200 = uitofp i32 %4199 to float
  %4201 = fmul fast float %4194, %4197
  %4202 = fadd fast float %4201, %4200
  %4203 = fmul fast float %4202, 0x3F70101000000000
  %4204 = add i32 %3984, 0
  %4205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4204, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4205, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = bitcast float %4003 to i32
  %4212 = and i32 %4211, 255
  %4213 = uitofp i32 %4212 to float
  %4214 = lshr i32 %4211, 8
  %4215 = and i32 %4214, 255
  %4216 = uitofp i32 %4215 to float
  %4217 = lshr i32 %4211, 16
  %4218 = and i32 %4217, 255
  %4219 = uitofp i32 %4218 to float
  %4220 = fmul fast float %4219, 0x3F70101000000000
  %4221 = fmul fast float %4207, %4213
  %4222 = fadd fast float %4221, %4216
  %4223 = fmul fast float %4222, 0x3F70101000000000
  %4224 = fadd fast float %4208, -5.000000e-01
  %4225 = fadd fast float %4210, -5.000000e-01
  %4226 = fmul fast float %4224, %4220
  %4227 = fmul fast float %4225, %4220
  %4228 = fadd fast float %4226, 5.000000e-01
  %4229 = fadd fast float %4227, 5.000000e-01
  %4230 = fmul fast float %4191, %4012
  %4231 = fmul fast float %4192, %4013
  %4232 = fmul fast float %4193, %4014
  %4233 = fmul fast float %4228, 2.000000e+00
  %4234 = fadd fast float %4233, -1.000000e+00
  %4235 = fmul fast float %4229, 2.000000e+00
  %4236 = fadd fast float %4235, -1.000000e+00
  %4237 = fadd fast float %4234, %4236
  %4238 = fmul fast float %4237, 5.000000e-01
  %4239 = fsub fast float %4234, %4236
  %4240 = fmul fast float %4239, 5.000000e-01
  %4241 = call float @dx.op.unary.f32(i32 6, float %4238)  ; FAbs(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4244 = fsub fast float %4242, %4243
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4240, float %4244, float %4238, float %4240, float %4244)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call float @dx.op.unary.f32(i32 25, float %4245)  ; Rsqrt(value)
  %4247 = fmul fast float %4238, %4246
  %4248 = fmul fast float %4240, %4246
  %4249 = fmul fast float %4246, %4244
  %4250 = fmul fast float %4249, %3977
  %4251 = fmul fast float %4249, %3978
  %4252 = fmul fast float %4249, %3979
  %4253 = fmul fast float %4247, %4000
  %4254 = fmul fast float %4247, %4001
  %4255 = fmul fast float %4247, %4002
  %4256 = fadd fast float %4253, %4250
  %4257 = fadd fast float %4254, %4251
  %4258 = fadd fast float %4255, %4252
  %4259 = fmul fast float %4248, %4006
  %4260 = fmul fast float %4248, %4007
  %4261 = fmul fast float %4248, %4008
  %4262 = fadd fast float %4256, %4259
  %4263 = fadd fast float %4257, %4260
  %4264 = fadd fast float %4258, %4261
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 25, float %4265)  ; Rsqrt(value)
  %4267 = fmul fast float %4262, %4266
  %4268 = fmul fast float %4263, %4266
  %4269 = fmul fast float %4264, %4266
  %4270 = icmp ne i32 %4186, 0
  %4271 = select i1 %4270, float 1.000000e+00, float 0.000000e+00
  %4272 = fmul fast float %4176, %4271
  %4273 = and i32 %4027, 1
  %4274 = icmp eq i32 %4273, 0
  br i1 %4274, label %4275, label %4279

; <label>:4275                                    ; preds = %4184
  %4276 = fsub fast float %4267, %3960
  %4277 = fsub fast float %4268, %3961
  %4278 = fsub fast float %4269, %3962
  br label %4279

; <label>:4279                                    ; preds = %4275, %4184
  %4280 = phi float [ %4276, %4275 ], [ %4267, %4184 ]
  %4281 = phi float [ %4277, %4275 ], [ %4268, %4184 ]
  %4282 = phi float [ %4278, %4275 ], [ %4269, %4184 ]
  %4283 = fmul float %4282, %4272
  %4284 = fmul float %4281, %4272
  %4285 = fmul float %4280, %4272
  %4286 = fadd fast float %4285, %3960
  %4287 = fadd fast float %4284, %3961
  %4288 = fadd fast float %4283, %3962
  %4289 = icmp ne i32 %4185, 0
  %4290 = select i1 %4289, float 1.000000e+00, float 0.000000e+00
  %4291 = fmul fast float %4176, %4290
  %4292 = fsub fast float %4230, %3967
  %4293 = fsub fast float %4231, %3968
  %4294 = fsub fast float %4232, %3969
  %4295 = fmul fast float %4292, %4291
  %4296 = fmul fast float %4293, %4291
  %4297 = fmul fast float %4294, %4291
  %4298 = fadd fast float %4295, %3967
  %4299 = fadd fast float %4296, %3968
  %4300 = fadd fast float %4297, %3969
  %4301 = fsub fast float %4203, %3966
  %4302 = fmul fast float %4301, %4291
  %4303 = fadd fast float %4302, %3966
  %4304 = fmul fast float %4291, %3953
  %4305 = fsub fast float %3953, %4304
  %4306 = fmul fast float %4291, %3952
  %4307 = fsub fast float %3952, %4306
  %4308 = bitcast float %4021 to i32
  %4309 = lshr i32 %4308, 16
  %4310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4309)  ; LegacyF16ToF32(value)
  %4311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4312 = extractvalue %dx.types.ResRet.i32 %4311, 0
  %4313 = and i32 %4312, 1
  %4314 = icmp eq i32 %4313, 0
  br i1 %4314, label %4315, label %4340

; <label>:4315                                    ; preds = %4279
  %4316 = fadd fast float %4203, 0xBFB99999A0000000
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4317, 0x3FF1C71C80000000
  %4319 = fsub fast float 1.000000e+00, %4318
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fmul fast float %4320, %4230
  %4322 = fmul fast float %4320, %4231
  %4323 = fmul fast float %4320, %4232
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.binary.f32(i32 35, float %4325, float %4326)  ; FMax(a,b)
  %4328 = call float @dx.op.binary.f32(i32 35, float %4324, float %4327)  ; FMax(a,b)
  %4329 = fcmp fast ogt float %4328, 0.000000e+00
  %4330 = bitcast float %4328 to i32
  %4331 = sub nsw i32 2129859010, %4330
  %4332 = bitcast i32 %4331 to float
  %4333 = select i1 %4329, float %4332, float 0.000000e+00
  %4334 = fmul fast float %4324, %4310
  %4335 = fmul fast float %4325, %4310
  %4336 = fmul fast float %4326, %4310
  %4337 = fmul fast float %4334, %4333
  %4338 = fmul fast float %4335, %4333
  %4339 = fmul fast float %4336, %4333
  br label %4340

; <label>:4340                                    ; preds = %4315, %4279
  %4341 = phi float [ %4310, %4279 ], [ %4337, %4315 ]
  %4342 = phi float [ %4310, %4279 ], [ %4338, %4315 ]
  %4343 = phi float [ %4310, %4279 ], [ %4339, %4315 ]
  %4344 = fsub fast float %4341, %3954
  %4345 = fsub fast float %4342, %3955
  %4346 = fsub fast float %4343, %3956
  %4347 = fmul fast float %4344, %4291
  %4348 = fmul fast float %4345, %4291
  %4349 = fmul fast float %4346, %4291
  %4350 = fadd fast float %4347, %3954
  %4351 = fadd fast float %4348, %3955
  %4352 = fadd fast float %4349, %3956
  %4353 = fadd fast float %4176, %3965
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fsub fast float %4223, %3964
  %4356 = fmul fast float %4355, %4272
  %4357 = fadd fast float %4356, %3964
  %4358 = fsub fast float %4209, %3963
  %4359 = fmul fast float %4358, %4272
  %4360 = fadd fast float %4359, %3963
  %4361 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.CBufRet.f32 %4362, 1
  %4365 = fmul fast float %4364, %4361
  %4366 = fadd fast float %4365, %4363
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = bitcast float %4015 to i32
  %4369 = and i32 %4368, 65535
  %4370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4369)  ; LegacyF16ToF32(value)
  %4371 = lshr i32 %4368, 16
  %4372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4371)  ; LegacyF16ToF32(value)
  %4373 = fcmp fast oge float %4370, 0.000000e+00
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = select i1 %4373, float %4370, float %4375
  %4377 = fadd fast float %4376, %4372
  %4378 = fsub fast float %4367, %3951
  %4379 = fmul fast float %4378, %4176
  %4380 = fadd fast float %4379, %3951
  %4381 = fmul fast float %4377, %4176
  %4382 = call float @dx.op.binary.f32(i32 35, float %3950, float %4381)  ; FMax(a,b)
  %4383 = and i32 %4027, 16
  %4384 = icmp eq i32 %4383, 0
  br i1 %4384, label %4406, label %4385

; <label>:4385                                    ; preds = %4340
  %4386 = add i32 %4018, 0
  %4387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4387, %dx.types.Handle %4189, float %4117, float %4120, float undef, float undef, i32 0, i32 0, i32 undef, float %4122, float %4124, float undef, float %4126, float %4128, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = and i32 %4308, 65535
  %4393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4392)  ; LegacyF16ToF32(value)
  %4394 = fmul fast float %4389, %4012
  %4395 = fmul fast float %4390, %4013
  %4396 = fmul fast float %4391, %4014
  %4397 = and i32 %4027, 16384
  %4398 = icmp ne i32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = select i1 %4398, float %4400, float 1.000000e+00
  %4402 = fmul fast float %4401, %4393
  %4403 = fmul fast float %4394, %4402
  %4404 = fmul fast float %4395, %4402
  %4405 = fmul fast float %4396, %4402
  br label %4406

; <label>:4406                                    ; preds = %4385, %4340
  %4407 = phi float [ %4403, %4385 ], [ 0.000000e+00, %4340 ]
  %4408 = phi float [ %4404, %4385 ], [ 0.000000e+00, %4340 ]
  %4409 = phi float [ %4405, %4385 ], [ 0.000000e+00, %4340 ]
  %4410 = fsub fast float %4407, %3957
  %4411 = fsub fast float %4408, %3958
  %4412 = fsub fast float %4409, %3959
  %4413 = fmul fast float %4410, %4176
  %4414 = fmul fast float %4411, %4176
  %4415 = fmul fast float %4412, %4176
  %4416 = fadd fast float %4413, %3957
  %4417 = fadd fast float %4414, %3958
  %4418 = fadd fast float %4415, %3959
  br label %4076

; <label>:4419                                    ; preds = %4076
  br label %4420

; <label>:4420                                    ; preds = %4419, %3893
  %4421 = phi float [ 0.000000e+00, %3893 ], [ %4077, %4419 ]
  %4422 = phi float [ %3862, %3893 ], [ %4078, %4419 ]
  %4423 = phi float [ %3860, %3893 ], [ %4079, %4419 ]
  %4424 = phi float [ %3859, %3893 ], [ %4080, %4419 ]
  %4425 = phi float [ 0.000000e+00, %3893 ], [ %4081, %4419 ]
  %4426 = phi float [ %3852, %3893 ], [ %4082, %4419 ]
  %4427 = phi float [ %3853, %3893 ], [ %4083, %4419 ]
  %4428 = phi float [ %3854, %3893 ], [ %4084, %4419 ]
  %4429 = phi float [ %3846, %3893 ], [ %4085, %4419 ]
  %4430 = phi float [ %3847, %3893 ], [ %4086, %4419 ]
  %4431 = phi float [ %3848, %3893 ], [ %4087, %4419 ]
  %4432 = phi float [ %3888, %3893 ], [ %4088, %4419 ]
  %4433 = phi float [ %3889, %3893 ], [ %4089, %4419 ]
  %4434 = phi float [ %3890, %3893 ], [ %4090, %4419 ]
  %4435 = phi float [ %3857, %3893 ], [ %4091, %4419 ]
  %4436 = phi float [ %3856, %3893 ], [ %4092, %4419 ]
  %4437 = phi float [ 0.000000e+00, %3893 ], [ %4093, %4419 ]
  %4438 = phi float [ %3855, %3893 ], [ %4094, %4419 ]
  %4439 = phi float [ %3849, %3893 ], [ %4095, %4419 ]
  %4440 = phi float [ %3850, %3893 ], [ %4096, %4419 ]
  %4441 = phi float [ %3851, %3893 ], [ %4097, %4419 ]
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4443, %4432
  %4445 = fmul fast float %4443, %4433
  %4446 = fmul fast float %4443, %4434
  %4447 = fadd fast float %4437, %945
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4445, float %4446, float %4444, float %4445, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = call float @dx.op.unary.f32(i32 25, float %4449)  ; Rsqrt(value)
  %4451 = fmul fast float %4450, %4444
  %4452 = fmul fast float %4450, %4445
  %4453 = fmul fast float %4450, %4446
  br label %4454

; <label>:4454                                    ; preds = %4420, %3843
  %4455 = phi float [ %4451, %4420 ], [ %3888, %3843 ]
  %4456 = phi float [ %4452, %4420 ], [ %3889, %3843 ]
  %4457 = phi float [ %4453, %4420 ], [ %3890, %3843 ]
  %4458 = phi float [ %4429, %4420 ], [ %3846, %3843 ]
  %4459 = phi float [ %4430, %4420 ], [ %3847, %3843 ]
  %4460 = phi float [ %4431, %4420 ], [ %3848, %3843 ]
  %4461 = phi float [ %4439, %4420 ], [ %3849, %3843 ]
  %4462 = phi float [ %4440, %4420 ], [ %3850, %3843 ]
  %4463 = phi float [ %4441, %4420 ], [ %3851, %3843 ]
  %4464 = phi float [ %4426, %4420 ], [ %3852, %3843 ]
  %4465 = phi float [ %4427, %4420 ], [ %3853, %3843 ]
  %4466 = phi float [ %4428, %4420 ], [ %3854, %3843 ]
  %4467 = phi float [ %4438, %4420 ], [ %3855, %3843 ]
  %4468 = phi float [ %4448, %4420 ], [ %945, %3843 ]
  %4469 = phi float [ %4436, %4420 ], [ %3856, %3843 ]
  %4470 = phi float [ %4435, %4420 ], [ %3857, %3843 ]
  %4471 = phi float [ %4425, %4420 ], [ 0.000000e+00, %3843 ]
  %4472 = phi float [ %4424, %4420 ], [ %3859, %3843 ]
  %4473 = phi float [ %4421, %4420 ], [ 0.000000e+00, %3843 ]
  %4474 = phi float [ %4422, %4420 ], [ %3862, %3843 ]
  %4475 = phi float [ %4423, %4420 ], [ %3860, %3843 ]
  %4476 = fadd fast float %4467, 0xBFB99999A0000000
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4477, 0x3FF1C71C80000000
  %4479 = call float @dx.op.binary.f32(i32 36, float %4467, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4480 = fsub fast float 1.000000e+00, %4478
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, %4461
  %4483 = fmul fast float %4481, %4462
  %4484 = fmul fast float %4481, %4463
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = fmul fast float %4478, %4461
  %4489 = fmul fast float %4478, %4462
  %4490 = fmul fast float %4478, %4463
  %4491 = fadd fast float %4488, %4479
  %4492 = fadd fast float %4489, %4479
  %4493 = fadd fast float %4490, %4479
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = and i32 %4499, 1
  %4501 = icmp eq i32 %4500, 0
  br i1 %4501, label %4516, label %4502

; <label>:4502                                    ; preds = %4454
  %4503 = call float @dx.op.binary.f32(i32 35, float %4486, float %4487)  ; FMax(a,b)
  %4504 = call float @dx.op.binary.f32(i32 35, float %4485, float %4503)  ; FMax(a,b)
  %4505 = fcmp fast ogt float %4504, 0.000000e+00
  %4506 = bitcast float %4504 to i32
  %4507 = sub nsw i32 2129859010, %4506
  %4508 = bitcast i32 %4507 to float
  %4509 = select i1 %4505, float %4508, float 0.000000e+00
  %4510 = fmul fast float %4485, %4464
  %4511 = fmul fast float %4486, %4465
  %4512 = fmul fast float %4487, %4466
  %4513 = fmul fast float %4510, %4509
  %4514 = fmul fast float %4511, %4509
  %4515 = fmul fast float %4512, %4509
  br label %4516

; <label>:4516                                    ; preds = %4502, %4454
  %4517 = phi float [ %4513, %4502 ], [ %4464, %4454 ]
  %4518 = phi float [ %4514, %4502 ], [ %4465, %4454 ]
  %4519 = phi float [ %4515, %4502 ], [ %4466, %4454 ]
  %4520 = fadd fast float %4485, 0xBFD51EB860000000
  %4521 = fadd fast float %4486, 0xBFD51EB860000000
  %4522 = fadd fast float %4487, 0xBFD51EB860000000
  %4523 = fmul fast float %4520, %4520
  %4524 = fmul fast float %4521, %4521
  %4525 = fmul fast float %4522, %4522
  %4526 = fmul fast float %4523, %4523
  %4527 = fmul fast float %4526, 1.000000e+02
  %4528 = fmul fast float %4524, %4524
  %4529 = fmul fast float %4528, 1.000000e+02
  %4530 = fmul fast float %4525, %4525
  %4531 = fmul fast float %4530, 1.000000e+02
  %4532 = fadd fast float %4527, 3.500000e+00
  %4533 = fadd fast float %4529, 3.500000e+00
  %4534 = fadd fast float %4531, 3.500000e+00
  %4535 = call float @dx.op.binary.f32(i32 35, float %4517, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4536 = call float @dx.op.binary.f32(i32 35, float %4518, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4537 = call float @dx.op.binary.f32(i32 35, float %4519, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4538 = fdiv fast float %4532, %4535
  %4539 = fdiv fast float %4533, %4536
  %4540 = fdiv fast float %4534, %4537
  %4541 = fmul fast float %3858, 0xBFF7154760000000
  %4542 = fmul fast float %4541, %4538
  %4543 = call float @dx.op.unary.f32(i32 21, float %4542)  ; Exp(value)
  %4544 = fmul fast float %4543, 2.500000e-01
  %4545 = fmul fast float %3858, 0xBFDEC709E0000000
  %4546 = fmul fast float %4545, %4538
  %4547 = call float @dx.op.unary.f32(i32 21, float %4546)  ; Exp(value)
  %4548 = fmul fast float %4547, 7.500000e-01
  %4549 = fmul fast float %4541, %4539
  %4550 = call float @dx.op.unary.f32(i32 21, float %4549)  ; Exp(value)
  %4551 = fmul fast float %4550, 2.500000e-01
  %4552 = fmul fast float %4545, %4539
  %4553 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4554 = fmul fast float %4553, 7.500000e-01
  %4555 = fmul fast float %4541, %4540
  %4556 = call float @dx.op.unary.f32(i32 21, float %4555)  ; Exp(value)
  %4557 = fmul fast float %4556, 2.500000e-01
  %4558 = fmul fast float %4545, %4540
  %4559 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4560 = fmul fast float %4559, 7.500000e-01
  %4561 = fadd fast float %4544, %4548
  %4562 = fadd fast float %4551, %4554
  %4563 = fadd fast float %4557, %4560
  %4564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.i32 %4564, 3
  %4566 = and i32 %4565, 8
  %4567 = icmp ne i32 %4566, 0
  %4568 = call float @dx.op.binary.f32(i32 35, float %4485, float %4461)  ; FMax(a,b)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4486, float %4461)  ; FMax(a,b)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4487, float %4461)  ; FMax(a,b)
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4485, float %4486, float %4487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = select i1 %170, float %4461, float %4485
  %4573 = select i1 %170, float %4571, float %4486
  %4574 = select i1 %170, float 1.000000e+00, float %4487
  %4575 = select i1 %4567, float %4568, float %4572
  %4576 = select i1 %4567, float %4569, float %4573
  %4577 = select i1 %4567, float %4570, float %4574
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.CBufRet.f32 %4578, 2
  %4582 = fadd fast float %4579, %128
  %4583 = fadd fast float %4580, %129
  %4584 = fadd fast float %4581, %130
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4588 = fsub fast float %4582, %4586
  %4589 = fsub fast float %4583, %4587
  %4590 = fmul fast float %4588, %4588
  %4591 = fmul fast float %4589, %4589
  %4592 = fadd fast float %4590, %4591
  %4593 = call float @dx.op.unary.f32(i32 24, float %4592)  ; Sqrt(value)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4595 = fcmp fast olt float %4593, %4594
  br i1 %4595, label %4596, label %4663

; <label>:4596                                    ; preds = %4516
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 0
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4597, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4605 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4607 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4608 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4609 = fadd fast float %4606, %4582
  %4610 = fadd fast float %4607, %4583
  %4611 = fadd fast float %4608, %4584
  %4612 = fmul fast float %4609, %4598
  %4613 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4600, float %4612)  ; FMad(a,b,c)
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4602, float %4613)  ; FMad(a,b,c)
  %4615 = fmul fast float %4609, %4603
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4604, float %4615)  ; FMad(a,b,c)
  %4617 = call float @dx.op.tertiary.f32(i32 46, float %4611, float %4605, float %4616)  ; FMad(a,b,c)
  %4618 = fsub fast float %4614, %4606
  %4619 = fsub fast float %4617, %4607
  %4620 = fsub fast float %4618, %4586
  %4621 = fadd fast float %4620, %4594
  %4622 = fsub fast float %4619, %4587
  %4623 = fadd fast float %4622, %4594
  %4624 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %4625 = fmul fast float %4621, %4624
  %4626 = fmul fast float %4623, %4624
  %4627 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4629 = fsub fast float 1.000000e+00, %4627
  %4630 = fsub fast float 1.000000e+00, %4628
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = fcmp fast ugt float %4632, 0.000000e+00
  br i1 %4633, label %4634, label %4937

; <label>:4634                                    ; preds = %4596
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fmul fast float %4636, %4632
  %4638 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4639 = fadd fast float %4638, %4637
  %4640 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4641 = fadd fast float %4639, %4608
  %4642 = fmul fast float %4614, %4602
  %4643 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4605, float %4642)  ; FMad(a,b,c)
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4641, float %4640, float %4643)  ; FMad(a,b,c)
  %4645 = fsub fast float %4644, %4608
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4648 = fsub fast float %4645, %4647
  %4649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.ResRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.ResRet.f32 %4649, 2
  %4653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = fadd fast float %4654, %4650
  %4658 = fmul fast float %4657, 0x3F847AE140000000
  %4659 = fadd fast float %4655, %4651
  %4660 = fmul fast float %4659, 0x3F847AE140000000
  %4661 = fadd fast float %4656, %4652
  %4662 = fmul fast float %4661, 0x3F847AE140000000
  br label %4937

; <label>:4663                                    ; preds = %4516
  %4664 = and i32 %146, 1
  %4665 = icmp eq i32 %4664, 0
  br i1 %4665, label %4937, label %4666

; <label>:4666                                    ; preds = %4663
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 0
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 0
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4674 = extractvalue %dx.types.CBufRet.f32 %4669, 1
  %4675 = extractvalue %dx.types.CBufRet.f32 %4671, 1
  %4676 = extractvalue %dx.types.CBufRet.f32 %4667, 3
  %4677 = extractvalue %dx.types.CBufRet.f32 %4669, 3
  %4678 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4679 = fadd fast float %4676, %4582
  %4680 = fadd fast float %4677, %4583
  %4681 = fadd fast float %4678, %4584
  %4682 = fmul fast float %4679, %4668
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4670, float %4682)  ; FMad(a,b,c)
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4681, float %4672, float %4683)  ; FMad(a,b,c)
  %4685 = fmul fast float %4679, %4673
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4680, float %4674, float %4685)  ; FMad(a,b,c)
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4681, float %4675, float %4686)  ; FMad(a,b,c)
  %4688 = fsub fast float %4684, %4676
  %4689 = fsub fast float %4687, %4677
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4694 = extractvalue %dx.types.CBufRet.f32 %4690, 3
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 3
  %4697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.i32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.i32 %4697, 1
  %4700 = udiv i32 %4699, %4698
  %4701 = fsub fast float %4688, %4691
  %4702 = fsub fast float %4689, %4692
  %4703 = call float @dx.op.binary.f32(i32 35, float %4701, float 0.000000e+00)  ; FMax(a,b)
  %4704 = call float @dx.op.binary.f32(i32 35, float %4702, float 0.000000e+00)  ; FMax(a,b)
  %4705 = call float @dx.op.binary.f32(i32 36, float %4703, float %4693)  ; FMin(a,b)
  %4706 = call float @dx.op.binary.f32(i32 36, float %4704, float %4694)  ; FMin(a,b)
  %4707 = add i32 %4698, -1
  %4708 = add i32 %4700, -1
  %4709 = fmul fast float %4705, %4696
  %4710 = fmul fast float %4706, %4696
  %4711 = fptoui float %4709 to i32
  %4712 = fptoui float %4710 to i32
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4711, i32 %4707)  ; UMin(a,b)
  %4714 = call i32 @dx.op.binary.i32(i32 40, i32 %4712, i32 %4708)  ; UMin(a,b)
  %4715 = mul i32 %4714, %4698
  %4716 = add i32 %4715, %4713
  %4717 = shl i32 %4716, 2
  %4718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4717, i32 undef)  ; BufferLoad(srv,index,wot)
  %4719 = extractvalue %dx.types.ResRet.i32 %4718, 0
  %4720 = icmp eq i32 %4719, -1
  br i1 %4720, label %4937, label %4721

; <label>:4721                                    ; preds = %4666
  %4722 = mul i32 %4719, 148
  %4723 = add i32 %4722, 4
  %4724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4723, i32 undef)  ; BufferLoad(srv,index,wot)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = add i32 %4722, 8
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4722, 36
  %4730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = add i32 %4722, 60
  %4733 = add i32 %4722, 92
  %4734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4733, i32 undef)  ; BufferLoad(srv,index,wot)
  %4735 = extractvalue %dx.types.ResRet.i32 %4734, 0
  %4736 = add i32 %4722, 116
  %4737 = fsub fast float %4688, %4725
  %4738 = fsub fast float %4689, %4728
  %4739 = fmul fast float %4696, %4737
  %4740 = fmul fast float %4696, %4738
  %4741 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 2
  %4746 = call float @dx.op.unary.f32(i32 83, float %4741)  ; DerivCoarseX(value)
  %4747 = call float @dx.op.unary.f32(i32 83, float %4743)  ; DerivCoarseX(value)
  %4748 = call float @dx.op.unary.f32(i32 84, float %4741)  ; DerivCoarseY(value)
  %4749 = call float @dx.op.unary.f32(i32 84, float %4743)  ; DerivCoarseY(value)
  %4750 = fmul fast float %4746, %4745
  %4751 = fmul fast float %4747, %4745
  %4752 = fmul fast float %4748, %4745
  %4753 = fmul fast float %4749, %4745
  %4754 = call float @dx.op.dot2.f32(i32 54, float %4752, float %4753, float %4752, float %4753)  ; Dot2(ax,ay,bx,by)
  %4755 = call float @dx.op.dot2.f32(i32 54, float %4750, float %4751, float %4750, float %4751)  ; Dot2(ax,ay,bx,by)
  %4756 = call float @dx.op.binary.f32(i32 35, float %4755, float %4754)  ; FMax(a,b)
  %4757 = call float @dx.op.unary.f32(i32 23, float %4756)  ; Log(value)
  %4758 = fmul fast float %4757, 5.000000e-01
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4761 = fadd fast float %4760, %4758
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4765 = fadd fast float %4764, %4762
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 3
  %4768 = fadd fast float %4765, %4767
  %4769 = add i32 %4735, 0
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4770, i32 0)  ; GetDimensions(handle,mipLevel)
  %4772 = extractvalue %dx.types.Dimensions %4771, 0
  %4773 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4772)  ; FirstbitLo(value)
  %4774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.i32 %4774, 1
  %4776 = sub nsw i32 %4775, %4773
  %4777 = sitofp i32 %4776 to float
  %4778 = fsub fast float %4768, %4777
  %4779 = call float @dx.op.binary.f32(i32 35, float %4778, float 0.000000e+00)  ; FMax(a,b)
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4770, %dx.types.Handle %27, float %4741, float %4743, float %4731, float undef, i32 0, i32 0, i32 undef, float %4779)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = fcmp ule float %4781, 0x3FE0101020000000
  %4783 = extractvalue %dx.types.CBufRet.i32 %4774, 0
  %4784 = and i32 %4783, 128
  %4785 = icmp ne i32 %4784, 0
  %4786 = and i1 %4782, %4785
  br i1 %4786, label %4937, label %4787

; <label>:4787                                    ; preds = %4721
  %4788 = add i32 %4722, 20
  %4789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4788, i32 undef)  ; BufferLoad(srv,index,wot)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = add i32 %4722, 24
  %4792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4791, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = add i32 %4722, 40
  %4795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = add i32 %4722, 96
  %4798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.i32 %4798, 0
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4802 = fmul fast float %4801, %4741
  %4803 = fmul fast float %4801, %4743
  %4804 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4805 = fadd fast float %4802, %4804
  %4806 = fadd fast float %4803, %4804
  %4807 = add i32 %4799, 0
  %4808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4809 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4808, i32 0)  ; GetDimensions(handle,mipLevel)
  %4810 = extractvalue %dx.types.Dimensions %4809, 0
  %4811 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4810)  ; FirstbitLo(value)
  %4812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.i32 %4812, 1
  %4814 = sub nsw i32 %4813, %4811
  %4815 = sitofp i32 %4814 to float
  %4816 = fsub fast float %4765, %4815
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4808, %dx.types.Handle %27, float %4805, float %4806, float %4796, float undef, i32 0, i32 0, i32 undef, float %4817)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = fmul fast float %4819, %4790
  %4821 = fadd fast float %4820, %4793
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4830 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4831 = fadd fast float %4827, %4688
  %4832 = fadd fast float %4829, %4689
  %4833 = fadd fast float %4821, %4830
  %4834 = fmul fast float %4831, %4823
  %4835 = call float @dx.op.tertiary.f32(i32 46, float %4832, float %4824, float %4834)  ; FMad(a,b,c)
  %4836 = call float @dx.op.tertiary.f32(i32 46, float %4833, float %4825, float %4835)  ; FMad(a,b,c)
  %4837 = fsub fast float %4836, %4830
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4840 = fsub fast float %4837, %4839
  %4841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.i32 %4841, 0
  %4843 = call i32 @dx.op.binary.i32(i32 40, i32 %4719, i32 %4842)  ; UMin(a,b)
  %4844 = mul i32 %4843, 36
  %4845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4844, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.i32 %4845, 0
  %4847 = add i32 %4844, 4
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = fmul fast float %4849, %4741
  %4851 = fmul fast float %4849, %4743
  %4852 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4853 = fadd fast float %4850, %4852
  %4854 = fadd fast float %4851, %4852
  %4855 = icmp eq i32 %4846, 0
  br i1 %4855, label %4924, label %4856

; <label>:4856                                    ; preds = %4787
  br label %4857

; <label>:4857                                    ; preds = %4914, %4856
  %4858 = phi float [ %4915, %4914 ], [ 0.000000e+00, %4856 ]
  %4859 = phi float [ %4916, %4914 ], [ 0.000000e+00, %4856 ]
  %4860 = phi float [ %4917, %4914 ], [ 0.000000e+00, %4856 ]
  %4861 = phi float [ %4918, %4914 ], [ 0.000000e+00, %4856 ]
  %4862 = phi float [ %4919, %4914 ], [ 0.000000e+00, %4856 ]
  %4863 = phi float [ %4920, %4914 ], [ 0.000000e+00, %4856 ]
  %4864 = phi i32 [ %4921, %4914 ], [ 0, %4856 ]
  %4865 = shl i32 %4864, 2
  %4866 = add i32 %4732, %4865
  %4867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4866, i32 undef)  ; BufferLoad(srv,index,wot)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = add i32 %4736, %4865
  %4870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4869, i32 undef)  ; BufferLoad(srv,index,wot)
  %4871 = extractvalue %dx.types.ResRet.i32 %4870, 0
  %4872 = add i32 %4871, 0
  %4873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4872, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4874 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4873, i32 0)  ; GetDimensions(handle,mipLevel)
  %4875 = extractvalue %dx.types.Dimensions %4874, 0
  %4876 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4875)  ; FirstbitLo(value)
  %4877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.i32 %4877, 1
  %4879 = sub nsw i32 %4878, %4876
  %4880 = sitofp i32 %4879 to float
  %4881 = fsub fast float %4765, %4880
  %4882 = call float @dx.op.binary.f32(i32 35, float %4881, float 0.000000e+00)  ; FMax(a,b)
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4873, %dx.types.Handle %27, float %4853, float %4854, float %4868, float undef, i32 0, i32 0, i32 undef, float %4882)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = fcmp fast ogt float %4884, 0.000000e+00
  br i1 %4885, label %4886, label %4914

; <label>:4886                                    ; preds = %4857
  %4887 = add i32 %4847, %4865
  %4888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.i32 %4888, 0
  %4890 = and i32 %4889, 32767
  %4891 = mul nuw nsw i32 %4890, 928
  %4892 = add nuw nsw i32 %4891, 48
  %4893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.ResRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.ResRet.f32 %4893, 2
  %4897 = add nuw nsw i32 %4891, 60
  %4898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4897, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.ResRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.ResRet.f32 %4898, 2
  %4902 = fmul fast float %4894, %4884
  %4903 = fmul fast float %4895, %4884
  %4904 = fmul fast float %4896, %4884
  %4905 = fadd fast float %4902, %4858
  %4906 = fadd fast float %4903, %4859
  %4907 = fadd fast float %4904, %4860
  %4908 = fmul fast float %4899, %4884
  %4909 = fmul fast float %4900, %4884
  %4910 = fmul fast float %4901, %4884
  %4911 = fadd fast float %4908, %4861
  %4912 = fadd fast float %4909, %4862
  %4913 = fadd fast float %4910, %4863
  br label %4914

; <label>:4914                                    ; preds = %4886, %4857
  %4915 = phi float [ %4905, %4886 ], [ %4858, %4857 ]
  %4916 = phi float [ %4906, %4886 ], [ %4859, %4857 ]
  %4917 = phi float [ %4907, %4886 ], [ %4860, %4857 ]
  %4918 = phi float [ %4911, %4886 ], [ %4861, %4857 ]
  %4919 = phi float [ %4912, %4886 ], [ %4862, %4857 ]
  %4920 = phi float [ %4913, %4886 ], [ %4863, %4857 ]
  %4921 = add nuw i32 %4864, 1
  %4922 = icmp eq i32 %4921, %4846
  br i1 %4922, label %4923, label %4857

; <label>:4923                                    ; preds = %4914
  br label %4924

; <label>:4924                                    ; preds = %4923, %4787
  %4925 = phi float [ 0.000000e+00, %4787 ], [ %4915, %4923 ]
  %4926 = phi float [ 0.000000e+00, %4787 ], [ %4916, %4923 ]
  %4927 = phi float [ 0.000000e+00, %4787 ], [ %4917, %4923 ]
  %4928 = phi float [ 0.000000e+00, %4787 ], [ %4918, %4923 ]
  %4929 = phi float [ 0.000000e+00, %4787 ], [ %4919, %4923 ]
  %4930 = phi float [ 0.000000e+00, %4787 ], [ %4920, %4923 ]
  %4931 = fadd fast float %4928, %4925
  %4932 = fmul fast float %4931, 0x3F847AE140000000
  %4933 = fadd fast float %4929, %4926
  %4934 = fmul fast float %4933, 0x3F847AE140000000
  %4935 = fadd fast float %4930, %4927
  %4936 = fmul fast float %4935, 0x3F847AE140000000
  br label %4937

; <label>:4937                                    ; preds = %4924, %4721, %4666, %4663, %4634, %4596
  %4938 = phi float [ %4648, %4634 ], [ -1.310720e+05, %4596 ], [ %4840, %4924 ], [ -1.310720e+05, %4666 ], [ -1.310720e+05, %4721 ], [ -1.310720e+05, %4663 ]
  %4939 = phi float [ %4658, %4634 ], [ 0.000000e+00, %4596 ], [ %4932, %4924 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4721 ], [ 0.000000e+00, %4663 ]
  %4940 = phi float [ %4660, %4634 ], [ 0.000000e+00, %4596 ], [ %4934, %4924 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4721 ], [ 0.000000e+00, %4663 ]
  %4941 = phi float [ %4662, %4634 ], [ 0.000000e+00, %4596 ], [ %4936, %4924 ], [ 0.000000e+00, %4666 ], [ 0.000000e+00, %4721 ], [ 0.000000e+00, %4663 ]
  %4942 = phi i1 [ true, %4634 ], [ false, %4596 ], [ true, %4924 ], [ false, %4666 ], [ false, %4721 ], [ false, %4663 ]
  %4943 = and i32 %146, 3
  %4944 = icmp eq i32 %4943, 1
  %4945 = select i1 %4944, float 1.000000e+00, float 0.000000e+00
  %4946 = fsub fast float %4938, %130
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = select i1 %4942, float %4947, float 1.000000e+00
  %4949 = fmul fast float %4948, %4945
  %4950 = icmp eq i32 %4943, 3
  %4951 = select i1 %4950, float 1.000000e+00, float %4949
  %4952 = call float @dx.op.binary.f32(i32 35, float %4473, float %4951)  ; FMax(a,b)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fcmp fast une float %4953, 0.000000e+00
  %4955 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4956 = call float @dx.op.unary.f32(i32 25, float %4955)  ; Rsqrt(value)
  br i1 %4954, label %4964, label %4957

; <label>:4957                                    ; preds = %4937
  %4958 = fmul fast float %4956, %128
  %4959 = fmul fast float %4956, %129
  %4960 = fmul fast float %4956, %130
  %4961 = fsub fast float -0.000000e+00, %4958
  %4962 = fsub fast float -0.000000e+00, %4959
  %4963 = fsub fast float -0.000000e+00, %4960
  br label %5132

; <label>:4964                                    ; preds = %4937
  %4965 = fmul fast float %128, %4956
  %4966 = fsub fast float -0.000000e+00, %4965
  %4967 = fmul fast float %129, %4956
  %4968 = fsub fast float -0.000000e+00, %4967
  %4969 = fmul fast float %130, %4956
  %4970 = fsub fast float -0.000000e+00, %4969
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4968, float %4970, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = fmul fast float %4953, 2.500000e+00
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fmul fast float %4953, 0x4013FFFFE0000000
  %4975 = fadd fast float %4974, 0xBFFFFFFFE0000000
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4953, 0x4004000020000000
  %4978 = fadd fast float %4977, 0xBFF8000040000000
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4981 = fmul fast float %4476, 1.000000e+01
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4982, 2.000000e+00
  %4984 = fsub fast float 3.000000e+00, %4983
  %4985 = fmul fast float %4982, %4982
  %4986 = fmul fast float %4985, %4984
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = fsub fast float 0x3FE3333340000000, %4497
  %4989 = fmul fast float %4988, 0x400AAAAAA0000000
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fmul fast float %4987, %4990
  %4992 = fmul fast float %4575, 0x3FEA2B8620000000
  %4993 = fmul fast float %4576, 0x3FEA2B8620000000
  %4994 = fmul fast float %4577, 0x3FEA2B8620000000
  %4995 = fadd fast float %4992, 0x3FC81DFBA0000000
  %4996 = fmul fast float %4995, %4575
  %4997 = fadd fast float %4996, 0x3F910E6020000000
  %4998 = fadd fast float %4993, 0x3FC81DFBA0000000
  %4999 = fmul fast float %4998, %4576
  %5000 = fadd fast float %4999, 0x3F910E6020000000
  %5001 = fadd fast float %4994, 0x3FC81DFBA0000000
  %5002 = fmul fast float %5001, %4577
  %5003 = fadd fast float %5002, 0x3F910E6020000000
  %5004 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5005 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5007 = fsub fast float %5004, %4575
  %5008 = fsub fast float %5005, %4576
  %5009 = fsub fast float %5006, %4577
  %5010 = fmul fast float %5007, %4980
  %5011 = fmul fast float %5010, %4991
  %5012 = fmul fast float %5008, %4980
  %5013 = fmul fast float %5012, %4991
  %5014 = fmul fast float %5009, %4980
  %5015 = fmul fast float %5014, %4991
  %5016 = fadd fast float %5011, %4575
  %5017 = fadd fast float %5013, %4576
  %5018 = fadd fast float %5015, %4577
  %5019 = fmul fast float %4470, %4470
  %5020 = fmul fast float %5019, %5019
  %5021 = fadd fast float %4976, 1.000000e+00
  %5022 = fsub fast float %5021, %4991
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5026 = fsub fast float 1.000000e+00, %5020
  %5027 = call float @dx.op.binary.f32(i32 36, float %5023, float %5026)  ; FMin(a,b)
  %5028 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5027, float %5028)  ; FMax(a,b)
  %5030 = fadd fast float %5025, 0xBFE4CCCCC0000000
  %5031 = fmul fast float %5030, 0x4006DB6DA0000000
  %5032 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5033 = fmul fast float %5032, 2.000000e+00
  %5034 = fsub fast float 3.000000e+00, %5033
  %5035 = bitcast float %4494 to i32
  %5036 = ashr i32 %5035, 1
  %5037 = add nsw i32 %5036, 532487669
  %5038 = bitcast i32 %5037 to float
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = bitcast float %5039 to i32
  %5041 = sub nsw i32 2129859010, %5040
  %5042 = bitcast i32 %5041 to float
  %5043 = fmul fast float %5042, 2.000000e+00
  %5044 = bitcast float %4495 to i32
  %5045 = ashr i32 %5044, 1
  %5046 = add nsw i32 %5045, 532487669
  %5047 = bitcast i32 %5046 to float
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = bitcast float %5048 to i32
  %5050 = sub nsw i32 2129859010, %5049
  %5051 = bitcast i32 %5050 to float
  %5052 = fmul fast float %5051, 2.000000e+00
  %5053 = bitcast float %4496 to i32
  %5054 = ashr i32 %5053, 1
  %5055 = add nsw i32 %5054, 532487669
  %5056 = bitcast i32 %5055 to float
  %5057 = fsub fast float 1.000000e+00, %5056
  %5058 = bitcast float %5057 to i32
  %5059 = sub nsw i32 2129859010, %5058
  %5060 = bitcast i32 %5059 to float
  %5061 = fmul fast float %5060, 2.000000e+00
  %5062 = fsub fast float 0x4002A9FBE0000000, %5043
  %5063 = fadd fast float %5043, 0x3FD54FDF00000000
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = fmul fast float %5066, %5062
  %5068 = fmul fast float %5067, %5067
  %5069 = fsub fast float 0x4002A9FBE0000000, %5052
  %5070 = fadd fast float %5052, 0x3FD54FDF00000000
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = fmul fast float %5073, %5069
  %5075 = fmul fast float %5074, %5074
  %5076 = fsub fast float 0x4002A9FBE0000000, %5061
  %5077 = fadd fast float %5061, 0x3FD54FDF00000000
  %5078 = bitcast float %5077 to i32
  %5079 = sub nsw i32 2129859010, %5078
  %5080 = bitcast i32 %5079 to float
  %5081 = fmul fast float %5080, %5076
  %5082 = fmul fast float %5081, %5081
  %5083 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5068)  ; FMax(a,b)
  %5084 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5075)  ; FMax(a,b)
  %5085 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5082)  ; FMax(a,b)
  %5086 = fsub fast float 1.000000e+00, %4971
  %5087 = fadd fast float %5086, %4987
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fsub fast float 1.000000e+00, %4951
  %5090 = fmul fast float %5029, %5089
  %5091 = fmul fast float %5032, %5032
  %5092 = fmul fast float %5091, %5090
  %5093 = fmul fast float %5092, %5034
  %5094 = fmul fast float %5089, 0xBFE99999A0000000
  %5095 = fmul fast float %5094, %4980
  %5096 = fmul fast float %5095, %4991
  %5097 = fadd fast float %5096, 1.000000e+00
  %5098 = fadd fast float %4497, -1.000000e+00
  %5099 = fmul fast float %5097, %5098
  %5100 = fadd fast float %5099, 1.000000e+00
  %5101 = fsub fast float %5083, %4494
  %5102 = fsub fast float %5084, %4495
  %5103 = fsub fast float %5085, %4496
  %5104 = fmul fast float %5093, %5101
  %5105 = fmul fast float %5093, %5102
  %5106 = fmul fast float %5093, %5103
  %5107 = fadd fast float %5104, %4494
  %5108 = fadd fast float %5105, %4495
  %5109 = fadd fast float %5106, %4496
  %5110 = fsub fast float %80, %4455
  %5111 = fsub fast float %81, %4456
  %5112 = fsub fast float %82, %4457
  %5113 = fmul fast float %5093, %5110
  %5114 = fmul fast float %5093, %5111
  %5115 = fmul fast float %5093, %5112
  %5116 = fadd fast float %5113, %4455
  %5117 = fadd fast float %5114, %4456
  %5118 = fadd fast float %5115, %4457
  %5119 = fmul fast float %5093, %5088
  %5120 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = fmul fast float %5119, %5121
  %5123 = fadd fast float %5122, %5120
  %5124 = fsub fast float 1.000000e+00, %4470
  %5125 = fmul fast float %5093, %5124
  %5126 = fadd fast float %5125, %4470
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float %5116, float %5117, float %5118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call float @dx.op.unary.f32(i32 25, float %5127)  ; Rsqrt(value)
  %5129 = fmul fast float %5116, %5128
  %5130 = fmul fast float %5117, %5128
  %5131 = fmul fast float %5118, %5128
  br label %5132

; <label>:5132                                    ; preds = %4964, %4957
  %5133 = phi float [ %4963, %4957 ], [ %4970, %4964 ]
  %5134 = phi float [ %4962, %4957 ], [ %4968, %4964 ]
  %5135 = phi float [ %4961, %4957 ], [ %4966, %4964 ]
  %5136 = phi float [ %4960, %4957 ], [ %4969, %4964 ]
  %5137 = phi float [ %4959, %4957 ], [ %4967, %4964 ]
  %5138 = phi float [ %4958, %4957 ], [ %4965, %4964 ]
  %5139 = phi float [ %4494, %4957 ], [ %5107, %4964 ]
  %5140 = phi float [ %4495, %4957 ], [ %5108, %4964 ]
  %5141 = phi float [ %4496, %4957 ], [ %5109, %4964 ]
  %5142 = phi float [ %4575, %4957 ], [ %5016, %4964 ]
  %5143 = phi float [ %4576, %4957 ], [ %5017, %4964 ]
  %5144 = phi float [ %4577, %4957 ], [ %5018, %4964 ]
  %5145 = phi float [ %4455, %4957 ], [ %5129, %4964 ]
  %5146 = phi float [ %4456, %4957 ], [ %5130, %4964 ]
  %5147 = phi float [ %4457, %4957 ], [ %5131, %4964 ]
  %5148 = phi float [ %4497, %4957 ], [ %5123, %4964 ]
  %5149 = phi float [ %4470, %4957 ], [ %5126, %4964 ]
  %5150 = select i1 %170, float 0.000000e+00, float %5141
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %5135, float %5134, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5137, float %5136, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = fmul fast float %5153, 2.000000e+00
  %5155 = fmul fast float %5154, %5145
  %5156 = fmul fast float %5154, %5146
  %5157 = fmul fast float %5154, %5147
  %5158 = fsub fast float %5138, %5155
  %5159 = fsub fast float %5137, %5156
  %5160 = fsub fast float %5136, %5157
  %5161 = call float @dx.op.binary.f32(i32 36, float %5149, float 1.000000e+00)  ; FMin(a,b)
  %5162 = fsub fast float 1.000000e+00, %5149
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5167 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5168 = fcmp fast oeq float %5167, 0.000000e+00
  %5169 = fcmp fast oeq float %5166, 0.000000e+00
  %5170 = or i1 %5169, %5168
  br i1 %5170, label %5200, label %5171

; <label>:5171                                    ; preds = %5132
  %5172 = fsub fast float -0.000000e+00, %53
  %5173 = fsub fast float -0.000000e+00, %51
  %5174 = call float @dx.op.unary.f32(i32 24, float %5167)  ; Sqrt(value)
  %5175 = fdiv fast float %5174, %5166
  %5176 = fcmp fast ogt float %5175, 0x3FFB6F8900000000
  %5177 = select i1 %5176, float 0x3FFB6F8900000000, float %5175
  %5178 = fmul fast float %5177, 0x3FE8A23460000000
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = call float @dx.op.binary.f32(i32 35, float %5177, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5181 = fmul fast float %5179, %5166
  %5182 = fmul fast float %5180, 0x3FF279A740000000
  %5183 = fadd fast float %5182, -1.000000e+00
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %52, float %5172, float %5173, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = call float @dx.op.unary.f32(i32 25, float %5184)  ; Rsqrt(value)
  %5186 = fmul fast float %5185, %5172
  %5187 = fmul fast float %5185, %5173
  %5188 = fmul fast float %5185, %52
  %5189 = fmul fast float %5183, %5183
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5180, 0x40005F8BE0000000
  %5192 = fsub fast float 0x400C5BF8A0000000, %5191
  %5193 = fdiv fast float %5181, %5192
  %5194 = fmul fast float %5193, 0x3FEE31C3C0000000
  %5195 = fmul fast float %5194, %5190
  %5196 = fmul fast float %5180, 0x3FDACB7480000000
  %5197 = fadd fast float %5196, 0xBFD7347680000000
  %5198 = fmul fast float %5197, %5193
  %5199 = fmul fast float %5198, %5190
  br label %5200

; <label>:5200                                    ; preds = %5171, %5132
  %5201 = phi float [ %5186, %5171 ], [ 0.000000e+00, %5132 ]
  %5202 = phi float [ %5187, %5171 ], [ 0.000000e+00, %5132 ]
  %5203 = phi float [ %5188, %5171 ], [ 0.000000e+00, %5132 ]
  %5204 = phi float [ %5195, %5171 ], [ 0.000000e+00, %5132 ]
  %5205 = phi float [ %5199, %5171 ], [ 0.000000e+00, %5132 ]
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = fmul fast float %5206, 0x3FDF454380000000
  %5208 = fmul fast float %5206, %5206
  %5209 = fmul fast float %5208, 0x3FEE471020000000
  %5210 = fadd fast float %5209, 0xBFD42F6020000000
  %5211 = fmul fast float %5166, 0x3FD20DD760000000
  %5212 = fmul fast float %5210, %5205
  %5213 = fadd fast float %5212, %5211
  %5214 = fmul fast float %5207, %5204
  %5215 = fadd fast float %5213, %5214
  %5216 = fsub fast float %5213, %5214
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5158, float %5159, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = fmul fast float %5217, 0x3FDF454380000000
  %5219 = fmul fast float %5217, %5217
  %5220 = fmul fast float %5219, 0x3FEE471020000000
  %5221 = fadd fast float %5220, 0xBFD42F6020000000
  %5222 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5204, float %5205, float 0x3FD20DD760000000, float %5218, float %5221)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %5224 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = fcmp fast oeq float %5224, 0.000000e+00
  %5226 = fcmp fast oeq float %5223, 0.000000e+00
  %5227 = or i1 %5226, %5225
  br i1 %5227, label %5257, label %5228

; <label>:5228                                    ; preds = %5200
  %5229 = fsub fast float -0.000000e+00, %49
  %5230 = fsub fast float -0.000000e+00, %47
  %5231 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  %5232 = fdiv fast float %5231, %5223
  %5233 = fcmp fast ogt float %5232, 0x3FFB6F8900000000
  %5234 = select i1 %5233, float 0x3FFB6F8900000000, float %5232
  %5235 = fmul fast float %5234, 0x3FE8A23460000000
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call float @dx.op.binary.f32(i32 35, float %5234, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5238 = fmul fast float %5236, %5223
  %5239 = fmul fast float %5237, 0x3FF279A740000000
  %5240 = fadd fast float %5239, -1.000000e+00
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %48, float %5229, float %5230, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.unary.f32(i32 25, float %5241)  ; Rsqrt(value)
  %5243 = fmul fast float %5242, %5229
  %5244 = fmul fast float %5242, %5230
  %5245 = fmul fast float %5242, %48
  %5246 = fmul fast float %5240, %5240
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fmul fast float %5237, 0x40005F8BE0000000
  %5249 = fsub fast float 0x400C5BF8A0000000, %5248
  %5250 = fdiv fast float %5238, %5249
  %5251 = fmul fast float %5250, 0x3FEE31C3C0000000
  %5252 = fmul fast float %5251, %5247
  %5253 = fmul fast float %5237, 0x3FDACB7480000000
  %5254 = fadd fast float %5253, 0xBFD7347680000000
  %5255 = fmul fast float %5254, %5250
  %5256 = fmul fast float %5255, %5247
  br label %5257

; <label>:5257                                    ; preds = %5228, %5200
  %5258 = phi float [ %5243, %5228 ], [ 0.000000e+00, %5200 ]
  %5259 = phi float [ %5244, %5228 ], [ 0.000000e+00, %5200 ]
  %5260 = phi float [ %5245, %5228 ], [ 0.000000e+00, %5200 ]
  %5261 = phi float [ %5252, %5228 ], [ 0.000000e+00, %5200 ]
  %5262 = phi float [ %5256, %5228 ], [ 0.000000e+00, %5200 ]
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fmul fast float %5263, 0x3FDF454380000000
  %5265 = fmul fast float %5263, %5263
  %5266 = fmul fast float %5265, 0x3FEE471020000000
  %5267 = fadd fast float %5266, 0xBFD42F6020000000
  %5268 = fmul fast float %5223, 0x3FD20DD760000000
  %5269 = fmul fast float %5267, %5262
  %5270 = fadd fast float %5269, %5268
  %5271 = fmul fast float %5264, %5261
  %5272 = fadd fast float %5270, %5271
  %5273 = fsub fast float %5270, %5271
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5158, float %5159, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fmul fast float %5274, 0x3FDF454380000000
  %5276 = fmul fast float %5274, %5274
  %5277 = fmul fast float %5276, 0x3FEE471020000000
  %5278 = fadd fast float %5277, 0xBFD42F6020000000
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5261, float %5262, float 0x3FD20DD760000000, float %5275, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %5281 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fcmp fast oeq float %5281, 0.000000e+00
  %5283 = fcmp fast oeq float %5280, 0.000000e+00
  %5284 = or i1 %5283, %5282
  br i1 %5284, label %5314, label %5285

; <label>:5285                                    ; preds = %5257
  %5286 = fsub fast float -0.000000e+00, %45
  %5287 = fsub fast float -0.000000e+00, %43
  %5288 = call float @dx.op.unary.f32(i32 24, float %5281)  ; Sqrt(value)
  %5289 = fdiv fast float %5288, %5280
  %5290 = fcmp fast ogt float %5289, 0x3FFB6F8900000000
  %5291 = select i1 %5290, float 0x3FFB6F8900000000, float %5289
  %5292 = fmul fast float %5291, 0x3FE8A23460000000
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = call float @dx.op.binary.f32(i32 35, float %5291, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5295 = fmul fast float %5293, %5280
  %5296 = fmul fast float %5294, 0x3FF279A740000000
  %5297 = fadd fast float %5296, -1.000000e+00
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %44, float %5286, float %5287, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = call float @dx.op.unary.f32(i32 25, float %5298)  ; Rsqrt(value)
  %5300 = fmul fast float %5299, %5286
  %5301 = fmul fast float %5299, %5287
  %5302 = fmul fast float %5299, %44
  %5303 = fmul fast float %5297, %5297
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = fmul fast float %5294, 0x40005F8BE0000000
  %5306 = fsub fast float 0x400C5BF8A0000000, %5305
  %5307 = fdiv fast float %5295, %5306
  %5308 = fmul fast float %5307, 0x3FEE31C3C0000000
  %5309 = fmul fast float %5308, %5304
  %5310 = fmul fast float %5294, 0x3FDACB7480000000
  %5311 = fadd fast float %5310, 0xBFD7347680000000
  %5312 = fmul fast float %5311, %5307
  %5313 = fmul fast float %5312, %5304
  br label %5314

; <label>:5314                                    ; preds = %5285, %5257
  %5315 = phi float [ %5300, %5285 ], [ 0.000000e+00, %5257 ]
  %5316 = phi float [ %5301, %5285 ], [ 0.000000e+00, %5257 ]
  %5317 = phi float [ %5302, %5285 ], [ 0.000000e+00, %5257 ]
  %5318 = phi float [ %5309, %5285 ], [ 0.000000e+00, %5257 ]
  %5319 = phi float [ %5313, %5285 ], [ 0.000000e+00, %5257 ]
  %5320 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = fmul fast float %5320, 0x3FDF454380000000
  %5322 = fmul fast float %5320, %5320
  %5323 = fmul fast float %5322, 0x3FEE471020000000
  %5324 = fadd fast float %5323, 0xBFD42F6020000000
  %5325 = fmul fast float %5280, 0x3FD20DD760000000
  %5326 = fmul fast float %5324, %5319
  %5327 = fadd fast float %5326, %5325
  %5328 = fmul fast float %5321, %5318
  %5329 = fadd fast float %5327, %5328
  %5330 = fsub fast float %5327, %5328
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5158, float %5159, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = fmul fast float %5331, 0x3FDF454380000000
  %5333 = fmul fast float %5331, %5331
  %5334 = fmul fast float %5333, 0x3FEE471020000000
  %5335 = fadd fast float %5334, 0xBFD42F6020000000
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5280, float %5318, float %5319, float 0x3FD20DD760000000, float %5332, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = call float @dx.op.binary.f32(i32 35, float %5215, float 0.000000e+00)  ; FMax(a,b)
  %5338 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5329, float 0.000000e+00)  ; FMax(a,b)
  %5340 = call float @dx.op.binary.f32(i32 35, float %5216, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5342 = call float @dx.op.binary.f32(i32 35, float %5330, float 0.000000e+00)  ; FMax(a,b)
  %5343 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5344 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float %5336, float 0.000000e+00)  ; FMax(a,b)
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = call float @dx.op.binary.f32(i32 36, float %5142, float %5347)  ; FMin(a,b)
  %5349 = fsub fast float 1.000000e+00, %5161
  %5350 = fmul fast float %5348, %5349
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = call float @dx.op.binary.f32(i32 36, float %5143, float %5347)  ; FMin(a,b)
  %5356 = fmul fast float %5355, %5349
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = call float @dx.op.binary.f32(i32 36, float %5144, float %5347)  ; FMin(a,b)
  %5362 = fmul fast float %5361, %5349
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = fmul fast float %5337, %5161
  %5368 = fmul fast float %5367, %5354
  %5369 = fmul fast float %5338, %5161
  %5370 = fmul fast float %5369, %5360
  %5371 = fmul fast float %5339, %5161
  %5372 = fmul fast float %5371, %5366
  %5373 = call float @dx.op.binary.f32(i32 36, float %5139, float %5347)  ; FMin(a,b)
  %5374 = fmul fast float %5373, %5349
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = call float @dx.op.binary.f32(i32 36, float %5140, float %5347)  ; FMin(a,b)
  %5380 = fmul fast float %5379, %5349
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = bitcast float %5381 to i32
  %5383 = sub nsw i32 2129859010, %5382
  %5384 = bitcast i32 %5383 to float
  %5385 = call float @dx.op.binary.f32(i32 36, float %5150, float %5347)  ; FMin(a,b)
  %5386 = fmul fast float %5385, %5349
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5343, %5161
  %5392 = fmul fast float %5391, %5378
  %5393 = fmul fast float %5344, %5161
  %5394 = fmul fast float %5393, %5384
  %5395 = fmul fast float %5345, %5161
  %5396 = fmul fast float %5395, %5390
  %5397 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5370, float %5372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = select i1 %170, float 0.000000e+00, float %5368
  %5399 = select i1 %170, float %5397, float %5370
  %5400 = select i1 %170, float 0.000000e+00, float %5372
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %5342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = select i1 %170, float 0.000000e+00, float %5340
  %5403 = select i1 %170, float %5401, float %5341
  %5404 = select i1 %170, float 0.000000e+00, float %5342
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5394, float %5396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = select i1 %170, float 0.000000e+00, float %5392
  %5407 = select i1 %170, float %5405, float %5394
  %5408 = select i1 %170, float 0.000000e+00, float %5396
  %5409 = fmul fast float %5152, 9.843750e-01
  %5410 = fmul fast float %5148, 9.843750e-01
  %5411 = fadd fast float %5409, 7.812500e-03
  %5412 = fadd fast float %5410, 7.812500e-03
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5411, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 3
  %5416 = fmul fast float %5414, %5139
  %5417 = fmul fast float %5414, %5140
  %5418 = fmul fast float %5414, %5150
  %5419 = fadd fast float %5416, %5415
  %5420 = fadd fast float %5417, %5415
  %5421 = fadd fast float %5418, %5415
  %5422 = fcmp fast ogt float %4471, 0.000000e+00
  br i1 %5422, label %5423, label %5449

; <label>:5423                                    ; preds = %5314
  %5424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %5152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fadd fast float %5426, -5.000000e-01
  %5430 = fadd fast float %5427, -5.000000e-01
  %5431 = fsub fast float 1.000000e+00, %5139
  %5432 = fsub fast float 1.000000e+00, %5140
  %5433 = fsub fast float 1.000000e+00, %5150
  %5434 = fmul fast float %5139, 4.000000e+00
  %5435 = fmul fast float %5434, %5431
  %5436 = fmul fast float %5435, %5428
  %5437 = fmul fast float %5140, 4.000000e+00
  %5438 = fmul fast float %5437, %5432
  %5439 = fmul fast float %5438, %5429
  %5440 = fmul fast float %5150, 4.000000e+00
  %5441 = fmul fast float %5440, %5433
  %5442 = fmul fast float %5441, %5430
  %5443 = fadd fast float %5436, %5419
  %5444 = fadd fast float %5439, %5420
  %5445 = fadd fast float %5442, %5421
  %5446 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  br label %5449

; <label>:5449                                    ; preds = %5423, %5314
  %5450 = phi float [ %5446, %5423 ], [ %5419, %5314 ]
  %5451 = phi float [ %5447, %5423 ], [ %5420, %5314 ]
  %5452 = phi float [ %5448, %5423 ], [ %5421, %5314 ]
  %5453 = call float @dx.op.binary.f32(i32 35, float %5451, float %5452)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5450, float %5453)  ; FMax(a,b)
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5143, float %5144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fcmp fast ogt float %5456, 0x3E7FF19E20000000
  %5458 = fdiv fast float 1.000000e+00, %5456
  %5459 = select i1 %5457, float %5458, float 0.000000e+00
  %5460 = fmul fast float %5459, %5142
  %5461 = fmul fast float %5459, %5143
  %5462 = fmul fast float %5459, %5144
  %5463 = fadd fast float %5460, -1.000000e+00
  %5464 = fadd fast float %5461, -1.000000e+00
  %5465 = fadd fast float %5462, -1.000000e+00
  %5466 = fmul fast float %5463, 5.000000e-01
  %5467 = fmul fast float %5464, 5.000000e-01
  %5468 = fmul fast float %5465, 5.000000e-01
  %5469 = fadd fast float %5466, 1.000000e+00
  %5470 = fadd fast float %5467, 1.000000e+00
  %5471 = fadd fast float %5468, 1.000000e+00
  %5472 = fmul fast float %5450, %5406
  %5473 = fmul fast float %5451, %5407
  %5474 = fmul fast float %5452, %5408
  %5475 = fsub fast float 1.000000e+00, %5152
  %5476 = bitcast float %5475 to i32
  %5477 = sitofp i32 %5476 to float
  %5478 = fmul fast float %5477, 5.000000e+00
  %5479 = fadd fast float %5478, 0xC1EFBF8940000000
  %5480 = fptosi float %5479 to i32
  %5481 = bitcast i32 %5480 to float
  %5482 = fmul fast float %5481, %4472
  %5483 = fmul fast float %5398, %5482
  %5484 = fmul fast float %5483, %5455
  %5485 = fmul fast float %5484, %5469
  %5486 = fmul fast float %5399, %5482
  %5487 = fmul fast float %5486, %5455
  %5488 = fmul fast float %5487, %5470
  %5489 = fmul fast float %5400, %5482
  %5490 = fmul fast float %5489, %5455
  %5491 = fmul fast float %5490, %5471
  %5492 = fadd fast float %5472, %4458
  %5493 = fadd fast float %5492, %5485
  %5494 = fmul fast float %5493, %4468
  %5495 = fadd fast float %5473, %4459
  %5496 = fadd fast float %5495, %5488
  %5497 = fmul fast float %5496, %4468
  %5498 = fadd fast float %5474, %4460
  %5499 = fadd fast float %5498, %5491
  %5500 = fmul fast float %5499, %4468
  %5501 = fmul fast float %5455, %5400
  %5502 = fmul fast float %5455, %5399
  %5503 = fmul fast float %5455, %5398
  %5504 = fmul fast float %5455, %4563
  %5505 = fadd fast float %5504, -1.000000e+00
  %5506 = fmul fast float %5505, %4468
  %5507 = fadd fast float %5506, 1.000000e+00
  %5508 = fmul fast float %5455, %4562
  %5509 = fadd fast float %5508, -1.000000e+00
  %5510 = fmul fast float %5509, %4468
  %5511 = fadd fast float %5510, 1.000000e+00
  %5512 = fmul fast float %5455, %4561
  %5513 = fadd fast float %5512, -1.000000e+00
  %5514 = fmul fast float %5513, %4468
  %5515 = fadd fast float %5514, 1.000000e+00
  %5516 = fmul fast float %5515, %5402
  %5517 = fmul fast float %5511, %5403
  %5518 = fmul fast float %5507, %5404
  %5519 = fadd fast float %5516, %5503
  %5520 = fmul fast float %5519, %4468
  %5521 = fadd fast float %5517, %5502
  %5522 = fmul fast float %5521, %4468
  %5523 = fadd fast float %5518, %5501
  %5524 = fmul fast float %5523, %4468
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5527 = fcmp fast oeq float %5526, 0.000000e+00
  br i1 %5527, label %5809, label %5528

; <label>:5528                                    ; preds = %5449
  %5529 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5530 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5531 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 0
  %5534 = extractvalue %dx.types.CBufRet.f32 %5532, 1
  %5535 = extractvalue %dx.types.CBufRet.f32 %5532, 2
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = select i1 %170, float %5537, float %5533
  %5541 = select i1 %170, float %5539, float %5534
  %5542 = select i1 %170, float %5538, float %5535
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5545 = fcmp fast une float %5544, 0.000000e+00
  br i1 %5545, label %5546, label %5563

; <label>:5546                                    ; preds = %5528
  %5547 = fptoui float %73 to i32
  %5548 = fptoui float %74 to i32
  %5549 = lshr i32 %5547, 4
  %5550 = lshr i32 %5548, 4
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = fptoui float %5552 to i32
  %5554 = add i32 %5553, 15
  %5555 = lshr i32 %5554, 4
  %5556 = mul i32 %5555, %5550
  %5557 = add i32 %5556, %5549
  %5558 = shl i32 %5557, 3
  %5559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.i32 %5559, 0
  %5561 = and i32 %5560, -268435456
  %5562 = icmp eq i32 %5561, -1342177280
  br i1 %5562, label %5573, label %5563

; <label>:5563                                    ; preds = %5546, %5528
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 2
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 3
  %5567 = fmul fast float %5565, %73
  %5568 = fmul fast float %5566, %74
  %5569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5567, float %5568, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  br label %5573

; <label>:5573                                    ; preds = %5563, %5546
  %5574 = phi float [ %5570, %5563 ], [ 0.000000e+00, %5546 ]
  %5575 = phi float [ %5571, %5563 ], [ 0.000000e+00, %5546 ]
  %5576 = phi float [ %5572, %5563 ], [ 0.000000e+00, %5546 ]
  %5577 = call float @dx.op.binary.f32(i32 36, float %5575, float %5576)  ; FMin(a,b)
  %5578 = call float @dx.op.binary.f32(i32 36, float %5574, float %5577)  ; FMin(a,b)
  %5579 = fcmp fast ogt float %5578, 0.000000e+00
  br i1 %5579, label %5580, label %5809, !dx.controlflow.hints !73

; <label>:5580                                    ; preds = %5573
  %5581 = fmul fast float %5574, %5540
  %5582 = fmul fast float %5575, %5541
  %5583 = fmul fast float %5576, %5542
  %5584 = fsub fast float %5529, %5138
  %5585 = fsub fast float %5530, %5137
  %5586 = fsub fast float %5531, %5136
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.unary.f32(i32 25, float %5587)  ; Rsqrt(value)
  %5589 = fmul fast float %5588, %5584
  %5590 = fmul fast float %5588, %5585
  %5591 = fmul fast float %5588, %5586
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5531, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5134, float %5133, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5595 = fmul fast float %5594, %5594
  %5596 = fmul fast float %5595, %5165
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5597, %5594
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %5599, %5599
  %5601 = call float @dx.op.unary.f32(i32 6, float %5592)  ; FAbs(value)
  %5602 = fsub fast float 1.000000e+00, %5148
  %5603 = call float @dx.op.binary.f32(i32 35, float %5602, float 0x3F847AE140000000)  ; FMax(a,b)
  %5604 = fmul fast float %5603, %5603
  %5605 = fmul fast float %5604, %5604
  %5606 = fsub fast float 1.000000e+00, %5605
  %5607 = fmul fast float %5152, %5152
  %5608 = fmul fast float %5607, %5606
  %5609 = fadd fast float %5608, %5605
  %5610 = bitcast float %5609 to i32
  %5611 = ashr i32 %5610, 1
  %5612 = add nsw i32 %5611, 532487669
  %5613 = bitcast i32 %5612 to float
  %5614 = fadd fast float %5613, %5152
  %5615 = fmul fast float %5605, %5600
  %5616 = fsub fast float 1.000000e+00, %5600
  %5617 = fadd fast float %5616, %5615
  %5618 = fmul fast float %5601, %5601
  %5619 = fmul fast float %5618, %5606
  %5620 = fadd fast float %5619, %5605
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fadd fast float %5624, %5601
  %5626 = fmul fast float %5617, %5617
  %5627 = fmul fast float %5626, %5614
  %5628 = fmul fast float %5627, %5625
  %5629 = fdiv fast float 0x3FF0A00000000000, %5628
  %5630 = fmul fast float %5629, %5605
  %5631 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = bitcast float %5632 to i32
  %5634 = sitofp i32 %5633 to float
  %5635 = fmul fast float %5634, 5.000000e+00
  %5636 = fadd fast float %5635, 0xC1EFBF8940000000
  %5637 = fptosi float %5636 to i32
  %5638 = bitcast i32 %5637 to float
  %5639 = fsub fast float 1.000000e+00, %5139
  %5640 = fsub fast float 1.000000e+00, %5140
  %5641 = fsub fast float 1.000000e+00, %5150
  %5642 = fmul fast float %5638, %5639
  %5643 = fmul fast float %5638, %5640
  %5644 = fmul fast float %5638, %5641
  %5645 = fadd fast float %5642, %5139
  %5646 = fadd fast float %5643, %5140
  %5647 = fadd fast float %5644, %5150
  br i1 %5422, label %5648, label %5671

; <label>:5648                                    ; preds = %5580
  %5649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %5631, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5653 = fadd fast float %5650, -5.000000e-01
  %5654 = fadd fast float %5651, -5.000000e-01
  %5655 = fadd fast float %5652, -5.000000e-01
  %5656 = fmul fast float %5139, 4.000000e+00
  %5657 = fmul fast float %5656, %5639
  %5658 = fmul fast float %5657, %5653
  %5659 = fmul fast float %5140, 4.000000e+00
  %5660 = fmul fast float %5659, %5640
  %5661 = fmul fast float %5660, %5654
  %5662 = fmul fast float %5150, 4.000000e+00
  %5663 = fmul fast float %5662, %5641
  %5664 = fmul fast float %5663, %5655
  %5665 = fadd fast float %5658, %5645
  %5666 = fadd fast float %5661, %5646
  %5667 = fadd fast float %5664, %5647
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  br label %5671

; <label>:5671                                    ; preds = %5648, %5580
  %5672 = phi float [ %5668, %5648 ], [ %5645, %5580 ]
  %5673 = phi float [ %5669, %5648 ], [ %5646, %5580 ]
  %5674 = phi float [ %5670, %5648 ], [ %5647, %5580 ]
  %5675 = fmul fast float %5592, 9.843750e-01
  %5676 = fadd fast float %5675, 7.812500e-03
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5676, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.ResRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %5139
  %5681 = fmul fast float %5678, %5140
  %5682 = fmul fast float %5678, %5150
  %5683 = fadd fast float %5680, %5679
  %5684 = fadd fast float %5681, %5679
  %5685 = fadd fast float %5682, %5679
  br i1 %5422, label %5686, label %5709

; <label>:5686                                    ; preds = %5671
  %5687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %5592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.ResRet.f32 %5687, 2
  %5691 = fadd fast float %5688, -5.000000e-01
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fadd fast float %5690, -5.000000e-01
  %5694 = fmul fast float %5139, 4.000000e+00
  %5695 = fmul fast float %5694, %5639
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %5140, 4.000000e+00
  %5698 = fmul fast float %5697, %5640
  %5699 = fmul fast float %5698, %5692
  %5700 = fmul fast float %5150, 4.000000e+00
  %5701 = fmul fast float %5700, %5641
  %5702 = fmul fast float %5701, %5693
  %5703 = fadd fast float %5696, %5683
  %5704 = fadd fast float %5699, %5684
  %5705 = fadd fast float %5702, %5685
  %5706 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  br label %5709

; <label>:5709                                    ; preds = %5686, %5671
  %5710 = phi float [ %5706, %5686 ], [ %5683, %5671 ]
  %5711 = phi float [ %5707, %5686 ], [ %5684, %5671 ]
  %5712 = phi float [ %5708, %5686 ], [ %5685, %5671 ]
  %5713 = call float @dx.op.binary.f32(i32 35, float %5711, float %5712)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 35, float %5710, float %5713)  ; FMax(a,b)
  %5715 = fsub fast float 1.000000e+00, %5714
  %5716 = fsub fast float -0.000000e+00, %5145
  %5717 = fsub fast float -0.000000e+00, %5146
  %5718 = fsub fast float -0.000000e+00, %5147
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5531, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5721 = fmul fast float %5720, 9.843750e-01
  %5722 = fadd fast float %5721, 7.812500e-03
  %5723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5722, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 3
  %5726 = fmul fast float %5724, %5139
  %5727 = fmul fast float %5724, %5140
  %5728 = fmul fast float %5724, %5150
  %5729 = fadd fast float %5726, %5725
  %5730 = fadd fast float %5727, %5725
  %5731 = fadd fast float %5728, %5725
  br i1 %5422, label %5732, label %5755

; <label>:5732                                    ; preds = %5709
  %5733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %5720, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5737 = fadd fast float %5734, -5.000000e-01
  %5738 = fadd fast float %5735, -5.000000e-01
  %5739 = fadd fast float %5736, -5.000000e-01
  %5740 = fmul fast float %5139, 4.000000e+00
  %5741 = fmul fast float %5740, %5639
  %5742 = fmul fast float %5741, %5737
  %5743 = fmul fast float %5140, 4.000000e+00
  %5744 = fmul fast float %5743, %5640
  %5745 = fmul fast float %5744, %5738
  %5746 = fmul fast float %5150, 4.000000e+00
  %5747 = fmul fast float %5746, %5641
  %5748 = fmul fast float %5747, %5739
  %5749 = fadd fast float %5742, %5729
  %5750 = fadd fast float %5745, %5730
  %5751 = fadd fast float %5748, %5731
  %5752 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5753 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5754 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  br label %5755

; <label>:5755                                    ; preds = %5732, %5709
  %5756 = phi float [ %5752, %5732 ], [ %5729, %5709 ]
  %5757 = phi float [ %5753, %5732 ], [ %5730, %5709 ]
  %5758 = phi float [ %5754, %5732 ], [ %5731, %5709 ]
  %5759 = call float @dx.op.binary.f32(i32 35, float %5757, float %5758)  ; FMax(a,b)
  %5760 = call float @dx.op.binary.f32(i32 35, float %5756, float %5759)  ; FMax(a,b)
  %5761 = fsub fast float 1.000000e+00, %5760
  %5762 = fmul fast float %5761, %5720
  %5763 = fmul fast float %5762, %4561
  %5764 = fmul fast float %5762, %4562
  %5765 = fmul fast float %5762, %4563
  %5766 = fmul fast float %5672, %5630
  %5767 = fmul fast float %5673, %5630
  %5768 = fmul fast float %5674, %5630
  %5769 = fsub fast float 1.000000e+00, %5593
  %5770 = bitcast float %5769 to i32
  %5771 = sitofp i32 %5770 to float
  %5772 = fmul fast float %5771, 5.000000e+00
  %5773 = fadd fast float %5772, 0xC1EFBF8940000000
  %5774 = fptosi float %5773 to i32
  %5775 = bitcast i32 %5774 to float
  %5776 = fmul fast float %5775, %4472
  %5777 = fmul fast float %5715, %5776
  %5778 = fmul fast float %5777, %5469
  %5779 = fmul fast float %5777, %5470
  %5780 = fmul fast float %5777, %5471
  %5781 = fmul fast float %5715, %5598
  %5782 = fadd fast float %5778, %5766
  %5783 = fadd fast float %5779, %5767
  %5784 = fadd fast float %5780, %5768
  %5785 = fadd fast float %5763, %5781
  %5786 = fadd fast float %5764, %5781
  %5787 = fadd fast float %5765, %5781
  %5788 = fmul fast float %5785, %5581
  %5789 = fmul fast float %5786, %5582
  %5790 = fmul fast float %5787, %5583
  %5791 = fmul fast float %5598, %5581
  %5792 = fmul fast float %5791, %5782
  %5793 = fmul fast float %5598, %5582
  %5794 = fmul fast float %5793, %5783
  %5795 = fmul fast float %5598, %5583
  %5796 = fmul fast float %5795, %5784
  %5797 = fadd fast float %5788, %5519
  %5798 = fmul fast float %5797, %4468
  %5799 = fadd fast float %5789, %5521
  %5800 = fmul fast float %5799, %4468
  %5801 = fadd fast float %5790, %5523
  %5802 = fmul fast float %5801, %4468
  %5803 = fadd fast float %5792, %5493
  %5804 = fmul fast float %5803, %4468
  %5805 = fadd fast float %5794, %5496
  %5806 = fmul fast float %5805, %4468
  %5807 = fadd fast float %5796, %5499
  %5808 = fmul fast float %5807, %4468
  br label %5809

; <label>:5809                                    ; preds = %5755, %5573, %5449
  %5810 = phi float [ %5494, %5449 ], [ %5494, %5573 ], [ %5804, %5755 ]
  %5811 = phi float [ %5497, %5449 ], [ %5497, %5573 ], [ %5806, %5755 ]
  %5812 = phi float [ %5500, %5449 ], [ %5500, %5573 ], [ %5808, %5755 ]
  %5813 = phi float [ %5520, %5449 ], [ %5520, %5573 ], [ %5798, %5755 ]
  %5814 = phi float [ %5522, %5449 ], [ %5522, %5573 ], [ %5800, %5755 ]
  %5815 = phi float [ %5524, %5449 ], [ %5524, %5573 ], [ %5802, %5755 ]
  %5816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.i32 %5816, 0
  %5818 = icmp eq i32 %5817, 0
  br i1 %5818, label %6308, label %5819

; <label>:5819                                    ; preds = %5809
  %5820 = fptoui float %73 to i32
  %5821 = fptoui float %74 to i32
  %5822 = lshr i32 %5820, 4
  %5823 = lshr i32 %5821, 4
  %5824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.i32 %5824, 0
  %5826 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5823, i32 %5825, i32 %5822)  ; UMad(a,b,c)
  %5827 = add nsw i32 %5817, -1
  %5828 = call i32 @dx.op.binary.i32(i32 37, i32 %5827, i32 0)  ; IMax(a,b)
  %5829 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %5830 = fptoui float %5829 to i32
  %5831 = lshr i32 %5830, 5
  %5832 = call i32 @dx.op.binary.i32(i32 40, i32 %5831, i32 8191)  ; UMin(a,b)
  %5833 = shl i32 %5832, 2
  %5834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.i32 %5834, 0
  %5836 = lshr i32 %5835, 16
  %5837 = and i32 %5835, 65535
  %5838 = lshr i32 %5835, 21
  %5839 = lshr i32 %5837, 5
  %5840 = call i32 @dx.op.binary.i32(i32 40, i32 %5839, i32 %5828)  ; UMin(a,b)
  %5841 = icmp ugt i32 %5838, %5840
  br i1 %5841, label %6308, label %5842

; <label>:5842                                    ; preds = %5819
  br label %5843

; <label>:5843                                    ; preds = %6298, %5842
  %5844 = phi i32 [ %6305, %6298 ], [ %5838, %5842 ]
  %5845 = phi float [ %6299, %6298 ], [ %5810, %5842 ]
  %5846 = phi float [ %6300, %6298 ], [ %5811, %5842 ]
  %5847 = phi float [ %6301, %6298 ], [ %5812, %5842 ]
  %5848 = phi float [ %6302, %6298 ], [ %5813, %5842 ]
  %5849 = phi float [ %6303, %6298 ], [ %5814, %5842 ]
  %5850 = phi float [ %6304, %6298 ], [ %5815, %5842 ]
  %5851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.i32 %5851, 0
  %5853 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5826, i32 %5852, i32 %5844)  ; UMad(a,b,c)
  %5854 = shl i32 %5853, 2
  %5855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5854, i32 undef)  ; BufferLoad(srv,index,wot)
  %5856 = extractvalue %dx.types.ResRet.i32 %5855, 0
  %5857 = shl i32 %5844, 5
  %5858 = sub nsw i32 %5836, %5857
  %5859 = call i32 @dx.op.binary.i32(i32 37, i32 %5858, i32 0)  ; IMax(a,b)
  %5860 = call i32 @dx.op.binary.i32(i32 38, i32 %5859, i32 31)  ; IMin(a,b)
  %5861 = sub nsw i32 1, %5836
  %5862 = add nsw i32 %5861, %5837
  %5863 = call i32 @dx.op.binary.i32(i32 37, i32 %5862, i32 0)  ; IMax(a,b)
  %5864 = call i32 @dx.op.binary.i32(i32 38, i32 %5863, i32 32)  ; IMin(a,b)
  %5865 = and i32 %5864, 31
  %5866 = shl i32 -1, %5865
  %5867 = xor i32 %5866, -1
  %5868 = and i32 %5860, 31
  %5869 = shl i32 %5867, %5868
  %5870 = icmp eq i32 %5864, 32
  %5871 = select i1 %5870, i32 -1, i32 %5869
  %5872 = and i32 %5871, %5856
  %5873 = icmp eq i32 %5872, 0
  br i1 %5873, label %6298, label %5874

; <label>:5874                                    ; preds = %5843
  br label %5875

; <label>:5875                                    ; preds = %5955, %5874
  %5876 = phi i32 [ %5887, %5955 ], [ %5872, %5874 ]
  %5877 = phi float [ %5956, %5955 ], [ %5845, %5874 ]
  %5878 = phi float [ %5957, %5955 ], [ %5846, %5874 ]
  %5879 = phi float [ %5958, %5955 ], [ %5847, %5874 ]
  %5880 = phi float [ %5959, %5955 ], [ %5848, %5874 ]
  %5881 = phi float [ %5960, %5955 ], [ %5849, %5874 ]
  %5882 = phi float [ %5961, %5955 ], [ %5850, %5874 ]
  %5883 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5876)  ; FirstbitLo(value)
  %5884 = add i32 %5883, %5857
  %5885 = and i32 %5883, 31
  %5886 = shl i32 1, %5885
  %5887 = xor i32 %5886, %5876
  %5888 = mul i32 %5884, 112
  %5889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5888, i32 undef)  ; BufferLoad(srv,index,wot)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.ResRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.ResRet.f32 %5889, 2
  %5893 = or i32 %5888, 12
  %5894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = add i32 %5888, 44
  %5897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5896, i32 undef)  ; BufferLoad(srv,index,wot)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = add i32 %5888, 48
  %5900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.ResRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.ResRet.f32 %5900, 2
  %5904 = add i32 %5888, 80
  %5905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5904, i32 undef)  ; BufferLoad(srv,index,wot)
  %5906 = extractvalue %dx.types.ResRet.f32 %5905, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5905, 2
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5891, float %5892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = select i1 %170, float %5906, float %5890
  %5910 = select i1 %170, float %5908, float %5891
  %5911 = select i1 %170, float %5907, float %5892
  %5912 = fsub fast float %5901, %128
  %5913 = fsub fast float %5902, %129
  %5914 = fsub fast float %5903, %130
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5912, float %5913, float %5914)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = call float @dx.op.unary.f32(i32 24, float %5915)  ; Sqrt(value)
  %5917 = fdiv fast float 1.000000e+00, %5916
  %5918 = fmul fast float %5917, %5912
  %5919 = fmul fast float %5917, %5913
  %5920 = fmul fast float %5917, %5914
  %5921 = fadd fast float %5916, %5895
  %5922 = fdiv fast float 1.000000e+00, %5921
  %5923 = fmul float %5898, %5922
  %5924 = fmul float %5923, %5923
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = and i32 %5886, %5872
  %5927 = icmp eq i32 %5926, 0
  br i1 %5927, label %5950, label %5928, !dx.controlflow.hints !74

; <label>:5928                                    ; preds = %5875
  %5929 = lshr i32 %5820, 5
  %5930 = lshr i32 %5821, 5
  %5931 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5929, i32 %5930, i32 %5884, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = and i32 %5932, 3
  %5934 = icmp eq i32 %5933, 0
  %5935 = select i1 %5934, float 1.000000e+00, float 0.000000e+00
  %5936 = icmp eq i32 %5933, 3
  br i1 %5936, label %5937, label %5950

; <label>:5937                                    ; preds = %5928
  %5938 = lshr i32 %5932, 10
  %5939 = and i32 %5938, 8160
  %5940 = and i32 %5821, 31
  %5941 = or i32 %5939, %5940
  %5942 = lshr i32 %5932, 1
  %5943 = and i32 %5942, 16352
  %5944 = and i32 %5820, 31
  %5945 = or i32 %5943, %5944
  %5946 = lshr i32 %5932, 23
  %5947 = and i32 %5946, 255
  %5948 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5945, i32 %5941, i32 %5947, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  br label %5950

; <label>:5950                                    ; preds = %5937, %5928, %5875
  %5951 = phi float [ %5949, %5937 ], [ %5935, %5928 ], [ 0.000000e+00, %5875 ]
  %5952 = call float @dx.op.binary.f32(i32 36, float %5951, float %5951)  ; FMin(a,b)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5951, float %5952)  ; FMin(a,b)
  %5954 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %5954, label %5963, label %5955, !dx.controlflow.hints !75

; <label>:5955                                    ; preds = %6246, %5950
  %5956 = phi float [ %5877, %5950 ], [ %6294, %6246 ]
  %5957 = phi float [ %5878, %5950 ], [ %6295, %6246 ]
  %5958 = phi float [ %5879, %5950 ], [ %6296, %6246 ]
  %5959 = phi float [ %5880, %5950 ], [ %6285, %6246 ]
  %5960 = phi float [ %5881, %5950 ], [ %6286, %6246 ]
  %5961 = phi float [ %5882, %5950 ], [ %6287, %6246 ]
  %5962 = icmp eq i32 %5876, %5886
  br i1 %5962, label %6297, label %5875

; <label>:5963                                    ; preds = %5950
  %5964 = fmul fast float %5951, %5909
  %5965 = fmul fast float %5951, %5910
  %5966 = fmul fast float %5951, %5911
  %5967 = fsub fast float %5903, %4938
  %5968 = fcmp fast ogt float %5967, 0.000000e+00
  %5969 = fsub fast float %130, %4938
  %5970 = fcmp fast ogt float %5969, 0.000000e+00
  %5971 = xor i1 %5970, %5968
  %5972 = fsub fast float %4938, %5903
  %5973 = fmul fast float %5972, 2.000000e+00
  %5974 = fadd fast float %5973, %5903
  %5975 = select i1 %5971, float %5903, float %5974
  %5976 = fsub fast float %5975, %130
  %5977 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5976, float %5912, float %5913, float %5976)  ; Dot3(ax,ay,az,bx,by,bz)
  %5978 = call float @dx.op.unary.f32(i32 25, float %5977)  ; Rsqrt(value)
  %5979 = fmul fast float %5978, %5912
  %5980 = fmul fast float %5978, %5913
  %5981 = fmul fast float %5978, %5976
  %5982 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5979, float %5980, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = fdiv fast float 1.000000e+00, %5983
  %5985 = fmul fast float %5984, %5982
  %5986 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5969, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = fcmp fast ogt float %5986, 0.000000e+00
  %5988 = fcmp fast olt float %5986, 0.000000e+00
  %5989 = zext i1 %5987 to i32
  %5990 = zext i1 %5988 to i32
  %5991 = sub nsw i32 %5989, %5990
  %5992 = sitofp i32 %5991 to float
  %5993 = fsub fast float %5975, %4938
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5993, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fcmp fast ogt float %5994, 0.000000e+00
  %5996 = fcmp fast olt float %5994, 0.000000e+00
  %5997 = zext i1 %5995 to i32
  %5998 = zext i1 %5996 to i32
  %5999 = sub nsw i32 %5997, %5998
  %6000 = sitofp i32 %5999 to float
  %6001 = fcmp fast une float %5992, %6000
  br i1 %6001, label %6002, label %6012

; <label>:6002                                    ; preds = %5963
  %6003 = fmul fast float %5985, %5981
  %6004 = fmul fast float %5985, %5980
  %6005 = fmul fast float %5985, %5979
  %6006 = fmul fast float %6005, %6005
  %6007 = fmul fast float %6004, %6004
  %6008 = fadd fast float %6006, %6007
  %6009 = fmul fast float %6003, %6003
  %6010 = fadd fast float %6008, %6009
  %6011 = call float @dx.op.unary.f32(i32 24, float %6010)  ; Sqrt(value)
  br label %6024

; <label>:6012                                    ; preds = %5963
  %6013 = icmp slt i32 %5991, 0
  br i1 %6013, label %6014, label %6024

; <label>:6014                                    ; preds = %6012
  %6015 = fsub fast float %128, %5901
  %6016 = fsub fast float %129, %5902
  %6017 = fsub fast float %130, %5975
  %6018 = fmul fast float %6015, %6015
  %6019 = fmul fast float %6016, %6016
  %6020 = fadd fast float %6018, %6019
  %6021 = fmul fast float %6017, %6017
  %6022 = fadd fast float %6020, %6021
  %6023 = call float @dx.op.unary.f32(i32 24, float %6022)  ; Sqrt(value)
  br label %6024

; <label>:6024                                    ; preds = %6014, %6012, %6002
  %6025 = phi float [ %6011, %6002 ], [ %6023, %6014 ], [ 0.000000e+00, %6012 ]
  %6026 = and i1 %5970, %5968
  %6027 = fsub fast float -0.000000e+00, %6025
  %6028 = select i1 %6026, float -0.000000e+00, float %6027
  %6029 = fmul fast float %4939, 0x3FF7154760000000
  %6030 = fmul fast float %6029, %6028
  %6031 = fmul fast float %4940, 0x3FF7154760000000
  %6032 = fmul fast float %6031, %6028
  %6033 = fmul fast float %4941, 0x3FF7154760000000
  %6034 = fmul fast float %6033, %6028
  %6035 = call float @dx.op.unary.f32(i32 21, float %6030)  ; Exp(value)
  %6036 = call float @dx.op.unary.f32(i32 21, float %6032)  ; Exp(value)
  %6037 = call float @dx.op.unary.f32(i32 21, float %6034)  ; Exp(value)
  %6038 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6039 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6041 = fmul fast float %5964, %6038
  %6042 = fmul fast float %5965, %6039
  %6043 = fmul fast float %5966, %6040
  %6044 = fsub fast float %5918, %5138
  %6045 = fsub fast float %5919, %5137
  %6046 = fsub fast float %5920, %5136
  %6047 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float %6044, float %6045, float %6046)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.unary.f32(i32 25, float %6047)  ; Rsqrt(value)
  %6049 = fmul fast float %6048, %6044
  %6050 = fmul fast float %6048, %6045
  %6051 = fmul fast float %6048, %6046
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5920, float %5145, float %5146, float %5147)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5134, float %5133, float %6049, float %6050, float %6051)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6055 = fmul fast float %6054, %5925
  %6056 = fmul fast float %6054, %6054
  %6057 = fmul fast float %6056, %5165
  %6058 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6059 = fmul fast float %6055, %6058
  %6060 = bitcast float %5915 to i32
  %6061 = ashr i32 %6060, 1
  %6062 = sub nsw i32 1597463007, %6061
  %6063 = bitcast i32 %6062 to float
  %6064 = fmul fast float %6063, %5912
  %6065 = fmul fast float %6063, %5913
  %6066 = fmul fast float %6063, %5914
  %6067 = fsub fast float %6064, %5138
  %6068 = fsub fast float %6065, %5137
  %6069 = fsub fast float %6066, %5136
  %6070 = call float @dx.op.dot3.f32(i32 55, float %6067, float %6068, float %6069, float %6067, float %6068, float %6069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = call float @dx.op.unary.f32(i32 25, float %6070)  ; Rsqrt(value)
  %6072 = fmul fast float %6067, %6071
  %6073 = fmul fast float %6068, %6071
  %6074 = fmul fast float %6069, %6071
  %6075 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float %6072, float %6073, float %6074)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = fmul fast float %6075, %6075
  %6077 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6078 = fsub fast float 1.000000e+00, %5148
  %6079 = call float @dx.op.binary.f32(i32 35, float %6078, float 0x3F847AE140000000)  ; FMax(a,b)
  %6080 = fmul fast float %6079, %6079
  %6081 = fmul fast float %6080, %6080
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = fmul fast float %5152, %5152
  %6084 = fmul fast float %6083, %6082
  %6085 = fadd fast float %6084, %6081
  %6086 = bitcast float %6085 to i32
  %6087 = ashr i32 %6086, 1
  %6088 = add nsw i32 %6087, 532487669
  %6089 = bitcast i32 %6088 to float
  %6090 = fadd fast float %6089, %5152
  %6091 = fmul fast float %6081, %6076
  %6092 = fsub fast float 1.000000e+00, %6076
  %6093 = fadd fast float %6092, %6091
  %6094 = fmul fast float %6077, %6077
  %6095 = fmul fast float %6094, %6082
  %6096 = fadd fast float %6095, %6081
  %6097 = bitcast float %6096 to i32
  %6098 = ashr i32 %6097, 1
  %6099 = add nsw i32 %6098, 532487669
  %6100 = bitcast i32 %6099 to float
  %6101 = fadd fast float %6100, %6077
  %6102 = fmul fast float %6093, %6093
  %6103 = fmul fast float %6102, %6090
  %6104 = fmul fast float %6103, %6101
  %6105 = fdiv fast float 1.000000e+00, %6104
  %6106 = bitcast float %6081 to i32
  %6107 = sitofp i32 %6106 to float
  %6108 = fmul fast float %6107, 0x3FE7F73180000000
  %6109 = fadd fast float %6108, 0x41AFE27C40000000
  %6110 = fptosi float %6109 to i32
  %6111 = bitcast i32 %6110 to float
  %6112 = fmul fast float %5898, 0x3FD80E9D60000000
  %6113 = fmul fast float %6112, %6063
  %6114 = fadd fast float %6111, %6113
  %6115 = bitcast float %6114 to i32
  %6116 = sub nsw i32 2129859010, %6115
  %6117 = bitcast i32 %6116 to float
  %6118 = fmul fast float %6081, %6105
  %6119 = fmul fast float %6118, %6111
  %6120 = fmul fast float %6119, %6117
  %6121 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6122 = fsub fast float 1.000000e+00, %6121
  %6123 = bitcast float %6122 to i32
  %6124 = sitofp i32 %6123 to float
  %6125 = fmul fast float %6124, 5.000000e+00
  %6126 = fadd fast float %6125, 0xC1EFBF8940000000
  %6127 = fptosi float %6126 to i32
  %6128 = bitcast i32 %6127 to float
  %6129 = fsub fast float 1.000000e+00, %5139
  %6130 = fsub fast float 1.000000e+00, %5140
  %6131 = fsub fast float 1.000000e+00, %5150
  %6132 = fmul fast float %6128, %6129
  %6133 = fmul fast float %6128, %6130
  %6134 = fmul fast float %6128, %6131
  %6135 = fadd fast float %6132, %5139
  %6136 = fadd fast float %6133, %5140
  %6137 = fadd fast float %6134, %5150
  br i1 %5422, label %6138, label %6161

; <label>:6138                                    ; preds = %6024
  %6139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6140 = extractvalue %dx.types.ResRet.f32 %6139, 0
  %6141 = extractvalue %dx.types.ResRet.f32 %6139, 1
  %6142 = extractvalue %dx.types.ResRet.f32 %6139, 2
  %6143 = fadd fast float %6140, -5.000000e-01
  %6144 = fadd fast float %6141, -5.000000e-01
  %6145 = fadd fast float %6142, -5.000000e-01
  %6146 = fmul fast float %5139, 4.000000e+00
  %6147 = fmul fast float %6146, %6129
  %6148 = fmul fast float %6147, %6143
  %6149 = fmul fast float %5140, 4.000000e+00
  %6150 = fmul fast float %6149, %6130
  %6151 = fmul fast float %6150, %6144
  %6152 = fmul fast float %5150, 4.000000e+00
  %6153 = fmul fast float %6152, %6131
  %6154 = fmul fast float %6153, %6145
  %6155 = fadd fast float %6148, %6135
  %6156 = fadd fast float %6151, %6136
  %6157 = fadd fast float %6154, %6137
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  br label %6161

; <label>:6161                                    ; preds = %6138, %6024
  %6162 = phi float [ %6158, %6138 ], [ %6135, %6024 ]
  %6163 = phi float [ %6159, %6138 ], [ %6136, %6024 ]
  %6164 = phi float [ %6160, %6138 ], [ %6137, %6024 ]
  %6165 = fmul fast float %6052, 9.843750e-01
  %6166 = fadd fast float %6165, 7.812500e-03
  %6167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6166, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6168 = extractvalue %dx.types.ResRet.f32 %6167, 2
  %6169 = extractvalue %dx.types.ResRet.f32 %6167, 3
  %6170 = fmul fast float %6168, %5139
  %6171 = fmul fast float %6168, %5140
  %6172 = fmul fast float %6168, %5150
  %6173 = fadd fast float %6170, %6169
  %6174 = fadd fast float %6171, %6169
  %6175 = fadd fast float %6172, %6169
  br i1 %5422, label %6176, label %6199

; <label>:6176                                    ; preds = %6161
  %6177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %6052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.ResRet.f32 %6177, 2
  %6181 = fadd fast float %6178, -5.000000e-01
  %6182 = fadd fast float %6179, -5.000000e-01
  %6183 = fadd fast float %6180, -5.000000e-01
  %6184 = fmul fast float %5139, 4.000000e+00
  %6185 = fmul fast float %6184, %6129
  %6186 = fmul fast float %6185, %6181
  %6187 = fmul fast float %5140, 4.000000e+00
  %6188 = fmul fast float %6187, %6130
  %6189 = fmul fast float %6188, %6182
  %6190 = fmul fast float %5150, 4.000000e+00
  %6191 = fmul fast float %6190, %6131
  %6192 = fmul fast float %6191, %6183
  %6193 = fadd fast float %6186, %6173
  %6194 = fadd fast float %6189, %6174
  %6195 = fadd fast float %6192, %6175
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6198 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  br label %6199

; <label>:6199                                    ; preds = %6176, %6161
  %6200 = phi float [ %6196, %6176 ], [ %6173, %6161 ]
  %6201 = phi float [ %6197, %6176 ], [ %6174, %6161 ]
  %6202 = phi float [ %6198, %6176 ], [ %6175, %6161 ]
  %6203 = call float @dx.op.binary.f32(i32 35, float %6201, float %6202)  ; FMax(a,b)
  %6204 = call float @dx.op.binary.f32(i32 35, float %6200, float %6203)  ; FMax(a,b)
  %6205 = fsub fast float 1.000000e+00, %6204
  %6206 = fsub fast float -0.000000e+00, %5145
  %6207 = fsub fast float -0.000000e+00, %5146
  %6208 = fsub fast float -0.000000e+00, %5147
  %6209 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5920, float %6206, float %6207, float %6208)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = fmul fast float %6210, %5925
  %6212 = fmul fast float %6210, 9.843750e-01
  %6213 = fadd fast float %6212, 7.812500e-03
  %6214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6213, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6215 = extractvalue %dx.types.ResRet.f32 %6214, 2
  %6216 = extractvalue %dx.types.ResRet.f32 %6214, 3
  %6217 = fmul fast float %6215, %5139
  %6218 = fmul fast float %6215, %5140
  %6219 = fmul fast float %6215, %5150
  %6220 = fadd fast float %6217, %6216
  %6221 = fadd fast float %6218, %6216
  %6222 = fadd fast float %6219, %6216
  br i1 %5422, label %6223, label %6246

; <label>:6223                                    ; preds = %6199
  %6224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4471, float %6210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6225 = extractvalue %dx.types.ResRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.ResRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.ResRet.f32 %6224, 2
  %6228 = fadd fast float %6225, -5.000000e-01
  %6229 = fadd fast float %6226, -5.000000e-01
  %6230 = fadd fast float %6227, -5.000000e-01
  %6231 = fmul fast float %5139, 4.000000e+00
  %6232 = fmul fast float %6231, %6129
  %6233 = fmul fast float %6232, %6228
  %6234 = fmul fast float %5140, 4.000000e+00
  %6235 = fmul fast float %6234, %6130
  %6236 = fmul fast float %6235, %6229
  %6237 = fmul fast float %5150, 4.000000e+00
  %6238 = fmul fast float %6237, %6131
  %6239 = fmul fast float %6238, %6230
  %6240 = fadd fast float %6233, %6220
  %6241 = fadd fast float %6236, %6221
  %6242 = fadd fast float %6239, %6222
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6245 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  br label %6246

; <label>:6246                                    ; preds = %6223, %6199
  %6247 = phi float [ %6243, %6223 ], [ %6220, %6199 ]
  %6248 = phi float [ %6244, %6223 ], [ %6221, %6199 ]
  %6249 = phi float [ %6245, %6223 ], [ %6222, %6199 ]
  %6250 = call float @dx.op.binary.f32(i32 35, float %6248, float %6249)  ; FMax(a,b)
  %6251 = call float @dx.op.binary.f32(i32 35, float %6247, float %6250)  ; FMax(a,b)
  %6252 = fsub fast float 1.000000e+00, %6251
  %6253 = fmul fast float %6211, %6252
  %6254 = fmul fast float %6253, %4561
  %6255 = fmul fast float %6253, %4562
  %6256 = fmul fast float %6253, %4563
  %6257 = fmul fast float %6162, %6120
  %6258 = fmul fast float %6163, %6120
  %6259 = fmul fast float %6164, %6120
  %6260 = fsub fast float 1.000000e+00, %6053
  %6261 = bitcast float %6260 to i32
  %6262 = sitofp i32 %6261 to float
  %6263 = fmul fast float %6262, 5.000000e+00
  %6264 = fadd fast float %6263, 0xC1EFBF8940000000
  %6265 = fptosi float %6264 to i32
  %6266 = bitcast i32 %6265 to float
  %6267 = fmul fast float %6266, %4472
  %6268 = fmul fast float %6205, %6267
  %6269 = fmul fast float %6268, %5469
  %6270 = fmul fast float %6268, %5470
  %6271 = fmul fast float %6268, %5471
  %6272 = fmul fast float %6205, %6059
  %6273 = fadd fast float %6269, %6257
  %6274 = fadd fast float %6270, %6258
  %6275 = fadd fast float %6271, %6259
  %6276 = fadd fast float %6254, %6272
  %6277 = fadd fast float %6255, %6272
  %6278 = fadd fast float %6256, %6272
  %6279 = fmul fast float %6041, %4468
  %6280 = fmul fast float %6279, %6276
  %6281 = fmul fast float %6042, %4468
  %6282 = fmul fast float %6281, %6277
  %6283 = fmul fast float %6043, %4468
  %6284 = fmul fast float %6283, %6278
  %6285 = fadd fast float %6280, %5880
  %6286 = fadd fast float %6282, %5881
  %6287 = fadd fast float %6284, %5882
  %6288 = fmul fast float %6279, %6059
  %6289 = fmul fast float %6288, %6273
  %6290 = fmul fast float %6281, %6059
  %6291 = fmul fast float %6290, %6274
  %6292 = fmul fast float %6283, %6059
  %6293 = fmul fast float %6292, %6275
  %6294 = fadd fast float %6289, %5877
  %6295 = fadd fast float %6291, %5878
  %6296 = fadd fast float %6293, %5879
  br label %5955

; <label>:6297                                    ; preds = %5955
  br label %6298

; <label>:6298                                    ; preds = %6297, %5843
  %6299 = phi float [ %5845, %5843 ], [ %5956, %6297 ]
  %6300 = phi float [ %5846, %5843 ], [ %5957, %6297 ]
  %6301 = phi float [ %5847, %5843 ], [ %5958, %6297 ]
  %6302 = phi float [ %5848, %5843 ], [ %5959, %6297 ]
  %6303 = phi float [ %5849, %5843 ], [ %5960, %6297 ]
  %6304 = phi float [ %5850, %5843 ], [ %5961, %6297 ]
  %6305 = add i32 %5844, 1
  %6306 = icmp ugt i32 %6305, %5840
  br i1 %6306, label %6307, label %5843

; <label>:6307                                    ; preds = %6298
  br label %6308

; <label>:6308                                    ; preds = %6307, %5819, %5809
  %6309 = phi float [ %5810, %5809 ], [ %5810, %5819 ], [ %6299, %6307 ]
  %6310 = phi float [ %5811, %5809 ], [ %5811, %5819 ], [ %6300, %6307 ]
  %6311 = phi float [ %5812, %5809 ], [ %5812, %5819 ], [ %6301, %6307 ]
  %6312 = phi float [ %5813, %5809 ], [ %5813, %5819 ], [ %6302, %6307 ]
  %6313 = phi float [ %5814, %5809 ], [ %5814, %5819 ], [ %6303, %6307 ]
  %6314 = phi float [ %5815, %5809 ], [ %5815, %5819 ], [ %6304, %6307 ]
  %6315 = call float @dx.op.unary.f32(i32 24, float %5142)  ; Sqrt(value)
  %6316 = call float @dx.op.unary.f32(i32 24, float %5143)  ; Sqrt(value)
  %6317 = call float @dx.op.unary.f32(i32 24, float %5144)  ; Sqrt(value)
  %6318 = fmul fast float %6315, %6312
  %6319 = fmul fast float %6316, %6313
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  br i1 %170, label %6322, label %6342

; <label>:6322                                    ; preds = %6308
  %6323 = fadd fast float %6314, %4474
  %6324 = fmul fast float %6323, %4475
  %6325 = fsub fast float 1.000000e+00, %4475
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 3
  %6329 = fmul fast float %6328, %6326
  %6330 = fadd fast float %6329, %6324
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = fmul fast float %6332, %5475
  %6334 = fsub fast float %6330, %6333
  %6335 = fadd fast float %6319, %6318
  %6336 = fmul fast float %6321, %6335
  %6337 = extractvalue %dx.types.CBufRet.f32 %6327, 1
  %6338 = fsub fast float %6334, %6337
  %6339 = extractvalue %dx.types.CBufRet.f32 %6327, 2
  %6340 = fmul fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  br label %6358

; <label>:6342                                    ; preds = %6308
  %6343 = fmul fast float %6317, %6314
  %6344 = fmul fast float %6321, %6318
  %6345 = fmul fast float %6321, %6319
  %6346 = fmul fast float %6343, %6321
  %6347 = add i32 %33, 356
  %6348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6347, i32 undef)  ; BufferLoad(srv,index,wot)
  %6349 = extractvalue %dx.types.ResRet.i32 %6348, 0
  %6350 = and i32 %6349, 32
  %6351 = icmp eq i32 %6350, 0
  br i1 %6351, label %6358, label %6352

; <label>:6352                                    ; preds = %6342
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = fmul fast float %6354, 0x3FE99999A0000000
  %6356 = fadd fast float %6354, %6344
  %6357 = fadd fast float %6355, %6346
  br label %6358

; <label>:6358                                    ; preds = %6352, %6342, %6322
  %6359 = phi float [ %6336, %6322 ], [ %6356, %6352 ], [ %6344, %6342 ]
  %6360 = phi float [ %6341, %6322 ], [ %6345, %6352 ], [ %6345, %6342 ]
  %6361 = phi float [ 1.000000e+00, %6322 ], [ %6357, %6352 ], [ %6346, %6342 ]
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = fmul fast float %6363, %6310
  %6365 = fmul fast float %6363, %6311
  %6366 = fadd fast float %6310, %6309
  %6367 = select i1 %170, float %6366, float %6309
  %6368 = fmul float %6367, %6363
  %6369 = select i1 %170, float 0.000000e+00, float %6364
  %6370 = select i1 %170, float 0.000000e+00, float %6365
  %6371 = fmul fast float %6359, %6315
  %6372 = fmul fast float %6360, %6316
  %6373 = fmul fast float %6361, %6317
  %6374 = fadd fast float %6368, %6371
  %6375 = fadd fast float %6369, %6372
  %6376 = fadd fast float %6370, %6373
  %6377 = select i1 %170, float %6360, float %6375
  %6378 = select i1 %170, float %6361, float %6376
  %6379 = call float @dx.op.binary.f32(i32 36, float %6374, float 3.225500e+04)  ; FMin(a,b)
  %6380 = call float @dx.op.binary.f32(i32 36, float %6377, float 3.225500e+04)  ; FMin(a,b)
  %6381 = call float @dx.op.binary.f32(i32 36, float %6378, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6381)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !72}
!49 = !{!50, !70, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69}
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
!69 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

