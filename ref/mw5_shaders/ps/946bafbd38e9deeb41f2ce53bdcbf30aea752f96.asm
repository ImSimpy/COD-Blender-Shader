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
; shader hash: 6b2bfb7f585ffce4a7ec1dec7beb9f9e
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
  %353 = add i32 %33, 492
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
  br i1 %406, label %918, label %407

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
  %511 = add i32 %33, 376
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
  %534 = add i32 %33, 460
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
  %732 = add i32 %33, 392
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
  %816 = add i32 %33, 408
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
  %854 = and i32 %853, 10240
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %900, label %856

; <label>:856                                     ; preds = %848
  %857 = add i32 %33, 476
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 1
  %864 = extractvalue %dx.types.ResRet.f32 %862, 3
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 1048576
  %868 = icmp ne i32 %867, 0
  %869 = and i32 %866, 8192
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %886, label %871

; <label>:871                                     ; preds = %856
  %872 = extractvalue %dx.types.ResRet.f32 %862, 2
  %873 = select i1 %868, float %872, float %863
  %874 = extractvalue %dx.types.ResRet.f32 %862, 0
  %875 = select i1 %868, float %874, float %863
  %876 = add i32 %33, 96
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F80101020000000
  %883 = fmul fast float %882, %875
  %884 = fmul fast float %882, %863
  %885 = fmul fast float %882, %873
  br label %886

; <label>:886                                     ; preds = %871, %856
  %887 = phi float [ %883, %871 ], [ 0.000000e+00, %856 ]
  %888 = phi float [ %884, %871 ], [ 0.000000e+00, %856 ]
  %889 = phi float [ %885, %871 ], [ 0.000000e+00, %856 ]
  %890 = and i32 %866, 2048
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %900, label %892

; <label>:892                                     ; preds = %886
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = shl i32 %894, 4
  %896 = and i32 %895, 32752
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = fmul fast float %897, %864
  %899 = call float @dx.op.binary.f32(i32 35, float %898, float 0x3F70101020000000)  ; FMax(a,b)
  br label %900

; <label>:900                                     ; preds = %892, %886, %848
  %901 = phi float [ %887, %892 ], [ %887, %886 ], [ 0.000000e+00, %848 ]
  %902 = phi float [ %888, %892 ], [ %888, %886 ], [ 0.000000e+00, %848 ]
  %903 = phi float [ %889, %892 ], [ %889, %886 ], [ 0.000000e+00, %848 ]
  %904 = phi float [ %899, %892 ], [ 0x3F70101020000000, %886 ], [ 0x3F70101020000000, %848 ]
  %905 = add i32 %33, 96
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %907, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fmul fast float %912, %913
  %915 = fadd fast float %914, %909
  %916 = fmul fast float %915, 0x3F70101020000000
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  br label %918

; <label>:918                                     ; preds = %900, %392
  %919 = phi float [ 0.000000e+00, %392 ], [ %802, %900 ]
  %920 = phi float [ 0.000000e+00, %392 ], [ %803, %900 ]
  %921 = phi float [ 0.000000e+00, %392 ], [ %721, %900 ]
  %922 = phi float [ 0.000000e+00, %392 ], [ %722, %900 ]
  %923 = phi float [ 0.000000e+00, %392 ], [ %723, %900 ]
  %924 = phi float [ 0.000000e+00, %392 ], [ %901, %900 ]
  %925 = phi float [ 0.000000e+00, %392 ], [ %902, %900 ]
  %926 = phi float [ 0.000000e+00, %392 ], [ %903, %900 ]
  %927 = phi float [ 0.000000e+00, %392 ], [ %849, %900 ]
  %928 = phi float [ 0.000000e+00, %392 ], [ %850, %900 ]
  %929 = phi float [ 0.000000e+00, %392 ], [ %851, %900 ]
  %930 = phi float [ 0.000000e+00, %392 ], [ %707, %900 ]
  %931 = phi float [ 0.000000e+00, %392 ], [ 1.000000e+00, %900 ]
  %932 = phi float [ 0.000000e+00, %392 ], [ %801, %900 ]
  %933 = phi float [ 0.000000e+00, %392 ], [ %804, %900 ]
  %934 = phi float [ 0.000000e+00, %392 ], [ %904, %900 ]
  %935 = phi float [ 0.000000e+00, %392 ], [ %917, %900 ]
  br i1 %343, label %1864, label %936

; <label>:936                                     ; preds = %918
  %937 = icmp ult i32 %398, 2
  %938 = add i32 %33, 40
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %33, 44
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = or i32 %943, %940
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %1864, label %946

; <label>:946                                     ; preds = %936
  %947 = and i32 %940, 262144
  %948 = icmp ne i32 %947, 0
  %949 = select i1 %948, float %36, float 1.000000e+00
  %950 = select i1 %948, float %37, float 0.000000e+00
  %951 = select i1 %948, float %38, float 0.000000e+00
  %952 = select i1 %948, float %39, float 1.000000e+00
  %953 = select i1 %948, float %40, float %61
  %954 = select i1 %948, float %41, float %62
  %955 = add i32 %33, 300
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %959, 0x3F50624DE0000000
  %961 = add i32 %33, 104
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = lshr i32 %963, 24
  %967 = add i32 %33, 308
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %969, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = add i32 %33, 48
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 22
  %978 = shl nuw nsw i32 %977, 5
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = shl i32 %976, 4
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 7
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, 1.000000e+03
  %989 = fmul fast float %253, %988
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %243
  %992 = fmul fast float %254, %988
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %245
  %995 = fmul fast float %960, %988
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fmul fast float %996, 0x401921FB60000000
  %998 = fadd fast float %997, %979
  %999 = call float @dx.op.unary.f32(i32 13, float %998)  ; Sin(value)
  %1000 = call float @dx.op.unary.f32(i32 12, float %998)  ; Cos(value)
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fmul fast float %971, %1002
  %1005 = fmul fast float %973, %1003
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fmul fast float %982, %1006
  %1009 = fmul fast float %985, %1007
  %1010 = fmul fast float %1000, %1008
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1009, float %1010)  ; FMad(a,b,c)
  %1012 = fmul fast float %999, %1008
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1009, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %991, %1011
  %1015 = fadd fast float %994, %1013
  %1016 = icmp ugt i32 %965, 1
  %1017 = icmp ugt i32 %963, 33554431
  %1018 = or i1 %1017, %1016
  br i1 %1018, label %1019, label %1044

; <label>:1019                                    ; preds = %946
  %1020 = add i32 %33, 244
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %987, %1024
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = mul nuw nsw i32 %965, %966
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1026, %1028
  %1030 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1031 = fptoui float %1030 to i32
  %1032 = urem i32 %1031, %965
  %1033 = udiv i32 %1031, %966
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = uitofp i32 %1032 to float
  %1037 = uitofp i32 %1033 to float
  %1038 = fadd fast float %1034, %1036
  %1039 = fadd fast float %1035, %1037
  %1040 = uitofp i32 %965 to float
  %1041 = uitofp i32 %966 to float
  %1042 = fdiv fast float %1038, %1040
  %1043 = fdiv fast float %1039, %1041
  br label %1044

; <label>:1044                                    ; preds = %1019, %946
  %1045 = phi float [ %1042, %1019 ], [ %1014, %946 ]
  %1046 = phi float [ %1043, %1019 ], [ %1015, %946 ]
  %1047 = and i32 %940, 16777216
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1158, label %1049

; <label>:1049                                    ; preds = %1044
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fadd fast float %1051, %128
  %1055 = fadd fast float %1052, %129
  %1056 = fadd fast float %1053, %130
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = icmp eq i32 %34, 65535
  br i1 %1060, label %1155, label %1061

; <label>:1061                                    ; preds = %1049
  %1062 = lshr i32 %34, 1
  %1063 = shl i32 %1062, 2
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %34, 1
  %1067 = icmp ne i32 %1066, 0
  %1068 = lshr i32 %1065, 16
  %1069 = and i32 %1065, 65535
  %1070 = select i1 %1067, i32 %1068, i32 %1069
  %1071 = icmp eq i32 %1070, 65535
  br i1 %1071, label %1151, label %1072

; <label>:1072                                    ; preds = %1061
  %1073 = mul nuw nsw i32 %1070, 40
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = add nuw nsw i32 %1073, 12
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1073, 24
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1073, 36
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = fsub fast float %1054, %1075
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fmul fast float %1090, %1091
  %1095 = fmul fast float %1090, %1092
  %1096 = fmul fast float %1090, %1093
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fmul fast float %1100, %1080
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = shl i32 %34, 2
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %1108, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1110, %dx.types.Handle %30, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = fsub fast float %1094, %1097
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fadd fast float %1097, 1.250000e-01
  %1134 = fadd fast float %1133, %1130
  %1135 = fadd fast float %1134, %1124
  %1136 = fadd fast float %1098, 1.250000e-01
  %1137 = fadd fast float %1136, %1131
  %1138 = fadd fast float %1137, %1125
  %1139 = fadd fast float %1099, 1.250000e-01
  %1140 = fadd fast float %1139, %1132
  %1141 = fadd fast float %1140, %1126
  %1142 = fmul fast float %1135, %1085
  %1143 = fmul fast float %1138, %1086
  %1144 = fmul fast float %1141, %1087
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1148, %dx.types.Handle %28, float %1142, float %1143, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  br label %1151

; <label>:1151                                    ; preds = %1072, %1061
  %1152 = phi float [ %1150, %1072 ], [ -1.000000e+00, %1061 ]
  %1153 = fadd fast float %1152, %1059
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  br label %1155

; <label>:1155                                    ; preds = %1151, %1049
  %1156 = phi float [ %1154, %1151 ], [ %1059, %1049 ]
  %1157 = fmul fast float %1156, %395
  br label %1158

; <label>:1158                                    ; preds = %1155, %1044
  %1159 = phi float [ %1157, %1155 ], [ %395, %1044 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 256
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1210, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %33, 444
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = add i32 %33, 116
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = shl i32 %1174, 4
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1174, 7
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fsub fast float 1.000000e+00, %1159
  %1182 = call float @dx.op.binary.f32(i32 35, float %1181, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1183 = bitcast float %1159 to i32
  %1184 = sitofp i32 %1183 to float
  %1185 = fadd fast float %1184, 0xC1CFBF8940000000
  %1186 = fmul fast float %1180, %1185
  %1187 = fadd fast float %1186, 0x41CFBF8940000000
  %1188 = fptosi float %1187 to i32
  %1189 = bitcast i32 %1188 to float
  %1190 = bitcast float %1182 to i32
  %1191 = sitofp i32 %1190 to float
  %1192 = fadd fast float %1191, 0xC1CFBF8940000000
  %1193 = fmul fast float %1192, %1180
  %1194 = fadd fast float %1193, 0x41CFBF8940000000
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = fmul fast float %1189, %1177
  %1198 = fmul fast float %1196, %1177
  %1199 = fsub fast float %1182, %1197
  %1200 = fadd fast float %1198, %1182
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = fsub fast float %1171, %1201
  %1204 = fsub fast float %1202, %1201
  %1205 = bitcast float %1204 to i32
  %1206 = sub nsw i32 2129859010, %1205
  %1207 = bitcast i32 %1206 to float
  %1208 = fmul fast float %1207, %1203
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  br label %1210

; <label>:1210                                    ; preds = %1164, %1158
  %1211 = phi float [ %1209, %1164 ], [ %1159, %1158 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 128
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1232, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %33, 428
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 524288
  %1227 = icmp ne i32 %1226, 0
  %1228 = fcmp fast ogt float %1223, 0x3FE0101020000000
  %1229 = select i1 %1228, float 1.000000e+00, float 0.000000e+00
  %1230 = select i1 %1227, float %1229, float %1223
  %1231 = fmul fast float %1230, %1211
  br label %1232

; <label>:1232                                    ; preds = %1216, %1210
  %1233 = phi float [ %1231, %1216 ], [ %1211, %1210 ]
  %1234 = fcmp fast ult float %1233, 0x3F70101020000000
  br i1 %1234, label %1864, label %1235

; <label>:1235                                    ; preds = %1232
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 16
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1438, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %33, 380
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = and i32 %1242, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1242, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1252, %1254
  %1259 = fadd fast float %1258, %1257
  %1260 = fmul fast float %1259, 0x3F70101000000000
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 512
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1273, label %1265

; <label>:1265                                    ; preds = %1240
  %1266 = add i32 %33, 464
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  br label %1273

; <label>:1273                                    ; preds = %1265, %1240
  %1274 = phi float [ %1272, %1265 ], [ 1.000000e+00, %1240 ]
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 33554432
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1385, label %1279

; <label>:1279                                    ; preds = %1273
  %1280 = add i32 %33, 240
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %33, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 24
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = and i32 %1293, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = lshr i32 %1293, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1293, 16
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = add i32 %33, 236
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 24
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = and i32 %1310, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1310, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1310, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = bitcast float %1249 to i32
  %1326 = ashr i32 %1325, 1
  %1327 = sub nsw i32 1597463174, %1326
  %1328 = bitcast i32 %1327 to float
  %1329 = fmul fast float %1249, 5.000000e-01
  %1330 = fmul fast float %1328, %1328
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float 1.500000e+00, %1331
  %1333 = fmul fast float %1328, %1249
  %1334 = fmul fast float %1333, %1332
  %1335 = bitcast float %1250 to i32
  %1336 = ashr i32 %1335, 1
  %1337 = sub nsw i32 1597463174, %1336
  %1338 = bitcast i32 %1337 to float
  %1339 = fmul fast float %1250, 5.000000e-01
  %1340 = fmul fast float %1338, %1338
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float 1.500000e+00, %1341
  %1343 = fmul fast float %1338, %1250
  %1344 = fmul fast float %1343, %1342
  %1345 = bitcast float %1251 to i32
  %1346 = ashr i32 %1345, 1
  %1347 = sub nsw i32 1597463174, %1346
  %1348 = bitcast i32 %1347 to float
  %1349 = fmul fast float %1251, 5.000000e-01
  %1350 = fmul fast float %1348, %1348
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float 1.500000e+00, %1351
  %1353 = fmul fast float %1348, %1251
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float %1334, %1316
  %1356 = fsub fast float %1344, %1320
  %1357 = fsub fast float %1354, %1324
  %1358 = fmul fast float %1355, %1284
  %1359 = fmul fast float %1356, %1286
  %1360 = fmul fast float %1357, %1291
  %1361 = fadd fast float %1358, %1299
  %1362 = fadd fast float %1359, %1303
  %1363 = fadd fast float %1360, %1307
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fsub fast float %1367, %1249
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fmul fast float %1370, %1274
  %1374 = fmul fast float %1371, %1274
  %1375 = fmul fast float %1372, %1274
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1296, %1260
  %1380 = fsub fast float %1379, %1313
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fsub fast float %1381, %1260
  %1383 = fmul fast float %1382, %1274
  %1384 = fadd fast float %1383, %1260
  br label %1438

; <label>:1385                                    ; preds = %1273
  %1386 = and i32 %1276, 134217728
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1422, label %1388

; <label>:1388                                    ; preds = %1385
  %1389 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fmul fast float %1392, %1274
  %1396 = fmul fast float %1393, %1274
  %1397 = fmul fast float %1394, %1274
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1401
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1401
  %1409 = fmul fast float %1399, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1402
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1402
  %1414 = fmul fast float %1400, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1403
  %1419 = fmul fast float %1408, %1408
  %1420 = fmul fast float %1413, %1413
  %1421 = fmul fast float %1418, %1418
  br label %1438

; <label>:1422                                    ; preds = %1385
  %1423 = fmul fast float %230, %230
  %1424 = fmul fast float %234, %234
  %1425 = fmul fast float %238, %238
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fmul fast float %1274, %1426
  %1430 = fmul fast float %1274, %1427
  %1431 = fmul fast float %1274, %1428
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fmul fast float %1432, %1249
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  br label %1438

; <label>:1438                                    ; preds = %1422, %1388, %1279, %1235
  %1439 = phi float [ %1384, %1279 ], [ %1260, %1388 ], [ %1260, %1422 ], [ 0x3FA23C0BE0000000, %1235 ]
  %1440 = phi float [ %1376, %1279 ], [ %1419, %1388 ], [ %1435, %1422 ], [ 1.000000e+00, %1235 ]
  %1441 = phi float [ %1377, %1279 ], [ %1420, %1388 ], [ %1436, %1422 ], [ 1.000000e+00, %1235 ]
  %1442 = phi float [ %1378, %1279 ], [ %1421, %1388 ], [ %1437, %1422 ], [ 1.000000e+00, %1235 ]
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 1
  %1445 = and i32 %1444, 1
  %1446 = icmp ne i32 %1445, 0
  %1447 = add i32 %33, 356
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 32
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i1 %1446, %1451
  %1453 = select i1 %1452, float 1.000000e+00, float %1440
  %1454 = select i1 %1452, float 0x3FD3333340000000, float %1441
  %1455 = select i1 %1452, float 0x3FD3333340000000, float %1442
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1532, label %1460

; <label>:1460                                    ; preds = %1438
  %1461 = add i32 %33, 108
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %33, 396
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = and i32 %1463, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1463, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1463, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fmul fast float %1470, %1475
  %1484 = fadd fast float %1483, %1478
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fadd fast float %1471, -5.000000e-01
  %1487 = fadd fast float %1473, -5.000000e-01
  %1488 = fmul fast float %1486, %1482
  %1489 = fmul fast float %1487, %1482
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fmul fast float %1490, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fmul fast float %1491, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fadd fast float %1493, %1495
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = fsub fast float %1493, %1495
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float %1501, %1502
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1499, float %1503, float %1497, float %1499, float %1503)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.unary.f32(i32 25, float %1504)  ; Rsqrt(value)
  %1506 = fmul fast float %1497, %1505
  %1507 = fmul fast float %1499, %1505
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 67108864
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1528, label %1512

; <label>:1512                                    ; preds = %1460
  %1513 = add i32 %33, 296
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = lshr i32 %1515, 16
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = fsub fast float %1485, %1523
  %1525 = fmul fast float %1524, %1517
  %1526 = fadd fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1512, %1460
  %1529 = phi float [ %1527, %1512 ], [ %1485, %1460 ]
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  br label %1532

; <label>:1532                                    ; preds = %1528, %1438
  %1533 = phi float [ %1529, %1528 ], [ 0x3FD6666660000000, %1438 ]
  %1534 = phi float [ %1530, %1528 ], [ 0.000000e+00, %1438 ]
  %1535 = phi float [ %1531, %1528 ], [ 0.000000e+00, %1438 ]
  %1536 = phi float [ %1472, %1528 ], [ 1.000000e+00, %1438 ]
  %1537 = add i32 %33, 176
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 22
  %1541 = shl nuw nsw i32 %1540, 5
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 64
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1580, label %1547

; <label>:1547                                    ; preds = %1532
  %1548 = add i32 %33, 412
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 131072
  %1556 = icmp eq i32 %1555, 0
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = fmul fast float %1558, %218
  %1562 = fmul fast float %1559, %221
  %1563 = fmul fast float %1560, %224
  br i1 %1556, label %1570, label %1564

; <label>:1564                                    ; preds = %1547
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = fmul fast float %1566, %1561
  %1568 = fmul fast float %1566, %1562
  %1569 = fmul fast float %1566, %1563
  br label %1570

; <label>:1570                                    ; preds = %1564, %1547
  %1571 = phi float [ %1567, %1564 ], [ %1561, %1547 ]
  %1572 = phi float [ %1568, %1564 ], [ %1562, %1547 ]
  %1573 = phi float [ %1569, %1564 ], [ %1563, %1547 ]
  %1574 = fmul fast float %1571, %1542
  %1575 = select i1 %170, float %1574, float %1571
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = select i1 %170, float 0.000000e+00, float %1571
  %1578 = select i1 %170, float %1576, float %1572
  %1579 = select i1 %170, float 0.000000e+00, float %1573
  br label %1580

; <label>:1580                                    ; preds = %1570, %1532
  %1581 = phi float [ %1577, %1570 ], [ 0.000000e+00, %1532 ]
  %1582 = phi float [ %1578, %1570 ], [ 0.000000e+00, %1532 ]
  %1583 = phi float [ %1579, %1570 ], [ 0.000000e+00, %1532 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 10240
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1632, label %1588

; <label>:1588                                    ; preds = %1580
  %1589 = add i32 %33, 480
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1593, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 3
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 1048576
  %1600 = icmp ne i32 %1599, 0
  %1601 = and i32 %1598, 8192
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1618, label %1603

; <label>:1603                                    ; preds = %1588
  %1604 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1605 = select i1 %1600, float %1604, float %1595
  %1606 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1607 = select i1 %1600, float %1606, float %1595
  %1608 = add i32 %33, 112
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = lshr i32 %1610, 16
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F80101020000000
  %1615 = fmul fast float %1614, %1607
  %1616 = fmul fast float %1614, %1595
  %1617 = fmul fast float %1614, %1605
  br label %1618

; <label>:1618                                    ; preds = %1603, %1588
  %1619 = phi float [ %1615, %1603 ], [ 0.000000e+00, %1588 ]
  %1620 = phi float [ %1616, %1603 ], [ 0.000000e+00, %1588 ]
  %1621 = phi float [ %1617, %1603 ], [ 0.000000e+00, %1588 ]
  %1622 = and i32 %1598, 2048
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1632, label %1624

; <label>:1624                                    ; preds = %1618
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = shl i32 %1626, 4
  %1628 = and i32 %1627, 32752
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = fmul fast float %1629, %1596
  %1631 = call float @dx.op.binary.f32(i32 35, float %1630, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1632

; <label>:1632                                    ; preds = %1624, %1618, %1580
  %1633 = phi float [ %1619, %1624 ], [ %1619, %1618 ], [ 0.000000e+00, %1580 ]
  %1634 = phi float [ %1620, %1624 ], [ %1620, %1618 ], [ 0.000000e+00, %1580 ]
  %1635 = phi float [ %1621, %1624 ], [ %1621, %1618 ], [ 0.000000e+00, %1580 ]
  %1636 = phi float [ %1631, %1624 ], [ 0x3F70101020000000, %1618 ], [ 0x3F70101020000000, %1580 ]
  %1637 = add i32 %33, 112
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = lshr i32 %1639, 8
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = fmul fast float %1644, %1645
  %1647 = fadd fast float %1646, %1641
  %1648 = fmul fast float %1647, 0x3F70101020000000
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  br i1 %937, label %1650, label %1658

; <label>:1650                                    ; preds = %1632
  %1651 = fsub fast float 1.000000e+00, %1233
  %1652 = fmul fast float %1651, %921
  %1653 = fmul fast float %1651, %922
  %1654 = fmul fast float %1651, %923
  %1655 = fmul fast float %1651, %927
  %1656 = fmul fast float %1651, %928
  %1657 = fmul fast float %1651, %929
  br label %1658

; <label>:1658                                    ; preds = %1650, %1632
  %1659 = phi float [ %1652, %1650 ], [ %921, %1632 ]
  %1660 = phi float [ %1653, %1650 ], [ %922, %1632 ]
  %1661 = phi float [ %1654, %1650 ], [ %923, %1632 ]
  %1662 = phi float [ %1655, %1650 ], [ %927, %1632 ]
  %1663 = phi float [ %1656, %1650 ], [ %928, %1632 ]
  %1664 = phi float [ %1657, %1650 ], [ %929, %1632 ]
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 3
  %1668 = icmp eq i32 %1667, 3
  br i1 %1668, label %1747, label %1669

; <label>:1669                                    ; preds = %1658
  %1670 = and i32 %1666, 16
  %1671 = icmp ne i32 %1670, 0
  %1672 = select i1 %1671, float %1233, float 0.000000e+00
  %1673 = icmp eq i32 %1667, 0
  br i1 %1673, label %1674, label %1702

; <label>:1674                                    ; preds = %1669
  %1675 = and i32 %1666, 64
  %1676 = icmp ne i32 %1675, 0
  %1677 = select i1 %1676, float %1233, float 0.000000e+00
  %1678 = fsub fast float %1453, %1659
  %1679 = fsub fast float %1454, %1660
  %1680 = fsub fast float %1455, %1661
  %1681 = fmul fast float %1672, %1678
  %1682 = fmul fast float %1672, %1679
  %1683 = fmul fast float %1672, %1680
  %1684 = fadd fast float %1681, %1659
  %1685 = fadd fast float %1682, %1660
  %1686 = fadd fast float %1683, %1661
  %1687 = fsub fast float %1439, %930
  %1688 = fmul fast float %1672, %1687
  %1689 = fadd fast float %1688, %930
  %1690 = fsub fast float %1581, %1662
  %1691 = fsub fast float %1582, %1663
  %1692 = fsub fast float %1583, %1664
  %1693 = fmul fast float %1677, %1690
  %1694 = fmul fast float %1677, %1691
  %1695 = fmul fast float %1677, %1692
  %1696 = fadd fast float %1693, %1662
  %1697 = fadd fast float %1694, %1663
  %1698 = fadd fast float %1695, %1664
  %1699 = fsub fast float %1649, %935
  %1700 = fmul fast float %1672, %1699
  %1701 = fadd fast float %1700, %935
  br label %1747

; <label>:1702                                    ; preds = %1669
  %1703 = icmp eq i32 %1667, 1
  br i1 %1703, label %1704, label %1717

; <label>:1704                                    ; preds = %1702
  %1705 = fadd fast float %1453, -1.000000e+00
  %1706 = fadd fast float %1454, -1.000000e+00
  %1707 = fadd fast float %1455, -1.000000e+00
  %1708 = fmul fast float %1672, %1705
  %1709 = fmul fast float %1672, %1706
  %1710 = fmul fast float %1672, %1707
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fadd fast float %1710, 1.000000e+00
  %1714 = fmul fast float %1711, %1659
  %1715 = fmul fast float %1712, %1660
  %1716 = fmul fast float %1713, %1661
  br label %1747

; <label>:1717                                    ; preds = %1702
  %1718 = icmp eq i32 %1667, 2
  br i1 %1718, label %1719, label %1747

; <label>:1719                                    ; preds = %1717
  %1720 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1723 = fadd fast float %1720, -5.000000e-01
  %1724 = fadd fast float %1721, -5.000000e-01
  %1725 = fadd fast float %1722, -5.000000e-01
  %1726 = fmul fast float %1723, %1672
  %1727 = fmul fast float %1724, %1672
  %1728 = fmul fast float %1725, %1672
  %1729 = fadd fast float %1726, 5.000000e-01
  %1730 = fadd fast float %1727, 5.000000e-01
  %1731 = fadd fast float %1728, 5.000000e-01
  %1732 = fmul fast float %1729, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1659
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1659
  %1737 = fmul fast float %1730, 2.000000e+00
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1738, %1660
  %1740 = fadd fast float %1739, %1737
  %1741 = fmul fast float %1740, %1660
  %1742 = fmul fast float %1731, 2.000000e+00
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1743, %1661
  %1745 = fadd fast float %1744, %1742
  %1746 = fmul fast float %1745, %1661
  br label %1747

; <label>:1747                                    ; preds = %1719, %1717, %1704, %1674, %1658
  %1748 = phi float [ %1659, %1658 ], [ %1736, %1719 ], [ %1659, %1717 ], [ %1714, %1704 ], [ %1684, %1674 ]
  %1749 = phi float [ %1660, %1658 ], [ %1741, %1719 ], [ %1660, %1717 ], [ %1715, %1704 ], [ %1685, %1674 ]
  %1750 = phi float [ %1661, %1658 ], [ %1746, %1719 ], [ %1661, %1717 ], [ %1716, %1704 ], [ %1686, %1674 ]
  %1751 = phi float [ %1662, %1658 ], [ %1662, %1719 ], [ %1662, %1717 ], [ %1662, %1704 ], [ %1696, %1674 ]
  %1752 = phi float [ %1663, %1658 ], [ %1663, %1719 ], [ %1663, %1717 ], [ %1663, %1704 ], [ %1697, %1674 ]
  %1753 = phi float [ %1664, %1658 ], [ %1664, %1719 ], [ %1664, %1717 ], [ %1664, %1704 ], [ %1698, %1674 ]
  %1754 = phi float [ %930, %1658 ], [ %930, %1719 ], [ %930, %1717 ], [ %930, %1704 ], [ %1689, %1674 ]
  %1755 = phi float [ %935, %1658 ], [ %935, %1719 ], [ %935, %1717 ], [ %935, %1704 ], [ %1701, %1674 ]
  %1756 = and i32 %1666, 12
  %1757 = icmp eq i32 %1756, 12
  br i1 %1757, label %1864, label %1758

; <label>:1758                                    ; preds = %1747
  %1759 = and i32 %1666, 2097184
  %1760 = icmp eq i32 %1759, 2097184
  %1761 = select i1 %1760, float %1233, float 0.000000e+00
  %1762 = and i32 %1666, 4194336
  %1763 = icmp eq i32 %1762, 4194336
  %1764 = select i1 %1763, float %1233, float 0.000000e+00
  %1765 = and i32 %1666, 8388640
  %1766 = icmp eq i32 %1765, 8388640
  %1767 = select i1 %1766, float %1233, float 0.000000e+00
  %1768 = and i32 %1666, 2048
  %1769 = icmp ne i32 %1768, 0
  %1770 = select i1 %1769, float %1233, float 0.000000e+00
  %1771 = and i32 %1666, 8192
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %1233, float 0.000000e+00
  %1774 = icmp eq i32 %1756, 0
  br i1 %1774, label %1775, label %1800

; <label>:1775                                    ; preds = %1758
  %1776 = fsub fast float %1534, %919
  %1777 = fsub fast float %1535, %920
  %1778 = fmul fast float %1761, %1776
  %1779 = fmul fast float %1761, %1777
  %1780 = fadd fast float %1778, %919
  %1781 = fadd fast float %1779, %920
  %1782 = fsub fast float %1536, %933
  %1783 = fmul fast float %1764, %1782
  %1784 = fadd fast float %1783, %933
  %1785 = fsub fast float %1533, %932
  %1786 = fmul fast float %1767, %1785
  %1787 = fadd fast float %1786, %932
  %1788 = fsub fast float %1636, %934
  %1789 = fmul fast float %1770, %1788
  %1790 = fadd fast float %1789, %934
  %1791 = fsub fast float %1633, %924
  %1792 = fsub fast float %1634, %925
  %1793 = fsub fast float %1635, %926
  %1794 = fmul fast float %1773, %1791
  %1795 = fmul fast float %1773, %1792
  %1796 = fmul fast float %1773, %1793
  %1797 = fadd fast float %1794, %924
  %1798 = fadd fast float %1795, %925
  %1799 = fadd fast float %1796, %926
  br label %1864

; <label>:1800                                    ; preds = %1758
  %1801 = icmp eq i32 %1756, 4
  br i1 %1801, label %1802, label %1842

; <label>:1802                                    ; preds = %1800
  %1803 = fmul fast float %1761, %1534
  %1804 = fmul fast float %1761, %1535
  %1805 = fadd fast float %1803, %919
  %1806 = fadd fast float %1804, %920
  %1807 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1808 = fsub fast float %1807, %933
  %1809 = fmul fast float %1808, %1764
  %1810 = fadd fast float %1809, %933
  %1811 = fadd fast float %1533, %932
  %1812 = fmul fast float %1811, 0x3FF337FAE0000000
  %1813 = fmul fast float %932, %932
  %1814 = fmul fast float %1533, %1533
  %1815 = fadd fast float %1814, %1813
  %1816 = fmul fast float %1815, 0x3FE5152B00000000
  %1817 = fmul fast float %932, 0xBFCC1F85E0000000
  %1818 = fmul fast float %1817, %1533
  %1819 = fadd fast float %1818, 0xBFE1363700000000
  %1820 = fadd fast float %1819, %1812
  %1821 = fsub fast float %1820, %1816
  %1822 = fmul fast float %1811, 0x3FBA6F0D00000000
  %1823 = fmul fast float %1815, 0x3FD0432880000000
  %1824 = fmul fast float %932, 0xBFEF110800000000
  %1825 = fmul fast float %1824, %1533
  %1826 = fadd fast float %1825, 1.000000e+00
  %1827 = fsub fast float %1826, %1822
  %1828 = fadd fast float %1827, %1823
  %1829 = fdiv fast float %1821, %1828
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1831 = fsub fast float %1830, %932
  %1832 = fmul fast float %1831, %1767
  %1833 = fadd fast float %1832, %932
  %1834 = fmul fast float %1770, %1636
  %1835 = fadd fast float %1834, %934
  %1836 = fmul fast float %1773, %1633
  %1837 = fmul fast float %1773, %1634
  %1838 = fmul fast float %1773, %1635
  %1839 = fadd fast float %1836, %924
  %1840 = fadd fast float %1837, %925
  %1841 = fadd fast float %1838, %926
  br label %1864

; <label>:1842                                    ; preds = %1800
  %1843 = icmp eq i32 %1756, 8
  br i1 %1843, label %1844, label %1864

; <label>:1844                                    ; preds = %1842
  %1845 = fmul fast float %1761, %1534
  %1846 = fmul fast float %1761, %1535
  %1847 = fadd fast float %1845, %919
  %1848 = fadd fast float %1846, %920
  %1849 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1850 = fsub fast float %1849, %933
  %1851 = fmul fast float %1850, %1764
  %1852 = fadd fast float %1851, %933
  %1853 = fsub fast float %1533, %932
  %1854 = fmul fast float %1767, %1853
  %1855 = fadd fast float %1854, %932
  %1856 = fmul fast float %1770, %1636
  %1857 = fadd fast float %1856, %934
  %1858 = fmul fast float %1773, %1633
  %1859 = fmul fast float %1773, %1634
  %1860 = fmul fast float %1773, %1635
  %1861 = fadd fast float %1858, %924
  %1862 = fadd fast float %1859, %925
  %1863 = fadd fast float %1860, %926
  br label %1864

; <label>:1864                                    ; preds = %1844, %1842, %1802, %1775, %1747, %1232, %936, %918
  %1865 = phi float [ %919, %1747 ], [ %919, %1232 ], [ %919, %918 ], [ %1847, %1844 ], [ %919, %1842 ], [ %1805, %1802 ], [ %1780, %1775 ], [ %919, %936 ]
  %1866 = phi float [ %920, %1747 ], [ %920, %1232 ], [ %920, %918 ], [ %1848, %1844 ], [ %920, %1842 ], [ %1806, %1802 ], [ %1781, %1775 ], [ %920, %936 ]
  %1867 = phi float [ %1748, %1747 ], [ %921, %1232 ], [ %921, %918 ], [ %1748, %1844 ], [ %1748, %1842 ], [ %1748, %1802 ], [ %1748, %1775 ], [ %921, %936 ]
  %1868 = phi float [ %1749, %1747 ], [ %922, %1232 ], [ %922, %918 ], [ %1749, %1844 ], [ %1749, %1842 ], [ %1749, %1802 ], [ %1749, %1775 ], [ %922, %936 ]
  %1869 = phi float [ %1750, %1747 ], [ %923, %1232 ], [ %923, %918 ], [ %1750, %1844 ], [ %1750, %1842 ], [ %1750, %1802 ], [ %1750, %1775 ], [ %923, %936 ]
  %1870 = phi float [ %924, %1747 ], [ %924, %1232 ], [ %924, %918 ], [ %1861, %1844 ], [ %924, %1842 ], [ %1839, %1802 ], [ %1797, %1775 ], [ %924, %936 ]
  %1871 = phi float [ %925, %1747 ], [ %925, %1232 ], [ %925, %918 ], [ %1862, %1844 ], [ %925, %1842 ], [ %1840, %1802 ], [ %1798, %1775 ], [ %925, %936 ]
  %1872 = phi float [ %926, %1747 ], [ %926, %1232 ], [ %926, %918 ], [ %1863, %1844 ], [ %926, %1842 ], [ %1841, %1802 ], [ %1799, %1775 ], [ %926, %936 ]
  %1873 = phi float [ %1751, %1747 ], [ %927, %1232 ], [ %927, %918 ], [ %1751, %1844 ], [ %1751, %1842 ], [ %1751, %1802 ], [ %1751, %1775 ], [ %927, %936 ]
  %1874 = phi float [ %1752, %1747 ], [ %928, %1232 ], [ %928, %918 ], [ %1752, %1844 ], [ %1752, %1842 ], [ %1752, %1802 ], [ %1752, %1775 ], [ %928, %936 ]
  %1875 = phi float [ %1753, %1747 ], [ %929, %1232 ], [ %929, %918 ], [ %1753, %1844 ], [ %1753, %1842 ], [ %1753, %1802 ], [ %1753, %1775 ], [ %929, %936 ]
  %1876 = phi float [ %1754, %1747 ], [ %930, %1232 ], [ %930, %918 ], [ %1754, %1844 ], [ %1754, %1842 ], [ %1754, %1802 ], [ %1754, %1775 ], [ %930, %936 ]
  %1877 = phi float [ %932, %1747 ], [ %932, %1232 ], [ %932, %918 ], [ %1855, %1844 ], [ %932, %1842 ], [ %1833, %1802 ], [ %1787, %1775 ], [ %932, %936 ]
  %1878 = phi float [ %933, %1747 ], [ %933, %1232 ], [ %933, %918 ], [ %1852, %1844 ], [ %933, %1842 ], [ %1810, %1802 ], [ %1784, %1775 ], [ %933, %936 ]
  %1879 = phi float [ %934, %1747 ], [ %934, %1232 ], [ %934, %918 ], [ %1857, %1844 ], [ %934, %1842 ], [ %1835, %1802 ], [ %1790, %1775 ], [ %934, %936 ]
  %1880 = phi float [ %1755, %1747 ], [ %935, %1232 ], [ %935, %918 ], [ %1755, %1844 ], [ %1755, %1842 ], [ %1755, %1802 ], [ %1755, %1775 ], [ %935, %936 ]
  br i1 %345, label %2809, label %1881

; <label>:1881                                    ; preds = %1864
  %1882 = icmp ult i32 %398, 3
  %1883 = add i32 %33, 56
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = add i32 %33, 60
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = or i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %2809, label %1891

; <label>:1891                                    ; preds = %1881
  %1892 = and i32 %1885, 262144
  %1893 = icmp ne i32 %1892, 0
  %1894 = select i1 %1893, float %36, float 1.000000e+00
  %1895 = select i1 %1893, float %37, float 0.000000e+00
  %1896 = select i1 %1893, float %38, float 0.000000e+00
  %1897 = select i1 %1893, float %39, float 1.000000e+00
  %1898 = select i1 %1893, float %40, float %61
  %1899 = select i1 %1893, float %41, float %62
  %1900 = add i32 %33, 316
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = lshr i32 %1902, 16
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = fmul fast float %1904, 0x3F50624DE0000000
  %1906 = add i32 %33, 120
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = lshr i32 %1908, 16
  %1910 = and i32 %1909, 255
  %1911 = lshr i32 %1908, 24
  %1912 = add i32 %33, 324
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 65535
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = lshr i32 %1914, 16
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = add i32 %33, 64
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = lshr i32 %1921, 22
  %1923 = shl nuw nsw i32 %1922, 5
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = shl i32 %1921, 4
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = lshr i32 %1921, 7
  %1929 = and i32 %1928, 32752
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 3
  %1933 = fmul fast float %1932, 1.000000e+03
  %1934 = fmul fast float %295, %1933
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = fadd fast float %1935, %285
  %1937 = fmul fast float %296, %1933
  %1938 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1939 = fadd fast float %1938, %287
  %1940 = fmul fast float %1905, %1933
  %1941 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1942 = fmul fast float %1941, 0x401921FB60000000
  %1943 = fadd fast float %1942, %1924
  %1944 = call float @dx.op.unary.f32(i32 13, float %1943)  ; Sin(value)
  %1945 = call float @dx.op.unary.f32(i32 12, float %1943)  ; Cos(value)
  %1946 = fsub fast float -0.000000e+00, %1944
  %1947 = fadd fast float %1898, -5.000000e-01
  %1948 = fadd fast float %1899, -5.000000e-01
  %1949 = fmul fast float %1916, %1947
  %1950 = fmul fast float %1918, %1948
  %1951 = fadd fast float %1949, 5.000000e-01
  %1952 = fadd fast float %1950, 5.000000e-01
  %1953 = fmul fast float %1927, %1951
  %1954 = fmul fast float %1930, %1952
  %1955 = fmul fast float %1945, %1953
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1946, float %1954, float %1955)  ; FMad(a,b,c)
  %1957 = fmul fast float %1944, %1953
  %1958 = call float @dx.op.tertiary.f32(i32 46, float %1945, float %1954, float %1957)  ; FMad(a,b,c)
  %1959 = fadd fast float %1936, %1956
  %1960 = fadd fast float %1939, %1958
  %1961 = icmp ugt i32 %1910, 1
  %1962 = icmp ugt i32 %1908, 33554431
  %1963 = or i1 %1962, %1961
  br i1 %1963, label %1964, label %1989

; <label>:1964                                    ; preds = %1891
  %1965 = add i32 %33, 260
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = lshr i32 %1967, 16
  %1969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1968)  ; LegacyF16ToF32(value)
  %1970 = fmul fast float %1932, %1969
  %1971 = call float @dx.op.unary.f32(i32 22, float %1970)  ; Frc(value)
  %1972 = mul nuw nsw i32 %1910, %1911
  %1973 = uitofp i32 %1972 to float
  %1974 = fmul fast float %1971, %1973
  %1975 = call float @dx.op.unary.f32(i32 27, float %1974)  ; Round_ni(value)
  %1976 = fptoui float %1975 to i32
  %1977 = urem i32 %1976, %1910
  %1978 = udiv i32 %1976, %1911
  %1979 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1980 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1981 = uitofp i32 %1977 to float
  %1982 = uitofp i32 %1978 to float
  %1983 = fadd fast float %1979, %1981
  %1984 = fadd fast float %1980, %1982
  %1985 = uitofp i32 %1910 to float
  %1986 = uitofp i32 %1911 to float
  %1987 = fdiv fast float %1983, %1985
  %1988 = fdiv fast float %1984, %1986
  br label %1989

; <label>:1989                                    ; preds = %1964, %1891
  %1990 = phi float [ %1987, %1964 ], [ %1959, %1891 ]
  %1991 = phi float [ %1988, %1964 ], [ %1960, %1891 ]
  %1992 = and i32 %1885, 16777216
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2103, label %1994

; <label>:1994                                    ; preds = %1989
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1999 = fadd fast float %1996, %128
  %2000 = fadd fast float %1997, %129
  %2001 = fadd fast float %1998, %130
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = icmp eq i32 %34, 65535
  br i1 %2005, label %2100, label %2006

; <label>:2006                                    ; preds = %1994
  %2007 = lshr i32 %34, 1
  %2008 = shl i32 %2007, 2
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %34, 1
  %2012 = icmp ne i32 %2011, 0
  %2013 = lshr i32 %2010, 16
  %2014 = and i32 %2010, 65535
  %2015 = select i1 %2012, i32 %2013, i32 %2014
  %2016 = icmp eq i32 %2015, 65535
  br i1 %2016, label %2096, label %2017

; <label>:2017                                    ; preds = %2006
  %2018 = mul nuw nsw i32 %2015, 40
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2023 = add nuw nsw i32 %2018, 12
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = add nuw nsw i32 %2018, 24
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2033 = add nuw nsw i32 %2018, 36
  %2034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = fsub fast float %1999, %2020
  %2037 = fsub fast float %2000, %2021
  %2038 = fsub fast float %2001, %2022
  %2039 = fmul fast float %2035, %2036
  %2040 = fmul fast float %2035, %2037
  %2041 = fmul fast float %2035, %2038
  %2042 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2043 = call float @dx.op.unary.f32(i32 27, float %2040)  ; Round_ni(value)
  %2044 = call float @dx.op.unary.f32(i32 27, float %2041)  ; Round_ni(value)
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fadd fast float %2043, 5.000000e-01
  %2047 = fadd fast float %2044, 5.000000e-01
  %2048 = fmul fast float %2045, %2025
  %2049 = fmul fast float %2046, %2026
  %2050 = fmul fast float %2047, %2027
  %2051 = shl i32 %34, 2
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = add i32 %2053, 0
  %2055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2056 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2057 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2058 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2055, %dx.types.Handle %30, float %2056, float %2057, float %2058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.ResRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.ResRet.f32 %2059, 2
  %2063 = fmul fast float %2060, 1.023000e+03
  %2064 = fmul fast float %2061, 1.023000e+03
  %2065 = fmul fast float %2062, 1.023000e+03
  %2066 = fadd fast float %2063, 5.000000e-01
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = fsub fast float %2039, %2042
  %2073 = fsub fast float %2040, %2043
  %2074 = fsub fast float %2041, %2044
  %2075 = fmul fast float %2072, 7.500000e-01
  %2076 = fmul fast float %2073, 7.500000e-01
  %2077 = fmul fast float %2074, 7.500000e-01
  %2078 = fadd fast float %2042, 1.250000e-01
  %2079 = fadd fast float %2078, %2075
  %2080 = fadd fast float %2079, %2069
  %2081 = fadd fast float %2043, 1.250000e-01
  %2082 = fadd fast float %2081, %2076
  %2083 = fadd fast float %2082, %2070
  %2084 = fadd fast float %2044, 1.250000e-01
  %2085 = fadd fast float %2084, %2077
  %2086 = fadd fast float %2085, %2071
  %2087 = fmul fast float %2080, %2030
  %2088 = fmul fast float %2083, %2031
  %2089 = fmul fast float %2086, %2032
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2093, %dx.types.Handle %28, float %2087, float %2088, float %2089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  br label %2096

; <label>:2096                                    ; preds = %2017, %2006
  %2097 = phi float [ %2095, %2017 ], [ -1.000000e+00, %2006 ]
  %2098 = fadd fast float %2097, %2004
  %2099 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  br label %2100

; <label>:2100                                    ; preds = %2096, %1994
  %2101 = phi float [ %2099, %2096 ], [ %2004, %1994 ]
  %2102 = fmul fast float %2101, %394
  br label %2103

; <label>:2103                                    ; preds = %2100, %1989
  %2104 = phi float [ %2102, %2100 ], [ %394, %1989 ]
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 256
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2155, label %2109

; <label>:2109                                    ; preds = %2103
  %2110 = add i32 %33, 448
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %2112, 0
  %2114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2114, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = add i32 %33, 132
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = shl i32 %2119, 4
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = lshr i32 %2119, 7
  %2124 = and i32 %2123, 32752
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = fsub fast float 1.000000e+00, %2104
  %2127 = call float @dx.op.binary.f32(i32 35, float %2126, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2128 = bitcast float %2104 to i32
  %2129 = sitofp i32 %2128 to float
  %2130 = fadd fast float %2129, 0xC1CFBF8940000000
  %2131 = fmul fast float %2125, %2130
  %2132 = fadd fast float %2131, 0x41CFBF8940000000
  %2133 = fptosi float %2132 to i32
  %2134 = bitcast i32 %2133 to float
  %2135 = bitcast float %2127 to i32
  %2136 = sitofp i32 %2135 to float
  %2137 = fadd fast float %2136, 0xC1CFBF8940000000
  %2138 = fmul fast float %2137, %2125
  %2139 = fadd fast float %2138, 0x41CFBF8940000000
  %2140 = fptosi float %2139 to i32
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2134, %2122
  %2143 = fmul fast float %2141, %2122
  %2144 = fsub fast float %2127, %2142
  %2145 = fadd fast float %2143, %2127
  %2146 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2148 = fsub fast float %2116, %2146
  %2149 = fsub fast float %2147, %2146
  %2150 = bitcast float %2149 to i32
  %2151 = sub nsw i32 2129859010, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2152, %2148
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  br label %2155

; <label>:2155                                    ; preds = %2109, %2103
  %2156 = phi float [ %2154, %2109 ], [ %2104, %2103 ]
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 128
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2177, label %2161

; <label>:2161                                    ; preds = %2155
  %2162 = add i32 %33, 432
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 524288
  %2172 = icmp ne i32 %2171, 0
  %2173 = fcmp fast ogt float %2168, 0x3FE0101020000000
  %2174 = select i1 %2173, float 1.000000e+00, float 0.000000e+00
  %2175 = select i1 %2172, float %2174, float %2168
  %2176 = fmul fast float %2175, %2156
  br label %2177

; <label>:2177                                    ; preds = %2161, %2155
  %2178 = phi float [ %2176, %2161 ], [ %2156, %2155 ]
  %2179 = fcmp fast ult float %2178, 0x3F70101020000000
  br i1 %2179, label %2809, label %2180

; <label>:2180                                    ; preds = %2177
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 16
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2383, label %2185

; <label>:2185                                    ; preds = %2180
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %33, 384
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %2190, 0
  %2192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2192, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = and i32 %2187, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2187, 8
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2197, %2199
  %2204 = fadd fast float %2203, %2202
  %2205 = fmul fast float %2204, 0x3F70101000000000
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 512
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2218, label %2210

; <label>:2210                                    ; preds = %2185
  %2211 = add i32 %33, 468
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  br label %2218

; <label>:2218                                    ; preds = %2210, %2185
  %2219 = phi float [ %2217, %2210 ], [ 1.000000e+00, %2185 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 33554432
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2330, label %2224

; <label>:2224                                    ; preds = %2218
  %2225 = add i32 %33, 256
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 65535
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2227, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = add i32 %33, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 65535
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 24
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = and i32 %2238, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = lshr i32 %2238, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = lshr i32 %2238, 16
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = add i32 %33, 252
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 24
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = and i32 %2255, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2255, 8
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = lshr i32 %2255, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = bitcast float %2194 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2194, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2194
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2195 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2195, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2195
  %2289 = fmul fast float %2288, %2287
  %2290 = bitcast float %2196 to i32
  %2291 = ashr i32 %2290, 1
  %2292 = sub nsw i32 1597463174, %2291
  %2293 = bitcast i32 %2292 to float
  %2294 = fmul fast float %2196, 5.000000e-01
  %2295 = fmul fast float %2293, %2293
  %2296 = fmul fast float %2295, %2294
  %2297 = fsub fast float 1.500000e+00, %2296
  %2298 = fmul fast float %2293, %2196
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float %2279, %2261
  %2301 = fsub fast float %2289, %2265
  %2302 = fsub fast float %2299, %2269
  %2303 = fmul fast float %2300, %2229
  %2304 = fmul fast float %2301, %2231
  %2305 = fmul fast float %2302, %2236
  %2306 = fadd fast float %2303, %2244
  %2307 = fadd fast float %2304, %2248
  %2308 = fadd fast float %2305, %2252
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2312 = fmul fast float %2309, %2309
  %2313 = fmul fast float %2310, %2310
  %2314 = fmul fast float %2311, %2311
  %2315 = fsub fast float %2312, %2194
  %2316 = fsub fast float %2313, %2195
  %2317 = fsub fast float %2314, %2196
  %2318 = fmul fast float %2315, %2219
  %2319 = fmul fast float %2316, %2219
  %2320 = fmul fast float %2317, %2219
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2320, %2196
  %2324 = fadd fast float %2241, %2205
  %2325 = fsub fast float %2324, %2258
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fsub fast float %2326, %2205
  %2328 = fmul fast float %2327, %2219
  %2329 = fadd fast float %2328, %2205
  br label %2383

; <label>:2330                                    ; preds = %2218
  %2331 = and i32 %2221, 134217728
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2367, label %2333

; <label>:2333                                    ; preds = %2330
  %2334 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fmul fast float %2337, %2219
  %2341 = fmul fast float %2338, %2219
  %2342 = fmul fast float %2339, %2219
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2349 = fmul fast float %2343, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2346
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2346
  %2354 = fmul fast float %2344, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2347
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2347
  %2359 = fmul fast float %2345, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2348
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2348
  %2364 = fmul fast float %2353, %2353
  %2365 = fmul fast float %2358, %2358
  %2366 = fmul fast float %2363, %2363
  br label %2383

; <label>:2367                                    ; preds = %2330
  %2368 = fmul fast float %272, %272
  %2369 = fmul fast float %276, %276
  %2370 = fmul fast float %280, %280
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fadd fast float %2370, -1.000000e+00
  %2374 = fmul fast float %2219, %2371
  %2375 = fmul fast float %2219, %2372
  %2376 = fmul fast float %2219, %2373
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fmul fast float %2377, %2194
  %2381 = fmul fast float %2378, %2195
  %2382 = fmul fast float %2379, %2196
  br label %2383

; <label>:2383                                    ; preds = %2367, %2333, %2224, %2180
  %2384 = phi float [ %2329, %2224 ], [ %2205, %2333 ], [ %2205, %2367 ], [ 0x3FA23C0BE0000000, %2180 ]
  %2385 = phi float [ %2321, %2224 ], [ %2364, %2333 ], [ %2380, %2367 ], [ 1.000000e+00, %2180 ]
  %2386 = phi float [ %2322, %2224 ], [ %2365, %2333 ], [ %2381, %2367 ], [ 1.000000e+00, %2180 ]
  %2387 = phi float [ %2323, %2224 ], [ %2366, %2333 ], [ %2382, %2367 ], [ 1.000000e+00, %2180 ]
  %2388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.i32 %2388, 1
  %2390 = and i32 %2389, 1
  %2391 = icmp ne i32 %2390, 0
  %2392 = add i32 %33, 356
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 32
  %2396 = icmp ne i32 %2395, 0
  %2397 = and i1 %2391, %2396
  %2398 = select i1 %2397, float 1.000000e+00, float %2385
  %2399 = select i1 %2397, float 0x3FD3333340000000, float %2386
  %2400 = select i1 %2397, float 0x3FD3333340000000, float %2387
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 32
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2477, label %2405

; <label>:2405                                    ; preds = %2383
  %2406 = add i32 %33, 124
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %33, 400
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = add i32 %2411, 0
  %2413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2413, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.ResRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.ResRet.f32 %2414, 2
  %2418 = extractvalue %dx.types.ResRet.f32 %2414, 3
  %2419 = and i32 %2408, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2408, 8
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = lshr i32 %2408, 16
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101000000000
  %2428 = fmul fast float %2415, %2420
  %2429 = fadd fast float %2428, %2423
  %2430 = fmul fast float %2429, 0x3F70101000000000
  %2431 = fadd fast float %2416, -5.000000e-01
  %2432 = fadd fast float %2418, -5.000000e-01
  %2433 = fmul fast float %2431, %2427
  %2434 = fmul fast float %2432, %2427
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = fadd fast float %2434, 5.000000e-01
  %2437 = fmul fast float %2435, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fadd fast float %2439, -1.000000e+00
  %2441 = fadd fast float %2438, %2440
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = fsub fast float %2438, %2440
  %2444 = fmul fast float %2443, 5.000000e-01
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2448 = fsub fast float %2446, %2447
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2444, float %2448, float %2442, float %2444, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = call float @dx.op.unary.f32(i32 25, float %2449)  ; Rsqrt(value)
  %2451 = fmul fast float %2442, %2450
  %2452 = fmul fast float %2444, %2450
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 67108864
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2473, label %2457

; <label>:2457                                    ; preds = %2405
  %2458 = add i32 %33, 312
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 65535
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 65535
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = lshr i32 %2460, 16
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = fsub fast float %2430, %2468
  %2470 = fmul fast float %2469, %2462
  %2471 = fadd fast float %2470, %2466
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  br label %2473

; <label>:2473                                    ; preds = %2457, %2405
  %2474 = phi float [ %2472, %2457 ], [ %2430, %2405 ]
  %2475 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %1894, float %1895)  ; Dot2(ax,ay,bx,by)
  %2476 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %1896, float %1897)  ; Dot2(ax,ay,bx,by)
  br label %2477

; <label>:2477                                    ; preds = %2473, %2383
  %2478 = phi float [ %2474, %2473 ], [ 0x3FD6666660000000, %2383 ]
  %2479 = phi float [ %2475, %2473 ], [ 0.000000e+00, %2383 ]
  %2480 = phi float [ %2476, %2473 ], [ 0.000000e+00, %2383 ]
  %2481 = phi float [ %2417, %2473 ], [ 1.000000e+00, %2383 ]
  %2482 = add i32 %33, 192
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 22
  %2486 = shl nuw nsw i32 %2485, 5
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 64
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2525, label %2492

; <label>:2492                                    ; preds = %2477
  %2493 = add i32 %33, 416
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = add i32 %2495, 0
  %2497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 131072
  %2501 = icmp eq i32 %2500, 0
  %2502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2497, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = fmul fast float %2503, %260
  %2507 = fmul fast float %2504, %263
  %2508 = fmul fast float %2505, %266
  br i1 %2501, label %2515, label %2509

; <label>:2509                                    ; preds = %2492
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2506
  %2513 = fmul fast float %2511, %2507
  %2514 = fmul fast float %2511, %2508
  br label %2515

; <label>:2515                                    ; preds = %2509, %2492
  %2516 = phi float [ %2512, %2509 ], [ %2506, %2492 ]
  %2517 = phi float [ %2513, %2509 ], [ %2507, %2492 ]
  %2518 = phi float [ %2514, %2509 ], [ %2508, %2492 ]
  %2519 = fmul fast float %2516, %2487
  %2520 = select i1 %170, float %2519, float %2516
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2520, float %2517, float %2518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = select i1 %170, float 0.000000e+00, float %2516
  %2523 = select i1 %170, float %2521, float %2517
  %2524 = select i1 %170, float 0.000000e+00, float %2518
  br label %2525

; <label>:2525                                    ; preds = %2515, %2477
  %2526 = phi float [ %2522, %2515 ], [ 0.000000e+00, %2477 ]
  %2527 = phi float [ %2523, %2515 ], [ 0.000000e+00, %2477 ]
  %2528 = phi float [ %2524, %2515 ], [ 0.000000e+00, %2477 ]
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 10240
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2577, label %2533

; <label>:2533                                    ; preds = %2525
  %2534 = add i32 %33, 484
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 1048576
  %2545 = icmp ne i32 %2544, 0
  %2546 = and i32 %2543, 8192
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2563, label %2548

; <label>:2548                                    ; preds = %2533
  %2549 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2550 = select i1 %2545, float %2549, float %2540
  %2551 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2552 = select i1 %2545, float %2551, float %2540
  %2553 = add i32 %33, 128
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = lshr i32 %2555, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F80101020000000
  %2560 = fmul fast float %2559, %2552
  %2561 = fmul fast float %2559, %2540
  %2562 = fmul fast float %2559, %2550
  br label %2563

; <label>:2563                                    ; preds = %2548, %2533
  %2564 = phi float [ %2560, %2548 ], [ 0.000000e+00, %2533 ]
  %2565 = phi float [ %2561, %2548 ], [ 0.000000e+00, %2533 ]
  %2566 = phi float [ %2562, %2548 ], [ 0.000000e+00, %2533 ]
  %2567 = and i32 %2543, 2048
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2577, label %2569

; <label>:2569                                    ; preds = %2563
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = shl i32 %2571, 4
  %2573 = and i32 %2572, 32752
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = fmul fast float %2574, %2541
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2577

; <label>:2577                                    ; preds = %2569, %2563, %2525
  %2578 = phi float [ %2564, %2569 ], [ %2564, %2563 ], [ 0.000000e+00, %2525 ]
  %2579 = phi float [ %2565, %2569 ], [ %2565, %2563 ], [ 0.000000e+00, %2525 ]
  %2580 = phi float [ %2566, %2569 ], [ %2566, %2563 ], [ 0.000000e+00, %2525 ]
  %2581 = phi float [ %2576, %2569 ], [ 0x3F70101020000000, %2563 ], [ 0x3F70101020000000, %2525 ]
  %2582 = add i32 %33, 128
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = lshr i32 %2584, 8
  %2588 = and i32 %2587, 255
  %2589 = uitofp i32 %2588 to float
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = fmul fast float %2589, %2590
  %2592 = fadd fast float %2591, %2586
  %2593 = fmul fast float %2592, 0x3F70101020000000
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  br i1 %1882, label %2595, label %2603

; <label>:2595                                    ; preds = %2577
  %2596 = fsub fast float 1.000000e+00, %2178
  %2597 = fmul fast float %2596, %1867
  %2598 = fmul fast float %2596, %1868
  %2599 = fmul fast float %2596, %1869
  %2600 = fmul fast float %2596, %1873
  %2601 = fmul fast float %2596, %1874
  %2602 = fmul fast float %2596, %1875
  br label %2603

; <label>:2603                                    ; preds = %2595, %2577
  %2604 = phi float [ %2597, %2595 ], [ %1867, %2577 ]
  %2605 = phi float [ %2598, %2595 ], [ %1868, %2577 ]
  %2606 = phi float [ %2599, %2595 ], [ %1869, %2577 ]
  %2607 = phi float [ %2600, %2595 ], [ %1873, %2577 ]
  %2608 = phi float [ %2601, %2595 ], [ %1874, %2577 ]
  %2609 = phi float [ %2602, %2595 ], [ %1875, %2577 ]
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 3
  %2613 = icmp eq i32 %2612, 3
  br i1 %2613, label %2692, label %2614

; <label>:2614                                    ; preds = %2603
  %2615 = and i32 %2611, 16
  %2616 = icmp ne i32 %2615, 0
  %2617 = select i1 %2616, float %2178, float 0.000000e+00
  %2618 = icmp eq i32 %2612, 0
  br i1 %2618, label %2619, label %2647

; <label>:2619                                    ; preds = %2614
  %2620 = and i32 %2611, 64
  %2621 = icmp ne i32 %2620, 0
  %2622 = select i1 %2621, float %2178, float 0.000000e+00
  %2623 = fsub fast float %2398, %2604
  %2624 = fsub fast float %2399, %2605
  %2625 = fsub fast float %2400, %2606
  %2626 = fmul fast float %2617, %2623
  %2627 = fmul fast float %2617, %2624
  %2628 = fmul fast float %2617, %2625
  %2629 = fadd fast float %2626, %2604
  %2630 = fadd fast float %2627, %2605
  %2631 = fadd fast float %2628, %2606
  %2632 = fsub fast float %2384, %1876
  %2633 = fmul fast float %2617, %2632
  %2634 = fadd fast float %2633, %1876
  %2635 = fsub fast float %2526, %2607
  %2636 = fsub fast float %2527, %2608
  %2637 = fsub fast float %2528, %2609
  %2638 = fmul fast float %2622, %2635
  %2639 = fmul fast float %2622, %2636
  %2640 = fmul fast float %2622, %2637
  %2641 = fadd fast float %2638, %2607
  %2642 = fadd fast float %2639, %2608
  %2643 = fadd fast float %2640, %2609
  %2644 = fsub fast float %2594, %1880
  %2645 = fmul fast float %2617, %2644
  %2646 = fadd fast float %2645, %1880
  br label %2692

; <label>:2647                                    ; preds = %2614
  %2648 = icmp eq i32 %2612, 1
  br i1 %2648, label %2649, label %2662

; <label>:2649                                    ; preds = %2647
  %2650 = fadd fast float %2398, -1.000000e+00
  %2651 = fadd fast float %2399, -1.000000e+00
  %2652 = fadd fast float %2400, -1.000000e+00
  %2653 = fmul fast float %2617, %2650
  %2654 = fmul fast float %2617, %2651
  %2655 = fmul fast float %2617, %2652
  %2656 = fadd fast float %2653, 1.000000e+00
  %2657 = fadd fast float %2654, 1.000000e+00
  %2658 = fadd fast float %2655, 1.000000e+00
  %2659 = fmul fast float %2656, %2604
  %2660 = fmul fast float %2657, %2605
  %2661 = fmul fast float %2658, %2606
  br label %2692

; <label>:2662                                    ; preds = %2647
  %2663 = icmp eq i32 %2612, 2
  br i1 %2663, label %2664, label %2692

; <label>:2664                                    ; preds = %2662
  %2665 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2667 = call float @dx.op.unary.f32(i32 24, float %2400)  ; Sqrt(value)
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fadd fast float %2667, -5.000000e-01
  %2671 = fmul fast float %2668, %2617
  %2672 = fmul fast float %2669, %2617
  %2673 = fmul fast float %2670, %2617
  %2674 = fadd fast float %2671, 5.000000e-01
  %2675 = fadd fast float %2672, 5.000000e-01
  %2676 = fadd fast float %2673, 5.000000e-01
  %2677 = fmul fast float %2674, 2.000000e+00
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fmul fast float %2678, %2604
  %2680 = fadd fast float %2679, %2677
  %2681 = fmul fast float %2680, %2604
  %2682 = fmul fast float %2675, 2.000000e+00
  %2683 = fsub fast float 1.000000e+00, %2682
  %2684 = fmul fast float %2683, %2605
  %2685 = fadd fast float %2684, %2682
  %2686 = fmul fast float %2685, %2605
  %2687 = fmul fast float %2676, 2.000000e+00
  %2688 = fsub fast float 1.000000e+00, %2687
  %2689 = fmul fast float %2688, %2606
  %2690 = fadd fast float %2689, %2687
  %2691 = fmul fast float %2690, %2606
  br label %2692

; <label>:2692                                    ; preds = %2664, %2662, %2649, %2619, %2603
  %2693 = phi float [ %2604, %2603 ], [ %2681, %2664 ], [ %2604, %2662 ], [ %2659, %2649 ], [ %2629, %2619 ]
  %2694 = phi float [ %2605, %2603 ], [ %2686, %2664 ], [ %2605, %2662 ], [ %2660, %2649 ], [ %2630, %2619 ]
  %2695 = phi float [ %2606, %2603 ], [ %2691, %2664 ], [ %2606, %2662 ], [ %2661, %2649 ], [ %2631, %2619 ]
  %2696 = phi float [ %2607, %2603 ], [ %2607, %2664 ], [ %2607, %2662 ], [ %2607, %2649 ], [ %2641, %2619 ]
  %2697 = phi float [ %2608, %2603 ], [ %2608, %2664 ], [ %2608, %2662 ], [ %2608, %2649 ], [ %2642, %2619 ]
  %2698 = phi float [ %2609, %2603 ], [ %2609, %2664 ], [ %2609, %2662 ], [ %2609, %2649 ], [ %2643, %2619 ]
  %2699 = phi float [ %1876, %2603 ], [ %1876, %2664 ], [ %1876, %2662 ], [ %1876, %2649 ], [ %2634, %2619 ]
  %2700 = phi float [ %1880, %2603 ], [ %1880, %2664 ], [ %1880, %2662 ], [ %1880, %2649 ], [ %2646, %2619 ]
  %2701 = and i32 %2611, 12
  %2702 = icmp eq i32 %2701, 12
  br i1 %2702, label %2809, label %2703

; <label>:2703                                    ; preds = %2692
  %2704 = and i32 %2611, 2097184
  %2705 = icmp eq i32 %2704, 2097184
  %2706 = select i1 %2705, float %2178, float 0.000000e+00
  %2707 = and i32 %2611, 4194336
  %2708 = icmp eq i32 %2707, 4194336
  %2709 = select i1 %2708, float %2178, float 0.000000e+00
  %2710 = and i32 %2611, 8388640
  %2711 = icmp eq i32 %2710, 8388640
  %2712 = select i1 %2711, float %2178, float 0.000000e+00
  %2713 = and i32 %2611, 2048
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %2178, float 0.000000e+00
  %2716 = and i32 %2611, 8192
  %2717 = icmp ne i32 %2716, 0
  %2718 = select i1 %2717, float %2178, float 0.000000e+00
  %2719 = icmp eq i32 %2701, 0
  br i1 %2719, label %2720, label %2745

; <label>:2720                                    ; preds = %2703
  %2721 = fsub fast float %2479, %1865
  %2722 = fsub fast float %2480, %1866
  %2723 = fmul fast float %2706, %2721
  %2724 = fmul fast float %2706, %2722
  %2725 = fadd fast float %2723, %1865
  %2726 = fadd fast float %2724, %1866
  %2727 = fsub fast float %2481, %1878
  %2728 = fmul fast float %2709, %2727
  %2729 = fadd fast float %2728, %1878
  %2730 = fsub fast float %2478, %1877
  %2731 = fmul fast float %2712, %2730
  %2732 = fadd fast float %2731, %1877
  %2733 = fsub fast float %2581, %1879
  %2734 = fmul fast float %2715, %2733
  %2735 = fadd fast float %2734, %1879
  %2736 = fsub fast float %2578, %1870
  %2737 = fsub fast float %2579, %1871
  %2738 = fsub fast float %2580, %1872
  %2739 = fmul fast float %2718, %2736
  %2740 = fmul fast float %2718, %2737
  %2741 = fmul fast float %2718, %2738
  %2742 = fadd fast float %2739, %1870
  %2743 = fadd fast float %2740, %1871
  %2744 = fadd fast float %2741, %1872
  br label %2809

; <label>:2745                                    ; preds = %2703
  %2746 = icmp eq i32 %2701, 4
  br i1 %2746, label %2747, label %2787

; <label>:2747                                    ; preds = %2745
  %2748 = fmul fast float %2706, %2479
  %2749 = fmul fast float %2706, %2480
  %2750 = fadd fast float %2748, %1865
  %2751 = fadd fast float %2749, %1866
  %2752 = call float @dx.op.binary.f32(i32 36, float %1878, float %2481)  ; FMin(a,b)
  %2753 = fsub fast float %2752, %1878
  %2754 = fmul fast float %2753, %2709
  %2755 = fadd fast float %2754, %1878
  %2756 = fadd fast float %2478, %1877
  %2757 = fmul fast float %2756, 0x3FF337FAE0000000
  %2758 = fmul fast float %1877, %1877
  %2759 = fmul fast float %2478, %2478
  %2760 = fadd fast float %2759, %2758
  %2761 = fmul fast float %2760, 0x3FE5152B00000000
  %2762 = fmul fast float %1877, 0xBFCC1F85E0000000
  %2763 = fmul fast float %2762, %2478
  %2764 = fadd fast float %2763, 0xBFE1363700000000
  %2765 = fadd fast float %2764, %2757
  %2766 = fsub fast float %2765, %2761
  %2767 = fmul fast float %2756, 0x3FBA6F0D00000000
  %2768 = fmul fast float %2760, 0x3FD0432880000000
  %2769 = fmul fast float %1877, 0xBFEF110800000000
  %2770 = fmul fast float %2769, %2478
  %2771 = fadd fast float %2770, 1.000000e+00
  %2772 = fsub fast float %2771, %2767
  %2773 = fadd fast float %2772, %2768
  %2774 = fdiv fast float %2766, %2773
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fsub fast float %2775, %1877
  %2777 = fmul fast float %2776, %2712
  %2778 = fadd fast float %2777, %1877
  %2779 = fmul fast float %2715, %2581
  %2780 = fadd fast float %2779, %1879
  %2781 = fmul fast float %2718, %2578
  %2782 = fmul fast float %2718, %2579
  %2783 = fmul fast float %2718, %2580
  %2784 = fadd fast float %2781, %1870
  %2785 = fadd fast float %2782, %1871
  %2786 = fadd fast float %2783, %1872
  br label %2809

; <label>:2787                                    ; preds = %2745
  %2788 = icmp eq i32 %2701, 8
  br i1 %2788, label %2789, label %2809

; <label>:2789                                    ; preds = %2787
  %2790 = fmul fast float %2706, %2479
  %2791 = fmul fast float %2706, %2480
  %2792 = fadd fast float %2790, %1865
  %2793 = fadd fast float %2791, %1866
  %2794 = call float @dx.op.binary.f32(i32 36, float %1878, float %2481)  ; FMin(a,b)
  %2795 = fsub fast float %2794, %1878
  %2796 = fmul fast float %2795, %2709
  %2797 = fadd fast float %2796, %1878
  %2798 = fsub fast float %2478, %1877
  %2799 = fmul fast float %2712, %2798
  %2800 = fadd fast float %2799, %1877
  %2801 = fmul fast float %2715, %2581
  %2802 = fadd fast float %2801, %1879
  %2803 = fmul fast float %2718, %2578
  %2804 = fmul fast float %2718, %2579
  %2805 = fmul fast float %2718, %2580
  %2806 = fadd fast float %2803, %1870
  %2807 = fadd fast float %2804, %1871
  %2808 = fadd fast float %2805, %1872
  br label %2809

; <label>:2809                                    ; preds = %2789, %2787, %2747, %2720, %2692, %2177, %1881, %1864
  %2810 = phi float [ %1865, %2692 ], [ %1865, %2177 ], [ %1865, %1864 ], [ %2792, %2789 ], [ %1865, %2787 ], [ %2750, %2747 ], [ %2725, %2720 ], [ %1865, %1881 ]
  %2811 = phi float [ %1866, %2692 ], [ %1866, %2177 ], [ %1866, %1864 ], [ %2793, %2789 ], [ %1866, %2787 ], [ %2751, %2747 ], [ %2726, %2720 ], [ %1866, %1881 ]
  %2812 = phi float [ %2693, %2692 ], [ %1867, %2177 ], [ %1867, %1864 ], [ %2693, %2789 ], [ %2693, %2787 ], [ %2693, %2747 ], [ %2693, %2720 ], [ %1867, %1881 ]
  %2813 = phi float [ %2694, %2692 ], [ %1868, %2177 ], [ %1868, %1864 ], [ %2694, %2789 ], [ %2694, %2787 ], [ %2694, %2747 ], [ %2694, %2720 ], [ %1868, %1881 ]
  %2814 = phi float [ %2695, %2692 ], [ %1869, %2177 ], [ %1869, %1864 ], [ %2695, %2789 ], [ %2695, %2787 ], [ %2695, %2747 ], [ %2695, %2720 ], [ %1869, %1881 ]
  %2815 = phi float [ %1870, %2692 ], [ %1870, %2177 ], [ %1870, %1864 ], [ %2806, %2789 ], [ %1870, %2787 ], [ %2784, %2747 ], [ %2742, %2720 ], [ %1870, %1881 ]
  %2816 = phi float [ %1871, %2692 ], [ %1871, %2177 ], [ %1871, %1864 ], [ %2807, %2789 ], [ %1871, %2787 ], [ %2785, %2747 ], [ %2743, %2720 ], [ %1871, %1881 ]
  %2817 = phi float [ %1872, %2692 ], [ %1872, %2177 ], [ %1872, %1864 ], [ %2808, %2789 ], [ %1872, %2787 ], [ %2786, %2747 ], [ %2744, %2720 ], [ %1872, %1881 ]
  %2818 = phi float [ %2696, %2692 ], [ %1873, %2177 ], [ %1873, %1864 ], [ %2696, %2789 ], [ %2696, %2787 ], [ %2696, %2747 ], [ %2696, %2720 ], [ %1873, %1881 ]
  %2819 = phi float [ %2697, %2692 ], [ %1874, %2177 ], [ %1874, %1864 ], [ %2697, %2789 ], [ %2697, %2787 ], [ %2697, %2747 ], [ %2697, %2720 ], [ %1874, %1881 ]
  %2820 = phi float [ %2698, %2692 ], [ %1875, %2177 ], [ %1875, %1864 ], [ %2698, %2789 ], [ %2698, %2787 ], [ %2698, %2747 ], [ %2698, %2720 ], [ %1875, %1881 ]
  %2821 = phi float [ %2699, %2692 ], [ %1876, %2177 ], [ %1876, %1864 ], [ %2699, %2789 ], [ %2699, %2787 ], [ %2699, %2747 ], [ %2699, %2720 ], [ %1876, %1881 ]
  %2822 = phi float [ %1877, %2692 ], [ %1877, %2177 ], [ %1877, %1864 ], [ %2800, %2789 ], [ %1877, %2787 ], [ %2778, %2747 ], [ %2732, %2720 ], [ %1877, %1881 ]
  %2823 = phi float [ %1878, %2692 ], [ %1878, %2177 ], [ %1878, %1864 ], [ %2797, %2789 ], [ %1878, %2787 ], [ %2755, %2747 ], [ %2729, %2720 ], [ %1878, %1881 ]
  %2824 = phi float [ %1879, %2692 ], [ %1879, %2177 ], [ %1879, %1864 ], [ %2802, %2789 ], [ %1879, %2787 ], [ %2780, %2747 ], [ %2735, %2720 ], [ %1879, %1881 ]
  %2825 = phi float [ %2700, %2692 ], [ %1880, %2177 ], [ %1880, %1864 ], [ %2700, %2789 ], [ %2700, %2787 ], [ %2700, %2747 ], [ %2700, %2720 ], [ %1880, %1881 ]
  br i1 %347, label %3754, label %2826

; <label>:2826                                    ; preds = %2809
  %2827 = icmp ult i32 %398, 4
  %2828 = add i32 %33, 72
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %33, 76
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = or i32 %2833, %2830
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %3754, label %2836

; <label>:2836                                    ; preds = %2826
  %2837 = and i32 %2830, 262144
  %2838 = icmp ne i32 %2837, 0
  %2839 = select i1 %2838, float %36, float 1.000000e+00
  %2840 = select i1 %2838, float %37, float 0.000000e+00
  %2841 = select i1 %2838, float %38, float 0.000000e+00
  %2842 = select i1 %2838, float %39, float 1.000000e+00
  %2843 = select i1 %2838, float %40, float %61
  %2844 = select i1 %2838, float %41, float %62
  %2845 = add i32 %33, 332
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = lshr i32 %2847, 16
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = fmul fast float %2849, 0x3F50624DE0000000
  %2851 = add i32 %33, 136
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 16
  %2855 = and i32 %2854, 255
  %2856 = lshr i32 %2853, 24
  %2857 = add i32 %33, 340
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 65535
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2859, 16
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = add i32 %33, 80
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = lshr i32 %2866, 22
  %2868 = shl nuw nsw i32 %2867, 5
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = shl i32 %2866, 4
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = lshr i32 %2866, 7
  %2874 = and i32 %2873, 32752
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 3
  %2878 = fmul fast float %2877, 1.000000e+03
  %2879 = fmul fast float %337, %2878
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = fadd fast float %2880, %327
  %2882 = fmul fast float %338, %2878
  %2883 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2884 = fadd fast float %2883, %329
  %2885 = fmul fast float %2850, %2878
  %2886 = call float @dx.op.unary.f32(i32 22, float %2885)  ; Frc(value)
  %2887 = fmul fast float %2886, 0x401921FB60000000
  %2888 = fadd fast float %2887, %2869
  %2889 = call float @dx.op.unary.f32(i32 13, float %2888)  ; Sin(value)
  %2890 = call float @dx.op.unary.f32(i32 12, float %2888)  ; Cos(value)
  %2891 = fsub fast float -0.000000e+00, %2889
  %2892 = fadd fast float %2843, -5.000000e-01
  %2893 = fadd fast float %2844, -5.000000e-01
  %2894 = fmul fast float %2861, %2892
  %2895 = fmul fast float %2863, %2893
  %2896 = fadd fast float %2894, 5.000000e-01
  %2897 = fadd fast float %2895, 5.000000e-01
  %2898 = fmul fast float %2872, %2896
  %2899 = fmul fast float %2875, %2897
  %2900 = fmul fast float %2890, %2898
  %2901 = call float @dx.op.tertiary.f32(i32 46, float %2891, float %2899, float %2900)  ; FMad(a,b,c)
  %2902 = fmul fast float %2889, %2898
  %2903 = call float @dx.op.tertiary.f32(i32 46, float %2890, float %2899, float %2902)  ; FMad(a,b,c)
  %2904 = fadd fast float %2881, %2901
  %2905 = fadd fast float %2884, %2903
  %2906 = icmp ugt i32 %2855, 1
  %2907 = icmp ugt i32 %2853, 33554431
  %2908 = or i1 %2907, %2906
  br i1 %2908, label %2909, label %2934

; <label>:2909                                    ; preds = %2836
  %2910 = add i32 %33, 276
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = lshr i32 %2912, 16
  %2914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2913)  ; LegacyF16ToF32(value)
  %2915 = fmul fast float %2877, %2914
  %2916 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2917 = mul nuw nsw i32 %2855, %2856
  %2918 = uitofp i32 %2917 to float
  %2919 = fmul fast float %2916, %2918
  %2920 = call float @dx.op.unary.f32(i32 27, float %2919)  ; Round_ni(value)
  %2921 = fptoui float %2920 to i32
  %2922 = urem i32 %2921, %2855
  %2923 = udiv i32 %2921, %2856
  %2924 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2925 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2926 = uitofp i32 %2922 to float
  %2927 = uitofp i32 %2923 to float
  %2928 = fadd fast float %2924, %2926
  %2929 = fadd fast float %2925, %2927
  %2930 = uitofp i32 %2855 to float
  %2931 = uitofp i32 %2856 to float
  %2932 = fdiv fast float %2928, %2930
  %2933 = fdiv fast float %2929, %2931
  br label %2934

; <label>:2934                                    ; preds = %2909, %2836
  %2935 = phi float [ %2932, %2909 ], [ %2904, %2836 ]
  %2936 = phi float [ %2933, %2909 ], [ %2905, %2836 ]
  %2937 = and i32 %2830, 16777216
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3048, label %2939

; <label>:2939                                    ; preds = %2934
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = fadd fast float %2941, %128
  %2945 = fadd fast float %2942, %129
  %2946 = fadd fast float %2943, %130
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = icmp eq i32 %34, 65535
  br i1 %2950, label %3045, label %2951

; <label>:2951                                    ; preds = %2939
  %2952 = lshr i32 %34, 1
  %2953 = shl i32 %2952, 2
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %34, 1
  %2957 = icmp ne i32 %2956, 0
  %2958 = lshr i32 %2955, 16
  %2959 = and i32 %2955, 65535
  %2960 = select i1 %2957, i32 %2958, i32 %2959
  %2961 = icmp eq i32 %2960, 65535
  br i1 %2961, label %3041, label %2962

; <label>:2962                                    ; preds = %2951
  %2963 = mul nuw nsw i32 %2960, 40
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = add nuw nsw i32 %2963, 12
  %2969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = add nuw nsw i32 %2963, 24
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2978 = add nuw nsw i32 %2963, 36
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = fsub fast float %2944, %2965
  %2982 = fsub fast float %2945, %2966
  %2983 = fsub fast float %2946, %2967
  %2984 = fmul fast float %2980, %2981
  %2985 = fmul fast float %2980, %2982
  %2986 = fmul fast float %2980, %2983
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = fadd fast float %2988, 5.000000e-01
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fmul fast float %2990, %2970
  %2994 = fmul fast float %2991, %2971
  %2995 = fmul fast float %2992, %2972
  %2996 = shl i32 %34, 2
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = add i32 %2998, 0
  %3000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3001 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3003 = call float @dx.op.unary.f32(i32 22, float %2995)  ; Frc(value)
  %3004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3000, %dx.types.Handle %30, float %3001, float %3002, float %3003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = fmul fast float %3005, 1.023000e+03
  %3009 = fmul fast float %3006, 1.023000e+03
  %3010 = fmul fast float %3007, 1.023000e+03
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = fsub fast float %2984, %2987
  %3018 = fsub fast float %2985, %2988
  %3019 = fsub fast float %2986, %2989
  %3020 = fmul fast float %3017, 7.500000e-01
  %3021 = fmul fast float %3018, 7.500000e-01
  %3022 = fmul fast float %3019, 7.500000e-01
  %3023 = fadd fast float %2987, 1.250000e-01
  %3024 = fadd fast float %3023, %3020
  %3025 = fadd fast float %3024, %3014
  %3026 = fadd fast float %2988, 1.250000e-01
  %3027 = fadd fast float %3026, %3021
  %3028 = fadd fast float %3027, %3015
  %3029 = fadd fast float %2989, 1.250000e-01
  %3030 = fadd fast float %3029, %3022
  %3031 = fadd fast float %3030, %3016
  %3032 = fmul fast float %3025, %2975
  %3033 = fmul fast float %3028, %2976
  %3034 = fmul fast float %3031, %2977
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = add i32 %3036, 0
  %3038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3038, %dx.types.Handle %28, float %3032, float %3033, float %3034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  br label %3041

; <label>:3041                                    ; preds = %2962, %2951
  %3042 = phi float [ %3040, %2962 ], [ -1.000000e+00, %2951 ]
  %3043 = fadd fast float %3042, %2949
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  br label %3045

; <label>:3045                                    ; preds = %3041, %2939
  %3046 = phi float [ %3044, %3041 ], [ %2949, %2939 ]
  %3047 = fmul fast float %3046, %393
  br label %3048

; <label>:3048                                    ; preds = %3045, %2934
  %3049 = phi float [ %3047, %3045 ], [ %393, %2934 ]
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 256
  %3053 = icmp eq i32 %3052, 0
  br i1 %3053, label %3100, label %3054

; <label>:3054                                    ; preds = %3048
  %3055 = add i32 %33, 452
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = add i32 %3057, 0
  %3059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3059, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = add i32 %33, 148
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = shl i32 %3064, 4
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = lshr i32 %3064, 7
  %3069 = and i32 %3068, 32752
  %3070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3069)  ; LegacyF16ToF32(value)
  %3071 = fsub fast float 1.000000e+00, %3049
  %3072 = call float @dx.op.binary.f32(i32 35, float %3071, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3073 = bitcast float %3049 to i32
  %3074 = sitofp i32 %3073 to float
  %3075 = fadd fast float %3074, 0xC1CFBF8940000000
  %3076 = fmul fast float %3070, %3075
  %3077 = fadd fast float %3076, 0x41CFBF8940000000
  %3078 = fptosi float %3077 to i32
  %3079 = bitcast i32 %3078 to float
  %3080 = bitcast float %3072 to i32
  %3081 = sitofp i32 %3080 to float
  %3082 = fadd fast float %3081, 0xC1CFBF8940000000
  %3083 = fmul fast float %3082, %3070
  %3084 = fadd fast float %3083, 0x41CFBF8940000000
  %3085 = fptosi float %3084 to i32
  %3086 = bitcast i32 %3085 to float
  %3087 = fmul fast float %3079, %3067
  %3088 = fmul fast float %3086, %3067
  %3089 = fsub fast float %3072, %3087
  %3090 = fadd fast float %3088, %3072
  %3091 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = fsub fast float %3061, %3091
  %3094 = fsub fast float %3092, %3091
  %3095 = bitcast float %3094 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3097, %3093
  %3099 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  br label %3100

; <label>:3100                                    ; preds = %3054, %3048
  %3101 = phi float [ %3099, %3054 ], [ %3049, %3048 ]
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 128
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3122, label %3106

; <label>:3106                                    ; preds = %3100
  %3107 = add i32 %33, 436
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %3109, 0
  %3111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3111, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3113 = extractvalue %dx.types.ResRet.f32 %3112, 0
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 524288
  %3117 = icmp ne i32 %3116, 0
  %3118 = fcmp fast ogt float %3113, 0x3FE0101020000000
  %3119 = select i1 %3118, float 1.000000e+00, float 0.000000e+00
  %3120 = select i1 %3117, float %3119, float %3113
  %3121 = fmul fast float %3120, %3101
  br label %3122

; <label>:3122                                    ; preds = %3106, %3100
  %3123 = phi float [ %3121, %3106 ], [ %3101, %3100 ]
  %3124 = fcmp fast ult float %3123, 0x3F70101020000000
  br i1 %3124, label %3754, label %3125

; <label>:3125                                    ; preds = %3122
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 16
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3328, label %3130

; <label>:3130                                    ; preds = %3125
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %33, 388
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3138, 3
  %3143 = and i32 %3132, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = lshr i32 %3132, 8
  %3146 = and i32 %3145, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3142, %3144
  %3149 = fadd fast float %3148, %3147
  %3150 = fmul fast float %3149, 0x3F70101000000000
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 512
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3163, label %3155

; <label>:3155                                    ; preds = %3130
  %3156 = add i32 %33, 472
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %3158, 0
  %3160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3160, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  br label %3163

; <label>:3163                                    ; preds = %3155, %3130
  %3164 = phi float [ %3162, %3155 ], [ 1.000000e+00, %3130 ]
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 33554432
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3275, label %3169

; <label>:3169                                    ; preds = %3163
  %3170 = add i32 %33, 272
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3172, 16
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = add i32 %33, 276
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = lshr i32 %3183, 24
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = and i32 %3183, 255
  %3188 = uitofp i32 %3187 to float
  %3189 = fmul fast float %3188, 0x3F70101020000000
  %3190 = lshr i32 %3183, 8
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3183, 16
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = add i32 %33, 268
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = lshr i32 %3200, 24
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = and i32 %3200, 255
  %3205 = uitofp i32 %3204 to float
  %3206 = fmul fast float %3205, 0x3F70101020000000
  %3207 = lshr i32 %3200, 8
  %3208 = and i32 %3207, 255
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3209, 0x3F70101020000000
  %3211 = lshr i32 %3200, 16
  %3212 = and i32 %3211, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = bitcast float %3139 to i32
  %3216 = ashr i32 %3215, 1
  %3217 = sub nsw i32 1597463174, %3216
  %3218 = bitcast i32 %3217 to float
  %3219 = fmul fast float %3139, 5.000000e-01
  %3220 = fmul fast float %3218, %3218
  %3221 = fmul fast float %3220, %3219
  %3222 = fsub fast float 1.500000e+00, %3221
  %3223 = fmul fast float %3218, %3139
  %3224 = fmul fast float %3223, %3222
  %3225 = bitcast float %3140 to i32
  %3226 = ashr i32 %3225, 1
  %3227 = sub nsw i32 1597463174, %3226
  %3228 = bitcast i32 %3227 to float
  %3229 = fmul fast float %3140, 5.000000e-01
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float 1.500000e+00, %3231
  %3233 = fmul fast float %3228, %3140
  %3234 = fmul fast float %3233, %3232
  %3235 = bitcast float %3141 to i32
  %3236 = ashr i32 %3235, 1
  %3237 = sub nsw i32 1597463174, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3141, 5.000000e-01
  %3240 = fmul fast float %3238, %3238
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float 1.500000e+00, %3241
  %3243 = fmul fast float %3238, %3141
  %3244 = fmul fast float %3243, %3242
  %3245 = fsub fast float %3224, %3206
  %3246 = fsub fast float %3234, %3210
  %3247 = fsub fast float %3244, %3214
  %3248 = fmul fast float %3245, %3174
  %3249 = fmul fast float %3246, %3176
  %3250 = fmul fast float %3247, %3181
  %3251 = fadd fast float %3248, %3189
  %3252 = fadd fast float %3249, %3193
  %3253 = fadd fast float %3250, %3197
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3257 = fmul fast float %3254, %3254
  %3258 = fmul fast float %3255, %3255
  %3259 = fmul fast float %3256, %3256
  %3260 = fsub fast float %3257, %3139
  %3261 = fsub fast float %3258, %3140
  %3262 = fsub fast float %3259, %3141
  %3263 = fmul fast float %3260, %3164
  %3264 = fmul fast float %3261, %3164
  %3265 = fmul fast float %3262, %3164
  %3266 = fadd fast float %3263, %3139
  %3267 = fadd fast float %3264, %3140
  %3268 = fadd fast float %3265, %3141
  %3269 = fadd fast float %3186, %3150
  %3270 = fsub fast float %3269, %3203
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = fsub fast float %3271, %3150
  %3273 = fmul fast float %3272, %3164
  %3274 = fadd fast float %3273, %3150
  br label %3328

; <label>:3275                                    ; preds = %3163
  %3276 = and i32 %3166, 134217728
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3312, label %3278

; <label>:3278                                    ; preds = %3275
  %3279 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fmul fast float %3282, %3164
  %3286 = fmul fast float %3283, %3164
  %3287 = fmul fast float %3284, %3164
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3294 = fmul fast float %3288, 2.000000e+00
  %3295 = fsub fast float 1.000000e+00, %3294
  %3296 = fmul fast float %3295, %3291
  %3297 = fadd fast float %3296, %3294
  %3298 = fmul fast float %3297, %3291
  %3299 = fmul fast float %3289, 2.000000e+00
  %3300 = fsub fast float 1.000000e+00, %3299
  %3301 = fmul fast float %3300, %3292
  %3302 = fadd fast float %3301, %3299
  %3303 = fmul fast float %3302, %3292
  %3304 = fmul fast float %3290, 2.000000e+00
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = fmul fast float %3305, %3293
  %3307 = fadd fast float %3306, %3304
  %3308 = fmul fast float %3307, %3293
  %3309 = fmul fast float %3298, %3298
  %3310 = fmul fast float %3303, %3303
  %3311 = fmul fast float %3308, %3308
  br label %3328

; <label>:3312                                    ; preds = %3275
  %3313 = fmul fast float %314, %314
  %3314 = fmul fast float %318, %318
  %3315 = fmul fast float %322, %322
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fmul fast float %3164, %3316
  %3320 = fmul fast float %3164, %3317
  %3321 = fmul fast float %3164, %3318
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fmul fast float %3322, %3139
  %3326 = fmul fast float %3323, %3140
  %3327 = fmul fast float %3324, %3141
  br label %3328

; <label>:3328                                    ; preds = %3312, %3278, %3169, %3125
  %3329 = phi float [ %3274, %3169 ], [ %3150, %3278 ], [ %3150, %3312 ], [ 0x3FA23C0BE0000000, %3125 ]
  %3330 = phi float [ %3266, %3169 ], [ %3309, %3278 ], [ %3325, %3312 ], [ 1.000000e+00, %3125 ]
  %3331 = phi float [ %3267, %3169 ], [ %3310, %3278 ], [ %3326, %3312 ], [ 1.000000e+00, %3125 ]
  %3332 = phi float [ %3268, %3169 ], [ %3311, %3278 ], [ %3327, %3312 ], [ 1.000000e+00, %3125 ]
  %3333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.i32 %3333, 1
  %3335 = and i32 %3334, 1
  %3336 = icmp ne i32 %3335, 0
  %3337 = add i32 %33, 356
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 32
  %3341 = icmp ne i32 %3340, 0
  %3342 = and i1 %3336, %3341
  %3343 = select i1 %3342, float 1.000000e+00, float %3330
  %3344 = select i1 %3342, float 0x3FD3333340000000, float %3331
  %3345 = select i1 %3342, float 0x3FD3333340000000, float %3332
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 32
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3422, label %3350

; <label>:3350                                    ; preds = %3328
  %3351 = add i32 %33, 140
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %33, 404
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = add i32 %3356, 0
  %3358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3358, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 1
  %3362 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3359, 3
  %3364 = and i32 %3353, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3353, 8
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = lshr i32 %3353, 16
  %3370 = and i32 %3369, 255
  %3371 = uitofp i32 %3370 to float
  %3372 = fmul fast float %3371, 0x3F70101000000000
  %3373 = fmul fast float %3360, %3365
  %3374 = fadd fast float %3373, %3368
  %3375 = fmul fast float %3374, 0x3F70101000000000
  %3376 = fadd fast float %3361, -5.000000e-01
  %3377 = fadd fast float %3363, -5.000000e-01
  %3378 = fmul fast float %3376, %3372
  %3379 = fmul fast float %3377, %3372
  %3380 = fadd fast float %3378, 5.000000e-01
  %3381 = fadd fast float %3379, 5.000000e-01
  %3382 = fmul fast float %3380, 2.000000e+00
  %3383 = fadd fast float %3382, -1.000000e+00
  %3384 = fmul fast float %3381, 2.000000e+00
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = fadd fast float %3383, %3385
  %3387 = fmul fast float %3386, 5.000000e-01
  %3388 = fsub fast float %3383, %3385
  %3389 = fmul fast float %3388, 5.000000e-01
  %3390 = call float @dx.op.unary.f32(i32 6, float %3387)  ; FAbs(value)
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = call float @dx.op.unary.f32(i32 6, float %3389)  ; FAbs(value)
  %3393 = fsub fast float %3391, %3392
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3387, float %3389, float %3393, float %3387, float %3389, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = call float @dx.op.unary.f32(i32 25, float %3394)  ; Rsqrt(value)
  %3396 = fmul fast float %3387, %3395
  %3397 = fmul fast float %3389, %3395
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 67108864
  %3401 = icmp eq i32 %3400, 0
  br i1 %3401, label %3418, label %3402

; <label>:3402                                    ; preds = %3350
  %3403 = add i32 %33, 328
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 65535
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = and i32 %3409, 65535
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = lshr i32 %3405, 16
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = fsub fast float %3375, %3413
  %3415 = fmul fast float %3414, %3407
  %3416 = fadd fast float %3415, %3411
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  br label %3418

; <label>:3418                                    ; preds = %3402, %3350
  %3419 = phi float [ %3417, %3402 ], [ %3375, %3350 ]
  %3420 = call float @dx.op.dot2.f32(i32 54, float %3396, float %3397, float %2839, float %2840)  ; Dot2(ax,ay,bx,by)
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3396, float %3397, float %2841, float %2842)  ; Dot2(ax,ay,bx,by)
  br label %3422

; <label>:3422                                    ; preds = %3418, %3328
  %3423 = phi float [ %3419, %3418 ], [ 0x3FD6666660000000, %3328 ]
  %3424 = phi float [ %3420, %3418 ], [ 0.000000e+00, %3328 ]
  %3425 = phi float [ %3421, %3418 ], [ 0.000000e+00, %3328 ]
  %3426 = phi float [ %3362, %3418 ], [ 1.000000e+00, %3328 ]
  %3427 = add i32 %33, 208
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = lshr i32 %3429, 22
  %3431 = shl nuw nsw i32 %3430, 5
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 64
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3470, label %3437

; <label>:3437                                    ; preds = %3422
  %3438 = add i32 %33, 420
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = add i32 %3440, 0
  %3442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = and i32 %3444, 131072
  %3446 = icmp eq i32 %3445, 0
  %3447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3442, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = fmul fast float %3448, %302
  %3452 = fmul fast float %3449, %305
  %3453 = fmul fast float %3450, %308
  br i1 %3446, label %3460, label %3454

; <label>:3454                                    ; preds = %3437
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = fmul fast float %3456, %3451
  %3458 = fmul fast float %3456, %3452
  %3459 = fmul fast float %3456, %3453
  br label %3460

; <label>:3460                                    ; preds = %3454, %3437
  %3461 = phi float [ %3457, %3454 ], [ %3451, %3437 ]
  %3462 = phi float [ %3458, %3454 ], [ %3452, %3437 ]
  %3463 = phi float [ %3459, %3454 ], [ %3453, %3437 ]
  %3464 = fmul fast float %3461, %3432
  %3465 = select i1 %170, float %3464, float %3461
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3462, float %3463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = select i1 %170, float 0.000000e+00, float %3461
  %3468 = select i1 %170, float %3466, float %3462
  %3469 = select i1 %170, float 0.000000e+00, float %3463
  br label %3470

; <label>:3470                                    ; preds = %3460, %3422
  %3471 = phi float [ %3467, %3460 ], [ 0.000000e+00, %3422 ]
  %3472 = phi float [ %3468, %3460 ], [ 0.000000e+00, %3422 ]
  %3473 = phi float [ %3469, %3460 ], [ 0.000000e+00, %3422 ]
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 10240
  %3477 = icmp eq i32 %3476, 0
  br i1 %3477, label %3522, label %3478

; <label>:3478                                    ; preds = %3470
  %3479 = add i32 %33, 488
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = add i32 %3481, 0
  %3483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3483, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %3488, 1048576
  %3490 = icmp ne i32 %3489, 0
  %3491 = and i32 %3488, 8192
  %3492 = icmp eq i32 %3491, 0
  br i1 %3492, label %3508, label %3493

; <label>:3493                                    ; preds = %3478
  %3494 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3495 = select i1 %3490, float %3494, float %3485
  %3496 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3497 = select i1 %3490, float %3496, float %3485
  %3498 = add i32 %33, 144
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = lshr i32 %3500, 16
  %3502 = and i32 %3501, 255
  %3503 = uitofp i32 %3502 to float
  %3504 = fmul fast float %3503, 0x3F80101020000000
  %3505 = fmul fast float %3504, %3497
  %3506 = fmul fast float %3504, %3485
  %3507 = fmul fast float %3504, %3495
  br label %3508

; <label>:3508                                    ; preds = %3493, %3478
  %3509 = phi float [ %3505, %3493 ], [ 0.000000e+00, %3478 ]
  %3510 = phi float [ %3506, %3493 ], [ 0.000000e+00, %3478 ]
  %3511 = phi float [ %3507, %3493 ], [ 0.000000e+00, %3478 ]
  %3512 = and i32 %3488, 2048
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3522, label %3514

; <label>:3514                                    ; preds = %3508
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = shl i32 %3516, 4
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = fmul fast float %3519, %3486
  %3521 = call float @dx.op.binary.f32(i32 35, float %3520, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3522

; <label>:3522                                    ; preds = %3514, %3508, %3470
  %3523 = phi float [ %3509, %3514 ], [ %3509, %3508 ], [ 0.000000e+00, %3470 ]
  %3524 = phi float [ %3510, %3514 ], [ %3510, %3508 ], [ 0.000000e+00, %3470 ]
  %3525 = phi float [ %3511, %3514 ], [ %3511, %3508 ], [ 0.000000e+00, %3470 ]
  %3526 = phi float [ %3521, %3514 ], [ 0x3F70101020000000, %3508 ], [ 0x3F70101020000000, %3470 ]
  %3527 = add i32 %33, 144
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = lshr i32 %3529, 8
  %3533 = and i32 %3532, 255
  %3534 = uitofp i32 %3533 to float
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3344, float %3345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = fmul fast float %3534, %3535
  %3537 = fadd fast float %3536, %3531
  %3538 = fmul fast float %3537, 0x3F70101020000000
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  br i1 %2827, label %3540, label %3548

; <label>:3540                                    ; preds = %3522
  %3541 = fsub fast float 1.000000e+00, %3123
  %3542 = fmul fast float %3541, %2812
  %3543 = fmul fast float %3541, %2813
  %3544 = fmul fast float %3541, %2814
  %3545 = fmul fast float %3541, %2818
  %3546 = fmul fast float %3541, %2819
  %3547 = fmul fast float %3541, %2820
  br label %3548

; <label>:3548                                    ; preds = %3540, %3522
  %3549 = phi float [ %3542, %3540 ], [ %2812, %3522 ]
  %3550 = phi float [ %3543, %3540 ], [ %2813, %3522 ]
  %3551 = phi float [ %3544, %3540 ], [ %2814, %3522 ]
  %3552 = phi float [ %3545, %3540 ], [ %2818, %3522 ]
  %3553 = phi float [ %3546, %3540 ], [ %2819, %3522 ]
  %3554 = phi float [ %3547, %3540 ], [ %2820, %3522 ]
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 3
  %3558 = icmp eq i32 %3557, 3
  br i1 %3558, label %3637, label %3559

; <label>:3559                                    ; preds = %3548
  %3560 = and i32 %3556, 16
  %3561 = icmp ne i32 %3560, 0
  %3562 = select i1 %3561, float %3123, float 0.000000e+00
  %3563 = icmp eq i32 %3557, 0
  br i1 %3563, label %3564, label %3592

; <label>:3564                                    ; preds = %3559
  %3565 = and i32 %3556, 64
  %3566 = icmp ne i32 %3565, 0
  %3567 = select i1 %3566, float %3123, float 0.000000e+00
  %3568 = fsub fast float %3343, %3549
  %3569 = fsub fast float %3344, %3550
  %3570 = fsub fast float %3345, %3551
  %3571 = fmul fast float %3562, %3568
  %3572 = fmul fast float %3562, %3569
  %3573 = fmul fast float %3562, %3570
  %3574 = fadd fast float %3571, %3549
  %3575 = fadd fast float %3572, %3550
  %3576 = fadd fast float %3573, %3551
  %3577 = fsub fast float %3329, %2821
  %3578 = fmul fast float %3562, %3577
  %3579 = fadd fast float %3578, %2821
  %3580 = fsub fast float %3471, %3552
  %3581 = fsub fast float %3472, %3553
  %3582 = fsub fast float %3473, %3554
  %3583 = fmul fast float %3567, %3580
  %3584 = fmul fast float %3567, %3581
  %3585 = fmul fast float %3567, %3582
  %3586 = fadd fast float %3583, %3552
  %3587 = fadd fast float %3584, %3553
  %3588 = fadd fast float %3585, %3554
  %3589 = fsub fast float %3539, %2825
  %3590 = fmul fast float %3562, %3589
  %3591 = fadd fast float %3590, %2825
  br label %3637

; <label>:3592                                    ; preds = %3559
  %3593 = icmp eq i32 %3557, 1
  br i1 %3593, label %3594, label %3607

; <label>:3594                                    ; preds = %3592
  %3595 = fadd fast float %3343, -1.000000e+00
  %3596 = fadd fast float %3344, -1.000000e+00
  %3597 = fadd fast float %3345, -1.000000e+00
  %3598 = fmul fast float %3562, %3595
  %3599 = fmul fast float %3562, %3596
  %3600 = fmul fast float %3562, %3597
  %3601 = fadd fast float %3598, 1.000000e+00
  %3602 = fadd fast float %3599, 1.000000e+00
  %3603 = fadd fast float %3600, 1.000000e+00
  %3604 = fmul fast float %3601, %3549
  %3605 = fmul fast float %3602, %3550
  %3606 = fmul fast float %3603, %3551
  br label %3637

; <label>:3607                                    ; preds = %3592
  %3608 = icmp eq i32 %3557, 2
  br i1 %3608, label %3609, label %3637

; <label>:3609                                    ; preds = %3607
  %3610 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3611 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3613 = fadd fast float %3610, -5.000000e-01
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fmul fast float %3613, %3562
  %3617 = fmul fast float %3614, %3562
  %3618 = fmul fast float %3615, %3562
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = fmul fast float %3619, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3549
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3549
  %3627 = fmul fast float %3620, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3550
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3550
  %3632 = fmul fast float %3621, 2.000000e+00
  %3633 = fsub fast float 1.000000e+00, %3632
  %3634 = fmul fast float %3633, %3551
  %3635 = fadd fast float %3634, %3632
  %3636 = fmul fast float %3635, %3551
  br label %3637

; <label>:3637                                    ; preds = %3609, %3607, %3594, %3564, %3548
  %3638 = phi float [ %3549, %3548 ], [ %3626, %3609 ], [ %3549, %3607 ], [ %3604, %3594 ], [ %3574, %3564 ]
  %3639 = phi float [ %3550, %3548 ], [ %3631, %3609 ], [ %3550, %3607 ], [ %3605, %3594 ], [ %3575, %3564 ]
  %3640 = phi float [ %3551, %3548 ], [ %3636, %3609 ], [ %3551, %3607 ], [ %3606, %3594 ], [ %3576, %3564 ]
  %3641 = phi float [ %3552, %3548 ], [ %3552, %3609 ], [ %3552, %3607 ], [ %3552, %3594 ], [ %3586, %3564 ]
  %3642 = phi float [ %3553, %3548 ], [ %3553, %3609 ], [ %3553, %3607 ], [ %3553, %3594 ], [ %3587, %3564 ]
  %3643 = phi float [ %3554, %3548 ], [ %3554, %3609 ], [ %3554, %3607 ], [ %3554, %3594 ], [ %3588, %3564 ]
  %3644 = phi float [ %2821, %3548 ], [ %2821, %3609 ], [ %2821, %3607 ], [ %2821, %3594 ], [ %3579, %3564 ]
  %3645 = phi float [ %2825, %3548 ], [ %2825, %3609 ], [ %2825, %3607 ], [ %2825, %3594 ], [ %3591, %3564 ]
  %3646 = and i32 %3556, 12
  %3647 = icmp eq i32 %3646, 12
  br i1 %3647, label %3754, label %3648

; <label>:3648                                    ; preds = %3637
  %3649 = and i32 %3556, 2097184
  %3650 = icmp eq i32 %3649, 2097184
  %3651 = select i1 %3650, float %3123, float 0.000000e+00
  %3652 = and i32 %3556, 4194336
  %3653 = icmp eq i32 %3652, 4194336
  %3654 = select i1 %3653, float %3123, float 0.000000e+00
  %3655 = and i32 %3556, 8388640
  %3656 = icmp eq i32 %3655, 8388640
  %3657 = select i1 %3656, float %3123, float 0.000000e+00
  %3658 = and i32 %3556, 2048
  %3659 = icmp ne i32 %3658, 0
  %3660 = select i1 %3659, float %3123, float 0.000000e+00
  %3661 = and i32 %3556, 8192
  %3662 = icmp ne i32 %3661, 0
  %3663 = select i1 %3662, float %3123, float 0.000000e+00
  %3664 = icmp eq i32 %3646, 0
  br i1 %3664, label %3665, label %3690

; <label>:3665                                    ; preds = %3648
  %3666 = fsub fast float %3424, %2810
  %3667 = fsub fast float %3425, %2811
  %3668 = fmul fast float %3651, %3666
  %3669 = fmul fast float %3651, %3667
  %3670 = fadd fast float %3668, %2810
  %3671 = fadd fast float %3669, %2811
  %3672 = fsub fast float %3426, %2823
  %3673 = fmul fast float %3654, %3672
  %3674 = fadd fast float %3673, %2823
  %3675 = fsub fast float %3423, %2822
  %3676 = fmul fast float %3657, %3675
  %3677 = fadd fast float %3676, %2822
  %3678 = fsub fast float %3526, %2824
  %3679 = fmul fast float %3660, %3678
  %3680 = fadd fast float %3679, %2824
  %3681 = fsub fast float %3523, %2815
  %3682 = fsub fast float %3524, %2816
  %3683 = fsub fast float %3525, %2817
  %3684 = fmul fast float %3663, %3681
  %3685 = fmul fast float %3663, %3682
  %3686 = fmul fast float %3663, %3683
  %3687 = fadd fast float %3684, %2815
  %3688 = fadd fast float %3685, %2816
  %3689 = fadd fast float %3686, %2817
  br label %3754

; <label>:3690                                    ; preds = %3648
  %3691 = icmp eq i32 %3646, 4
  br i1 %3691, label %3692, label %3732

; <label>:3692                                    ; preds = %3690
  %3693 = fmul fast float %3651, %3424
  %3694 = fmul fast float %3651, %3425
  %3695 = fadd fast float %3693, %2810
  %3696 = fadd fast float %3694, %2811
  %3697 = call float @dx.op.binary.f32(i32 36, float %2823, float %3426)  ; FMin(a,b)
  %3698 = fsub fast float %3697, %2823
  %3699 = fmul fast float %3698, %3654
  %3700 = fadd fast float %3699, %2823
  %3701 = fadd fast float %3423, %2822
  %3702 = fmul fast float %3701, 0x3FF337FAE0000000
  %3703 = fmul fast float %2822, %2822
  %3704 = fmul fast float %3423, %3423
  %3705 = fadd fast float %3704, %3703
  %3706 = fmul fast float %3705, 0x3FE5152B00000000
  %3707 = fmul fast float %2822, 0xBFCC1F85E0000000
  %3708 = fmul fast float %3707, %3423
  %3709 = fadd fast float %3708, 0xBFE1363700000000
  %3710 = fadd fast float %3709, %3702
  %3711 = fsub fast float %3710, %3706
  %3712 = fmul fast float %3701, 0x3FBA6F0D00000000
  %3713 = fmul fast float %3705, 0x3FD0432880000000
  %3714 = fmul fast float %2822, 0xBFEF110800000000
  %3715 = fmul fast float %3714, %3423
  %3716 = fadd fast float %3715, 1.000000e+00
  %3717 = fsub fast float %3716, %3712
  %3718 = fadd fast float %3717, %3713
  %3719 = fdiv fast float %3711, %3718
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fsub fast float %3720, %2822
  %3722 = fmul fast float %3721, %3657
  %3723 = fadd fast float %3722, %2822
  %3724 = fmul fast float %3660, %3526
  %3725 = fadd fast float %3724, %2824
  %3726 = fmul fast float %3663, %3523
  %3727 = fmul fast float %3663, %3524
  %3728 = fmul fast float %3663, %3525
  %3729 = fadd fast float %3726, %2815
  %3730 = fadd fast float %3727, %2816
  %3731 = fadd fast float %3728, %2817
  br label %3754

; <label>:3732                                    ; preds = %3690
  %3733 = icmp eq i32 %3646, 8
  br i1 %3733, label %3734, label %3754

; <label>:3734                                    ; preds = %3732
  %3735 = fmul fast float %3651, %3424
  %3736 = fmul fast float %3651, %3425
  %3737 = fadd fast float %3735, %2810
  %3738 = fadd fast float %3736, %2811
  %3739 = call float @dx.op.binary.f32(i32 36, float %2823, float %3426)  ; FMin(a,b)
  %3740 = fsub fast float %3739, %2823
  %3741 = fmul fast float %3740, %3654
  %3742 = fadd fast float %3741, %2823
  %3743 = fsub fast float %3423, %2822
  %3744 = fmul fast float %3657, %3743
  %3745 = fadd fast float %3744, %2822
  %3746 = fmul fast float %3660, %3526
  %3747 = fadd fast float %3746, %2824
  %3748 = fmul fast float %3663, %3523
  %3749 = fmul fast float %3663, %3524
  %3750 = fmul fast float %3663, %3525
  %3751 = fadd fast float %3748, %2815
  %3752 = fadd fast float %3749, %2816
  %3753 = fadd fast float %3750, %2817
  br label %3754

; <label>:3754                                    ; preds = %3734, %3732, %3692, %3665, %3637, %3122, %2826, %2809
  %3755 = phi float [ %2810, %3637 ], [ %2810, %3122 ], [ %2810, %2809 ], [ %2810, %2826 ], [ %3670, %3665 ], [ %3695, %3692 ], [ %2810, %3732 ], [ %3737, %3734 ]
  %3756 = phi float [ %2811, %3637 ], [ %2811, %3122 ], [ %2811, %2809 ], [ %2811, %2826 ], [ %3671, %3665 ], [ %3696, %3692 ], [ %2811, %3732 ], [ %3738, %3734 ]
  %3757 = phi float [ %3638, %3637 ], [ %2812, %3122 ], [ %2812, %2809 ], [ %2812, %2826 ], [ %3638, %3665 ], [ %3638, %3692 ], [ %3638, %3732 ], [ %3638, %3734 ]
  %3758 = phi float [ %3639, %3637 ], [ %2813, %3122 ], [ %2813, %2809 ], [ %2813, %2826 ], [ %3639, %3665 ], [ %3639, %3692 ], [ %3639, %3732 ], [ %3639, %3734 ]
  %3759 = phi float [ %3640, %3637 ], [ %2814, %3122 ], [ %2814, %2809 ], [ %2814, %2826 ], [ %3640, %3665 ], [ %3640, %3692 ], [ %3640, %3732 ], [ %3640, %3734 ]
  %3760 = phi float [ %2815, %3637 ], [ %2815, %3122 ], [ %2815, %2809 ], [ %2815, %2826 ], [ %3687, %3665 ], [ %3729, %3692 ], [ %2815, %3732 ], [ %3751, %3734 ]
  %3761 = phi float [ %2816, %3637 ], [ %2816, %3122 ], [ %2816, %2809 ], [ %2816, %2826 ], [ %3688, %3665 ], [ %3730, %3692 ], [ %2816, %3732 ], [ %3752, %3734 ]
  %3762 = phi float [ %2817, %3637 ], [ %2817, %3122 ], [ %2817, %2809 ], [ %2817, %2826 ], [ %3689, %3665 ], [ %3731, %3692 ], [ %2817, %3732 ], [ %3753, %3734 ]
  %3763 = phi float [ %3641, %3637 ], [ %2818, %3122 ], [ %2818, %2809 ], [ %2818, %2826 ], [ %3641, %3665 ], [ %3641, %3692 ], [ %3641, %3732 ], [ %3641, %3734 ]
  %3764 = phi float [ %3642, %3637 ], [ %2819, %3122 ], [ %2819, %2809 ], [ %2819, %2826 ], [ %3642, %3665 ], [ %3642, %3692 ], [ %3642, %3732 ], [ %3642, %3734 ]
  %3765 = phi float [ %3643, %3637 ], [ %2820, %3122 ], [ %2820, %2809 ], [ %2820, %2826 ], [ %3643, %3665 ], [ %3643, %3692 ], [ %3643, %3732 ], [ %3643, %3734 ]
  %3766 = phi float [ %3644, %3637 ], [ %2821, %3122 ], [ %2821, %2809 ], [ %2821, %2826 ], [ %3644, %3665 ], [ %3644, %3692 ], [ %3644, %3732 ], [ %3644, %3734 ]
  %3767 = phi float [ %2822, %3637 ], [ %2822, %3122 ], [ %2822, %2809 ], [ %2822, %2826 ], [ %3677, %3665 ], [ %3723, %3692 ], [ %2822, %3732 ], [ %3745, %3734 ]
  %3768 = phi float [ %2823, %3637 ], [ %2823, %3122 ], [ %2823, %2809 ], [ %2823, %2826 ], [ %3674, %3665 ], [ %3700, %3692 ], [ %2823, %3732 ], [ %3742, %3734 ]
  %3769 = phi float [ %2824, %3637 ], [ %2824, %3122 ], [ %2824, %2809 ], [ %2824, %2826 ], [ %3680, %3665 ], [ %3725, %3692 ], [ %2824, %3732 ], [ %3747, %3734 ]
  %3770 = phi float [ %3645, %3637 ], [ %2825, %3122 ], [ %2825, %2809 ], [ %2825, %2826 ], [ %3645, %3665 ], [ %3645, %3692 ], [ %3645, %3732 ], [ %3645, %3734 ]
  %3771 = add i32 %33, 360
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.i32 %3772, 1
  %3775 = bitcast i32 %3773 to float
  %3776 = bitcast i32 %3774 to float
  %3777 = fcmp fast oge float %3775, 0.000000e+00
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = select i1 %3777, float %3775, float %3779
  %3781 = add i32 %33, 456
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = add i32 %3783, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3785, %dx.types.Handle %70, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = fmul fast float %3787, %3776
  %3789 = fadd fast float %3788, %3780
  %3790 = call float @dx.op.dot2.f32(i32 54, float %3755, float %3756, float %3755, float %3756)  ; Dot2(ax,ay,bx,by)
  %3791 = fmul fast float %3790, 0x3FE3333340000000
  %3792 = fsub fast float 1.000000e+00, %3791
  %3793 = call float @dx.op.dot3.f32(i32 55, float %3755, float %3756, float %3792, float %3755, float %3756, float %3792)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call float @dx.op.unary.f32(i32 25, float %3793)  ; Rsqrt(value)
  %3795 = fmul fast float %3794, %3755
  %3796 = fmul fast float %3794, %3756
  %3797 = fmul fast float %3792, %3794
  %3798 = fmul fast float %3797, %80
  %3799 = fmul fast float %3797, %81
  %3800 = fmul fast float %3797, %82
  %3801 = fmul fast float %3795, %54
  %3802 = fmul fast float %3795, %55
  %3803 = fmul fast float %3795, %56
  %3804 = fadd fast float %3798, %3801
  %3805 = fadd fast float %3799, %3802
  %3806 = fadd fast float %3800, %3803
  %3807 = fmul fast float %92, %3796
  %3808 = fmul fast float %93, %3796
  %3809 = fmul fast float %94, %3796
  %3810 = fadd fast float %3804, %3807
  %3811 = fadd fast float %3805, %3808
  %3812 = fadd fast float %3806, %3809
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float %3810, float %3811, float %3812)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call float @dx.op.unary.f32(i32 25, float %3813)  ; Rsqrt(value)
  %3815 = fmul fast float %3810, %3814
  %3816 = fmul fast float %3811, %3814
  %3817 = fmul fast float %3812, %3814
  %3818 = and i32 %35, 1
  %3819 = icmp eq i32 %3818, 0
  br i1 %3819, label %3820, label %4381

; <label>:3820                                    ; preds = %3754
  %3821 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3822 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3823 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3824 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3825 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3826 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3827 = fadd fast float %3821, %128
  %3828 = fadd fast float %3822, %129
  %3829 = fadd fast float %3823, %130
  %3830 = fadd fast float %3824, %128
  %3831 = fadd fast float %3825, %129
  %3832 = fadd fast float %3826, %130
  %3833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.CBufRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.CBufRet.f32 %3833, 2
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3840 = fmul fast float %3834, %73
  %3841 = fmul fast float %3840, %3838
  %3842 = fmul fast float %3835, %74
  %3843 = fmul fast float %3842, %3839
  %3844 = fptoui float %3841 to i32
  %3845 = fptoui float %3843 to i32
  %3846 = fadd fast float %3834, -1.000000e+00
  %3847 = fadd fast float %3835, -1.000000e+00
  %3848 = fptoui float %3846 to i32
  %3849 = fptoui float %3847 to i32
  %3850 = call i32 @dx.op.binary.i32(i32 40, i32 %3844, i32 %3848)  ; UMin(a,b)
  %3851 = call i32 @dx.op.binary.i32(i32 40, i32 %3845, i32 %3849)  ; UMin(a,b)
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3855 = fmul fast float %3853, %68
  %3856 = fsub fast float %3855, %3854
  %3857 = fadd fast float %3836, -1.000000e+00
  %3858 = call float @dx.op.binary.f32(i32 36, float %3856, float %3857)  ; FMin(a,b)
  %3859 = fptoui float %3858 to i32
  %3860 = fptoui float %3834 to i32
  %3861 = fptoui float %3835 to i32
  %3862 = mul i32 %3859, %3861
  %3863 = add i32 %3862, %3851
  %3864 = mul i32 %3863, %3860
  %3865 = add i32 %3864, %3850
  %3866 = shl i32 %3865, 2
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = and i32 %3868, 1023
  %3870 = lshr i32 %3868, 10
  %3871 = icmp eq i32 %3869, 0
  br i1 %3871, label %4347, label %3872

; <label>:3872                                    ; preds = %3820
  %3873 = and i32 %3868, 1023
  br label %3874

; <label>:3874                                    ; preds = %4003, %3872
  %3875 = phi i32 [ %3953, %4003 ], [ 0, %3872 ]
  %3876 = phi float [ %4004, %4003 ], [ 0.000000e+00, %3872 ]
  %3877 = phi float [ %4005, %4003 ], [ %3789, %3872 ]
  %3878 = phi float [ %4006, %4003 ], [ %3770, %3872 ]
  %3879 = phi float [ %4007, %4003 ], [ 0.000000e+00, %3872 ]
  %3880 = phi float [ %4008, %4003 ], [ 0.000000e+00, %3872 ]
  %3881 = phi float [ %4009, %4003 ], [ %3760, %3872 ]
  %3882 = phi float [ %4010, %4003 ], [ %3761, %3872 ]
  %3883 = phi float [ %4011, %4003 ], [ %3762, %3872 ]
  %3884 = phi float [ %4012, %4003 ], [ %3763, %3872 ]
  %3885 = phi float [ %4013, %4003 ], [ %3764, %3872 ]
  %3886 = phi float [ %4014, %4003 ], [ %3765, %3872 ]
  %3887 = phi float [ %4015, %4003 ], [ %3815, %3872 ]
  %3888 = phi float [ %4016, %4003 ], [ %3816, %3872 ]
  %3889 = phi float [ %4017, %4003 ], [ %3817, %3872 ]
  %3890 = phi float [ %4018, %4003 ], [ %3768, %3872 ]
  %3891 = phi float [ %4019, %4003 ], [ %3767, %3872 ]
  %3892 = phi float [ %4020, %4003 ], [ 0.000000e+00, %3872 ]
  %3893 = phi float [ %4021, %4003 ], [ %3766, %3872 ]
  %3894 = phi float [ %4022, %4003 ], [ %3757, %3872 ]
  %3895 = phi float [ %4023, %4003 ], [ %3758, %3872 ]
  %3896 = phi float [ %4024, %4003 ], [ %3759, %3872 ]
  %3897 = add nuw nsw i32 %3875, %3870
  %3898 = shl i32 %3897, 2
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = shl i32 %3900, 8
  %3902 = or i32 %3901, 48
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = extractvalue %dx.types.ResRet.f32 %3903, 3
  %3908 = or i32 %3901, 64
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.i32 %3909, 1
  %3912 = or i32 %3901, 80
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 3
  %3916 = or i32 %3901, 96
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = or i32 %3901, 112
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3925 = or i32 %3901, 128
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.ResRet.f32 %3926, 3
  %3931 = or i32 %3901, 144
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %3937 = or i32 %3901, 160
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = or i32 %3901, 192
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = or i32 %3901, 208
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = or i32 %3901, 248
  %3950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.ResRet.f32 %3950, 1
  %3953 = add nuw nsw i32 %3875, 1
  %3954 = bitcast float %3907 to i32
  %3955 = and i32 %3954, 512
  %3956 = icmp eq i32 %3955, 0
  %3957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = extractvalue %dx.types.ResRet.f32 %3957, 3
  %3962 = call float @dx.op.dot4.f32(i32 56, float %3958, float %3959, float %3960, float %3961, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3963 = or i32 %3901, 16
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = or i32 %3901, 32
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3971, 2
  %3975 = extractvalue %dx.types.ResRet.f32 %3971, 3
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = call float @dx.op.unary.f32(i32 27, float %3962)  ; Round_ni(value)
  %3978 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3979 = call float @dx.op.unary.f32(i32 27, float %3969)  ; Round_ni(value)
  %3980 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3981 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3982 = call float @dx.op.unary.f32(i32 27, float %3981)  ; Round_ni(value)
  %3983 = fadd fast float %3980, %3978
  %3984 = fadd fast float %3983, %3982
  %3985 = fcmp fast oeq float %3984, 0.000000e+00
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3958, float %3959, float %3960, float %3961, float %3827, float %3828, float %3829, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3827, float %3828, float %3829, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3988 = call float @dx.op.dot4.f32(i32 56, float %3958, float %3959, float %3960, float %3961, float %3830, float %3831, float %3832, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3989 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3830, float %3831, float %3832, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3990 = fsub fast float %3986, %3962
  %3991 = fsub fast float %3988, %3962
  %3992 = fsub fast float %3987, %3969
  %3993 = fsub fast float %3989, %3969
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %3997 = fadd fast float %3996, %3994
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %4000 = fcmp fast ogt float %3998, %3999
  %4001 = and i1 %3985, %4000
  %4002 = and i1 %3956, %4001
  br i1 %4002, label %4026, label %4003

; <label>:4003                                    ; preds = %4333, %4107, %4026, %3874
  %4004 = phi float [ %3876, %4026 ], [ %4110, %4107 ], [ %4110, %4333 ], [ %3876, %3874 ]
  %4005 = phi float [ %3877, %4026 ], [ %3877, %4107 ], [ %4309, %4333 ], [ %3877, %3874 ]
  %4006 = phi float [ %3878, %4026 ], [ %3878, %4107 ], [ %4307, %4333 ], [ %3878, %3874 ]
  %4007 = phi float [ %3879, %4026 ], [ %3879, %4107 ], [ %4234, %4333 ], [ %3879, %3874 ]
  %4008 = phi float [ %3880, %4026 ], [ %3880, %4107 ], [ %4232, %4333 ], [ %3880, %3874 ]
  %4009 = phi float [ %3881, %4026 ], [ %3881, %4107 ], [ %4277, %4333 ], [ %3881, %3874 ]
  %4010 = phi float [ %3882, %4026 ], [ %3882, %4107 ], [ %4278, %4333 ], [ %3882, %3874 ]
  %4011 = phi float [ %3883, %4026 ], [ %3883, %4107 ], [ %4279, %4333 ], [ %3883, %3874 ]
  %4012 = phi float [ %3884, %4026 ], [ %3884, %4107 ], [ %4343, %4333 ], [ %3884, %3874 ]
  %4013 = phi float [ %3885, %4026 ], [ %3885, %4107 ], [ %4344, %4333 ], [ %3885, %3874 ]
  %4014 = phi float [ %3886, %4026 ], [ %3886, %4107 ], [ %4345, %4333 ], [ %3886, %3874 ]
  %4015 = phi float [ %3887, %4026 ], [ %3887, %4107 ], [ %4213, %4333 ], [ %3887, %3874 ]
  %4016 = phi float [ %3888, %4026 ], [ %3888, %4107 ], [ %4214, %4333 ], [ %3888, %3874 ]
  %4017 = phi float [ %3889, %4026 ], [ %3889, %4107 ], [ %4215, %4333 ], [ %3889, %3874 ]
  %4018 = phi float [ %3890, %4026 ], [ %3890, %4107 ], [ %4287, %4333 ], [ %3890, %3874 ]
  %4019 = phi float [ %3891, %4026 ], [ %3891, %4107 ], [ %4284, %4333 ], [ %3891, %3874 ]
  %4020 = phi float [ %3892, %4026 ], [ %3892, %4107 ], [ %4281, %4333 ], [ %3892, %3874 ]
  %4021 = phi float [ %3893, %4026 ], [ %3893, %4107 ], [ %4230, %4333 ], [ %3893, %3874 ]
  %4022 = phi float [ %3894, %4026 ], [ %3894, %4107 ], [ %4225, %4333 ], [ %3894, %3874 ]
  %4023 = phi float [ %3895, %4026 ], [ %3895, %4107 ], [ %4226, %4333 ], [ %3895, %3874 ]
  %4024 = phi float [ %3896, %4026 ], [ %3896, %4107 ], [ %4227, %4333 ], [ %3896, %3874 ]
  %4025 = icmp eq i32 %3953, %3873
  br i1 %4025, label %4346, label %3874

; <label>:4026                                    ; preds = %3874
  %4027 = extractvalue %dx.types.ResRet.f32 %3923, 3
  %4028 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %4030 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %4031 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %4032 = extractvalue %dx.types.ResRet.i32 %3909, 3
  %4033 = extractvalue %dx.types.ResRet.i32 %3909, 2
  %4034 = add i32 %4032, 0
  %4035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4034, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4035, %dx.types.Handle %4036, float %3962, float %3969, float undef, float undef, i32 0, i32 0, i32 undef, float %3990, float %3992, float undef, float %3991, float %3993, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = fmul fast float %4038, %4031
  %4040 = fadd fast float %4039, %4030
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %3962, %3918
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3969, float %4042)  ; FMad(a,b,c)
  %4044 = fadd fast float %4043, %4029
  %4045 = fmul fast float %3962, %3920
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3969, float %4045)  ; FMad(a,b,c)
  %4047 = fadd fast float %4046, %4028
  %4048 = fmul fast float %3990, %3918
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3992, float %4048)  ; FMad(a,b,c)
  %4050 = fmul fast float %3990, %3920
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3992, float %4050)  ; FMad(a,b,c)
  %4052 = fmul fast float %3991, %3918
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %3919, float %3993, float %4052)  ; FMad(a,b,c)
  %4054 = fmul fast float %3991, %3920
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %3921, float %3993, float %4054)  ; FMad(a,b,c)
  %4056 = add i32 %4033, 0
  %4057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4058 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4057, %dx.types.Handle %4036, float %4044, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float %4049, float %4051, float undef, float %4053, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = and i32 %3954, 1024
  %4061 = icmp ne i32 %4060, 0
  %4062 = fcmp fast ogt float %4059, 0x3FE0101020000000
  %4063 = uitofp i1 %4062 to float
  %4064 = select i1 %4061, float %4063, float %4059
  %4065 = and i32 %3954, 8192
  %4066 = icmp ne i32 %4065, 0
  %4067 = select i1 %4066, float %4027, float 1.000000e+00
  %4068 = fmul fast float %3962, 2.000000e+00
  %4069 = fadd fast float %4068, -1.000000e+00
  %4070 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4071 = fmul fast float %4070, %3951
  %4072 = fsub fast float %4071, %3951
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %3969, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = call float @dx.op.unary.f32(i32 6, float %4075)  ; FAbs(value)
  %4077 = fmul fast float %4076, %3952
  %4078 = fsub fast float %4077, %3952
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = fmul fast float %3981, %3914
  %4081 = fsub fast float %4080, %3914
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = fmul fast float %4041, %4067
  %4084 = fmul fast float %4083, %4038
  %4085 = fmul fast float %4084, %4073
  %4086 = fmul fast float %4085, %4064
  %4087 = fmul fast float %4086, %4079
  %4088 = fmul fast float %4087, %4082
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4092 = fsub fast float %3998, %4091
  %4093 = fmul fast float %4092, %4090
  %4094 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4095 = fmul fast float %4088, %3915
  %4096 = fadd fast float %4088, %3915
  %4097 = fmul fast float %4096, %3924
  %4098 = fsub fast float %4097, %3924
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = and i32 %3954, 128
  %4101 = icmp ne i32 %4100, 0
  %4102 = select i1 %4101, float %4099, float %4095
  %4103 = fmul fast float %4102, %4094
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = fcmp fast ugt float %4103, %4105
  br i1 %4106, label %4107, label %4003

; <label>:4107                                    ; preds = %4026
  %4108 = select i1 %4066, float %4103, float 0.000000e+00
  %4109 = fadd fast float %4108, %3876
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  br i1 %4066, label %4003, label %4111

; <label>:4111                                    ; preds = %4107
  %4112 = and i32 %3954, 4
  %4113 = and i32 %3954, 8
  %4114 = add i32 %3910, 0
  %4115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4117 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4115, %dx.types.Handle %4116, float %4044, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float %4049, float %4051, float undef, float %4053, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = extractvalue %dx.types.ResRet.f32 %4117, 3
  %4122 = bitcast float %3936 to i32
  %4123 = and i32 %4122, 255
  %4124 = uitofp i32 %4123 to float
  %4125 = lshr i32 %4122, 8
  %4126 = and i32 %4125, 255
  %4127 = uitofp i32 %4126 to float
  %4128 = fmul fast float %4121, %4124
  %4129 = fadd fast float %4128, %4127
  %4130 = fmul fast float %4129, 0x3F70101000000000
  %4131 = add i32 %3911, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %4116, float %4044, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float %4049, float %4051, float undef, float %4053, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.ResRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.ResRet.f32 %4133, 2
  %4137 = extractvalue %dx.types.ResRet.f32 %4133, 3
  %4138 = bitcast float %3930 to i32
  %4139 = and i32 %4138, 255
  %4140 = uitofp i32 %4139 to float
  %4141 = lshr i32 %4138, 8
  %4142 = and i32 %4141, 255
  %4143 = uitofp i32 %4142 to float
  %4144 = lshr i32 %4138, 16
  %4145 = and i32 %4144, 255
  %4146 = uitofp i32 %4145 to float
  %4147 = fmul fast float %4146, 0x3F70101000000000
  %4148 = fmul fast float %4134, %4140
  %4149 = fadd fast float %4148, %4143
  %4150 = fmul fast float %4149, 0x3F70101000000000
  %4151 = fadd fast float %4135, -5.000000e-01
  %4152 = fadd fast float %4137, -5.000000e-01
  %4153 = fmul fast float %4151, %4147
  %4154 = fmul fast float %4152, %4147
  %4155 = fadd fast float %4153, 5.000000e-01
  %4156 = fadd fast float %4154, 5.000000e-01
  %4157 = fmul fast float %4118, %3939
  %4158 = fmul fast float %4119, %3940
  %4159 = fmul fast float %4120, %3941
  %4160 = fmul fast float %4155, 2.000000e+00
  %4161 = fadd fast float %4160, -1.000000e+00
  %4162 = fmul fast float %4156, 2.000000e+00
  %4163 = fadd fast float %4162, -1.000000e+00
  %4164 = fadd fast float %4161, %4163
  %4165 = fmul fast float %4164, 5.000000e-01
  %4166 = fsub fast float %4161, %4163
  %4167 = fmul fast float %4166, 5.000000e-01
  %4168 = call float @dx.op.unary.f32(i32 6, float %4165)  ; FAbs(value)
  %4169 = fsub fast float 1.000000e+00, %4168
  %4170 = call float @dx.op.unary.f32(i32 6, float %4167)  ; FAbs(value)
  %4171 = fsub fast float %4169, %4170
  %4172 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4167, float %4171, float %4165, float %4167, float %4171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = call float @dx.op.unary.f32(i32 25, float %4172)  ; Rsqrt(value)
  %4174 = fmul fast float %4165, %4173
  %4175 = fmul fast float %4167, %4173
  %4176 = fmul fast float %4173, %4171
  %4177 = fmul fast float %4176, %3904
  %4178 = fmul fast float %4176, %3905
  %4179 = fmul fast float %4176, %3906
  %4180 = fmul fast float %4174, %3927
  %4181 = fmul fast float %4174, %3928
  %4182 = fmul fast float %4174, %3929
  %4183 = fadd fast float %4180, %4177
  %4184 = fadd fast float %4181, %4178
  %4185 = fadd fast float %4182, %4179
  %4186 = fmul fast float %4175, %3933
  %4187 = fmul fast float %4175, %3934
  %4188 = fmul fast float %4175, %3935
  %4189 = fadd fast float %4183, %4186
  %4190 = fadd fast float %4184, %4187
  %4191 = fadd fast float %4185, %4188
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4189, float %4190, float %4191, float %4189, float %4190, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.unary.f32(i32 25, float %4192)  ; Rsqrt(value)
  %4194 = fmul fast float %4189, %4193
  %4195 = fmul fast float %4190, %4193
  %4196 = fmul fast float %4191, %4193
  %4197 = icmp ne i32 %4113, 0
  %4198 = select i1 %4197, float 1.000000e+00, float 0.000000e+00
  %4199 = fmul fast float %4103, %4198
  %4200 = and i32 %3954, 1
  %4201 = icmp eq i32 %4200, 0
  br i1 %4201, label %4202, label %4206

; <label>:4202                                    ; preds = %4111
  %4203 = fsub fast float %4194, %3887
  %4204 = fsub fast float %4195, %3888
  %4205 = fsub fast float %4196, %3889
  br label %4206

; <label>:4206                                    ; preds = %4202, %4111
  %4207 = phi float [ %4203, %4202 ], [ %4194, %4111 ]
  %4208 = phi float [ %4204, %4202 ], [ %4195, %4111 ]
  %4209 = phi float [ %4205, %4202 ], [ %4196, %4111 ]
  %4210 = fmul float %4209, %4199
  %4211 = fmul float %4208, %4199
  %4212 = fmul float %4207, %4199
  %4213 = fadd fast float %4212, %3887
  %4214 = fadd fast float %4211, %3888
  %4215 = fadd fast float %4210, %3889
  %4216 = icmp ne i32 %4112, 0
  %4217 = select i1 %4216, float 1.000000e+00, float 0.000000e+00
  %4218 = fmul fast float %4103, %4217
  %4219 = fsub fast float %4157, %3894
  %4220 = fsub fast float %4158, %3895
  %4221 = fsub fast float %4159, %3896
  %4222 = fmul fast float %4219, %4218
  %4223 = fmul fast float %4220, %4218
  %4224 = fmul fast float %4221, %4218
  %4225 = fadd fast float %4222, %3894
  %4226 = fadd fast float %4223, %3895
  %4227 = fadd fast float %4224, %3896
  %4228 = fsub fast float %4130, %3893
  %4229 = fmul fast float %4228, %4218
  %4230 = fadd fast float %4229, %3893
  %4231 = fmul fast float %4218, %3880
  %4232 = fsub fast float %3880, %4231
  %4233 = fmul fast float %4218, %3879
  %4234 = fsub fast float %3879, %4233
  %4235 = bitcast float %3948 to i32
  %4236 = lshr i32 %4235, 16
  %4237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4236)  ; LegacyF16ToF32(value)
  %4238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.i32 %4238, 0
  %4240 = and i32 %4239, 1
  %4241 = icmp eq i32 %4240, 0
  br i1 %4241, label %4242, label %4267

; <label>:4242                                    ; preds = %4206
  %4243 = fadd fast float %4130, 0xBFB99999A0000000
  %4244 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4245 = fmul fast float %4244, 0x3FF1C71C80000000
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4248 = fmul fast float %4247, %4157
  %4249 = fmul fast float %4247, %4158
  %4250 = fmul fast float %4247, %4159
  %4251 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4252 = call float @dx.op.unary.f32(i32 7, float %4249)  ; Saturate(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4252, float %4253)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4251, float %4254)  ; FMax(a,b)
  %4256 = fcmp fast ogt float %4255, 0.000000e+00
  %4257 = bitcast float %4255 to i32
  %4258 = sub nsw i32 2129859010, %4257
  %4259 = bitcast i32 %4258 to float
  %4260 = select i1 %4256, float %4259, float 0.000000e+00
  %4261 = fmul fast float %4251, %4237
  %4262 = fmul fast float %4252, %4237
  %4263 = fmul fast float %4253, %4237
  %4264 = fmul fast float %4261, %4260
  %4265 = fmul fast float %4262, %4260
  %4266 = fmul fast float %4263, %4260
  br label %4267

; <label>:4267                                    ; preds = %4242, %4206
  %4268 = phi float [ %4237, %4206 ], [ %4264, %4242 ]
  %4269 = phi float [ %4237, %4206 ], [ %4265, %4242 ]
  %4270 = phi float [ %4237, %4206 ], [ %4266, %4242 ]
  %4271 = fsub fast float %4268, %3881
  %4272 = fsub fast float %4269, %3882
  %4273 = fsub fast float %4270, %3883
  %4274 = fmul fast float %4271, %4218
  %4275 = fmul fast float %4272, %4218
  %4276 = fmul fast float %4273, %4218
  %4277 = fadd fast float %4274, %3881
  %4278 = fadd fast float %4275, %3882
  %4279 = fadd fast float %4276, %3883
  %4280 = fadd fast float %4103, %3892
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fsub fast float %4150, %3891
  %4283 = fmul fast float %4282, %4199
  %4284 = fadd fast float %4283, %3891
  %4285 = fsub fast float %4136, %3890
  %4286 = fmul fast float %4285, %4199
  %4287 = fadd fast float %4286, %3890
  %4288 = call float @dx.op.dot3.f32(i32 55, float %4157, float %4158, float %4159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = fmul fast float %4291, %4288
  %4293 = fadd fast float %4292, %4290
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = bitcast float %3942 to i32
  %4296 = and i32 %4295, 65535
  %4297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4296)  ; LegacyF16ToF32(value)
  %4298 = lshr i32 %4295, 16
  %4299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4298)  ; LegacyF16ToF32(value)
  %4300 = fcmp fast oge float %4297, 0.000000e+00
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = select i1 %4300, float %4297, float %4302
  %4304 = fadd fast float %4303, %4299
  %4305 = fsub fast float %4294, %3878
  %4306 = fmul fast float %4305, %4103
  %4307 = fadd fast float %4306, %3878
  %4308 = fmul fast float %4304, %4103
  %4309 = call float @dx.op.binary.f32(i32 35, float %3877, float %4308)  ; FMax(a,b)
  %4310 = and i32 %3954, 16
  %4311 = icmp eq i32 %4310, 0
  br i1 %4311, label %4333, label %4312

; <label>:4312                                    ; preds = %4267
  %4313 = add i32 %3945, 0
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4313, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4314, %dx.types.Handle %4116, float %4044, float %4047, float undef, float undef, i32 0, i32 0, i32 undef, float %4049, float %4051, float undef, float %4053, float %4055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = and i32 %4235, 65535
  %4320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4319)  ; LegacyF16ToF32(value)
  %4321 = fmul fast float %4316, %3939
  %4322 = fmul fast float %4317, %3940
  %4323 = fmul fast float %4318, %3941
  %4324 = and i32 %3954, 16384
  %4325 = icmp ne i32 %4324, 0
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = select i1 %4325, float %4327, float 1.000000e+00
  %4329 = fmul fast float %4328, %4320
  %4330 = fmul fast float %4321, %4329
  %4331 = fmul fast float %4322, %4329
  %4332 = fmul fast float %4323, %4329
  br label %4333

; <label>:4333                                    ; preds = %4312, %4267
  %4334 = phi float [ %4330, %4312 ], [ 0.000000e+00, %4267 ]
  %4335 = phi float [ %4331, %4312 ], [ 0.000000e+00, %4267 ]
  %4336 = phi float [ %4332, %4312 ], [ 0.000000e+00, %4267 ]
  %4337 = fsub fast float %4334, %3884
  %4338 = fsub fast float %4335, %3885
  %4339 = fsub fast float %4336, %3886
  %4340 = fmul fast float %4337, %4103
  %4341 = fmul fast float %4338, %4103
  %4342 = fmul fast float %4339, %4103
  %4343 = fadd fast float %4340, %3884
  %4344 = fadd fast float %4341, %3885
  %4345 = fadd fast float %4342, %3886
  br label %4003

; <label>:4346                                    ; preds = %4003
  br label %4347

; <label>:4347                                    ; preds = %4346, %3820
  %4348 = phi float [ 0.000000e+00, %3820 ], [ %4004, %4346 ]
  %4349 = phi float [ %3789, %3820 ], [ %4005, %4346 ]
  %4350 = phi float [ %3770, %3820 ], [ %4006, %4346 ]
  %4351 = phi float [ 0.000000e+00, %3820 ], [ %4007, %4346 ]
  %4352 = phi float [ 0.000000e+00, %3820 ], [ %4008, %4346 ]
  %4353 = phi float [ %3760, %3820 ], [ %4009, %4346 ]
  %4354 = phi float [ %3761, %3820 ], [ %4010, %4346 ]
  %4355 = phi float [ %3762, %3820 ], [ %4011, %4346 ]
  %4356 = phi float [ %3763, %3820 ], [ %4012, %4346 ]
  %4357 = phi float [ %3764, %3820 ], [ %4013, %4346 ]
  %4358 = phi float [ %3765, %3820 ], [ %4014, %4346 ]
  %4359 = phi float [ %3815, %3820 ], [ %4015, %4346 ]
  %4360 = phi float [ %3816, %3820 ], [ %4016, %4346 ]
  %4361 = phi float [ %3817, %3820 ], [ %4017, %4346 ]
  %4362 = phi float [ %3768, %3820 ], [ %4018, %4346 ]
  %4363 = phi float [ %3767, %3820 ], [ %4019, %4346 ]
  %4364 = phi float [ 0.000000e+00, %3820 ], [ %4020, %4346 ]
  %4365 = phi float [ %3766, %3820 ], [ %4021, %4346 ]
  %4366 = phi float [ %3757, %3820 ], [ %4022, %4346 ]
  %4367 = phi float [ %3758, %3820 ], [ %4023, %4346 ]
  %4368 = phi float [ %3759, %3820 ], [ %4024, %4346 ]
  %4369 = call float @dx.op.dot3.f32(i32 55, float %4359, float %4360, float %4361, float %4359, float %4360, float %4361)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = call float @dx.op.unary.f32(i32 25, float %4369)  ; Rsqrt(value)
  %4371 = fmul fast float %4370, %4359
  %4372 = fmul fast float %4370, %4360
  %4373 = fmul fast float %4370, %4361
  %4374 = fadd fast float %4364, %931
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = call float @dx.op.dot3.f32(i32 55, float %4371, float %4372, float %4373, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = call float @dx.op.unary.f32(i32 25, float %4376)  ; Rsqrt(value)
  %4378 = fmul fast float %4377, %4371
  %4379 = fmul fast float %4377, %4372
  %4380 = fmul fast float %4377, %4373
  br label %4381

; <label>:4381                                    ; preds = %4347, %3754
  %4382 = phi float [ %4378, %4347 ], [ %3815, %3754 ]
  %4383 = phi float [ %4379, %4347 ], [ %3816, %3754 ]
  %4384 = phi float [ %4380, %4347 ], [ %3817, %3754 ]
  %4385 = phi float [ %4366, %4347 ], [ %3757, %3754 ]
  %4386 = phi float [ %4367, %4347 ], [ %3758, %3754 ]
  %4387 = phi float [ %4368, %4347 ], [ %3759, %3754 ]
  %4388 = phi float [ %4356, %4347 ], [ %3763, %3754 ]
  %4389 = phi float [ %4357, %4347 ], [ %3764, %3754 ]
  %4390 = phi float [ %4358, %4347 ], [ %3765, %3754 ]
  %4391 = phi float [ %4353, %4347 ], [ %3760, %3754 ]
  %4392 = phi float [ %4354, %4347 ], [ %3761, %3754 ]
  %4393 = phi float [ %4355, %4347 ], [ %3762, %3754 ]
  %4394 = phi float [ %4365, %4347 ], [ %3766, %3754 ]
  %4395 = phi float [ %4375, %4347 ], [ %931, %3754 ]
  %4396 = phi float [ %4363, %4347 ], [ %3767, %3754 ]
  %4397 = phi float [ %4362, %4347 ], [ %3768, %3754 ]
  %4398 = phi float [ %4352, %4347 ], [ 0.000000e+00, %3754 ]
  %4399 = phi float [ %4351, %4347 ], [ 0.000000e+00, %3754 ]
  %4400 = phi float [ %4348, %4347 ], [ 0.000000e+00, %3754 ]
  %4401 = phi float [ %4349, %4347 ], [ %3789, %3754 ]
  %4402 = phi float [ %4350, %4347 ], [ %3770, %3754 ]
  %4403 = fadd fast float %4394, 0xBFB99999A0000000
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4404, 0x3FF1C71C80000000
  %4406 = call float @dx.op.binary.f32(i32 36, float %4394, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4407 = fsub fast float 1.000000e+00, %4405
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = fmul fast float %4408, %4385
  %4410 = fmul fast float %4408, %4386
  %4411 = fmul fast float %4408, %4387
  %4412 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4415 = fmul fast float %4405, %4385
  %4416 = fmul fast float %4405, %4386
  %4417 = fmul fast float %4405, %4387
  %4418 = fadd fast float %4415, %4406
  %4419 = fadd fast float %4416, %4406
  %4420 = fadd fast float %4417, %4406
  %4421 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.i32 %4425, 0
  %4427 = and i32 %4426, 1
  %4428 = icmp eq i32 %4427, 0
  br i1 %4428, label %4443, label %4429

; <label>:4429                                    ; preds = %4381
  %4430 = call float @dx.op.binary.f32(i32 35, float %4413, float %4414)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4412, float %4430)  ; FMax(a,b)
  %4432 = fcmp fast ogt float %4431, 0.000000e+00
  %4433 = bitcast float %4431 to i32
  %4434 = sub nsw i32 2129859010, %4433
  %4435 = bitcast i32 %4434 to float
  %4436 = select i1 %4432, float %4435, float 0.000000e+00
  %4437 = fmul fast float %4412, %4391
  %4438 = fmul fast float %4413, %4392
  %4439 = fmul fast float %4414, %4393
  %4440 = fmul fast float %4437, %4436
  %4441 = fmul fast float %4438, %4436
  %4442 = fmul fast float %4439, %4436
  br label %4443

; <label>:4443                                    ; preds = %4429, %4381
  %4444 = phi float [ %4440, %4429 ], [ %4391, %4381 ]
  %4445 = phi float [ %4441, %4429 ], [ %4392, %4381 ]
  %4446 = phi float [ %4442, %4429 ], [ %4393, %4381 ]
  %4447 = fadd fast float %4412, 0xBFD51EB860000000
  %4448 = fadd fast float %4413, 0xBFD51EB860000000
  %4449 = fadd fast float %4414, 0xBFD51EB860000000
  %4450 = fmul fast float %4447, %4447
  %4451 = fmul fast float %4448, %4448
  %4452 = fmul fast float %4449, %4449
  %4453 = fmul fast float %4450, %4450
  %4454 = fmul fast float %4453, 1.000000e+02
  %4455 = fmul fast float %4451, %4451
  %4456 = fmul fast float %4455, 1.000000e+02
  %4457 = fmul fast float %4452, %4452
  %4458 = fmul fast float %4457, 1.000000e+02
  %4459 = fadd fast float %4454, 3.500000e+00
  %4460 = fadd fast float %4456, 3.500000e+00
  %4461 = fadd fast float %4458, 3.500000e+00
  %4462 = call float @dx.op.binary.f32(i32 35, float %4444, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4463 = call float @dx.op.binary.f32(i32 35, float %4445, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4464 = call float @dx.op.binary.f32(i32 35, float %4446, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4465 = fdiv fast float %4459, %4462
  %4466 = fdiv fast float %4460, %4463
  %4467 = fdiv fast float %4461, %4464
  %4468 = fmul fast float %3769, 0xBFF7154760000000
  %4469 = fmul fast float %4468, %4465
  %4470 = call float @dx.op.unary.f32(i32 21, float %4469)  ; Exp(value)
  %4471 = fmul fast float %4470, 2.500000e-01
  %4472 = fmul fast float %3769, 0xBFDEC709E0000000
  %4473 = fmul fast float %4472, %4465
  %4474 = call float @dx.op.unary.f32(i32 21, float %4473)  ; Exp(value)
  %4475 = fmul fast float %4474, 7.500000e-01
  %4476 = fmul fast float %4468, %4466
  %4477 = call float @dx.op.unary.f32(i32 21, float %4476)  ; Exp(value)
  %4478 = fmul fast float %4477, 2.500000e-01
  %4479 = fmul fast float %4472, %4466
  %4480 = call float @dx.op.unary.f32(i32 21, float %4479)  ; Exp(value)
  %4481 = fmul fast float %4480, 7.500000e-01
  %4482 = fmul fast float %4468, %4467
  %4483 = call float @dx.op.unary.f32(i32 21, float %4482)  ; Exp(value)
  %4484 = fmul fast float %4483, 2.500000e-01
  %4485 = fmul fast float %4472, %4467
  %4486 = call float @dx.op.unary.f32(i32 21, float %4485)  ; Exp(value)
  %4487 = fmul fast float %4486, 7.500000e-01
  %4488 = fadd fast float %4471, %4475
  %4489 = fadd fast float %4478, %4481
  %4490 = fadd fast float %4484, %4487
  %4491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.i32 %4491, 3
  %4493 = and i32 %4492, 8
  %4494 = icmp ne i32 %4493, 0
  %4495 = call float @dx.op.binary.f32(i32 35, float %4412, float %4385)  ; FMax(a,b)
  %4496 = call float @dx.op.binary.f32(i32 35, float %4413, float %4385)  ; FMax(a,b)
  %4497 = call float @dx.op.binary.f32(i32 35, float %4414, float %4385)  ; FMax(a,b)
  %4498 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4413, float %4414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4499 = select i1 %170, float %4385, float %4412
  %4500 = select i1 %170, float %4498, float %4413
  %4501 = select i1 %170, float 1.000000e+00, float %4414
  %4502 = select i1 %4494, float %4495, float %4499
  %4503 = select i1 %4494, float %4496, float %4500
  %4504 = select i1 %4494, float %4497, float %4501
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 0
  %4507 = extractvalue %dx.types.CBufRet.f32 %4505, 1
  %4508 = extractvalue %dx.types.CBufRet.f32 %4505, 2
  %4509 = fadd fast float %4506, %128
  %4510 = fadd fast float %4507, %129
  %4511 = fadd fast float %4508, %130
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 1
  %4515 = fsub fast float %4509, %4513
  %4516 = fsub fast float %4510, %4514
  %4517 = fmul fast float %4515, %4515
  %4518 = fmul fast float %4516, %4516
  %4519 = fadd fast float %4517, %4518
  %4520 = call float @dx.op.unary.f32(i32 24, float %4519)  ; Sqrt(value)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4522 = fcmp fast olt float %4520, %4521
  br i1 %4522, label %4523, label %4590

; <label>:4523                                    ; preds = %4443
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4533 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4534 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4535 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4536 = fadd fast float %4533, %4509
  %4537 = fadd fast float %4534, %4510
  %4538 = fadd fast float %4535, %4511
  %4539 = fmul fast float %4536, %4525
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4527, float %4539)  ; FMad(a,b,c)
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4529, float %4540)  ; FMad(a,b,c)
  %4542 = fmul fast float %4536, %4530
  %4543 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4531, float %4542)  ; FMad(a,b,c)
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4532, float %4543)  ; FMad(a,b,c)
  %4545 = fsub fast float %4541, %4533
  %4546 = fsub fast float %4544, %4534
  %4547 = fsub fast float %4545, %4513
  %4548 = fadd fast float %4547, %4521
  %4549 = fsub fast float %4546, %4514
  %4550 = fadd fast float %4549, %4521
  %4551 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4552 = fmul fast float %4548, %4551
  %4553 = fmul fast float %4550, %4551
  %4554 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4556 = fsub fast float 1.000000e+00, %4554
  %4557 = fsub fast float 1.000000e+00, %4555
  %4558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4556, float %4557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = fcmp fast ugt float %4559, 0.000000e+00
  br i1 %4560, label %4561, label %4864

; <label>:4561                                    ; preds = %4523
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4564 = fmul fast float %4563, %4559
  %4565 = extractvalue %dx.types.CBufRet.f32 %4562, 3
  %4566 = fadd fast float %4565, %4564
  %4567 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4568 = fadd fast float %4566, %4535
  %4569 = fmul fast float %4541, %4529
  %4570 = call float @dx.op.tertiary.f32(i32 46, float %4544, float %4532, float %4569)  ; FMad(a,b,c)
  %4571 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4567, float %4570)  ; FMad(a,b,c)
  %4572 = fsub fast float %4571, %4535
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 2
  %4575 = fsub fast float %4572, %4574
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4556, float %4557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4556, float %4557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = fadd fast float %4581, %4577
  %4585 = fmul fast float %4584, 0x3F847AE140000000
  %4586 = fadd fast float %4582, %4578
  %4587 = fmul fast float %4586, 0x3F847AE140000000
  %4588 = fadd fast float %4583, %4579
  %4589 = fmul fast float %4588, 0x3F847AE140000000
  br label %4864

; <label>:4590                                    ; preds = %4443
  %4591 = and i32 %146, 1
  %4592 = icmp eq i32 %4591, 0
  br i1 %4592, label %4864, label %4593

; <label>:4593                                    ; preds = %4590
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4596, 0
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4596, 1
  %4602 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4604 = extractvalue %dx.types.CBufRet.f32 %4596, 3
  %4605 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4606 = fadd fast float %4603, %4509
  %4607 = fadd fast float %4604, %4510
  %4608 = fadd fast float %4605, %4511
  %4609 = fmul fast float %4606, %4595
  %4610 = call float @dx.op.tertiary.f32(i32 46, float %4607, float %4597, float %4609)  ; FMad(a,b,c)
  %4611 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4599, float %4610)  ; FMad(a,b,c)
  %4612 = fmul fast float %4606, %4600
  %4613 = call float @dx.op.tertiary.f32(i32 46, float %4607, float %4601, float %4612)  ; FMad(a,b,c)
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4602, float %4613)  ; FMad(a,b,c)
  %4615 = fsub fast float %4611, %4603
  %4616 = fsub fast float %4614, %4604
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.CBufRet.f32 %4617, 3
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.i32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.i32 %4624, 1
  %4627 = udiv i32 %4626, %4625
  %4628 = fsub fast float %4615, %4618
  %4629 = fsub fast float %4616, %4619
  %4630 = call float @dx.op.binary.f32(i32 35, float %4628, float 0.000000e+00)  ; FMax(a,b)
  %4631 = call float @dx.op.binary.f32(i32 35, float %4629, float 0.000000e+00)  ; FMax(a,b)
  %4632 = call float @dx.op.binary.f32(i32 36, float %4630, float %4620)  ; FMin(a,b)
  %4633 = call float @dx.op.binary.f32(i32 36, float %4631, float %4621)  ; FMin(a,b)
  %4634 = add i32 %4625, -1
  %4635 = add i32 %4627, -1
  %4636 = fmul fast float %4632, %4623
  %4637 = fmul fast float %4633, %4623
  %4638 = fptoui float %4636 to i32
  %4639 = fptoui float %4637 to i32
  %4640 = call i32 @dx.op.binary.i32(i32 40, i32 %4638, i32 %4634)  ; UMin(a,b)
  %4641 = call i32 @dx.op.binary.i32(i32 40, i32 %4639, i32 %4635)  ; UMin(a,b)
  %4642 = mul i32 %4641, %4625
  %4643 = add i32 %4642, %4640
  %4644 = shl i32 %4643, 2
  %4645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.i32 %4645, 0
  %4647 = icmp eq i32 %4646, -1
  br i1 %4647, label %4864, label %4648

; <label>:4648                                    ; preds = %4593
  %4649 = mul i32 %4646, 148
  %4650 = add i32 %4649, 4
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = add i32 %4649, 8
  %4654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = add i32 %4649, 36
  %4657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = add i32 %4649, 60
  %4660 = add i32 %4649, 92
  %4661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4660, i32 undef)  ; BufferLoad(srv,index,wot)
  %4662 = extractvalue %dx.types.ResRet.i32 %4661, 0
  %4663 = add i32 %4649, 116
  %4664 = fsub fast float %4615, %4652
  %4665 = fsub fast float %4616, %4655
  %4666 = fmul fast float %4623, %4664
  %4667 = fmul fast float %4623, %4665
  %4668 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 2
  %4673 = call float @dx.op.unary.f32(i32 83, float %4668)  ; DerivCoarseX(value)
  %4674 = call float @dx.op.unary.f32(i32 83, float %4670)  ; DerivCoarseX(value)
  %4675 = call float @dx.op.unary.f32(i32 84, float %4668)  ; DerivCoarseY(value)
  %4676 = call float @dx.op.unary.f32(i32 84, float %4670)  ; DerivCoarseY(value)
  %4677 = fmul fast float %4673, %4672
  %4678 = fmul fast float %4674, %4672
  %4679 = fmul fast float %4675, %4672
  %4680 = fmul fast float %4676, %4672
  %4681 = call float @dx.op.dot2.f32(i32 54, float %4679, float %4680, float %4679, float %4680)  ; Dot2(ax,ay,bx,by)
  %4682 = call float @dx.op.dot2.f32(i32 54, float %4677, float %4678, float %4677, float %4678)  ; Dot2(ax,ay,bx,by)
  %4683 = call float @dx.op.binary.f32(i32 35, float %4682, float %4681)  ; FMax(a,b)
  %4684 = call float @dx.op.unary.f32(i32 23, float %4683)  ; Log(value)
  %4685 = fmul fast float %4684, 5.000000e-01
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 1
  %4688 = fadd fast float %4687, %4685
  %4689 = call float @dx.op.binary.f32(i32 35, float %4688, float 0.000000e+00)  ; FMax(a,b)
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 3
  %4692 = fadd fast float %4691, %4689
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4695 = fadd fast float %4692, %4694
  %4696 = add i32 %4662, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4697, i32 0)  ; GetDimensions(handle,mipLevel)
  %4699 = extractvalue %dx.types.Dimensions %4698, 0
  %4700 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4699)  ; FirstbitLo(value)
  %4701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.i32 %4701, 1
  %4703 = sub nsw i32 %4702, %4700
  %4704 = sitofp i32 %4703 to float
  %4705 = fsub fast float %4695, %4704
  %4706 = call float @dx.op.binary.f32(i32 35, float %4705, float 0.000000e+00)  ; FMax(a,b)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4697, %dx.types.Handle %27, float %4668, float %4670, float %4658, float undef, i32 0, i32 0, i32 undef, float %4706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = fcmp ule float %4708, 0x3FE0101020000000
  %4710 = extractvalue %dx.types.CBufRet.i32 %4701, 0
  %4711 = and i32 %4710, 128
  %4712 = icmp ne i32 %4711, 0
  %4713 = and i1 %4709, %4712
  br i1 %4713, label %4864, label %4714

; <label>:4714                                    ; preds = %4648
  %4715 = add i32 %4649, 20
  %4716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4715, i32 undef)  ; BufferLoad(srv,index,wot)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = add i32 %4649, 24
  %4719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4718, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = add i32 %4649, 40
  %4722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4721, i32 undef)  ; BufferLoad(srv,index,wot)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = add i32 %4649, 96
  %4725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4724, i32 undef)  ; BufferLoad(srv,index,wot)
  %4726 = extractvalue %dx.types.ResRet.i32 %4725, 0
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 2
  %4729 = fmul fast float %4728, %4668
  %4730 = fmul fast float %4728, %4670
  %4731 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4732 = fadd fast float %4729, %4731
  %4733 = fadd fast float %4730, %4731
  %4734 = add i32 %4726, 0
  %4735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4734, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4736 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4735, i32 0)  ; GetDimensions(handle,mipLevel)
  %4737 = extractvalue %dx.types.Dimensions %4736, 0
  %4738 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4737)  ; FirstbitLo(value)
  %4739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.i32 %4739, 1
  %4741 = sub nsw i32 %4740, %4738
  %4742 = sitofp i32 %4741 to float
  %4743 = fsub fast float %4692, %4742
  %4744 = call float @dx.op.binary.f32(i32 35, float %4743, float 0.000000e+00)  ; FMax(a,b)
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4735, %dx.types.Handle %27, float %4732, float %4733, float %4723, float undef, i32 0, i32 0, i32 undef, float %4744)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = fmul fast float %4746, %4717
  %4748 = fadd fast float %4747, %4720
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4752 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 3
  %4757 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4758 = fadd fast float %4754, %4615
  %4759 = fadd fast float %4756, %4616
  %4760 = fadd fast float %4748, %4757
  %4761 = fmul fast float %4758, %4750
  %4762 = call float @dx.op.tertiary.f32(i32 46, float %4759, float %4751, float %4761)  ; FMad(a,b,c)
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %4760, float %4752, float %4762)  ; FMad(a,b,c)
  %4764 = fsub fast float %4763, %4757
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4767 = fsub fast float %4764, %4766
  %4768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.i32 %4768, 0
  %4770 = call i32 @dx.op.binary.i32(i32 40, i32 %4646, i32 %4769)  ; UMin(a,b)
  %4771 = mul i32 %4770, 36
  %4772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4771, i32 undef)  ; BufferLoad(srv,index,wot)
  %4773 = extractvalue %dx.types.ResRet.i32 %4772, 0
  %4774 = add i32 %4771, 4
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = fmul fast float %4776, %4668
  %4778 = fmul fast float %4776, %4670
  %4779 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4780 = fadd fast float %4777, %4779
  %4781 = fadd fast float %4778, %4779
  %4782 = icmp eq i32 %4773, 0
  br i1 %4782, label %4851, label %4783

; <label>:4783                                    ; preds = %4714
  br label %4784

; <label>:4784                                    ; preds = %4841, %4783
  %4785 = phi float [ %4842, %4841 ], [ 0.000000e+00, %4783 ]
  %4786 = phi float [ %4843, %4841 ], [ 0.000000e+00, %4783 ]
  %4787 = phi float [ %4844, %4841 ], [ 0.000000e+00, %4783 ]
  %4788 = phi float [ %4845, %4841 ], [ 0.000000e+00, %4783 ]
  %4789 = phi float [ %4846, %4841 ], [ 0.000000e+00, %4783 ]
  %4790 = phi float [ %4847, %4841 ], [ 0.000000e+00, %4783 ]
  %4791 = phi i32 [ %4848, %4841 ], [ 0, %4783 ]
  %4792 = shl i32 %4791, 2
  %4793 = add i32 %4659, %4792
  %4794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4793, i32 undef)  ; BufferLoad(srv,index,wot)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = add i32 %4663, %4792
  %4797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.i32 %4797, 0
  %4799 = add i32 %4798, 0
  %4800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4801 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4800, i32 0)  ; GetDimensions(handle,mipLevel)
  %4802 = extractvalue %dx.types.Dimensions %4801, 0
  %4803 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4802)  ; FirstbitLo(value)
  %4804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.i32 %4804, 1
  %4806 = sub nsw i32 %4805, %4803
  %4807 = sitofp i32 %4806 to float
  %4808 = fsub fast float %4692, %4807
  %4809 = call float @dx.op.binary.f32(i32 35, float %4808, float 0.000000e+00)  ; FMax(a,b)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4800, %dx.types.Handle %27, float %4780, float %4781, float %4795, float undef, i32 0, i32 0, i32 undef, float %4809)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = fcmp fast ogt float %4811, 0.000000e+00
  br i1 %4812, label %4813, label %4841

; <label>:4813                                    ; preds = %4784
  %4814 = add i32 %4774, %4792
  %4815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4814, i32 undef)  ; BufferLoad(srv,index,wot)
  %4816 = extractvalue %dx.types.ResRet.i32 %4815, 0
  %4817 = and i32 %4816, 32767
  %4818 = mul nuw nsw i32 %4817, 928
  %4819 = add nuw nsw i32 %4818, 48
  %4820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4819, i32 undef)  ; BufferLoad(srv,index,wot)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = add nuw nsw i32 %4818, 60
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.ResRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.ResRet.f32 %4825, 2
  %4829 = fmul fast float %4821, %4811
  %4830 = fmul fast float %4822, %4811
  %4831 = fmul fast float %4823, %4811
  %4832 = fadd fast float %4829, %4785
  %4833 = fadd fast float %4830, %4786
  %4834 = fadd fast float %4831, %4787
  %4835 = fmul fast float %4826, %4811
  %4836 = fmul fast float %4827, %4811
  %4837 = fmul fast float %4828, %4811
  %4838 = fadd fast float %4835, %4788
  %4839 = fadd fast float %4836, %4789
  %4840 = fadd fast float %4837, %4790
  br label %4841

; <label>:4841                                    ; preds = %4813, %4784
  %4842 = phi float [ %4832, %4813 ], [ %4785, %4784 ]
  %4843 = phi float [ %4833, %4813 ], [ %4786, %4784 ]
  %4844 = phi float [ %4834, %4813 ], [ %4787, %4784 ]
  %4845 = phi float [ %4838, %4813 ], [ %4788, %4784 ]
  %4846 = phi float [ %4839, %4813 ], [ %4789, %4784 ]
  %4847 = phi float [ %4840, %4813 ], [ %4790, %4784 ]
  %4848 = add nuw i32 %4791, 1
  %4849 = icmp eq i32 %4848, %4773
  br i1 %4849, label %4850, label %4784

; <label>:4850                                    ; preds = %4841
  br label %4851

; <label>:4851                                    ; preds = %4850, %4714
  %4852 = phi float [ 0.000000e+00, %4714 ], [ %4842, %4850 ]
  %4853 = phi float [ 0.000000e+00, %4714 ], [ %4843, %4850 ]
  %4854 = phi float [ 0.000000e+00, %4714 ], [ %4844, %4850 ]
  %4855 = phi float [ 0.000000e+00, %4714 ], [ %4845, %4850 ]
  %4856 = phi float [ 0.000000e+00, %4714 ], [ %4846, %4850 ]
  %4857 = phi float [ 0.000000e+00, %4714 ], [ %4847, %4850 ]
  %4858 = fadd fast float %4855, %4852
  %4859 = fmul fast float %4858, 0x3F847AE140000000
  %4860 = fadd fast float %4856, %4853
  %4861 = fmul fast float %4860, 0x3F847AE140000000
  %4862 = fadd fast float %4857, %4854
  %4863 = fmul fast float %4862, 0x3F847AE140000000
  br label %4864

; <label>:4864                                    ; preds = %4851, %4648, %4593, %4590, %4561, %4523
  %4865 = phi float [ %4575, %4561 ], [ -1.310720e+05, %4523 ], [ %4767, %4851 ], [ -1.310720e+05, %4593 ], [ -1.310720e+05, %4648 ], [ -1.310720e+05, %4590 ]
  %4866 = phi float [ %4585, %4561 ], [ 0.000000e+00, %4523 ], [ %4859, %4851 ], [ 0.000000e+00, %4593 ], [ 0.000000e+00, %4648 ], [ 0.000000e+00, %4590 ]
  %4867 = phi float [ %4587, %4561 ], [ 0.000000e+00, %4523 ], [ %4861, %4851 ], [ 0.000000e+00, %4593 ], [ 0.000000e+00, %4648 ], [ 0.000000e+00, %4590 ]
  %4868 = phi float [ %4589, %4561 ], [ 0.000000e+00, %4523 ], [ %4863, %4851 ], [ 0.000000e+00, %4593 ], [ 0.000000e+00, %4648 ], [ 0.000000e+00, %4590 ]
  %4869 = phi i1 [ true, %4561 ], [ false, %4523 ], [ true, %4851 ], [ false, %4593 ], [ false, %4648 ], [ false, %4590 ]
  %4870 = and i32 %146, 3
  %4871 = icmp eq i32 %4870, 1
  %4872 = select i1 %4871, float 1.000000e+00, float 0.000000e+00
  %4873 = fsub fast float %4865, %130
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = select i1 %4869, float %4874, float 1.000000e+00
  %4876 = fmul fast float %4875, %4872
  %4877 = icmp eq i32 %4870, 3
  %4878 = select i1 %4877, float 1.000000e+00, float %4876
  %4879 = call float @dx.op.binary.f32(i32 35, float %4400, float %4878)  ; FMax(a,b)
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fcmp fast une float %4880, 0.000000e+00
  %4882 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = call float @dx.op.unary.f32(i32 25, float %4882)  ; Rsqrt(value)
  br i1 %4881, label %4891, label %4884

; <label>:4884                                    ; preds = %4864
  %4885 = fmul fast float %4883, %128
  %4886 = fmul fast float %4883, %129
  %4887 = fmul fast float %4883, %130
  %4888 = fsub fast float -0.000000e+00, %4885
  %4889 = fsub fast float -0.000000e+00, %4886
  %4890 = fsub fast float -0.000000e+00, %4887
  br label %5059

; <label>:4891                                    ; preds = %4864
  %4892 = fmul fast float %128, %4883
  %4893 = fsub fast float -0.000000e+00, %4892
  %4894 = fmul fast float %129, %4883
  %4895 = fsub fast float -0.000000e+00, %4894
  %4896 = fmul fast float %130, %4883
  %4897 = fsub fast float -0.000000e+00, %4896
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4895, float %4897, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = fmul fast float %4880, 2.500000e+00
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4880, 0x4013FFFFE0000000
  %4902 = fadd fast float %4901, 0xBFFFFFFFE0000000
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fmul fast float %4880, 0x4004000020000000
  %4905 = fadd fast float %4904, 0xBFF8000040000000
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4908 = fmul fast float %4403, 1.000000e+01
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, 2.000000e+00
  %4911 = fsub fast float 3.000000e+00, %4910
  %4912 = fmul fast float %4909, %4909
  %4913 = fmul fast float %4912, %4911
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = fsub fast float 0x3FE3333340000000, %4424
  %4916 = fmul fast float %4915, 0x400AAAAAA0000000
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4914, %4917
  %4919 = fmul fast float %4502, 0x3FEA2B8620000000
  %4920 = fmul fast float %4503, 0x3FEA2B8620000000
  %4921 = fmul fast float %4504, 0x3FEA2B8620000000
  %4922 = fadd fast float %4919, 0x3FC81DFBA0000000
  %4923 = fmul fast float %4922, %4502
  %4924 = fadd fast float %4923, 0x3F910E6020000000
  %4925 = fadd fast float %4920, 0x3FC81DFBA0000000
  %4926 = fmul fast float %4925, %4503
  %4927 = fadd fast float %4926, 0x3F910E6020000000
  %4928 = fadd fast float %4921, 0x3FC81DFBA0000000
  %4929 = fmul fast float %4928, %4504
  %4930 = fadd fast float %4929, 0x3F910E6020000000
  %4931 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = fsub fast float %4931, %4502
  %4935 = fsub fast float %4932, %4503
  %4936 = fsub fast float %4933, %4504
  %4937 = fmul fast float %4934, %4907
  %4938 = fmul fast float %4937, %4918
  %4939 = fmul fast float %4935, %4907
  %4940 = fmul fast float %4939, %4918
  %4941 = fmul fast float %4936, %4907
  %4942 = fmul fast float %4941, %4918
  %4943 = fadd fast float %4938, %4502
  %4944 = fadd fast float %4940, %4503
  %4945 = fadd fast float %4942, %4504
  %4946 = fmul fast float %4397, %4397
  %4947 = fmul fast float %4946, %4946
  %4948 = fadd fast float %4903, 1.000000e+00
  %4949 = fsub fast float %4948, %4918
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = fsub fast float 1.000000e+00, %4947
  %4954 = call float @dx.op.binary.f32(i32 36, float %4950, float %4953)  ; FMin(a,b)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4954, float %4955)  ; FMax(a,b)
  %4957 = fadd fast float %4952, 0xBFE4CCCCC0000000
  %4958 = fmul fast float %4957, 0x4006DB6DA0000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, 2.000000e+00
  %4961 = fsub fast float 3.000000e+00, %4960
  %4962 = bitcast float %4421 to i32
  %4963 = ashr i32 %4962, 1
  %4964 = add nsw i32 %4963, 532487669
  %4965 = bitcast i32 %4964 to float
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = bitcast float %4422 to i32
  %4972 = ashr i32 %4971, 1
  %4973 = add nsw i32 %4972, 532487669
  %4974 = bitcast i32 %4973 to float
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, 2.000000e+00
  %4980 = bitcast float %4423 to i32
  %4981 = ashr i32 %4980, 1
  %4982 = add nsw i32 %4981, 532487669
  %4983 = bitcast i32 %4982 to float
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4987, 2.000000e+00
  %4989 = fsub fast float 0x4002A9FBE0000000, %4970
  %4990 = fadd fast float %4970, 0x3FD54FDF00000000
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, %4994
  %4996 = fsub fast float 0x4002A9FBE0000000, %4979
  %4997 = fadd fast float %4979, 0x3FD54FDF00000000
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %5001
  %5003 = fsub fast float 0x4002A9FBE0000000, %4988
  %5004 = fadd fast float %4988, 0x3FD54FDF00000000
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %5008, %5008
  %5010 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4995)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5002)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5009)  ; FMax(a,b)
  %5013 = fsub fast float 1.000000e+00, %4898
  %5014 = fadd fast float %5013, %4914
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fsub fast float 1.000000e+00, %4878
  %5017 = fmul fast float %4956, %5016
  %5018 = fmul fast float %4959, %4959
  %5019 = fmul fast float %5018, %5017
  %5020 = fmul fast float %5019, %4961
  %5021 = fmul fast float %5016, 0xBFE99999A0000000
  %5022 = fmul fast float %5021, %4907
  %5023 = fmul fast float %5022, %4918
  %5024 = fadd fast float %5023, 1.000000e+00
  %5025 = fadd fast float %4424, -1.000000e+00
  %5026 = fmul fast float %5024, %5025
  %5027 = fadd fast float %5026, 1.000000e+00
  %5028 = fsub fast float %5010, %4421
  %5029 = fsub fast float %5011, %4422
  %5030 = fsub fast float %5012, %4423
  %5031 = fmul fast float %5020, %5028
  %5032 = fmul fast float %5020, %5029
  %5033 = fmul fast float %5020, %5030
  %5034 = fadd fast float %5031, %4421
  %5035 = fadd fast float %5032, %4422
  %5036 = fadd fast float %5033, %4423
  %5037 = fsub fast float %80, %4382
  %5038 = fsub fast float %81, %4383
  %5039 = fsub fast float %82, %4384
  %5040 = fmul fast float %5020, %5037
  %5041 = fmul fast float %5020, %5038
  %5042 = fmul fast float %5020, %5039
  %5043 = fadd fast float %5040, %4382
  %5044 = fadd fast float %5041, %4383
  %5045 = fadd fast float %5042, %4384
  %5046 = fmul fast float %5020, %5015
  %5047 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = fmul fast float %5046, %5048
  %5050 = fadd fast float %5049, %5047
  %5051 = fsub fast float 1.000000e+00, %4397
  %5052 = fmul fast float %5020, %5051
  %5053 = fadd fast float %5052, %4397
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5043, %5055
  %5057 = fmul fast float %5044, %5055
  %5058 = fmul fast float %5045, %5055
  br label %5059

; <label>:5059                                    ; preds = %4891, %4884
  %5060 = phi float [ %4890, %4884 ], [ %4897, %4891 ]
  %5061 = phi float [ %4889, %4884 ], [ %4895, %4891 ]
  %5062 = phi float [ %4888, %4884 ], [ %4893, %4891 ]
  %5063 = phi float [ %4887, %4884 ], [ %4896, %4891 ]
  %5064 = phi float [ %4886, %4884 ], [ %4894, %4891 ]
  %5065 = phi float [ %4885, %4884 ], [ %4892, %4891 ]
  %5066 = phi float [ %4421, %4884 ], [ %5034, %4891 ]
  %5067 = phi float [ %4422, %4884 ], [ %5035, %4891 ]
  %5068 = phi float [ %4423, %4884 ], [ %5036, %4891 ]
  %5069 = phi float [ %4502, %4884 ], [ %4943, %4891 ]
  %5070 = phi float [ %4503, %4884 ], [ %4944, %4891 ]
  %5071 = phi float [ %4504, %4884 ], [ %4945, %4891 ]
  %5072 = phi float [ %4382, %4884 ], [ %5056, %4891 ]
  %5073 = phi float [ %4383, %4884 ], [ %5057, %4891 ]
  %5074 = phi float [ %4384, %4884 ], [ %5058, %4891 ]
  %5075 = phi float [ %4424, %4884 ], [ %5050, %4891 ]
  %5076 = phi float [ %4397, %4884 ], [ %5053, %4891 ]
  %5077 = select i1 %170, float 0.000000e+00, float %5068
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5062, float %5061, float %5060)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5064, float %5063, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = fmul fast float %5080, 2.000000e+00
  %5082 = fmul fast float %5081, %5072
  %5083 = fmul fast float %5081, %5073
  %5084 = fmul fast float %5081, %5074
  %5085 = fsub fast float %5065, %5082
  %5086 = fsub fast float %5064, %5083
  %5087 = fsub fast float %5063, %5084
  %5088 = call float @dx.op.binary.f32(i32 36, float %5076, float 1.000000e+00)  ; FMin(a,b)
  %5089 = fsub fast float 1.000000e+00, %5076
  %5090 = bitcast float %5089 to i32
  %5091 = sub nsw i32 2129859010, %5090
  %5092 = bitcast i32 %5091 to float
  %5093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5094 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = fcmp fast oeq float %5094, 0.000000e+00
  %5096 = fcmp fast oeq float %5093, 0.000000e+00
  %5097 = or i1 %5096, %5095
  br i1 %5097, label %5127, label %5098

; <label>:5098                                    ; preds = %5059
  %5099 = fsub fast float -0.000000e+00, %53
  %5100 = fsub fast float -0.000000e+00, %51
  %5101 = call float @dx.op.unary.f32(i32 24, float %5094)  ; Sqrt(value)
  %5102 = fdiv fast float %5101, %5093
  %5103 = fcmp fast ogt float %5102, 0x3FFB6F8900000000
  %5104 = select i1 %5103, float 0x3FFB6F8900000000, float %5102
  %5105 = fmul fast float %5104, 0x3FE8A23460000000
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5104, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5108 = fmul fast float %5106, %5093
  %5109 = fmul fast float %5107, 0x3FF279A740000000
  %5110 = fadd fast float %5109, -1.000000e+00
  %5111 = call float @dx.op.dot3.f32(i32 55, float %5099, float %5100, float %52, float %5099, float %5100, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = call float @dx.op.unary.f32(i32 25, float %5111)  ; Rsqrt(value)
  %5113 = fmul fast float %5112, %5099
  %5114 = fmul fast float %5112, %5100
  %5115 = fmul fast float %5112, %52
  %5116 = fmul fast float %5110, %5110
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = fmul fast float %5107, 0x40005F8BE0000000
  %5119 = fsub fast float 0x400C5BF8A0000000, %5118
  %5120 = fdiv fast float %5108, %5119
  %5121 = fmul fast float %5120, 0x3FEE31C3C0000000
  %5122 = fmul fast float %5121, %5117
  %5123 = fmul fast float %5107, 0x3FDACB7480000000
  %5124 = fadd fast float %5123, 0xBFD7347680000000
  %5125 = fmul fast float %5124, %5120
  %5126 = fmul fast float %5125, %5117
  br label %5127

; <label>:5127                                    ; preds = %5098, %5059
  %5128 = phi float [ %5113, %5098 ], [ 0.000000e+00, %5059 ]
  %5129 = phi float [ %5114, %5098 ], [ 0.000000e+00, %5059 ]
  %5130 = phi float [ %5115, %5098 ], [ 0.000000e+00, %5059 ]
  %5131 = phi float [ %5122, %5098 ], [ 0.000000e+00, %5059 ]
  %5132 = phi float [ %5126, %5098 ], [ 0.000000e+00, %5059 ]
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fmul fast float %5133, 0x3FDF454380000000
  %5135 = fmul fast float %5133, %5133
  %5136 = fmul fast float %5135, 0x3FEE471020000000
  %5137 = fadd fast float %5136, 0xBFD42F6020000000
  %5138 = fmul fast float %5093, 0x3FD20DD760000000
  %5139 = fmul fast float %5137, %5132
  %5140 = fadd fast float %5139, %5138
  %5141 = fmul fast float %5134, %5131
  %5142 = fadd fast float %5140, %5141
  %5143 = fsub fast float %5140, %5141
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = fmul fast float %5144, 0x3FDF454380000000
  %5146 = fmul fast float %5144, %5144
  %5147 = fmul fast float %5146, 0x3FEE471020000000
  %5148 = fadd fast float %5147, 0xBFD42F6020000000
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5131, float %5132, float 0x3FD20DD760000000, float %5145, float %5148)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %5151 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = fcmp fast oeq float %5151, 0.000000e+00
  %5153 = fcmp fast oeq float %5150, 0.000000e+00
  %5154 = or i1 %5153, %5152
  br i1 %5154, label %5184, label %5155

; <label>:5155                                    ; preds = %5127
  %5156 = fsub fast float -0.000000e+00, %49
  %5157 = fsub fast float -0.000000e+00, %47
  %5158 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5159 = fdiv fast float %5158, %5150
  %5160 = fcmp fast ogt float %5159, 0x3FFB6F8900000000
  %5161 = select i1 %5160, float 0x3FFB6F8900000000, float %5159
  %5162 = fmul fast float %5161, 0x3FE8A23460000000
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = call float @dx.op.binary.f32(i32 35, float %5161, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5165 = fmul fast float %5163, %5150
  %5166 = fmul fast float %5164, 0x3FF279A740000000
  %5167 = fadd fast float %5166, -1.000000e+00
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %48, float %5156, float %5157, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 25, float %5168)  ; Rsqrt(value)
  %5170 = fmul fast float %5169, %5156
  %5171 = fmul fast float %5169, %5157
  %5172 = fmul fast float %5169, %48
  %5173 = fmul fast float %5167, %5167
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5164, 0x40005F8BE0000000
  %5176 = fsub fast float 0x400C5BF8A0000000, %5175
  %5177 = fdiv fast float %5165, %5176
  %5178 = fmul fast float %5177, 0x3FEE31C3C0000000
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %5164, 0x3FDACB7480000000
  %5181 = fadd fast float %5180, 0xBFD7347680000000
  %5182 = fmul fast float %5181, %5177
  %5183 = fmul fast float %5182, %5174
  br label %5184

; <label>:5184                                    ; preds = %5155, %5127
  %5185 = phi float [ %5170, %5155 ], [ 0.000000e+00, %5127 ]
  %5186 = phi float [ %5171, %5155 ], [ 0.000000e+00, %5127 ]
  %5187 = phi float [ %5172, %5155 ], [ 0.000000e+00, %5127 ]
  %5188 = phi float [ %5179, %5155 ], [ 0.000000e+00, %5127 ]
  %5189 = phi float [ %5183, %5155 ], [ 0.000000e+00, %5127 ]
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = fmul fast float %5190, 0x3FDF454380000000
  %5192 = fmul fast float %5190, %5190
  %5193 = fmul fast float %5192, 0x3FEE471020000000
  %5194 = fadd fast float %5193, 0xBFD42F6020000000
  %5195 = fmul fast float %5150, 0x3FD20DD760000000
  %5196 = fmul fast float %5194, %5189
  %5197 = fadd fast float %5196, %5195
  %5198 = fmul fast float %5191, %5188
  %5199 = fadd fast float %5197, %5198
  %5200 = fsub fast float %5197, %5198
  %5201 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = fmul fast float %5201, 0x3FDF454380000000
  %5203 = fmul fast float %5201, %5201
  %5204 = fmul fast float %5203, 0x3FEE471020000000
  %5205 = fadd fast float %5204, 0xBFD42F6020000000
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5188, float %5189, float 0x3FD20DD760000000, float %5202, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %5208 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = fcmp fast oeq float %5208, 0.000000e+00
  %5210 = fcmp fast oeq float %5207, 0.000000e+00
  %5211 = or i1 %5210, %5209
  br i1 %5211, label %5241, label %5212

; <label>:5212                                    ; preds = %5184
  %5213 = fsub fast float -0.000000e+00, %45
  %5214 = fsub fast float -0.000000e+00, %43
  %5215 = call float @dx.op.unary.f32(i32 24, float %5208)  ; Sqrt(value)
  %5216 = fdiv fast float %5215, %5207
  %5217 = fcmp fast ogt float %5216, 0x3FFB6F8900000000
  %5218 = select i1 %5217, float 0x3FFB6F8900000000, float %5216
  %5219 = fmul fast float %5218, 0x3FE8A23460000000
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = call float @dx.op.binary.f32(i32 35, float %5218, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5222 = fmul fast float %5220, %5207
  %5223 = fmul fast float %5221, 0x3FF279A740000000
  %5224 = fadd fast float %5223, -1.000000e+00
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5214, float %44, float %5213, float %5214, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = call float @dx.op.unary.f32(i32 25, float %5225)  ; Rsqrt(value)
  %5227 = fmul fast float %5226, %5213
  %5228 = fmul fast float %5226, %5214
  %5229 = fmul fast float %5226, %44
  %5230 = fmul fast float %5224, %5224
  %5231 = fsub fast float 1.000000e+00, %5230
  %5232 = fmul fast float %5221, 0x40005F8BE0000000
  %5233 = fsub fast float 0x400C5BF8A0000000, %5232
  %5234 = fdiv fast float %5222, %5233
  %5235 = fmul fast float %5234, 0x3FEE31C3C0000000
  %5236 = fmul fast float %5235, %5231
  %5237 = fmul fast float %5221, 0x3FDACB7480000000
  %5238 = fadd fast float %5237, 0xBFD7347680000000
  %5239 = fmul fast float %5238, %5234
  %5240 = fmul fast float %5239, %5231
  br label %5241

; <label>:5241                                    ; preds = %5212, %5184
  %5242 = phi float [ %5227, %5212 ], [ 0.000000e+00, %5184 ]
  %5243 = phi float [ %5228, %5212 ], [ 0.000000e+00, %5184 ]
  %5244 = phi float [ %5229, %5212 ], [ 0.000000e+00, %5184 ]
  %5245 = phi float [ %5236, %5212 ], [ 0.000000e+00, %5184 ]
  %5246 = phi float [ %5240, %5212 ], [ 0.000000e+00, %5184 ]
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = fmul fast float %5247, 0x3FDF454380000000
  %5249 = fmul fast float %5247, %5247
  %5250 = fmul fast float %5249, 0x3FEE471020000000
  %5251 = fadd fast float %5250, 0xBFD42F6020000000
  %5252 = fmul fast float %5207, 0x3FD20DD760000000
  %5253 = fmul fast float %5251, %5246
  %5254 = fadd fast float %5253, %5252
  %5255 = fmul fast float %5248, %5245
  %5256 = fadd fast float %5254, %5255
  %5257 = fsub fast float %5254, %5255
  %5258 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = fmul fast float %5258, 0x3FDF454380000000
  %5260 = fmul fast float %5258, %5258
  %5261 = fmul fast float %5260, 0x3FEE471020000000
  %5262 = fadd fast float %5261, 0xBFD42F6020000000
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5245, float %5246, float 0x3FD20DD760000000, float %5259, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5142, float 0.000000e+00)  ; FMax(a,b)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5199, float 0.000000e+00)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 35, float %5256, float 0.000000e+00)  ; FMax(a,b)
  %5267 = call float @dx.op.binary.f32(i32 35, float %5143, float 0.000000e+00)  ; FMax(a,b)
  %5268 = call float @dx.op.binary.f32(i32 35, float %5200, float 0.000000e+00)  ; FMax(a,b)
  %5269 = call float @dx.op.binary.f32(i32 35, float %5257, float 0.000000e+00)  ; FMax(a,b)
  %5270 = call float @dx.op.binary.f32(i32 35, float %5149, float 0.000000e+00)  ; FMax(a,b)
  %5271 = call float @dx.op.binary.f32(i32 35, float %5206, float 0.000000e+00)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = call float @dx.op.binary.f32(i32 36, float %5069, float %5274)  ; FMin(a,b)
  %5276 = fsub fast float 1.000000e+00, %5088
  %5277 = fmul fast float %5275, %5276
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = bitcast float %5278 to i32
  %5280 = sub nsw i32 2129859010, %5279
  %5281 = bitcast i32 %5280 to float
  %5282 = call float @dx.op.binary.f32(i32 36, float %5070, float %5274)  ; FMin(a,b)
  %5283 = fmul fast float %5282, %5276
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = bitcast float %5284 to i32
  %5286 = sub nsw i32 2129859010, %5285
  %5287 = bitcast i32 %5286 to float
  %5288 = call float @dx.op.binary.f32(i32 36, float %5071, float %5274)  ; FMin(a,b)
  %5289 = fmul fast float %5288, %5276
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = bitcast float %5290 to i32
  %5292 = sub nsw i32 2129859010, %5291
  %5293 = bitcast i32 %5292 to float
  %5294 = fmul fast float %5264, %5088
  %5295 = fmul fast float %5294, %5281
  %5296 = fmul fast float %5265, %5088
  %5297 = fmul fast float %5296, %5287
  %5298 = fmul fast float %5266, %5088
  %5299 = fmul fast float %5298, %5293
  %5300 = call float @dx.op.binary.f32(i32 36, float %5066, float %5274)  ; FMin(a,b)
  %5301 = fmul fast float %5300, %5276
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sub nsw i32 2129859010, %5303
  %5305 = bitcast i32 %5304 to float
  %5306 = call float @dx.op.binary.f32(i32 36, float %5067, float %5274)  ; FMin(a,b)
  %5307 = fmul fast float %5306, %5276
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = call float @dx.op.binary.f32(i32 36, float %5077, float %5274)  ; FMin(a,b)
  %5313 = fmul fast float %5312, %5276
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5270, %5088
  %5319 = fmul fast float %5318, %5305
  %5320 = fmul fast float %5271, %5088
  %5321 = fmul fast float %5320, %5311
  %5322 = fmul fast float %5272, %5088
  %5323 = fmul fast float %5322, %5317
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5295, float %5297, float %5299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = select i1 %170, float 0.000000e+00, float %5295
  %5326 = select i1 %170, float %5324, float %5297
  %5327 = select i1 %170, float 0.000000e+00, float %5299
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5267, float %5268, float %5269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = select i1 %170, float 0.000000e+00, float %5267
  %5330 = select i1 %170, float %5328, float %5268
  %5331 = select i1 %170, float 0.000000e+00, float %5269
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5321, float %5323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = select i1 %170, float 0.000000e+00, float %5319
  %5334 = select i1 %170, float %5332, float %5321
  %5335 = select i1 %170, float 0.000000e+00, float %5323
  %5336 = fmul fast float %5079, 9.843750e-01
  %5337 = fmul fast float %5075, 9.843750e-01
  %5338 = fadd fast float %5336, 7.812500e-03
  %5339 = fadd fast float %5337, 7.812500e-03
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5338, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 2
  %5342 = extractvalue %dx.types.ResRet.f32 %5340, 3
  %5343 = fmul fast float %5341, %5066
  %5344 = fmul fast float %5341, %5067
  %5345 = fmul fast float %5341, %5077
  %5346 = fadd fast float %5343, %5342
  %5347 = fadd fast float %5344, %5342
  %5348 = fadd fast float %5345, %5342
  %5349 = fcmp fast ogt float %4398, 0.000000e+00
  br i1 %5349, label %5350, label %5376

; <label>:5350                                    ; preds = %5241
  %5351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.ResRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.ResRet.f32 %5351, 2
  %5355 = fadd fast float %5352, -5.000000e-01
  %5356 = fadd fast float %5353, -5.000000e-01
  %5357 = fadd fast float %5354, -5.000000e-01
  %5358 = fsub fast float 1.000000e+00, %5066
  %5359 = fsub fast float 1.000000e+00, %5067
  %5360 = fsub fast float 1.000000e+00, %5077
  %5361 = fmul fast float %5066, 4.000000e+00
  %5362 = fmul fast float %5361, %5358
  %5363 = fmul fast float %5362, %5355
  %5364 = fmul fast float %5067, 4.000000e+00
  %5365 = fmul fast float %5364, %5359
  %5366 = fmul fast float %5365, %5356
  %5367 = fmul fast float %5077, 4.000000e+00
  %5368 = fmul fast float %5367, %5360
  %5369 = fmul fast float %5368, %5357
  %5370 = fadd fast float %5363, %5346
  %5371 = fadd fast float %5366, %5347
  %5372 = fadd fast float %5369, %5348
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  br label %5376

; <label>:5376                                    ; preds = %5350, %5241
  %5377 = phi float [ %5373, %5350 ], [ %5346, %5241 ]
  %5378 = phi float [ %5374, %5350 ], [ %5347, %5241 ]
  %5379 = phi float [ %5375, %5350 ], [ %5348, %5241 ]
  %5380 = call float @dx.op.binary.f32(i32 35, float %5378, float %5379)  ; FMax(a,b)
  %5381 = call float @dx.op.binary.f32(i32 35, float %5377, float %5380)  ; FMax(a,b)
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = fcmp fast ogt float %5383, 0x3E7FF19E20000000
  %5385 = fdiv fast float 1.000000e+00, %5383
  %5386 = select i1 %5384, float %5385, float 0.000000e+00
  %5387 = fmul fast float %5386, %5069
  %5388 = fmul fast float %5386, %5070
  %5389 = fmul fast float %5386, %5071
  %5390 = fadd fast float %5387, -1.000000e+00
  %5391 = fadd fast float %5388, -1.000000e+00
  %5392 = fadd fast float %5389, -1.000000e+00
  %5393 = fmul fast float %5390, 5.000000e-01
  %5394 = fmul fast float %5391, 5.000000e-01
  %5395 = fmul fast float %5392, 5.000000e-01
  %5396 = fadd fast float %5393, 1.000000e+00
  %5397 = fadd fast float %5394, 1.000000e+00
  %5398 = fadd fast float %5395, 1.000000e+00
  %5399 = fmul fast float %5377, %5333
  %5400 = fmul fast float %5378, %5334
  %5401 = fmul fast float %5379, %5335
  %5402 = fsub fast float 1.000000e+00, %5079
  %5403 = bitcast float %5402 to i32
  %5404 = sitofp i32 %5403 to float
  %5405 = fmul fast float %5404, 5.000000e+00
  %5406 = fadd fast float %5405, 0xC1EFBF8940000000
  %5407 = fptosi float %5406 to i32
  %5408 = bitcast i32 %5407 to float
  %5409 = fmul fast float %5408, %4399
  %5410 = fmul fast float %5325, %5409
  %5411 = fmul fast float %5410, %5382
  %5412 = fmul fast float %5411, %5396
  %5413 = fmul fast float %5326, %5409
  %5414 = fmul fast float %5413, %5382
  %5415 = fmul fast float %5414, %5397
  %5416 = fmul fast float %5327, %5409
  %5417 = fmul fast float %5416, %5382
  %5418 = fmul fast float %5417, %5398
  %5419 = fadd fast float %5399, %4388
  %5420 = fadd fast float %5419, %5412
  %5421 = fmul fast float %5420, %4395
  %5422 = fadd fast float %5400, %4389
  %5423 = fadd fast float %5422, %5415
  %5424 = fmul fast float %5423, %4395
  %5425 = fadd fast float %5401, %4390
  %5426 = fadd fast float %5425, %5418
  %5427 = fmul fast float %5426, %4395
  %5428 = fmul fast float %5382, %5327
  %5429 = fmul fast float %5382, %5326
  %5430 = fmul fast float %5382, %5325
  %5431 = fmul fast float %5382, %4490
  %5432 = fadd fast float %5431, -1.000000e+00
  %5433 = fmul fast float %5432, %4395
  %5434 = fadd fast float %5433, 1.000000e+00
  %5435 = fmul fast float %5382, %4489
  %5436 = fadd fast float %5435, -1.000000e+00
  %5437 = fmul fast float %5436, %4395
  %5438 = fadd fast float %5437, 1.000000e+00
  %5439 = fmul fast float %5382, %4488
  %5440 = fadd fast float %5439, -1.000000e+00
  %5441 = fmul fast float %5440, %4395
  %5442 = fadd fast float %5441, 1.000000e+00
  %5443 = fmul fast float %5442, %5329
  %5444 = fmul fast float %5438, %5330
  %5445 = fmul fast float %5434, %5331
  %5446 = fadd fast float %5443, %5430
  %5447 = fmul fast float %5446, %4395
  %5448 = fadd fast float %5444, %5429
  %5449 = fmul fast float %5448, %4395
  %5450 = fadd fast float %5445, %5428
  %5451 = fmul fast float %5450, %4395
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5454 = fcmp fast oeq float %5453, 0.000000e+00
  br i1 %5454, label %5736, label %5455

; <label>:5455                                    ; preds = %5376
  %5456 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5463, 1
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5460, float %5461, float %5462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = select i1 %170, float %5464, float %5460
  %5468 = select i1 %170, float %5466, float %5461
  %5469 = select i1 %170, float %5465, float %5462
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 1
  %5472 = fcmp fast une float %5471, 0.000000e+00
  br i1 %5472, label %5473, label %5490

; <label>:5473                                    ; preds = %5455
  %5474 = fptoui float %73 to i32
  %5475 = fptoui float %74 to i32
  %5476 = lshr i32 %5474, 4
  %5477 = lshr i32 %5475, 4
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = fptoui float %5479 to i32
  %5481 = add i32 %5480, 15
  %5482 = lshr i32 %5481, 4
  %5483 = mul i32 %5482, %5477
  %5484 = add i32 %5483, %5476
  %5485 = shl i32 %5484, 3
  %5486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.i32 %5486, 0
  %5488 = and i32 %5487, -268435456
  %5489 = icmp eq i32 %5488, -1342177280
  br i1 %5489, label %5500, label %5490

; <label>:5490                                    ; preds = %5473, %5455
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5494 = fmul fast float %5492, %73
  %5495 = fmul fast float %5493, %74
  %5496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5494, float %5495, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5497 = extractvalue %dx.types.ResRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.ResRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.ResRet.f32 %5496, 2
  br label %5500

; <label>:5500                                    ; preds = %5490, %5473
  %5501 = phi float [ %5497, %5490 ], [ 0.000000e+00, %5473 ]
  %5502 = phi float [ %5498, %5490 ], [ 0.000000e+00, %5473 ]
  %5503 = phi float [ %5499, %5490 ], [ 0.000000e+00, %5473 ]
  %5504 = call float @dx.op.binary.f32(i32 36, float %5502, float %5503)  ; FMin(a,b)
  %5505 = call float @dx.op.binary.f32(i32 36, float %5501, float %5504)  ; FMin(a,b)
  %5506 = fcmp fast ogt float %5505, 0.000000e+00
  br i1 %5506, label %5507, label %5736, !dx.controlflow.hints !73

; <label>:5507                                    ; preds = %5500
  %5508 = fmul fast float %5501, %5467
  %5509 = fmul fast float %5502, %5468
  %5510 = fmul fast float %5503, %5469
  %5511 = fsub fast float %5456, %5065
  %5512 = fsub fast float %5457, %5064
  %5513 = fsub fast float %5458, %5063
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  %5516 = fmul fast float %5515, %5511
  %5517 = fmul fast float %5515, %5512
  %5518 = fmul fast float %5515, %5513
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5061, float %5060, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5522 = fmul fast float %5521, %5521
  %5523 = fmul fast float %5522, %5092
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = fmul fast float %5524, %5521
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fmul fast float %5526, %5526
  %5528 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5529 = fsub fast float 1.000000e+00, %5075
  %5530 = call float @dx.op.binary.f32(i32 35, float %5529, float 0x3F847AE140000000)  ; FMax(a,b)
  %5531 = fmul fast float %5530, %5530
  %5532 = fmul fast float %5531, %5531
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5079, %5079
  %5535 = fmul fast float %5534, %5533
  %5536 = fadd fast float %5535, %5532
  %5537 = bitcast float %5536 to i32
  %5538 = ashr i32 %5537, 1
  %5539 = add nsw i32 %5538, 532487669
  %5540 = bitcast i32 %5539 to float
  %5541 = fadd fast float %5540, %5079
  %5542 = fmul fast float %5532, %5527
  %5543 = fsub fast float 1.000000e+00, %5527
  %5544 = fadd fast float %5543, %5542
  %5545 = fmul fast float %5528, %5528
  %5546 = fmul fast float %5545, %5533
  %5547 = fadd fast float %5546, %5532
  %5548 = bitcast float %5547 to i32
  %5549 = ashr i32 %5548, 1
  %5550 = add nsw i32 %5549, 532487669
  %5551 = bitcast i32 %5550 to float
  %5552 = fadd fast float %5551, %5528
  %5553 = fmul fast float %5544, %5544
  %5554 = fmul fast float %5553, %5541
  %5555 = fmul fast float %5554, %5552
  %5556 = fdiv fast float 0x3FF0A00000000000, %5555
  %5557 = fmul fast float %5556, %5532
  %5558 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sitofp i32 %5560 to float
  %5562 = fmul fast float %5561, 5.000000e+00
  %5563 = fadd fast float %5562, 0xC1EFBF8940000000
  %5564 = fptosi float %5563 to i32
  %5565 = bitcast i32 %5564 to float
  %5566 = fsub fast float 1.000000e+00, %5066
  %5567 = fsub fast float 1.000000e+00, %5067
  %5568 = fsub fast float 1.000000e+00, %5077
  %5569 = fmul fast float %5565, %5566
  %5570 = fmul fast float %5565, %5567
  %5571 = fmul fast float %5565, %5568
  %5572 = fadd fast float %5569, %5066
  %5573 = fadd fast float %5570, %5067
  %5574 = fadd fast float %5571, %5077
  br i1 %5349, label %5575, label %5598

; <label>:5575                                    ; preds = %5507
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %5558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = fadd fast float %5577, -5.000000e-01
  %5581 = fadd fast float %5578, -5.000000e-01
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fmul fast float %5066, 4.000000e+00
  %5584 = fmul fast float %5583, %5566
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %5067, 4.000000e+00
  %5587 = fmul fast float %5586, %5567
  %5588 = fmul fast float %5587, %5581
  %5589 = fmul fast float %5077, 4.000000e+00
  %5590 = fmul fast float %5589, %5568
  %5591 = fmul fast float %5590, %5582
  %5592 = fadd fast float %5585, %5572
  %5593 = fadd fast float %5588, %5573
  %5594 = fadd fast float %5591, %5574
  %5595 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  br label %5598

; <label>:5598                                    ; preds = %5575, %5507
  %5599 = phi float [ %5595, %5575 ], [ %5572, %5507 ]
  %5600 = phi float [ %5596, %5575 ], [ %5573, %5507 ]
  %5601 = phi float [ %5597, %5575 ], [ %5574, %5507 ]
  %5602 = fmul fast float %5519, 9.843750e-01
  %5603 = fadd fast float %5602, 7.812500e-03
  %5604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5603, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 3
  %5607 = fmul fast float %5605, %5066
  %5608 = fmul fast float %5605, %5067
  %5609 = fmul fast float %5605, %5077
  %5610 = fadd fast float %5607, %5606
  %5611 = fadd fast float %5608, %5606
  %5612 = fadd fast float %5609, %5606
  br i1 %5349, label %5613, label %5636

; <label>:5613                                    ; preds = %5598
  %5614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %5519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5615 = extractvalue %dx.types.ResRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.ResRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.ResRet.f32 %5614, 2
  %5618 = fadd fast float %5615, -5.000000e-01
  %5619 = fadd fast float %5616, -5.000000e-01
  %5620 = fadd fast float %5617, -5.000000e-01
  %5621 = fmul fast float %5066, 4.000000e+00
  %5622 = fmul fast float %5621, %5566
  %5623 = fmul fast float %5622, %5618
  %5624 = fmul fast float %5067, 4.000000e+00
  %5625 = fmul fast float %5624, %5567
  %5626 = fmul fast float %5625, %5619
  %5627 = fmul fast float %5077, 4.000000e+00
  %5628 = fmul fast float %5627, %5568
  %5629 = fmul fast float %5628, %5620
  %5630 = fadd fast float %5623, %5610
  %5631 = fadd fast float %5626, %5611
  %5632 = fadd fast float %5629, %5612
  %5633 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5634 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  br label %5636

; <label>:5636                                    ; preds = %5613, %5598
  %5637 = phi float [ %5633, %5613 ], [ %5610, %5598 ]
  %5638 = phi float [ %5634, %5613 ], [ %5611, %5598 ]
  %5639 = phi float [ %5635, %5613 ], [ %5612, %5598 ]
  %5640 = call float @dx.op.binary.f32(i32 35, float %5638, float %5639)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5637, float %5640)  ; FMax(a,b)
  %5642 = fsub fast float 1.000000e+00, %5641
  %5643 = fsub fast float -0.000000e+00, %5072
  %5644 = fsub fast float -0.000000e+00, %5073
  %5645 = fsub fast float -0.000000e+00, %5074
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %5647, 9.843750e-01
  %5649 = fadd fast float %5648, 7.812500e-03
  %5650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5649, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 2
  %5652 = extractvalue %dx.types.ResRet.f32 %5650, 3
  %5653 = fmul fast float %5651, %5066
  %5654 = fmul fast float %5651, %5067
  %5655 = fmul fast float %5651, %5077
  %5656 = fadd fast float %5653, %5652
  %5657 = fadd fast float %5654, %5652
  %5658 = fadd fast float %5655, %5652
  br i1 %5349, label %5659, label %5682

; <label>:5659                                    ; preds = %5636
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %5647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = fadd fast float %5661, -5.000000e-01
  %5665 = fadd fast float %5662, -5.000000e-01
  %5666 = fadd fast float %5663, -5.000000e-01
  %5667 = fmul fast float %5066, 4.000000e+00
  %5668 = fmul fast float %5667, %5566
  %5669 = fmul fast float %5668, %5664
  %5670 = fmul fast float %5067, 4.000000e+00
  %5671 = fmul fast float %5670, %5567
  %5672 = fmul fast float %5671, %5665
  %5673 = fmul fast float %5077, 4.000000e+00
  %5674 = fmul fast float %5673, %5568
  %5675 = fmul fast float %5674, %5666
  %5676 = fadd fast float %5669, %5656
  %5677 = fadd fast float %5672, %5657
  %5678 = fadd fast float %5675, %5658
  %5679 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5680 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5681 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  br label %5682

; <label>:5682                                    ; preds = %5659, %5636
  %5683 = phi float [ %5679, %5659 ], [ %5656, %5636 ]
  %5684 = phi float [ %5680, %5659 ], [ %5657, %5636 ]
  %5685 = phi float [ %5681, %5659 ], [ %5658, %5636 ]
  %5686 = call float @dx.op.binary.f32(i32 35, float %5684, float %5685)  ; FMax(a,b)
  %5687 = call float @dx.op.binary.f32(i32 35, float %5683, float %5686)  ; FMax(a,b)
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = fmul fast float %5688, %5647
  %5690 = fmul fast float %5689, %4488
  %5691 = fmul fast float %5689, %4489
  %5692 = fmul fast float %5689, %4490
  %5693 = fmul fast float %5599, %5557
  %5694 = fmul fast float %5600, %5557
  %5695 = fmul fast float %5601, %5557
  %5696 = fsub fast float 1.000000e+00, %5520
  %5697 = bitcast float %5696 to i32
  %5698 = sitofp i32 %5697 to float
  %5699 = fmul fast float %5698, 5.000000e+00
  %5700 = fadd fast float %5699, 0xC1EFBF8940000000
  %5701 = fptosi float %5700 to i32
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5702, %4399
  %5704 = fmul fast float %5642, %5703
  %5705 = fmul fast float %5704, %5396
  %5706 = fmul fast float %5704, %5397
  %5707 = fmul fast float %5704, %5398
  %5708 = fmul fast float %5642, %5525
  %5709 = fadd fast float %5705, %5693
  %5710 = fadd fast float %5706, %5694
  %5711 = fadd fast float %5707, %5695
  %5712 = fadd fast float %5690, %5708
  %5713 = fadd fast float %5691, %5708
  %5714 = fadd fast float %5692, %5708
  %5715 = fmul fast float %5712, %5508
  %5716 = fmul fast float %5713, %5509
  %5717 = fmul fast float %5714, %5510
  %5718 = fmul fast float %5525, %5508
  %5719 = fmul fast float %5718, %5709
  %5720 = fmul fast float %5525, %5509
  %5721 = fmul fast float %5720, %5710
  %5722 = fmul fast float %5525, %5510
  %5723 = fmul fast float %5722, %5711
  %5724 = fadd fast float %5715, %5446
  %5725 = fmul fast float %5724, %4395
  %5726 = fadd fast float %5716, %5448
  %5727 = fmul fast float %5726, %4395
  %5728 = fadd fast float %5717, %5450
  %5729 = fmul fast float %5728, %4395
  %5730 = fadd fast float %5719, %5420
  %5731 = fmul fast float %5730, %4395
  %5732 = fadd fast float %5721, %5423
  %5733 = fmul fast float %5732, %4395
  %5734 = fadd fast float %5723, %5426
  %5735 = fmul fast float %5734, %4395
  br label %5736

; <label>:5736                                    ; preds = %5682, %5500, %5376
  %5737 = phi float [ %5421, %5376 ], [ %5421, %5500 ], [ %5731, %5682 ]
  %5738 = phi float [ %5424, %5376 ], [ %5424, %5500 ], [ %5733, %5682 ]
  %5739 = phi float [ %5427, %5376 ], [ %5427, %5500 ], [ %5735, %5682 ]
  %5740 = phi float [ %5447, %5376 ], [ %5447, %5500 ], [ %5725, %5682 ]
  %5741 = phi float [ %5449, %5376 ], [ %5449, %5500 ], [ %5727, %5682 ]
  %5742 = phi float [ %5451, %5376 ], [ %5451, %5500 ], [ %5729, %5682 ]
  %5743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.i32 %5743, 0
  %5745 = icmp eq i32 %5744, 0
  br i1 %5745, label %6235, label %5746

; <label>:5746                                    ; preds = %5736
  %5747 = fptoui float %73 to i32
  %5748 = fptoui float %74 to i32
  %5749 = lshr i32 %5747, 4
  %5750 = lshr i32 %5748, 4
  %5751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.i32 %5751, 0
  %5753 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5750, i32 %5752, i32 %5749)  ; UMad(a,b,c)
  %5754 = add nsw i32 %5744, -1
  %5755 = call i32 @dx.op.binary.i32(i32 37, i32 %5754, i32 0)  ; IMax(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %5757 = fptoui float %5756 to i32
  %5758 = lshr i32 %5757, 5
  %5759 = call i32 @dx.op.binary.i32(i32 40, i32 %5758, i32 8191)  ; UMin(a,b)
  %5760 = shl i32 %5759, 2
  %5761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5760, i32 undef)  ; BufferLoad(srv,index,wot)
  %5762 = extractvalue %dx.types.ResRet.i32 %5761, 0
  %5763 = lshr i32 %5762, 16
  %5764 = and i32 %5762, 65535
  %5765 = lshr i32 %5762, 21
  %5766 = lshr i32 %5764, 5
  %5767 = call i32 @dx.op.binary.i32(i32 40, i32 %5766, i32 %5755)  ; UMin(a,b)
  %5768 = icmp ugt i32 %5765, %5767
  br i1 %5768, label %6235, label %5769

; <label>:5769                                    ; preds = %5746
  br label %5770

; <label>:5770                                    ; preds = %6225, %5769
  %5771 = phi i32 [ %6232, %6225 ], [ %5765, %5769 ]
  %5772 = phi float [ %6226, %6225 ], [ %5737, %5769 ]
  %5773 = phi float [ %6227, %6225 ], [ %5738, %5769 ]
  %5774 = phi float [ %6228, %6225 ], [ %5739, %5769 ]
  %5775 = phi float [ %6229, %6225 ], [ %5740, %5769 ]
  %5776 = phi float [ %6230, %6225 ], [ %5741, %5769 ]
  %5777 = phi float [ %6231, %6225 ], [ %5742, %5769 ]
  %5778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.i32 %5778, 0
  %5780 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5753, i32 %5779, i32 %5771)  ; UMad(a,b,c)
  %5781 = shl i32 %5780, 2
  %5782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5781, i32 undef)  ; BufferLoad(srv,index,wot)
  %5783 = extractvalue %dx.types.ResRet.i32 %5782, 0
  %5784 = shl i32 %5771, 5
  %5785 = sub nsw i32 %5763, %5784
  %5786 = call i32 @dx.op.binary.i32(i32 37, i32 %5785, i32 0)  ; IMax(a,b)
  %5787 = call i32 @dx.op.binary.i32(i32 38, i32 %5786, i32 31)  ; IMin(a,b)
  %5788 = sub nsw i32 1, %5763
  %5789 = add nsw i32 %5788, %5764
  %5790 = call i32 @dx.op.binary.i32(i32 37, i32 %5789, i32 0)  ; IMax(a,b)
  %5791 = call i32 @dx.op.binary.i32(i32 38, i32 %5790, i32 32)  ; IMin(a,b)
  %5792 = and i32 %5791, 31
  %5793 = shl i32 -1, %5792
  %5794 = xor i32 %5793, -1
  %5795 = and i32 %5787, 31
  %5796 = shl i32 %5794, %5795
  %5797 = icmp eq i32 %5791, 32
  %5798 = select i1 %5797, i32 -1, i32 %5796
  %5799 = and i32 %5798, %5783
  %5800 = icmp eq i32 %5799, 0
  br i1 %5800, label %6225, label %5801

; <label>:5801                                    ; preds = %5770
  br label %5802

; <label>:5802                                    ; preds = %5882, %5801
  %5803 = phi i32 [ %5814, %5882 ], [ %5799, %5801 ]
  %5804 = phi float [ %5883, %5882 ], [ %5772, %5801 ]
  %5805 = phi float [ %5884, %5882 ], [ %5773, %5801 ]
  %5806 = phi float [ %5885, %5882 ], [ %5774, %5801 ]
  %5807 = phi float [ %5886, %5882 ], [ %5775, %5801 ]
  %5808 = phi float [ %5887, %5882 ], [ %5776, %5801 ]
  %5809 = phi float [ %5888, %5882 ], [ %5777, %5801 ]
  %5810 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5803)  ; FirstbitLo(value)
  %5811 = add i32 %5810, %5784
  %5812 = and i32 %5810, 31
  %5813 = shl i32 1, %5812
  %5814 = xor i32 %5813, %5803
  %5815 = mul i32 %5811, 112
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = or i32 %5815, 12
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = add i32 %5815, 44
  %5824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5823, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = add i32 %5815, 48
  %5827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5826, i32 undef)  ; BufferLoad(srv,index,wot)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.ResRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.ResRet.f32 %5827, 2
  %5831 = add i32 %5815, 80
  %5832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5831, i32 undef)  ; BufferLoad(srv,index,wot)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 2
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5818, float %5819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = select i1 %170, float %5833, float %5817
  %5837 = select i1 %170, float %5835, float %5818
  %5838 = select i1 %170, float %5834, float %5819
  %5839 = fsub fast float %5828, %128
  %5840 = fsub fast float %5829, %129
  %5841 = fsub fast float %5830, %130
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5841, float %5839, float %5840, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = call float @dx.op.unary.f32(i32 24, float %5842)  ; Sqrt(value)
  %5844 = fdiv fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5844, %5839
  %5846 = fmul fast float %5844, %5840
  %5847 = fmul fast float %5844, %5841
  %5848 = fadd fast float %5843, %5822
  %5849 = fdiv fast float 1.000000e+00, %5848
  %5850 = fmul float %5825, %5849
  %5851 = fmul float %5850, %5850
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = and i32 %5813, %5799
  %5854 = icmp eq i32 %5853, 0
  br i1 %5854, label %5877, label %5855, !dx.controlflow.hints !74

; <label>:5855                                    ; preds = %5802
  %5856 = lshr i32 %5747, 5
  %5857 = lshr i32 %5748, 5
  %5858 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5856, i32 %5857, i32 %5811, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5859 = extractvalue %dx.types.ResRet.i32 %5858, 0
  %5860 = and i32 %5859, 3
  %5861 = icmp eq i32 %5860, 0
  %5862 = select i1 %5861, float 1.000000e+00, float 0.000000e+00
  %5863 = icmp eq i32 %5860, 3
  br i1 %5863, label %5864, label %5877

; <label>:5864                                    ; preds = %5855
  %5865 = lshr i32 %5859, 10
  %5866 = and i32 %5865, 8160
  %5867 = and i32 %5748, 31
  %5868 = or i32 %5866, %5867
  %5869 = lshr i32 %5859, 1
  %5870 = and i32 %5869, 16352
  %5871 = and i32 %5747, 31
  %5872 = or i32 %5870, %5871
  %5873 = lshr i32 %5859, 23
  %5874 = and i32 %5873, 255
  %5875 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5872, i32 %5868, i32 %5874, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  br label %5877

; <label>:5877                                    ; preds = %5864, %5855, %5802
  %5878 = phi float [ %5876, %5864 ], [ %5862, %5855 ], [ 0.000000e+00, %5802 ]
  %5879 = call float @dx.op.binary.f32(i32 36, float %5878, float %5878)  ; FMin(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5878, float %5879)  ; FMin(a,b)
  %5881 = fcmp fast ogt float %5880, 0.000000e+00
  br i1 %5881, label %5890, label %5882, !dx.controlflow.hints !75

; <label>:5882                                    ; preds = %6173, %5877
  %5883 = phi float [ %5804, %5877 ], [ %6221, %6173 ]
  %5884 = phi float [ %5805, %5877 ], [ %6222, %6173 ]
  %5885 = phi float [ %5806, %5877 ], [ %6223, %6173 ]
  %5886 = phi float [ %5807, %5877 ], [ %6212, %6173 ]
  %5887 = phi float [ %5808, %5877 ], [ %6213, %6173 ]
  %5888 = phi float [ %5809, %5877 ], [ %6214, %6173 ]
  %5889 = icmp eq i32 %5803, %5813
  br i1 %5889, label %6224, label %5802

; <label>:5890                                    ; preds = %5877
  %5891 = fmul fast float %5878, %5836
  %5892 = fmul fast float %5878, %5837
  %5893 = fmul fast float %5878, %5838
  %5894 = fsub fast float %5830, %4865
  %5895 = fcmp fast ogt float %5894, 0.000000e+00
  %5896 = fsub fast float %130, %4865
  %5897 = fcmp fast ogt float %5896, 0.000000e+00
  %5898 = xor i1 %5897, %5895
  %5899 = fsub fast float %4865, %5830
  %5900 = fmul fast float %5899, 2.000000e+00
  %5901 = fadd fast float %5900, %5830
  %5902 = select i1 %5898, float %5830, float %5901
  %5903 = fsub fast float %5902, %130
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5903, float %5839, float %5840, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = call float @dx.op.unary.f32(i32 25, float %5904)  ; Rsqrt(value)
  %5906 = fmul fast float %5905, %5839
  %5907 = fmul fast float %5905, %5840
  %5908 = fmul fast float %5905, %5903
  %5909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4873)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5906, float %5907, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = fdiv fast float 1.000000e+00, %5910
  %5912 = fmul fast float %5911, %5909
  %5913 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5896, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fcmp fast ogt float %5913, 0.000000e+00
  %5915 = fcmp fast olt float %5913, 0.000000e+00
  %5916 = zext i1 %5914 to i32
  %5917 = zext i1 %5915 to i32
  %5918 = sub nsw i32 %5916, %5917
  %5919 = sitofp i32 %5918 to float
  %5920 = fsub fast float %5902, %4865
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %5920, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = fcmp fast ogt float %5921, 0.000000e+00
  %5923 = fcmp fast olt float %5921, 0.000000e+00
  %5924 = zext i1 %5922 to i32
  %5925 = zext i1 %5923 to i32
  %5926 = sub nsw i32 %5924, %5925
  %5927 = sitofp i32 %5926 to float
  %5928 = fcmp fast une float %5919, %5927
  br i1 %5928, label %5929, label %5939

; <label>:5929                                    ; preds = %5890
  %5930 = fmul fast float %5912, %5908
  %5931 = fmul fast float %5912, %5907
  %5932 = fmul fast float %5912, %5906
  %5933 = fmul fast float %5932, %5932
  %5934 = fmul fast float %5931, %5931
  %5935 = fadd fast float %5933, %5934
  %5936 = fmul fast float %5930, %5930
  %5937 = fadd fast float %5935, %5936
  %5938 = call float @dx.op.unary.f32(i32 24, float %5937)  ; Sqrt(value)
  br label %5951

; <label>:5939                                    ; preds = %5890
  %5940 = icmp slt i32 %5918, 0
  br i1 %5940, label %5941, label %5951

; <label>:5941                                    ; preds = %5939
  %5942 = fsub fast float %128, %5828
  %5943 = fsub fast float %129, %5829
  %5944 = fsub fast float %130, %5902
  %5945 = fmul fast float %5942, %5942
  %5946 = fmul fast float %5943, %5943
  %5947 = fadd fast float %5945, %5946
  %5948 = fmul fast float %5944, %5944
  %5949 = fadd fast float %5947, %5948
  %5950 = call float @dx.op.unary.f32(i32 24, float %5949)  ; Sqrt(value)
  br label %5951

; <label>:5951                                    ; preds = %5941, %5939, %5929
  %5952 = phi float [ %5938, %5929 ], [ %5950, %5941 ], [ 0.000000e+00, %5939 ]
  %5953 = and i1 %5897, %5895
  %5954 = fsub fast float -0.000000e+00, %5952
  %5955 = select i1 %5953, float -0.000000e+00, float %5954
  %5956 = fmul fast float %4866, 0x3FF7154760000000
  %5957 = fmul fast float %5956, %5955
  %5958 = fmul fast float %4867, 0x3FF7154760000000
  %5959 = fmul fast float %5958, %5955
  %5960 = fmul fast float %4868, 0x3FF7154760000000
  %5961 = fmul fast float %5960, %5955
  %5962 = call float @dx.op.unary.f32(i32 21, float %5957)  ; Exp(value)
  %5963 = call float @dx.op.unary.f32(i32 21, float %5959)  ; Exp(value)
  %5964 = call float @dx.op.unary.f32(i32 21, float %5961)  ; Exp(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5968 = fmul fast float %5891, %5965
  %5969 = fmul fast float %5892, %5966
  %5970 = fmul fast float %5893, %5967
  %5971 = fsub fast float %5845, %5065
  %5972 = fsub fast float %5846, %5064
  %5973 = fsub fast float %5847, %5063
  %5974 = call float @dx.op.dot3.f32(i32 55, float %5971, float %5972, float %5973, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = call float @dx.op.unary.f32(i32 25, float %5974)  ; Rsqrt(value)
  %5976 = fmul fast float %5975, %5971
  %5977 = fmul fast float %5975, %5972
  %5978 = fmul fast float %5975, %5973
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5846, float %5847, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5061, float %5060, float %5976, float %5977, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5982 = fmul fast float %5981, %5852
  %5983 = fmul fast float %5981, %5981
  %5984 = fmul fast float %5983, %5092
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fmul fast float %5982, %5985
  %5987 = bitcast float %5842 to i32
  %5988 = ashr i32 %5987, 1
  %5989 = sub nsw i32 1597463007, %5988
  %5990 = bitcast i32 %5989 to float
  %5991 = fmul fast float %5990, %5839
  %5992 = fmul fast float %5990, %5840
  %5993 = fmul fast float %5990, %5841
  %5994 = fsub fast float %5991, %5065
  %5995 = fsub fast float %5992, %5064
  %5996 = fsub fast float %5993, %5063
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = call float @dx.op.unary.f32(i32 25, float %5997)  ; Rsqrt(value)
  %5999 = fmul fast float %5994, %5998
  %6000 = fmul fast float %5995, %5998
  %6001 = fmul fast float %5996, %5998
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = fmul fast float %6002, %6002
  %6004 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %6005 = fsub fast float 1.000000e+00, %5075
  %6006 = call float @dx.op.binary.f32(i32 35, float %6005, float 0x3F847AE140000000)  ; FMax(a,b)
  %6007 = fmul fast float %6006, %6006
  %6008 = fmul fast float %6007, %6007
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = fmul fast float %5079, %5079
  %6011 = fmul fast float %6010, %6009
  %6012 = fadd fast float %6011, %6008
  %6013 = bitcast float %6012 to i32
  %6014 = ashr i32 %6013, 1
  %6015 = add nsw i32 %6014, 532487669
  %6016 = bitcast i32 %6015 to float
  %6017 = fadd fast float %6016, %5079
  %6018 = fmul fast float %6008, %6003
  %6019 = fsub fast float 1.000000e+00, %6003
  %6020 = fadd fast float %6019, %6018
  %6021 = fmul fast float %6004, %6004
  %6022 = fmul fast float %6021, %6009
  %6023 = fadd fast float %6022, %6008
  %6024 = bitcast float %6023 to i32
  %6025 = ashr i32 %6024, 1
  %6026 = add nsw i32 %6025, 532487669
  %6027 = bitcast i32 %6026 to float
  %6028 = fadd fast float %6027, %6004
  %6029 = fmul fast float %6020, %6020
  %6030 = fmul fast float %6029, %6017
  %6031 = fmul fast float %6030, %6028
  %6032 = fdiv fast float 1.000000e+00, %6031
  %6033 = bitcast float %6008 to i32
  %6034 = sitofp i32 %6033 to float
  %6035 = fmul fast float %6034, 0x3FE7F73180000000
  %6036 = fadd fast float %6035, 0x41AFE27C40000000
  %6037 = fptosi float %6036 to i32
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %5825, 0x3FD80E9D60000000
  %6040 = fmul fast float %6039, %5990
  %6041 = fadd fast float %6038, %6040
  %6042 = bitcast float %6041 to i32
  %6043 = sub nsw i32 2129859010, %6042
  %6044 = bitcast i32 %6043 to float
  %6045 = fmul fast float %6008, %6032
  %6046 = fmul fast float %6045, %6038
  %6047 = fmul fast float %6046, %6044
  %6048 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %6049 = fsub fast float 1.000000e+00, %6048
  %6050 = bitcast float %6049 to i32
  %6051 = sitofp i32 %6050 to float
  %6052 = fmul fast float %6051, 5.000000e+00
  %6053 = fadd fast float %6052, 0xC1EFBF8940000000
  %6054 = fptosi float %6053 to i32
  %6055 = bitcast i32 %6054 to float
  %6056 = fsub fast float 1.000000e+00, %5066
  %6057 = fsub fast float 1.000000e+00, %5067
  %6058 = fsub fast float 1.000000e+00, %5077
  %6059 = fmul fast float %6055, %6056
  %6060 = fmul fast float %6055, %6057
  %6061 = fmul fast float %6055, %6058
  %6062 = fadd fast float %6059, %5066
  %6063 = fadd fast float %6060, %5067
  %6064 = fadd fast float %6061, %5077
  br i1 %5349, label %6065, label %6088

; <label>:6065                                    ; preds = %5951
  %6066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %6048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6067 = extractvalue %dx.types.ResRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.ResRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.ResRet.f32 %6066, 2
  %6070 = fadd fast float %6067, -5.000000e-01
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fmul fast float %5066, 4.000000e+00
  %6074 = fmul fast float %6073, %6056
  %6075 = fmul fast float %6074, %6070
  %6076 = fmul fast float %5067, 4.000000e+00
  %6077 = fmul fast float %6076, %6057
  %6078 = fmul fast float %6077, %6071
  %6079 = fmul fast float %5077, 4.000000e+00
  %6080 = fmul fast float %6079, %6058
  %6081 = fmul fast float %6080, %6072
  %6082 = fadd fast float %6075, %6062
  %6083 = fadd fast float %6078, %6063
  %6084 = fadd fast float %6081, %6064
  %6085 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  br label %6088

; <label>:6088                                    ; preds = %6065, %5951
  %6089 = phi float [ %6085, %6065 ], [ %6062, %5951 ]
  %6090 = phi float [ %6086, %6065 ], [ %6063, %5951 ]
  %6091 = phi float [ %6087, %6065 ], [ %6064, %5951 ]
  %6092 = fmul fast float %5979, 9.843750e-01
  %6093 = fadd fast float %6092, 7.812500e-03
  %6094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6093, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6095 = extractvalue %dx.types.ResRet.f32 %6094, 2
  %6096 = extractvalue %dx.types.ResRet.f32 %6094, 3
  %6097 = fmul fast float %6095, %5066
  %6098 = fmul fast float %6095, %5067
  %6099 = fmul fast float %6095, %5077
  %6100 = fadd fast float %6097, %6096
  %6101 = fadd fast float %6098, %6096
  %6102 = fadd fast float %6099, %6096
  br i1 %5349, label %6103, label %6126

; <label>:6103                                    ; preds = %6088
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %5979, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6108 = fadd fast float %6105, -5.000000e-01
  %6109 = fadd fast float %6106, -5.000000e-01
  %6110 = fadd fast float %6107, -5.000000e-01
  %6111 = fmul fast float %5066, 4.000000e+00
  %6112 = fmul fast float %6111, %6056
  %6113 = fmul fast float %6112, %6108
  %6114 = fmul fast float %5067, 4.000000e+00
  %6115 = fmul fast float %6114, %6057
  %6116 = fmul fast float %6115, %6109
  %6117 = fmul fast float %5077, 4.000000e+00
  %6118 = fmul fast float %6117, %6058
  %6119 = fmul fast float %6118, %6110
  %6120 = fadd fast float %6113, %6100
  %6121 = fadd fast float %6116, %6101
  %6122 = fadd fast float %6119, %6102
  %6123 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6124 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  br label %6126

; <label>:6126                                    ; preds = %6103, %6088
  %6127 = phi float [ %6123, %6103 ], [ %6100, %6088 ]
  %6128 = phi float [ %6124, %6103 ], [ %6101, %6088 ]
  %6129 = phi float [ %6125, %6103 ], [ %6102, %6088 ]
  %6130 = call float @dx.op.binary.f32(i32 35, float %6128, float %6129)  ; FMax(a,b)
  %6131 = call float @dx.op.binary.f32(i32 35, float %6127, float %6130)  ; FMax(a,b)
  %6132 = fsub fast float 1.000000e+00, %6131
  %6133 = fsub fast float -0.000000e+00, %5072
  %6134 = fsub fast float -0.000000e+00, %5073
  %6135 = fsub fast float -0.000000e+00, %5074
  %6136 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5846, float %5847, float %6133, float %6134, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6138 = fmul fast float %6137, %5852
  %6139 = fmul fast float %6137, 9.843750e-01
  %6140 = fadd fast float %6139, 7.812500e-03
  %6141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6140, float %5339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 2
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 3
  %6144 = fmul fast float %6142, %5066
  %6145 = fmul fast float %6142, %5067
  %6146 = fmul fast float %6142, %5077
  %6147 = fadd fast float %6144, %6143
  %6148 = fadd fast float %6145, %6143
  %6149 = fadd fast float %6146, %6143
  br i1 %5349, label %6150, label %6173

; <label>:6150                                    ; preds = %6126
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4398, float %6137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = fadd fast float %6152, -5.000000e-01
  %6156 = fadd fast float %6153, -5.000000e-01
  %6157 = fadd fast float %6154, -5.000000e-01
  %6158 = fmul fast float %5066, 4.000000e+00
  %6159 = fmul fast float %6158, %6056
  %6160 = fmul fast float %6159, %6155
  %6161 = fmul fast float %5067, 4.000000e+00
  %6162 = fmul fast float %6161, %6057
  %6163 = fmul fast float %6162, %6156
  %6164 = fmul fast float %5077, 4.000000e+00
  %6165 = fmul fast float %6164, %6058
  %6166 = fmul fast float %6165, %6157
  %6167 = fadd fast float %6160, %6147
  %6168 = fadd fast float %6163, %6148
  %6169 = fadd fast float %6166, %6149
  %6170 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6171 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6172 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  br label %6173

; <label>:6173                                    ; preds = %6150, %6126
  %6174 = phi float [ %6170, %6150 ], [ %6147, %6126 ]
  %6175 = phi float [ %6171, %6150 ], [ %6148, %6126 ]
  %6176 = phi float [ %6172, %6150 ], [ %6149, %6126 ]
  %6177 = call float @dx.op.binary.f32(i32 35, float %6175, float %6176)  ; FMax(a,b)
  %6178 = call float @dx.op.binary.f32(i32 35, float %6174, float %6177)  ; FMax(a,b)
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = fmul fast float %6138, %6179
  %6181 = fmul fast float %6180, %4488
  %6182 = fmul fast float %6180, %4489
  %6183 = fmul fast float %6180, %4490
  %6184 = fmul fast float %6089, %6047
  %6185 = fmul fast float %6090, %6047
  %6186 = fmul fast float %6091, %6047
  %6187 = fsub fast float 1.000000e+00, %5980
  %6188 = bitcast float %6187 to i32
  %6189 = sitofp i32 %6188 to float
  %6190 = fmul fast float %6189, 5.000000e+00
  %6191 = fadd fast float %6190, 0xC1EFBF8940000000
  %6192 = fptosi float %6191 to i32
  %6193 = bitcast i32 %6192 to float
  %6194 = fmul fast float %6193, %4399
  %6195 = fmul fast float %6132, %6194
  %6196 = fmul fast float %6195, %5396
  %6197 = fmul fast float %6195, %5397
  %6198 = fmul fast float %6195, %5398
  %6199 = fmul fast float %6132, %5986
  %6200 = fadd fast float %6196, %6184
  %6201 = fadd fast float %6197, %6185
  %6202 = fadd fast float %6198, %6186
  %6203 = fadd fast float %6181, %6199
  %6204 = fadd fast float %6182, %6199
  %6205 = fadd fast float %6183, %6199
  %6206 = fmul fast float %5968, %4395
  %6207 = fmul fast float %6206, %6203
  %6208 = fmul fast float %5969, %4395
  %6209 = fmul fast float %6208, %6204
  %6210 = fmul fast float %5970, %4395
  %6211 = fmul fast float %6210, %6205
  %6212 = fadd fast float %6207, %5807
  %6213 = fadd fast float %6209, %5808
  %6214 = fadd fast float %6211, %5809
  %6215 = fmul fast float %6206, %5986
  %6216 = fmul fast float %6215, %6200
  %6217 = fmul fast float %6208, %5986
  %6218 = fmul fast float %6217, %6201
  %6219 = fmul fast float %6210, %5986
  %6220 = fmul fast float %6219, %6202
  %6221 = fadd fast float %6216, %5804
  %6222 = fadd fast float %6218, %5805
  %6223 = fadd fast float %6220, %5806
  br label %5882

; <label>:6224                                    ; preds = %5882
  br label %6225

; <label>:6225                                    ; preds = %6224, %5770
  %6226 = phi float [ %5772, %5770 ], [ %5883, %6224 ]
  %6227 = phi float [ %5773, %5770 ], [ %5884, %6224 ]
  %6228 = phi float [ %5774, %5770 ], [ %5885, %6224 ]
  %6229 = phi float [ %5775, %5770 ], [ %5886, %6224 ]
  %6230 = phi float [ %5776, %5770 ], [ %5887, %6224 ]
  %6231 = phi float [ %5777, %5770 ], [ %5888, %6224 ]
  %6232 = add i32 %5771, 1
  %6233 = icmp ugt i32 %6232, %5767
  br i1 %6233, label %6234, label %5770

; <label>:6234                                    ; preds = %6225
  br label %6235

; <label>:6235                                    ; preds = %6234, %5746, %5736
  %6236 = phi float [ %5737, %5736 ], [ %5737, %5746 ], [ %6226, %6234 ]
  %6237 = phi float [ %5738, %5736 ], [ %5738, %5746 ], [ %6227, %6234 ]
  %6238 = phi float [ %5739, %5736 ], [ %5739, %5746 ], [ %6228, %6234 ]
  %6239 = phi float [ %5740, %5736 ], [ %5740, %5746 ], [ %6229, %6234 ]
  %6240 = phi float [ %5741, %5736 ], [ %5741, %5746 ], [ %6230, %6234 ]
  %6241 = phi float [ %5742, %5736 ], [ %5742, %5746 ], [ %6231, %6234 ]
  %6242 = call float @dx.op.unary.f32(i32 24, float %5069)  ; Sqrt(value)
  %6243 = call float @dx.op.unary.f32(i32 24, float %5070)  ; Sqrt(value)
  %6244 = call float @dx.op.unary.f32(i32 24, float %5071)  ; Sqrt(value)
  %6245 = fmul fast float %6242, %6239
  %6246 = fmul fast float %6243, %6240
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  br i1 %170, label %6249, label %6269

; <label>:6249                                    ; preds = %6235
  %6250 = fadd fast float %6241, %4401
  %6251 = fmul fast float %6250, %4402
  %6252 = fsub fast float 1.000000e+00, %4402
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6256 = fmul fast float %6255, %6253
  %6257 = fadd fast float %6256, %6251
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = fmul fast float %6259, %5402
  %6261 = fsub fast float %6257, %6260
  %6262 = fadd fast float %6246, %6245
  %6263 = fmul fast float %6248, %6262
  %6264 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6265 = fsub fast float %6261, %6264
  %6266 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6267 = fmul fast float %6265, %6266
  %6268 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  br label %6285

; <label>:6269                                    ; preds = %6235
  %6270 = fmul fast float %6244, %6241
  %6271 = fmul fast float %6248, %6245
  %6272 = fmul fast float %6248, %6246
  %6273 = fmul fast float %6270, %6248
  %6274 = add i32 %33, 356
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6274, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = and i32 %6276, 32
  %6278 = icmp eq i32 %6277, 0
  br i1 %6278, label %6285, label %6279

; <label>:6279                                    ; preds = %6269
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = fmul fast float %6281, 0x3FE99999A0000000
  %6283 = fadd fast float %6281, %6271
  %6284 = fadd fast float %6282, %6273
  br label %6285

; <label>:6285                                    ; preds = %6279, %6269, %6249
  %6286 = phi float [ %6263, %6249 ], [ %6283, %6279 ], [ %6271, %6269 ]
  %6287 = phi float [ %6268, %6249 ], [ %6272, %6279 ], [ %6272, %6269 ]
  %6288 = phi float [ 1.000000e+00, %6249 ], [ %6284, %6279 ], [ %6273, %6269 ]
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = fmul fast float %6290, %6237
  %6292 = fmul fast float %6290, %6238
  %6293 = fadd fast float %6237, %6236
  %6294 = select i1 %170, float %6293, float %6236
  %6295 = fmul float %6294, %6290
  %6296 = select i1 %170, float 0.000000e+00, float %6291
  %6297 = select i1 %170, float 0.000000e+00, float %6292
  %6298 = fmul fast float %6286, %6242
  %6299 = fmul fast float %6287, %6243
  %6300 = fmul fast float %6288, %6244
  %6301 = fadd fast float %6295, %6298
  %6302 = fadd fast float %6296, %6299
  %6303 = fadd fast float %6297, %6300
  %6304 = select i1 %170, float %6287, float %6302
  %6305 = select i1 %170, float %6288, float %6303
  %6306 = call float @dx.op.binary.f32(i32 36, float %6301, float 3.225500e+04)  ; FMin(a,b)
  %6307 = call float @dx.op.binary.f32(i32 36, float %6304, float 3.225500e+04)  ; FMin(a,b)
  %6308 = call float @dx.op.binary.f32(i32 36, float %6305, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6306)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6307)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

