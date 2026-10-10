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
; shader hash: 8b45d59ae161cbb850465d72663b03cd
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
  %353 = add i32 %33, 504
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
  br i1 %406, label %976, label %407

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
  %534 = add i32 %33, 456
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
  %854 = and i32 %853, 1024
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %886, label %856

; <label>:856                                     ; preds = %848
  %857 = add i32 %33, 152
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F70101020000000
  %863 = lshr i32 %859, 8
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = lshr i32 %859, 16
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = fmul fast float %862, %862
  %872 = fmul fast float %866, %866
  %873 = fmul fast float %870, %870
  %874 = add i32 %33, 472
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = fmul fast float %871, %880
  %884 = fmul fast float %872, %881
  %885 = fmul fast float %873, %882
  br label %886

; <label>:886                                     ; preds = %856, %848
  %887 = phi float [ %883, %856 ], [ 0.000000e+00, %848 ]
  %888 = phi float [ %884, %856 ], [ 0.000000e+00, %848 ]
  %889 = phi float [ %885, %856 ], [ 0.000000e+00, %848 ]
  %890 = fcmp fast ogt float %887, 0.000000e+00
  %891 = fcmp fast ogt float %888, 0.000000e+00
  %892 = fcmp fast ogt float %889, 0.000000e+00
  %893 = call float @dx.op.unary.f32(i32 23, float %887)  ; Log(value)
  %894 = call float @dx.op.unary.f32(i32 23, float %888)  ; Log(value)
  %895 = call float @dx.op.unary.f32(i32 23, float %889)  ; Log(value)
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 7
  %899 = and i32 %898, 32752
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = fmul fast float %893, 0xBFE62E4300000000
  %902 = fmul fast float %901, %900
  %903 = fmul fast float %894, 0xBFE62E4300000000
  %904 = fmul fast float %903, %900
  %905 = fmul fast float %895, 0xBFE62E4300000000
  %906 = fmul fast float %905, %900
  %907 = select i1 %890, float %902, float 1.270000e+02
  %908 = select i1 %891, float %904, float 1.270000e+02
  %909 = select i1 %892, float %906, float 1.270000e+02
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = and i32 %911, 10240
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %958, label %914

; <label>:914                                     ; preds = %886
  %915 = add i32 %33, 488
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 1
  %922 = extractvalue %dx.types.ResRet.f32 %920, 3
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 1048576
  %926 = icmp ne i32 %925, 0
  %927 = and i32 %924, 8192
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %944, label %929

; <label>:929                                     ; preds = %914
  %930 = extractvalue %dx.types.ResRet.f32 %920, 2
  %931 = select i1 %926, float %930, float %921
  %932 = extractvalue %dx.types.ResRet.f32 %920, 0
  %933 = select i1 %926, float %932, float %921
  %934 = add i32 %33, 96
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3F80101020000000
  %941 = fmul fast float %940, %933
  %942 = fmul fast float %940, %921
  %943 = fmul fast float %940, %931
  br label %944

; <label>:944                                     ; preds = %929, %914
  %945 = phi float [ %941, %929 ], [ 0.000000e+00, %914 ]
  %946 = phi float [ %942, %929 ], [ 0.000000e+00, %914 ]
  %947 = phi float [ %943, %929 ], [ 0.000000e+00, %914 ]
  %948 = and i32 %924, 2048
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %958, label %950

; <label>:950                                     ; preds = %944
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = shl i32 %952, 4
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = fmul fast float %955, %922
  %957 = call float @dx.op.binary.f32(i32 35, float %956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %958

; <label>:958                                     ; preds = %950, %944, %886
  %959 = phi float [ %945, %950 ], [ %945, %944 ], [ 0.000000e+00, %886 ]
  %960 = phi float [ %946, %950 ], [ %946, %944 ], [ 0.000000e+00, %886 ]
  %961 = phi float [ %947, %950 ], [ %947, %944 ], [ 0.000000e+00, %886 ]
  %962 = phi float [ %957, %950 ], [ 0x3F70101020000000, %944 ], [ 0x3F70101020000000, %886 ]
  %963 = add i32 %33, 96
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = lshr i32 %965, 8
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = fmul fast float %970, %971
  %973 = fadd fast float %972, %967
  %974 = fmul fast float %973, 0x3F70101020000000
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  br label %976

; <label>:976                                     ; preds = %958, %392
  %977 = phi float [ 0.000000e+00, %392 ], [ %802, %958 ]
  %978 = phi float [ 0.000000e+00, %392 ], [ %803, %958 ]
  %979 = phi float [ 0.000000e+00, %392 ], [ %721, %958 ]
  %980 = phi float [ 0.000000e+00, %392 ], [ %722, %958 ]
  %981 = phi float [ 0.000000e+00, %392 ], [ %723, %958 ]
  %982 = phi float [ 0.000000e+00, %392 ], [ %849, %958 ]
  %983 = phi float [ 0.000000e+00, %392 ], [ %850, %958 ]
  %984 = phi float [ 0.000000e+00, %392 ], [ %851, %958 ]
  %985 = phi float [ 0.000000e+00, %392 ], [ %907, %958 ]
  %986 = phi float [ 0.000000e+00, %392 ], [ %908, %958 ]
  %987 = phi float [ 0.000000e+00, %392 ], [ %909, %958 ]
  %988 = phi float [ 0.000000e+00, %392 ], [ %959, %958 ]
  %989 = phi float [ 0.000000e+00, %392 ], [ %960, %958 ]
  %990 = phi float [ 0.000000e+00, %392 ], [ %961, %958 ]
  %991 = phi float [ 0.000000e+00, %392 ], [ %707, %958 ]
  %992 = phi float [ 0.000000e+00, %392 ], [ 1.000000e+00, %958 ]
  %993 = phi float [ 0.000000e+00, %392 ], [ %801, %958 ]
  %994 = phi float [ 0.000000e+00, %392 ], [ %804, %958 ]
  %995 = phi float [ 0.000000e+00, %392 ], [ %962, %958 ]
  %996 = phi float [ 0.000000e+00, %392 ], [ %975, %958 ]
  br i1 %343, label %2034, label %997

; <label>:997                                     ; preds = %976
  %998 = icmp ult i32 %398, 2
  %999 = add i32 %33, 40
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %33, 44
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = or i32 %1004, %1001
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %2034, label %1007

; <label>:1007                                    ; preds = %997
  %1008 = and i32 %1001, 262144
  %1009 = icmp ne i32 %1008, 0
  %1010 = select i1 %1009, float %36, float 1.000000e+00
  %1011 = select i1 %1009, float %37, float 0.000000e+00
  %1012 = select i1 %1009, float %38, float 0.000000e+00
  %1013 = select i1 %1009, float %39, float 1.000000e+00
  %1014 = select i1 %1009, float %40, float %61
  %1015 = select i1 %1009, float %41, float %62
  %1016 = add i32 %33, 300
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = lshr i32 %1018, 16
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = fmul fast float %1020, 0x3F50624DE0000000
  %1022 = add i32 %33, 104
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = and i32 %1025, 255
  %1027 = lshr i32 %1024, 24
  %1028 = add i32 %33, 308
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 65535
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %1030, 16
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = add i32 %33, 48
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = lshr i32 %1037, 22
  %1039 = shl nuw nsw i32 %1038, 5
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = shl i32 %1037, 4
  %1042 = and i32 %1041, 32752
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = lshr i32 %1037, 7
  %1045 = and i32 %1044, 32752
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1049 = fmul fast float %1048, 1.000000e+03
  %1050 = fmul fast float %253, %1049
  %1051 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1052 = fadd fast float %1051, %243
  %1053 = fmul fast float %254, %1049
  %1054 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1055 = fadd fast float %1054, %245
  %1056 = fmul fast float %1021, %1049
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = fmul fast float %1057, 0x401921FB60000000
  %1059 = fadd fast float %1058, %1040
  %1060 = call float @dx.op.unary.f32(i32 13, float %1059)  ; Sin(value)
  %1061 = call float @dx.op.unary.f32(i32 12, float %1059)  ; Cos(value)
  %1062 = fsub fast float -0.000000e+00, %1060
  %1063 = fadd fast float %1014, -5.000000e-01
  %1064 = fadd fast float %1015, -5.000000e-01
  %1065 = fmul fast float %1032, %1063
  %1066 = fmul fast float %1034, %1064
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fadd fast float %1066, 5.000000e-01
  %1069 = fmul fast float %1043, %1067
  %1070 = fmul fast float %1046, %1068
  %1071 = fmul fast float %1061, %1069
  %1072 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1070, float %1071)  ; FMad(a,b,c)
  %1073 = fmul fast float %1060, %1069
  %1074 = call float @dx.op.tertiary.f32(i32 46, float %1061, float %1070, float %1073)  ; FMad(a,b,c)
  %1075 = fadd fast float %1052, %1072
  %1076 = fadd fast float %1055, %1074
  %1077 = icmp ugt i32 %1026, 1
  %1078 = icmp ugt i32 %1024, 33554431
  %1079 = or i1 %1078, %1077
  br i1 %1079, label %1080, label %1105

; <label>:1080                                    ; preds = %1007
  %1081 = add i32 %33, 244
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = lshr i32 %1083, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1048, %1085
  %1087 = call float @dx.op.unary.f32(i32 22, float %1086)  ; Frc(value)
  %1088 = mul nuw nsw i32 %1026, %1027
  %1089 = uitofp i32 %1088 to float
  %1090 = fmul fast float %1087, %1089
  %1091 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1092 = fptoui float %1091 to i32
  %1093 = urem i32 %1092, %1026
  %1094 = udiv i32 %1092, %1027
  %1095 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1096 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1097 = uitofp i32 %1093 to float
  %1098 = uitofp i32 %1094 to float
  %1099 = fadd fast float %1095, %1097
  %1100 = fadd fast float %1096, %1098
  %1101 = uitofp i32 %1026 to float
  %1102 = uitofp i32 %1027 to float
  %1103 = fdiv fast float %1099, %1101
  %1104 = fdiv fast float %1100, %1102
  br label %1105

; <label>:1105                                    ; preds = %1080, %1007
  %1106 = phi float [ %1103, %1080 ], [ %1075, %1007 ]
  %1107 = phi float [ %1104, %1080 ], [ %1076, %1007 ]
  %1108 = and i32 %1001, 16777216
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1219, label %1110

; <label>:1110                                    ; preds = %1105
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1115 = fadd fast float %1112, %128
  %1116 = fadd fast float %1113, %129
  %1117 = fadd fast float %1114, %130
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = icmp eq i32 %34, 65535
  br i1 %1121, label %1216, label %1122

; <label>:1122                                    ; preds = %1110
  %1123 = lshr i32 %34, 1
  %1124 = shl i32 %1123, 2
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %34, 1
  %1128 = icmp ne i32 %1127, 0
  %1129 = lshr i32 %1126, 16
  %1130 = and i32 %1126, 65535
  %1131 = select i1 %1128, i32 %1129, i32 %1130
  %1132 = icmp eq i32 %1131, 65535
  br i1 %1132, label %1212, label %1133

; <label>:1133                                    ; preds = %1122
  %1134 = mul nuw nsw i32 %1131, 40
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = add nuw nsw i32 %1134, 12
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = add nuw nsw i32 %1134, 24
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = add nuw nsw i32 %1134, 36
  %1150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = fsub fast float %1115, %1136
  %1153 = fsub fast float %1116, %1137
  %1154 = fsub fast float %1117, %1138
  %1155 = fmul fast float %1151, %1152
  %1156 = fmul fast float %1151, %1153
  %1157 = fmul fast float %1151, %1154
  %1158 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1159 = call float @dx.op.unary.f32(i32 27, float %1156)  ; Round_ni(value)
  %1160 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = fadd fast float %1159, 5.000000e-01
  %1163 = fadd fast float %1160, 5.000000e-01
  %1164 = fmul fast float %1161, %1141
  %1165 = fmul fast float %1162, %1142
  %1166 = fmul fast float %1163, %1143
  %1167 = shl i32 %34, 2
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call float @dx.op.unary.f32(i32 22, float %1164)  ; Frc(value)
  %1173 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1174 = call float @dx.op.unary.f32(i32 22, float %1166)  ; Frc(value)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1171, %dx.types.Handle %30, float %1172, float %1173, float %1174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = fmul fast float %1176, 1.023000e+03
  %1180 = fmul fast float %1177, 1.023000e+03
  %1181 = fmul fast float %1178, 1.023000e+03
  %1182 = fadd fast float %1179, 5.000000e-01
  %1183 = fadd fast float %1180, 5.000000e-01
  %1184 = fadd fast float %1181, 5.000000e-01
  %1185 = call float @dx.op.unary.f32(i32 27, float %1182)  ; Round_ni(value)
  %1186 = call float @dx.op.unary.f32(i32 27, float %1183)  ; Round_ni(value)
  %1187 = call float @dx.op.unary.f32(i32 27, float %1184)  ; Round_ni(value)
  %1188 = fsub fast float %1155, %1158
  %1189 = fsub fast float %1156, %1159
  %1190 = fsub fast float %1157, %1160
  %1191 = fmul fast float %1188, 7.500000e-01
  %1192 = fmul fast float %1189, 7.500000e-01
  %1193 = fmul fast float %1190, 7.500000e-01
  %1194 = fadd fast float %1158, 1.250000e-01
  %1195 = fadd fast float %1194, %1191
  %1196 = fadd fast float %1195, %1185
  %1197 = fadd fast float %1159, 1.250000e-01
  %1198 = fadd fast float %1197, %1192
  %1199 = fadd fast float %1198, %1186
  %1200 = fadd fast float %1160, 1.250000e-01
  %1201 = fadd fast float %1200, %1193
  %1202 = fadd fast float %1201, %1187
  %1203 = fmul fast float %1196, %1146
  %1204 = fmul fast float %1199, %1147
  %1205 = fmul fast float %1202, %1148
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1207, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1209, %dx.types.Handle %28, float %1203, float %1204, float %1205, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  br label %1212

; <label>:1212                                    ; preds = %1133, %1122
  %1213 = phi float [ %1211, %1133 ], [ -1.000000e+00, %1122 ]
  %1214 = fadd fast float %1213, %1120
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  br label %1216

; <label>:1216                                    ; preds = %1212, %1110
  %1217 = phi float [ %1215, %1212 ], [ %1120, %1110 ]
  %1218 = fmul fast float %1217, %395
  br label %1219

; <label>:1219                                    ; preds = %1216, %1105
  %1220 = phi float [ %1218, %1216 ], [ %395, %1105 ]
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 256
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1271, label %1225

; <label>:1225                                    ; preds = %1219
  %1226 = add i32 %33, 444
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = add i32 %1228, 0
  %1230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1230, %dx.types.Handle %70, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = add i32 %33, 116
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = shl i32 %1235, 4
  %1237 = and i32 %1236, 32752
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = lshr i32 %1235, 7
  %1240 = and i32 %1239, 32752
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = fsub fast float 1.000000e+00, %1220
  %1243 = call float @dx.op.binary.f32(i32 35, float %1242, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1244 = bitcast float %1220 to i32
  %1245 = sitofp i32 %1244 to float
  %1246 = fadd fast float %1245, 0xC1CFBF8940000000
  %1247 = fmul fast float %1241, %1246
  %1248 = fadd fast float %1247, 0x41CFBF8940000000
  %1249 = fptosi float %1248 to i32
  %1250 = bitcast i32 %1249 to float
  %1251 = bitcast float %1243 to i32
  %1252 = sitofp i32 %1251 to float
  %1253 = fadd fast float %1252, 0xC1CFBF8940000000
  %1254 = fmul fast float %1253, %1241
  %1255 = fadd fast float %1254, 0x41CFBF8940000000
  %1256 = fptosi float %1255 to i32
  %1257 = bitcast i32 %1256 to float
  %1258 = fmul fast float %1250, %1238
  %1259 = fmul fast float %1257, %1238
  %1260 = fsub fast float %1243, %1258
  %1261 = fadd fast float %1259, %1243
  %1262 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1264 = fsub fast float %1232, %1262
  %1265 = fsub fast float %1263, %1262
  %1266 = bitcast float %1265 to i32
  %1267 = sub nsw i32 2129859010, %1266
  %1268 = bitcast i32 %1267 to float
  %1269 = fmul fast float %1268, %1264
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  br label %1271

; <label>:1271                                    ; preds = %1225, %1219
  %1272 = phi float [ %1270, %1225 ], [ %1220, %1219 ]
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 128
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1293, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = add i32 %33, 428
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %1280, 0
  %1282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1282, %dx.types.Handle %70, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 524288
  %1288 = icmp ne i32 %1287, 0
  %1289 = fcmp fast ogt float %1284, 0x3FE0101020000000
  %1290 = select i1 %1289, float 1.000000e+00, float 0.000000e+00
  %1291 = select i1 %1288, float %1290, float %1284
  %1292 = fmul fast float %1291, %1272
  br label %1293

; <label>:1293                                    ; preds = %1277, %1271
  %1294 = phi float [ %1292, %1277 ], [ %1272, %1271 ]
  %1295 = fcmp fast ult float %1294, 0x3F70101020000000
  br i1 %1295, label %2034, label %1296

; <label>:1296                                    ; preds = %1293
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 16
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1499, label %1301

; <label>:1301                                    ; preds = %1296
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = add i32 %33, 380
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1308, %dx.types.Handle %69, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = extractvalue %dx.types.ResRet.f32 %1309, 3
  %1314 = and i32 %1303, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = lshr i32 %1303, 8
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1313, %1315
  %1320 = fadd fast float %1319, %1318
  %1321 = fmul fast float %1320, 0x3F70101000000000
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 512
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1334, label %1326

; <label>:1326                                    ; preds = %1301
  %1327 = add i32 %33, 460
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = add i32 %1329, 0
  %1331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1331, %dx.types.Handle %70, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  br label %1334

; <label>:1334                                    ; preds = %1326, %1301
  %1335 = phi float [ %1333, %1326 ], [ 1.000000e+00, %1301 ]
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = and i32 %1337, 33554432
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1446, label %1340

; <label>:1340                                    ; preds = %1334
  %1341 = add i32 %33, 240
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 65535
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = lshr i32 %1343, 16
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = add i32 %33, 244
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 65535
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = lshr i32 %1354, 24
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1356, 0x3F70101020000000
  %1358 = and i32 %1354, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = lshr i32 %1354, 8
  %1362 = and i32 %1361, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = lshr i32 %1354, 16
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101020000000
  %1369 = add i32 %33, 236
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = lshr i32 %1371, 24
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1373, 0x3F70101020000000
  %1375 = and i32 %1371, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1376, 0x3F70101020000000
  %1378 = lshr i32 %1371, 8
  %1379 = and i32 %1378, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = lshr i32 %1371, 16
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = bitcast float %1310 to i32
  %1387 = ashr i32 %1386, 1
  %1388 = sub nsw i32 1597463174, %1387
  %1389 = bitcast i32 %1388 to float
  %1390 = fmul fast float %1310, 5.000000e-01
  %1391 = fmul fast float %1389, %1389
  %1392 = fmul fast float %1391, %1390
  %1393 = fsub fast float 1.500000e+00, %1392
  %1394 = fmul fast float %1389, %1310
  %1395 = fmul fast float %1394, %1393
  %1396 = bitcast float %1311 to i32
  %1397 = ashr i32 %1396, 1
  %1398 = sub nsw i32 1597463174, %1397
  %1399 = bitcast i32 %1398 to float
  %1400 = fmul fast float %1311, 5.000000e-01
  %1401 = fmul fast float %1399, %1399
  %1402 = fmul fast float %1401, %1400
  %1403 = fsub fast float 1.500000e+00, %1402
  %1404 = fmul fast float %1399, %1311
  %1405 = fmul fast float %1404, %1403
  %1406 = bitcast float %1312 to i32
  %1407 = ashr i32 %1406, 1
  %1408 = sub nsw i32 1597463174, %1407
  %1409 = bitcast i32 %1408 to float
  %1410 = fmul fast float %1312, 5.000000e-01
  %1411 = fmul fast float %1409, %1409
  %1412 = fmul fast float %1411, %1410
  %1413 = fsub fast float 1.500000e+00, %1412
  %1414 = fmul fast float %1409, %1312
  %1415 = fmul fast float %1414, %1413
  %1416 = fsub fast float %1395, %1377
  %1417 = fsub fast float %1405, %1381
  %1418 = fsub fast float %1415, %1385
  %1419 = fmul fast float %1416, %1345
  %1420 = fmul fast float %1417, %1347
  %1421 = fmul fast float %1418, %1352
  %1422 = fadd fast float %1419, %1360
  %1423 = fadd fast float %1420, %1364
  %1424 = fadd fast float %1421, %1368
  %1425 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1426 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1427 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1428 = fmul fast float %1425, %1425
  %1429 = fmul fast float %1426, %1426
  %1430 = fmul fast float %1427, %1427
  %1431 = fsub fast float %1428, %1310
  %1432 = fsub fast float %1429, %1311
  %1433 = fsub fast float %1430, %1312
  %1434 = fmul fast float %1431, %1335
  %1435 = fmul fast float %1432, %1335
  %1436 = fmul fast float %1433, %1335
  %1437 = fadd fast float %1434, %1310
  %1438 = fadd fast float %1435, %1311
  %1439 = fadd fast float %1436, %1312
  %1440 = fadd fast float %1357, %1321
  %1441 = fsub fast float %1440, %1374
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = fsub fast float %1442, %1321
  %1444 = fmul fast float %1443, %1335
  %1445 = fadd fast float %1444, %1321
  br label %1499

; <label>:1446                                    ; preds = %1334
  %1447 = and i32 %1337, 134217728
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1483, label %1449

; <label>:1449                                    ; preds = %1446
  %1450 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1451 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1452 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1453 = fadd fast float %1450, -5.000000e-01
  %1454 = fadd fast float %1451, -5.000000e-01
  %1455 = fadd fast float %1452, -5.000000e-01
  %1456 = fmul fast float %1453, %1335
  %1457 = fmul fast float %1454, %1335
  %1458 = fmul fast float %1455, %1335
  %1459 = fadd fast float %1456, 5.000000e-01
  %1460 = fadd fast float %1457, 5.000000e-01
  %1461 = fadd fast float %1458, 5.000000e-01
  %1462 = call float @dx.op.unary.f32(i32 24, float %1310)  ; Sqrt(value)
  %1463 = call float @dx.op.unary.f32(i32 24, float %1311)  ; Sqrt(value)
  %1464 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  %1465 = fmul fast float %1459, 2.000000e+00
  %1466 = fsub fast float 1.000000e+00, %1465
  %1467 = fmul fast float %1466, %1462
  %1468 = fadd fast float %1467, %1465
  %1469 = fmul fast float %1468, %1462
  %1470 = fmul fast float %1460, 2.000000e+00
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1471, %1463
  %1473 = fadd fast float %1472, %1470
  %1474 = fmul fast float %1473, %1463
  %1475 = fmul fast float %1461, 2.000000e+00
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = fmul fast float %1476, %1464
  %1478 = fadd fast float %1477, %1475
  %1479 = fmul fast float %1478, %1464
  %1480 = fmul fast float %1469, %1469
  %1481 = fmul fast float %1474, %1474
  %1482 = fmul fast float %1479, %1479
  br label %1499

; <label>:1483                                    ; preds = %1446
  %1484 = fmul fast float %230, %230
  %1485 = fmul fast float %234, %234
  %1486 = fmul fast float %238, %238
  %1487 = fadd fast float %1484, -1.000000e+00
  %1488 = fadd fast float %1485, -1.000000e+00
  %1489 = fadd fast float %1486, -1.000000e+00
  %1490 = fmul fast float %1335, %1487
  %1491 = fmul fast float %1335, %1488
  %1492 = fmul fast float %1335, %1489
  %1493 = fadd fast float %1490, 1.000000e+00
  %1494 = fadd fast float %1491, 1.000000e+00
  %1495 = fadd fast float %1492, 1.000000e+00
  %1496 = fmul fast float %1493, %1310
  %1497 = fmul fast float %1494, %1311
  %1498 = fmul fast float %1495, %1312
  br label %1499

; <label>:1499                                    ; preds = %1483, %1449, %1340, %1296
  %1500 = phi float [ %1445, %1340 ], [ %1321, %1449 ], [ %1321, %1483 ], [ 0x3FA23C0BE0000000, %1296 ]
  %1501 = phi float [ %1437, %1340 ], [ %1480, %1449 ], [ %1496, %1483 ], [ 1.000000e+00, %1296 ]
  %1502 = phi float [ %1438, %1340 ], [ %1481, %1449 ], [ %1497, %1483 ], [ 1.000000e+00, %1296 ]
  %1503 = phi float [ %1439, %1340 ], [ %1482, %1449 ], [ %1498, %1483 ], [ 1.000000e+00, %1296 ]
  %1504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1505 = extractvalue %dx.types.CBufRet.i32 %1504, 1
  %1506 = and i32 %1505, 1
  %1507 = icmp ne i32 %1506, 0
  %1508 = add i32 %33, 356
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 32
  %1512 = icmp ne i32 %1511, 0
  %1513 = and i1 %1507, %1512
  %1514 = select i1 %1513, float 1.000000e+00, float %1501
  %1515 = select i1 %1513, float 0x3FD3333340000000, float %1502
  %1516 = select i1 %1513, float 0x3FD3333340000000, float %1503
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 32
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1593, label %1521

; <label>:1521                                    ; preds = %1499
  %1522 = add i32 %33, 108
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %33, 396
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = add i32 %1527, 0
  %1529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1529, %dx.types.Handle %69, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = and i32 %1524, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = lshr i32 %1524, 8
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = lshr i32 %1524, 16
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101000000000
  %1544 = fmul fast float %1531, %1536
  %1545 = fadd fast float %1544, %1539
  %1546 = fmul fast float %1545, 0x3F70101000000000
  %1547 = fadd fast float %1532, -5.000000e-01
  %1548 = fadd fast float %1534, -5.000000e-01
  %1549 = fmul fast float %1547, %1543
  %1550 = fmul fast float %1548, %1543
  %1551 = fadd fast float %1549, 5.000000e-01
  %1552 = fadd fast float %1550, 5.000000e-01
  %1553 = fmul fast float %1551, 2.000000e+00
  %1554 = fadd fast float %1553, -1.000000e+00
  %1555 = fmul fast float %1552, 2.000000e+00
  %1556 = fadd fast float %1555, -1.000000e+00
  %1557 = fadd fast float %1554, %1556
  %1558 = fmul fast float %1557, 5.000000e-01
  %1559 = fsub fast float %1554, %1556
  %1560 = fmul fast float %1559, 5.000000e-01
  %1561 = call float @dx.op.unary.f32(i32 6, float %1558)  ; FAbs(value)
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = call float @dx.op.unary.f32(i32 6, float %1560)  ; FAbs(value)
  %1564 = fsub fast float %1562, %1563
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1558, float %1560, float %1564, float %1558, float %1560, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = call float @dx.op.unary.f32(i32 25, float %1565)  ; Rsqrt(value)
  %1567 = fmul fast float %1558, %1566
  %1568 = fmul fast float %1560, %1566
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 67108864
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1589, label %1573

; <label>:1573                                    ; preds = %1521
  %1574 = add i32 %33, 296
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 65535
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = lshr i32 %1576, 16
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = fsub fast float %1546, %1584
  %1586 = fmul fast float %1585, %1578
  %1587 = fadd fast float %1586, %1582
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  br label %1589

; <label>:1589                                    ; preds = %1573, %1521
  %1590 = phi float [ %1588, %1573 ], [ %1546, %1521 ]
  %1591 = call float @dx.op.dot2.f32(i32 54, float %1567, float %1568, float %1010, float %1011)  ; Dot2(ax,ay,bx,by)
  %1592 = call float @dx.op.dot2.f32(i32 54, float %1567, float %1568, float %1012, float %1013)  ; Dot2(ax,ay,bx,by)
  br label %1593

; <label>:1593                                    ; preds = %1589, %1499
  %1594 = phi float [ %1590, %1589 ], [ 0x3FD6666660000000, %1499 ]
  %1595 = phi float [ %1591, %1589 ], [ 0.000000e+00, %1499 ]
  %1596 = phi float [ %1592, %1589 ], [ 0.000000e+00, %1499 ]
  %1597 = phi float [ %1533, %1589 ], [ 1.000000e+00, %1499 ]
  %1598 = add i32 %33, 176
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = lshr i32 %1600, 22
  %1602 = shl nuw nsw i32 %1601, 5
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 64
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1641, label %1608

; <label>:1608                                    ; preds = %1593
  %1609 = add i32 %33, 412
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = add i32 %1611, 0
  %1613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 131072
  %1617 = icmp eq i32 %1616, 0
  %1618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1613, %dx.types.Handle %69, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.ResRet.f32 %1618, 1
  %1621 = extractvalue %dx.types.ResRet.f32 %1618, 2
  %1622 = fmul fast float %1619, %218
  %1623 = fmul fast float %1620, %221
  %1624 = fmul fast float %1621, %224
  br i1 %1617, label %1631, label %1625

; <label>:1625                                    ; preds = %1608
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = fmul fast float %1627, %1622
  %1629 = fmul fast float %1627, %1623
  %1630 = fmul fast float %1627, %1624
  br label %1631

; <label>:1631                                    ; preds = %1625, %1608
  %1632 = phi float [ %1628, %1625 ], [ %1622, %1608 ]
  %1633 = phi float [ %1629, %1625 ], [ %1623, %1608 ]
  %1634 = phi float [ %1630, %1625 ], [ %1624, %1608 ]
  %1635 = fmul fast float %1632, %1603
  %1636 = select i1 %170, float %1635, float %1632
  %1637 = call float @dx.op.dot3.f32(i32 55, float %1636, float %1633, float %1634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1638 = select i1 %170, float 0.000000e+00, float %1632
  %1639 = select i1 %170, float %1637, float %1633
  %1640 = select i1 %170, float 0.000000e+00, float %1634
  br label %1641

; <label>:1641                                    ; preds = %1631, %1593
  %1642 = phi float [ %1638, %1631 ], [ 0.000000e+00, %1593 ]
  %1643 = phi float [ %1639, %1631 ], [ 0.000000e+00, %1593 ]
  %1644 = phi float [ %1640, %1631 ], [ 0.000000e+00, %1593 ]
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = and i32 %1646, 1024
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1679, label %1649

; <label>:1649                                    ; preds = %1641
  %1650 = add i32 %33, 168
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 255
  %1654 = uitofp i32 %1653 to float
  %1655 = fmul fast float %1654, 0x3F70101020000000
  %1656 = lshr i32 %1652, 8
  %1657 = and i32 %1656, 255
  %1658 = uitofp i32 %1657 to float
  %1659 = fmul fast float %1658, 0x3F70101020000000
  %1660 = lshr i32 %1652, 16
  %1661 = and i32 %1660, 255
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1662, 0x3F70101020000000
  %1664 = fmul fast float %1655, %1655
  %1665 = fmul fast float %1659, %1659
  %1666 = fmul fast float %1663, %1663
  %1667 = add i32 %33, 476
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %1669, 0
  %1671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1671, %dx.types.Handle %70, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.ResRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.ResRet.f32 %1672, 2
  %1676 = fmul fast float %1664, %1673
  %1677 = fmul fast float %1665, %1674
  %1678 = fmul fast float %1666, %1675
  br label %1679

; <label>:1679                                    ; preds = %1649, %1641
  %1680 = phi float [ %1676, %1649 ], [ 0.000000e+00, %1641 ]
  %1681 = phi float [ %1677, %1649 ], [ 0.000000e+00, %1641 ]
  %1682 = phi float [ %1678, %1649 ], [ 0.000000e+00, %1641 ]
  %1683 = fcmp fast ogt float %1680, 0.000000e+00
  %1684 = fcmp fast ogt float %1681, 0.000000e+00
  %1685 = fcmp fast ogt float %1682, 0.000000e+00
  %1686 = call float @dx.op.unary.f32(i32 23, float %1680)  ; Log(value)
  %1687 = call float @dx.op.unary.f32(i32 23, float %1681)  ; Log(value)
  %1688 = call float @dx.op.unary.f32(i32 23, float %1682)  ; Log(value)
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = lshr i32 %1690, 7
  %1692 = and i32 %1691, 32752
  %1693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1692)  ; LegacyF16ToF32(value)
  %1694 = fmul fast float %1686, 0xBFE62E4300000000
  %1695 = fmul fast float %1694, %1693
  %1696 = fmul fast float %1687, 0xBFE62E4300000000
  %1697 = fmul fast float %1696, %1693
  %1698 = fmul fast float %1688, 0xBFE62E4300000000
  %1699 = fmul fast float %1698, %1693
  %1700 = select i1 %1683, float %1695, float 1.270000e+02
  %1701 = select i1 %1684, float %1697, float 1.270000e+02
  %1702 = select i1 %1685, float %1699, float 1.270000e+02
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 10240
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1751, label %1707

; <label>:1707                                    ; preds = %1679
  %1708 = add i32 %33, 492
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = add i32 %1710, 0
  %1712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1712, %dx.types.Handle %70, float %1106, float %1107, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 3
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 1048576
  %1719 = icmp ne i32 %1718, 0
  %1720 = and i32 %1717, 8192
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1737, label %1722

; <label>:1722                                    ; preds = %1707
  %1723 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1724 = select i1 %1719, float %1723, float %1714
  %1725 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1726 = select i1 %1719, float %1725, float %1714
  %1727 = add i32 %33, 112
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = lshr i32 %1729, 16
  %1731 = and i32 %1730, 255
  %1732 = uitofp i32 %1731 to float
  %1733 = fmul fast float %1732, 0x3F80101020000000
  %1734 = fmul fast float %1733, %1726
  %1735 = fmul fast float %1733, %1714
  %1736 = fmul fast float %1733, %1724
  br label %1737

; <label>:1737                                    ; preds = %1722, %1707
  %1738 = phi float [ %1734, %1722 ], [ 0.000000e+00, %1707 ]
  %1739 = phi float [ %1735, %1722 ], [ 0.000000e+00, %1707 ]
  %1740 = phi float [ %1736, %1722 ], [ 0.000000e+00, %1707 ]
  %1741 = and i32 %1717, 2048
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1751, label %1743

; <label>:1743                                    ; preds = %1737
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = shl i32 %1745, 4
  %1747 = and i32 %1746, 32752
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = fmul fast float %1748, %1715
  %1750 = call float @dx.op.binary.f32(i32 35, float %1749, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1751

; <label>:1751                                    ; preds = %1743, %1737, %1679
  %1752 = phi float [ %1738, %1743 ], [ %1738, %1737 ], [ 0.000000e+00, %1679 ]
  %1753 = phi float [ %1739, %1743 ], [ %1739, %1737 ], [ 0.000000e+00, %1679 ]
  %1754 = phi float [ %1740, %1743 ], [ %1740, %1737 ], [ 0.000000e+00, %1679 ]
  %1755 = phi float [ %1750, %1743 ], [ 0x3F70101020000000, %1737 ], [ 0x3F70101020000000, %1679 ]
  %1756 = add i32 %33, 112
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 255
  %1760 = uitofp i32 %1759 to float
  %1761 = lshr i32 %1758, 8
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1514, float %1515, float %1516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = fmul fast float %1763, %1764
  %1766 = fadd fast float %1765, %1760
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  br i1 %998, label %1769, label %1804

; <label>:1769                                    ; preds = %1751
  %1770 = fmul fast float %1755, 2.000000e+00
  %1771 = fcmp fast olt float %1700, 1.270000e+02
  %1772 = fcmp fast olt float %1701, 1.270000e+02
  %1773 = fcmp fast olt float %1702, 1.270000e+02
  %1774 = fmul fast float %1700, 0xBFF7154760000000
  %1775 = fmul fast float %1774, %1770
  %1776 = fmul fast float %1701, 0xBFF7154760000000
  %1777 = fmul fast float %1776, %1770
  %1778 = fmul fast float %1702, 0xBFF7154760000000
  %1779 = fmul fast float %1778, %1770
  %1780 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1781 = call float @dx.op.unary.f32(i32 21, float %1777)  ; Exp(value)
  %1782 = call float @dx.op.unary.f32(i32 21, float %1779)  ; Exp(value)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1785 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1786 = fadd fast float %1783, -1.000000e+00
  %1787 = select i1 %1771, float %1786, float -1.000000e+00
  %1788 = fadd fast float %1784, -1.000000e+00
  %1789 = select i1 %1772, float %1788, float -1.000000e+00
  %1790 = fadd fast float %1785, -1.000000e+00
  %1791 = select i1 %1773, float %1790, float -1.000000e+00
  %1792 = fmul fast float %1787, %1294
  %1793 = fmul fast float %1789, %1294
  %1794 = fmul fast float %1791, %1294
  %1795 = fadd fast float %1792, 1.000000e+00
  %1796 = fadd fast float %1793, 1.000000e+00
  %1797 = fadd fast float %1794, 1.000000e+00
  %1798 = fmul fast float %1795, %979
  %1799 = fmul fast float %1796, %980
  %1800 = fmul fast float %1797, %981
  %1801 = fmul fast float %1795, %982
  %1802 = fmul fast float %1796, %983
  %1803 = fmul fast float %1797, %984
  br label %1804

; <label>:1804                                    ; preds = %1769, %1751
  %1805 = phi float [ %1798, %1769 ], [ %979, %1751 ]
  %1806 = phi float [ %1799, %1769 ], [ %980, %1751 ]
  %1807 = phi float [ %1800, %1769 ], [ %981, %1751 ]
  %1808 = phi float [ %1801, %1769 ], [ %982, %1751 ]
  %1809 = phi float [ %1802, %1769 ], [ %983, %1751 ]
  %1810 = phi float [ %1803, %1769 ], [ %984, %1751 ]
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 3
  %1814 = icmp eq i32 %1813, 3
  br i1 %1814, label %1893, label %1815

; <label>:1815                                    ; preds = %1804
  %1816 = and i32 %1812, 16
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %1294, float 0.000000e+00
  %1819 = icmp eq i32 %1813, 0
  br i1 %1819, label %1820, label %1848

; <label>:1820                                    ; preds = %1815
  %1821 = and i32 %1812, 64
  %1822 = icmp ne i32 %1821, 0
  %1823 = select i1 %1822, float %1294, float 0.000000e+00
  %1824 = fsub fast float %1514, %1805
  %1825 = fsub fast float %1515, %1806
  %1826 = fsub fast float %1516, %1807
  %1827 = fmul fast float %1818, %1824
  %1828 = fmul fast float %1818, %1825
  %1829 = fmul fast float %1818, %1826
  %1830 = fadd fast float %1827, %1805
  %1831 = fadd fast float %1828, %1806
  %1832 = fadd fast float %1829, %1807
  %1833 = fsub fast float %1500, %991
  %1834 = fmul fast float %1818, %1833
  %1835 = fadd fast float %1834, %991
  %1836 = fsub fast float %1642, %1808
  %1837 = fsub fast float %1643, %1809
  %1838 = fsub fast float %1644, %1810
  %1839 = fmul fast float %1823, %1836
  %1840 = fmul fast float %1823, %1837
  %1841 = fmul fast float %1823, %1838
  %1842 = fadd fast float %1839, %1808
  %1843 = fadd fast float %1840, %1809
  %1844 = fadd fast float %1841, %1810
  %1845 = fsub fast float %1768, %996
  %1846 = fmul fast float %1818, %1845
  %1847 = fadd fast float %1846, %996
  br label %1893

; <label>:1848                                    ; preds = %1815
  %1849 = icmp eq i32 %1813, 1
  br i1 %1849, label %1850, label %1863

; <label>:1850                                    ; preds = %1848
  %1851 = fadd fast float %1514, -1.000000e+00
  %1852 = fadd fast float %1515, -1.000000e+00
  %1853 = fadd fast float %1516, -1.000000e+00
  %1854 = fmul fast float %1818, %1851
  %1855 = fmul fast float %1818, %1852
  %1856 = fmul fast float %1818, %1853
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fadd fast float %1856, 1.000000e+00
  %1860 = fmul fast float %1857, %1805
  %1861 = fmul fast float %1858, %1806
  %1862 = fmul fast float %1859, %1807
  br label %1893

; <label>:1863                                    ; preds = %1848
  %1864 = icmp eq i32 %1813, 2
  br i1 %1864, label %1865, label %1893

; <label>:1865                                    ; preds = %1863
  %1866 = call float @dx.op.unary.f32(i32 24, float %1514)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1515)  ; Sqrt(value)
  %1868 = call float @dx.op.unary.f32(i32 24, float %1516)  ; Sqrt(value)
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fadd fast float %1868, -5.000000e-01
  %1872 = fmul fast float %1869, %1818
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1818
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = fmul fast float %1875, 2.000000e+00
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1879, %1805
  %1881 = fadd fast float %1880, %1878
  %1882 = fmul fast float %1881, %1805
  %1883 = fmul fast float %1876, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1806
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1806
  %1888 = fmul fast float %1877, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1807
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1807
  br label %1893

; <label>:1893                                    ; preds = %1865, %1863, %1850, %1820, %1804
  %1894 = phi float [ %1805, %1804 ], [ %1882, %1865 ], [ %1805, %1863 ], [ %1860, %1850 ], [ %1830, %1820 ]
  %1895 = phi float [ %1806, %1804 ], [ %1887, %1865 ], [ %1806, %1863 ], [ %1861, %1850 ], [ %1831, %1820 ]
  %1896 = phi float [ %1807, %1804 ], [ %1892, %1865 ], [ %1807, %1863 ], [ %1862, %1850 ], [ %1832, %1820 ]
  %1897 = phi float [ %1808, %1804 ], [ %1808, %1865 ], [ %1808, %1863 ], [ %1808, %1850 ], [ %1842, %1820 ]
  %1898 = phi float [ %1809, %1804 ], [ %1809, %1865 ], [ %1809, %1863 ], [ %1809, %1850 ], [ %1843, %1820 ]
  %1899 = phi float [ %1810, %1804 ], [ %1810, %1865 ], [ %1810, %1863 ], [ %1810, %1850 ], [ %1844, %1820 ]
  %1900 = phi float [ %991, %1804 ], [ %991, %1865 ], [ %991, %1863 ], [ %991, %1850 ], [ %1835, %1820 ]
  %1901 = phi float [ %996, %1804 ], [ %996, %1865 ], [ %996, %1863 ], [ %996, %1850 ], [ %1847, %1820 ]
  %1902 = and i32 %1812, 12
  %1903 = icmp eq i32 %1902, 12
  br i1 %1903, label %2034, label %1904

; <label>:1904                                    ; preds = %1893
  %1905 = and i32 %1812, 2097184
  %1906 = icmp eq i32 %1905, 2097184
  %1907 = select i1 %1906, float %1294, float 0.000000e+00
  %1908 = and i32 %1812, 4194336
  %1909 = icmp eq i32 %1908, 4194336
  %1910 = select i1 %1909, float %1294, float 0.000000e+00
  %1911 = and i32 %1812, 8388640
  %1912 = icmp eq i32 %1911, 8388640
  %1913 = select i1 %1912, float %1294, float 0.000000e+00
  %1914 = and i32 %1812, 1024
  %1915 = icmp ne i32 %1914, 0
  %1916 = select i1 %1915, float %1294, float 0.000000e+00
  %1917 = and i32 %1812, 2048
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %1294, float 0.000000e+00
  %1920 = and i32 %1812, 8192
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1294, float 0.000000e+00
  %1923 = icmp eq i32 %1902, 0
  br i1 %1923, label %1924, label %1958

; <label>:1924                                    ; preds = %1904
  %1925 = fsub fast float %1595, %977
  %1926 = fsub fast float %1596, %978
  %1927 = fmul fast float %1907, %1925
  %1928 = fmul fast float %1907, %1926
  %1929 = fadd fast float %1927, %977
  %1930 = fadd fast float %1928, %978
  %1931 = fsub fast float %1597, %994
  %1932 = fmul fast float %1910, %1931
  %1933 = fadd fast float %1932, %994
  %1934 = fsub fast float %1594, %993
  %1935 = fmul fast float %1913, %1934
  %1936 = fadd fast float %1935, %993
  %1937 = fsub fast float %1700, %985
  %1938 = fsub fast float %1701, %986
  %1939 = fsub fast float %1702, %987
  %1940 = fmul fast float %1916, %1937
  %1941 = fmul fast float %1916, %1938
  %1942 = fmul fast float %1916, %1939
  %1943 = fadd fast float %1940, %985
  %1944 = fadd fast float %1941, %986
  %1945 = fadd fast float %1942, %987
  %1946 = fsub fast float %1755, %995
  %1947 = fmul fast float %1919, %1946
  %1948 = fadd fast float %1947, %995
  %1949 = fsub fast float %1752, %988
  %1950 = fsub fast float %1753, %989
  %1951 = fsub fast float %1754, %990
  %1952 = fmul fast float %1922, %1949
  %1953 = fmul fast float %1922, %1950
  %1954 = fmul fast float %1922, %1951
  %1955 = fadd fast float %1952, %988
  %1956 = fadd fast float %1953, %989
  %1957 = fadd fast float %1954, %990
  br label %2034

; <label>:1958                                    ; preds = %1904
  %1959 = icmp eq i32 %1902, 4
  br i1 %1959, label %1960, label %2006

; <label>:1960                                    ; preds = %1958
  %1961 = fmul fast float %1907, %1595
  %1962 = fmul fast float %1907, %1596
  %1963 = fadd fast float %1961, %977
  %1964 = fadd fast float %1962, %978
  %1965 = call float @dx.op.binary.f32(i32 36, float %994, float %1597)  ; FMin(a,b)
  %1966 = fsub fast float %1965, %994
  %1967 = fmul fast float %1966, %1910
  %1968 = fadd fast float %1967, %994
  %1969 = fadd fast float %1594, %993
  %1970 = fmul fast float %1969, 0x3FF337FAE0000000
  %1971 = fmul fast float %993, %993
  %1972 = fmul fast float %1594, %1594
  %1973 = fadd fast float %1972, %1971
  %1974 = fmul fast float %1973, 0x3FE5152B00000000
  %1975 = fmul fast float %993, 0xBFCC1F85E0000000
  %1976 = fmul fast float %1975, %1594
  %1977 = fadd fast float %1976, 0xBFE1363700000000
  %1978 = fadd fast float %1977, %1970
  %1979 = fsub fast float %1978, %1974
  %1980 = fmul fast float %1969, 0x3FBA6F0D00000000
  %1981 = fmul fast float %1973, 0x3FD0432880000000
  %1982 = fmul fast float %993, 0xBFEF110800000000
  %1983 = fmul fast float %1982, %1594
  %1984 = fadd fast float %1983, 1.000000e+00
  %1985 = fsub fast float %1984, %1980
  %1986 = fadd fast float %1985, %1981
  %1987 = fdiv fast float %1979, %1986
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fsub fast float %1988, %993
  %1990 = fmul fast float %1989, %1913
  %1991 = fadd fast float %1990, %993
  %1992 = fmul fast float %1916, %1700
  %1993 = fmul fast float %1916, %1701
  %1994 = fmul fast float %1916, %1702
  %1995 = fadd fast float %1992, %985
  %1996 = fadd fast float %1993, %986
  %1997 = fadd fast float %1994, %987
  %1998 = fmul fast float %1919, %1755
  %1999 = fadd fast float %1998, %995
  %2000 = fmul fast float %1922, %1752
  %2001 = fmul fast float %1922, %1753
  %2002 = fmul fast float %1922, %1754
  %2003 = fadd fast float %2000, %988
  %2004 = fadd fast float %2001, %989
  %2005 = fadd fast float %2002, %990
  br label %2034

; <label>:2006                                    ; preds = %1958
  %2007 = icmp eq i32 %1902, 8
  br i1 %2007, label %2008, label %2034

; <label>:2008                                    ; preds = %2006
  %2009 = fmul fast float %1907, %1595
  %2010 = fmul fast float %1907, %1596
  %2011 = fadd fast float %2009, %977
  %2012 = fadd fast float %2010, %978
  %2013 = call float @dx.op.binary.f32(i32 36, float %994, float %1597)  ; FMin(a,b)
  %2014 = fsub fast float %2013, %994
  %2015 = fmul fast float %2014, %1910
  %2016 = fadd fast float %2015, %994
  %2017 = fsub fast float %1594, %993
  %2018 = fmul fast float %1913, %2017
  %2019 = fadd fast float %2018, %993
  %2020 = fmul fast float %1916, %1700
  %2021 = fmul fast float %1916, %1701
  %2022 = fmul fast float %1916, %1702
  %2023 = fadd fast float %2020, %985
  %2024 = fadd fast float %2021, %986
  %2025 = fadd fast float %2022, %987
  %2026 = fmul fast float %1919, %1755
  %2027 = fadd fast float %2026, %995
  %2028 = fmul fast float %1922, %1752
  %2029 = fmul fast float %1922, %1753
  %2030 = fmul fast float %1922, %1754
  %2031 = fadd fast float %2028, %988
  %2032 = fadd fast float %2029, %989
  %2033 = fadd fast float %2030, %990
  br label %2034

; <label>:2034                                    ; preds = %2008, %2006, %1960, %1924, %1893, %1293, %997, %976
  %2035 = phi float [ %977, %1893 ], [ %977, %1293 ], [ %977, %976 ], [ %2011, %2008 ], [ %977, %2006 ], [ %1963, %1960 ], [ %1929, %1924 ], [ %977, %997 ]
  %2036 = phi float [ %978, %1893 ], [ %978, %1293 ], [ %978, %976 ], [ %2012, %2008 ], [ %978, %2006 ], [ %1964, %1960 ], [ %1930, %1924 ], [ %978, %997 ]
  %2037 = phi float [ %1894, %1893 ], [ %979, %1293 ], [ %979, %976 ], [ %1894, %2008 ], [ %1894, %2006 ], [ %1894, %1960 ], [ %1894, %1924 ], [ %979, %997 ]
  %2038 = phi float [ %1895, %1893 ], [ %980, %1293 ], [ %980, %976 ], [ %1895, %2008 ], [ %1895, %2006 ], [ %1895, %1960 ], [ %1895, %1924 ], [ %980, %997 ]
  %2039 = phi float [ %1896, %1893 ], [ %981, %1293 ], [ %981, %976 ], [ %1896, %2008 ], [ %1896, %2006 ], [ %1896, %1960 ], [ %1896, %1924 ], [ %981, %997 ]
  %2040 = phi float [ %1897, %1893 ], [ %982, %1293 ], [ %982, %976 ], [ %1897, %2008 ], [ %1897, %2006 ], [ %1897, %1960 ], [ %1897, %1924 ], [ %982, %997 ]
  %2041 = phi float [ %1898, %1893 ], [ %983, %1293 ], [ %983, %976 ], [ %1898, %2008 ], [ %1898, %2006 ], [ %1898, %1960 ], [ %1898, %1924 ], [ %983, %997 ]
  %2042 = phi float [ %1899, %1893 ], [ %984, %1293 ], [ %984, %976 ], [ %1899, %2008 ], [ %1899, %2006 ], [ %1899, %1960 ], [ %1899, %1924 ], [ %984, %997 ]
  %2043 = phi float [ %985, %1893 ], [ %985, %1293 ], [ %985, %976 ], [ %2023, %2008 ], [ %985, %2006 ], [ %1995, %1960 ], [ %1943, %1924 ], [ %985, %997 ]
  %2044 = phi float [ %986, %1893 ], [ %986, %1293 ], [ %986, %976 ], [ %2024, %2008 ], [ %986, %2006 ], [ %1996, %1960 ], [ %1944, %1924 ], [ %986, %997 ]
  %2045 = phi float [ %987, %1893 ], [ %987, %1293 ], [ %987, %976 ], [ %2025, %2008 ], [ %987, %2006 ], [ %1997, %1960 ], [ %1945, %1924 ], [ %987, %997 ]
  %2046 = phi float [ %988, %1893 ], [ %988, %1293 ], [ %988, %976 ], [ %2031, %2008 ], [ %988, %2006 ], [ %2003, %1960 ], [ %1955, %1924 ], [ %988, %997 ]
  %2047 = phi float [ %989, %1893 ], [ %989, %1293 ], [ %989, %976 ], [ %2032, %2008 ], [ %989, %2006 ], [ %2004, %1960 ], [ %1956, %1924 ], [ %989, %997 ]
  %2048 = phi float [ %990, %1893 ], [ %990, %1293 ], [ %990, %976 ], [ %2033, %2008 ], [ %990, %2006 ], [ %2005, %1960 ], [ %1957, %1924 ], [ %990, %997 ]
  %2049 = phi float [ %1900, %1893 ], [ %991, %1293 ], [ %991, %976 ], [ %1900, %2008 ], [ %1900, %2006 ], [ %1900, %1960 ], [ %1900, %1924 ], [ %991, %997 ]
  %2050 = phi float [ %993, %1893 ], [ %993, %1293 ], [ %993, %976 ], [ %2019, %2008 ], [ %993, %2006 ], [ %1991, %1960 ], [ %1936, %1924 ], [ %993, %997 ]
  %2051 = phi float [ %994, %1893 ], [ %994, %1293 ], [ %994, %976 ], [ %2016, %2008 ], [ %994, %2006 ], [ %1968, %1960 ], [ %1933, %1924 ], [ %994, %997 ]
  %2052 = phi float [ %995, %1893 ], [ %995, %1293 ], [ %995, %976 ], [ %2027, %2008 ], [ %995, %2006 ], [ %1999, %1960 ], [ %1948, %1924 ], [ %995, %997 ]
  %2053 = phi float [ %1901, %1893 ], [ %996, %1293 ], [ %996, %976 ], [ %1901, %2008 ], [ %1901, %2006 ], [ %1901, %1960 ], [ %1901, %1924 ], [ %996, %997 ]
  br i1 %345, label %3091, label %2054

; <label>:2054                                    ; preds = %2034
  %2055 = icmp ult i32 %398, 3
  %2056 = add i32 %33, 56
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = add i32 %33, 60
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = or i32 %2061, %2058
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %3091, label %2064

; <label>:2064                                    ; preds = %2054
  %2065 = and i32 %2058, 262144
  %2066 = icmp ne i32 %2065, 0
  %2067 = select i1 %2066, float %36, float 1.000000e+00
  %2068 = select i1 %2066, float %37, float 0.000000e+00
  %2069 = select i1 %2066, float %38, float 0.000000e+00
  %2070 = select i1 %2066, float %39, float 1.000000e+00
  %2071 = select i1 %2066, float %40, float %61
  %2072 = select i1 %2066, float %41, float %62
  %2073 = add i32 %33, 316
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = fmul fast float %2077, 0x3F50624DE0000000
  %2079 = add i32 %33, 120
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 16
  %2083 = and i32 %2082, 255
  %2084 = lshr i32 %2081, 24
  %2085 = add i32 %33, 324
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 65535
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = lshr i32 %2087, 16
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = add i32 %33, 64
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = lshr i32 %2094, 22
  %2096 = shl nuw nsw i32 %2095, 5
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = shl i32 %2094, 4
  %2099 = and i32 %2098, 32752
  %2100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2099)  ; LegacyF16ToF32(value)
  %2101 = lshr i32 %2094, 7
  %2102 = and i32 %2101, 32752
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2106 = fmul fast float %2105, 1.000000e+03
  %2107 = fmul fast float %295, %2106
  %2108 = call float @dx.op.unary.f32(i32 22, float %2107)  ; Frc(value)
  %2109 = fadd fast float %2108, %285
  %2110 = fmul fast float %296, %2106
  %2111 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2112 = fadd fast float %2111, %287
  %2113 = fmul fast float %2078, %2106
  %2114 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2115 = fmul fast float %2114, 0x401921FB60000000
  %2116 = fadd fast float %2115, %2097
  %2117 = call float @dx.op.unary.f32(i32 13, float %2116)  ; Sin(value)
  %2118 = call float @dx.op.unary.f32(i32 12, float %2116)  ; Cos(value)
  %2119 = fsub fast float -0.000000e+00, %2117
  %2120 = fadd fast float %2071, -5.000000e-01
  %2121 = fadd fast float %2072, -5.000000e-01
  %2122 = fmul fast float %2089, %2120
  %2123 = fmul fast float %2091, %2121
  %2124 = fadd fast float %2122, 5.000000e-01
  %2125 = fadd fast float %2123, 5.000000e-01
  %2126 = fmul fast float %2100, %2124
  %2127 = fmul fast float %2103, %2125
  %2128 = fmul fast float %2118, %2126
  %2129 = call float @dx.op.tertiary.f32(i32 46, float %2119, float %2127, float %2128)  ; FMad(a,b,c)
  %2130 = fmul fast float %2117, %2126
  %2131 = call float @dx.op.tertiary.f32(i32 46, float %2118, float %2127, float %2130)  ; FMad(a,b,c)
  %2132 = fadd fast float %2109, %2129
  %2133 = fadd fast float %2112, %2131
  %2134 = icmp ugt i32 %2083, 1
  %2135 = icmp ugt i32 %2081, 33554431
  %2136 = or i1 %2135, %2134
  br i1 %2136, label %2137, label %2162

; <label>:2137                                    ; preds = %2064
  %2138 = add i32 %33, 260
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = lshr i32 %2140, 16
  %2142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2141)  ; LegacyF16ToF32(value)
  %2143 = fmul fast float %2105, %2142
  %2144 = call float @dx.op.unary.f32(i32 22, float %2143)  ; Frc(value)
  %2145 = mul nuw nsw i32 %2083, %2084
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2144, %2146
  %2148 = call float @dx.op.unary.f32(i32 27, float %2147)  ; Round_ni(value)
  %2149 = fptoui float %2148 to i32
  %2150 = urem i32 %2149, %2083
  %2151 = udiv i32 %2149, %2084
  %2152 = call float @dx.op.unary.f32(i32 22, float %2132)  ; Frc(value)
  %2153 = call float @dx.op.unary.f32(i32 22, float %2133)  ; Frc(value)
  %2154 = uitofp i32 %2150 to float
  %2155 = uitofp i32 %2151 to float
  %2156 = fadd fast float %2152, %2154
  %2157 = fadd fast float %2153, %2155
  %2158 = uitofp i32 %2083 to float
  %2159 = uitofp i32 %2084 to float
  %2160 = fdiv fast float %2156, %2158
  %2161 = fdiv fast float %2157, %2159
  br label %2162

; <label>:2162                                    ; preds = %2137, %2064
  %2163 = phi float [ %2160, %2137 ], [ %2132, %2064 ]
  %2164 = phi float [ %2161, %2137 ], [ %2133, %2064 ]
  %2165 = and i32 %2058, 16777216
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2276, label %2167

; <label>:2167                                    ; preds = %2162
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2172 = fadd fast float %2169, %128
  %2173 = fadd fast float %2170, %129
  %2174 = fadd fast float %2171, %130
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = icmp eq i32 %34, 65535
  br i1 %2178, label %2273, label %2179

; <label>:2179                                    ; preds = %2167
  %2180 = lshr i32 %34, 1
  %2181 = shl i32 %2180, 2
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %34, 1
  %2185 = icmp ne i32 %2184, 0
  %2186 = lshr i32 %2183, 16
  %2187 = and i32 %2183, 65535
  %2188 = select i1 %2185, i32 %2186, i32 %2187
  %2189 = icmp eq i32 %2188, 65535
  br i1 %2189, label %2269, label %2190

; <label>:2190                                    ; preds = %2179
  %2191 = mul nuw nsw i32 %2188, 40
  %2192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.ResRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.ResRet.f32 %2192, 2
  %2196 = add nuw nsw i32 %2191, 12
  %2197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.ResRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.ResRet.f32 %2197, 2
  %2201 = add nuw nsw i32 %2191, 24
  %2202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = extractvalue %dx.types.ResRet.f32 %2202, 1
  %2205 = extractvalue %dx.types.ResRet.f32 %2202, 2
  %2206 = add nuw nsw i32 %2191, 36
  %2207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = fsub fast float %2172, %2193
  %2210 = fsub fast float %2173, %2194
  %2211 = fsub fast float %2174, %2195
  %2212 = fmul fast float %2208, %2209
  %2213 = fmul fast float %2208, %2210
  %2214 = fmul fast float %2208, %2211
  %2215 = call float @dx.op.unary.f32(i32 27, float %2212)  ; Round_ni(value)
  %2216 = call float @dx.op.unary.f32(i32 27, float %2213)  ; Round_ni(value)
  %2217 = call float @dx.op.unary.f32(i32 27, float %2214)  ; Round_ni(value)
  %2218 = fadd fast float %2215, 5.000000e-01
  %2219 = fadd fast float %2216, 5.000000e-01
  %2220 = fadd fast float %2217, 5.000000e-01
  %2221 = fmul fast float %2218, %2198
  %2222 = fmul fast float %2219, %2199
  %2223 = fmul fast float %2220, %2200
  %2224 = shl i32 %34, 2
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2230 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2231 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2228, %dx.types.Handle %30, float %2229, float %2230, float %2231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = fmul fast float %2233, 1.023000e+03
  %2237 = fmul fast float %2234, 1.023000e+03
  %2238 = fmul fast float %2235, 1.023000e+03
  %2239 = fadd fast float %2236, 5.000000e-01
  %2240 = fadd fast float %2237, 5.000000e-01
  %2241 = fadd fast float %2238, 5.000000e-01
  %2242 = call float @dx.op.unary.f32(i32 27, float %2239)  ; Round_ni(value)
  %2243 = call float @dx.op.unary.f32(i32 27, float %2240)  ; Round_ni(value)
  %2244 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2245 = fsub fast float %2212, %2215
  %2246 = fsub fast float %2213, %2216
  %2247 = fsub fast float %2214, %2217
  %2248 = fmul fast float %2245, 7.500000e-01
  %2249 = fmul fast float %2246, 7.500000e-01
  %2250 = fmul fast float %2247, 7.500000e-01
  %2251 = fadd fast float %2215, 1.250000e-01
  %2252 = fadd fast float %2251, %2248
  %2253 = fadd fast float %2252, %2242
  %2254 = fadd fast float %2216, 1.250000e-01
  %2255 = fadd fast float %2254, %2249
  %2256 = fadd fast float %2255, %2243
  %2257 = fadd fast float %2217, 1.250000e-01
  %2258 = fadd fast float %2257, %2250
  %2259 = fadd fast float %2258, %2244
  %2260 = fmul fast float %2253, %2203
  %2261 = fmul fast float %2256, %2204
  %2262 = fmul fast float %2259, %2205
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2266, %dx.types.Handle %28, float %2260, float %2261, float %2262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  br label %2269

; <label>:2269                                    ; preds = %2190, %2179
  %2270 = phi float [ %2268, %2190 ], [ -1.000000e+00, %2179 ]
  %2271 = fadd fast float %2270, %2177
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  br label %2273

; <label>:2273                                    ; preds = %2269, %2167
  %2274 = phi float [ %2272, %2269 ], [ %2177, %2167 ]
  %2275 = fmul fast float %2274, %394
  br label %2276

; <label>:2276                                    ; preds = %2273, %2162
  %2277 = phi float [ %2275, %2273 ], [ %394, %2162 ]
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 256
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2328, label %2282

; <label>:2282                                    ; preds = %2276
  %2283 = add i32 %33, 448
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = add i32 %2285, 0
  %2287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2287, %dx.types.Handle %70, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = add i32 %33, 132
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = shl i32 %2292, 4
  %2294 = and i32 %2293, 32752
  %2295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2294)  ; LegacyF16ToF32(value)
  %2296 = lshr i32 %2292, 7
  %2297 = and i32 %2296, 32752
  %2298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2297)  ; LegacyF16ToF32(value)
  %2299 = fsub fast float 1.000000e+00, %2277
  %2300 = call float @dx.op.binary.f32(i32 35, float %2299, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2301 = bitcast float %2277 to i32
  %2302 = sitofp i32 %2301 to float
  %2303 = fadd fast float %2302, 0xC1CFBF8940000000
  %2304 = fmul fast float %2298, %2303
  %2305 = fadd fast float %2304, 0x41CFBF8940000000
  %2306 = fptosi float %2305 to i32
  %2307 = bitcast i32 %2306 to float
  %2308 = bitcast float %2300 to i32
  %2309 = sitofp i32 %2308 to float
  %2310 = fadd fast float %2309, 0xC1CFBF8940000000
  %2311 = fmul fast float %2310, %2298
  %2312 = fadd fast float %2311, 0x41CFBF8940000000
  %2313 = fptosi float %2312 to i32
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2307, %2295
  %2316 = fmul fast float %2314, %2295
  %2317 = fsub fast float %2300, %2315
  %2318 = fadd fast float %2316, %2300
  %2319 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  %2320 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2321 = fsub fast float %2289, %2319
  %2322 = fsub fast float %2320, %2319
  %2323 = bitcast float %2322 to i32
  %2324 = sub nsw i32 2129859010, %2323
  %2325 = bitcast i32 %2324 to float
  %2326 = fmul fast float %2325, %2321
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  br label %2328

; <label>:2328                                    ; preds = %2282, %2276
  %2329 = phi float [ %2327, %2282 ], [ %2277, %2276 ]
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 128
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2350, label %2334

; <label>:2334                                    ; preds = %2328
  %2335 = add i32 %33, 432
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = add i32 %2337, 0
  %2339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2340 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2339, %dx.types.Handle %70, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 524288
  %2345 = icmp ne i32 %2344, 0
  %2346 = fcmp fast ogt float %2341, 0x3FE0101020000000
  %2347 = select i1 %2346, float 1.000000e+00, float 0.000000e+00
  %2348 = select i1 %2345, float %2347, float %2341
  %2349 = fmul fast float %2348, %2329
  br label %2350

; <label>:2350                                    ; preds = %2334, %2328
  %2351 = phi float [ %2349, %2334 ], [ %2329, %2328 ]
  %2352 = fcmp fast ult float %2351, 0x3F70101020000000
  br i1 %2352, label %3091, label %2353

; <label>:2353                                    ; preds = %2350
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 16
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2556, label %2358

; <label>:2358                                    ; preds = %2353
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %33, 384
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = add i32 %2363, 0
  %2365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2365, %dx.types.Handle %69, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = and i32 %2360, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = lshr i32 %2360, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2370, %2372
  %2377 = fadd fast float %2376, %2375
  %2378 = fmul fast float %2377, 0x3F70101000000000
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 512
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2391, label %2383

; <label>:2383                                    ; preds = %2358
  %2384 = add i32 %33, 464
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = add i32 %2386, 0
  %2388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2388, %dx.types.Handle %70, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  br label %2391

; <label>:2391                                    ; preds = %2383, %2358
  %2392 = phi float [ %2390, %2383 ], [ 1.000000e+00, %2358 ]
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 33554432
  %2396 = icmp eq i32 %2395, 0
  br i1 %2396, label %2503, label %2397

; <label>:2397                                    ; preds = %2391
  %2398 = add i32 %33, 256
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 65535
  %2402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2401)  ; LegacyF16ToF32(value)
  %2403 = lshr i32 %2400, 16
  %2404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2403)  ; LegacyF16ToF32(value)
  %2405 = add i32 %33, 260
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 65535
  %2409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2408)  ; LegacyF16ToF32(value)
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = lshr i32 %2411, 24
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = and i32 %2411, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = lshr i32 %2411, 8
  %2419 = and i32 %2418, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = fmul fast float %2420, 0x3F70101020000000
  %2422 = lshr i32 %2411, 16
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101020000000
  %2426 = add i32 %33, 252
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2426, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = lshr i32 %2428, 24
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = and i32 %2428, 255
  %2433 = uitofp i32 %2432 to float
  %2434 = fmul fast float %2433, 0x3F70101020000000
  %2435 = lshr i32 %2428, 8
  %2436 = and i32 %2435, 255
  %2437 = uitofp i32 %2436 to float
  %2438 = fmul fast float %2437, 0x3F70101020000000
  %2439 = lshr i32 %2428, 16
  %2440 = and i32 %2439, 255
  %2441 = uitofp i32 %2440 to float
  %2442 = fmul fast float %2441, 0x3F70101020000000
  %2443 = bitcast float %2367 to i32
  %2444 = ashr i32 %2443, 1
  %2445 = sub nsw i32 1597463174, %2444
  %2446 = bitcast i32 %2445 to float
  %2447 = fmul fast float %2367, 5.000000e-01
  %2448 = fmul fast float %2446, %2446
  %2449 = fmul fast float %2448, %2447
  %2450 = fsub fast float 1.500000e+00, %2449
  %2451 = fmul fast float %2446, %2367
  %2452 = fmul fast float %2451, %2450
  %2453 = bitcast float %2368 to i32
  %2454 = ashr i32 %2453, 1
  %2455 = sub nsw i32 1597463174, %2454
  %2456 = bitcast i32 %2455 to float
  %2457 = fmul fast float %2368, 5.000000e-01
  %2458 = fmul fast float %2456, %2456
  %2459 = fmul fast float %2458, %2457
  %2460 = fsub fast float 1.500000e+00, %2459
  %2461 = fmul fast float %2456, %2368
  %2462 = fmul fast float %2461, %2460
  %2463 = bitcast float %2369 to i32
  %2464 = ashr i32 %2463, 1
  %2465 = sub nsw i32 1597463174, %2464
  %2466 = bitcast i32 %2465 to float
  %2467 = fmul fast float %2369, 5.000000e-01
  %2468 = fmul fast float %2466, %2466
  %2469 = fmul fast float %2468, %2467
  %2470 = fsub fast float 1.500000e+00, %2469
  %2471 = fmul fast float %2466, %2369
  %2472 = fmul fast float %2471, %2470
  %2473 = fsub fast float %2452, %2434
  %2474 = fsub fast float %2462, %2438
  %2475 = fsub fast float %2472, %2442
  %2476 = fmul fast float %2473, %2402
  %2477 = fmul fast float %2474, %2404
  %2478 = fmul fast float %2475, %2409
  %2479 = fadd fast float %2476, %2417
  %2480 = fadd fast float %2477, %2421
  %2481 = fadd fast float %2478, %2425
  %2482 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2483 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2484 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2485 = fmul fast float %2482, %2482
  %2486 = fmul fast float %2483, %2483
  %2487 = fmul fast float %2484, %2484
  %2488 = fsub fast float %2485, %2367
  %2489 = fsub fast float %2486, %2368
  %2490 = fsub fast float %2487, %2369
  %2491 = fmul fast float %2488, %2392
  %2492 = fmul fast float %2489, %2392
  %2493 = fmul fast float %2490, %2392
  %2494 = fadd fast float %2491, %2367
  %2495 = fadd fast float %2492, %2368
  %2496 = fadd fast float %2493, %2369
  %2497 = fadd fast float %2414, %2378
  %2498 = fsub fast float %2497, %2431
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2500 = fsub fast float %2499, %2378
  %2501 = fmul fast float %2500, %2392
  %2502 = fadd fast float %2501, %2378
  br label %2556

; <label>:2503                                    ; preds = %2391
  %2504 = and i32 %2394, 134217728
  %2505 = icmp eq i32 %2504, 0
  br i1 %2505, label %2540, label %2506

; <label>:2506                                    ; preds = %2503
  %2507 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2508 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2510 = fadd fast float %2507, -5.000000e-01
  %2511 = fadd fast float %2508, -5.000000e-01
  %2512 = fadd fast float %2509, -5.000000e-01
  %2513 = fmul fast float %2510, %2392
  %2514 = fmul fast float %2511, %2392
  %2515 = fmul fast float %2512, %2392
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = call float @dx.op.unary.f32(i32 24, float %2367)  ; Sqrt(value)
  %2520 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2521 = call float @dx.op.unary.f32(i32 24, float %2369)  ; Sqrt(value)
  %2522 = fmul fast float %2516, 2.000000e+00
  %2523 = fsub fast float 1.000000e+00, %2522
  %2524 = fmul fast float %2523, %2519
  %2525 = fadd fast float %2524, %2522
  %2526 = fmul fast float %2525, %2519
  %2527 = fmul fast float %2517, 2.000000e+00
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = fmul fast float %2528, %2520
  %2530 = fadd fast float %2529, %2527
  %2531 = fmul fast float %2530, %2520
  %2532 = fmul fast float %2518, 2.000000e+00
  %2533 = fsub fast float 1.000000e+00, %2532
  %2534 = fmul fast float %2533, %2521
  %2535 = fadd fast float %2534, %2532
  %2536 = fmul fast float %2535, %2521
  %2537 = fmul fast float %2526, %2526
  %2538 = fmul fast float %2531, %2531
  %2539 = fmul fast float %2536, %2536
  br label %2556

; <label>:2540                                    ; preds = %2503
  %2541 = fmul fast float %272, %272
  %2542 = fmul fast float %276, %276
  %2543 = fmul fast float %280, %280
  %2544 = fadd fast float %2541, -1.000000e+00
  %2545 = fadd fast float %2542, -1.000000e+00
  %2546 = fadd fast float %2543, -1.000000e+00
  %2547 = fmul fast float %2392, %2544
  %2548 = fmul fast float %2392, %2545
  %2549 = fmul fast float %2392, %2546
  %2550 = fadd fast float %2547, 1.000000e+00
  %2551 = fadd fast float %2548, 1.000000e+00
  %2552 = fadd fast float %2549, 1.000000e+00
  %2553 = fmul fast float %2550, %2367
  %2554 = fmul fast float %2551, %2368
  %2555 = fmul fast float %2552, %2369
  br label %2556

; <label>:2556                                    ; preds = %2540, %2506, %2397, %2353
  %2557 = phi float [ %2502, %2397 ], [ %2378, %2506 ], [ %2378, %2540 ], [ 0x3FA23C0BE0000000, %2353 ]
  %2558 = phi float [ %2494, %2397 ], [ %2537, %2506 ], [ %2553, %2540 ], [ 1.000000e+00, %2353 ]
  %2559 = phi float [ %2495, %2397 ], [ %2538, %2506 ], [ %2554, %2540 ], [ 1.000000e+00, %2353 ]
  %2560 = phi float [ %2496, %2397 ], [ %2539, %2506 ], [ %2555, %2540 ], [ 1.000000e+00, %2353 ]
  %2561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.i32 %2561, 1
  %2563 = and i32 %2562, 1
  %2564 = icmp ne i32 %2563, 0
  %2565 = add i32 %33, 356
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 32
  %2569 = icmp ne i32 %2568, 0
  %2570 = and i1 %2564, %2569
  %2571 = select i1 %2570, float 1.000000e+00, float %2558
  %2572 = select i1 %2570, float 0x3FD3333340000000, float %2559
  %2573 = select i1 %2570, float 0x3FD3333340000000, float %2560
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 32
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2650, label %2578

; <label>:2578                                    ; preds = %2556
  %2579 = add i32 %33, 124
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %33, 400
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %2584, 0
  %2586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2586, %dx.types.Handle %69, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.ResRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.ResRet.f32 %2587, 2
  %2591 = extractvalue %dx.types.ResRet.f32 %2587, 3
  %2592 = and i32 %2581, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = lshr i32 %2581, 8
  %2595 = and i32 %2594, 255
  %2596 = uitofp i32 %2595 to float
  %2597 = lshr i32 %2581, 16
  %2598 = and i32 %2597, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = fmul fast float %2599, 0x3F70101000000000
  %2601 = fmul fast float %2588, %2593
  %2602 = fadd fast float %2601, %2596
  %2603 = fmul fast float %2602, 0x3F70101000000000
  %2604 = fadd fast float %2589, -5.000000e-01
  %2605 = fadd fast float %2591, -5.000000e-01
  %2606 = fmul fast float %2604, %2600
  %2607 = fmul fast float %2605, %2600
  %2608 = fadd fast float %2606, 5.000000e-01
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = fmul fast float %2608, 2.000000e+00
  %2611 = fadd fast float %2610, -1.000000e+00
  %2612 = fmul fast float %2609, 2.000000e+00
  %2613 = fadd fast float %2612, -1.000000e+00
  %2614 = fadd fast float %2611, %2613
  %2615 = fmul fast float %2614, 5.000000e-01
  %2616 = fsub fast float %2611, %2613
  %2617 = fmul fast float %2616, 5.000000e-01
  %2618 = call float @dx.op.unary.f32(i32 6, float %2615)  ; FAbs(value)
  %2619 = fsub fast float 1.000000e+00, %2618
  %2620 = call float @dx.op.unary.f32(i32 6, float %2617)  ; FAbs(value)
  %2621 = fsub fast float %2619, %2620
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2615, float %2617, float %2621, float %2615, float %2617, float %2621)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = call float @dx.op.unary.f32(i32 25, float %2622)  ; Rsqrt(value)
  %2624 = fmul fast float %2615, %2623
  %2625 = fmul fast float %2617, %2623
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 67108864
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2646, label %2630

; <label>:2630                                    ; preds = %2578
  %2631 = add i32 %33, 312
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 65535
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 65535
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2633, 16
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = fsub fast float %2603, %2641
  %2643 = fmul fast float %2642, %2635
  %2644 = fadd fast float %2643, %2639
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  br label %2646

; <label>:2646                                    ; preds = %2630, %2578
  %2647 = phi float [ %2645, %2630 ], [ %2603, %2578 ]
  %2648 = call float @dx.op.dot2.f32(i32 54, float %2624, float %2625, float %2067, float %2068)  ; Dot2(ax,ay,bx,by)
  %2649 = call float @dx.op.dot2.f32(i32 54, float %2624, float %2625, float %2069, float %2070)  ; Dot2(ax,ay,bx,by)
  br label %2650

; <label>:2650                                    ; preds = %2646, %2556
  %2651 = phi float [ %2647, %2646 ], [ 0x3FD6666660000000, %2556 ]
  %2652 = phi float [ %2648, %2646 ], [ 0.000000e+00, %2556 ]
  %2653 = phi float [ %2649, %2646 ], [ 0.000000e+00, %2556 ]
  %2654 = phi float [ %2590, %2646 ], [ 1.000000e+00, %2556 ]
  %2655 = add i32 %33, 192
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 22
  %2659 = shl nuw nsw i32 %2658, 5
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 64
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2698, label %2665

; <label>:2665                                    ; preds = %2650
  %2666 = add i32 %33, 416
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = add i32 %2668, 0
  %2670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = and i32 %2672, 131072
  %2674 = icmp eq i32 %2673, 0
  %2675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2670, %dx.types.Handle %69, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.ResRet.f32 %2675, 2
  %2679 = fmul fast float %2676, %260
  %2680 = fmul fast float %2677, %263
  %2681 = fmul fast float %2678, %266
  br i1 %2674, label %2688, label %2682

; <label>:2682                                    ; preds = %2665
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = fmul fast float %2684, %2679
  %2686 = fmul fast float %2684, %2680
  %2687 = fmul fast float %2684, %2681
  br label %2688

; <label>:2688                                    ; preds = %2682, %2665
  %2689 = phi float [ %2685, %2682 ], [ %2679, %2665 ]
  %2690 = phi float [ %2686, %2682 ], [ %2680, %2665 ]
  %2691 = phi float [ %2687, %2682 ], [ %2681, %2665 ]
  %2692 = fmul fast float %2689, %2660
  %2693 = select i1 %170, float %2692, float %2689
  %2694 = call float @dx.op.dot3.f32(i32 55, float %2693, float %2690, float %2691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = select i1 %170, float 0.000000e+00, float %2689
  %2696 = select i1 %170, float %2694, float %2690
  %2697 = select i1 %170, float 0.000000e+00, float %2691
  br label %2698

; <label>:2698                                    ; preds = %2688, %2650
  %2699 = phi float [ %2695, %2688 ], [ 0.000000e+00, %2650 ]
  %2700 = phi float [ %2696, %2688 ], [ 0.000000e+00, %2650 ]
  %2701 = phi float [ %2697, %2688 ], [ 0.000000e+00, %2650 ]
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = and i32 %2703, 1024
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2736, label %2706

; <label>:2706                                    ; preds = %2698
  %2707 = add i32 %33, 184
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 255
  %2711 = uitofp i32 %2710 to float
  %2712 = fmul fast float %2711, 0x3F70101020000000
  %2713 = lshr i32 %2709, 8
  %2714 = and i32 %2713, 255
  %2715 = uitofp i32 %2714 to float
  %2716 = fmul fast float %2715, 0x3F70101020000000
  %2717 = lshr i32 %2709, 16
  %2718 = and i32 %2717, 255
  %2719 = uitofp i32 %2718 to float
  %2720 = fmul fast float %2719, 0x3F70101020000000
  %2721 = fmul fast float %2712, %2712
  %2722 = fmul fast float %2716, %2716
  %2723 = fmul fast float %2720, %2720
  %2724 = add i32 %33, 480
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = add i32 %2726, 0
  %2728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2728, %dx.types.Handle %70, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = fmul fast float %2721, %2730
  %2734 = fmul fast float %2722, %2731
  %2735 = fmul fast float %2723, %2732
  br label %2736

; <label>:2736                                    ; preds = %2706, %2698
  %2737 = phi float [ %2733, %2706 ], [ 0.000000e+00, %2698 ]
  %2738 = phi float [ %2734, %2706 ], [ 0.000000e+00, %2698 ]
  %2739 = phi float [ %2735, %2706 ], [ 0.000000e+00, %2698 ]
  %2740 = fcmp fast ogt float %2737, 0.000000e+00
  %2741 = fcmp fast ogt float %2738, 0.000000e+00
  %2742 = fcmp fast ogt float %2739, 0.000000e+00
  %2743 = call float @dx.op.unary.f32(i32 23, float %2737)  ; Log(value)
  %2744 = call float @dx.op.unary.f32(i32 23, float %2738)  ; Log(value)
  %2745 = call float @dx.op.unary.f32(i32 23, float %2739)  ; Log(value)
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = lshr i32 %2747, 7
  %2749 = and i32 %2748, 32752
  %2750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2749)  ; LegacyF16ToF32(value)
  %2751 = fmul fast float %2743, 0xBFE62E4300000000
  %2752 = fmul fast float %2751, %2750
  %2753 = fmul fast float %2744, 0xBFE62E4300000000
  %2754 = fmul fast float %2753, %2750
  %2755 = fmul fast float %2745, 0xBFE62E4300000000
  %2756 = fmul fast float %2755, %2750
  %2757 = select i1 %2740, float %2752, float 1.270000e+02
  %2758 = select i1 %2741, float %2754, float 1.270000e+02
  %2759 = select i1 %2742, float %2756, float 1.270000e+02
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 10240
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2808, label %2764

; <label>:2764                                    ; preds = %2736
  %2765 = add i32 %33, 496
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %70, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 3
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 1048576
  %2776 = icmp ne i32 %2775, 0
  %2777 = and i32 %2774, 8192
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2794, label %2779

; <label>:2779                                    ; preds = %2764
  %2780 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2781 = select i1 %2776, float %2780, float %2771
  %2782 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2783 = select i1 %2776, float %2782, float %2771
  %2784 = add i32 %33, 128
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 16
  %2788 = and i32 %2787, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F80101020000000
  %2791 = fmul fast float %2790, %2783
  %2792 = fmul fast float %2790, %2771
  %2793 = fmul fast float %2790, %2781
  br label %2794

; <label>:2794                                    ; preds = %2779, %2764
  %2795 = phi float [ %2791, %2779 ], [ 0.000000e+00, %2764 ]
  %2796 = phi float [ %2792, %2779 ], [ 0.000000e+00, %2764 ]
  %2797 = phi float [ %2793, %2779 ], [ 0.000000e+00, %2764 ]
  %2798 = and i32 %2774, 2048
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2808, label %2800

; <label>:2800                                    ; preds = %2794
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = shl i32 %2802, 4
  %2804 = and i32 %2803, 32752
  %2805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2804)  ; LegacyF16ToF32(value)
  %2806 = fmul fast float %2805, %2772
  %2807 = call float @dx.op.binary.f32(i32 35, float %2806, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2808

; <label>:2808                                    ; preds = %2800, %2794, %2736
  %2809 = phi float [ %2795, %2800 ], [ %2795, %2794 ], [ 0.000000e+00, %2736 ]
  %2810 = phi float [ %2796, %2800 ], [ %2796, %2794 ], [ 0.000000e+00, %2736 ]
  %2811 = phi float [ %2797, %2800 ], [ %2797, %2794 ], [ 0.000000e+00, %2736 ]
  %2812 = phi float [ %2807, %2800 ], [ 0x3F70101020000000, %2794 ], [ 0x3F70101020000000, %2736 ]
  %2813 = add i32 %33, 128
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 255
  %2817 = uitofp i32 %2816 to float
  %2818 = lshr i32 %2815, 8
  %2819 = and i32 %2818, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2572, float %2573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2822 = fmul fast float %2820, %2821
  %2823 = fadd fast float %2822, %2817
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  br i1 %2055, label %2826, label %2861

; <label>:2826                                    ; preds = %2808
  %2827 = fmul fast float %2812, 2.000000e+00
  %2828 = fcmp fast olt float %2757, 1.270000e+02
  %2829 = fcmp fast olt float %2758, 1.270000e+02
  %2830 = fcmp fast olt float %2759, 1.270000e+02
  %2831 = fmul fast float %2757, 0xBFF7154760000000
  %2832 = fmul fast float %2831, %2827
  %2833 = fmul fast float %2758, 0xBFF7154760000000
  %2834 = fmul fast float %2833, %2827
  %2835 = fmul fast float %2759, 0xBFF7154760000000
  %2836 = fmul fast float %2835, %2827
  %2837 = call float @dx.op.unary.f32(i32 21, float %2832)  ; Exp(value)
  %2838 = call float @dx.op.unary.f32(i32 21, float %2834)  ; Exp(value)
  %2839 = call float @dx.op.unary.f32(i32 21, float %2836)  ; Exp(value)
  %2840 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2841 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2842 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2843 = fadd fast float %2840, -1.000000e+00
  %2844 = select i1 %2828, float %2843, float -1.000000e+00
  %2845 = fadd fast float %2841, -1.000000e+00
  %2846 = select i1 %2829, float %2845, float -1.000000e+00
  %2847 = fadd fast float %2842, -1.000000e+00
  %2848 = select i1 %2830, float %2847, float -1.000000e+00
  %2849 = fmul fast float %2844, %2351
  %2850 = fmul fast float %2846, %2351
  %2851 = fmul fast float %2848, %2351
  %2852 = fadd fast float %2849, 1.000000e+00
  %2853 = fadd fast float %2850, 1.000000e+00
  %2854 = fadd fast float %2851, 1.000000e+00
  %2855 = fmul fast float %2852, %2037
  %2856 = fmul fast float %2853, %2038
  %2857 = fmul fast float %2854, %2039
  %2858 = fmul fast float %2852, %2040
  %2859 = fmul fast float %2853, %2041
  %2860 = fmul fast float %2854, %2042
  br label %2861

; <label>:2861                                    ; preds = %2826, %2808
  %2862 = phi float [ %2855, %2826 ], [ %2037, %2808 ]
  %2863 = phi float [ %2856, %2826 ], [ %2038, %2808 ]
  %2864 = phi float [ %2857, %2826 ], [ %2039, %2808 ]
  %2865 = phi float [ %2858, %2826 ], [ %2040, %2808 ]
  %2866 = phi float [ %2859, %2826 ], [ %2041, %2808 ]
  %2867 = phi float [ %2860, %2826 ], [ %2042, %2808 ]
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 3
  %2871 = icmp eq i32 %2870, 3
  br i1 %2871, label %2950, label %2872

; <label>:2872                                    ; preds = %2861
  %2873 = and i32 %2869, 16
  %2874 = icmp ne i32 %2873, 0
  %2875 = select i1 %2874, float %2351, float 0.000000e+00
  %2876 = icmp eq i32 %2870, 0
  br i1 %2876, label %2877, label %2905

; <label>:2877                                    ; preds = %2872
  %2878 = and i32 %2869, 64
  %2879 = icmp ne i32 %2878, 0
  %2880 = select i1 %2879, float %2351, float 0.000000e+00
  %2881 = fsub fast float %2571, %2862
  %2882 = fsub fast float %2572, %2863
  %2883 = fsub fast float %2573, %2864
  %2884 = fmul fast float %2875, %2881
  %2885 = fmul fast float %2875, %2882
  %2886 = fmul fast float %2875, %2883
  %2887 = fadd fast float %2884, %2862
  %2888 = fadd fast float %2885, %2863
  %2889 = fadd fast float %2886, %2864
  %2890 = fsub fast float %2557, %2049
  %2891 = fmul fast float %2875, %2890
  %2892 = fadd fast float %2891, %2049
  %2893 = fsub fast float %2699, %2865
  %2894 = fsub fast float %2700, %2866
  %2895 = fsub fast float %2701, %2867
  %2896 = fmul fast float %2880, %2893
  %2897 = fmul fast float %2880, %2894
  %2898 = fmul fast float %2880, %2895
  %2899 = fadd fast float %2896, %2865
  %2900 = fadd fast float %2897, %2866
  %2901 = fadd fast float %2898, %2867
  %2902 = fsub fast float %2825, %2053
  %2903 = fmul fast float %2875, %2902
  %2904 = fadd fast float %2903, %2053
  br label %2950

; <label>:2905                                    ; preds = %2872
  %2906 = icmp eq i32 %2870, 1
  br i1 %2906, label %2907, label %2920

; <label>:2907                                    ; preds = %2905
  %2908 = fadd fast float %2571, -1.000000e+00
  %2909 = fadd fast float %2572, -1.000000e+00
  %2910 = fadd fast float %2573, -1.000000e+00
  %2911 = fmul fast float %2875, %2908
  %2912 = fmul fast float %2875, %2909
  %2913 = fmul fast float %2875, %2910
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fadd fast float %2912, 1.000000e+00
  %2916 = fadd fast float %2913, 1.000000e+00
  %2917 = fmul fast float %2914, %2862
  %2918 = fmul fast float %2915, %2863
  %2919 = fmul fast float %2916, %2864
  br label %2950

; <label>:2920                                    ; preds = %2905
  %2921 = icmp eq i32 %2870, 2
  br i1 %2921, label %2922, label %2950

; <label>:2922                                    ; preds = %2920
  %2923 = call float @dx.op.unary.f32(i32 24, float %2571)  ; Sqrt(value)
  %2924 = call float @dx.op.unary.f32(i32 24, float %2572)  ; Sqrt(value)
  %2925 = call float @dx.op.unary.f32(i32 24, float %2573)  ; Sqrt(value)
  %2926 = fadd fast float %2923, -5.000000e-01
  %2927 = fadd fast float %2924, -5.000000e-01
  %2928 = fadd fast float %2925, -5.000000e-01
  %2929 = fmul fast float %2926, %2875
  %2930 = fmul fast float %2927, %2875
  %2931 = fmul fast float %2928, %2875
  %2932 = fadd fast float %2929, 5.000000e-01
  %2933 = fadd fast float %2930, 5.000000e-01
  %2934 = fadd fast float %2931, 5.000000e-01
  %2935 = fmul fast float %2932, 2.000000e+00
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fmul fast float %2936, %2862
  %2938 = fadd fast float %2937, %2935
  %2939 = fmul fast float %2938, %2862
  %2940 = fmul fast float %2933, 2.000000e+00
  %2941 = fsub fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2941, %2863
  %2943 = fadd fast float %2942, %2940
  %2944 = fmul fast float %2943, %2863
  %2945 = fmul fast float %2934, 2.000000e+00
  %2946 = fsub fast float 1.000000e+00, %2945
  %2947 = fmul fast float %2946, %2864
  %2948 = fadd fast float %2947, %2945
  %2949 = fmul fast float %2948, %2864
  br label %2950

; <label>:2950                                    ; preds = %2922, %2920, %2907, %2877, %2861
  %2951 = phi float [ %2862, %2861 ], [ %2939, %2922 ], [ %2862, %2920 ], [ %2917, %2907 ], [ %2887, %2877 ]
  %2952 = phi float [ %2863, %2861 ], [ %2944, %2922 ], [ %2863, %2920 ], [ %2918, %2907 ], [ %2888, %2877 ]
  %2953 = phi float [ %2864, %2861 ], [ %2949, %2922 ], [ %2864, %2920 ], [ %2919, %2907 ], [ %2889, %2877 ]
  %2954 = phi float [ %2865, %2861 ], [ %2865, %2922 ], [ %2865, %2920 ], [ %2865, %2907 ], [ %2899, %2877 ]
  %2955 = phi float [ %2866, %2861 ], [ %2866, %2922 ], [ %2866, %2920 ], [ %2866, %2907 ], [ %2900, %2877 ]
  %2956 = phi float [ %2867, %2861 ], [ %2867, %2922 ], [ %2867, %2920 ], [ %2867, %2907 ], [ %2901, %2877 ]
  %2957 = phi float [ %2049, %2861 ], [ %2049, %2922 ], [ %2049, %2920 ], [ %2049, %2907 ], [ %2892, %2877 ]
  %2958 = phi float [ %2053, %2861 ], [ %2053, %2922 ], [ %2053, %2920 ], [ %2053, %2907 ], [ %2904, %2877 ]
  %2959 = and i32 %2869, 12
  %2960 = icmp eq i32 %2959, 12
  br i1 %2960, label %3091, label %2961

; <label>:2961                                    ; preds = %2950
  %2962 = and i32 %2869, 2097184
  %2963 = icmp eq i32 %2962, 2097184
  %2964 = select i1 %2963, float %2351, float 0.000000e+00
  %2965 = and i32 %2869, 4194336
  %2966 = icmp eq i32 %2965, 4194336
  %2967 = select i1 %2966, float %2351, float 0.000000e+00
  %2968 = and i32 %2869, 8388640
  %2969 = icmp eq i32 %2968, 8388640
  %2970 = select i1 %2969, float %2351, float 0.000000e+00
  %2971 = and i32 %2869, 1024
  %2972 = icmp ne i32 %2971, 0
  %2973 = select i1 %2972, float %2351, float 0.000000e+00
  %2974 = and i32 %2869, 2048
  %2975 = icmp ne i32 %2974, 0
  %2976 = select i1 %2975, float %2351, float 0.000000e+00
  %2977 = and i32 %2869, 8192
  %2978 = icmp ne i32 %2977, 0
  %2979 = select i1 %2978, float %2351, float 0.000000e+00
  %2980 = icmp eq i32 %2959, 0
  br i1 %2980, label %2981, label %3015

; <label>:2981                                    ; preds = %2961
  %2982 = fsub fast float %2652, %2035
  %2983 = fsub fast float %2653, %2036
  %2984 = fmul fast float %2964, %2982
  %2985 = fmul fast float %2964, %2983
  %2986 = fadd fast float %2984, %2035
  %2987 = fadd fast float %2985, %2036
  %2988 = fsub fast float %2654, %2051
  %2989 = fmul fast float %2967, %2988
  %2990 = fadd fast float %2989, %2051
  %2991 = fsub fast float %2651, %2050
  %2992 = fmul fast float %2970, %2991
  %2993 = fadd fast float %2992, %2050
  %2994 = fsub fast float %2757, %2043
  %2995 = fsub fast float %2758, %2044
  %2996 = fsub fast float %2759, %2045
  %2997 = fmul fast float %2973, %2994
  %2998 = fmul fast float %2973, %2995
  %2999 = fmul fast float %2973, %2996
  %3000 = fadd fast float %2997, %2043
  %3001 = fadd fast float %2998, %2044
  %3002 = fadd fast float %2999, %2045
  %3003 = fsub fast float %2812, %2052
  %3004 = fmul fast float %2976, %3003
  %3005 = fadd fast float %3004, %2052
  %3006 = fsub fast float %2809, %2046
  %3007 = fsub fast float %2810, %2047
  %3008 = fsub fast float %2811, %2048
  %3009 = fmul fast float %2979, %3006
  %3010 = fmul fast float %2979, %3007
  %3011 = fmul fast float %2979, %3008
  %3012 = fadd fast float %3009, %2046
  %3013 = fadd fast float %3010, %2047
  %3014 = fadd fast float %3011, %2048
  br label %3091

; <label>:3015                                    ; preds = %2961
  %3016 = icmp eq i32 %2959, 4
  br i1 %3016, label %3017, label %3063

; <label>:3017                                    ; preds = %3015
  %3018 = fmul fast float %2964, %2652
  %3019 = fmul fast float %2964, %2653
  %3020 = fadd fast float %3018, %2035
  %3021 = fadd fast float %3019, %2036
  %3022 = call float @dx.op.binary.f32(i32 36, float %2051, float %2654)  ; FMin(a,b)
  %3023 = fsub fast float %3022, %2051
  %3024 = fmul fast float %3023, %2967
  %3025 = fadd fast float %3024, %2051
  %3026 = fadd fast float %2651, %2050
  %3027 = fmul fast float %3026, 0x3FF337FAE0000000
  %3028 = fmul fast float %2050, %2050
  %3029 = fmul fast float %2651, %2651
  %3030 = fadd fast float %3029, %3028
  %3031 = fmul fast float %3030, 0x3FE5152B00000000
  %3032 = fmul fast float %2050, 0xBFCC1F85E0000000
  %3033 = fmul fast float %3032, %2651
  %3034 = fadd fast float %3033, 0xBFE1363700000000
  %3035 = fadd fast float %3034, %3027
  %3036 = fsub fast float %3035, %3031
  %3037 = fmul fast float %3026, 0x3FBA6F0D00000000
  %3038 = fmul fast float %3030, 0x3FD0432880000000
  %3039 = fmul fast float %2050, 0xBFEF110800000000
  %3040 = fmul fast float %3039, %2651
  %3041 = fadd fast float %3040, 1.000000e+00
  %3042 = fsub fast float %3041, %3037
  %3043 = fadd fast float %3042, %3038
  %3044 = fdiv fast float %3036, %3043
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3046 = fsub fast float %3045, %2050
  %3047 = fmul fast float %3046, %2970
  %3048 = fadd fast float %3047, %2050
  %3049 = fmul fast float %2973, %2757
  %3050 = fmul fast float %2973, %2758
  %3051 = fmul fast float %2973, %2759
  %3052 = fadd fast float %3049, %2043
  %3053 = fadd fast float %3050, %2044
  %3054 = fadd fast float %3051, %2045
  %3055 = fmul fast float %2976, %2812
  %3056 = fadd fast float %3055, %2052
  %3057 = fmul fast float %2979, %2809
  %3058 = fmul fast float %2979, %2810
  %3059 = fmul fast float %2979, %2811
  %3060 = fadd fast float %3057, %2046
  %3061 = fadd fast float %3058, %2047
  %3062 = fadd fast float %3059, %2048
  br label %3091

; <label>:3063                                    ; preds = %3015
  %3064 = icmp eq i32 %2959, 8
  br i1 %3064, label %3065, label %3091

; <label>:3065                                    ; preds = %3063
  %3066 = fmul fast float %2964, %2652
  %3067 = fmul fast float %2964, %2653
  %3068 = fadd fast float %3066, %2035
  %3069 = fadd fast float %3067, %2036
  %3070 = call float @dx.op.binary.f32(i32 36, float %2051, float %2654)  ; FMin(a,b)
  %3071 = fsub fast float %3070, %2051
  %3072 = fmul fast float %3071, %2967
  %3073 = fadd fast float %3072, %2051
  %3074 = fsub fast float %2651, %2050
  %3075 = fmul fast float %2970, %3074
  %3076 = fadd fast float %3075, %2050
  %3077 = fmul fast float %2973, %2757
  %3078 = fmul fast float %2973, %2758
  %3079 = fmul fast float %2973, %2759
  %3080 = fadd fast float %3077, %2043
  %3081 = fadd fast float %3078, %2044
  %3082 = fadd fast float %3079, %2045
  %3083 = fmul fast float %2976, %2812
  %3084 = fadd fast float %3083, %2052
  %3085 = fmul fast float %2979, %2809
  %3086 = fmul fast float %2979, %2810
  %3087 = fmul fast float %2979, %2811
  %3088 = fadd fast float %3085, %2046
  %3089 = fadd fast float %3086, %2047
  %3090 = fadd fast float %3087, %2048
  br label %3091

; <label>:3091                                    ; preds = %3065, %3063, %3017, %2981, %2950, %2350, %2054, %2034
  %3092 = phi float [ %2035, %2950 ], [ %2035, %2350 ], [ %2035, %2034 ], [ %3068, %3065 ], [ %2035, %3063 ], [ %3020, %3017 ], [ %2986, %2981 ], [ %2035, %2054 ]
  %3093 = phi float [ %2036, %2950 ], [ %2036, %2350 ], [ %2036, %2034 ], [ %3069, %3065 ], [ %2036, %3063 ], [ %3021, %3017 ], [ %2987, %2981 ], [ %2036, %2054 ]
  %3094 = phi float [ %2951, %2950 ], [ %2037, %2350 ], [ %2037, %2034 ], [ %2951, %3065 ], [ %2951, %3063 ], [ %2951, %3017 ], [ %2951, %2981 ], [ %2037, %2054 ]
  %3095 = phi float [ %2952, %2950 ], [ %2038, %2350 ], [ %2038, %2034 ], [ %2952, %3065 ], [ %2952, %3063 ], [ %2952, %3017 ], [ %2952, %2981 ], [ %2038, %2054 ]
  %3096 = phi float [ %2953, %2950 ], [ %2039, %2350 ], [ %2039, %2034 ], [ %2953, %3065 ], [ %2953, %3063 ], [ %2953, %3017 ], [ %2953, %2981 ], [ %2039, %2054 ]
  %3097 = phi float [ %2954, %2950 ], [ %2040, %2350 ], [ %2040, %2034 ], [ %2954, %3065 ], [ %2954, %3063 ], [ %2954, %3017 ], [ %2954, %2981 ], [ %2040, %2054 ]
  %3098 = phi float [ %2955, %2950 ], [ %2041, %2350 ], [ %2041, %2034 ], [ %2955, %3065 ], [ %2955, %3063 ], [ %2955, %3017 ], [ %2955, %2981 ], [ %2041, %2054 ]
  %3099 = phi float [ %2956, %2950 ], [ %2042, %2350 ], [ %2042, %2034 ], [ %2956, %3065 ], [ %2956, %3063 ], [ %2956, %3017 ], [ %2956, %2981 ], [ %2042, %2054 ]
  %3100 = phi float [ %2043, %2950 ], [ %2043, %2350 ], [ %2043, %2034 ], [ %3080, %3065 ], [ %2043, %3063 ], [ %3052, %3017 ], [ %3000, %2981 ], [ %2043, %2054 ]
  %3101 = phi float [ %2044, %2950 ], [ %2044, %2350 ], [ %2044, %2034 ], [ %3081, %3065 ], [ %2044, %3063 ], [ %3053, %3017 ], [ %3001, %2981 ], [ %2044, %2054 ]
  %3102 = phi float [ %2045, %2950 ], [ %2045, %2350 ], [ %2045, %2034 ], [ %3082, %3065 ], [ %2045, %3063 ], [ %3054, %3017 ], [ %3002, %2981 ], [ %2045, %2054 ]
  %3103 = phi float [ %2046, %2950 ], [ %2046, %2350 ], [ %2046, %2034 ], [ %3088, %3065 ], [ %2046, %3063 ], [ %3060, %3017 ], [ %3012, %2981 ], [ %2046, %2054 ]
  %3104 = phi float [ %2047, %2950 ], [ %2047, %2350 ], [ %2047, %2034 ], [ %3089, %3065 ], [ %2047, %3063 ], [ %3061, %3017 ], [ %3013, %2981 ], [ %2047, %2054 ]
  %3105 = phi float [ %2048, %2950 ], [ %2048, %2350 ], [ %2048, %2034 ], [ %3090, %3065 ], [ %2048, %3063 ], [ %3062, %3017 ], [ %3014, %2981 ], [ %2048, %2054 ]
  %3106 = phi float [ %2957, %2950 ], [ %2049, %2350 ], [ %2049, %2034 ], [ %2957, %3065 ], [ %2957, %3063 ], [ %2957, %3017 ], [ %2957, %2981 ], [ %2049, %2054 ]
  %3107 = phi float [ %2050, %2950 ], [ %2050, %2350 ], [ %2050, %2034 ], [ %3076, %3065 ], [ %2050, %3063 ], [ %3048, %3017 ], [ %2993, %2981 ], [ %2050, %2054 ]
  %3108 = phi float [ %2051, %2950 ], [ %2051, %2350 ], [ %2051, %2034 ], [ %3073, %3065 ], [ %2051, %3063 ], [ %3025, %3017 ], [ %2990, %2981 ], [ %2051, %2054 ]
  %3109 = phi float [ %2052, %2950 ], [ %2052, %2350 ], [ %2052, %2034 ], [ %3084, %3065 ], [ %2052, %3063 ], [ %3056, %3017 ], [ %3005, %2981 ], [ %2052, %2054 ]
  %3110 = phi float [ %2958, %2950 ], [ %2053, %2350 ], [ %2053, %2034 ], [ %2958, %3065 ], [ %2958, %3063 ], [ %2958, %3017 ], [ %2958, %2981 ], [ %2053, %2054 ]
  br i1 %347, label %4148, label %3111

; <label>:3111                                    ; preds = %3091
  %3112 = icmp ult i32 %398, 4
  %3113 = add i32 %33, 72
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = add i32 %33, 76
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = or i32 %3118, %3115
  %3120 = icmp eq i32 %3119, 0
  br i1 %3120, label %4148, label %3121

; <label>:3121                                    ; preds = %3111
  %3122 = and i32 %3115, 262144
  %3123 = icmp ne i32 %3122, 0
  %3124 = select i1 %3123, float %36, float 1.000000e+00
  %3125 = select i1 %3123, float %37, float 0.000000e+00
  %3126 = select i1 %3123, float %38, float 0.000000e+00
  %3127 = select i1 %3123, float %39, float 1.000000e+00
  %3128 = select i1 %3123, float %40, float %61
  %3129 = select i1 %3123, float %41, float %62
  %3130 = add i32 %33, 332
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = lshr i32 %3132, 16
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = fmul fast float %3134, 0x3F50624DE0000000
  %3136 = add i32 %33, 136
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = lshr i32 %3138, 16
  %3140 = and i32 %3139, 255
  %3141 = lshr i32 %3138, 24
  %3142 = add i32 %33, 340
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 65535
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = lshr i32 %3144, 16
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = add i32 %33, 80
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = lshr i32 %3151, 22
  %3153 = shl nuw nsw i32 %3152, 5
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = shl i32 %3151, 4
  %3156 = and i32 %3155, 32752
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = lshr i32 %3151, 7
  %3159 = and i32 %3158, 32752
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3163 = fmul fast float %3162, 1.000000e+03
  %3164 = fmul fast float %337, %3163
  %3165 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3166 = fadd fast float %3165, %327
  %3167 = fmul fast float %338, %3163
  %3168 = call float @dx.op.unary.f32(i32 22, float %3167)  ; Frc(value)
  %3169 = fadd fast float %3168, %329
  %3170 = fmul fast float %3135, %3163
  %3171 = call float @dx.op.unary.f32(i32 22, float %3170)  ; Frc(value)
  %3172 = fmul fast float %3171, 0x401921FB60000000
  %3173 = fadd fast float %3172, %3154
  %3174 = call float @dx.op.unary.f32(i32 13, float %3173)  ; Sin(value)
  %3175 = call float @dx.op.unary.f32(i32 12, float %3173)  ; Cos(value)
  %3176 = fsub fast float -0.000000e+00, %3174
  %3177 = fadd fast float %3128, -5.000000e-01
  %3178 = fadd fast float %3129, -5.000000e-01
  %3179 = fmul fast float %3146, %3177
  %3180 = fmul fast float %3148, %3178
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = fmul fast float %3157, %3181
  %3184 = fmul fast float %3160, %3182
  %3185 = fmul fast float %3175, %3183
  %3186 = call float @dx.op.tertiary.f32(i32 46, float %3176, float %3184, float %3185)  ; FMad(a,b,c)
  %3187 = fmul fast float %3174, %3183
  %3188 = call float @dx.op.tertiary.f32(i32 46, float %3175, float %3184, float %3187)  ; FMad(a,b,c)
  %3189 = fadd fast float %3166, %3186
  %3190 = fadd fast float %3169, %3188
  %3191 = icmp ugt i32 %3140, 1
  %3192 = icmp ugt i32 %3138, 33554431
  %3193 = or i1 %3192, %3191
  br i1 %3193, label %3194, label %3219

; <label>:3194                                    ; preds = %3121
  %3195 = add i32 %33, 276
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fmul fast float %3162, %3199
  %3201 = call float @dx.op.unary.f32(i32 22, float %3200)  ; Frc(value)
  %3202 = mul nuw nsw i32 %3140, %3141
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3201, %3203
  %3205 = call float @dx.op.unary.f32(i32 27, float %3204)  ; Round_ni(value)
  %3206 = fptoui float %3205 to i32
  %3207 = urem i32 %3206, %3140
  %3208 = udiv i32 %3206, %3141
  %3209 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3210 = call float @dx.op.unary.f32(i32 22, float %3190)  ; Frc(value)
  %3211 = uitofp i32 %3207 to float
  %3212 = uitofp i32 %3208 to float
  %3213 = fadd fast float %3209, %3211
  %3214 = fadd fast float %3210, %3212
  %3215 = uitofp i32 %3140 to float
  %3216 = uitofp i32 %3141 to float
  %3217 = fdiv fast float %3213, %3215
  %3218 = fdiv fast float %3214, %3216
  br label %3219

; <label>:3219                                    ; preds = %3194, %3121
  %3220 = phi float [ %3217, %3194 ], [ %3189, %3121 ]
  %3221 = phi float [ %3218, %3194 ], [ %3190, %3121 ]
  %3222 = and i32 %3115, 16777216
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3333, label %3224

; <label>:3224                                    ; preds = %3219
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3225, 2
  %3229 = fadd fast float %3226, %128
  %3230 = fadd fast float %3227, %129
  %3231 = fadd fast float %3228, %130
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 0
  %3234 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3235 = icmp eq i32 %34, 65535
  br i1 %3235, label %3330, label %3236

; <label>:3236                                    ; preds = %3224
  %3237 = lshr i32 %34, 1
  %3238 = shl i32 %3237, 2
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %34, 1
  %3242 = icmp ne i32 %3241, 0
  %3243 = lshr i32 %3240, 16
  %3244 = and i32 %3240, 65535
  %3245 = select i1 %3242, i32 %3243, i32 %3244
  %3246 = icmp eq i32 %3245, 65535
  br i1 %3246, label %3326, label %3247

; <label>:3247                                    ; preds = %3236
  %3248 = mul nuw nsw i32 %3245, 40
  %3249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.ResRet.f32 %3249, 1
  %3252 = extractvalue %dx.types.ResRet.f32 %3249, 2
  %3253 = add nuw nsw i32 %3248, 12
  %3254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = add nuw nsw i32 %3248, 24
  %3259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = add nuw nsw i32 %3248, 36
  %3264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = fsub fast float %3229, %3250
  %3267 = fsub fast float %3230, %3251
  %3268 = fsub fast float %3231, %3252
  %3269 = fmul fast float %3265, %3266
  %3270 = fmul fast float %3265, %3267
  %3271 = fmul fast float %3265, %3268
  %3272 = call float @dx.op.unary.f32(i32 27, float %3269)  ; Round_ni(value)
  %3273 = call float @dx.op.unary.f32(i32 27, float %3270)  ; Round_ni(value)
  %3274 = call float @dx.op.unary.f32(i32 27, float %3271)  ; Round_ni(value)
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = fmul fast float %3275, %3255
  %3279 = fmul fast float %3276, %3256
  %3280 = fmul fast float %3277, %3257
  %3281 = shl i32 %34, 2
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = add i32 %3283, 0
  %3285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3286 = call float @dx.op.unary.f32(i32 22, float %3278)  ; Frc(value)
  %3287 = call float @dx.op.unary.f32(i32 22, float %3279)  ; Frc(value)
  %3288 = call float @dx.op.unary.f32(i32 22, float %3280)  ; Frc(value)
  %3289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3285, %dx.types.Handle %30, float %3286, float %3287, float %3288, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = fmul fast float %3290, 1.023000e+03
  %3294 = fmul fast float %3291, 1.023000e+03
  %3295 = fmul fast float %3292, 1.023000e+03
  %3296 = fadd fast float %3293, 5.000000e-01
  %3297 = fadd fast float %3294, 5.000000e-01
  %3298 = fadd fast float %3295, 5.000000e-01
  %3299 = call float @dx.op.unary.f32(i32 27, float %3296)  ; Round_ni(value)
  %3300 = call float @dx.op.unary.f32(i32 27, float %3297)  ; Round_ni(value)
  %3301 = call float @dx.op.unary.f32(i32 27, float %3298)  ; Round_ni(value)
  %3302 = fsub fast float %3269, %3272
  %3303 = fsub fast float %3270, %3273
  %3304 = fsub fast float %3271, %3274
  %3305 = fmul fast float %3302, 7.500000e-01
  %3306 = fmul fast float %3303, 7.500000e-01
  %3307 = fmul fast float %3304, 7.500000e-01
  %3308 = fadd fast float %3272, 1.250000e-01
  %3309 = fadd fast float %3308, %3305
  %3310 = fadd fast float %3309, %3299
  %3311 = fadd fast float %3273, 1.250000e-01
  %3312 = fadd fast float %3311, %3306
  %3313 = fadd fast float %3312, %3300
  %3314 = fadd fast float %3274, 1.250000e-01
  %3315 = fadd fast float %3314, %3307
  %3316 = fadd fast float %3315, %3301
  %3317 = fmul fast float %3310, %3260
  %3318 = fmul fast float %3313, %3261
  %3319 = fmul fast float %3316, %3262
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = add i32 %3321, 0
  %3323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3323, %dx.types.Handle %28, float %3317, float %3318, float %3319, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  br label %3326

; <label>:3326                                    ; preds = %3247, %3236
  %3327 = phi float [ %3325, %3247 ], [ -1.000000e+00, %3236 ]
  %3328 = fadd fast float %3327, %3234
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  br label %3330

; <label>:3330                                    ; preds = %3326, %3224
  %3331 = phi float [ %3329, %3326 ], [ %3234, %3224 ]
  %3332 = fmul fast float %3331, %393
  br label %3333

; <label>:3333                                    ; preds = %3330, %3219
  %3334 = phi float [ %3332, %3330 ], [ %393, %3219 ]
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 256
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3385, label %3339

; <label>:3339                                    ; preds = %3333
  %3340 = add i32 %33, 452
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = add i32 %3342, 0
  %3344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3344, %dx.types.Handle %70, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = add i32 %33, 148
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = shl i32 %3349, 4
  %3351 = and i32 %3350, 32752
  %3352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3351)  ; LegacyF16ToF32(value)
  %3353 = lshr i32 %3349, 7
  %3354 = and i32 %3353, 32752
  %3355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3354)  ; LegacyF16ToF32(value)
  %3356 = fsub fast float 1.000000e+00, %3334
  %3357 = call float @dx.op.binary.f32(i32 35, float %3356, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3358 = bitcast float %3334 to i32
  %3359 = sitofp i32 %3358 to float
  %3360 = fadd fast float %3359, 0xC1CFBF8940000000
  %3361 = fmul fast float %3355, %3360
  %3362 = fadd fast float %3361, 0x41CFBF8940000000
  %3363 = fptosi float %3362 to i32
  %3364 = bitcast i32 %3363 to float
  %3365 = bitcast float %3357 to i32
  %3366 = sitofp i32 %3365 to float
  %3367 = fadd fast float %3366, 0xC1CFBF8940000000
  %3368 = fmul fast float %3367, %3355
  %3369 = fadd fast float %3368, 0x41CFBF8940000000
  %3370 = fptosi float %3369 to i32
  %3371 = bitcast i32 %3370 to float
  %3372 = fmul fast float %3364, %3352
  %3373 = fmul fast float %3371, %3352
  %3374 = fsub fast float %3357, %3372
  %3375 = fadd fast float %3373, %3357
  %3376 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3377 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3378 = fsub fast float %3346, %3376
  %3379 = fsub fast float %3377, %3376
  %3380 = bitcast float %3379 to i32
  %3381 = sub nsw i32 2129859010, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3382, %3378
  %3384 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  br label %3385

; <label>:3385                                    ; preds = %3339, %3333
  %3386 = phi float [ %3384, %3339 ], [ %3334, %3333 ]
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = and i32 %3388, 128
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3407, label %3391

; <label>:3391                                    ; preds = %3385
  %3392 = add i32 %33, 436
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = add i32 %3394, 0
  %3396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3397 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3396, %dx.types.Handle %70, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 524288
  %3402 = icmp ne i32 %3401, 0
  %3403 = fcmp fast ogt float %3398, 0x3FE0101020000000
  %3404 = select i1 %3403, float 1.000000e+00, float 0.000000e+00
  %3405 = select i1 %3402, float %3404, float %3398
  %3406 = fmul fast float %3405, %3386
  br label %3407

; <label>:3407                                    ; preds = %3391, %3385
  %3408 = phi float [ %3406, %3391 ], [ %3386, %3385 ]
  %3409 = fcmp fast ult float %3408, 0x3F70101020000000
  br i1 %3409, label %4148, label %3410

; <label>:3410                                    ; preds = %3407
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = and i32 %3412, 16
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %3613, label %3415

; <label>:3415                                    ; preds = %3410
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = add i32 %33, 388
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = add i32 %3420, 0
  %3422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3422, %dx.types.Handle %69, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = and i32 %3417, 255
  %3429 = uitofp i32 %3428 to float
  %3430 = lshr i32 %3417, 8
  %3431 = and i32 %3430, 255
  %3432 = uitofp i32 %3431 to float
  %3433 = fmul fast float %3427, %3429
  %3434 = fadd fast float %3433, %3432
  %3435 = fmul fast float %3434, 0x3F70101000000000
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 512
  %3439 = icmp eq i32 %3438, 0
  br i1 %3439, label %3448, label %3440

; <label>:3440                                    ; preds = %3415
  %3441 = add i32 %33, 468
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = add i32 %3443, 0
  %3445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3445, %dx.types.Handle %70, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  br label %3448

; <label>:3448                                    ; preds = %3440, %3415
  %3449 = phi float [ %3447, %3440 ], [ 1.000000e+00, %3415 ]
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = and i32 %3451, 33554432
  %3453 = icmp eq i32 %3452, 0
  br i1 %3453, label %3560, label %3454

; <label>:3454                                    ; preds = %3448
  %3455 = add i32 %33, 272
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 65535
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = lshr i32 %3457, 16
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = add i32 %33, 276
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 65535
  %3466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3465)  ; LegacyF16ToF32(value)
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = lshr i32 %3468, 24
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3470, 0x3F70101020000000
  %3472 = and i32 %3468, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = lshr i32 %3468, 8
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = fmul fast float %3477, 0x3F70101020000000
  %3479 = lshr i32 %3468, 16
  %3480 = and i32 %3479, 255
  %3481 = uitofp i32 %3480 to float
  %3482 = fmul fast float %3481, 0x3F70101020000000
  %3483 = add i32 %33, 268
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = lshr i32 %3485, 24
  %3487 = uitofp i32 %3486 to float
  %3488 = fmul fast float %3487, 0x3F70101020000000
  %3489 = and i32 %3485, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = fmul fast float %3490, 0x3F70101020000000
  %3492 = lshr i32 %3485, 8
  %3493 = and i32 %3492, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = fmul fast float %3494, 0x3F70101020000000
  %3496 = lshr i32 %3485, 16
  %3497 = and i32 %3496, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101020000000
  %3500 = bitcast float %3424 to i32
  %3501 = ashr i32 %3500, 1
  %3502 = sub nsw i32 1597463174, %3501
  %3503 = bitcast i32 %3502 to float
  %3504 = fmul fast float %3424, 5.000000e-01
  %3505 = fmul fast float %3503, %3503
  %3506 = fmul fast float %3505, %3504
  %3507 = fsub fast float 1.500000e+00, %3506
  %3508 = fmul fast float %3503, %3424
  %3509 = fmul fast float %3508, %3507
  %3510 = bitcast float %3425 to i32
  %3511 = ashr i32 %3510, 1
  %3512 = sub nsw i32 1597463174, %3511
  %3513 = bitcast i32 %3512 to float
  %3514 = fmul fast float %3425, 5.000000e-01
  %3515 = fmul fast float %3513, %3513
  %3516 = fmul fast float %3515, %3514
  %3517 = fsub fast float 1.500000e+00, %3516
  %3518 = fmul fast float %3513, %3425
  %3519 = fmul fast float %3518, %3517
  %3520 = bitcast float %3426 to i32
  %3521 = ashr i32 %3520, 1
  %3522 = sub nsw i32 1597463174, %3521
  %3523 = bitcast i32 %3522 to float
  %3524 = fmul fast float %3426, 5.000000e-01
  %3525 = fmul fast float %3523, %3523
  %3526 = fmul fast float %3525, %3524
  %3527 = fsub fast float 1.500000e+00, %3526
  %3528 = fmul fast float %3523, %3426
  %3529 = fmul fast float %3528, %3527
  %3530 = fsub fast float %3509, %3491
  %3531 = fsub fast float %3519, %3495
  %3532 = fsub fast float %3529, %3499
  %3533 = fmul fast float %3530, %3459
  %3534 = fmul fast float %3531, %3461
  %3535 = fmul fast float %3532, %3466
  %3536 = fadd fast float %3533, %3474
  %3537 = fadd fast float %3534, %3478
  %3538 = fadd fast float %3535, %3482
  %3539 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3540 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3541 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3542 = fmul fast float %3539, %3539
  %3543 = fmul fast float %3540, %3540
  %3544 = fmul fast float %3541, %3541
  %3545 = fsub fast float %3542, %3424
  %3546 = fsub fast float %3543, %3425
  %3547 = fsub fast float %3544, %3426
  %3548 = fmul fast float %3545, %3449
  %3549 = fmul fast float %3546, %3449
  %3550 = fmul fast float %3547, %3449
  %3551 = fadd fast float %3548, %3424
  %3552 = fadd fast float %3549, %3425
  %3553 = fadd fast float %3550, %3426
  %3554 = fadd fast float %3471, %3435
  %3555 = fsub fast float %3554, %3488
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = fsub fast float %3556, %3435
  %3558 = fmul fast float %3557, %3449
  %3559 = fadd fast float %3558, %3435
  br label %3613

; <label>:3560                                    ; preds = %3448
  %3561 = and i32 %3451, 134217728
  %3562 = icmp eq i32 %3561, 0
  br i1 %3562, label %3597, label %3563

; <label>:3563                                    ; preds = %3560
  %3564 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3565 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3566 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3567 = fadd fast float %3564, -5.000000e-01
  %3568 = fadd fast float %3565, -5.000000e-01
  %3569 = fadd fast float %3566, -5.000000e-01
  %3570 = fmul fast float %3567, %3449
  %3571 = fmul fast float %3568, %3449
  %3572 = fmul fast float %3569, %3449
  %3573 = fadd fast float %3570, 5.000000e-01
  %3574 = fadd fast float %3571, 5.000000e-01
  %3575 = fadd fast float %3572, 5.000000e-01
  %3576 = call float @dx.op.unary.f32(i32 24, float %3424)  ; Sqrt(value)
  %3577 = call float @dx.op.unary.f32(i32 24, float %3425)  ; Sqrt(value)
  %3578 = call float @dx.op.unary.f32(i32 24, float %3426)  ; Sqrt(value)
  %3579 = fmul fast float %3573, 2.000000e+00
  %3580 = fsub fast float 1.000000e+00, %3579
  %3581 = fmul fast float %3580, %3576
  %3582 = fadd fast float %3581, %3579
  %3583 = fmul fast float %3582, %3576
  %3584 = fmul fast float %3574, 2.000000e+00
  %3585 = fsub fast float 1.000000e+00, %3584
  %3586 = fmul fast float %3585, %3577
  %3587 = fadd fast float %3586, %3584
  %3588 = fmul fast float %3587, %3577
  %3589 = fmul fast float %3575, 2.000000e+00
  %3590 = fsub fast float 1.000000e+00, %3589
  %3591 = fmul fast float %3590, %3578
  %3592 = fadd fast float %3591, %3589
  %3593 = fmul fast float %3592, %3578
  %3594 = fmul fast float %3583, %3583
  %3595 = fmul fast float %3588, %3588
  %3596 = fmul fast float %3593, %3593
  br label %3613

; <label>:3597                                    ; preds = %3560
  %3598 = fmul fast float %314, %314
  %3599 = fmul fast float %318, %318
  %3600 = fmul fast float %322, %322
  %3601 = fadd fast float %3598, -1.000000e+00
  %3602 = fadd fast float %3599, -1.000000e+00
  %3603 = fadd fast float %3600, -1.000000e+00
  %3604 = fmul fast float %3449, %3601
  %3605 = fmul fast float %3449, %3602
  %3606 = fmul fast float %3449, %3603
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fmul fast float %3607, %3424
  %3611 = fmul fast float %3608, %3425
  %3612 = fmul fast float %3609, %3426
  br label %3613

; <label>:3613                                    ; preds = %3597, %3563, %3454, %3410
  %3614 = phi float [ %3559, %3454 ], [ %3435, %3563 ], [ %3435, %3597 ], [ 0x3FA23C0BE0000000, %3410 ]
  %3615 = phi float [ %3551, %3454 ], [ %3594, %3563 ], [ %3610, %3597 ], [ 1.000000e+00, %3410 ]
  %3616 = phi float [ %3552, %3454 ], [ %3595, %3563 ], [ %3611, %3597 ], [ 1.000000e+00, %3410 ]
  %3617 = phi float [ %3553, %3454 ], [ %3596, %3563 ], [ %3612, %3597 ], [ 1.000000e+00, %3410 ]
  %3618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.i32 %3618, 1
  %3620 = and i32 %3619, 1
  %3621 = icmp ne i32 %3620, 0
  %3622 = add i32 %33, 356
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = and i32 %3624, 32
  %3626 = icmp ne i32 %3625, 0
  %3627 = and i1 %3621, %3626
  %3628 = select i1 %3627, float 1.000000e+00, float %3615
  %3629 = select i1 %3627, float 0x3FD3333340000000, float %3616
  %3630 = select i1 %3627, float 0x3FD3333340000000, float %3617
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 32
  %3634 = icmp eq i32 %3633, 0
  br i1 %3634, label %3707, label %3635

; <label>:3635                                    ; preds = %3613
  %3636 = add i32 %33, 140
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = add i32 %33, 404
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = add i32 %3641, 0
  %3643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3643, %dx.types.Handle %69, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = and i32 %3638, 255
  %3650 = uitofp i32 %3649 to float
  %3651 = lshr i32 %3638, 8
  %3652 = and i32 %3651, 255
  %3653 = uitofp i32 %3652 to float
  %3654 = lshr i32 %3638, 16
  %3655 = and i32 %3654, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = fmul fast float %3656, 0x3F70101000000000
  %3658 = fmul fast float %3645, %3650
  %3659 = fadd fast float %3658, %3653
  %3660 = fmul fast float %3659, 0x3F70101000000000
  %3661 = fadd fast float %3646, -5.000000e-01
  %3662 = fadd fast float %3648, -5.000000e-01
  %3663 = fmul fast float %3661, %3657
  %3664 = fmul fast float %3662, %3657
  %3665 = fadd fast float %3663, 5.000000e-01
  %3666 = fadd fast float %3664, 5.000000e-01
  %3667 = fmul fast float %3665, 2.000000e+00
  %3668 = fadd fast float %3667, -1.000000e+00
  %3669 = fmul fast float %3666, 2.000000e+00
  %3670 = fadd fast float %3669, -1.000000e+00
  %3671 = fadd fast float %3668, %3670
  %3672 = fmul fast float %3671, 5.000000e-01
  %3673 = fsub fast float %3668, %3670
  %3674 = fmul fast float %3673, 5.000000e-01
  %3675 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3678 = fsub fast float %3676, %3677
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3672, float %3674, float %3678, float %3672, float %3674, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 25, float %3679)  ; Rsqrt(value)
  %3681 = fmul fast float %3672, %3680
  %3682 = fmul fast float %3674, %3680
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = and i32 %3684, 67108864
  %3686 = icmp eq i32 %3685, 0
  br i1 %3686, label %3703, label %3687

; <label>:3687                                    ; preds = %3635
  %3688 = add i32 %33, 328
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 65535
  %3692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3691)  ; LegacyF16ToF32(value)
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 65535
  %3696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3695)  ; LegacyF16ToF32(value)
  %3697 = lshr i32 %3690, 16
  %3698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3697)  ; LegacyF16ToF32(value)
  %3699 = fsub fast float %3660, %3698
  %3700 = fmul fast float %3699, %3692
  %3701 = fadd fast float %3700, %3696
  %3702 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  br label %3703

; <label>:3703                                    ; preds = %3687, %3635
  %3704 = phi float [ %3702, %3687 ], [ %3660, %3635 ]
  %3705 = call float @dx.op.dot2.f32(i32 54, float %3681, float %3682, float %3124, float %3125)  ; Dot2(ax,ay,bx,by)
  %3706 = call float @dx.op.dot2.f32(i32 54, float %3681, float %3682, float %3126, float %3127)  ; Dot2(ax,ay,bx,by)
  br label %3707

; <label>:3707                                    ; preds = %3703, %3613
  %3708 = phi float [ %3704, %3703 ], [ 0x3FD6666660000000, %3613 ]
  %3709 = phi float [ %3705, %3703 ], [ 0.000000e+00, %3613 ]
  %3710 = phi float [ %3706, %3703 ], [ 0.000000e+00, %3613 ]
  %3711 = phi float [ %3647, %3703 ], [ 1.000000e+00, %3613 ]
  %3712 = add i32 %33, 208
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = lshr i32 %3714, 22
  %3716 = shl nuw nsw i32 %3715, 5
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 64
  %3721 = icmp eq i32 %3720, 0
  br i1 %3721, label %3755, label %3722

; <label>:3722                                    ; preds = %3707
  %3723 = add i32 %33, 420
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = add i32 %3725, 0
  %3727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = and i32 %3729, 131072
  %3731 = icmp eq i32 %3730, 0
  %3732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3727, %dx.types.Handle %69, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = fmul fast float %3733, %302
  %3737 = fmul fast float %3734, %305
  %3738 = fmul fast float %3735, %308
  br i1 %3731, label %3745, label %3739

; <label>:3739                                    ; preds = %3722
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = fmul fast float %3741, %3736
  %3743 = fmul fast float %3741, %3737
  %3744 = fmul fast float %3741, %3738
  br label %3745

; <label>:3745                                    ; preds = %3739, %3722
  %3746 = phi float [ %3742, %3739 ], [ %3736, %3722 ]
  %3747 = phi float [ %3743, %3739 ], [ %3737, %3722 ]
  %3748 = phi float [ %3744, %3739 ], [ %3738, %3722 ]
  %3749 = fmul fast float %3746, %3717
  %3750 = select i1 %170, float %3749, float %3746
  %3751 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3747, float %3748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3752 = select i1 %170, float 0.000000e+00, float %3746
  %3753 = select i1 %170, float %3751, float %3747
  %3754 = select i1 %170, float 0.000000e+00, float %3748
  br label %3755

; <label>:3755                                    ; preds = %3745, %3707
  %3756 = phi float [ %3752, %3745 ], [ 0.000000e+00, %3707 ]
  %3757 = phi float [ %3753, %3745 ], [ 0.000000e+00, %3707 ]
  %3758 = phi float [ %3754, %3745 ], [ 0.000000e+00, %3707 ]
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 1024
  %3762 = icmp eq i32 %3761, 0
  br i1 %3762, label %3793, label %3763

; <label>:3763                                    ; preds = %3755
  %3764 = add i32 %33, 200
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 255
  %3768 = uitofp i32 %3767 to float
  %3769 = fmul fast float %3768, 0x3F70101020000000
  %3770 = lshr i32 %3766, 8
  %3771 = and i32 %3770, 255
  %3772 = uitofp i32 %3771 to float
  %3773 = fmul fast float %3772, 0x3F70101020000000
  %3774 = lshr i32 %3766, 16
  %3775 = and i32 %3774, 255
  %3776 = uitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 0x3F70101020000000
  %3778 = fmul fast float %3769, %3769
  %3779 = fmul fast float %3773, %3773
  %3780 = fmul fast float %3777, %3777
  %3781 = add i32 %33, 484
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = add i32 %3783, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3785, %dx.types.Handle %70, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = fmul fast float %3778, %3787
  %3791 = fmul fast float %3779, %3788
  %3792 = fmul fast float %3780, %3789
  br label %3793

; <label>:3793                                    ; preds = %3763, %3755
  %3794 = phi float [ %3790, %3763 ], [ 0.000000e+00, %3755 ]
  %3795 = phi float [ %3791, %3763 ], [ 0.000000e+00, %3755 ]
  %3796 = phi float [ %3792, %3763 ], [ 0.000000e+00, %3755 ]
  %3797 = fcmp fast ogt float %3794, 0.000000e+00
  %3798 = fcmp fast ogt float %3795, 0.000000e+00
  %3799 = fcmp fast ogt float %3796, 0.000000e+00
  %3800 = call float @dx.op.unary.f32(i32 23, float %3794)  ; Log(value)
  %3801 = call float @dx.op.unary.f32(i32 23, float %3795)  ; Log(value)
  %3802 = call float @dx.op.unary.f32(i32 23, float %3796)  ; Log(value)
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = lshr i32 %3804, 7
  %3806 = and i32 %3805, 32752
  %3807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3806)  ; LegacyF16ToF32(value)
  %3808 = fmul fast float %3800, 0xBFE62E4300000000
  %3809 = fmul fast float %3808, %3807
  %3810 = fmul fast float %3801, 0xBFE62E4300000000
  %3811 = fmul fast float %3810, %3807
  %3812 = fmul fast float %3802, 0xBFE62E4300000000
  %3813 = fmul fast float %3812, %3807
  %3814 = select i1 %3797, float %3809, float 1.270000e+02
  %3815 = select i1 %3798, float %3811, float 1.270000e+02
  %3816 = select i1 %3799, float %3813, float 1.270000e+02
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = and i32 %3818, 10240
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3865, label %3821

; <label>:3821                                    ; preds = %3793
  %3822 = add i32 %33, 500
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = add i32 %3824, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3826, %dx.types.Handle %70, float %3220, float %3221, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = and i32 %3831, 1048576
  %3833 = icmp ne i32 %3832, 0
  %3834 = and i32 %3831, 8192
  %3835 = icmp eq i32 %3834, 0
  br i1 %3835, label %3851, label %3836

; <label>:3836                                    ; preds = %3821
  %3837 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3838 = select i1 %3833, float %3837, float %3828
  %3839 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3840 = select i1 %3833, float %3839, float %3828
  %3841 = add i32 %33, 144
  %3842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.i32 %3842, 0
  %3844 = lshr i32 %3843, 16
  %3845 = and i32 %3844, 255
  %3846 = uitofp i32 %3845 to float
  %3847 = fmul fast float %3846, 0x3F80101020000000
  %3848 = fmul fast float %3847, %3840
  %3849 = fmul fast float %3847, %3828
  %3850 = fmul fast float %3847, %3838
  br label %3851

; <label>:3851                                    ; preds = %3836, %3821
  %3852 = phi float [ %3848, %3836 ], [ 0.000000e+00, %3821 ]
  %3853 = phi float [ %3849, %3836 ], [ 0.000000e+00, %3821 ]
  %3854 = phi float [ %3850, %3836 ], [ 0.000000e+00, %3821 ]
  %3855 = and i32 %3831, 2048
  %3856 = icmp eq i32 %3855, 0
  br i1 %3856, label %3865, label %3857

; <label>:3857                                    ; preds = %3851
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = shl i32 %3859, 4
  %3861 = and i32 %3860, 32752
  %3862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3861)  ; LegacyF16ToF32(value)
  %3863 = fmul fast float %3862, %3829
  %3864 = call float @dx.op.binary.f32(i32 35, float %3863, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3865

; <label>:3865                                    ; preds = %3857, %3851, %3793
  %3866 = phi float [ %3852, %3857 ], [ %3852, %3851 ], [ 0.000000e+00, %3793 ]
  %3867 = phi float [ %3853, %3857 ], [ %3853, %3851 ], [ 0.000000e+00, %3793 ]
  %3868 = phi float [ %3854, %3857 ], [ %3854, %3851 ], [ 0.000000e+00, %3793 ]
  %3869 = phi float [ %3864, %3857 ], [ 0x3F70101020000000, %3851 ], [ 0x3F70101020000000, %3793 ]
  %3870 = add i32 %33, 144
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = and i32 %3872, 255
  %3874 = uitofp i32 %3873 to float
  %3875 = lshr i32 %3872, 8
  %3876 = and i32 %3875, 255
  %3877 = uitofp i32 %3876 to float
  %3878 = call float @dx.op.dot3.f32(i32 55, float %3628, float %3629, float %3630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3879 = fmul fast float %3877, %3878
  %3880 = fadd fast float %3879, %3874
  %3881 = fmul fast float %3880, 0x3F70101020000000
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  br i1 %3112, label %3883, label %3918

; <label>:3883                                    ; preds = %3865
  %3884 = fmul fast float %3869, 2.000000e+00
  %3885 = fcmp fast olt float %3814, 1.270000e+02
  %3886 = fcmp fast olt float %3815, 1.270000e+02
  %3887 = fcmp fast olt float %3816, 1.270000e+02
  %3888 = fmul fast float %3814, 0xBFF7154760000000
  %3889 = fmul fast float %3888, %3884
  %3890 = fmul fast float %3815, 0xBFF7154760000000
  %3891 = fmul fast float %3890, %3884
  %3892 = fmul fast float %3816, 0xBFF7154760000000
  %3893 = fmul fast float %3892, %3884
  %3894 = call float @dx.op.unary.f32(i32 21, float %3889)  ; Exp(value)
  %3895 = call float @dx.op.unary.f32(i32 21, float %3891)  ; Exp(value)
  %3896 = call float @dx.op.unary.f32(i32 21, float %3893)  ; Exp(value)
  %3897 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3898 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3899 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3900 = fadd fast float %3897, -1.000000e+00
  %3901 = select i1 %3885, float %3900, float -1.000000e+00
  %3902 = fadd fast float %3898, -1.000000e+00
  %3903 = select i1 %3886, float %3902, float -1.000000e+00
  %3904 = fadd fast float %3899, -1.000000e+00
  %3905 = select i1 %3887, float %3904, float -1.000000e+00
  %3906 = fmul fast float %3901, %3408
  %3907 = fmul fast float %3903, %3408
  %3908 = fmul fast float %3905, %3408
  %3909 = fadd fast float %3906, 1.000000e+00
  %3910 = fadd fast float %3907, 1.000000e+00
  %3911 = fadd fast float %3908, 1.000000e+00
  %3912 = fmul fast float %3909, %3094
  %3913 = fmul fast float %3910, %3095
  %3914 = fmul fast float %3911, %3096
  %3915 = fmul fast float %3909, %3097
  %3916 = fmul fast float %3910, %3098
  %3917 = fmul fast float %3911, %3099
  br label %3918

; <label>:3918                                    ; preds = %3883, %3865
  %3919 = phi float [ %3912, %3883 ], [ %3094, %3865 ]
  %3920 = phi float [ %3913, %3883 ], [ %3095, %3865 ]
  %3921 = phi float [ %3914, %3883 ], [ %3096, %3865 ]
  %3922 = phi float [ %3915, %3883 ], [ %3097, %3865 ]
  %3923 = phi float [ %3916, %3883 ], [ %3098, %3865 ]
  %3924 = phi float [ %3917, %3883 ], [ %3099, %3865 ]
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = and i32 %3926, 3
  %3928 = icmp eq i32 %3927, 3
  br i1 %3928, label %4007, label %3929

; <label>:3929                                    ; preds = %3918
  %3930 = and i32 %3926, 16
  %3931 = icmp ne i32 %3930, 0
  %3932 = select i1 %3931, float %3408, float 0.000000e+00
  %3933 = icmp eq i32 %3927, 0
  br i1 %3933, label %3934, label %3962

; <label>:3934                                    ; preds = %3929
  %3935 = and i32 %3926, 64
  %3936 = icmp ne i32 %3935, 0
  %3937 = select i1 %3936, float %3408, float 0.000000e+00
  %3938 = fsub fast float %3628, %3919
  %3939 = fsub fast float %3629, %3920
  %3940 = fsub fast float %3630, %3921
  %3941 = fmul fast float %3932, %3938
  %3942 = fmul fast float %3932, %3939
  %3943 = fmul fast float %3932, %3940
  %3944 = fadd fast float %3941, %3919
  %3945 = fadd fast float %3942, %3920
  %3946 = fadd fast float %3943, %3921
  %3947 = fsub fast float %3614, %3106
  %3948 = fmul fast float %3932, %3947
  %3949 = fadd fast float %3948, %3106
  %3950 = fsub fast float %3756, %3922
  %3951 = fsub fast float %3757, %3923
  %3952 = fsub fast float %3758, %3924
  %3953 = fmul fast float %3937, %3950
  %3954 = fmul fast float %3937, %3951
  %3955 = fmul fast float %3937, %3952
  %3956 = fadd fast float %3953, %3922
  %3957 = fadd fast float %3954, %3923
  %3958 = fadd fast float %3955, %3924
  %3959 = fsub fast float %3882, %3110
  %3960 = fmul fast float %3932, %3959
  %3961 = fadd fast float %3960, %3110
  br label %4007

; <label>:3962                                    ; preds = %3929
  %3963 = icmp eq i32 %3927, 1
  br i1 %3963, label %3964, label %3977

; <label>:3964                                    ; preds = %3962
  %3965 = fadd fast float %3628, -1.000000e+00
  %3966 = fadd fast float %3629, -1.000000e+00
  %3967 = fadd fast float %3630, -1.000000e+00
  %3968 = fmul fast float %3932, %3965
  %3969 = fmul fast float %3932, %3966
  %3970 = fmul fast float %3932, %3967
  %3971 = fadd fast float %3968, 1.000000e+00
  %3972 = fadd fast float %3969, 1.000000e+00
  %3973 = fadd fast float %3970, 1.000000e+00
  %3974 = fmul fast float %3971, %3919
  %3975 = fmul fast float %3972, %3920
  %3976 = fmul fast float %3973, %3921
  br label %4007

; <label>:3977                                    ; preds = %3962
  %3978 = icmp eq i32 %3927, 2
  br i1 %3978, label %3979, label %4007

; <label>:3979                                    ; preds = %3977
  %3980 = call float @dx.op.unary.f32(i32 24, float %3628)  ; Sqrt(value)
  %3981 = call float @dx.op.unary.f32(i32 24, float %3629)  ; Sqrt(value)
  %3982 = call float @dx.op.unary.f32(i32 24, float %3630)  ; Sqrt(value)
  %3983 = fadd fast float %3980, -5.000000e-01
  %3984 = fadd fast float %3981, -5.000000e-01
  %3985 = fadd fast float %3982, -5.000000e-01
  %3986 = fmul fast float %3983, %3932
  %3987 = fmul fast float %3984, %3932
  %3988 = fmul fast float %3985, %3932
  %3989 = fadd fast float %3986, 5.000000e-01
  %3990 = fadd fast float %3987, 5.000000e-01
  %3991 = fadd fast float %3988, 5.000000e-01
  %3992 = fmul fast float %3989, 2.000000e+00
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = fmul fast float %3993, %3919
  %3995 = fadd fast float %3994, %3992
  %3996 = fmul fast float %3995, %3919
  %3997 = fmul fast float %3990, 2.000000e+00
  %3998 = fsub fast float 1.000000e+00, %3997
  %3999 = fmul fast float %3998, %3920
  %4000 = fadd fast float %3999, %3997
  %4001 = fmul fast float %4000, %3920
  %4002 = fmul fast float %3991, 2.000000e+00
  %4003 = fsub fast float 1.000000e+00, %4002
  %4004 = fmul fast float %4003, %3921
  %4005 = fadd fast float %4004, %4002
  %4006 = fmul fast float %4005, %3921
  br label %4007

; <label>:4007                                    ; preds = %3979, %3977, %3964, %3934, %3918
  %4008 = phi float [ %3919, %3918 ], [ %3996, %3979 ], [ %3919, %3977 ], [ %3974, %3964 ], [ %3944, %3934 ]
  %4009 = phi float [ %3920, %3918 ], [ %4001, %3979 ], [ %3920, %3977 ], [ %3975, %3964 ], [ %3945, %3934 ]
  %4010 = phi float [ %3921, %3918 ], [ %4006, %3979 ], [ %3921, %3977 ], [ %3976, %3964 ], [ %3946, %3934 ]
  %4011 = phi float [ %3922, %3918 ], [ %3922, %3979 ], [ %3922, %3977 ], [ %3922, %3964 ], [ %3956, %3934 ]
  %4012 = phi float [ %3923, %3918 ], [ %3923, %3979 ], [ %3923, %3977 ], [ %3923, %3964 ], [ %3957, %3934 ]
  %4013 = phi float [ %3924, %3918 ], [ %3924, %3979 ], [ %3924, %3977 ], [ %3924, %3964 ], [ %3958, %3934 ]
  %4014 = phi float [ %3106, %3918 ], [ %3106, %3979 ], [ %3106, %3977 ], [ %3106, %3964 ], [ %3949, %3934 ]
  %4015 = phi float [ %3110, %3918 ], [ %3110, %3979 ], [ %3110, %3977 ], [ %3110, %3964 ], [ %3961, %3934 ]
  %4016 = and i32 %3926, 12
  %4017 = icmp eq i32 %4016, 12
  br i1 %4017, label %4148, label %4018

; <label>:4018                                    ; preds = %4007
  %4019 = and i32 %3926, 2097184
  %4020 = icmp eq i32 %4019, 2097184
  %4021 = select i1 %4020, float %3408, float 0.000000e+00
  %4022 = and i32 %3926, 4194336
  %4023 = icmp eq i32 %4022, 4194336
  %4024 = select i1 %4023, float %3408, float 0.000000e+00
  %4025 = and i32 %3926, 8388640
  %4026 = icmp eq i32 %4025, 8388640
  %4027 = select i1 %4026, float %3408, float 0.000000e+00
  %4028 = and i32 %3926, 1024
  %4029 = icmp ne i32 %4028, 0
  %4030 = select i1 %4029, float %3408, float 0.000000e+00
  %4031 = and i32 %3926, 2048
  %4032 = icmp ne i32 %4031, 0
  %4033 = select i1 %4032, float %3408, float 0.000000e+00
  %4034 = and i32 %3926, 8192
  %4035 = icmp ne i32 %4034, 0
  %4036 = select i1 %4035, float %3408, float 0.000000e+00
  %4037 = icmp eq i32 %4016, 0
  br i1 %4037, label %4038, label %4072

; <label>:4038                                    ; preds = %4018
  %4039 = fsub fast float %3709, %3092
  %4040 = fsub fast float %3710, %3093
  %4041 = fmul fast float %4021, %4039
  %4042 = fmul fast float %4021, %4040
  %4043 = fadd fast float %4041, %3092
  %4044 = fadd fast float %4042, %3093
  %4045 = fsub fast float %3711, %3108
  %4046 = fmul fast float %4024, %4045
  %4047 = fadd fast float %4046, %3108
  %4048 = fsub fast float %3708, %3107
  %4049 = fmul fast float %4027, %4048
  %4050 = fadd fast float %4049, %3107
  %4051 = fsub fast float %3814, %3100
  %4052 = fsub fast float %3815, %3101
  %4053 = fsub fast float %3816, %3102
  %4054 = fmul fast float %4030, %4051
  %4055 = fmul fast float %4030, %4052
  %4056 = fmul fast float %4030, %4053
  %4057 = fadd fast float %4054, %3100
  %4058 = fadd fast float %4055, %3101
  %4059 = fadd fast float %4056, %3102
  %4060 = fsub fast float %3869, %3109
  %4061 = fmul fast float %4033, %4060
  %4062 = fadd fast float %4061, %3109
  %4063 = fsub fast float %3866, %3103
  %4064 = fsub fast float %3867, %3104
  %4065 = fsub fast float %3868, %3105
  %4066 = fmul fast float %4036, %4063
  %4067 = fmul fast float %4036, %4064
  %4068 = fmul fast float %4036, %4065
  %4069 = fadd fast float %4066, %3103
  %4070 = fadd fast float %4067, %3104
  %4071 = fadd fast float %4068, %3105
  br label %4148

; <label>:4072                                    ; preds = %4018
  %4073 = icmp eq i32 %4016, 4
  br i1 %4073, label %4074, label %4120

; <label>:4074                                    ; preds = %4072
  %4075 = fmul fast float %4021, %3709
  %4076 = fmul fast float %4021, %3710
  %4077 = fadd fast float %4075, %3092
  %4078 = fadd fast float %4076, %3093
  %4079 = call float @dx.op.binary.f32(i32 36, float %3108, float %3711)  ; FMin(a,b)
  %4080 = fsub fast float %4079, %3108
  %4081 = fmul fast float %4080, %4024
  %4082 = fadd fast float %4081, %3108
  %4083 = fadd fast float %3708, %3107
  %4084 = fmul fast float %4083, 0x3FF337FAE0000000
  %4085 = fmul fast float %3107, %3107
  %4086 = fmul fast float %3708, %3708
  %4087 = fadd fast float %4086, %4085
  %4088 = fmul fast float %4087, 0x3FE5152B00000000
  %4089 = fmul fast float %3107, 0xBFCC1F85E0000000
  %4090 = fmul fast float %4089, %3708
  %4091 = fadd fast float %4090, 0xBFE1363700000000
  %4092 = fadd fast float %4091, %4084
  %4093 = fsub fast float %4092, %4088
  %4094 = fmul fast float %4083, 0x3FBA6F0D00000000
  %4095 = fmul fast float %4087, 0x3FD0432880000000
  %4096 = fmul fast float %3107, 0xBFEF110800000000
  %4097 = fmul fast float %4096, %3708
  %4098 = fadd fast float %4097, 1.000000e+00
  %4099 = fsub fast float %4098, %4094
  %4100 = fadd fast float %4099, %4095
  %4101 = fdiv fast float %4093, %4100
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fsub fast float %4102, %3107
  %4104 = fmul fast float %4103, %4027
  %4105 = fadd fast float %4104, %3107
  %4106 = fmul fast float %4030, %3814
  %4107 = fmul fast float %4030, %3815
  %4108 = fmul fast float %4030, %3816
  %4109 = fadd fast float %4106, %3100
  %4110 = fadd fast float %4107, %3101
  %4111 = fadd fast float %4108, %3102
  %4112 = fmul fast float %4033, %3869
  %4113 = fadd fast float %4112, %3109
  %4114 = fmul fast float %4036, %3866
  %4115 = fmul fast float %4036, %3867
  %4116 = fmul fast float %4036, %3868
  %4117 = fadd fast float %4114, %3103
  %4118 = fadd fast float %4115, %3104
  %4119 = fadd fast float %4116, %3105
  br label %4148

; <label>:4120                                    ; preds = %4072
  %4121 = icmp eq i32 %4016, 8
  br i1 %4121, label %4122, label %4148

; <label>:4122                                    ; preds = %4120
  %4123 = fmul fast float %4021, %3709
  %4124 = fmul fast float %4021, %3710
  %4125 = fadd fast float %4123, %3092
  %4126 = fadd fast float %4124, %3093
  %4127 = call float @dx.op.binary.f32(i32 36, float %3108, float %3711)  ; FMin(a,b)
  %4128 = fsub fast float %4127, %3108
  %4129 = fmul fast float %4128, %4024
  %4130 = fadd fast float %4129, %3108
  %4131 = fsub fast float %3708, %3107
  %4132 = fmul fast float %4027, %4131
  %4133 = fadd fast float %4132, %3107
  %4134 = fmul fast float %4030, %3814
  %4135 = fmul fast float %4030, %3815
  %4136 = fmul fast float %4030, %3816
  %4137 = fadd fast float %4134, %3100
  %4138 = fadd fast float %4135, %3101
  %4139 = fadd fast float %4136, %3102
  %4140 = fmul fast float %4033, %3869
  %4141 = fadd fast float %4140, %3109
  %4142 = fmul fast float %4036, %3866
  %4143 = fmul fast float %4036, %3867
  %4144 = fmul fast float %4036, %3868
  %4145 = fadd fast float %4142, %3103
  %4146 = fadd fast float %4143, %3104
  %4147 = fadd fast float %4144, %3105
  br label %4148

; <label>:4148                                    ; preds = %4122, %4120, %4074, %4038, %4007, %3407, %3111, %3091
  %4149 = phi float [ %3092, %4007 ], [ %3092, %3407 ], [ %3092, %3091 ], [ %3092, %3111 ], [ %4043, %4038 ], [ %4077, %4074 ], [ %3092, %4120 ], [ %4125, %4122 ]
  %4150 = phi float [ %3093, %4007 ], [ %3093, %3407 ], [ %3093, %3091 ], [ %3093, %3111 ], [ %4044, %4038 ], [ %4078, %4074 ], [ %3093, %4120 ], [ %4126, %4122 ]
  %4151 = phi float [ %4008, %4007 ], [ %3094, %3407 ], [ %3094, %3091 ], [ %3094, %3111 ], [ %4008, %4038 ], [ %4008, %4074 ], [ %4008, %4120 ], [ %4008, %4122 ]
  %4152 = phi float [ %4009, %4007 ], [ %3095, %3407 ], [ %3095, %3091 ], [ %3095, %3111 ], [ %4009, %4038 ], [ %4009, %4074 ], [ %4009, %4120 ], [ %4009, %4122 ]
  %4153 = phi float [ %4010, %4007 ], [ %3096, %3407 ], [ %3096, %3091 ], [ %3096, %3111 ], [ %4010, %4038 ], [ %4010, %4074 ], [ %4010, %4120 ], [ %4010, %4122 ]
  %4154 = phi float [ %4011, %4007 ], [ %3097, %3407 ], [ %3097, %3091 ], [ %3097, %3111 ], [ %4011, %4038 ], [ %4011, %4074 ], [ %4011, %4120 ], [ %4011, %4122 ]
  %4155 = phi float [ %4012, %4007 ], [ %3098, %3407 ], [ %3098, %3091 ], [ %3098, %3111 ], [ %4012, %4038 ], [ %4012, %4074 ], [ %4012, %4120 ], [ %4012, %4122 ]
  %4156 = phi float [ %4013, %4007 ], [ %3099, %3407 ], [ %3099, %3091 ], [ %3099, %3111 ], [ %4013, %4038 ], [ %4013, %4074 ], [ %4013, %4120 ], [ %4013, %4122 ]
  %4157 = phi float [ %3100, %4007 ], [ %3100, %3407 ], [ %3100, %3091 ], [ %3100, %3111 ], [ %4057, %4038 ], [ %4109, %4074 ], [ %3100, %4120 ], [ %4137, %4122 ]
  %4158 = phi float [ %3101, %4007 ], [ %3101, %3407 ], [ %3101, %3091 ], [ %3101, %3111 ], [ %4058, %4038 ], [ %4110, %4074 ], [ %3101, %4120 ], [ %4138, %4122 ]
  %4159 = phi float [ %3102, %4007 ], [ %3102, %3407 ], [ %3102, %3091 ], [ %3102, %3111 ], [ %4059, %4038 ], [ %4111, %4074 ], [ %3102, %4120 ], [ %4139, %4122 ]
  %4160 = phi float [ %3103, %4007 ], [ %3103, %3407 ], [ %3103, %3091 ], [ %3103, %3111 ], [ %4069, %4038 ], [ %4117, %4074 ], [ %3103, %4120 ], [ %4145, %4122 ]
  %4161 = phi float [ %3104, %4007 ], [ %3104, %3407 ], [ %3104, %3091 ], [ %3104, %3111 ], [ %4070, %4038 ], [ %4118, %4074 ], [ %3104, %4120 ], [ %4146, %4122 ]
  %4162 = phi float [ %3105, %4007 ], [ %3105, %3407 ], [ %3105, %3091 ], [ %3105, %3111 ], [ %4071, %4038 ], [ %4119, %4074 ], [ %3105, %4120 ], [ %4147, %4122 ]
  %4163 = phi float [ %4014, %4007 ], [ %3106, %3407 ], [ %3106, %3091 ], [ %3106, %3111 ], [ %4014, %4038 ], [ %4014, %4074 ], [ %4014, %4120 ], [ %4014, %4122 ]
  %4164 = phi float [ %3107, %4007 ], [ %3107, %3407 ], [ %3107, %3091 ], [ %3107, %3111 ], [ %4050, %4038 ], [ %4105, %4074 ], [ %3107, %4120 ], [ %4133, %4122 ]
  %4165 = phi float [ %3108, %4007 ], [ %3108, %3407 ], [ %3108, %3091 ], [ %3108, %3111 ], [ %4047, %4038 ], [ %4082, %4074 ], [ %3108, %4120 ], [ %4130, %4122 ]
  %4166 = phi float [ %3109, %4007 ], [ %3109, %3407 ], [ %3109, %3091 ], [ %3109, %3111 ], [ %4062, %4038 ], [ %4113, %4074 ], [ %3109, %4120 ], [ %4141, %4122 ]
  %4167 = phi float [ %4015, %4007 ], [ %3110, %3407 ], [ %3110, %3091 ], [ %3110, %3111 ], [ %4015, %4038 ], [ %4015, %4074 ], [ %4015, %4120 ], [ %4015, %4122 ]
  %4168 = add i32 %33, 360
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = bitcast i32 %4170 to float
  %4172 = fcmp fast oge float %4171, 0.000000e+00
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = select i1 %4172, float %4171, float %4174
  %4176 = call float @dx.op.dot2.f32(i32 54, float %4149, float %4150, float %4149, float %4150)  ; Dot2(ax,ay,bx,by)
  %4177 = fmul fast float %4176, 0x3FE3333340000000
  %4178 = fsub fast float 1.000000e+00, %4177
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4149, float %4150, float %4178, float %4149, float %4150, float %4178)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 25, float %4179)  ; Rsqrt(value)
  %4181 = fmul fast float %4180, %4149
  %4182 = fmul fast float %4180, %4150
  %4183 = fmul fast float %4178, %4180
  %4184 = fmul fast float %4183, %80
  %4185 = fmul fast float %4183, %81
  %4186 = fmul fast float %4183, %82
  %4187 = fmul fast float %4181, %54
  %4188 = fmul fast float %4181, %55
  %4189 = fmul fast float %4181, %56
  %4190 = fadd fast float %4184, %4187
  %4191 = fadd fast float %4185, %4188
  %4192 = fadd fast float %4186, %4189
  %4193 = fmul fast float %92, %4182
  %4194 = fmul fast float %93, %4182
  %4195 = fmul fast float %94, %4182
  %4196 = fadd fast float %4190, %4193
  %4197 = fadd fast float %4191, %4194
  %4198 = fadd fast float %4192, %4195
  %4199 = call float @dx.op.dot3.f32(i32 55, float %4196, float %4197, float %4198, float %4196, float %4197, float %4198)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = call float @dx.op.unary.f32(i32 25, float %4199)  ; Rsqrt(value)
  %4201 = fmul fast float %4196, %4200
  %4202 = fmul fast float %4197, %4200
  %4203 = fmul fast float %4198, %4200
  %4204 = and i32 %35, 1
  %4205 = icmp eq i32 %4204, 0
  br i1 %4205, label %4206, label %4798

; <label>:4206                                    ; preds = %4148
  %4207 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %4208 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %4209 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %4210 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %4211 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %4212 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %4213 = fadd fast float %4207, %128
  %4214 = fadd fast float %4208, %129
  %4215 = fadd fast float %4209, %130
  %4216 = fadd fast float %4210, %128
  %4217 = fadd fast float %4211, %129
  %4218 = fadd fast float %4212, %130
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 2
  %4225 = extractvalue %dx.types.CBufRet.f32 %4223, 3
  %4226 = fmul fast float %4220, %73
  %4227 = fmul fast float %4226, %4224
  %4228 = fmul fast float %4221, %74
  %4229 = fmul fast float %4228, %4225
  %4230 = fptoui float %4227 to i32
  %4231 = fptoui float %4229 to i32
  %4232 = fadd fast float %4220, -1.000000e+00
  %4233 = fadd fast float %4221, -1.000000e+00
  %4234 = fptoui float %4232 to i32
  %4235 = fptoui float %4233 to i32
  %4236 = call i32 @dx.op.binary.i32(i32 40, i32 %4230, i32 %4234)  ; UMin(a,b)
  %4237 = call i32 @dx.op.binary.i32(i32 40, i32 %4231, i32 %4235)  ; UMin(a,b)
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4241 = fmul fast float %4239, %68
  %4242 = fsub fast float %4241, %4240
  %4243 = fadd fast float %4222, -1.000000e+00
  %4244 = call float @dx.op.binary.f32(i32 36, float %4242, float %4243)  ; FMin(a,b)
  %4245 = fptoui float %4244 to i32
  %4246 = fptoui float %4220 to i32
  %4247 = fptoui float %4221 to i32
  %4248 = mul i32 %4245, %4247
  %4249 = add i32 %4248, %4237
  %4250 = mul i32 %4249, %4246
  %4251 = add i32 %4250, %4236
  %4252 = shl i32 %4251, 2
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = and i32 %4254, 1023
  %4256 = lshr i32 %4254, 10
  %4257 = icmp eq i32 %4255, 0
  br i1 %4257, label %4761, label %4258

; <label>:4258                                    ; preds = %4206
  %4259 = and i32 %4254, 1023
  br label %4260

; <label>:4260                                    ; preds = %4392, %4258
  %4261 = phi i32 [ %4342, %4392 ], [ 0, %4258 ]
  %4262 = phi float [ %4393, %4392 ], [ 0.000000e+00, %4258 ]
  %4263 = phi float [ %4394, %4392 ], [ %4175, %4258 ]
  %4264 = phi float [ %4395, %4392 ], [ %4167, %4258 ]
  %4265 = phi float [ %4396, %4392 ], [ %4157, %4258 ]
  %4266 = phi float [ %4397, %4392 ], [ %4158, %4258 ]
  %4267 = phi float [ %4398, %4392 ], [ %4159, %4258 ]
  %4268 = phi float [ %4399, %4392 ], [ 0.000000e+00, %4258 ]
  %4269 = phi float [ %4400, %4392 ], [ 0.000000e+00, %4258 ]
  %4270 = phi float [ %4401, %4392 ], [ %4160, %4258 ]
  %4271 = phi float [ %4402, %4392 ], [ %4161, %4258 ]
  %4272 = phi float [ %4403, %4392 ], [ %4162, %4258 ]
  %4273 = phi float [ %4404, %4392 ], [ %4154, %4258 ]
  %4274 = phi float [ %4405, %4392 ], [ %4155, %4258 ]
  %4275 = phi float [ %4406, %4392 ], [ %4156, %4258 ]
  %4276 = phi float [ %4407, %4392 ], [ %4201, %4258 ]
  %4277 = phi float [ %4408, %4392 ], [ %4202, %4258 ]
  %4278 = phi float [ %4409, %4392 ], [ %4203, %4258 ]
  %4279 = phi float [ %4410, %4392 ], [ %4165, %4258 ]
  %4280 = phi float [ %4411, %4392 ], [ %4164, %4258 ]
  %4281 = phi float [ %4412, %4392 ], [ 0.000000e+00, %4258 ]
  %4282 = phi float [ %4413, %4392 ], [ %4163, %4258 ]
  %4283 = phi float [ %4414, %4392 ], [ %4151, %4258 ]
  %4284 = phi float [ %4415, %4392 ], [ %4152, %4258 ]
  %4285 = phi float [ %4416, %4392 ], [ %4153, %4258 ]
  %4286 = add nuw nsw i32 %4261, %4256
  %4287 = shl i32 %4286, 2
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = shl i32 %4289, 8
  %4291 = or i32 %4290, 48
  %4292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = extractvalue %dx.types.ResRet.f32 %4292, 3
  %4297 = or i32 %4290, 64
  %4298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.i32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.i32 %4298, 1
  %4301 = or i32 %4290, 80
  %4302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4302, 3
  %4305 = or i32 %4290, 96
  %4306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4310 = extractvalue %dx.types.ResRet.f32 %4306, 3
  %4311 = or i32 %4290, 112
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4314 = or i32 %4290, 128
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = extractvalue %dx.types.ResRet.f32 %4315, 3
  %4320 = or i32 %4290, 144
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.f32 %4321, 3
  %4326 = or i32 %4290, 160
  %4327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = extractvalue %dx.types.ResRet.f32 %4327, 3
  %4332 = or i32 %4290, 192
  %4333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.i32 %4333, 0
  %4335 = or i32 %4290, 208
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = or i32 %4290, 248
  %4339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.ResRet.f32 %4339, 1
  %4342 = add nuw nsw i32 %4261, 1
  %4343 = bitcast float %4296 to i32
  %4344 = and i32 %4343, 512
  %4345 = icmp eq i32 %4344, 0
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4352 = or i32 %4290, 16
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4358 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4359 = or i32 %4290, 32
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = call float @dx.op.dot4.f32(i32 56, float %4361, float %4362, float %4363, float %4364, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4366 = call float @dx.op.unary.f32(i32 27, float %4351)  ; Round_ni(value)
  %4367 = call float @dx.op.unary.f32(i32 6, float %4366)  ; FAbs(value)
  %4368 = call float @dx.op.unary.f32(i32 27, float %4358)  ; Round_ni(value)
  %4369 = call float @dx.op.unary.f32(i32 6, float %4368)  ; FAbs(value)
  %4370 = call float @dx.op.unary.f32(i32 6, float %4365)  ; FAbs(value)
  %4371 = call float @dx.op.unary.f32(i32 27, float %4370)  ; Round_ni(value)
  %4372 = fadd fast float %4369, %4367
  %4373 = fadd fast float %4372, %4371
  %4374 = fcmp fast oeq float %4373, 0.000000e+00
  %4375 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %4213, float %4214, float %4215, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4376 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %4213, float %4214, float %4215, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4377 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %4216, float %4217, float %4218, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4378 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %4216, float %4217, float %4218, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4379 = fsub fast float %4375, %4351
  %4380 = fsub fast float %4377, %4351
  %4381 = fsub fast float %4376, %4358
  %4382 = fsub fast float %4378, %4358
  %4383 = call float @dx.op.dot3.f32(i32 55, float %4293, float %4294, float %4295, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4386 = fadd fast float %4385, %4383
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4389 = fcmp fast ogt float %4387, %4388
  %4390 = and i1 %4374, %4389
  %4391 = and i1 %4345, %4390
  br i1 %4391, label %4418, label %4392

; <label>:4392                                    ; preds = %4747, %4499, %4418, %4260
  %4393 = phi float [ %4262, %4418 ], [ %4502, %4499 ], [ %4502, %4747 ], [ %4262, %4260 ]
  %4394 = phi float [ %4263, %4418 ], [ %4263, %4499 ], [ %4723, %4747 ], [ %4263, %4260 ]
  %4395 = phi float [ %4264, %4418 ], [ %4264, %4499 ], [ %4721, %4747 ], [ %4264, %4260 ]
  %4396 = phi float [ %4265, %4418 ], [ %4265, %4499 ], [ %4699, %4747 ], [ %4265, %4260 ]
  %4397 = phi float [ %4266, %4418 ], [ %4266, %4499 ], [ %4700, %4747 ], [ %4266, %4260 ]
  %4398 = phi float [ %4267, %4418 ], [ %4267, %4499 ], [ %4701, %4747 ], [ %4267, %4260 ]
  %4399 = phi float [ %4268, %4418 ], [ %4268, %4499 ], [ %4626, %4747 ], [ %4268, %4260 ]
  %4400 = phi float [ %4269, %4418 ], [ %4269, %4499 ], [ %4624, %4747 ], [ %4269, %4260 ]
  %4401 = phi float [ %4270, %4418 ], [ %4270, %4499 ], [ %4669, %4747 ], [ %4270, %4260 ]
  %4402 = phi float [ %4271, %4418 ], [ %4271, %4499 ], [ %4670, %4747 ], [ %4271, %4260 ]
  %4403 = phi float [ %4272, %4418 ], [ %4272, %4499 ], [ %4671, %4747 ], [ %4272, %4260 ]
  %4404 = phi float [ %4273, %4418 ], [ %4273, %4499 ], [ %4757, %4747 ], [ %4273, %4260 ]
  %4405 = phi float [ %4274, %4418 ], [ %4274, %4499 ], [ %4758, %4747 ], [ %4274, %4260 ]
  %4406 = phi float [ %4275, %4418 ], [ %4275, %4499 ], [ %4759, %4747 ], [ %4275, %4260 ]
  %4407 = phi float [ %4276, %4418 ], [ %4276, %4499 ], [ %4605, %4747 ], [ %4276, %4260 ]
  %4408 = phi float [ %4277, %4418 ], [ %4277, %4499 ], [ %4606, %4747 ], [ %4277, %4260 ]
  %4409 = phi float [ %4278, %4418 ], [ %4278, %4499 ], [ %4607, %4747 ], [ %4278, %4260 ]
  %4410 = phi float [ %4279, %4418 ], [ %4279, %4499 ], [ %4679, %4747 ], [ %4279, %4260 ]
  %4411 = phi float [ %4280, %4418 ], [ %4280, %4499 ], [ %4676, %4747 ], [ %4280, %4260 ]
  %4412 = phi float [ %4281, %4418 ], [ %4281, %4499 ], [ %4673, %4747 ], [ %4281, %4260 ]
  %4413 = phi float [ %4282, %4418 ], [ %4282, %4499 ], [ %4622, %4747 ], [ %4282, %4260 ]
  %4414 = phi float [ %4283, %4418 ], [ %4283, %4499 ], [ %4617, %4747 ], [ %4283, %4260 ]
  %4415 = phi float [ %4284, %4418 ], [ %4284, %4499 ], [ %4618, %4747 ], [ %4284, %4260 ]
  %4416 = phi float [ %4285, %4418 ], [ %4285, %4499 ], [ %4619, %4747 ], [ %4285, %4260 ]
  %4417 = icmp eq i32 %4342, %4259
  br i1 %4417, label %4760, label %4260

; <label>:4418                                    ; preds = %4260
  %4419 = extractvalue %dx.types.ResRet.f32 %4312, 3
  %4420 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4422 = extractvalue %dx.types.ResRet.f32 %4302, 1
  %4423 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4424 = extractvalue %dx.types.ResRet.i32 %4298, 3
  %4425 = extractvalue %dx.types.ResRet.i32 %4298, 2
  %4426 = add i32 %4424, 0
  %4427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4427, %dx.types.Handle %4428, float %4351, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float %4379, float %4381, float undef, float %4380, float %4382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fmul fast float %4430, %4423
  %4432 = fadd fast float %4431, %4422
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4351, %4307
  %4435 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4358, float %4434)  ; FMad(a,b,c)
  %4436 = fadd fast float %4435, %4421
  %4437 = fmul fast float %4351, %4309
  %4438 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4358, float %4437)  ; FMad(a,b,c)
  %4439 = fadd fast float %4438, %4420
  %4440 = fmul fast float %4379, %4307
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4381, float %4440)  ; FMad(a,b,c)
  %4442 = fmul fast float %4379, %4309
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4381, float %4442)  ; FMad(a,b,c)
  %4444 = fmul fast float %4380, %4307
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4382, float %4444)  ; FMad(a,b,c)
  %4446 = fmul fast float %4380, %4309
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4382, float %4446)  ; FMad(a,b,c)
  %4448 = add i32 %4425, 0
  %4449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4449, %dx.types.Handle %4428, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = and i32 %4343, 1024
  %4453 = icmp ne i32 %4452, 0
  %4454 = fcmp fast ogt float %4451, 0x3FE0101020000000
  %4455 = uitofp i1 %4454 to float
  %4456 = select i1 %4453, float %4455, float %4451
  %4457 = and i32 %4343, 8192
  %4458 = icmp ne i32 %4457, 0
  %4459 = select i1 %4458, float %4419, float 1.000000e+00
  %4460 = fmul fast float %4351, 2.000000e+00
  %4461 = fadd fast float %4460, -1.000000e+00
  %4462 = call float @dx.op.unary.f32(i32 6, float %4461)  ; FAbs(value)
  %4463 = fmul fast float %4462, %4340
  %4464 = fsub fast float %4463, %4340
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4358, 2.000000e+00
  %4467 = fadd fast float %4466, -1.000000e+00
  %4468 = call float @dx.op.unary.f32(i32 6, float %4467)  ; FAbs(value)
  %4469 = fmul fast float %4468, %4341
  %4470 = fsub fast float %4469, %4341
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4370, %4303
  %4473 = fsub fast float %4472, %4303
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4433, %4459
  %4476 = fmul fast float %4475, %4430
  %4477 = fmul fast float %4476, %4465
  %4478 = fmul fast float %4477, %4456
  %4479 = fmul fast float %4478, %4471
  %4480 = fmul fast float %4479, %4474
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4484 = fsub fast float %4387, %4483
  %4485 = fmul fast float %4484, %4482
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4480, %4304
  %4488 = fadd fast float %4480, %4304
  %4489 = fmul fast float %4488, %4313
  %4490 = fsub fast float %4489, %4313
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = and i32 %4343, 128
  %4493 = icmp ne i32 %4492, 0
  %4494 = select i1 %4493, float %4491, float %4487
  %4495 = fmul fast float %4494, %4486
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = fcmp fast ugt float %4495, %4497
  br i1 %4498, label %4499, label %4392

; <label>:4499                                    ; preds = %4418
  %4500 = select i1 %4458, float %4495, float 0.000000e+00
  %4501 = fadd fast float %4500, %4262
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  br i1 %4458, label %4392, label %4503

; <label>:4503                                    ; preds = %4499
  %4504 = and i32 %4343, 4
  %4505 = and i32 %4343, 8
  %4506 = add i32 %4299, 0
  %4507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4506, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4507, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.ResRet.f32 %4509, 3
  %4514 = bitcast float %4325 to i32
  %4515 = and i32 %4514, 255
  %4516 = uitofp i32 %4515 to float
  %4517 = lshr i32 %4514, 8
  %4518 = and i32 %4517, 255
  %4519 = uitofp i32 %4518 to float
  %4520 = fmul fast float %4513, %4516
  %4521 = fadd fast float %4520, %4519
  %4522 = fmul fast float %4521, 0x3F70101000000000
  %4523 = add i32 %4300, 0
  %4524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4524, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = extractvalue %dx.types.ResRet.f32 %4525, 3
  %4530 = bitcast float %4319 to i32
  %4531 = and i32 %4530, 255
  %4532 = uitofp i32 %4531 to float
  %4533 = lshr i32 %4530, 8
  %4534 = and i32 %4533, 255
  %4535 = uitofp i32 %4534 to float
  %4536 = lshr i32 %4530, 16
  %4537 = and i32 %4536, 255
  %4538 = uitofp i32 %4537 to float
  %4539 = fmul fast float %4538, 0x3F70101000000000
  %4540 = fmul fast float %4526, %4532
  %4541 = fadd fast float %4540, %4535
  %4542 = fmul fast float %4541, 0x3F70101000000000
  %4543 = fadd fast float %4527, -5.000000e-01
  %4544 = fadd fast float %4529, -5.000000e-01
  %4545 = fmul fast float %4543, %4539
  %4546 = fmul fast float %4544, %4539
  %4547 = fadd fast float %4545, 5.000000e-01
  %4548 = fadd fast float %4546, 5.000000e-01
  %4549 = fmul fast float %4510, %4328
  %4550 = fmul fast float %4511, %4329
  %4551 = fmul fast float %4512, %4330
  %4552 = fmul fast float %4547, 2.000000e+00
  %4553 = fadd fast float %4552, -1.000000e+00
  %4554 = fmul fast float %4548, 2.000000e+00
  %4555 = fadd fast float %4554, -1.000000e+00
  %4556 = fadd fast float %4553, %4555
  %4557 = fmul fast float %4556, 5.000000e-01
  %4558 = fsub fast float %4553, %4555
  %4559 = fmul fast float %4558, 5.000000e-01
  %4560 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4561 = fsub fast float 1.000000e+00, %4560
  %4562 = call float @dx.op.unary.f32(i32 6, float %4559)  ; FAbs(value)
  %4563 = fsub fast float %4561, %4562
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4559, float %4563, float %4557, float %4559, float %4563)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.unary.f32(i32 25, float %4564)  ; Rsqrt(value)
  %4566 = fmul fast float %4557, %4565
  %4567 = fmul fast float %4559, %4565
  %4568 = fmul fast float %4565, %4563
  %4569 = fmul fast float %4568, %4293
  %4570 = fmul fast float %4568, %4294
  %4571 = fmul fast float %4568, %4295
  %4572 = fmul fast float %4566, %4316
  %4573 = fmul fast float %4566, %4317
  %4574 = fmul fast float %4566, %4318
  %4575 = fadd fast float %4572, %4569
  %4576 = fadd fast float %4573, %4570
  %4577 = fadd fast float %4574, %4571
  %4578 = fmul fast float %4567, %4322
  %4579 = fmul fast float %4567, %4323
  %4580 = fmul fast float %4567, %4324
  %4581 = fadd fast float %4575, %4578
  %4582 = fadd fast float %4576, %4579
  %4583 = fadd fast float %4577, %4580
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = call float @dx.op.unary.f32(i32 25, float %4584)  ; Rsqrt(value)
  %4586 = fmul fast float %4581, %4585
  %4587 = fmul fast float %4582, %4585
  %4588 = fmul fast float %4583, %4585
  %4589 = icmp ne i32 %4505, 0
  %4590 = select i1 %4589, float 1.000000e+00, float 0.000000e+00
  %4591 = fmul fast float %4495, %4590
  %4592 = and i32 %4343, 1
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4594, label %4598

; <label>:4594                                    ; preds = %4503
  %4595 = fsub fast float %4586, %4276
  %4596 = fsub fast float %4587, %4277
  %4597 = fsub fast float %4588, %4278
  br label %4598

; <label>:4598                                    ; preds = %4594, %4503
  %4599 = phi float [ %4595, %4594 ], [ %4586, %4503 ]
  %4600 = phi float [ %4596, %4594 ], [ %4587, %4503 ]
  %4601 = phi float [ %4597, %4594 ], [ %4588, %4503 ]
  %4602 = fmul float %4601, %4591
  %4603 = fmul float %4600, %4591
  %4604 = fmul float %4599, %4591
  %4605 = fadd fast float %4604, %4276
  %4606 = fadd fast float %4603, %4277
  %4607 = fadd fast float %4602, %4278
  %4608 = icmp ne i32 %4504, 0
  %4609 = select i1 %4608, float 1.000000e+00, float 0.000000e+00
  %4610 = fmul fast float %4495, %4609
  %4611 = fsub fast float %4549, %4283
  %4612 = fsub fast float %4550, %4284
  %4613 = fsub fast float %4551, %4285
  %4614 = fmul fast float %4611, %4610
  %4615 = fmul fast float %4612, %4610
  %4616 = fmul fast float %4613, %4610
  %4617 = fadd fast float %4614, %4283
  %4618 = fadd fast float %4615, %4284
  %4619 = fadd fast float %4616, %4285
  %4620 = fsub fast float %4522, %4282
  %4621 = fmul fast float %4620, %4610
  %4622 = fadd fast float %4621, %4282
  %4623 = fmul fast float %4610, %4269
  %4624 = fsub fast float %4269, %4623
  %4625 = fmul fast float %4610, %4268
  %4626 = fsub fast float %4268, %4625
  %4627 = bitcast float %4337 to i32
  %4628 = lshr i32 %4627, 16
  %4629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4628)  ; LegacyF16ToF32(value)
  %4630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.i32 %4630, 0
  %4632 = and i32 %4631, 1
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4634, label %4659

; <label>:4634                                    ; preds = %4598
  %4635 = fadd fast float %4522, 0xBFB99999A0000000
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, 0x3FF1C71C80000000
  %4638 = fsub fast float 1.000000e+00, %4637
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, %4549
  %4641 = fmul fast float %4639, %4550
  %4642 = fmul fast float %4639, %4551
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4647 = call float @dx.op.binary.f32(i32 35, float %4643, float %4646)  ; FMax(a,b)
  %4648 = fcmp fast ogt float %4647, 0.000000e+00
  %4649 = bitcast float %4647 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = select i1 %4648, float %4651, float 0.000000e+00
  %4653 = fmul fast float %4643, %4629
  %4654 = fmul fast float %4644, %4629
  %4655 = fmul fast float %4645, %4629
  %4656 = fmul fast float %4653, %4652
  %4657 = fmul fast float %4654, %4652
  %4658 = fmul fast float %4655, %4652
  br label %4659

; <label>:4659                                    ; preds = %4634, %4598
  %4660 = phi float [ %4629, %4598 ], [ %4656, %4634 ]
  %4661 = phi float [ %4629, %4598 ], [ %4657, %4634 ]
  %4662 = phi float [ %4629, %4598 ], [ %4658, %4634 ]
  %4663 = fsub fast float %4660, %4270
  %4664 = fsub fast float %4661, %4271
  %4665 = fsub fast float %4662, %4272
  %4666 = fmul fast float %4663, %4610
  %4667 = fmul fast float %4664, %4610
  %4668 = fmul fast float %4665, %4610
  %4669 = fadd fast float %4666, %4270
  %4670 = fadd fast float %4667, %4271
  %4671 = fadd fast float %4668, %4272
  %4672 = fadd fast float %4495, %4281
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fsub fast float %4542, %4280
  %4675 = fmul fast float %4674, %4591
  %4676 = fadd fast float %4675, %4280
  %4677 = fsub fast float %4528, %4279
  %4678 = fmul fast float %4677, %4591
  %4679 = fadd fast float %4678, %4279
  br i1 %4593, label %4688, label %4680

; <label>:4680                                    ; preds = %4659
  %4681 = and i32 %4343, 32768
  %4682 = icmp eq i32 %4681, 0
  br i1 %4682, label %4698, label %4683

; <label>:4683                                    ; preds = %4680
  %4684 = fmul fast float %4591, 1.270000e+02
  %4685 = fadd fast float %4684, %4265
  %4686 = fadd fast float %4684, %4266
  %4687 = fadd fast float %4684, %4267
  br label %4698

; <label>:4688                                    ; preds = %4659
  %4689 = fsub fast float 1.270000e+02, %4265
  %4690 = fsub fast float 1.270000e+02, %4266
  %4691 = fsub fast float 1.270000e+02, %4267
  %4692 = fmul fast float %4591, %4689
  %4693 = fmul fast float %4591, %4690
  %4694 = fmul fast float %4591, %4691
  %4695 = fadd fast float %4692, %4265
  %4696 = fadd fast float %4693, %4266
  %4697 = fadd fast float %4694, %4267
  br label %4698

; <label>:4698                                    ; preds = %4688, %4683, %4680
  %4699 = phi float [ %4685, %4683 ], [ %4265, %4680 ], [ %4695, %4688 ]
  %4700 = phi float [ %4686, %4683 ], [ %4266, %4680 ], [ %4696, %4688 ]
  %4701 = phi float [ %4687, %4683 ], [ %4267, %4680 ], [ %4697, %4688 ]
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fmul fast float %4705, %4702
  %4707 = fadd fast float %4706, %4704
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = bitcast float %4331 to i32
  %4710 = and i32 %4709, 65535
  %4711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4710)  ; LegacyF16ToF32(value)
  %4712 = lshr i32 %4709, 16
  %4713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4712)  ; LegacyF16ToF32(value)
  %4714 = fcmp fast oge float %4711, 0.000000e+00
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = select i1 %4714, float %4711, float %4716
  %4718 = fadd fast float %4717, %4713
  %4719 = fsub fast float %4708, %4264
  %4720 = fmul fast float %4719, %4495
  %4721 = fadd fast float %4720, %4264
  %4722 = fmul fast float %4718, %4495
  %4723 = call float @dx.op.binary.f32(i32 35, float %4263, float %4722)  ; FMax(a,b)
  %4724 = and i32 %4343, 16
  %4725 = icmp eq i32 %4724, 0
  br i1 %4725, label %4747, label %4726

; <label>:4726                                    ; preds = %4698
  %4727 = add i32 %4334, 0
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4728, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.ResRet.f32 %4729, 1
  %4732 = extractvalue %dx.types.ResRet.f32 %4729, 2
  %4733 = and i32 %4627, 65535
  %4734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4733)  ; LegacyF16ToF32(value)
  %4735 = fmul fast float %4730, %4328
  %4736 = fmul fast float %4731, %4329
  %4737 = fmul fast float %4732, %4330
  %4738 = and i32 %4343, 16384
  %4739 = icmp ne i32 %4738, 0
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = select i1 %4739, float %4741, float 1.000000e+00
  %4743 = fmul fast float %4742, %4734
  %4744 = fmul fast float %4735, %4743
  %4745 = fmul fast float %4736, %4743
  %4746 = fmul fast float %4737, %4743
  br label %4747

; <label>:4747                                    ; preds = %4726, %4698
  %4748 = phi float [ %4744, %4726 ], [ 0.000000e+00, %4698 ]
  %4749 = phi float [ %4745, %4726 ], [ 0.000000e+00, %4698 ]
  %4750 = phi float [ %4746, %4726 ], [ 0.000000e+00, %4698 ]
  %4751 = fsub fast float %4748, %4273
  %4752 = fsub fast float %4749, %4274
  %4753 = fsub fast float %4750, %4275
  %4754 = fmul fast float %4751, %4495
  %4755 = fmul fast float %4752, %4495
  %4756 = fmul fast float %4753, %4495
  %4757 = fadd fast float %4754, %4273
  %4758 = fadd fast float %4755, %4274
  %4759 = fadd fast float %4756, %4275
  br label %4392

; <label>:4760                                    ; preds = %4392
  br label %4761

; <label>:4761                                    ; preds = %4760, %4206
  %4762 = phi float [ 0.000000e+00, %4206 ], [ %4393, %4760 ]
  %4763 = phi float [ %4175, %4206 ], [ %4394, %4760 ]
  %4764 = phi float [ %4167, %4206 ], [ %4395, %4760 ]
  %4765 = phi float [ %4157, %4206 ], [ %4396, %4760 ]
  %4766 = phi float [ %4158, %4206 ], [ %4397, %4760 ]
  %4767 = phi float [ %4159, %4206 ], [ %4398, %4760 ]
  %4768 = phi float [ 0.000000e+00, %4206 ], [ %4399, %4760 ]
  %4769 = phi float [ 0.000000e+00, %4206 ], [ %4400, %4760 ]
  %4770 = phi float [ %4160, %4206 ], [ %4401, %4760 ]
  %4771 = phi float [ %4161, %4206 ], [ %4402, %4760 ]
  %4772 = phi float [ %4162, %4206 ], [ %4403, %4760 ]
  %4773 = phi float [ %4154, %4206 ], [ %4404, %4760 ]
  %4774 = phi float [ %4155, %4206 ], [ %4405, %4760 ]
  %4775 = phi float [ %4156, %4206 ], [ %4406, %4760 ]
  %4776 = phi float [ %4201, %4206 ], [ %4407, %4760 ]
  %4777 = phi float [ %4202, %4206 ], [ %4408, %4760 ]
  %4778 = phi float [ %4203, %4206 ], [ %4409, %4760 ]
  %4779 = phi float [ %4165, %4206 ], [ %4410, %4760 ]
  %4780 = phi float [ %4164, %4206 ], [ %4411, %4760 ]
  %4781 = phi float [ 0.000000e+00, %4206 ], [ %4412, %4760 ]
  %4782 = phi float [ %4163, %4206 ], [ %4413, %4760 ]
  %4783 = phi float [ %4151, %4206 ], [ %4414, %4760 ]
  %4784 = phi float [ %4152, %4206 ], [ %4415, %4760 ]
  %4785 = phi float [ %4153, %4206 ], [ %4416, %4760 ]
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %4776, float %4777, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 25, float %4786)  ; Rsqrt(value)
  %4788 = fmul fast float %4787, %4776
  %4789 = fmul fast float %4787, %4777
  %4790 = fmul fast float %4787, %4778
  %4791 = fadd fast float %4781, %992
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4789, float %4790, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4794, %4788
  %4796 = fmul fast float %4794, %4789
  %4797 = fmul fast float %4794, %4790
  br label %4798

; <label>:4798                                    ; preds = %4761, %4148
  %4799 = phi float [ %4795, %4761 ], [ %4201, %4148 ]
  %4800 = phi float [ %4796, %4761 ], [ %4202, %4148 ]
  %4801 = phi float [ %4797, %4761 ], [ %4203, %4148 ]
  %4802 = phi float [ %4783, %4761 ], [ %4151, %4148 ]
  %4803 = phi float [ %4784, %4761 ], [ %4152, %4148 ]
  %4804 = phi float [ %4785, %4761 ], [ %4153, %4148 ]
  %4805 = phi float [ %4773, %4761 ], [ %4154, %4148 ]
  %4806 = phi float [ %4774, %4761 ], [ %4155, %4148 ]
  %4807 = phi float [ %4775, %4761 ], [ %4156, %4148 ]
  %4808 = phi float [ %4770, %4761 ], [ %4160, %4148 ]
  %4809 = phi float [ %4771, %4761 ], [ %4161, %4148 ]
  %4810 = phi float [ %4772, %4761 ], [ %4162, %4148 ]
  %4811 = phi float [ %4765, %4761 ], [ %4157, %4148 ]
  %4812 = phi float [ %4766, %4761 ], [ %4158, %4148 ]
  %4813 = phi float [ %4767, %4761 ], [ %4159, %4148 ]
  %4814 = phi float [ %4782, %4761 ], [ %4163, %4148 ]
  %4815 = phi float [ %4792, %4761 ], [ %992, %4148 ]
  %4816 = phi float [ %4780, %4761 ], [ %4164, %4148 ]
  %4817 = phi float [ %4779, %4761 ], [ %4165, %4148 ]
  %4818 = phi float [ %4769, %4761 ], [ 0.000000e+00, %4148 ]
  %4819 = phi float [ %4768, %4761 ], [ 0.000000e+00, %4148 ]
  %4820 = phi float [ %4762, %4761 ], [ 0.000000e+00, %4148 ]
  %4821 = phi float [ %4763, %4761 ], [ %4175, %4148 ]
  %4822 = phi float [ %4764, %4761 ], [ %4167, %4148 ]
  %4823 = fadd fast float %4814, 0xBFB99999A0000000
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fmul fast float %4824, 0x3FF1C71C80000000
  %4826 = call float @dx.op.binary.f32(i32 36, float %4814, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4827 = fsub fast float 1.000000e+00, %4825
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = fmul fast float %4828, %4802
  %4830 = fmul fast float %4828, %4803
  %4831 = fmul fast float %4828, %4804
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = fmul fast float %4825, %4802
  %4836 = fmul fast float %4825, %4803
  %4837 = fmul fast float %4825, %4804
  %4838 = fadd fast float %4835, %4826
  %4839 = fadd fast float %4836, %4826
  %4840 = fadd fast float %4837, %4826
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.i32 %4845, 0
  %4847 = and i32 %4846, 1
  %4848 = icmp eq i32 %4847, 0
  br i1 %4848, label %4863, label %4849

; <label>:4849                                    ; preds = %4798
  %4850 = call float @dx.op.binary.f32(i32 35, float %4833, float %4834)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4832, float %4850)  ; FMax(a,b)
  %4852 = fcmp fast ogt float %4851, 0.000000e+00
  %4853 = bitcast float %4851 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = select i1 %4852, float %4855, float 0.000000e+00
  %4857 = fmul fast float %4832, %4808
  %4858 = fmul fast float %4833, %4809
  %4859 = fmul fast float %4834, %4810
  %4860 = fmul fast float %4857, %4856
  %4861 = fmul fast float %4858, %4856
  %4862 = fmul fast float %4859, %4856
  br label %4863

; <label>:4863                                    ; preds = %4849, %4798
  %4864 = phi float [ %4860, %4849 ], [ %4808, %4798 ]
  %4865 = phi float [ %4861, %4849 ], [ %4809, %4798 ]
  %4866 = phi float [ %4862, %4849 ], [ %4810, %4798 ]
  %4867 = call float @dx.op.binary.f32(i32 36, float %4811, float 1.270000e+02)  ; FMin(a,b)
  %4868 = call float @dx.op.binary.f32(i32 36, float %4812, float 1.270000e+02)  ; FMin(a,b)
  %4869 = call float @dx.op.binary.f32(i32 36, float %4813, float 1.270000e+02)  ; FMin(a,b)
  %4870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.i32 %4870, 3
  %4872 = and i32 %4871, 8
  %4873 = icmp ne i32 %4872, 0
  %4874 = call float @dx.op.binary.f32(i32 35, float %4832, float %4802)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4833, float %4802)  ; FMax(a,b)
  %4876 = call float @dx.op.binary.f32(i32 35, float %4834, float %4802)  ; FMax(a,b)
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %4834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = select i1 %170, float %4802, float %4832
  %4879 = select i1 %170, float %4877, float %4833
  %4880 = select i1 %170, float 1.000000e+00, float %4834
  %4881 = select i1 %4873, float %4874, float %4878
  %4882 = select i1 %4873, float %4875, float %4879
  %4883 = select i1 %4873, float %4876, float %4880
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = select i1 %170, float %4884, float %4864
  %4886 = select i1 %170, float %4884, float %4865
  %4887 = select i1 %170, float %4884, float %4866
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = fadd fast float %4889, %128
  %4893 = fadd fast float %4890, %129
  %4894 = fadd fast float %4891, %130
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4898 = fsub fast float %4892, %4896
  %4899 = fsub fast float %4893, %4897
  %4900 = fmul fast float %4898, %4898
  %4901 = fmul fast float %4899, %4899
  %4902 = fadd fast float %4900, %4901
  %4903 = call float @dx.op.unary.f32(i32 24, float %4902)  ; Sqrt(value)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4905 = fcmp fast olt float %4903, %4904
  br i1 %4905, label %4906, label %4973

; <label>:4906                                    ; preds = %4863
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4917 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4918 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4919 = fadd fast float %4916, %4892
  %4920 = fadd fast float %4917, %4893
  %4921 = fadd fast float %4918, %4894
  %4922 = fmul fast float %4919, %4908
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4910, float %4922)  ; FMad(a,b,c)
  %4924 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4912, float %4923)  ; FMad(a,b,c)
  %4925 = fmul fast float %4919, %4913
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4914, float %4925)  ; FMad(a,b,c)
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4915, float %4926)  ; FMad(a,b,c)
  %4928 = fsub fast float %4924, %4916
  %4929 = fsub fast float %4927, %4917
  %4930 = fsub fast float %4928, %4896
  %4931 = fadd fast float %4930, %4904
  %4932 = fsub fast float %4929, %4897
  %4933 = fadd fast float %4932, %4904
  %4934 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4935 = fmul fast float %4931, %4934
  %4936 = fmul fast float %4933, %4934
  %4937 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = fsub fast float 1.000000e+00, %4937
  %4940 = fsub fast float 1.000000e+00, %4938
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = fcmp fast ugt float %4942, 0.000000e+00
  br i1 %4943, label %4944, label %5247

; <label>:4944                                    ; preds = %4906
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4947 = fmul fast float %4946, %4942
  %4948 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4949 = fadd fast float %4948, %4947
  %4950 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4951 = fadd fast float %4949, %4918
  %4952 = fmul fast float %4924, %4912
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4927, float %4915, float %4952)  ; FMad(a,b,c)
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4950, float %4953)  ; FMad(a,b,c)
  %4955 = fsub fast float %4954, %4918
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4958 = fsub fast float %4955, %4957
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 1
  %4962 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.ResRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.ResRet.f32 %4963, 2
  %4967 = fadd fast float %4964, %4960
  %4968 = fmul fast float %4967, 0x3F847AE140000000
  %4969 = fadd fast float %4965, %4961
  %4970 = fmul fast float %4969, 0x3F847AE140000000
  %4971 = fadd fast float %4966, %4962
  %4972 = fmul fast float %4971, 0x3F847AE140000000
  br label %5247

; <label>:4973                                    ; preds = %4863
  %4974 = and i32 %146, 1
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %5247, label %4976

; <label>:4976                                    ; preds = %4973
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4987 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4988 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4989 = fadd fast float %4986, %4892
  %4990 = fadd fast float %4987, %4893
  %4991 = fadd fast float %4988, %4894
  %4992 = fmul fast float %4989, %4978
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4980, float %4992)  ; FMad(a,b,c)
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4982, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4989, %4983
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4984, float %4995)  ; FMad(a,b,c)
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4985, float %4996)  ; FMad(a,b,c)
  %4998 = fsub fast float %4994, %4986
  %4999 = fsub fast float %4997, %4987
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.i32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.i32 %5007, 1
  %5010 = udiv i32 %5009, %5008
  %5011 = fsub fast float %4998, %5001
  %5012 = fsub fast float %4999, %5002
  %5013 = call float @dx.op.binary.f32(i32 35, float %5011, float 0.000000e+00)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5012, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 36, float %5013, float %5003)  ; FMin(a,b)
  %5016 = call float @dx.op.binary.f32(i32 36, float %5014, float %5004)  ; FMin(a,b)
  %5017 = add i32 %5008, -1
  %5018 = add i32 %5010, -1
  %5019 = fmul fast float %5015, %5006
  %5020 = fmul fast float %5016, %5006
  %5021 = fptoui float %5019 to i32
  %5022 = fptoui float %5020 to i32
  %5023 = call i32 @dx.op.binary.i32(i32 40, i32 %5021, i32 %5017)  ; UMin(a,b)
  %5024 = call i32 @dx.op.binary.i32(i32 40, i32 %5022, i32 %5018)  ; UMin(a,b)
  %5025 = mul i32 %5024, %5008
  %5026 = add i32 %5025, %5023
  %5027 = shl i32 %5026, 2
  %5028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.i32 %5028, 0
  %5030 = icmp eq i32 %5029, -1
  br i1 %5030, label %5247, label %5031

; <label>:5031                                    ; preds = %4976
  %5032 = mul i32 %5029, 148
  %5033 = add i32 %5032, 4
  %5034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = add i32 %5032, 8
  %5037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = add i32 %5032, 36
  %5040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = add i32 %5032, 60
  %5043 = add i32 %5032, 92
  %5044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.i32 %5044, 0
  %5046 = add i32 %5032, 116
  %5047 = fsub fast float %4998, %5035
  %5048 = fsub fast float %4999, %5038
  %5049 = fmul fast float %5006, %5047
  %5050 = fmul fast float %5006, %5048
  %5051 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = call float @dx.op.unary.f32(i32 83, float %5051)  ; DerivCoarseX(value)
  %5057 = call float @dx.op.unary.f32(i32 83, float %5053)  ; DerivCoarseX(value)
  %5058 = call float @dx.op.unary.f32(i32 84, float %5051)  ; DerivCoarseY(value)
  %5059 = call float @dx.op.unary.f32(i32 84, float %5053)  ; DerivCoarseY(value)
  %5060 = fmul fast float %5056, %5055
  %5061 = fmul fast float %5057, %5055
  %5062 = fmul fast float %5058, %5055
  %5063 = fmul fast float %5059, %5055
  %5064 = call float @dx.op.dot2.f32(i32 54, float %5062, float %5063, float %5062, float %5063)  ; Dot2(ax,ay,bx,by)
  %5065 = call float @dx.op.dot2.f32(i32 54, float %5060, float %5061, float %5060, float %5061)  ; Dot2(ax,ay,bx,by)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5065, float %5064)  ; FMax(a,b)
  %5067 = call float @dx.op.unary.f32(i32 23, float %5066)  ; Log(value)
  %5068 = fmul fast float %5067, 5.000000e-01
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = fadd fast float %5070, %5068
  %5072 = call float @dx.op.binary.f32(i32 35, float %5071, float 0.000000e+00)  ; FMax(a,b)
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5075 = fadd fast float %5074, %5072
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5078 = fadd fast float %5075, %5077
  %5079 = add i32 %5045, 0
  %5080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5080, i32 0)  ; GetDimensions(handle,mipLevel)
  %5082 = extractvalue %dx.types.Dimensions %5081, 0
  %5083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5082)  ; FirstbitLo(value)
  %5084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.i32 %5084, 1
  %5086 = sub nsw i32 %5085, %5083
  %5087 = sitofp i32 %5086 to float
  %5088 = fsub fast float %5078, %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0.000000e+00)  ; FMax(a,b)
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5080, %dx.types.Handle %27, float %5051, float %5053, float %5041, float undef, i32 0, i32 0, i32 undef, float %5089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = fcmp ule float %5091, 0x3FE0101020000000
  %5093 = extractvalue %dx.types.CBufRet.i32 %5084, 0
  %5094 = and i32 %5093, 128
  %5095 = icmp ne i32 %5094, 0
  %5096 = and i1 %5092, %5095
  br i1 %5096, label %5247, label %5097

; <label>:5097                                    ; preds = %5031
  %5098 = add i32 %5032, 20
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = add i32 %5032, 24
  %5102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = add i32 %5032, 40
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = add i32 %5032, 96
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5112 = fmul fast float %5111, %5051
  %5113 = fmul fast float %5111, %5053
  %5114 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5115 = fadd fast float %5112, %5114
  %5116 = fadd fast float %5113, %5114
  %5117 = add i32 %5109, 0
  %5118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5118, i32 0)  ; GetDimensions(handle,mipLevel)
  %5120 = extractvalue %dx.types.Dimensions %5119, 0
  %5121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5120)  ; FirstbitLo(value)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 1
  %5124 = sub nsw i32 %5123, %5121
  %5125 = sitofp i32 %5124 to float
  %5126 = fsub fast float %5075, %5125
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0.000000e+00)  ; FMax(a,b)
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5118, %dx.types.Handle %27, float %5115, float %5116, float %5106, float undef, i32 0, i32 0, i32 undef, float %5127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fmul fast float %5129, %5100
  %5131 = fadd fast float %5130, %5103
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5140 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5141 = fadd fast float %5137, %4998
  %5142 = fadd fast float %5139, %4999
  %5143 = fadd fast float %5131, %5140
  %5144 = fmul fast float %5141, %5133
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5134, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5143, float %5135, float %5145)  ; FMad(a,b,c)
  %5147 = fsub fast float %5146, %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5150 = fsub fast float %5147, %5149
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 0
  %5153 = call i32 @dx.op.binary.i32(i32 40, i32 %5029, i32 %5152)  ; UMin(a,b)
  %5154 = mul i32 %5153, 36
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = add i32 %5154, 4
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = fmul fast float %5159, %5051
  %5161 = fmul fast float %5159, %5053
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5163 = fadd fast float %5160, %5162
  %5164 = fadd fast float %5161, %5162
  %5165 = icmp eq i32 %5156, 0
  br i1 %5165, label %5234, label %5166

; <label>:5166                                    ; preds = %5097
  br label %5167

; <label>:5167                                    ; preds = %5224, %5166
  %5168 = phi float [ %5225, %5224 ], [ 0.000000e+00, %5166 ]
  %5169 = phi float [ %5226, %5224 ], [ 0.000000e+00, %5166 ]
  %5170 = phi float [ %5227, %5224 ], [ 0.000000e+00, %5166 ]
  %5171 = phi float [ %5228, %5224 ], [ 0.000000e+00, %5166 ]
  %5172 = phi float [ %5229, %5224 ], [ 0.000000e+00, %5166 ]
  %5173 = phi float [ %5230, %5224 ], [ 0.000000e+00, %5166 ]
  %5174 = phi i32 [ %5231, %5224 ], [ 0, %5166 ]
  %5175 = shl i32 %5174, 2
  %5176 = add i32 %5042, %5175
  %5177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = add i32 %5046, %5175
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = add i32 %5181, 0
  %5183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5183, i32 0)  ; GetDimensions(handle,mipLevel)
  %5185 = extractvalue %dx.types.Dimensions %5184, 0
  %5186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5185)  ; FirstbitLo(value)
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 1
  %5189 = sub nsw i32 %5188, %5186
  %5190 = sitofp i32 %5189 to float
  %5191 = fsub fast float %5075, %5190
  %5192 = call float @dx.op.binary.f32(i32 35, float %5191, float 0.000000e+00)  ; FMax(a,b)
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5183, %dx.types.Handle %27, float %5163, float %5164, float %5178, float undef, i32 0, i32 0, i32 undef, float %5192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ogt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5224

; <label>:5196                                    ; preds = %5167
  %5197 = add i32 %5157, %5175
  %5198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5197, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.i32 %5198, 0
  %5200 = and i32 %5199, 32767
  %5201 = mul nuw nsw i32 %5200, 928
  %5202 = add nuw nsw i32 %5201, 48
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = add nuw nsw i32 %5201, 60
  %5208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = fmul fast float %5204, %5194
  %5213 = fmul fast float %5205, %5194
  %5214 = fmul fast float %5206, %5194
  %5215 = fadd fast float %5212, %5168
  %5216 = fadd fast float %5213, %5169
  %5217 = fadd fast float %5214, %5170
  %5218 = fmul fast float %5209, %5194
  %5219 = fmul fast float %5210, %5194
  %5220 = fmul fast float %5211, %5194
  %5221 = fadd fast float %5218, %5171
  %5222 = fadd fast float %5219, %5172
  %5223 = fadd fast float %5220, %5173
  br label %5224

; <label>:5224                                    ; preds = %5196, %5167
  %5225 = phi float [ %5215, %5196 ], [ %5168, %5167 ]
  %5226 = phi float [ %5216, %5196 ], [ %5169, %5167 ]
  %5227 = phi float [ %5217, %5196 ], [ %5170, %5167 ]
  %5228 = phi float [ %5221, %5196 ], [ %5171, %5167 ]
  %5229 = phi float [ %5222, %5196 ], [ %5172, %5167 ]
  %5230 = phi float [ %5223, %5196 ], [ %5173, %5167 ]
  %5231 = add nuw i32 %5174, 1
  %5232 = icmp eq i32 %5231, %5156
  br i1 %5232, label %5233, label %5167

; <label>:5233                                    ; preds = %5224
  br label %5234

; <label>:5234                                    ; preds = %5233, %5097
  %5235 = phi float [ 0.000000e+00, %5097 ], [ %5225, %5233 ]
  %5236 = phi float [ 0.000000e+00, %5097 ], [ %5226, %5233 ]
  %5237 = phi float [ 0.000000e+00, %5097 ], [ %5227, %5233 ]
  %5238 = phi float [ 0.000000e+00, %5097 ], [ %5228, %5233 ]
  %5239 = phi float [ 0.000000e+00, %5097 ], [ %5229, %5233 ]
  %5240 = phi float [ 0.000000e+00, %5097 ], [ %5230, %5233 ]
  %5241 = fadd fast float %5238, %5235
  %5242 = fmul fast float %5241, 0x3F847AE140000000
  %5243 = fadd fast float %5239, %5236
  %5244 = fmul fast float %5243, 0x3F847AE140000000
  %5245 = fadd fast float %5240, %5237
  %5246 = fmul fast float %5245, 0x3F847AE140000000
  br label %5247

; <label>:5247                                    ; preds = %5234, %5031, %4976, %4973, %4944, %4906
  %5248 = phi float [ %4958, %4944 ], [ -1.310720e+05, %4906 ], [ %5150, %5234 ], [ -1.310720e+05, %4976 ], [ -1.310720e+05, %5031 ], [ -1.310720e+05, %4973 ]
  %5249 = phi float [ %4968, %4944 ], [ 0.000000e+00, %4906 ], [ %5242, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5250 = phi float [ %4970, %4944 ], [ 0.000000e+00, %4906 ], [ %5244, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5251 = phi float [ %4972, %4944 ], [ 0.000000e+00, %4906 ], [ %5246, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5252 = phi i1 [ true, %4944 ], [ false, %4906 ], [ true, %5234 ], [ false, %4976 ], [ false, %5031 ], [ false, %4973 ]
  %5253 = and i32 %146, 3
  %5254 = icmp eq i32 %5253, 1
  %5255 = select i1 %5254, float 1.000000e+00, float 0.000000e+00
  %5256 = fsub fast float %5248, %130
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5252, float %5257, float 1.000000e+00
  %5259 = fmul fast float %5258, %5255
  %5260 = icmp eq i32 %5253, 3
  %5261 = select i1 %5260, float 1.000000e+00, float %5259
  %5262 = call float @dx.op.binary.f32(i32 35, float %4820, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fcmp fast une float %5263, 0.000000e+00
  %5265 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  br i1 %5264, label %5274, label %5267

; <label>:5267                                    ; preds = %5247
  %5268 = fmul fast float %5266, %128
  %5269 = fmul fast float %5266, %129
  %5270 = fmul fast float %5266, %130
  %5271 = fsub fast float -0.000000e+00, %5268
  %5272 = fsub fast float -0.000000e+00, %5269
  %5273 = fsub fast float -0.000000e+00, %5270
  br label %5442

; <label>:5274                                    ; preds = %5247
  %5275 = fmul fast float %128, %5266
  %5276 = fsub fast float -0.000000e+00, %5275
  %5277 = fmul fast float %129, %5266
  %5278 = fsub fast float -0.000000e+00, %5277
  %5279 = fmul fast float %130, %5266
  %5280 = fsub fast float -0.000000e+00, %5279
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5278, float %5280, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5263, 2.500000e+00
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5263, 0x4013FFFFE0000000
  %5285 = fadd fast float %5284, 0xBFFFFFFFE0000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fmul fast float %5263, 0x4004000020000000
  %5288 = fadd fast float %5287, 0xBFF8000040000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5291 = fmul fast float %4823, 1.000000e+01
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fsub fast float 3.000000e+00, %5293
  %5295 = fmul fast float %5292, %5292
  %5296 = fmul fast float %5295, %5294
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fsub fast float 0x3FE3333340000000, %4844
  %5299 = fmul fast float %5298, 0x400AAAAAA0000000
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5297, %5300
  %5302 = fmul fast float %4881, 0x3FEA2B8620000000
  %5303 = fmul fast float %4882, 0x3FEA2B8620000000
  %5304 = fmul fast float %4883, 0x3FEA2B8620000000
  %5305 = fadd fast float %5302, 0x3FC81DFBA0000000
  %5306 = fmul fast float %5305, %4881
  %5307 = fadd fast float %5306, 0x3F910E6020000000
  %5308 = fadd fast float %5303, 0x3FC81DFBA0000000
  %5309 = fmul fast float %5308, %4882
  %5310 = fadd fast float %5309, 0x3F910E6020000000
  %5311 = fadd fast float %5304, 0x3FC81DFBA0000000
  %5312 = fmul fast float %5311, %4883
  %5313 = fadd fast float %5312, 0x3F910E6020000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = fsub fast float %5314, %4881
  %5318 = fsub fast float %5315, %4882
  %5319 = fsub fast float %5316, %4883
  %5320 = fmul fast float %5317, %5290
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5318, %5290
  %5323 = fmul fast float %5322, %5301
  %5324 = fmul fast float %5319, %5290
  %5325 = fmul fast float %5324, %5301
  %5326 = fadd fast float %5321, %4881
  %5327 = fadd fast float %5323, %4882
  %5328 = fadd fast float %5325, %4883
  %5329 = fmul fast float %4817, %4817
  %5330 = fmul fast float %5329, %5329
  %5331 = fadd fast float %5286, 1.000000e+00
  %5332 = fsub fast float %5331, %5301
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fsub fast float 1.000000e+00, %5330
  %5337 = call float @dx.op.binary.f32(i32 36, float %5333, float %5336)  ; FMin(a,b)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5337, float %5338)  ; FMax(a,b)
  %5340 = fadd fast float %5335, 0xBFE4CCCCC0000000
  %5341 = fmul fast float %5340, 0x4006DB6DA0000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = fsub fast float 3.000000e+00, %5343
  %5345 = bitcast float %4841 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = bitcast float %4842 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = bitcast float %4843 to i32
  %5364 = ashr i32 %5363, 1
  %5365 = add nsw i32 %5364, 532487669
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, 2.000000e+00
  %5372 = fsub fast float 0x4002A9FBE0000000, %5353
  %5373 = fadd fast float %5353, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5362
  %5380 = fadd fast float %5362, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = fsub fast float 0x4002A9FBE0000000, %5371
  %5387 = fadd fast float %5371, 0x3FD54FDF00000000
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5390, %5386
  %5392 = fmul fast float %5391, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5395 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5392)  ; FMax(a,b)
  %5396 = fsub fast float 1.000000e+00, %5281
  %5397 = fadd fast float %5396, %5297
  %5398 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5399 = fsub fast float 1.000000e+00, %5261
  %5400 = fmul fast float %5339, %5399
  %5401 = fmul fast float %5342, %5342
  %5402 = fmul fast float %5401, %5400
  %5403 = fmul fast float %5402, %5344
  %5404 = fmul fast float %5399, 0xBFE99999A0000000
  %5405 = fmul fast float %5404, %5290
  %5406 = fmul fast float %5405, %5301
  %5407 = fadd fast float %5406, 1.000000e+00
  %5408 = fadd fast float %4844, -1.000000e+00
  %5409 = fmul fast float %5407, %5408
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = fsub fast float %5393, %4841
  %5412 = fsub fast float %5394, %4842
  %5413 = fsub fast float %5395, %4843
  %5414 = fmul fast float %5403, %5411
  %5415 = fmul fast float %5403, %5412
  %5416 = fmul fast float %5403, %5413
  %5417 = fadd fast float %5414, %4841
  %5418 = fadd fast float %5415, %4842
  %5419 = fadd fast float %5416, %4843
  %5420 = fsub fast float %80, %4799
  %5421 = fsub fast float %81, %4800
  %5422 = fsub fast float %82, %4801
  %5423 = fmul fast float %5403, %5420
  %5424 = fmul fast float %5403, %5421
  %5425 = fmul fast float %5403, %5422
  %5426 = fadd fast float %5423, %4799
  %5427 = fadd fast float %5424, %4800
  %5428 = fadd fast float %5425, %4801
  %5429 = fmul fast float %5403, %5398
  %5430 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = fmul fast float %5429, %5431
  %5433 = fadd fast float %5432, %5430
  %5434 = fsub fast float 1.000000e+00, %4817
  %5435 = fmul fast float %5403, %5434
  %5436 = fadd fast float %5435, %4817
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 25, float %5437)  ; Rsqrt(value)
  %5439 = fmul fast float %5426, %5438
  %5440 = fmul fast float %5427, %5438
  %5441 = fmul fast float %5428, %5438
  br label %5442

; <label>:5442                                    ; preds = %5274, %5267
  %5443 = phi float [ %5273, %5267 ], [ %5280, %5274 ]
  %5444 = phi float [ %5272, %5267 ], [ %5278, %5274 ]
  %5445 = phi float [ %5271, %5267 ], [ %5276, %5274 ]
  %5446 = phi float [ %5270, %5267 ], [ %5279, %5274 ]
  %5447 = phi float [ %5269, %5267 ], [ %5277, %5274 ]
  %5448 = phi float [ %5268, %5267 ], [ %5275, %5274 ]
  %5449 = phi float [ %4841, %5267 ], [ %5417, %5274 ]
  %5450 = phi float [ %4842, %5267 ], [ %5418, %5274 ]
  %5451 = phi float [ %4843, %5267 ], [ %5419, %5274 ]
  %5452 = phi float [ %4881, %5267 ], [ %5326, %5274 ]
  %5453 = phi float [ %4882, %5267 ], [ %5327, %5274 ]
  %5454 = phi float [ %4883, %5267 ], [ %5328, %5274 ]
  %5455 = phi float [ %4799, %5267 ], [ %5439, %5274 ]
  %5456 = phi float [ %4800, %5267 ], [ %5440, %5274 ]
  %5457 = phi float [ %4801, %5267 ], [ %5441, %5274 ]
  %5458 = phi float [ %4844, %5267 ], [ %5433, %5274 ]
  %5459 = phi float [ %4817, %5267 ], [ %5436, %5274 ]
  %5460 = select i1 %170, float 0.000000e+00, float %5451
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5445, float %5444, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5447, float %5446, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = fmul fast float %5463, 2.000000e+00
  %5465 = fmul fast float %5464, %5455
  %5466 = fmul fast float %5464, %5456
  %5467 = fmul fast float %5464, %5457
  %5468 = fsub fast float %5448, %5465
  %5469 = fsub fast float %5447, %5466
  %5470 = fsub fast float %5446, %5467
  %5471 = call float @dx.op.binary.f32(i32 36, float %5459, float 1.000000e+00)  ; FMin(a,b)
  %5472 = fsub fast float 1.000000e+00, %5459
  %5473 = bitcast float %5472 to i32
  %5474 = sub nsw i32 2129859010, %5473
  %5475 = bitcast i32 %5474 to float
  %5476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5477 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fcmp fast oeq float %5477, 0.000000e+00
  %5479 = fcmp fast oeq float %5476, 0.000000e+00
  %5480 = or i1 %5479, %5478
  br i1 %5480, label %5510, label %5481

; <label>:5481                                    ; preds = %5442
  %5482 = fsub fast float -0.000000e+00, %53
  %5483 = fsub fast float -0.000000e+00, %51
  %5484 = call float @dx.op.unary.f32(i32 24, float %5477)  ; Sqrt(value)
  %5485 = fdiv fast float %5484, %5476
  %5486 = fcmp fast ogt float %5485, 0x3FFB6F8900000000
  %5487 = select i1 %5486, float 0x3FFB6F8900000000, float %5485
  %5488 = fmul fast float %5487, 0x3FE8A23460000000
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5487, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5491 = fmul fast float %5489, %5476
  %5492 = fmul fast float %5490, 0x3FF279A740000000
  %5493 = fadd fast float %5492, -1.000000e+00
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %52, float %5482, float %5483, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 25, float %5494)  ; Rsqrt(value)
  %5496 = fmul fast float %5495, %5482
  %5497 = fmul fast float %5495, %5483
  %5498 = fmul fast float %5495, %52
  %5499 = fmul fast float %5493, %5493
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5490, 0x40005F8BE0000000
  %5502 = fsub fast float 0x400C5BF8A0000000, %5501
  %5503 = fdiv fast float %5491, %5502
  %5504 = fmul fast float %5503, 0x3FEE31C3C0000000
  %5505 = fmul fast float %5504, %5500
  %5506 = fmul fast float %5490, 0x3FDACB7480000000
  %5507 = fadd fast float %5506, 0xBFD7347680000000
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5508, %5500
  br label %5510

; <label>:5510                                    ; preds = %5481, %5442
  %5511 = phi float [ %5496, %5481 ], [ 0.000000e+00, %5442 ]
  %5512 = phi float [ %5497, %5481 ], [ 0.000000e+00, %5442 ]
  %5513 = phi float [ %5498, %5481 ], [ 0.000000e+00, %5442 ]
  %5514 = phi float [ %5505, %5481 ], [ 0.000000e+00, %5442 ]
  %5515 = phi float [ %5509, %5481 ], [ 0.000000e+00, %5442 ]
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fmul fast float %5516, 0x3FDF454380000000
  %5518 = fmul fast float %5516, %5516
  %5519 = fmul fast float %5518, 0x3FEE471020000000
  %5520 = fadd fast float %5519, 0xBFD42F6020000000
  %5521 = fmul fast float %5476, 0x3FD20DD760000000
  %5522 = fmul fast float %5520, %5515
  %5523 = fadd fast float %5522, %5521
  %5524 = fmul fast float %5517, %5514
  %5525 = fadd fast float %5523, %5524
  %5526 = fsub fast float %5523, %5524
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, 0x3FDF454380000000
  %5529 = fmul fast float %5527, %5527
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5514, float %5515, float 0x3FD20DD760000000, float %5528, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  %5536 = fcmp fast oeq float %5533, 0.000000e+00
  %5537 = or i1 %5536, %5535
  br i1 %5537, label %5567, label %5538

; <label>:5538                                    ; preds = %5510
  %5539 = fsub fast float -0.000000e+00, %49
  %5540 = fsub fast float -0.000000e+00, %47
  %5541 = call float @dx.op.unary.f32(i32 24, float %5534)  ; Sqrt(value)
  %5542 = fdiv fast float %5541, %5533
  %5543 = fcmp fast ogt float %5542, 0x3FFB6F8900000000
  %5544 = select i1 %5543, float 0x3FFB6F8900000000, float %5542
  %5545 = fmul fast float %5544, 0x3FE8A23460000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5544, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5548 = fmul fast float %5546, %5533
  %5549 = fmul fast float %5547, 0x3FF279A740000000
  %5550 = fadd fast float %5549, -1.000000e+00
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %48, float %5539, float %5540, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 25, float %5551)  ; Rsqrt(value)
  %5553 = fmul fast float %5552, %5539
  %5554 = fmul fast float %5552, %5540
  %5555 = fmul fast float %5552, %48
  %5556 = fmul fast float %5550, %5550
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fmul fast float %5547, 0x40005F8BE0000000
  %5559 = fsub fast float 0x400C5BF8A0000000, %5558
  %5560 = fdiv fast float %5548, %5559
  %5561 = fmul fast float %5560, 0x3FEE31C3C0000000
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %5547, 0x3FDACB7480000000
  %5564 = fadd fast float %5563, 0xBFD7347680000000
  %5565 = fmul fast float %5564, %5560
  %5566 = fmul fast float %5565, %5557
  br label %5567

; <label>:5567                                    ; preds = %5538, %5510
  %5568 = phi float [ %5553, %5538 ], [ 0.000000e+00, %5510 ]
  %5569 = phi float [ %5554, %5538 ], [ 0.000000e+00, %5510 ]
  %5570 = phi float [ %5555, %5538 ], [ 0.000000e+00, %5510 ]
  %5571 = phi float [ %5562, %5538 ], [ 0.000000e+00, %5510 ]
  %5572 = phi float [ %5566, %5538 ], [ 0.000000e+00, %5510 ]
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fmul fast float %5573, 0x3FDF454380000000
  %5575 = fmul fast float %5573, %5573
  %5576 = fmul fast float %5575, 0x3FEE471020000000
  %5577 = fadd fast float %5576, 0xBFD42F6020000000
  %5578 = fmul fast float %5533, 0x3FD20DD760000000
  %5579 = fmul fast float %5577, %5572
  %5580 = fadd fast float %5579, %5578
  %5581 = fmul fast float %5574, %5571
  %5582 = fadd fast float %5580, %5581
  %5583 = fsub fast float %5580, %5581
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, 0x3FDF454380000000
  %5586 = fmul fast float %5584, %5584
  %5587 = fmul fast float %5586, 0x3FEE471020000000
  %5588 = fadd fast float %5587, 0xBFD42F6020000000
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5571, float %5572, float 0x3FD20DD760000000, float %5585, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %5591 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fcmp fast oeq float %5591, 0.000000e+00
  %5593 = fcmp fast oeq float %5590, 0.000000e+00
  %5594 = or i1 %5593, %5592
  br i1 %5594, label %5624, label %5595

; <label>:5595                                    ; preds = %5567
  %5596 = fsub fast float -0.000000e+00, %45
  %5597 = fsub fast float -0.000000e+00, %43
  %5598 = call float @dx.op.unary.f32(i32 24, float %5591)  ; Sqrt(value)
  %5599 = fdiv fast float %5598, %5590
  %5600 = fcmp fast ogt float %5599, 0x3FFB6F8900000000
  %5601 = select i1 %5600, float 0x3FFB6F8900000000, float %5599
  %5602 = fmul fast float %5601, 0x3FE8A23460000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5601, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5605 = fmul fast float %5603, %5590
  %5606 = fmul fast float %5604, 0x3FF279A740000000
  %5607 = fadd fast float %5606, -1.000000e+00
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %44, float %5596, float %5597, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.unary.f32(i32 25, float %5608)  ; Rsqrt(value)
  %5610 = fmul fast float %5609, %5596
  %5611 = fmul fast float %5609, %5597
  %5612 = fmul fast float %5609, %44
  %5613 = fmul fast float %5607, %5607
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fmul fast float %5604, 0x40005F8BE0000000
  %5616 = fsub fast float 0x400C5BF8A0000000, %5615
  %5617 = fdiv fast float %5605, %5616
  %5618 = fmul fast float %5617, 0x3FEE31C3C0000000
  %5619 = fmul fast float %5618, %5614
  %5620 = fmul fast float %5604, 0x3FDACB7480000000
  %5621 = fadd fast float %5620, 0xBFD7347680000000
  %5622 = fmul fast float %5621, %5617
  %5623 = fmul fast float %5622, %5614
  br label %5624

; <label>:5624                                    ; preds = %5595, %5567
  %5625 = phi float [ %5610, %5595 ], [ 0.000000e+00, %5567 ]
  %5626 = phi float [ %5611, %5595 ], [ 0.000000e+00, %5567 ]
  %5627 = phi float [ %5612, %5595 ], [ 0.000000e+00, %5567 ]
  %5628 = phi float [ %5619, %5595 ], [ 0.000000e+00, %5567 ]
  %5629 = phi float [ %5623, %5595 ], [ 0.000000e+00, %5567 ]
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fmul fast float %5630, 0x3FDF454380000000
  %5632 = fmul fast float %5630, %5630
  %5633 = fmul fast float %5632, 0x3FEE471020000000
  %5634 = fadd fast float %5633, 0xBFD42F6020000000
  %5635 = fmul fast float %5590, 0x3FD20DD760000000
  %5636 = fmul fast float %5634, %5629
  %5637 = fadd fast float %5636, %5635
  %5638 = fmul fast float %5631, %5628
  %5639 = fadd fast float %5637, %5638
  %5640 = fsub fast float %5637, %5638
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fmul fast float %5641, 0x3FDF454380000000
  %5643 = fmul fast float %5641, %5641
  %5644 = fmul fast float %5643, 0x3FEE471020000000
  %5645 = fadd fast float %5644, 0xBFD42F6020000000
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5628, float %5629, float 0x3FD20DD760000000, float %5642, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5639, float 0.000000e+00)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5583, float 0.000000e+00)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5640, float 0.000000e+00)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5532, float 0.000000e+00)  ; FMax(a,b)
  %5654 = call float @dx.op.binary.f32(i32 35, float %5589, float 0.000000e+00)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float %5646, float 0.000000e+00)  ; FMax(a,b)
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = call float @dx.op.binary.f32(i32 36, float %5452, float %5657)  ; FMin(a,b)
  %5659 = fsub fast float 1.000000e+00, %5471
  %5660 = fmul fast float %5658, %5659
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = call float @dx.op.binary.f32(i32 36, float %5453, float %5657)  ; FMin(a,b)
  %5666 = fmul fast float %5665, %5659
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5454, float %5657)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5659
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5647, %5471
  %5678 = fmul fast float %5677, %5664
  %5679 = fmul fast float %5648, %5471
  %5680 = fmul fast float %5679, %5670
  %5681 = fmul fast float %5649, %5471
  %5682 = fmul fast float %5681, %5676
  %5683 = call float @dx.op.binary.f32(i32 36, float %5449, float %5657)  ; FMin(a,b)
  %5684 = fmul fast float %5683, %5659
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = call float @dx.op.binary.f32(i32 36, float %5450, float %5657)  ; FMin(a,b)
  %5690 = fmul fast float %5689, %5659
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = call float @dx.op.binary.f32(i32 36, float %5460, float %5657)  ; FMin(a,b)
  %5696 = fmul fast float %5695, %5659
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5653, %5471
  %5702 = fmul fast float %5701, %5688
  %5703 = fmul fast float %5654, %5471
  %5704 = fmul fast float %5703, %5694
  %5705 = fmul fast float %5655, %5471
  %5706 = fmul fast float %5705, %5700
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5680, float %5682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = select i1 %170, float 0.000000e+00, float %5678
  %5709 = select i1 %170, float %5707, float %5680
  %5710 = select i1 %170, float 0.000000e+00, float %5682
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = select i1 %170, float 0.000000e+00, float %5650
  %5713 = select i1 %170, float %5711, float %5651
  %5714 = select i1 %170, float 0.000000e+00, float %5652
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5704, float %5706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = select i1 %170, float 0.000000e+00, float %5702
  %5717 = select i1 %170, float %5715, float %5704
  %5718 = select i1 %170, float 0.000000e+00, float %5706
  %5719 = fmul fast float %5462, 9.843750e-01
  %5720 = fmul fast float %5458, 9.843750e-01
  %5721 = fadd fast float %5719, 7.812500e-03
  %5722 = fadd fast float %5720, 7.812500e-03
  %5723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5721, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 3
  %5726 = fmul fast float %5724, %5449
  %5727 = fmul fast float %5724, %5450
  %5728 = fmul fast float %5724, %5460
  %5729 = fadd fast float %5726, %5725
  %5730 = fadd fast float %5727, %5725
  %5731 = fadd fast float %5728, %5725
  %5732 = fcmp fast ogt float %4818, 0.000000e+00
  br i1 %5732, label %5733, label %5759

; <label>:5733                                    ; preds = %5624
  %5734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5735 = extractvalue %dx.types.ResRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.ResRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.ResRet.f32 %5734, 2
  %5738 = fadd fast float %5735, -5.000000e-01
  %5739 = fadd fast float %5736, -5.000000e-01
  %5740 = fadd fast float %5737, -5.000000e-01
  %5741 = fsub fast float 1.000000e+00, %5449
  %5742 = fsub fast float 1.000000e+00, %5450
  %5743 = fsub fast float 1.000000e+00, %5460
  %5744 = fmul fast float %5449, 4.000000e+00
  %5745 = fmul fast float %5744, %5741
  %5746 = fmul fast float %5745, %5738
  %5747 = fmul fast float %5450, 4.000000e+00
  %5748 = fmul fast float %5747, %5742
  %5749 = fmul fast float %5748, %5739
  %5750 = fmul fast float %5460, 4.000000e+00
  %5751 = fmul fast float %5750, %5743
  %5752 = fmul fast float %5751, %5740
  %5753 = fadd fast float %5746, %5729
  %5754 = fadd fast float %5749, %5730
  %5755 = fadd fast float %5752, %5731
  %5756 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  br label %5759

; <label>:5759                                    ; preds = %5733, %5624
  %5760 = phi float [ %5756, %5733 ], [ %5729, %5624 ]
  %5761 = phi float [ %5757, %5733 ], [ %5730, %5624 ]
  %5762 = phi float [ %5758, %5733 ], [ %5731, %5624 ]
  %5763 = call float @dx.op.binary.f32(i32 35, float %5761, float %5762)  ; FMax(a,b)
  %5764 = call float @dx.op.binary.f32(i32 35, float %5760, float %5763)  ; FMax(a,b)
  %5765 = fsub fast float 1.000000e+00, %5764
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fcmp fast ogt float %5766, 0x3E7FF19E20000000
  %5768 = fdiv fast float 1.000000e+00, %5766
  %5769 = select i1 %5767, float %5768, float 0.000000e+00
  %5770 = fmul fast float %5769, %5452
  %5771 = fmul fast float %5769, %5453
  %5772 = fmul fast float %5769, %5454
  %5773 = fadd fast float %5770, -1.000000e+00
  %5774 = fadd fast float %5771, -1.000000e+00
  %5775 = fadd fast float %5772, -1.000000e+00
  %5776 = fmul fast float %5773, 5.000000e-01
  %5777 = fmul fast float %5774, 5.000000e-01
  %5778 = fmul fast float %5775, 5.000000e-01
  %5779 = fadd fast float %5776, 1.000000e+00
  %5780 = fadd fast float %5777, 1.000000e+00
  %5781 = fadd fast float %5778, 1.000000e+00
  %5782 = call float @dx.op.binary.f32(i32 35, float %5462, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5783 = fdiv fast float %4166, %5782
  %5784 = fmul fast float %5760, %5716
  %5785 = fmul fast float %5761, %5717
  %5786 = fmul fast float %5762, %5718
  %5787 = fsub fast float 1.000000e+00, %5462
  %5788 = bitcast float %5787 to i32
  %5789 = sitofp i32 %5788 to float
  %5790 = fmul fast float %5789, 5.000000e+00
  %5791 = fadd fast float %5790, 0xC1EFBF8940000000
  %5792 = fptosi float %5791 to i32
  %5793 = bitcast i32 %5792 to float
  %5794 = fmul fast float %5793, %4819
  %5795 = fmul fast float %5708, %5794
  %5796 = fmul fast float %5795, %5765
  %5797 = fmul fast float %5796, %5779
  %5798 = fmul fast float %5709, %5794
  %5799 = fmul fast float %5798, %5765
  %5800 = fmul fast float %5799, %5780
  %5801 = fmul fast float %5710, %5794
  %5802 = fmul fast float %5801, %5765
  %5803 = fmul fast float %5802, %5781
  %5804 = fadd fast float %5784, %4805
  %5805 = fadd fast float %5804, %5797
  %5806 = fmul fast float %5805, %4815
  %5807 = fadd fast float %5785, %4806
  %5808 = fadd fast float %5807, %5800
  %5809 = fmul fast float %5808, %4815
  %5810 = fadd fast float %5786, %4807
  %5811 = fadd fast float %5810, %5803
  %5812 = fmul fast float %5811, %4815
  %5813 = fmul fast float %5450, 0x4012D0A400000000
  %5814 = fmul fast float %5765, %5710
  %5815 = fmul fast float %5765, %5709
  %5816 = fmul fast float %5765, %5708
  %5817 = fsub fast float 1.000000e+00, %5458
  %5818 = fmul fast float %5817, %4815
  %5819 = fsub fast float 1.000000e+00, %5818
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fadd fast float %5813, 0x3FDB6377A0000000
  %5823 = fmul fast float %5821, %5822
  %5824 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = fadd fast float %5823, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fcmp fast olt float %4869, 1.270000e+02
  %5828 = fmul fast float %4869, 0xBFF7154760000000
  %5829 = fmul fast float %5828, %5783
  %5830 = call float @dx.op.unary.f32(i32 21, float %5829)  ; Exp(value)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = select i1 %5827, float %5831, float 0.000000e+00
  %5833 = fmul fast float %5832, %5765
  %5834 = fadd fast float %5833, -1.000000e+00
  %5835 = fmul fast float %5834, %4815
  %5836 = fadd fast float %5835, 1.000000e+00
  %5837 = fcmp fast olt float %4868, 1.270000e+02
  %5838 = fmul fast float %4868, 0xBFF7154760000000
  %5839 = fmul fast float %5838, %5783
  %5840 = call float @dx.op.unary.f32(i32 21, float %5839)  ; Exp(value)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = select i1 %5837, float %5841, float 0.000000e+00
  %5843 = fmul fast float %5842, %5765
  %5844 = fadd fast float %5843, -1.000000e+00
  %5845 = fmul fast float %5844, %4815
  %5846 = fadd fast float %5845, 1.000000e+00
  %5847 = fcmp fast olt float %4867, 1.270000e+02
  %5848 = fmul fast float %4867, 0xBFF7154760000000
  %5849 = fmul fast float %5848, %5783
  %5850 = call float @dx.op.unary.f32(i32 21, float %5849)  ; Exp(value)
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = select i1 %5847, float %5851, float 0.000000e+00
  %5853 = fmul fast float %5852, %5765
  %5854 = fadd fast float %5853, -1.000000e+00
  %5855 = fmul fast float %5854, %4815
  %5856 = fadd fast float %5855, 1.000000e+00
  %5857 = call float @dx.op.binary.f32(i32 35, float %5826, float 0x3F847AE140000000)  ; FMax(a,b)
  %5858 = fmul fast float %5857, %5857
  %5859 = fmul fast float %5858, %5858
  %5860 = fmul fast float %5859, 0xC00A935000000000
  %5861 = call float @dx.op.unary.f32(i32 21, float %5860)  ; Exp(value)
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = fmul fast float %5862, %5712
  %5864 = fmul fast float %5863, %5856
  %5865 = fmul fast float %5846, %5713
  %5866 = fmul fast float %5865, %5862
  %5867 = fmul fast float %5836, %5714
  %5868 = fmul fast float %5867, %5862
  %5869 = fadd fast float %5864, %5816
  %5870 = fmul fast float %5869, %4815
  %5871 = fadd fast float %5866, %5815
  %5872 = fmul fast float %5871, %4815
  %5873 = fadd fast float %5868, %5814
  %5874 = fmul fast float %5873, %4815
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 3
  %5877 = fcmp fast oeq float %5876, 0.000000e+00
  br i1 %5877, label %6220, label %5878

; <label>:5878                                    ; preds = %5759
  %5879 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %5885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = select i1 %170, float %5887, float %5883
  %5891 = select i1 %170, float %5889, float %5884
  %5892 = select i1 %170, float %5888, float %5885
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5895 = fcmp fast une float %5894, 0.000000e+00
  br i1 %5895, label %5896, label %5913

; <label>:5896                                    ; preds = %5878
  %5897 = fptoui float %73 to i32
  %5898 = fptoui float %74 to i32
  %5899 = lshr i32 %5897, 4
  %5900 = lshr i32 %5898, 4
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = fptoui float %5902 to i32
  %5904 = add i32 %5903, 15
  %5905 = lshr i32 %5904, 4
  %5906 = mul i32 %5905, %5900
  %5907 = add i32 %5906, %5899
  %5908 = shl i32 %5907, 3
  %5909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.i32 %5909, 0
  %5911 = and i32 %5910, -268435456
  %5912 = icmp eq i32 %5911, -1342177280
  br i1 %5912, label %5923, label %5913

; <label>:5913                                    ; preds = %5896, %5878
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 3
  %5917 = fmul fast float %5915, %73
  %5918 = fmul fast float %5916, %74
  %5919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5917, float %5918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5920 = extractvalue %dx.types.ResRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.ResRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.ResRet.f32 %5919, 2
  br label %5923

; <label>:5923                                    ; preds = %5913, %5896
  %5924 = phi float [ %5920, %5913 ], [ 0.000000e+00, %5896 ]
  %5925 = phi float [ %5921, %5913 ], [ 0.000000e+00, %5896 ]
  %5926 = phi float [ %5922, %5913 ], [ 0.000000e+00, %5896 ]
  %5927 = call float @dx.op.binary.f32(i32 36, float %5925, float %5926)  ; FMin(a,b)
  %5928 = call float @dx.op.binary.f32(i32 36, float %5924, float %5927)  ; FMin(a,b)
  %5929 = fcmp fast ogt float %5928, 0.000000e+00
  br i1 %5929, label %5930, label %6220, !dx.controlflow.hints !73

; <label>:5930                                    ; preds = %5923
  %5931 = fmul fast float %5924, %5890
  %5932 = fmul fast float %5925, %5891
  %5933 = fmul fast float %5926, %5892
  %5934 = fsub fast float %5879, %5448
  %5935 = fsub fast float %5880, %5447
  %5936 = fsub fast float %5881, %5446
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5936, float %5934, float %5935, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.unary.f32(i32 25, float %5937)  ; Rsqrt(value)
  %5939 = fmul fast float %5938, %5934
  %5940 = fmul fast float %5938, %5935
  %5941 = fmul fast float %5938, %5936
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %5881, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5945 = fmul fast float %5944, %5944
  %5946 = fmul fast float %5945, %5475
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5944
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = fmul fast float %5949, %5949
  %5951 = call float @dx.op.unary.f32(i32 6, float %5942)  ; FAbs(value)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5817, float 0x3F847AE140000000)  ; FMax(a,b)
  %5953 = fmul fast float %5952, %5952
  %5954 = fmul fast float %5953, %5953
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = fmul fast float %5462, %5462
  %5957 = fmul fast float %5956, %5955
  %5958 = fadd fast float %5957, %5954
  %5959 = bitcast float %5958 to i32
  %5960 = ashr i32 %5959, 1
  %5961 = add nsw i32 %5960, 532487669
  %5962 = bitcast i32 %5961 to float
  %5963 = fadd fast float %5962, %5462
  %5964 = fmul fast float %5954, %5950
  %5965 = fsub fast float 1.000000e+00, %5950
  %5966 = fadd fast float %5965, %5964
  %5967 = fmul fast float %5951, %5951
  %5968 = fmul fast float %5967, %5955
  %5969 = fadd fast float %5968, %5954
  %5970 = bitcast float %5969 to i32
  %5971 = ashr i32 %5970, 1
  %5972 = add nsw i32 %5971, 532487669
  %5973 = bitcast i32 %5972 to float
  %5974 = fadd fast float %5973, %5951
  %5975 = fmul fast float %5966, %5966
  %5976 = fmul fast float %5975, %5963
  %5977 = fmul fast float %5976, %5974
  %5978 = fdiv fast float 0x3FF0A00000000000, %5977
  %5979 = fmul fast float %5978, %5954
  %5980 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5981 = fsub fast float 1.000000e+00, %5980
  %5982 = bitcast float %5981 to i32
  %5983 = sitofp i32 %5982 to float
  %5984 = fmul fast float %5983, 5.000000e+00
  %5985 = fadd fast float %5984, 0xC1EFBF8940000000
  %5986 = fptosi float %5985 to i32
  %5987 = bitcast i32 %5986 to float
  %5988 = fsub fast float 1.000000e+00, %5449
  %5989 = fsub fast float 1.000000e+00, %5450
  %5990 = fsub fast float 1.000000e+00, %5460
  %5991 = fmul fast float %5987, %5988
  %5992 = fmul fast float %5987, %5989
  %5993 = fmul fast float %5987, %5990
  %5994 = fadd fast float %5991, %5449
  %5995 = fadd fast float %5992, %5450
  %5996 = fadd fast float %5993, %5460
  br i1 %5732, label %5997, label %6020

; <label>:5997                                    ; preds = %5930
  %5998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = fadd fast float %5999, -5.000000e-01
  %6003 = fadd fast float %6000, -5.000000e-01
  %6004 = fadd fast float %6001, -5.000000e-01
  %6005 = fmul fast float %5449, 4.000000e+00
  %6006 = fmul fast float %6005, %5988
  %6007 = fmul fast float %6006, %6002
  %6008 = fmul fast float %5450, 4.000000e+00
  %6009 = fmul fast float %6008, %5989
  %6010 = fmul fast float %6009, %6003
  %6011 = fmul fast float %5460, 4.000000e+00
  %6012 = fmul fast float %6011, %5990
  %6013 = fmul fast float %6012, %6004
  %6014 = fadd fast float %6007, %5994
  %6015 = fadd fast float %6010, %5995
  %6016 = fadd fast float %6013, %5996
  %6017 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6019 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  br label %6020

; <label>:6020                                    ; preds = %5997, %5930
  %6021 = phi float [ %6017, %5997 ], [ %5994, %5930 ]
  %6022 = phi float [ %6018, %5997 ], [ %5995, %5930 ]
  %6023 = phi float [ %6019, %5997 ], [ %5996, %5930 ]
  %6024 = fmul fast float %5942, 9.843750e-01
  %6025 = fadd fast float %6024, 7.812500e-03
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6025, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 2
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 3
  %6029 = fmul fast float %6027, %5449
  %6030 = fmul fast float %6027, %5450
  %6031 = fmul fast float %6027, %5460
  %6032 = fadd fast float %6029, %6028
  %6033 = fadd fast float %6030, %6028
  %6034 = fadd fast float %6031, %6028
  br i1 %5732, label %6035, label %6058

; <label>:6035                                    ; preds = %6020
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 1
  %6039 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6040 = fadd fast float %6037, -5.000000e-01
  %6041 = fadd fast float %6038, -5.000000e-01
  %6042 = fadd fast float %6039, -5.000000e-01
  %6043 = fmul fast float %5449, 4.000000e+00
  %6044 = fmul fast float %6043, %5988
  %6045 = fmul fast float %6044, %6040
  %6046 = fmul fast float %5450, 4.000000e+00
  %6047 = fmul fast float %6046, %5989
  %6048 = fmul fast float %6047, %6041
  %6049 = fmul fast float %5460, 4.000000e+00
  %6050 = fmul fast float %6049, %5990
  %6051 = fmul fast float %6050, %6042
  %6052 = fadd fast float %6045, %6032
  %6053 = fadd fast float %6048, %6033
  %6054 = fadd fast float %6051, %6034
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6056 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6057 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  br label %6058

; <label>:6058                                    ; preds = %6035, %6020
  %6059 = phi float [ %6055, %6035 ], [ %6032, %6020 ]
  %6060 = phi float [ %6056, %6035 ], [ %6033, %6020 ]
  %6061 = phi float [ %6057, %6035 ], [ %6034, %6020 ]
  %6062 = call float @dx.op.binary.f32(i32 35, float %6060, float %6061)  ; FMax(a,b)
  %6063 = call float @dx.op.binary.f32(i32 35, float %6059, float %6062)  ; FMax(a,b)
  %6064 = fsub fast float 1.000000e+00, %6063
  %6065 = call float @dx.op.binary.f32(i32 35, float %5951, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6066 = fdiv fast float %4166, %6065
  %6067 = fmul fast float %5848, %6066
  %6068 = fmul fast float %5838, %6066
  %6069 = fmul fast float %5828, %6066
  %6070 = call float @dx.op.unary.f32(i32 21, float %6067)  ; Exp(value)
  %6071 = call float @dx.op.unary.f32(i32 21, float %6068)  ; Exp(value)
  %6072 = call float @dx.op.unary.f32(i32 21, float %6069)  ; Exp(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6076 = select i1 %5847, float %6073, float 0.000000e+00
  %6077 = select i1 %5837, float %6074, float 0.000000e+00
  %6078 = select i1 %5827, float %6075, float 0.000000e+00
  %6079 = fsub fast float -0.000000e+00, %5455
  %6080 = fsub fast float -0.000000e+00, %5456
  %6081 = fsub fast float -0.000000e+00, %5457
  %6082 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %5881, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6084 = fmul fast float %6083, 9.843750e-01
  %6085 = fadd fast float %6084, 7.812500e-03
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6085, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 2
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 3
  %6089 = fmul fast float %6087, %5449
  %6090 = fmul fast float %6087, %5450
  %6091 = fmul fast float %6087, %5460
  %6092 = fadd fast float %6089, %6088
  %6093 = fadd fast float %6090, %6088
  %6094 = fadd fast float %6091, %6088
  br i1 %5732, label %6095, label %6118

; <label>:6095                                    ; preds = %6058
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = fadd fast float %6097, -5.000000e-01
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fmul fast float %5449, 4.000000e+00
  %6104 = fmul fast float %6103, %5988
  %6105 = fmul fast float %6104, %6100
  %6106 = fmul fast float %5450, 4.000000e+00
  %6107 = fmul fast float %6106, %5989
  %6108 = fmul fast float %6107, %6101
  %6109 = fmul fast float %5460, 4.000000e+00
  %6110 = fmul fast float %6109, %5990
  %6111 = fmul fast float %6110, %6102
  %6112 = fadd fast float %6105, %6092
  %6113 = fadd fast float %6108, %6093
  %6114 = fadd fast float %6111, %6094
  %6115 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  br label %6118

; <label>:6118                                    ; preds = %6095, %6058
  %6119 = phi float [ %6115, %6095 ], [ %6092, %6058 ]
  %6120 = phi float [ %6116, %6095 ], [ %6093, %6058 ]
  %6121 = phi float [ %6117, %6095 ], [ %6094, %6058 ]
  %6122 = call float @dx.op.binary.f32(i32 35, float %6120, float %6121)  ; FMax(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %6119, float %6122)  ; FMax(a,b)
  %6124 = fsub fast float 1.000000e+00, %6123
  %6125 = fmul fast float %5817, %5822
  %6126 = fadd fast float %5824, %6125
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = fsub fast float %5879, %5468
  %6129 = fsub fast float %5880, %5469
  %6130 = fsub fast float %5881, %5470
  %6131 = call float @dx.op.dot3.f32(i32 55, float %6128, float %6129, float %6130, float %6128, float %6129, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.unary.f32(i32 25, float %6131)  ; Rsqrt(value)
  %6133 = fmul fast float %6132, %6128
  %6134 = fmul fast float %6132, %6129
  %6135 = fmul fast float %6132, %6130
  %6136 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6081, float %6133, float %6134, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = fmul fast float %6136, %6136
  %6138 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6139 = call float @dx.op.binary.f32(i32 35, float %6127, float 0x3F847AE140000000)  ; FMax(a,b)
  %6140 = fmul fast float %6139, %6139
  %6141 = fmul fast float %6140, %6140
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %5956, %6142
  %6144 = fadd fast float %6143, %6141
  %6145 = bitcast float %6144 to i32
  %6146 = ashr i32 %6145, 1
  %6147 = add nsw i32 %6146, 532487669
  %6148 = bitcast i32 %6147 to float
  %6149 = fadd fast float %6148, %5462
  %6150 = fmul fast float %6141, %6137
  %6151 = fsub fast float 1.000000e+00, %6137
  %6152 = fadd fast float %6151, %6150
  %6153 = fmul fast float %6138, %6138
  %6154 = fmul fast float %6153, %6142
  %6155 = fadd fast float %6154, %6141
  %6156 = bitcast float %6155 to i32
  %6157 = ashr i32 %6156, 1
  %6158 = add nsw i32 %6157, 532487669
  %6159 = bitcast i32 %6158 to float
  %6160 = fadd fast float %6159, %6138
  %6161 = fmul fast float %6152, %6152
  %6162 = fmul fast float %6161, %6149
  %6163 = fmul fast float %6162, %6160
  %6164 = fdiv fast float 0x3FF0A00000000000, %6163
  %6165 = fmul fast float %6164, %6141
  %6166 = fmul fast float %6083, %6076
  %6167 = fmul fast float %6083, %6077
  %6168 = fmul fast float %6083, %6078
  %6169 = fmul fast float %6166, %6124
  %6170 = fmul fast float %6169, %6165
  %6171 = fmul fast float %6167, %6124
  %6172 = fmul fast float %6171, %6165
  %6173 = fmul fast float %6168, %6124
  %6174 = fmul fast float %6173, %6165
  %6175 = fmul fast float %6021, %5979
  %6176 = fmul fast float %6022, %5979
  %6177 = fmul fast float %6023, %5979
  %6178 = fsub fast float 1.000000e+00, %5943
  %6179 = bitcast float %6178 to i32
  %6180 = sitofp i32 %6179 to float
  %6181 = fmul fast float %6180, 5.000000e+00
  %6182 = fadd fast float %6181, 0xC1EFBF8940000000
  %6183 = fptosi float %6182 to i32
  %6184 = bitcast i32 %6183 to float
  %6185 = fmul fast float %6184, %4819
  %6186 = fmul fast float %6064, %6185
  %6187 = fmul fast float %6186, %5779
  %6188 = fmul fast float %6186, %5780
  %6189 = fmul fast float %6186, %5781
  %6190 = fadd fast float %6187, %6175
  %6191 = fadd fast float %6188, %6176
  %6192 = fadd fast float %6189, %6177
  %6193 = fmul fast float %6190, %5948
  %6194 = fmul fast float %6191, %5948
  %6195 = fmul fast float %6192, %5948
  %6196 = fmul fast float %5948, %5931
  %6197 = fmul fast float %6196, %6064
  %6198 = fmul fast float %5948, %5932
  %6199 = fmul fast float %6198, %6064
  %6200 = fmul fast float %5948, %5933
  %6201 = fmul fast float %6200, %6064
  %6202 = fadd fast float %6193, %6170
  %6203 = fadd fast float %6194, %6172
  %6204 = fadd fast float %6195, %6174
  %6205 = fmul fast float %6202, %5931
  %6206 = fmul fast float %6203, %5932
  %6207 = fmul fast float %6204, %5933
  %6208 = fadd fast float %6197, %5869
  %6209 = fmul fast float %6208, %4815
  %6210 = fadd fast float %6199, %5871
  %6211 = fmul fast float %6210, %4815
  %6212 = fadd fast float %6201, %5873
  %6213 = fmul fast float %6212, %4815
  %6214 = fadd fast float %6205, %5805
  %6215 = fmul fast float %6214, %4815
  %6216 = fadd fast float %6206, %5808
  %6217 = fmul fast float %6216, %4815
  %6218 = fadd fast float %6207, %5811
  %6219 = fmul fast float %6218, %4815
  br label %6220

; <label>:6220                                    ; preds = %6118, %5923, %5759
  %6221 = phi float [ %5806, %5759 ], [ %5806, %5923 ], [ %6215, %6118 ]
  %6222 = phi float [ %5809, %5759 ], [ %5809, %5923 ], [ %6217, %6118 ]
  %6223 = phi float [ %5812, %5759 ], [ %5812, %5923 ], [ %6219, %6118 ]
  %6224 = phi float [ %5870, %5759 ], [ %5870, %5923 ], [ %6209, %6118 ]
  %6225 = phi float [ %5872, %5759 ], [ %5872, %5923 ], [ %6211, %6118 ]
  %6226 = phi float [ %5874, %5759 ], [ %5874, %5923 ], [ %6213, %6118 ]
  %6227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.i32 %6227, 0
  %6229 = icmp eq i32 %6228, 0
  br i1 %6229, label %6801, label %6230

; <label>:6230                                    ; preds = %6220
  %6231 = fptoui float %73 to i32
  %6232 = fptoui float %74 to i32
  %6233 = lshr i32 %6231, 4
  %6234 = lshr i32 %6232, 4
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 0
  %6237 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6234, i32 %6236, i32 %6233)  ; UMad(a,b,c)
  %6238 = add nsw i32 %6228, -1
  %6239 = call i32 @dx.op.binary.i32(i32 37, i32 %6238, i32 0)  ; IMax(a,b)
  %6240 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %6241 = fptoui float %6240 to i32
  %6242 = lshr i32 %6241, 5
  %6243 = call i32 @dx.op.binary.i32(i32 40, i32 %6242, i32 8191)  ; UMin(a,b)
  %6244 = shl i32 %6243, 2
  %6245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6244, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.i32 %6245, 0
  %6247 = lshr i32 %6246, 16
  %6248 = and i32 %6246, 65535
  %6249 = lshr i32 %6246, 21
  %6250 = lshr i32 %6248, 5
  %6251 = call i32 @dx.op.binary.i32(i32 40, i32 %6250, i32 %6239)  ; UMin(a,b)
  %6252 = icmp ugt i32 %6249, %6251
  br i1 %6252, label %6801, label %6253

; <label>:6253                                    ; preds = %6230
  br label %6254

; <label>:6254                                    ; preds = %6791, %6253
  %6255 = phi i32 [ %6798, %6791 ], [ %6249, %6253 ]
  %6256 = phi float [ %6792, %6791 ], [ %6221, %6253 ]
  %6257 = phi float [ %6793, %6791 ], [ %6222, %6253 ]
  %6258 = phi float [ %6794, %6791 ], [ %6223, %6253 ]
  %6259 = phi float [ %6795, %6791 ], [ %6224, %6253 ]
  %6260 = phi float [ %6796, %6791 ], [ %6225, %6253 ]
  %6261 = phi float [ %6797, %6791 ], [ %6226, %6253 ]
  %6262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.i32 %6262, 0
  %6264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6237, i32 %6263, i32 %6255)  ; UMad(a,b,c)
  %6265 = shl i32 %6264, 2
  %6266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.i32 %6266, 0
  %6268 = shl i32 %6255, 5
  %6269 = sub nsw i32 %6247, %6268
  %6270 = call i32 @dx.op.binary.i32(i32 37, i32 %6269, i32 0)  ; IMax(a,b)
  %6271 = call i32 @dx.op.binary.i32(i32 38, i32 %6270, i32 31)  ; IMin(a,b)
  %6272 = sub nsw i32 1, %6247
  %6273 = add nsw i32 %6272, %6248
  %6274 = call i32 @dx.op.binary.i32(i32 37, i32 %6273, i32 0)  ; IMax(a,b)
  %6275 = call i32 @dx.op.binary.i32(i32 38, i32 %6274, i32 32)  ; IMin(a,b)
  %6276 = and i32 %6275, 31
  %6277 = shl i32 -1, %6276
  %6278 = xor i32 %6277, -1
  %6279 = and i32 %6271, 31
  %6280 = shl i32 %6278, %6279
  %6281 = icmp eq i32 %6275, 32
  %6282 = select i1 %6281, i32 -1, i32 %6280
  %6283 = and i32 %6282, %6267
  %6284 = icmp eq i32 %6283, 0
  br i1 %6284, label %6791, label %6285

; <label>:6285                                    ; preds = %6254
  br label %6286

; <label>:6286                                    ; preds = %6370, %6285
  %6287 = phi i32 [ %6298, %6370 ], [ %6283, %6285 ]
  %6288 = phi float [ %6371, %6370 ], [ %6256, %6285 ]
  %6289 = phi float [ %6372, %6370 ], [ %6257, %6285 ]
  %6290 = phi float [ %6373, %6370 ], [ %6258, %6285 ]
  %6291 = phi float [ %6374, %6370 ], [ %6259, %6285 ]
  %6292 = phi float [ %6375, %6370 ], [ %6260, %6285 ]
  %6293 = phi float [ %6376, %6370 ], [ %6261, %6285 ]
  %6294 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6287)  ; FirstbitLo(value)
  %6295 = add i32 %6294, %6268
  %6296 = and i32 %6294, 31
  %6297 = shl i32 1, %6296
  %6298 = xor i32 %6297, %6287
  %6299 = mul i32 %6295, 112
  %6300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.ResRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.ResRet.f32 %6300, 2
  %6304 = or i32 %6299, 12
  %6305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6304, i32 undef)  ; BufferLoad(srv,index,wot)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = add i32 %6299, 28
  %6308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6307, i32 undef)  ; BufferLoad(srv,index,wot)
  %6309 = extractvalue %dx.types.ResRet.i32 %6308, 0
  %6310 = add i32 %6299, 44
  %6311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6310, i32 undef)  ; BufferLoad(srv,index,wot)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = add i32 %6299, 48
  %6314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6313, i32 undef)  ; BufferLoad(srv,index,wot)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = add i32 %6299, 80
  %6319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6318, i32 undef)  ; BufferLoad(srv,index,wot)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 1
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6322 = call float @dx.op.dot3.f32(i32 55, float %6301, float %6302, float %6303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6323 = select i1 %170, float %6320, float %6301
  %6324 = select i1 %170, float %6322, float %6302
  %6325 = select i1 %170, float %6321, float %6303
  %6326 = icmp slt i32 %6309, 0
  %6327 = fsub fast float %6315, %128
  %6328 = fsub fast float %6316, %129
  %6329 = fsub fast float %6317, %130
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6329, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = call float @dx.op.unary.f32(i32 24, float %6330)  ; Sqrt(value)
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fmul fast float %6332, %6327
  %6334 = fmul fast float %6332, %6328
  %6335 = fmul fast float %6332, %6329
  %6336 = fadd fast float %6331, %6306
  %6337 = fdiv fast float 1.000000e+00, %6336
  %6338 = fmul float %6312, %6337
  %6339 = fmul float %6338, %6338
  %6340 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6341 = and i32 %6297, %6283
  %6342 = icmp eq i32 %6341, 0
  br i1 %6342, label %6365, label %6343, !dx.controlflow.hints !74

; <label>:6343                                    ; preds = %6286
  %6344 = lshr i32 %6231, 5
  %6345 = lshr i32 %6232, 5
  %6346 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6344, i32 %6345, i32 %6295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6347 = extractvalue %dx.types.ResRet.i32 %6346, 0
  %6348 = and i32 %6347, 3
  %6349 = icmp eq i32 %6348, 0
  %6350 = select i1 %6349, float 1.000000e+00, float 0.000000e+00
  %6351 = icmp eq i32 %6348, 3
  br i1 %6351, label %6352, label %6365

; <label>:6352                                    ; preds = %6343
  %6353 = lshr i32 %6347, 10
  %6354 = and i32 %6353, 8160
  %6355 = and i32 %6232, 31
  %6356 = or i32 %6354, %6355
  %6357 = lshr i32 %6347, 1
  %6358 = and i32 %6357, 16352
  %6359 = and i32 %6231, 31
  %6360 = or i32 %6358, %6359
  %6361 = lshr i32 %6347, 23
  %6362 = and i32 %6361, 255
  %6363 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6360, i32 %6356, i32 %6362, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  br label %6365

; <label>:6365                                    ; preds = %6352, %6343, %6286
  %6366 = phi float [ %6364, %6352 ], [ %6350, %6343 ], [ 0.000000e+00, %6286 ]
  %6367 = call float @dx.op.binary.f32(i32 36, float %6366, float %6366)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6366, float %6367)  ; FMin(a,b)
  %6369 = fcmp fast ogt float %6368, 0.000000e+00
  br i1 %6369, label %6378, label %6370, !dx.controlflow.hints !75

; <label>:6370                                    ; preds = %6744, %6365
  %6371 = phi float [ %6288, %6365 ], [ %6787, %6744 ]
  %6372 = phi float [ %6289, %6365 ], [ %6788, %6744 ]
  %6373 = phi float [ %6290, %6365 ], [ %6789, %6744 ]
  %6374 = phi float [ %6291, %6365 ], [ %6781, %6744 ]
  %6375 = phi float [ %6292, %6365 ], [ %6782, %6744 ]
  %6376 = phi float [ %6293, %6365 ], [ %6783, %6744 ]
  %6377 = icmp eq i32 %6287, %6297
  br i1 %6377, label %6790, label %6286

; <label>:6378                                    ; preds = %6365
  %6379 = fmul fast float %6366, %6323
  %6380 = fmul fast float %6366, %6324
  %6381 = fmul fast float %6366, %6325
  %6382 = fsub fast float %6317, %5248
  %6383 = fcmp fast ogt float %6382, 0.000000e+00
  %6384 = fsub fast float %130, %5248
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  %6386 = xor i1 %6385, %6383
  %6387 = fsub fast float %5248, %6317
  %6388 = fmul fast float %6387, 2.000000e+00
  %6389 = fadd fast float %6388, %6317
  %6390 = select i1 %6386, float %6317, float %6389
  %6391 = fsub fast float %6390, %130
  %6392 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6391, float %6327, float %6328, float %6391)  ; Dot3(ax,ay,az,bx,by,bz)
  %6393 = call float @dx.op.unary.f32(i32 25, float %6392)  ; Rsqrt(value)
  %6394 = fmul fast float %6393, %6327
  %6395 = fmul fast float %6393, %6328
  %6396 = fmul fast float %6393, %6391
  %6397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6394, float %6395, float %6396)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = fdiv fast float 1.000000e+00, %6398
  %6400 = fmul fast float %6399, %6397
  %6401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6384, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = fcmp fast ogt float %6401, 0.000000e+00
  %6403 = fcmp fast olt float %6401, 0.000000e+00
  %6404 = zext i1 %6402 to i32
  %6405 = zext i1 %6403 to i32
  %6406 = sub nsw i32 %6404, %6405
  %6407 = sitofp i32 %6406 to float
  %6408 = fsub fast float %6390, %5248
  %6409 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6408, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = fcmp fast ogt float %6409, 0.000000e+00
  %6411 = fcmp fast olt float %6409, 0.000000e+00
  %6412 = zext i1 %6410 to i32
  %6413 = zext i1 %6411 to i32
  %6414 = sub nsw i32 %6412, %6413
  %6415 = sitofp i32 %6414 to float
  %6416 = fcmp fast une float %6407, %6415
  br i1 %6416, label %6417, label %6427

; <label>:6417                                    ; preds = %6378
  %6418 = fmul fast float %6400, %6396
  %6419 = fmul fast float %6400, %6395
  %6420 = fmul fast float %6400, %6394
  %6421 = fmul fast float %6420, %6420
  %6422 = fmul fast float %6419, %6419
  %6423 = fadd fast float %6421, %6422
  %6424 = fmul fast float %6418, %6418
  %6425 = fadd fast float %6423, %6424
  %6426 = call float @dx.op.unary.f32(i32 24, float %6425)  ; Sqrt(value)
  br label %6439

; <label>:6427                                    ; preds = %6378
  %6428 = icmp slt i32 %6406, 0
  br i1 %6428, label %6429, label %6439

; <label>:6429                                    ; preds = %6427
  %6430 = fsub fast float %128, %6315
  %6431 = fsub fast float %129, %6316
  %6432 = fsub fast float %130, %6390
  %6433 = fmul fast float %6430, %6430
  %6434 = fmul fast float %6431, %6431
  %6435 = fadd fast float %6433, %6434
  %6436 = fmul fast float %6432, %6432
  %6437 = fadd fast float %6435, %6436
  %6438 = call float @dx.op.unary.f32(i32 24, float %6437)  ; Sqrt(value)
  br label %6439

; <label>:6439                                    ; preds = %6429, %6427, %6417
  %6440 = phi float [ %6426, %6417 ], [ %6438, %6429 ], [ 0.000000e+00, %6427 ]
  %6441 = and i1 %6385, %6383
  %6442 = fsub fast float -0.000000e+00, %6440
  %6443 = select i1 %6441, float -0.000000e+00, float %6442
  %6444 = fmul fast float %5249, 0x3FF7154760000000
  %6445 = fmul fast float %6444, %6443
  %6446 = fmul fast float %5250, 0x3FF7154760000000
  %6447 = fmul fast float %6446, %6443
  %6448 = fmul fast float %5251, 0x3FF7154760000000
  %6449 = fmul fast float %6448, %6443
  %6450 = call float @dx.op.unary.f32(i32 21, float %6445)  ; Exp(value)
  %6451 = call float @dx.op.unary.f32(i32 21, float %6447)  ; Exp(value)
  %6452 = call float @dx.op.unary.f32(i32 21, float %6449)  ; Exp(value)
  %6453 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6454 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6455 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6456 = fmul fast float %6379, %6453
  %6457 = fmul fast float %6380, %6454
  %6458 = fmul fast float %6381, %6455
  %6459 = fsub fast float %6333, %5448
  %6460 = fsub fast float %6334, %5447
  %6461 = fsub fast float %6335, %5446
  %6462 = call float @dx.op.dot3.f32(i32 55, float %6459, float %6460, float %6461, float %6459, float %6460, float %6461)  ; Dot3(ax,ay,az,bx,by,bz)
  %6463 = call float @dx.op.unary.f32(i32 25, float %6462)  ; Rsqrt(value)
  %6464 = fmul fast float %6463, %6459
  %6465 = fmul fast float %6463, %6460
  %6466 = fmul fast float %6463, %6461
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %6464, float %6465, float %6466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6470 = fmul fast float %6469, %6340
  %6471 = fmul fast float %6469, %6469
  %6472 = fmul fast float %6471, %5475
  %6473 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  %6474 = fmul fast float %6470, %6473
  %6475 = bitcast float %6330 to i32
  %6476 = ashr i32 %6475, 1
  %6477 = sub nsw i32 1597463007, %6476
  %6478 = bitcast i32 %6477 to float
  %6479 = fmul fast float %6478, %6327
  %6480 = fmul fast float %6478, %6328
  %6481 = fmul fast float %6478, %6329
  %6482 = fsub fast float %6479, %5448
  %6483 = fsub fast float %6480, %5447
  %6484 = fsub fast float %6481, %5446
  %6485 = call float @dx.op.dot3.f32(i32 55, float %6482, float %6483, float %6484, float %6482, float %6483, float %6484)  ; Dot3(ax,ay,az,bx,by,bz)
  %6486 = call float @dx.op.unary.f32(i32 25, float %6485)  ; Rsqrt(value)
  %6487 = fmul fast float %6482, %6486
  %6488 = fmul fast float %6483, %6486
  %6489 = fmul fast float %6484, %6486
  %6490 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %6487, float %6488, float %6489)  ; Dot3(ax,ay,az,bx,by,bz)
  %6491 = fmul fast float %6490, %6490
  %6492 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6493 = call float @dx.op.binary.f32(i32 35, float %5817, float 0x3F847AE140000000)  ; FMax(a,b)
  %6494 = fmul fast float %6493, %6493
  %6495 = fmul fast float %6494, %6494
  %6496 = fsub fast float 1.000000e+00, %6495
  %6497 = fmul fast float %5462, %5462
  %6498 = fmul fast float %6497, %6496
  %6499 = fadd fast float %6498, %6495
  %6500 = bitcast float %6499 to i32
  %6501 = ashr i32 %6500, 1
  %6502 = add nsw i32 %6501, 532487669
  %6503 = bitcast i32 %6502 to float
  %6504 = fadd fast float %6503, %5462
  %6505 = fmul fast float %6495, %6491
  %6506 = fsub fast float 1.000000e+00, %6491
  %6507 = fadd fast float %6506, %6505
  %6508 = fmul fast float %6492, %6492
  %6509 = fmul fast float %6508, %6496
  %6510 = fadd fast float %6509, %6495
  %6511 = bitcast float %6510 to i32
  %6512 = ashr i32 %6511, 1
  %6513 = add nsw i32 %6512, 532487669
  %6514 = bitcast i32 %6513 to float
  %6515 = fadd fast float %6514, %6492
  %6516 = fmul fast float %6507, %6507
  %6517 = fmul fast float %6516, %6504
  %6518 = fmul fast float %6517, %6515
  %6519 = fdiv fast float 1.000000e+00, %6518
  %6520 = bitcast float %6495 to i32
  %6521 = sitofp i32 %6520 to float
  %6522 = fmul fast float %6521, 0x3FE7F73180000000
  %6523 = fadd fast float %6522, 0x41AFE27C40000000
  %6524 = fptosi float %6523 to i32
  %6525 = bitcast i32 %6524 to float
  %6526 = fmul fast float %6312, 0x3FD80E9D60000000
  %6527 = fmul fast float %6526, %6478
  %6528 = fadd fast float %6525, %6527
  %6529 = bitcast float %6528 to i32
  %6530 = sub nsw i32 2129859010, %6529
  %6531 = bitcast i32 %6530 to float
  %6532 = fmul fast float %6495, %6519
  %6533 = fmul fast float %6532, %6525
  %6534 = fmul fast float %6533, %6531
  %6535 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6536 = fsub fast float 1.000000e+00, %6535
  %6537 = bitcast float %6536 to i32
  %6538 = sitofp i32 %6537 to float
  %6539 = fmul fast float %6538, 5.000000e+00
  %6540 = fadd fast float %6539, 0xC1EFBF8940000000
  %6541 = fptosi float %6540 to i32
  %6542 = bitcast i32 %6541 to float
  %6543 = fsub fast float 1.000000e+00, %5449
  %6544 = fsub fast float 1.000000e+00, %5450
  %6545 = fsub fast float 1.000000e+00, %5460
  %6546 = fmul fast float %6542, %6543
  %6547 = fmul fast float %6542, %6544
  %6548 = fmul fast float %6542, %6545
  %6549 = fadd fast float %6546, %5449
  %6550 = fadd fast float %6547, %5450
  %6551 = fadd fast float %6548, %5460
  br i1 %5732, label %6552, label %6575

; <label>:6552                                    ; preds = %6439
  %6553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6553, 2
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fadd fast float %6555, -5.000000e-01
  %6559 = fadd fast float %6556, -5.000000e-01
  %6560 = fmul fast float %5449, 4.000000e+00
  %6561 = fmul fast float %6560, %6543
  %6562 = fmul fast float %6561, %6557
  %6563 = fmul fast float %5450, 4.000000e+00
  %6564 = fmul fast float %6563, %6544
  %6565 = fmul fast float %6564, %6558
  %6566 = fmul fast float %5460, 4.000000e+00
  %6567 = fmul fast float %6566, %6545
  %6568 = fmul fast float %6567, %6559
  %6569 = fadd fast float %6562, %6549
  %6570 = fadd fast float %6565, %6550
  %6571 = fadd fast float %6568, %6551
  %6572 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  br label %6575

; <label>:6575                                    ; preds = %6552, %6439
  %6576 = phi float [ %6572, %6552 ], [ %6549, %6439 ]
  %6577 = phi float [ %6573, %6552 ], [ %6550, %6439 ]
  %6578 = phi float [ %6574, %6552 ], [ %6551, %6439 ]
  %6579 = fmul fast float %6467, 9.843750e-01
  %6580 = fadd fast float %6579, 7.812500e-03
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6580, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 2
  %6583 = extractvalue %dx.types.ResRet.f32 %6581, 3
  %6584 = fmul fast float %6582, %5449
  %6585 = fmul fast float %6582, %5450
  %6586 = fmul fast float %6582, %5460
  %6587 = fadd fast float %6584, %6583
  %6588 = fadd fast float %6585, %6583
  %6589 = fadd fast float %6586, %6583
  br i1 %5732, label %6590, label %6613

; <label>:6590                                    ; preds = %6575
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.ResRet.f32 %6591, 2
  %6595 = fadd fast float %6592, -5.000000e-01
  %6596 = fadd fast float %6593, -5.000000e-01
  %6597 = fadd fast float %6594, -5.000000e-01
  %6598 = fmul fast float %5449, 4.000000e+00
  %6599 = fmul fast float %6598, %6543
  %6600 = fmul fast float %6599, %6595
  %6601 = fmul fast float %5450, 4.000000e+00
  %6602 = fmul fast float %6601, %6544
  %6603 = fmul fast float %6602, %6596
  %6604 = fmul fast float %5460, 4.000000e+00
  %6605 = fmul fast float %6604, %6545
  %6606 = fmul fast float %6605, %6597
  %6607 = fadd fast float %6600, %6587
  %6608 = fadd fast float %6603, %6588
  %6609 = fadd fast float %6606, %6589
  %6610 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  br label %6613

; <label>:6613                                    ; preds = %6590, %6575
  %6614 = phi float [ %6610, %6590 ], [ %6587, %6575 ]
  %6615 = phi float [ %6611, %6590 ], [ %6588, %6575 ]
  %6616 = phi float [ %6612, %6590 ], [ %6589, %6575 ]
  %6617 = call float @dx.op.binary.f32(i32 35, float %6615, float %6616)  ; FMax(a,b)
  %6618 = call float @dx.op.binary.f32(i32 35, float %6614, float %6617)  ; FMax(a,b)
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = call float @dx.op.binary.f32(i32 35, float %6492, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6621 = fdiv fast float %4166, %6620
  %6622 = fmul fast float %5848, %6621
  %6623 = fmul fast float %5838, %6621
  %6624 = fmul fast float %5828, %6621
  %6625 = call float @dx.op.unary.f32(i32 21, float %6622)  ; Exp(value)
  %6626 = call float @dx.op.unary.f32(i32 21, float %6623)  ; Exp(value)
  %6627 = call float @dx.op.unary.f32(i32 21, float %6624)  ; Exp(value)
  %6628 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6629 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6630 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6631 = select i1 %5847, float %6628, float 0.000000e+00
  %6632 = select i1 %5837, float %6629, float 0.000000e+00
  %6633 = select i1 %5827, float %6630, float 0.000000e+00
  %6634 = fsub fast float -0.000000e+00, %5455
  %6635 = fsub fast float -0.000000e+00, %5456
  %6636 = fsub fast float -0.000000e+00, %5457
  %6637 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %6634, float %6635, float %6636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fmul fast float %6638, %6340
  %6640 = fmul fast float %6638, 9.843750e-01
  %6641 = fadd fast float %6640, 7.812500e-03
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6641, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6645 = fmul fast float %6643, %5449
  %6646 = fmul fast float %6643, %5450
  %6647 = fmul fast float %6643, %5460
  %6648 = fadd fast float %6645, %6644
  %6649 = fadd fast float %6646, %6644
  %6650 = fadd fast float %6647, %6644
  br i1 %5732, label %6651, label %6674

; <label>:6651                                    ; preds = %6613
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6656 = fadd fast float %6653, -5.000000e-01
  %6657 = fadd fast float %6654, -5.000000e-01
  %6658 = fadd fast float %6655, -5.000000e-01
  %6659 = fmul fast float %5449, 4.000000e+00
  %6660 = fmul fast float %6659, %6543
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %5450, 4.000000e+00
  %6663 = fmul fast float %6662, %6544
  %6664 = fmul fast float %6663, %6657
  %6665 = fmul fast float %5460, 4.000000e+00
  %6666 = fmul fast float %6665, %6545
  %6667 = fmul fast float %6666, %6658
  %6668 = fadd fast float %6661, %6648
  %6669 = fadd fast float %6664, %6649
  %6670 = fadd fast float %6667, %6650
  %6671 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6672 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6673 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  br label %6674

; <label>:6674                                    ; preds = %6651, %6613
  %6675 = phi float [ %6671, %6651 ], [ %6648, %6613 ]
  %6676 = phi float [ %6672, %6651 ], [ %6649, %6613 ]
  %6677 = phi float [ %6673, %6651 ], [ %6650, %6613 ]
  %6678 = call float @dx.op.binary.f32(i32 35, float %6676, float %6677)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6675, float %6678)  ; FMax(a,b)
  %6680 = fsub fast float 1.000000e+00, %6679
  %6681 = fmul fast float %5817, %5822
  %6682 = fadd fast float %5824, %6681
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = fsub fast float %6479, %5468
  %6685 = fsub fast float %6480, %5469
  %6686 = fsub fast float %6481, %5470
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float %6684, float %6685, float %6686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.unary.f32(i32 25, float %6687)  ; Rsqrt(value)
  %6689 = fmul fast float %6684, %6688
  %6690 = fmul fast float %6685, %6688
  %6691 = fmul fast float %6686, %6688
  %6692 = call float @dx.op.dot3.f32(i32 55, float %6634, float %6635, float %6636, float %6689, float %6690, float %6691)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = fmul fast float %6692, %6692
  %6694 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6695 = call float @dx.op.binary.f32(i32 35, float %6683, float 0x3F847AE140000000)  ; FMax(a,b)
  %6696 = fmul fast float %6695, %6695
  %6697 = fmul fast float %6696, %6696
  %6698 = fsub fast float 1.000000e+00, %6697
  %6699 = fmul fast float %6497, %6698
  %6700 = fadd fast float %6699, %6697
  %6701 = bitcast float %6700 to i32
  %6702 = ashr i32 %6701, 1
  %6703 = add nsw i32 %6702, 532487669
  %6704 = bitcast i32 %6703 to float
  %6705 = fadd fast float %6704, %5462
  %6706 = fmul fast float %6697, %6693
  %6707 = fsub fast float 1.000000e+00, %6693
  %6708 = fadd fast float %6707, %6706
  %6709 = fmul fast float %6694, %6694
  %6710 = fmul fast float %6709, %6698
  %6711 = fadd fast float %6710, %6697
  %6712 = bitcast float %6711 to i32
  %6713 = ashr i32 %6712, 1
  %6714 = add nsw i32 %6713, 532487669
  %6715 = bitcast i32 %6714 to float
  %6716 = fadd fast float %6715, %6694
  %6717 = fmul fast float %6708, %6708
  %6718 = fmul fast float %6717, %6705
  %6719 = fmul fast float %6718, %6716
  %6720 = fdiv fast float 1.000000e+00, %6719
  %6721 = bitcast float %6697 to i32
  %6722 = sitofp i32 %6721 to float
  %6723 = fmul fast float %6722, 0x3FE7F73180000000
  %6724 = fadd fast float %6723, 0x41AFE27C40000000
  %6725 = fptosi float %6724 to i32
  %6726 = bitcast i32 %6725 to float
  %6727 = fadd fast float %6726, %6527
  %6728 = bitcast float %6727 to i32
  %6729 = sub nsw i32 2129859010, %6728
  %6730 = bitcast i32 %6729 to float
  %6731 = fmul fast float %6697, %6720
  %6732 = fmul fast float %6731, %6726
  %6733 = fmul fast float %6732, %6730
  br i1 %6326, label %6734, label %6744

; <label>:6734                                    ; preds = %6674
  %6735 = fmul fast float %6639, %6631
  %6736 = fmul fast float %6639, %6632
  %6737 = fmul fast float %6639, %6633
  %6738 = fmul fast float %6735, %6680
  %6739 = fmul fast float %6738, %6733
  %6740 = fmul fast float %6736, %6680
  %6741 = fmul fast float %6740, %6733
  %6742 = fmul fast float %6737, %6680
  %6743 = fmul fast float %6742, %6733
  br label %6744

; <label>:6744                                    ; preds = %6734, %6674
  %6745 = phi float [ %6739, %6734 ], [ 0.000000e+00, %6674 ]
  %6746 = phi float [ %6741, %6734 ], [ 0.000000e+00, %6674 ]
  %6747 = phi float [ %6743, %6734 ], [ 0.000000e+00, %6674 ]
  %6748 = fmul fast float %6576, %6534
  %6749 = fmul fast float %6577, %6534
  %6750 = fmul fast float %6578, %6534
  %6751 = fsub fast float 1.000000e+00, %6468
  %6752 = bitcast float %6751 to i32
  %6753 = sitofp i32 %6752 to float
  %6754 = fmul fast float %6753, 5.000000e+00
  %6755 = fadd fast float %6754, 0xC1EFBF8940000000
  %6756 = fptosi float %6755 to i32
  %6757 = bitcast i32 %6756 to float
  %6758 = fmul fast float %6757, %4819
  %6759 = fmul fast float %6619, %6758
  %6760 = fmul fast float %6759, %5779
  %6761 = fmul fast float %6759, %5780
  %6762 = fmul fast float %6759, %5781
  %6763 = fadd fast float %6760, %6748
  %6764 = fadd fast float %6761, %6749
  %6765 = fadd fast float %6762, %6750
  %6766 = fmul fast float %6763, %6474
  %6767 = fmul fast float %6764, %6474
  %6768 = fmul fast float %6765, %6474
  %6769 = fadd fast float %6766, %6745
  %6770 = fadd fast float %6767, %6746
  %6771 = fadd fast float %6768, %6747
  %6772 = fmul fast float %6456, %4815
  %6773 = fmul fast float %6772, %6474
  %6774 = fmul fast float %6773, %6619
  %6775 = fmul fast float %6457, %4815
  %6776 = fmul fast float %6775, %6474
  %6777 = fmul fast float %6776, %6619
  %6778 = fmul fast float %6458, %4815
  %6779 = fmul fast float %6778, %6474
  %6780 = fmul fast float %6779, %6619
  %6781 = fadd fast float %6774, %6291
  %6782 = fadd fast float %6777, %6292
  %6783 = fadd fast float %6780, %6293
  %6784 = fmul fast float %6772, %6769
  %6785 = fmul fast float %6775, %6770
  %6786 = fmul fast float %6778, %6771
  %6787 = fadd fast float %6784, %6288
  %6788 = fadd fast float %6785, %6289
  %6789 = fadd fast float %6786, %6290
  br label %6370

; <label>:6790                                    ; preds = %6370
  br label %6791

; <label>:6791                                    ; preds = %6790, %6254
  %6792 = phi float [ %6256, %6254 ], [ %6371, %6790 ]
  %6793 = phi float [ %6257, %6254 ], [ %6372, %6790 ]
  %6794 = phi float [ %6258, %6254 ], [ %6373, %6790 ]
  %6795 = phi float [ %6259, %6254 ], [ %6374, %6790 ]
  %6796 = phi float [ %6260, %6254 ], [ %6375, %6790 ]
  %6797 = phi float [ %6261, %6254 ], [ %6376, %6790 ]
  %6798 = add i32 %6255, 1
  %6799 = icmp ugt i32 %6798, %6251
  br i1 %6799, label %6800, label %6254

; <label>:6800                                    ; preds = %6791
  br label %6801

; <label>:6801                                    ; preds = %6800, %6230, %6220
  %6802 = phi float [ %6221, %6220 ], [ %6221, %6230 ], [ %6792, %6800 ]
  %6803 = phi float [ %6222, %6220 ], [ %6222, %6230 ], [ %6793, %6800 ]
  %6804 = phi float [ %6223, %6220 ], [ %6223, %6230 ], [ %6794, %6800 ]
  %6805 = phi float [ %6224, %6220 ], [ %6224, %6230 ], [ %6795, %6800 ]
  %6806 = phi float [ %6225, %6220 ], [ %6225, %6230 ], [ %6796, %6800 ]
  %6807 = phi float [ %6226, %6220 ], [ %6226, %6230 ], [ %6797, %6800 ]
  %6808 = call float @dx.op.unary.f32(i32 24, float %5452)  ; Sqrt(value)
  %6809 = call float @dx.op.unary.f32(i32 24, float %5453)  ; Sqrt(value)
  %6810 = call float @dx.op.unary.f32(i32 24, float %5454)  ; Sqrt(value)
  %6811 = fmul fast float %6808, %6805
  %6812 = fmul fast float %6809, %6806
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  br i1 %170, label %6815, label %6835

; <label>:6815                                    ; preds = %6801
  %6816 = fadd fast float %6807, %4821
  %6817 = fmul fast float %6816, %4822
  %6818 = fsub fast float 1.000000e+00, %4822
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 3
  %6822 = fmul fast float %6821, %6819
  %6823 = fadd fast float %6822, %6817
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = fmul fast float %6825, %5787
  %6827 = fsub fast float %6823, %6826
  %6828 = fadd fast float %6812, %6811
  %6829 = fmul fast float %6814, %6828
  %6830 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6831 = fsub fast float %6827, %6830
  %6832 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6833 = fmul fast float %6831, %6832
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  br label %6851

; <label>:6835                                    ; preds = %6801
  %6836 = fmul fast float %6810, %6807
  %6837 = fmul fast float %6814, %6811
  %6838 = fmul fast float %6814, %6812
  %6839 = fmul fast float %6836, %6814
  %6840 = add i32 %33, 356
  %6841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6840, i32 undef)  ; BufferLoad(srv,index,wot)
  %6842 = extractvalue %dx.types.ResRet.i32 %6841, 0
  %6843 = and i32 %6842, 32
  %6844 = icmp eq i32 %6843, 0
  br i1 %6844, label %6851, label %6845

; <label>:6845                                    ; preds = %6835
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = fmul fast float %6847, 0x3FE99999A0000000
  %6849 = fadd fast float %6847, %6837
  %6850 = fadd fast float %6848, %6839
  br label %6851

; <label>:6851                                    ; preds = %6845, %6835, %6815
  %6852 = phi float [ %6829, %6815 ], [ %6849, %6845 ], [ %6837, %6835 ]
  %6853 = phi float [ %6834, %6815 ], [ %6838, %6845 ], [ %6838, %6835 ]
  %6854 = phi float [ 1.000000e+00, %6815 ], [ %6850, %6845 ], [ %6839, %6835 ]
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = fmul fast float %6856, %6803
  %6858 = fmul fast float %6856, %6804
  %6859 = fadd fast float %6803, %6802
  %6860 = select i1 %170, float %6859, float %6802
  %6861 = fmul float %6860, %6856
  %6862 = select i1 %170, float 0.000000e+00, float %6857
  %6863 = select i1 %170, float 0.000000e+00, float %6858
  %6864 = fmul fast float %6852, %6808
  %6865 = fmul fast float %6853, %6809
  %6866 = fmul fast float %6854, %6810
  %6867 = fadd fast float %6861, %6864
  %6868 = fadd fast float %6862, %6865
  %6869 = fadd fast float %6863, %6866
  %6870 = select i1 %170, float %6853, float %6868
  %6871 = select i1 %170, float %6854, float %6869
  %6872 = call float @dx.op.binary.f32(i32 36, float %6867, float 3.225500e+04)  ; FMin(a,b)
  %6873 = call float @dx.op.binary.f32(i32 36, float %6870, float 3.225500e+04)  ; FMin(a,b)
  %6874 = call float @dx.op.binary.f32(i32 36, float %6871, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6872)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6873)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6874)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

