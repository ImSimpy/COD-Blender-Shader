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
; shader hash: d313d45ba777c036b085b41a6f9134da
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
  %353 = add i32 %33, 488
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
  br i1 %406, label %990, label %407

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
  %874 = add i32 %33, 456
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
  %912 = and i32 %911, 26624
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %971, label %914

; <label>:914                                     ; preds = %886
  %915 = add i32 %33, 472
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = add i32 %917, 0
  %919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %919, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 3
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 1048576
  %927 = icmp ne i32 %926, 0
  %928 = and i32 %925, 8192
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %944, label %930

; <label>:930                                     ; preds = %914
  %931 = extractvalue %dx.types.ResRet.f32 %920, 2
  %932 = select i1 %927, float %931, float %922
  %933 = select i1 %927, float %921, float %922
  %934 = add i32 %33, 96
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3F80101020000000
  %941 = fmul fast float %940, %933
  %942 = fmul fast float %940, %922
  %943 = fmul fast float %940, %932
  br label %944

; <label>:944                                     ; preds = %930, %914
  %945 = phi float [ %941, %930 ], [ 0.000000e+00, %914 ]
  %946 = phi float [ %942, %930 ], [ 0.000000e+00, %914 ]
  %947 = phi float [ %943, %930 ], [ 0.000000e+00, %914 ]
  %948 = and i32 %925, 2048
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %958, label %950

; <label>:950                                     ; preds = %944
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = shl i32 %952, 4
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = fmul fast float %955, %923
  %957 = call float @dx.op.binary.f32(i32 35, float %956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %958

; <label>:958                                     ; preds = %950, %944
  %959 = phi float [ %957, %950 ], [ 0x3F70101020000000, %944 ]
  %960 = and i32 %925, 16384
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %971, label %962

; <label>:962                                     ; preds = %958
  %963 = add i32 %33, 96
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 24
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %921, 0x3F70101020000000
  %969 = select i1 %927, float 0x3F70101020000000, float %968
  %970 = fmul fast float %969, %967
  br label %971

; <label>:971                                     ; preds = %962, %958, %886
  %972 = phi float [ %945, %962 ], [ %945, %958 ], [ 0.000000e+00, %886 ]
  %973 = phi float [ %946, %962 ], [ %946, %958 ], [ 0.000000e+00, %886 ]
  %974 = phi float [ %947, %962 ], [ %947, %958 ], [ 0.000000e+00, %886 ]
  %975 = phi float [ %959, %962 ], [ %959, %958 ], [ 0x3F70101020000000, %886 ]
  %976 = phi float [ %970, %962 ], [ 0.000000e+00, %958 ], [ 0.000000e+00, %886 ]
  %977 = add i32 %33, 96
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = lshr i32 %979, 8
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = fmul fast float %984, %985
  %987 = fadd fast float %986, %981
  %988 = fmul fast float %987, 0x3F70101020000000
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  br label %990

; <label>:990                                     ; preds = %971, %392
  %991 = phi float [ 0.000000e+00, %392 ], [ %802, %971 ]
  %992 = phi float [ 0.000000e+00, %392 ], [ %803, %971 ]
  %993 = phi float [ 0.000000e+00, %392 ], [ %721, %971 ]
  %994 = phi float [ 0.000000e+00, %392 ], [ %722, %971 ]
  %995 = phi float [ 0.000000e+00, %392 ], [ %723, %971 ]
  %996 = phi float [ 0.000000e+00, %392 ], [ %849, %971 ]
  %997 = phi float [ 0.000000e+00, %392 ], [ %850, %971 ]
  %998 = phi float [ 0.000000e+00, %392 ], [ %851, %971 ]
  %999 = phi float [ 0.000000e+00, %392 ], [ %972, %971 ]
  %1000 = phi float [ 0.000000e+00, %392 ], [ %973, %971 ]
  %1001 = phi float [ 0.000000e+00, %392 ], [ %974, %971 ]
  %1002 = phi float [ 0.000000e+00, %392 ], [ %907, %971 ]
  %1003 = phi float [ 0.000000e+00, %392 ], [ %908, %971 ]
  %1004 = phi float [ 0.000000e+00, %392 ], [ %909, %971 ]
  %1005 = phi float [ 0.000000e+00, %392 ], [ %707, %971 ]
  %1006 = phi float [ 0.000000e+00, %392 ], [ 1.000000e+00, %971 ]
  %1007 = phi float [ 0.000000e+00, %392 ], [ %801, %971 ]
  %1008 = phi float [ 0.000000e+00, %392 ], [ %804, %971 ]
  %1009 = phi float [ 0.000000e+00, %392 ], [ %975, %971 ]
  %1010 = phi float [ 0.000000e+00, %392 ], [ %976, %971 ]
  %1011 = phi float [ 0.000000e+00, %392 ], [ %989, %971 ]
  br i1 %343, label %2073, label %1012

; <label>:1012                                    ; preds = %990
  %1013 = icmp ult i32 %398, 2
  %1014 = add i32 %33, 40
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = add i32 %33, 44
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = or i32 %1019, %1016
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %2073, label %1022

; <label>:1022                                    ; preds = %1012
  %1023 = and i32 %1016, 262144
  %1024 = icmp ne i32 %1023, 0
  %1025 = select i1 %1024, float %36, float 1.000000e+00
  %1026 = select i1 %1024, float %37, float 0.000000e+00
  %1027 = select i1 %1024, float %38, float 0.000000e+00
  %1028 = select i1 %1024, float %39, float 1.000000e+00
  %1029 = select i1 %1024, float %40, float %61
  %1030 = select i1 %1024, float %41, float %62
  %1031 = add i32 %33, 300
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = lshr i32 %1033, 16
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = fmul fast float %1035, 0x3F50624DE0000000
  %1037 = add i32 %33, 104
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = lshr i32 %1039, 16
  %1041 = and i32 %1040, 255
  %1042 = lshr i32 %1039, 24
  %1043 = add i32 %33, 308
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1045, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = add i32 %33, 48
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = lshr i32 %1052, 22
  %1054 = shl nuw nsw i32 %1053, 5
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = shl i32 %1052, 4
  %1057 = and i32 %1056, 32752
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = lshr i32 %1052, 7
  %1060 = and i32 %1059, 32752
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 3
  %1064 = fmul fast float %1063, 1.000000e+03
  %1065 = fmul fast float %253, %1064
  %1066 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1067 = fadd fast float %1066, %243
  %1068 = fmul fast float %254, %1064
  %1069 = call float @dx.op.unary.f32(i32 22, float %1068)  ; Frc(value)
  %1070 = fadd fast float %1069, %245
  %1071 = fmul fast float %1036, %1064
  %1072 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1073 = fmul fast float %1072, 0x401921FB60000000
  %1074 = fadd fast float %1073, %1055
  %1075 = call float @dx.op.unary.f32(i32 13, float %1074)  ; Sin(value)
  %1076 = call float @dx.op.unary.f32(i32 12, float %1074)  ; Cos(value)
  %1077 = fsub fast float -0.000000e+00, %1075
  %1078 = fadd fast float %1029, -5.000000e-01
  %1079 = fadd fast float %1030, -5.000000e-01
  %1080 = fmul fast float %1047, %1078
  %1081 = fmul fast float %1049, %1079
  %1082 = fadd fast float %1080, 5.000000e-01
  %1083 = fadd fast float %1081, 5.000000e-01
  %1084 = fmul fast float %1058, %1082
  %1085 = fmul fast float %1061, %1083
  %1086 = fmul fast float %1076, %1084
  %1087 = call float @dx.op.tertiary.f32(i32 46, float %1077, float %1085, float %1086)  ; FMad(a,b,c)
  %1088 = fmul fast float %1075, %1084
  %1089 = call float @dx.op.tertiary.f32(i32 46, float %1076, float %1085, float %1088)  ; FMad(a,b,c)
  %1090 = fadd fast float %1067, %1087
  %1091 = fadd fast float %1070, %1089
  %1092 = icmp ugt i32 %1041, 1
  %1093 = icmp ugt i32 %1039, 33554431
  %1094 = or i1 %1093, %1092
  br i1 %1094, label %1095, label %1120

; <label>:1095                                    ; preds = %1022
  %1096 = add i32 %33, 244
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = lshr i32 %1098, 16
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = fmul fast float %1063, %1100
  %1102 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1103 = mul nuw nsw i32 %1041, %1042
  %1104 = uitofp i32 %1103 to float
  %1105 = fmul fast float %1102, %1104
  %1106 = call float @dx.op.unary.f32(i32 27, float %1105)  ; Round_ni(value)
  %1107 = fptoui float %1106 to i32
  %1108 = urem i32 %1107, %1041
  %1109 = udiv i32 %1107, %1042
  %1110 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1112 = uitofp i32 %1108 to float
  %1113 = uitofp i32 %1109 to float
  %1114 = fadd fast float %1110, %1112
  %1115 = fadd fast float %1111, %1113
  %1116 = uitofp i32 %1041 to float
  %1117 = uitofp i32 %1042 to float
  %1118 = fdiv fast float %1114, %1116
  %1119 = fdiv fast float %1115, %1117
  br label %1120

; <label>:1120                                    ; preds = %1095, %1022
  %1121 = phi float [ %1118, %1095 ], [ %1090, %1022 ]
  %1122 = phi float [ %1119, %1095 ], [ %1091, %1022 ]
  %1123 = and i32 %1016, 16777216
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1234, label %1125

; <label>:1125                                    ; preds = %1120
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1130 = fadd fast float %1127, %128
  %1131 = fadd fast float %1128, %129
  %1132 = fadd fast float %1129, %130
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = icmp eq i32 %34, 65535
  br i1 %1136, label %1231, label %1137

; <label>:1137                                    ; preds = %1125
  %1138 = lshr i32 %34, 1
  %1139 = shl i32 %1138, 2
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %34, 1
  %1143 = icmp ne i32 %1142, 0
  %1144 = lshr i32 %1141, 16
  %1145 = and i32 %1141, 65535
  %1146 = select i1 %1143, i32 %1144, i32 %1145
  %1147 = icmp eq i32 %1146, 65535
  br i1 %1147, label %1227, label %1148

; <label>:1148                                    ; preds = %1137
  %1149 = mul nuw nsw i32 %1146, 40
  %1150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = add nuw nsw i32 %1149, 12
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = add nuw nsw i32 %1149, 24
  %1160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = add nuw nsw i32 %1149, 36
  %1165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = fsub fast float %1130, %1151
  %1168 = fsub fast float %1131, %1152
  %1169 = fsub fast float %1132, %1153
  %1170 = fmul fast float %1166, %1167
  %1171 = fmul fast float %1166, %1168
  %1172 = fmul fast float %1166, %1169
  %1173 = call float @dx.op.unary.f32(i32 27, float %1170)  ; Round_ni(value)
  %1174 = call float @dx.op.unary.f32(i32 27, float %1171)  ; Round_ni(value)
  %1175 = call float @dx.op.unary.f32(i32 27, float %1172)  ; Round_ni(value)
  %1176 = fadd fast float %1173, 5.000000e-01
  %1177 = fadd fast float %1174, 5.000000e-01
  %1178 = fadd fast float %1175, 5.000000e-01
  %1179 = fmul fast float %1176, %1156
  %1180 = fmul fast float %1177, %1157
  %1181 = fmul fast float %1178, %1158
  %1182 = shl i32 %34, 2
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1188 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1189 = call float @dx.op.unary.f32(i32 22, float %1181)  ; Frc(value)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1186, %dx.types.Handle %30, float %1187, float %1188, float %1189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = fmul fast float %1191, 1.023000e+03
  %1195 = fmul fast float %1192, 1.023000e+03
  %1196 = fmul fast float %1193, 1.023000e+03
  %1197 = fadd fast float %1194, 5.000000e-01
  %1198 = fadd fast float %1195, 5.000000e-01
  %1199 = fadd fast float %1196, 5.000000e-01
  %1200 = call float @dx.op.unary.f32(i32 27, float %1197)  ; Round_ni(value)
  %1201 = call float @dx.op.unary.f32(i32 27, float %1198)  ; Round_ni(value)
  %1202 = call float @dx.op.unary.f32(i32 27, float %1199)  ; Round_ni(value)
  %1203 = fsub fast float %1170, %1173
  %1204 = fsub fast float %1171, %1174
  %1205 = fsub fast float %1172, %1175
  %1206 = fmul fast float %1203, 7.500000e-01
  %1207 = fmul fast float %1204, 7.500000e-01
  %1208 = fmul fast float %1205, 7.500000e-01
  %1209 = fadd fast float %1173, 1.250000e-01
  %1210 = fadd fast float %1209, %1206
  %1211 = fadd fast float %1210, %1200
  %1212 = fadd fast float %1174, 1.250000e-01
  %1213 = fadd fast float %1212, %1207
  %1214 = fadd fast float %1213, %1201
  %1215 = fadd fast float %1175, 1.250000e-01
  %1216 = fadd fast float %1215, %1208
  %1217 = fadd fast float %1216, %1202
  %1218 = fmul fast float %1211, %1161
  %1219 = fmul fast float %1214, %1162
  %1220 = fmul fast float %1217, %1163
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1224, %dx.types.Handle %28, float %1218, float %1219, float %1220, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  br label %1227

; <label>:1227                                    ; preds = %1148, %1137
  %1228 = phi float [ %1226, %1148 ], [ -1.000000e+00, %1137 ]
  %1229 = fadd fast float %1228, %1135
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br label %1231

; <label>:1231                                    ; preds = %1227, %1125
  %1232 = phi float [ %1230, %1227 ], [ %1135, %1125 ]
  %1233 = fmul fast float %1232, %395
  br label %1234

; <label>:1234                                    ; preds = %1231, %1120
  %1235 = phi float [ %1233, %1231 ], [ %395, %1120 ]
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 256
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1286, label %1240

; <label>:1240                                    ; preds = %1234
  %1241 = add i32 %33, 428
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %70, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = add i32 %33, 116
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = shl i32 %1250, 4
  %1252 = and i32 %1251, 32752
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1250, 7
  %1255 = and i32 %1254, 32752
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = fsub fast float 1.000000e+00, %1235
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1259 = bitcast float %1235 to i32
  %1260 = sitofp i32 %1259 to float
  %1261 = fadd fast float %1260, 0xC1CFBF8940000000
  %1262 = fmul fast float %1256, %1261
  %1263 = fadd fast float %1262, 0x41CFBF8940000000
  %1264 = fptosi float %1263 to i32
  %1265 = bitcast i32 %1264 to float
  %1266 = bitcast float %1258 to i32
  %1267 = sitofp i32 %1266 to float
  %1268 = fadd fast float %1267, 0xC1CFBF8940000000
  %1269 = fmul fast float %1268, %1256
  %1270 = fadd fast float %1269, 0x41CFBF8940000000
  %1271 = fptosi float %1270 to i32
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1265, %1253
  %1274 = fmul fast float %1272, %1253
  %1275 = fsub fast float %1258, %1273
  %1276 = fadd fast float %1274, %1258
  %1277 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1279 = fsub fast float %1247, %1277
  %1280 = fsub fast float %1278, %1277
  %1281 = bitcast float %1280 to i32
  %1282 = sub nsw i32 2129859010, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1283, %1279
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  br label %1286

; <label>:1286                                    ; preds = %1240, %1234
  %1287 = phi float [ %1285, %1240 ], [ %1235, %1234 ]
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 128
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1308, label %1292

; <label>:1292                                    ; preds = %1286
  %1293 = add i32 %33, 412
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1295, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1297, %dx.types.Handle %70, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 524288
  %1303 = icmp ne i32 %1302, 0
  %1304 = fcmp fast ogt float %1299, 0x3FE0101020000000
  %1305 = select i1 %1304, float 1.000000e+00, float 0.000000e+00
  %1306 = select i1 %1303, float %1305, float %1299
  %1307 = fmul fast float %1306, %1287
  br label %1308

; <label>:1308                                    ; preds = %1292, %1286
  %1309 = phi float [ %1307, %1292 ], [ %1287, %1286 ]
  %1310 = fcmp fast ult float %1309, 0x3F70101020000000
  br i1 %1310, label %2073, label %1311

; <label>:1311                                    ; preds = %1308
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 16
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1514, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = add i32 %33, 364
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = add i32 %1321, 0
  %1323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1323, %dx.types.Handle %69, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = extractvalue %dx.types.ResRet.f32 %1324, 3
  %1329 = and i32 %1318, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = lshr i32 %1318, 8
  %1332 = and i32 %1331, 255
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1328, %1330
  %1335 = fadd fast float %1334, %1333
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 512
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1349, label %1341

; <label>:1341                                    ; preds = %1316
  %1342 = add i32 %33, 444
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %70, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1341, %1316
  %1350 = phi float [ %1348, %1341 ], [ 1.000000e+00, %1316 ]
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 33554432
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1461, label %1355

; <label>:1355                                    ; preds = %1349
  %1356 = add i32 %33, 240
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1358, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = add i32 %33, 244
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 65535
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = lshr i32 %1369, 24
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = and i32 %1369, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = lshr i32 %1369, 8
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101020000000
  %1380 = lshr i32 %1369, 16
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = add i32 %33, 236
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = lshr i32 %1386, 24
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = and i32 %1386, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = lshr i32 %1386, 8
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = lshr i32 %1386, 16
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = bitcast float %1325 to i32
  %1402 = ashr i32 %1401, 1
  %1403 = sub nsw i32 1597463174, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1325, 5.000000e-01
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1406, %1405
  %1408 = fsub fast float 1.500000e+00, %1407
  %1409 = fmul fast float %1404, %1325
  %1410 = fmul fast float %1409, %1408
  %1411 = bitcast float %1326 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1326, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1326
  %1420 = fmul fast float %1419, %1418
  %1421 = bitcast float %1327 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1327, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1327
  %1430 = fmul fast float %1429, %1428
  %1431 = fsub fast float %1410, %1392
  %1432 = fsub fast float %1420, %1396
  %1433 = fsub fast float %1430, %1400
  %1434 = fmul fast float %1431, %1360
  %1435 = fmul fast float %1432, %1362
  %1436 = fmul fast float %1433, %1367
  %1437 = fadd fast float %1434, %1375
  %1438 = fadd fast float %1435, %1379
  %1439 = fadd fast float %1436, %1383
  %1440 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1443 = fmul fast float %1440, %1440
  %1444 = fmul fast float %1441, %1441
  %1445 = fmul fast float %1442, %1442
  %1446 = fsub fast float %1443, %1325
  %1447 = fsub fast float %1444, %1326
  %1448 = fsub fast float %1445, %1327
  %1449 = fmul fast float %1446, %1350
  %1450 = fmul fast float %1447, %1350
  %1451 = fmul fast float %1448, %1350
  %1452 = fadd fast float %1449, %1325
  %1453 = fadd fast float %1450, %1326
  %1454 = fadd fast float %1451, %1327
  %1455 = fadd fast float %1372, %1336
  %1456 = fsub fast float %1455, %1389
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fsub fast float %1457, %1336
  %1459 = fmul fast float %1458, %1350
  %1460 = fadd fast float %1459, %1336
  br label %1514

; <label>:1461                                    ; preds = %1349
  %1462 = and i32 %1352, 134217728
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1498, label %1464

; <label>:1464                                    ; preds = %1461
  %1465 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1466 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1467 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1468 = fadd fast float %1465, -5.000000e-01
  %1469 = fadd fast float %1466, -5.000000e-01
  %1470 = fadd fast float %1467, -5.000000e-01
  %1471 = fmul fast float %1468, %1350
  %1472 = fmul fast float %1469, %1350
  %1473 = fmul fast float %1470, %1350
  %1474 = fadd fast float %1471, 5.000000e-01
  %1475 = fadd fast float %1472, 5.000000e-01
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1478 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1479 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1480 = fmul fast float %1474, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1477
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1477
  %1485 = fmul fast float %1475, 2.000000e+00
  %1486 = fsub fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1486, %1478
  %1488 = fadd fast float %1487, %1485
  %1489 = fmul fast float %1488, %1478
  %1490 = fmul fast float %1476, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1479
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1479
  %1495 = fmul fast float %1484, %1484
  %1496 = fmul fast float %1489, %1489
  %1497 = fmul fast float %1494, %1494
  br label %1514

; <label>:1498                                    ; preds = %1461
  %1499 = fmul fast float %230, %230
  %1500 = fmul fast float %234, %234
  %1501 = fmul fast float %238, %238
  %1502 = fadd fast float %1499, -1.000000e+00
  %1503 = fadd fast float %1500, -1.000000e+00
  %1504 = fadd fast float %1501, -1.000000e+00
  %1505 = fmul fast float %1350, %1502
  %1506 = fmul fast float %1350, %1503
  %1507 = fmul fast float %1350, %1504
  %1508 = fadd fast float %1505, 1.000000e+00
  %1509 = fadd fast float %1506, 1.000000e+00
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = fmul fast float %1508, %1325
  %1512 = fmul fast float %1509, %1326
  %1513 = fmul fast float %1510, %1327
  br label %1514

; <label>:1514                                    ; preds = %1498, %1464, %1355, %1311
  %1515 = phi float [ %1460, %1355 ], [ %1336, %1464 ], [ %1336, %1498 ], [ 0x3FA23C0BE0000000, %1311 ]
  %1516 = phi float [ %1452, %1355 ], [ %1495, %1464 ], [ %1511, %1498 ], [ 1.000000e+00, %1311 ]
  %1517 = phi float [ %1453, %1355 ], [ %1496, %1464 ], [ %1512, %1498 ], [ 1.000000e+00, %1311 ]
  %1518 = phi float [ %1454, %1355 ], [ %1497, %1464 ], [ %1513, %1498 ], [ 1.000000e+00, %1311 ]
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 1
  %1521 = and i32 %1520, 1
  %1522 = icmp ne i32 %1521, 0
  %1523 = add i32 %33, 356
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 32
  %1527 = icmp ne i32 %1526, 0
  %1528 = and i1 %1522, %1527
  %1529 = select i1 %1528, float 1.000000e+00, float %1516
  %1530 = select i1 %1528, float 0x3FD3333340000000, float %1517
  %1531 = select i1 %1528, float 0x3FD3333340000000, float %1518
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 32
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1608, label %1536

; <label>:1536                                    ; preds = %1514
  %1537 = add i32 %33, 108
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %33, 380
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = add i32 %1542, 0
  %1544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1544, %dx.types.Handle %69, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = extractvalue %dx.types.ResRet.f32 %1545, 3
  %1550 = and i32 %1539, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = lshr i32 %1539, 8
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = lshr i32 %1539, 16
  %1556 = and i32 %1555, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101000000000
  %1559 = fmul fast float %1546, %1551
  %1560 = fadd fast float %1559, %1554
  %1561 = fmul fast float %1560, 0x3F70101000000000
  %1562 = fadd fast float %1547, -5.000000e-01
  %1563 = fadd fast float %1549, -5.000000e-01
  %1564 = fmul fast float %1562, %1558
  %1565 = fmul fast float %1563, %1558
  %1566 = fadd fast float %1564, 5.000000e-01
  %1567 = fadd fast float %1565, 5.000000e-01
  %1568 = fmul fast float %1566, 2.000000e+00
  %1569 = fadd fast float %1568, -1.000000e+00
  %1570 = fmul fast float %1567, 2.000000e+00
  %1571 = fadd fast float %1570, -1.000000e+00
  %1572 = fadd fast float %1569, %1571
  %1573 = fmul fast float %1572, 5.000000e-01
  %1574 = fsub fast float %1569, %1571
  %1575 = fmul fast float %1574, 5.000000e-01
  %1576 = call float @dx.op.unary.f32(i32 6, float %1573)  ; FAbs(value)
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = call float @dx.op.unary.f32(i32 6, float %1575)  ; FAbs(value)
  %1579 = fsub fast float %1577, %1578
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1575, float %1579, float %1573, float %1575, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = call float @dx.op.unary.f32(i32 25, float %1580)  ; Rsqrt(value)
  %1582 = fmul fast float %1573, %1581
  %1583 = fmul fast float %1575, %1581
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 67108864
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1604, label %1588

; <label>:1588                                    ; preds = %1536
  %1589 = add i32 %33, 296
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 65535
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1591, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = fsub fast float %1561, %1599
  %1601 = fmul fast float %1600, %1593
  %1602 = fadd fast float %1601, %1597
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br label %1604

; <label>:1604                                    ; preds = %1588, %1536
  %1605 = phi float [ %1603, %1588 ], [ %1561, %1536 ]
  %1606 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1025, float %1026)  ; Dot2(ax,ay,bx,by)
  %1607 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1027, float %1028)  ; Dot2(ax,ay,bx,by)
  br label %1608

; <label>:1608                                    ; preds = %1604, %1514
  %1609 = phi float [ %1605, %1604 ], [ 0x3FD6666660000000, %1514 ]
  %1610 = phi float [ %1606, %1604 ], [ 0.000000e+00, %1514 ]
  %1611 = phi float [ %1607, %1604 ], [ 0.000000e+00, %1514 ]
  %1612 = phi float [ %1548, %1604 ], [ 1.000000e+00, %1514 ]
  %1613 = add i32 %33, 176
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 22
  %1617 = shl nuw nsw i32 %1616, 5
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 64
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1656, label %1623

; <label>:1623                                    ; preds = %1608
  %1624 = add i32 %33, 396
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 131072
  %1632 = icmp eq i32 %1631, 0
  %1633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %69, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.ResRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.ResRet.f32 %1633, 2
  %1637 = fmul fast float %1634, %218
  %1638 = fmul fast float %1635, %221
  %1639 = fmul fast float %1636, %224
  br i1 %1632, label %1646, label %1640

; <label>:1640                                    ; preds = %1623
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = fmul fast float %1642, %1637
  %1644 = fmul fast float %1642, %1638
  %1645 = fmul fast float %1642, %1639
  br label %1646

; <label>:1646                                    ; preds = %1640, %1623
  %1647 = phi float [ %1643, %1640 ], [ %1637, %1623 ]
  %1648 = phi float [ %1644, %1640 ], [ %1638, %1623 ]
  %1649 = phi float [ %1645, %1640 ], [ %1639, %1623 ]
  %1650 = fmul fast float %1647, %1618
  %1651 = select i1 %170, float %1650, float %1647
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1648, float %1649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = select i1 %170, float 0.000000e+00, float %1647
  %1654 = select i1 %170, float %1652, float %1648
  %1655 = select i1 %170, float 0.000000e+00, float %1649
  br label %1656

; <label>:1656                                    ; preds = %1646, %1608
  %1657 = phi float [ %1653, %1646 ], [ 0.000000e+00, %1608 ]
  %1658 = phi float [ %1654, %1646 ], [ 0.000000e+00, %1608 ]
  %1659 = phi float [ %1655, %1646 ], [ 0.000000e+00, %1608 ]
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 1024
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1694, label %1664

; <label>:1664                                    ; preds = %1656
  %1665 = add i32 %33, 168
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = lshr i32 %1667, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F70101020000000
  %1675 = lshr i32 %1667, 16
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101020000000
  %1679 = fmul fast float %1670, %1670
  %1680 = fmul fast float %1674, %1674
  %1681 = fmul fast float %1678, %1678
  %1682 = add i32 %33, 460
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = add i32 %1684, 0
  %1686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1686, %dx.types.Handle %70, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fmul fast float %1679, %1688
  %1692 = fmul fast float %1680, %1689
  %1693 = fmul fast float %1681, %1690
  br label %1694

; <label>:1694                                    ; preds = %1664, %1656
  %1695 = phi float [ %1691, %1664 ], [ 0.000000e+00, %1656 ]
  %1696 = phi float [ %1692, %1664 ], [ 0.000000e+00, %1656 ]
  %1697 = phi float [ %1693, %1664 ], [ 0.000000e+00, %1656 ]
  %1698 = fcmp fast ogt float %1695, 0.000000e+00
  %1699 = fcmp fast ogt float %1696, 0.000000e+00
  %1700 = fcmp fast ogt float %1697, 0.000000e+00
  %1701 = call float @dx.op.unary.f32(i32 23, float %1695)  ; Log(value)
  %1702 = call float @dx.op.unary.f32(i32 23, float %1696)  ; Log(value)
  %1703 = call float @dx.op.unary.f32(i32 23, float %1697)  ; Log(value)
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = lshr i32 %1705, 7
  %1707 = and i32 %1706, 32752
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = fmul fast float %1701, 0xBFE62E4300000000
  %1710 = fmul fast float %1709, %1708
  %1711 = fmul fast float %1702, 0xBFE62E4300000000
  %1712 = fmul fast float %1711, %1708
  %1713 = fmul fast float %1703, 0xBFE62E4300000000
  %1714 = fmul fast float %1713, %1708
  %1715 = select i1 %1698, float %1710, float 1.270000e+02
  %1716 = select i1 %1699, float %1712, float 1.270000e+02
  %1717 = select i1 %1700, float %1714, float 1.270000e+02
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 26624
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1779, label %1722

; <label>:1722                                    ; preds = %1694
  %1723 = add i32 %33, 476
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = add i32 %1725, 0
  %1727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1727, %dx.types.Handle %70, float %1121, float %1122, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1729 = extractvalue %dx.types.ResRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.ResRet.f32 %1728, 3
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 1048576
  %1735 = icmp ne i32 %1734, 0
  %1736 = and i32 %1733, 8192
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1752, label %1738

; <label>:1738                                    ; preds = %1722
  %1739 = extractvalue %dx.types.ResRet.f32 %1728, 2
  %1740 = select i1 %1735, float %1739, float %1730
  %1741 = select i1 %1735, float %1729, float %1730
  %1742 = add i32 %33, 112
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = lshr i32 %1744, 16
  %1746 = and i32 %1745, 255
  %1747 = uitofp i32 %1746 to float
  %1748 = fmul fast float %1747, 0x3F80101020000000
  %1749 = fmul fast float %1748, %1741
  %1750 = fmul fast float %1748, %1730
  %1751 = fmul fast float %1748, %1740
  br label %1752

; <label>:1752                                    ; preds = %1738, %1722
  %1753 = phi float [ %1749, %1738 ], [ 0.000000e+00, %1722 ]
  %1754 = phi float [ %1750, %1738 ], [ 0.000000e+00, %1722 ]
  %1755 = phi float [ %1751, %1738 ], [ 0.000000e+00, %1722 ]
  %1756 = and i32 %1733, 2048
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1766, label %1758

; <label>:1758                                    ; preds = %1752
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = shl i32 %1760, 4
  %1762 = and i32 %1761, 32752
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = fmul fast float %1763, %1731
  %1765 = call float @dx.op.binary.f32(i32 35, float %1764, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1766

; <label>:1766                                    ; preds = %1758, %1752
  %1767 = phi float [ %1765, %1758 ], [ 0x3F70101020000000, %1752 ]
  %1768 = and i32 %1733, 16384
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1779, label %1770

; <label>:1770                                    ; preds = %1766
  %1771 = add i32 %33, 112
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = lshr i32 %1773, 24
  %1775 = uitofp i32 %1774 to float
  %1776 = fmul fast float %1729, 0x3F70101020000000
  %1777 = select i1 %1735, float 0x3F70101020000000, float %1776
  %1778 = fmul fast float %1777, %1775
  br label %1779

; <label>:1779                                    ; preds = %1770, %1766, %1694
  %1780 = phi float [ %1753, %1770 ], [ %1753, %1766 ], [ 0.000000e+00, %1694 ]
  %1781 = phi float [ %1754, %1770 ], [ %1754, %1766 ], [ 0.000000e+00, %1694 ]
  %1782 = phi float [ %1755, %1770 ], [ %1755, %1766 ], [ 0.000000e+00, %1694 ]
  %1783 = phi float [ %1767, %1770 ], [ %1767, %1766 ], [ 0x3F70101020000000, %1694 ]
  %1784 = phi float [ %1778, %1770 ], [ 0.000000e+00, %1766 ], [ 0.000000e+00, %1694 ]
  %1785 = add i32 %33, 112
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1787, 8
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = fmul fast float %1792, %1793
  %1795 = fadd fast float %1794, %1789
  %1796 = fmul fast float %1795, 0x3F70101020000000
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  br i1 %1013, label %1798, label %1833

; <label>:1798                                    ; preds = %1779
  %1799 = fmul fast float %1783, 2.000000e+00
  %1800 = fcmp fast olt float %1715, 1.270000e+02
  %1801 = fcmp fast olt float %1716, 1.270000e+02
  %1802 = fcmp fast olt float %1717, 1.270000e+02
  %1803 = fmul fast float %1715, 0xBFF7154760000000
  %1804 = fmul fast float %1803, %1799
  %1805 = fmul fast float %1716, 0xBFF7154760000000
  %1806 = fmul fast float %1805, %1799
  %1807 = fmul fast float %1717, 0xBFF7154760000000
  %1808 = fmul fast float %1807, %1799
  %1809 = call float @dx.op.unary.f32(i32 21, float %1804)  ; Exp(value)
  %1810 = call float @dx.op.unary.f32(i32 21, float %1806)  ; Exp(value)
  %1811 = call float @dx.op.unary.f32(i32 21, float %1808)  ; Exp(value)
  %1812 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1813 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1811)  ; Saturate(value)
  %1815 = fadd fast float %1812, -1.000000e+00
  %1816 = select i1 %1800, float %1815, float -1.000000e+00
  %1817 = fadd fast float %1813, -1.000000e+00
  %1818 = select i1 %1801, float %1817, float -1.000000e+00
  %1819 = fadd fast float %1814, -1.000000e+00
  %1820 = select i1 %1802, float %1819, float -1.000000e+00
  %1821 = fmul fast float %1816, %1309
  %1822 = fmul fast float %1818, %1309
  %1823 = fmul fast float %1820, %1309
  %1824 = fadd fast float %1821, 1.000000e+00
  %1825 = fadd fast float %1822, 1.000000e+00
  %1826 = fadd fast float %1823, 1.000000e+00
  %1827 = fmul fast float %1824, %993
  %1828 = fmul fast float %1825, %994
  %1829 = fmul fast float %1826, %995
  %1830 = fmul fast float %1824, %996
  %1831 = fmul fast float %1825, %997
  %1832 = fmul fast float %1826, %998
  br label %1833

; <label>:1833                                    ; preds = %1798, %1779
  %1834 = phi float [ %1827, %1798 ], [ %993, %1779 ]
  %1835 = phi float [ %1828, %1798 ], [ %994, %1779 ]
  %1836 = phi float [ %1829, %1798 ], [ %995, %1779 ]
  %1837 = phi float [ %1830, %1798 ], [ %996, %1779 ]
  %1838 = phi float [ %1831, %1798 ], [ %997, %1779 ]
  %1839 = phi float [ %1832, %1798 ], [ %998, %1779 ]
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 3
  %1843 = icmp eq i32 %1842, 3
  br i1 %1843, label %1922, label %1844

; <label>:1844                                    ; preds = %1833
  %1845 = and i32 %1841, 16
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %1309, float 0.000000e+00
  %1848 = icmp eq i32 %1842, 0
  br i1 %1848, label %1849, label %1877

; <label>:1849                                    ; preds = %1844
  %1850 = and i32 %1841, 64
  %1851 = icmp ne i32 %1850, 0
  %1852 = select i1 %1851, float %1309, float 0.000000e+00
  %1853 = fsub fast float %1529, %1834
  %1854 = fsub fast float %1530, %1835
  %1855 = fsub fast float %1531, %1836
  %1856 = fmul fast float %1847, %1853
  %1857 = fmul fast float %1847, %1854
  %1858 = fmul fast float %1847, %1855
  %1859 = fadd fast float %1856, %1834
  %1860 = fadd fast float %1857, %1835
  %1861 = fadd fast float %1858, %1836
  %1862 = fsub fast float %1515, %1005
  %1863 = fmul fast float %1847, %1862
  %1864 = fadd fast float %1863, %1005
  %1865 = fsub fast float %1657, %1837
  %1866 = fsub fast float %1658, %1838
  %1867 = fsub fast float %1659, %1839
  %1868 = fmul fast float %1852, %1865
  %1869 = fmul fast float %1852, %1866
  %1870 = fmul fast float %1852, %1867
  %1871 = fadd fast float %1868, %1837
  %1872 = fadd fast float %1869, %1838
  %1873 = fadd fast float %1870, %1839
  %1874 = fsub fast float %1797, %1011
  %1875 = fmul fast float %1847, %1874
  %1876 = fadd fast float %1875, %1011
  br label %1922

; <label>:1877                                    ; preds = %1844
  %1878 = icmp eq i32 %1842, 1
  br i1 %1878, label %1879, label %1892

; <label>:1879                                    ; preds = %1877
  %1880 = fadd fast float %1529, -1.000000e+00
  %1881 = fadd fast float %1530, -1.000000e+00
  %1882 = fadd fast float %1531, -1.000000e+00
  %1883 = fmul fast float %1847, %1880
  %1884 = fmul fast float %1847, %1881
  %1885 = fmul fast float %1847, %1882
  %1886 = fadd fast float %1883, 1.000000e+00
  %1887 = fadd fast float %1884, 1.000000e+00
  %1888 = fadd fast float %1885, 1.000000e+00
  %1889 = fmul fast float %1886, %1834
  %1890 = fmul fast float %1887, %1835
  %1891 = fmul fast float %1888, %1836
  br label %1922

; <label>:1892                                    ; preds = %1877
  %1893 = icmp eq i32 %1842, 2
  br i1 %1893, label %1894, label %1922

; <label>:1894                                    ; preds = %1892
  %1895 = call float @dx.op.unary.f32(i32 24, float %1529)  ; Sqrt(value)
  %1896 = call float @dx.op.unary.f32(i32 24, float %1530)  ; Sqrt(value)
  %1897 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1898 = fadd fast float %1895, -5.000000e-01
  %1899 = fadd fast float %1896, -5.000000e-01
  %1900 = fadd fast float %1897, -5.000000e-01
  %1901 = fmul fast float %1898, %1847
  %1902 = fmul fast float %1899, %1847
  %1903 = fmul fast float %1900, %1847
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fmul fast float %1904, 2.000000e+00
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = fmul fast float %1908, %1834
  %1910 = fadd fast float %1909, %1907
  %1911 = fmul fast float %1910, %1834
  %1912 = fmul fast float %1905, 2.000000e+00
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = fmul fast float %1913, %1835
  %1915 = fadd fast float %1914, %1912
  %1916 = fmul fast float %1915, %1835
  %1917 = fmul fast float %1906, 2.000000e+00
  %1918 = fsub fast float 1.000000e+00, %1917
  %1919 = fmul fast float %1918, %1836
  %1920 = fadd fast float %1919, %1917
  %1921 = fmul fast float %1920, %1836
  br label %1922

; <label>:1922                                    ; preds = %1894, %1892, %1879, %1849, %1833
  %1923 = phi float [ %1834, %1833 ], [ %1911, %1894 ], [ %1834, %1892 ], [ %1889, %1879 ], [ %1859, %1849 ]
  %1924 = phi float [ %1835, %1833 ], [ %1916, %1894 ], [ %1835, %1892 ], [ %1890, %1879 ], [ %1860, %1849 ]
  %1925 = phi float [ %1836, %1833 ], [ %1921, %1894 ], [ %1836, %1892 ], [ %1891, %1879 ], [ %1861, %1849 ]
  %1926 = phi float [ %1837, %1833 ], [ %1837, %1894 ], [ %1837, %1892 ], [ %1837, %1879 ], [ %1871, %1849 ]
  %1927 = phi float [ %1838, %1833 ], [ %1838, %1894 ], [ %1838, %1892 ], [ %1838, %1879 ], [ %1872, %1849 ]
  %1928 = phi float [ %1839, %1833 ], [ %1839, %1894 ], [ %1839, %1892 ], [ %1839, %1879 ], [ %1873, %1849 ]
  %1929 = phi float [ %1005, %1833 ], [ %1005, %1894 ], [ %1005, %1892 ], [ %1005, %1879 ], [ %1864, %1849 ]
  %1930 = phi float [ %1011, %1833 ], [ %1011, %1894 ], [ %1011, %1892 ], [ %1011, %1879 ], [ %1876, %1849 ]
  %1931 = and i32 %1841, 12
  %1932 = icmp eq i32 %1931, 12
  br i1 %1932, label %2073, label %1933

; <label>:1933                                    ; preds = %1922
  %1934 = and i32 %1841, 2097184
  %1935 = icmp eq i32 %1934, 2097184
  %1936 = select i1 %1935, float %1309, float 0.000000e+00
  %1937 = and i32 %1841, 4194336
  %1938 = icmp eq i32 %1937, 4194336
  %1939 = select i1 %1938, float %1309, float 0.000000e+00
  %1940 = and i32 %1841, 8388640
  %1941 = icmp eq i32 %1940, 8388640
  %1942 = select i1 %1941, float %1309, float 0.000000e+00
  %1943 = and i32 %1841, 1024
  %1944 = icmp ne i32 %1943, 0
  %1945 = select i1 %1944, float %1309, float 0.000000e+00
  %1946 = and i32 %1841, 2048
  %1947 = icmp ne i32 %1946, 0
  %1948 = select i1 %1947, float %1309, float 0.000000e+00
  %1949 = and i32 %1841, 8192
  %1950 = icmp ne i32 %1949, 0
  %1951 = select i1 %1950, float %1309, float 0.000000e+00
  %1952 = and i32 %1841, 16384
  %1953 = icmp ne i32 %1952, 0
  %1954 = select i1 %1953, float %1309, float 0.000000e+00
  %1955 = icmp eq i32 %1931, 0
  br i1 %1955, label %1956, label %1993

; <label>:1956                                    ; preds = %1933
  %1957 = fsub fast float %1610, %991
  %1958 = fsub fast float %1611, %992
  %1959 = fmul fast float %1936, %1957
  %1960 = fmul fast float %1936, %1958
  %1961 = fadd fast float %1959, %991
  %1962 = fadd fast float %1960, %992
  %1963 = fsub fast float %1612, %1008
  %1964 = fmul fast float %1939, %1963
  %1965 = fadd fast float %1964, %1008
  %1966 = fsub fast float %1609, %1007
  %1967 = fmul fast float %1942, %1966
  %1968 = fadd fast float %1967, %1007
  %1969 = fsub fast float %1715, %1002
  %1970 = fsub fast float %1716, %1003
  %1971 = fsub fast float %1717, %1004
  %1972 = fmul fast float %1945, %1969
  %1973 = fmul fast float %1945, %1970
  %1974 = fmul fast float %1945, %1971
  %1975 = fadd fast float %1972, %1002
  %1976 = fadd fast float %1973, %1003
  %1977 = fadd fast float %1974, %1004
  %1978 = fsub fast float %1783, %1009
  %1979 = fmul fast float %1948, %1978
  %1980 = fadd fast float %1979, %1009
  %1981 = fsub fast float %1780, %999
  %1982 = fsub fast float %1781, %1000
  %1983 = fsub fast float %1782, %1001
  %1984 = fmul fast float %1951, %1981
  %1985 = fmul fast float %1951, %1982
  %1986 = fmul fast float %1951, %1983
  %1987 = fadd fast float %1984, %999
  %1988 = fadd fast float %1985, %1000
  %1989 = fadd fast float %1986, %1001
  %1990 = fsub fast float %1784, %1010
  %1991 = fmul fast float %1954, %1990
  %1992 = fadd fast float %1991, %1010
  br label %2073

; <label>:1993                                    ; preds = %1933
  %1994 = icmp eq i32 %1931, 4
  br i1 %1994, label %1995, label %2043

; <label>:1995                                    ; preds = %1993
  %1996 = fmul fast float %1936, %1610
  %1997 = fmul fast float %1936, %1611
  %1998 = fadd fast float %1996, %991
  %1999 = fadd fast float %1997, %992
  %2000 = call float @dx.op.binary.f32(i32 36, float %1008, float %1612)  ; FMin(a,b)
  %2001 = fsub fast float %2000, %1008
  %2002 = fmul fast float %2001, %1939
  %2003 = fadd fast float %2002, %1008
  %2004 = fadd fast float %1609, %1007
  %2005 = fmul fast float %2004, 0x3FF337FAE0000000
  %2006 = fmul fast float %1007, %1007
  %2007 = fmul fast float %1609, %1609
  %2008 = fadd fast float %2007, %2006
  %2009 = fmul fast float %2008, 0x3FE5152B00000000
  %2010 = fmul fast float %1007, 0xBFCC1F85E0000000
  %2011 = fmul fast float %2010, %1609
  %2012 = fadd fast float %2011, 0xBFE1363700000000
  %2013 = fadd fast float %2012, %2005
  %2014 = fsub fast float %2013, %2009
  %2015 = fmul fast float %2004, 0x3FBA6F0D00000000
  %2016 = fmul fast float %2008, 0x3FD0432880000000
  %2017 = fmul fast float %1007, 0xBFEF110800000000
  %2018 = fmul fast float %2017, %1609
  %2019 = fadd fast float %2018, 1.000000e+00
  %2020 = fsub fast float %2019, %2015
  %2021 = fadd fast float %2020, %2016
  %2022 = fdiv fast float %2014, %2021
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2024 = fsub fast float %2023, %1007
  %2025 = fmul fast float %2024, %1942
  %2026 = fadd fast float %2025, %1007
  %2027 = fmul fast float %1945, %1715
  %2028 = fmul fast float %1945, %1716
  %2029 = fmul fast float %1945, %1717
  %2030 = fadd fast float %2027, %1002
  %2031 = fadd fast float %2028, %1003
  %2032 = fadd fast float %2029, %1004
  %2033 = fmul fast float %1948, %1783
  %2034 = fadd fast float %2033, %1009
  %2035 = fmul fast float %1951, %1780
  %2036 = fmul fast float %1951, %1781
  %2037 = fmul fast float %1951, %1782
  %2038 = fadd fast float %2035, %999
  %2039 = fadd fast float %2036, %1000
  %2040 = fadd fast float %2037, %1001
  %2041 = fmul fast float %1954, %1784
  %2042 = fadd fast float %2041, %1010
  br label %2073

; <label>:2043                                    ; preds = %1993
  %2044 = icmp eq i32 %1931, 8
  br i1 %2044, label %2045, label %2073

; <label>:2045                                    ; preds = %2043
  %2046 = fmul fast float %1936, %1610
  %2047 = fmul fast float %1936, %1611
  %2048 = fadd fast float %2046, %991
  %2049 = fadd fast float %2047, %992
  %2050 = call float @dx.op.binary.f32(i32 36, float %1008, float %1612)  ; FMin(a,b)
  %2051 = fsub fast float %2050, %1008
  %2052 = fmul fast float %2051, %1939
  %2053 = fadd fast float %2052, %1008
  %2054 = fsub fast float %1609, %1007
  %2055 = fmul fast float %1942, %2054
  %2056 = fadd fast float %2055, %1007
  %2057 = fmul fast float %1945, %1715
  %2058 = fmul fast float %1945, %1716
  %2059 = fmul fast float %1945, %1717
  %2060 = fadd fast float %2057, %1002
  %2061 = fadd fast float %2058, %1003
  %2062 = fadd fast float %2059, %1004
  %2063 = fmul fast float %1948, %1783
  %2064 = fadd fast float %2063, %1009
  %2065 = fmul fast float %1951, %1780
  %2066 = fmul fast float %1951, %1781
  %2067 = fmul fast float %1951, %1782
  %2068 = fadd fast float %2065, %999
  %2069 = fadd fast float %2066, %1000
  %2070 = fadd fast float %2067, %1001
  %2071 = fmul fast float %1954, %1784
  %2072 = fadd fast float %2071, %1010
  br label %2073

; <label>:2073                                    ; preds = %2045, %2043, %1995, %1956, %1922, %1308, %1012, %990
  %2074 = phi float [ %991, %1922 ], [ %991, %1308 ], [ %991, %990 ], [ %2048, %2045 ], [ %991, %2043 ], [ %1998, %1995 ], [ %1961, %1956 ], [ %991, %1012 ]
  %2075 = phi float [ %992, %1922 ], [ %992, %1308 ], [ %992, %990 ], [ %2049, %2045 ], [ %992, %2043 ], [ %1999, %1995 ], [ %1962, %1956 ], [ %992, %1012 ]
  %2076 = phi float [ %1923, %1922 ], [ %993, %1308 ], [ %993, %990 ], [ %1923, %2045 ], [ %1923, %2043 ], [ %1923, %1995 ], [ %1923, %1956 ], [ %993, %1012 ]
  %2077 = phi float [ %1924, %1922 ], [ %994, %1308 ], [ %994, %990 ], [ %1924, %2045 ], [ %1924, %2043 ], [ %1924, %1995 ], [ %1924, %1956 ], [ %994, %1012 ]
  %2078 = phi float [ %1925, %1922 ], [ %995, %1308 ], [ %995, %990 ], [ %1925, %2045 ], [ %1925, %2043 ], [ %1925, %1995 ], [ %1925, %1956 ], [ %995, %1012 ]
  %2079 = phi float [ %1926, %1922 ], [ %996, %1308 ], [ %996, %990 ], [ %1926, %2045 ], [ %1926, %2043 ], [ %1926, %1995 ], [ %1926, %1956 ], [ %996, %1012 ]
  %2080 = phi float [ %1927, %1922 ], [ %997, %1308 ], [ %997, %990 ], [ %1927, %2045 ], [ %1927, %2043 ], [ %1927, %1995 ], [ %1927, %1956 ], [ %997, %1012 ]
  %2081 = phi float [ %1928, %1922 ], [ %998, %1308 ], [ %998, %990 ], [ %1928, %2045 ], [ %1928, %2043 ], [ %1928, %1995 ], [ %1928, %1956 ], [ %998, %1012 ]
  %2082 = phi float [ %999, %1922 ], [ %999, %1308 ], [ %999, %990 ], [ %2068, %2045 ], [ %999, %2043 ], [ %2038, %1995 ], [ %1987, %1956 ], [ %999, %1012 ]
  %2083 = phi float [ %1000, %1922 ], [ %1000, %1308 ], [ %1000, %990 ], [ %2069, %2045 ], [ %1000, %2043 ], [ %2039, %1995 ], [ %1988, %1956 ], [ %1000, %1012 ]
  %2084 = phi float [ %1001, %1922 ], [ %1001, %1308 ], [ %1001, %990 ], [ %2070, %2045 ], [ %1001, %2043 ], [ %2040, %1995 ], [ %1989, %1956 ], [ %1001, %1012 ]
  %2085 = phi float [ %1002, %1922 ], [ %1002, %1308 ], [ %1002, %990 ], [ %2060, %2045 ], [ %1002, %2043 ], [ %2030, %1995 ], [ %1975, %1956 ], [ %1002, %1012 ]
  %2086 = phi float [ %1003, %1922 ], [ %1003, %1308 ], [ %1003, %990 ], [ %2061, %2045 ], [ %1003, %2043 ], [ %2031, %1995 ], [ %1976, %1956 ], [ %1003, %1012 ]
  %2087 = phi float [ %1004, %1922 ], [ %1004, %1308 ], [ %1004, %990 ], [ %2062, %2045 ], [ %1004, %2043 ], [ %2032, %1995 ], [ %1977, %1956 ], [ %1004, %1012 ]
  %2088 = phi float [ %1929, %1922 ], [ %1005, %1308 ], [ %1005, %990 ], [ %1929, %2045 ], [ %1929, %2043 ], [ %1929, %1995 ], [ %1929, %1956 ], [ %1005, %1012 ]
  %2089 = phi float [ %1007, %1922 ], [ %1007, %1308 ], [ %1007, %990 ], [ %2056, %2045 ], [ %1007, %2043 ], [ %2026, %1995 ], [ %1968, %1956 ], [ %1007, %1012 ]
  %2090 = phi float [ %1008, %1922 ], [ %1008, %1308 ], [ %1008, %990 ], [ %2053, %2045 ], [ %1008, %2043 ], [ %2003, %1995 ], [ %1965, %1956 ], [ %1008, %1012 ]
  %2091 = phi float [ %1009, %1922 ], [ %1009, %1308 ], [ %1009, %990 ], [ %2064, %2045 ], [ %1009, %2043 ], [ %2034, %1995 ], [ %1980, %1956 ], [ %1009, %1012 ]
  %2092 = phi float [ %1010, %1922 ], [ %1010, %1308 ], [ %1010, %990 ], [ %2072, %2045 ], [ %1010, %2043 ], [ %2042, %1995 ], [ %1992, %1956 ], [ %1010, %1012 ]
  %2093 = phi float [ %1930, %1922 ], [ %1011, %1308 ], [ %1011, %990 ], [ %1930, %2045 ], [ %1930, %2043 ], [ %1930, %1995 ], [ %1930, %1956 ], [ %1011, %1012 ]
  br i1 %345, label %3155, label %2094

; <label>:2094                                    ; preds = %2073
  %2095 = icmp ult i32 %398, 3
  %2096 = add i32 %33, 56
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = add i32 %33, 60
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = or i32 %2101, %2098
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %3155, label %2104

; <label>:2104                                    ; preds = %2094
  %2105 = and i32 %2098, 262144
  %2106 = icmp ne i32 %2105, 0
  %2107 = select i1 %2106, float %36, float 1.000000e+00
  %2108 = select i1 %2106, float %37, float 0.000000e+00
  %2109 = select i1 %2106, float %38, float 0.000000e+00
  %2110 = select i1 %2106, float %39, float 1.000000e+00
  %2111 = select i1 %2106, float %40, float %61
  %2112 = select i1 %2106, float %41, float %62
  %2113 = add i32 %33, 316
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 16
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = fmul fast float %2117, 0x3F50624DE0000000
  %2119 = add i32 %33, 120
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 16
  %2123 = and i32 %2122, 255
  %2124 = lshr i32 %2121, 24
  %2125 = add i32 %33, 324
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %2127, 65535
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = lshr i32 %2127, 16
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = add i32 %33, 64
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 22
  %2136 = shl nuw nsw i32 %2135, 5
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = shl i32 %2134, 4
  %2139 = and i32 %2138, 32752
  %2140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2139)  ; LegacyF16ToF32(value)
  %2141 = lshr i32 %2134, 7
  %2142 = and i32 %2141, 32752
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2146 = fmul fast float %2145, 1.000000e+03
  %2147 = fmul fast float %295, %2146
  %2148 = call float @dx.op.unary.f32(i32 22, float %2147)  ; Frc(value)
  %2149 = fadd fast float %2148, %285
  %2150 = fmul fast float %296, %2146
  %2151 = call float @dx.op.unary.f32(i32 22, float %2150)  ; Frc(value)
  %2152 = fadd fast float %2151, %287
  %2153 = fmul fast float %2118, %2146
  %2154 = call float @dx.op.unary.f32(i32 22, float %2153)  ; Frc(value)
  %2155 = fmul fast float %2154, 0x401921FB60000000
  %2156 = fadd fast float %2155, %2137
  %2157 = call float @dx.op.unary.f32(i32 13, float %2156)  ; Sin(value)
  %2158 = call float @dx.op.unary.f32(i32 12, float %2156)  ; Cos(value)
  %2159 = fsub fast float -0.000000e+00, %2157
  %2160 = fadd fast float %2111, -5.000000e-01
  %2161 = fadd fast float %2112, -5.000000e-01
  %2162 = fmul fast float %2129, %2160
  %2163 = fmul fast float %2131, %2161
  %2164 = fadd fast float %2162, 5.000000e-01
  %2165 = fadd fast float %2163, 5.000000e-01
  %2166 = fmul fast float %2140, %2164
  %2167 = fmul fast float %2143, %2165
  %2168 = fmul fast float %2158, %2166
  %2169 = call float @dx.op.tertiary.f32(i32 46, float %2159, float %2167, float %2168)  ; FMad(a,b,c)
  %2170 = fmul fast float %2157, %2166
  %2171 = call float @dx.op.tertiary.f32(i32 46, float %2158, float %2167, float %2170)  ; FMad(a,b,c)
  %2172 = fadd fast float %2149, %2169
  %2173 = fadd fast float %2152, %2171
  %2174 = icmp ugt i32 %2123, 1
  %2175 = icmp ugt i32 %2121, 33554431
  %2176 = or i1 %2175, %2174
  br i1 %2176, label %2177, label %2202

; <label>:2177                                    ; preds = %2104
  %2178 = add i32 %33, 260
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 16
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = fmul fast float %2145, %2182
  %2184 = call float @dx.op.unary.f32(i32 22, float %2183)  ; Frc(value)
  %2185 = mul nuw nsw i32 %2123, %2124
  %2186 = uitofp i32 %2185 to float
  %2187 = fmul fast float %2184, %2186
  %2188 = call float @dx.op.unary.f32(i32 27, float %2187)  ; Round_ni(value)
  %2189 = fptoui float %2188 to i32
  %2190 = urem i32 %2189, %2123
  %2191 = udiv i32 %2189, %2124
  %2192 = call float @dx.op.unary.f32(i32 22, float %2172)  ; Frc(value)
  %2193 = call float @dx.op.unary.f32(i32 22, float %2173)  ; Frc(value)
  %2194 = uitofp i32 %2190 to float
  %2195 = uitofp i32 %2191 to float
  %2196 = fadd fast float %2192, %2194
  %2197 = fadd fast float %2193, %2195
  %2198 = uitofp i32 %2123 to float
  %2199 = uitofp i32 %2124 to float
  %2200 = fdiv fast float %2196, %2198
  %2201 = fdiv fast float %2197, %2199
  br label %2202

; <label>:2202                                    ; preds = %2177, %2104
  %2203 = phi float [ %2200, %2177 ], [ %2172, %2104 ]
  %2204 = phi float [ %2201, %2177 ], [ %2173, %2104 ]
  %2205 = and i32 %2098, 16777216
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2316, label %2207

; <label>:2207                                    ; preds = %2202
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.CBufRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.CBufRet.f32 %2208, 2
  %2212 = fadd fast float %2209, %128
  %2213 = fadd fast float %2210, %129
  %2214 = fadd fast float %2211, %130
  %2215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2216 = extractvalue %dx.types.CBufRet.f32 %2215, 0
  %2217 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2218 = icmp eq i32 %34, 65535
  br i1 %2218, label %2313, label %2219

; <label>:2219                                    ; preds = %2207
  %2220 = lshr i32 %34, 1
  %2221 = shl i32 %2220, 2
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2221, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %34, 1
  %2225 = icmp ne i32 %2224, 0
  %2226 = lshr i32 %2223, 16
  %2227 = and i32 %2223, 65535
  %2228 = select i1 %2225, i32 %2226, i32 %2227
  %2229 = icmp eq i32 %2228, 65535
  br i1 %2229, label %2309, label %2230

; <label>:2230                                    ; preds = %2219
  %2231 = mul nuw nsw i32 %2228, 40
  %2232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = add nuw nsw i32 %2231, 12
  %2237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = add nuw nsw i32 %2231, 24
  %2242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.ResRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.ResRet.f32 %2242, 2
  %2246 = add nuw nsw i32 %2231, 36
  %2247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = fsub fast float %2212, %2233
  %2250 = fsub fast float %2213, %2234
  %2251 = fsub fast float %2214, %2235
  %2252 = fmul fast float %2248, %2249
  %2253 = fmul fast float %2248, %2250
  %2254 = fmul fast float %2248, %2251
  %2255 = call float @dx.op.unary.f32(i32 27, float %2252)  ; Round_ni(value)
  %2256 = call float @dx.op.unary.f32(i32 27, float %2253)  ; Round_ni(value)
  %2257 = call float @dx.op.unary.f32(i32 27, float %2254)  ; Round_ni(value)
  %2258 = fadd fast float %2255, 5.000000e-01
  %2259 = fadd fast float %2256, 5.000000e-01
  %2260 = fadd fast float %2257, 5.000000e-01
  %2261 = fmul fast float %2258, %2238
  %2262 = fmul fast float %2259, %2239
  %2263 = fmul fast float %2260, %2240
  %2264 = shl i32 %34, 2
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %2266, 0
  %2268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2269 = call float @dx.op.unary.f32(i32 22, float %2261)  ; Frc(value)
  %2270 = call float @dx.op.unary.f32(i32 22, float %2262)  ; Frc(value)
  %2271 = call float @dx.op.unary.f32(i32 22, float %2263)  ; Frc(value)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2268, %dx.types.Handle %30, float %2269, float %2270, float %2271, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = fmul fast float %2273, 1.023000e+03
  %2277 = fmul fast float %2274, 1.023000e+03
  %2278 = fmul fast float %2275, 1.023000e+03
  %2279 = fadd fast float %2276, 5.000000e-01
  %2280 = fadd fast float %2277, 5.000000e-01
  %2281 = fadd fast float %2278, 5.000000e-01
  %2282 = call float @dx.op.unary.f32(i32 27, float %2279)  ; Round_ni(value)
  %2283 = call float @dx.op.unary.f32(i32 27, float %2280)  ; Round_ni(value)
  %2284 = call float @dx.op.unary.f32(i32 27, float %2281)  ; Round_ni(value)
  %2285 = fsub fast float %2252, %2255
  %2286 = fsub fast float %2253, %2256
  %2287 = fsub fast float %2254, %2257
  %2288 = fmul fast float %2285, 7.500000e-01
  %2289 = fmul fast float %2286, 7.500000e-01
  %2290 = fmul fast float %2287, 7.500000e-01
  %2291 = fadd fast float %2255, 1.250000e-01
  %2292 = fadd fast float %2291, %2288
  %2293 = fadd fast float %2292, %2282
  %2294 = fadd fast float %2256, 1.250000e-01
  %2295 = fadd fast float %2294, %2289
  %2296 = fadd fast float %2295, %2283
  %2297 = fadd fast float %2257, 1.250000e-01
  %2298 = fadd fast float %2297, %2290
  %2299 = fadd fast float %2298, %2284
  %2300 = fmul fast float %2293, %2243
  %2301 = fmul fast float %2296, %2244
  %2302 = fmul fast float %2299, %2245
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = add i32 %2304, 0
  %2306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2306, %dx.types.Handle %28, float %2300, float %2301, float %2302, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  br label %2309

; <label>:2309                                    ; preds = %2230, %2219
  %2310 = phi float [ %2308, %2230 ], [ -1.000000e+00, %2219 ]
  %2311 = fadd fast float %2310, %2217
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  br label %2313

; <label>:2313                                    ; preds = %2309, %2207
  %2314 = phi float [ %2312, %2309 ], [ %2217, %2207 ]
  %2315 = fmul fast float %2314, %394
  br label %2316

; <label>:2316                                    ; preds = %2313, %2202
  %2317 = phi float [ %2315, %2313 ], [ %394, %2202 ]
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 256
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2368, label %2322

; <label>:2322                                    ; preds = %2316
  %2323 = add i32 %33, 432
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %2325, 0
  %2327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2327, %dx.types.Handle %70, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = add i32 %33, 132
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = shl i32 %2332, 4
  %2334 = and i32 %2333, 32752
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = lshr i32 %2332, 7
  %2337 = and i32 %2336, 32752
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fsub fast float 1.000000e+00, %2317
  %2340 = call float @dx.op.binary.f32(i32 35, float %2339, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2341 = bitcast float %2317 to i32
  %2342 = sitofp i32 %2341 to float
  %2343 = fadd fast float %2342, 0xC1CFBF8940000000
  %2344 = fmul fast float %2338, %2343
  %2345 = fadd fast float %2344, 0x41CFBF8940000000
  %2346 = fptosi float %2345 to i32
  %2347 = bitcast i32 %2346 to float
  %2348 = bitcast float %2340 to i32
  %2349 = sitofp i32 %2348 to float
  %2350 = fadd fast float %2349, 0xC1CFBF8940000000
  %2351 = fmul fast float %2350, %2338
  %2352 = fadd fast float %2351, 0x41CFBF8940000000
  %2353 = fptosi float %2352 to i32
  %2354 = bitcast i32 %2353 to float
  %2355 = fmul fast float %2347, %2335
  %2356 = fmul fast float %2354, %2335
  %2357 = fsub fast float %2340, %2355
  %2358 = fadd fast float %2356, %2340
  %2359 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2360 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  %2361 = fsub fast float %2329, %2359
  %2362 = fsub fast float %2360, %2359
  %2363 = bitcast float %2362 to i32
  %2364 = sub nsw i32 2129859010, %2363
  %2365 = bitcast i32 %2364 to float
  %2366 = fmul fast float %2365, %2361
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  br label %2368

; <label>:2368                                    ; preds = %2322, %2316
  %2369 = phi float [ %2367, %2322 ], [ %2317, %2316 ]
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 128
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2390, label %2374

; <label>:2374                                    ; preds = %2368
  %2375 = add i32 %33, 416
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %2377, 0
  %2379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2379, %dx.types.Handle %70, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 524288
  %2385 = icmp ne i32 %2384, 0
  %2386 = fcmp fast ogt float %2381, 0x3FE0101020000000
  %2387 = select i1 %2386, float 1.000000e+00, float 0.000000e+00
  %2388 = select i1 %2385, float %2387, float %2381
  %2389 = fmul fast float %2388, %2369
  br label %2390

; <label>:2390                                    ; preds = %2374, %2368
  %2391 = phi float [ %2389, %2374 ], [ %2369, %2368 ]
  %2392 = fcmp fast ult float %2391, 0x3F70101020000000
  br i1 %2392, label %3155, label %2393

; <label>:2393                                    ; preds = %2390
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 16
  %2397 = icmp eq i32 %2396, 0
  br i1 %2397, label %2596, label %2398

; <label>:2398                                    ; preds = %2393
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = add i32 %33, 368
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2401, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = add i32 %2403, 0
  %2405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2405, %dx.types.Handle %69, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.ResRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.ResRet.f32 %2406, 2
  %2410 = extractvalue %dx.types.ResRet.f32 %2406, 3
  %2411 = and i32 %2400, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2400, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2410, %2412
  %2417 = fadd fast float %2416, %2415
  %2418 = fmul fast float %2417, 0x3F70101000000000
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 512
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2431, label %2423

; <label>:2423                                    ; preds = %2398
  %2424 = add i32 %33, 448
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = add i32 %2426, 0
  %2428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2428, %dx.types.Handle %70, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  br label %2431

; <label>:2431                                    ; preds = %2423, %2398
  %2432 = phi float [ %2430, %2423 ], [ 1.000000e+00, %2398 ]
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 33554432
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2543, label %2437

; <label>:2437                                    ; preds = %2431
  %2438 = add i32 %33, 256
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 65535
  %2442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2441)  ; LegacyF16ToF32(value)
  %2443 = lshr i32 %2440, 16
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = add i32 %33, 260
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = and i32 %2447, 65535
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = lshr i32 %2451, 24
  %2453 = uitofp i32 %2452 to float
  %2454 = fmul fast float %2453, 0x3F70101020000000
  %2455 = and i32 %2451, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = fmul fast float %2456, 0x3F70101020000000
  %2458 = lshr i32 %2451, 8
  %2459 = and i32 %2458, 255
  %2460 = uitofp i32 %2459 to float
  %2461 = fmul fast float %2460, 0x3F70101020000000
  %2462 = lshr i32 %2451, 16
  %2463 = and i32 %2462, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = fmul fast float %2464, 0x3F70101020000000
  %2466 = add i32 %33, 252
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 24
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101020000000
  %2472 = and i32 %2468, 255
  %2473 = uitofp i32 %2472 to float
  %2474 = fmul fast float %2473, 0x3F70101020000000
  %2475 = lshr i32 %2468, 8
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2477, 0x3F70101020000000
  %2479 = lshr i32 %2468, 16
  %2480 = and i32 %2479, 255
  %2481 = uitofp i32 %2480 to float
  %2482 = fmul fast float %2481, 0x3F70101020000000
  %2483 = bitcast float %2407 to i32
  %2484 = ashr i32 %2483, 1
  %2485 = sub nsw i32 1597463174, %2484
  %2486 = bitcast i32 %2485 to float
  %2487 = fmul fast float %2407, 5.000000e-01
  %2488 = fmul fast float %2486, %2486
  %2489 = fmul fast float %2488, %2487
  %2490 = fsub fast float 1.500000e+00, %2489
  %2491 = fmul fast float %2486, %2407
  %2492 = fmul fast float %2491, %2490
  %2493 = bitcast float %2408 to i32
  %2494 = ashr i32 %2493, 1
  %2495 = sub nsw i32 1597463174, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2408, 5.000000e-01
  %2498 = fmul fast float %2496, %2496
  %2499 = fmul fast float %2498, %2497
  %2500 = fsub fast float 1.500000e+00, %2499
  %2501 = fmul fast float %2496, %2408
  %2502 = fmul fast float %2501, %2500
  %2503 = bitcast float %2409 to i32
  %2504 = ashr i32 %2503, 1
  %2505 = sub nsw i32 1597463174, %2504
  %2506 = bitcast i32 %2505 to float
  %2507 = fmul fast float %2409, 5.000000e-01
  %2508 = fmul fast float %2506, %2506
  %2509 = fmul fast float %2508, %2507
  %2510 = fsub fast float 1.500000e+00, %2509
  %2511 = fmul fast float %2506, %2409
  %2512 = fmul fast float %2511, %2510
  %2513 = fsub fast float %2492, %2474
  %2514 = fsub fast float %2502, %2478
  %2515 = fsub fast float %2512, %2482
  %2516 = fmul fast float %2513, %2442
  %2517 = fmul fast float %2514, %2444
  %2518 = fmul fast float %2515, %2449
  %2519 = fadd fast float %2516, %2457
  %2520 = fadd fast float %2517, %2461
  %2521 = fadd fast float %2518, %2465
  %2522 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2523 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2524 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2525 = fmul fast float %2522, %2522
  %2526 = fmul fast float %2523, %2523
  %2527 = fmul fast float %2524, %2524
  %2528 = fsub fast float %2525, %2407
  %2529 = fsub fast float %2526, %2408
  %2530 = fsub fast float %2527, %2409
  %2531 = fmul fast float %2528, %2432
  %2532 = fmul fast float %2529, %2432
  %2533 = fmul fast float %2530, %2432
  %2534 = fadd fast float %2531, %2407
  %2535 = fadd fast float %2532, %2408
  %2536 = fadd fast float %2533, %2409
  %2537 = fadd fast float %2454, %2418
  %2538 = fsub fast float %2537, %2471
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = fsub fast float %2539, %2418
  %2541 = fmul fast float %2540, %2432
  %2542 = fadd fast float %2541, %2418
  br label %2596

; <label>:2543                                    ; preds = %2431
  %2544 = and i32 %2434, 134217728
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2580, label %2546

; <label>:2546                                    ; preds = %2543
  %2547 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2548 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2549 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2550 = fadd fast float %2547, -5.000000e-01
  %2551 = fadd fast float %2548, -5.000000e-01
  %2552 = fadd fast float %2549, -5.000000e-01
  %2553 = fmul fast float %2550, %2432
  %2554 = fmul fast float %2551, %2432
  %2555 = fmul fast float %2552, %2432
  %2556 = fadd fast float %2553, 5.000000e-01
  %2557 = fadd fast float %2554, 5.000000e-01
  %2558 = fadd fast float %2555, 5.000000e-01
  %2559 = call float @dx.op.unary.f32(i32 24, float %2407)  ; Sqrt(value)
  %2560 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2561 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2562 = fmul fast float %2556, 2.000000e+00
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = fmul fast float %2563, %2559
  %2565 = fadd fast float %2564, %2562
  %2566 = fmul fast float %2565, %2559
  %2567 = fmul fast float %2557, 2.000000e+00
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2568, %2560
  %2570 = fadd fast float %2569, %2567
  %2571 = fmul fast float %2570, %2560
  %2572 = fmul fast float %2558, 2.000000e+00
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = fmul fast float %2573, %2561
  %2575 = fadd fast float %2574, %2572
  %2576 = fmul fast float %2575, %2561
  %2577 = fmul fast float %2566, %2566
  %2578 = fmul fast float %2571, %2571
  %2579 = fmul fast float %2576, %2576
  br label %2596

; <label>:2580                                    ; preds = %2543
  %2581 = fmul fast float %272, %272
  %2582 = fmul fast float %276, %276
  %2583 = fmul fast float %280, %280
  %2584 = fadd fast float %2581, -1.000000e+00
  %2585 = fadd fast float %2582, -1.000000e+00
  %2586 = fadd fast float %2583, -1.000000e+00
  %2587 = fmul fast float %2432, %2584
  %2588 = fmul fast float %2432, %2585
  %2589 = fmul fast float %2432, %2586
  %2590 = fadd fast float %2587, 1.000000e+00
  %2591 = fadd fast float %2588, 1.000000e+00
  %2592 = fadd fast float %2589, 1.000000e+00
  %2593 = fmul fast float %2590, %2407
  %2594 = fmul fast float %2591, %2408
  %2595 = fmul fast float %2592, %2409
  br label %2596

; <label>:2596                                    ; preds = %2580, %2546, %2437, %2393
  %2597 = phi float [ %2542, %2437 ], [ %2418, %2546 ], [ %2418, %2580 ], [ 0x3FA23C0BE0000000, %2393 ]
  %2598 = phi float [ %2534, %2437 ], [ %2577, %2546 ], [ %2593, %2580 ], [ 1.000000e+00, %2393 ]
  %2599 = phi float [ %2535, %2437 ], [ %2578, %2546 ], [ %2594, %2580 ], [ 1.000000e+00, %2393 ]
  %2600 = phi float [ %2536, %2437 ], [ %2579, %2546 ], [ %2595, %2580 ], [ 1.000000e+00, %2393 ]
  %2601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.i32 %2601, 1
  %2603 = and i32 %2602, 1
  %2604 = icmp ne i32 %2603, 0
  %2605 = add i32 %33, 356
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 32
  %2609 = icmp ne i32 %2608, 0
  %2610 = and i1 %2604, %2609
  %2611 = select i1 %2610, float 1.000000e+00, float %2598
  %2612 = select i1 %2610, float 0x3FD3333340000000, float %2599
  %2613 = select i1 %2610, float 0x3FD3333340000000, float %2600
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 32
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2690, label %2618

; <label>:2618                                    ; preds = %2596
  %2619 = add i32 %33, 124
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %33, 384
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = add i32 %2624, 0
  %2626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2626, %dx.types.Handle %69, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = and i32 %2621, 255
  %2633 = uitofp i32 %2632 to float
  %2634 = lshr i32 %2621, 8
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = lshr i32 %2621, 16
  %2638 = and i32 %2637, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = fmul fast float %2639, 0x3F70101000000000
  %2641 = fmul fast float %2628, %2633
  %2642 = fadd fast float %2641, %2636
  %2643 = fmul fast float %2642, 0x3F70101000000000
  %2644 = fadd fast float %2629, -5.000000e-01
  %2645 = fadd fast float %2631, -5.000000e-01
  %2646 = fmul fast float %2644, %2640
  %2647 = fmul fast float %2645, %2640
  %2648 = fadd fast float %2646, 5.000000e-01
  %2649 = fadd fast float %2647, 5.000000e-01
  %2650 = fmul fast float %2648, 2.000000e+00
  %2651 = fadd fast float %2650, -1.000000e+00
  %2652 = fmul fast float %2649, 2.000000e+00
  %2653 = fadd fast float %2652, -1.000000e+00
  %2654 = fadd fast float %2651, %2653
  %2655 = fmul fast float %2654, 5.000000e-01
  %2656 = fsub fast float %2651, %2653
  %2657 = fmul fast float %2656, 5.000000e-01
  %2658 = call float @dx.op.unary.f32(i32 6, float %2655)  ; FAbs(value)
  %2659 = fsub fast float 1.000000e+00, %2658
  %2660 = call float @dx.op.unary.f32(i32 6, float %2657)  ; FAbs(value)
  %2661 = fsub fast float %2659, %2660
  %2662 = call float @dx.op.dot3.f32(i32 55, float %2655, float %2657, float %2661, float %2655, float %2657, float %2661)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = call float @dx.op.unary.f32(i32 25, float %2662)  ; Rsqrt(value)
  %2664 = fmul fast float %2655, %2663
  %2665 = fmul fast float %2657, %2663
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = and i32 %2667, 67108864
  %2669 = icmp eq i32 %2668, 0
  br i1 %2669, label %2686, label %2670

; <label>:2670                                    ; preds = %2618
  %2671 = add i32 %33, 312
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 65535
  %2675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2674)  ; LegacyF16ToF32(value)
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = and i32 %2677, 65535
  %2679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2678)  ; LegacyF16ToF32(value)
  %2680 = lshr i32 %2673, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fsub fast float %2643, %2681
  %2683 = fmul fast float %2682, %2675
  %2684 = fadd fast float %2683, %2679
  %2685 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  br label %2686

; <label>:2686                                    ; preds = %2670, %2618
  %2687 = phi float [ %2685, %2670 ], [ %2643, %2618 ]
  %2688 = call float @dx.op.dot2.f32(i32 54, float %2664, float %2665, float %2107, float %2108)  ; Dot2(ax,ay,bx,by)
  %2689 = call float @dx.op.dot2.f32(i32 54, float %2664, float %2665, float %2109, float %2110)  ; Dot2(ax,ay,bx,by)
  br label %2690

; <label>:2690                                    ; preds = %2686, %2596
  %2691 = phi float [ %2687, %2686 ], [ 0x3FD6666660000000, %2596 ]
  %2692 = phi float [ %2688, %2686 ], [ 0.000000e+00, %2596 ]
  %2693 = phi float [ %2689, %2686 ], [ 0.000000e+00, %2596 ]
  %2694 = phi float [ %2630, %2686 ], [ 1.000000e+00, %2596 ]
  %2695 = add i32 %33, 192
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = lshr i32 %2697, 22
  %2699 = shl nuw nsw i32 %2698, 5
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 64
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2738, label %2705

; <label>:2705                                    ; preds = %2690
  %2706 = add i32 %33, 400
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = add i32 %2708, 0
  %2710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 131072
  %2714 = icmp eq i32 %2713, 0
  %2715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2710, %dx.types.Handle %69, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = fmul fast float %2716, %260
  %2720 = fmul fast float %2717, %263
  %2721 = fmul fast float %2718, %266
  br i1 %2714, label %2728, label %2722

; <label>:2722                                    ; preds = %2705
  %2723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2723, 0
  %2725 = fmul fast float %2724, %2719
  %2726 = fmul fast float %2724, %2720
  %2727 = fmul fast float %2724, %2721
  br label %2728

; <label>:2728                                    ; preds = %2722, %2705
  %2729 = phi float [ %2725, %2722 ], [ %2719, %2705 ]
  %2730 = phi float [ %2726, %2722 ], [ %2720, %2705 ]
  %2731 = phi float [ %2727, %2722 ], [ %2721, %2705 ]
  %2732 = fmul fast float %2729, %2700
  %2733 = select i1 %170, float %2732, float %2729
  %2734 = call float @dx.op.dot3.f32(i32 55, float %2733, float %2730, float %2731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2735 = select i1 %170, float 0.000000e+00, float %2729
  %2736 = select i1 %170, float %2734, float %2730
  %2737 = select i1 %170, float 0.000000e+00, float %2731
  br label %2738

; <label>:2738                                    ; preds = %2728, %2690
  %2739 = phi float [ %2735, %2728 ], [ 0.000000e+00, %2690 ]
  %2740 = phi float [ %2736, %2728 ], [ 0.000000e+00, %2690 ]
  %2741 = phi float [ %2737, %2728 ], [ 0.000000e+00, %2690 ]
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 1024
  %2745 = icmp eq i32 %2744, 0
  br i1 %2745, label %2776, label %2746

; <label>:2746                                    ; preds = %2738
  %2747 = add i32 %33, 184
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = and i32 %2749, 255
  %2751 = uitofp i32 %2750 to float
  %2752 = fmul fast float %2751, 0x3F70101020000000
  %2753 = lshr i32 %2749, 8
  %2754 = and i32 %2753, 255
  %2755 = uitofp i32 %2754 to float
  %2756 = fmul fast float %2755, 0x3F70101020000000
  %2757 = lshr i32 %2749, 16
  %2758 = and i32 %2757, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = fmul fast float %2759, 0x3F70101020000000
  %2761 = fmul fast float %2752, %2752
  %2762 = fmul fast float %2756, %2756
  %2763 = fmul fast float %2760, %2760
  %2764 = add i32 %33, 464
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = add i32 %2766, 0
  %2768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2768, %dx.types.Handle %70, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = fmul fast float %2761, %2770
  %2774 = fmul fast float %2762, %2771
  %2775 = fmul fast float %2763, %2772
  br label %2776

; <label>:2776                                    ; preds = %2746, %2738
  %2777 = phi float [ %2773, %2746 ], [ 0.000000e+00, %2738 ]
  %2778 = phi float [ %2774, %2746 ], [ 0.000000e+00, %2738 ]
  %2779 = phi float [ %2775, %2746 ], [ 0.000000e+00, %2738 ]
  %2780 = fcmp fast ogt float %2777, 0.000000e+00
  %2781 = fcmp fast ogt float %2778, 0.000000e+00
  %2782 = fcmp fast ogt float %2779, 0.000000e+00
  %2783 = call float @dx.op.unary.f32(i32 23, float %2777)  ; Log(value)
  %2784 = call float @dx.op.unary.f32(i32 23, float %2778)  ; Log(value)
  %2785 = call float @dx.op.unary.f32(i32 23, float %2779)  ; Log(value)
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = lshr i32 %2787, 7
  %2789 = and i32 %2788, 32752
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = fmul fast float %2783, 0xBFE62E4300000000
  %2792 = fmul fast float %2791, %2790
  %2793 = fmul fast float %2784, 0xBFE62E4300000000
  %2794 = fmul fast float %2793, %2790
  %2795 = fmul fast float %2785, 0xBFE62E4300000000
  %2796 = fmul fast float %2795, %2790
  %2797 = select i1 %2780, float %2792, float 1.270000e+02
  %2798 = select i1 %2781, float %2794, float 1.270000e+02
  %2799 = select i1 %2782, float %2796, float 1.270000e+02
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = and i32 %2801, 26624
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2861, label %2804

; <label>:2804                                    ; preds = %2776
  %2805 = add i32 %33, 480
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = add i32 %2807, 0
  %2809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2809, %dx.types.Handle %70, float %2203, float %2204, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2811 = extractvalue %dx.types.ResRet.f32 %2810, 0
  %2812 = extractvalue %dx.types.ResRet.f32 %2810, 1
  %2813 = extractvalue %dx.types.ResRet.f32 %2810, 3
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 1048576
  %2817 = icmp ne i32 %2816, 0
  %2818 = and i32 %2815, 8192
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %2834, label %2820

; <label>:2820                                    ; preds = %2804
  %2821 = extractvalue %dx.types.ResRet.f32 %2810, 2
  %2822 = select i1 %2817, float %2821, float %2812
  %2823 = select i1 %2817, float %2811, float %2812
  %2824 = add i32 %33, 128
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = and i32 %2827, 255
  %2829 = uitofp i32 %2828 to float
  %2830 = fmul fast float %2829, 0x3F80101020000000
  %2831 = fmul fast float %2830, %2823
  %2832 = fmul fast float %2830, %2812
  %2833 = fmul fast float %2830, %2822
  br label %2834

; <label>:2834                                    ; preds = %2820, %2804
  %2835 = phi float [ %2831, %2820 ], [ 0.000000e+00, %2804 ]
  %2836 = phi float [ %2832, %2820 ], [ 0.000000e+00, %2804 ]
  %2837 = phi float [ %2833, %2820 ], [ 0.000000e+00, %2804 ]
  %2838 = and i32 %2815, 2048
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2848, label %2840

; <label>:2840                                    ; preds = %2834
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = shl i32 %2842, 4
  %2844 = and i32 %2843, 32752
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = fmul fast float %2845, %2813
  %2847 = call float @dx.op.binary.f32(i32 35, float %2846, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2848

; <label>:2848                                    ; preds = %2840, %2834
  %2849 = phi float [ %2847, %2840 ], [ 0x3F70101020000000, %2834 ]
  %2850 = and i32 %2815, 16384
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %2861, label %2852

; <label>:2852                                    ; preds = %2848
  %2853 = add i32 %33, 128
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = lshr i32 %2855, 24
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2811, 0x3F70101020000000
  %2859 = select i1 %2817, float 0x3F70101020000000, float %2858
  %2860 = fmul fast float %2859, %2857
  br label %2861

; <label>:2861                                    ; preds = %2852, %2848, %2776
  %2862 = phi float [ %2835, %2852 ], [ %2835, %2848 ], [ 0.000000e+00, %2776 ]
  %2863 = phi float [ %2836, %2852 ], [ %2836, %2848 ], [ 0.000000e+00, %2776 ]
  %2864 = phi float [ %2837, %2852 ], [ %2837, %2848 ], [ 0.000000e+00, %2776 ]
  %2865 = phi float [ %2849, %2852 ], [ %2849, %2848 ], [ 0x3F70101020000000, %2776 ]
  %2866 = phi float [ %2860, %2852 ], [ 0.000000e+00, %2848 ], [ 0.000000e+00, %2776 ]
  %2867 = add i32 %33, 128
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 255
  %2871 = uitofp i32 %2870 to float
  %2872 = lshr i32 %2869, 8
  %2873 = and i32 %2872, 255
  %2874 = uitofp i32 %2873 to float
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2611, float %2612, float %2613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = fmul fast float %2874, %2875
  %2877 = fadd fast float %2876, %2871
  %2878 = fmul fast float %2877, 0x3F70101020000000
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  br i1 %2095, label %2880, label %2915

; <label>:2880                                    ; preds = %2861
  %2881 = fmul fast float %2865, 2.000000e+00
  %2882 = fcmp fast olt float %2797, 1.270000e+02
  %2883 = fcmp fast olt float %2798, 1.270000e+02
  %2884 = fcmp fast olt float %2799, 1.270000e+02
  %2885 = fmul fast float %2797, 0xBFF7154760000000
  %2886 = fmul fast float %2885, %2881
  %2887 = fmul fast float %2798, 0xBFF7154760000000
  %2888 = fmul fast float %2887, %2881
  %2889 = fmul fast float %2799, 0xBFF7154760000000
  %2890 = fmul fast float %2889, %2881
  %2891 = call float @dx.op.unary.f32(i32 21, float %2886)  ; Exp(value)
  %2892 = call float @dx.op.unary.f32(i32 21, float %2888)  ; Exp(value)
  %2893 = call float @dx.op.unary.f32(i32 21, float %2890)  ; Exp(value)
  %2894 = call float @dx.op.unary.f32(i32 7, float %2891)  ; Saturate(value)
  %2895 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  %2896 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  %2897 = fadd fast float %2894, -1.000000e+00
  %2898 = select i1 %2882, float %2897, float -1.000000e+00
  %2899 = fadd fast float %2895, -1.000000e+00
  %2900 = select i1 %2883, float %2899, float -1.000000e+00
  %2901 = fadd fast float %2896, -1.000000e+00
  %2902 = select i1 %2884, float %2901, float -1.000000e+00
  %2903 = fmul fast float %2898, %2391
  %2904 = fmul fast float %2900, %2391
  %2905 = fmul fast float %2902, %2391
  %2906 = fadd fast float %2903, 1.000000e+00
  %2907 = fadd fast float %2904, 1.000000e+00
  %2908 = fadd fast float %2905, 1.000000e+00
  %2909 = fmul fast float %2906, %2076
  %2910 = fmul fast float %2907, %2077
  %2911 = fmul fast float %2908, %2078
  %2912 = fmul fast float %2906, %2079
  %2913 = fmul fast float %2907, %2080
  %2914 = fmul fast float %2908, %2081
  br label %2915

; <label>:2915                                    ; preds = %2880, %2861
  %2916 = phi float [ %2909, %2880 ], [ %2076, %2861 ]
  %2917 = phi float [ %2910, %2880 ], [ %2077, %2861 ]
  %2918 = phi float [ %2911, %2880 ], [ %2078, %2861 ]
  %2919 = phi float [ %2912, %2880 ], [ %2079, %2861 ]
  %2920 = phi float [ %2913, %2880 ], [ %2080, %2861 ]
  %2921 = phi float [ %2914, %2880 ], [ %2081, %2861 ]
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 3
  %2925 = icmp eq i32 %2924, 3
  br i1 %2925, label %3004, label %2926

; <label>:2926                                    ; preds = %2915
  %2927 = and i32 %2923, 16
  %2928 = icmp ne i32 %2927, 0
  %2929 = select i1 %2928, float %2391, float 0.000000e+00
  %2930 = icmp eq i32 %2924, 0
  br i1 %2930, label %2931, label %2959

; <label>:2931                                    ; preds = %2926
  %2932 = and i32 %2923, 64
  %2933 = icmp ne i32 %2932, 0
  %2934 = select i1 %2933, float %2391, float 0.000000e+00
  %2935 = fsub fast float %2611, %2916
  %2936 = fsub fast float %2612, %2917
  %2937 = fsub fast float %2613, %2918
  %2938 = fmul fast float %2929, %2935
  %2939 = fmul fast float %2929, %2936
  %2940 = fmul fast float %2929, %2937
  %2941 = fadd fast float %2938, %2916
  %2942 = fadd fast float %2939, %2917
  %2943 = fadd fast float %2940, %2918
  %2944 = fsub fast float %2597, %2088
  %2945 = fmul fast float %2929, %2944
  %2946 = fadd fast float %2945, %2088
  %2947 = fsub fast float %2739, %2919
  %2948 = fsub fast float %2740, %2920
  %2949 = fsub fast float %2741, %2921
  %2950 = fmul fast float %2934, %2947
  %2951 = fmul fast float %2934, %2948
  %2952 = fmul fast float %2934, %2949
  %2953 = fadd fast float %2950, %2919
  %2954 = fadd fast float %2951, %2920
  %2955 = fadd fast float %2952, %2921
  %2956 = fsub fast float %2879, %2093
  %2957 = fmul fast float %2929, %2956
  %2958 = fadd fast float %2957, %2093
  br label %3004

; <label>:2959                                    ; preds = %2926
  %2960 = icmp eq i32 %2924, 1
  br i1 %2960, label %2961, label %2974

; <label>:2961                                    ; preds = %2959
  %2962 = fadd fast float %2611, -1.000000e+00
  %2963 = fadd fast float %2612, -1.000000e+00
  %2964 = fadd fast float %2613, -1.000000e+00
  %2965 = fmul fast float %2929, %2962
  %2966 = fmul fast float %2929, %2963
  %2967 = fmul fast float %2929, %2964
  %2968 = fadd fast float %2965, 1.000000e+00
  %2969 = fadd fast float %2966, 1.000000e+00
  %2970 = fadd fast float %2967, 1.000000e+00
  %2971 = fmul fast float %2968, %2916
  %2972 = fmul fast float %2969, %2917
  %2973 = fmul fast float %2970, %2918
  br label %3004

; <label>:2974                                    ; preds = %2959
  %2975 = icmp eq i32 %2924, 2
  br i1 %2975, label %2976, label %3004

; <label>:2976                                    ; preds = %2974
  %2977 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2978 = call float @dx.op.unary.f32(i32 24, float %2612)  ; Sqrt(value)
  %2979 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2980 = fadd fast float %2977, -5.000000e-01
  %2981 = fadd fast float %2978, -5.000000e-01
  %2982 = fadd fast float %2979, -5.000000e-01
  %2983 = fmul fast float %2980, %2929
  %2984 = fmul fast float %2981, %2929
  %2985 = fmul fast float %2982, %2929
  %2986 = fadd fast float %2983, 5.000000e-01
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fmul fast float %2986, 2.000000e+00
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2990, %2916
  %2992 = fadd fast float %2991, %2989
  %2993 = fmul fast float %2992, %2916
  %2994 = fmul fast float %2987, 2.000000e+00
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2995, %2917
  %2997 = fadd fast float %2996, %2994
  %2998 = fmul fast float %2997, %2917
  %2999 = fmul fast float %2988, 2.000000e+00
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = fmul fast float %3000, %2918
  %3002 = fadd fast float %3001, %2999
  %3003 = fmul fast float %3002, %2918
  br label %3004

; <label>:3004                                    ; preds = %2976, %2974, %2961, %2931, %2915
  %3005 = phi float [ %2916, %2915 ], [ %2993, %2976 ], [ %2916, %2974 ], [ %2971, %2961 ], [ %2941, %2931 ]
  %3006 = phi float [ %2917, %2915 ], [ %2998, %2976 ], [ %2917, %2974 ], [ %2972, %2961 ], [ %2942, %2931 ]
  %3007 = phi float [ %2918, %2915 ], [ %3003, %2976 ], [ %2918, %2974 ], [ %2973, %2961 ], [ %2943, %2931 ]
  %3008 = phi float [ %2919, %2915 ], [ %2919, %2976 ], [ %2919, %2974 ], [ %2919, %2961 ], [ %2953, %2931 ]
  %3009 = phi float [ %2920, %2915 ], [ %2920, %2976 ], [ %2920, %2974 ], [ %2920, %2961 ], [ %2954, %2931 ]
  %3010 = phi float [ %2921, %2915 ], [ %2921, %2976 ], [ %2921, %2974 ], [ %2921, %2961 ], [ %2955, %2931 ]
  %3011 = phi float [ %2088, %2915 ], [ %2088, %2976 ], [ %2088, %2974 ], [ %2088, %2961 ], [ %2946, %2931 ]
  %3012 = phi float [ %2093, %2915 ], [ %2093, %2976 ], [ %2093, %2974 ], [ %2093, %2961 ], [ %2958, %2931 ]
  %3013 = and i32 %2923, 12
  %3014 = icmp eq i32 %3013, 12
  br i1 %3014, label %3155, label %3015

; <label>:3015                                    ; preds = %3004
  %3016 = and i32 %2923, 2097184
  %3017 = icmp eq i32 %3016, 2097184
  %3018 = select i1 %3017, float %2391, float 0.000000e+00
  %3019 = and i32 %2923, 4194336
  %3020 = icmp eq i32 %3019, 4194336
  %3021 = select i1 %3020, float %2391, float 0.000000e+00
  %3022 = and i32 %2923, 8388640
  %3023 = icmp eq i32 %3022, 8388640
  %3024 = select i1 %3023, float %2391, float 0.000000e+00
  %3025 = and i32 %2923, 1024
  %3026 = icmp ne i32 %3025, 0
  %3027 = select i1 %3026, float %2391, float 0.000000e+00
  %3028 = and i32 %2923, 2048
  %3029 = icmp ne i32 %3028, 0
  %3030 = select i1 %3029, float %2391, float 0.000000e+00
  %3031 = and i32 %2923, 8192
  %3032 = icmp ne i32 %3031, 0
  %3033 = select i1 %3032, float %2391, float 0.000000e+00
  %3034 = and i32 %2923, 16384
  %3035 = icmp ne i32 %3034, 0
  %3036 = select i1 %3035, float %2391, float 0.000000e+00
  %3037 = icmp eq i32 %3013, 0
  br i1 %3037, label %3038, label %3075

; <label>:3038                                    ; preds = %3015
  %3039 = fsub fast float %2692, %2074
  %3040 = fsub fast float %2693, %2075
  %3041 = fmul fast float %3018, %3039
  %3042 = fmul fast float %3018, %3040
  %3043 = fadd fast float %3041, %2074
  %3044 = fadd fast float %3042, %2075
  %3045 = fsub fast float %2694, %2090
  %3046 = fmul fast float %3021, %3045
  %3047 = fadd fast float %3046, %2090
  %3048 = fsub fast float %2691, %2089
  %3049 = fmul fast float %3024, %3048
  %3050 = fadd fast float %3049, %2089
  %3051 = fsub fast float %2797, %2085
  %3052 = fsub fast float %2798, %2086
  %3053 = fsub fast float %2799, %2087
  %3054 = fmul fast float %3027, %3051
  %3055 = fmul fast float %3027, %3052
  %3056 = fmul fast float %3027, %3053
  %3057 = fadd fast float %3054, %2085
  %3058 = fadd fast float %3055, %2086
  %3059 = fadd fast float %3056, %2087
  %3060 = fsub fast float %2865, %2091
  %3061 = fmul fast float %3030, %3060
  %3062 = fadd fast float %3061, %2091
  %3063 = fsub fast float %2862, %2082
  %3064 = fsub fast float %2863, %2083
  %3065 = fsub fast float %2864, %2084
  %3066 = fmul fast float %3033, %3063
  %3067 = fmul fast float %3033, %3064
  %3068 = fmul fast float %3033, %3065
  %3069 = fadd fast float %3066, %2082
  %3070 = fadd fast float %3067, %2083
  %3071 = fadd fast float %3068, %2084
  %3072 = fsub fast float %2866, %2092
  %3073 = fmul fast float %3036, %3072
  %3074 = fadd fast float %3073, %2092
  br label %3155

; <label>:3075                                    ; preds = %3015
  %3076 = icmp eq i32 %3013, 4
  br i1 %3076, label %3077, label %3125

; <label>:3077                                    ; preds = %3075
  %3078 = fmul fast float %3018, %2692
  %3079 = fmul fast float %3018, %2693
  %3080 = fadd fast float %3078, %2074
  %3081 = fadd fast float %3079, %2075
  %3082 = call float @dx.op.binary.f32(i32 36, float %2090, float %2694)  ; FMin(a,b)
  %3083 = fsub fast float %3082, %2090
  %3084 = fmul fast float %3083, %3021
  %3085 = fadd fast float %3084, %2090
  %3086 = fadd fast float %2691, %2089
  %3087 = fmul fast float %3086, 0x3FF337FAE0000000
  %3088 = fmul fast float %2089, %2089
  %3089 = fmul fast float %2691, %2691
  %3090 = fadd fast float %3089, %3088
  %3091 = fmul fast float %3090, 0x3FE5152B00000000
  %3092 = fmul fast float %2089, 0xBFCC1F85E0000000
  %3093 = fmul fast float %3092, %2691
  %3094 = fadd fast float %3093, 0xBFE1363700000000
  %3095 = fadd fast float %3094, %3087
  %3096 = fsub fast float %3095, %3091
  %3097 = fmul fast float %3086, 0x3FBA6F0D00000000
  %3098 = fmul fast float %3090, 0x3FD0432880000000
  %3099 = fmul fast float %2089, 0xBFEF110800000000
  %3100 = fmul fast float %3099, %2691
  %3101 = fadd fast float %3100, 1.000000e+00
  %3102 = fsub fast float %3101, %3097
  %3103 = fadd fast float %3102, %3098
  %3104 = fdiv fast float %3096, %3103
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3106 = fsub fast float %3105, %2089
  %3107 = fmul fast float %3106, %3024
  %3108 = fadd fast float %3107, %2089
  %3109 = fmul fast float %3027, %2797
  %3110 = fmul fast float %3027, %2798
  %3111 = fmul fast float %3027, %2799
  %3112 = fadd fast float %3109, %2085
  %3113 = fadd fast float %3110, %2086
  %3114 = fadd fast float %3111, %2087
  %3115 = fmul fast float %3030, %2865
  %3116 = fadd fast float %3115, %2091
  %3117 = fmul fast float %3033, %2862
  %3118 = fmul fast float %3033, %2863
  %3119 = fmul fast float %3033, %2864
  %3120 = fadd fast float %3117, %2082
  %3121 = fadd fast float %3118, %2083
  %3122 = fadd fast float %3119, %2084
  %3123 = fmul fast float %3036, %2866
  %3124 = fadd fast float %3123, %2092
  br label %3155

; <label>:3125                                    ; preds = %3075
  %3126 = icmp eq i32 %3013, 8
  br i1 %3126, label %3127, label %3155

; <label>:3127                                    ; preds = %3125
  %3128 = fmul fast float %3018, %2692
  %3129 = fmul fast float %3018, %2693
  %3130 = fadd fast float %3128, %2074
  %3131 = fadd fast float %3129, %2075
  %3132 = call float @dx.op.binary.f32(i32 36, float %2090, float %2694)  ; FMin(a,b)
  %3133 = fsub fast float %3132, %2090
  %3134 = fmul fast float %3133, %3021
  %3135 = fadd fast float %3134, %2090
  %3136 = fsub fast float %2691, %2089
  %3137 = fmul fast float %3024, %3136
  %3138 = fadd fast float %3137, %2089
  %3139 = fmul fast float %3027, %2797
  %3140 = fmul fast float %3027, %2798
  %3141 = fmul fast float %3027, %2799
  %3142 = fadd fast float %3139, %2085
  %3143 = fadd fast float %3140, %2086
  %3144 = fadd fast float %3141, %2087
  %3145 = fmul fast float %3030, %2865
  %3146 = fadd fast float %3145, %2091
  %3147 = fmul fast float %3033, %2862
  %3148 = fmul fast float %3033, %2863
  %3149 = fmul fast float %3033, %2864
  %3150 = fadd fast float %3147, %2082
  %3151 = fadd fast float %3148, %2083
  %3152 = fadd fast float %3149, %2084
  %3153 = fmul fast float %3036, %2866
  %3154 = fadd fast float %3153, %2092
  br label %3155

; <label>:3155                                    ; preds = %3127, %3125, %3077, %3038, %3004, %2390, %2094, %2073
  %3156 = phi float [ %2074, %3004 ], [ %2074, %2390 ], [ %2074, %2073 ], [ %3130, %3127 ], [ %2074, %3125 ], [ %3080, %3077 ], [ %3043, %3038 ], [ %2074, %2094 ]
  %3157 = phi float [ %2075, %3004 ], [ %2075, %2390 ], [ %2075, %2073 ], [ %3131, %3127 ], [ %2075, %3125 ], [ %3081, %3077 ], [ %3044, %3038 ], [ %2075, %2094 ]
  %3158 = phi float [ %3005, %3004 ], [ %2076, %2390 ], [ %2076, %2073 ], [ %3005, %3127 ], [ %3005, %3125 ], [ %3005, %3077 ], [ %3005, %3038 ], [ %2076, %2094 ]
  %3159 = phi float [ %3006, %3004 ], [ %2077, %2390 ], [ %2077, %2073 ], [ %3006, %3127 ], [ %3006, %3125 ], [ %3006, %3077 ], [ %3006, %3038 ], [ %2077, %2094 ]
  %3160 = phi float [ %3007, %3004 ], [ %2078, %2390 ], [ %2078, %2073 ], [ %3007, %3127 ], [ %3007, %3125 ], [ %3007, %3077 ], [ %3007, %3038 ], [ %2078, %2094 ]
  %3161 = phi float [ %3008, %3004 ], [ %2079, %2390 ], [ %2079, %2073 ], [ %3008, %3127 ], [ %3008, %3125 ], [ %3008, %3077 ], [ %3008, %3038 ], [ %2079, %2094 ]
  %3162 = phi float [ %3009, %3004 ], [ %2080, %2390 ], [ %2080, %2073 ], [ %3009, %3127 ], [ %3009, %3125 ], [ %3009, %3077 ], [ %3009, %3038 ], [ %2080, %2094 ]
  %3163 = phi float [ %3010, %3004 ], [ %2081, %2390 ], [ %2081, %2073 ], [ %3010, %3127 ], [ %3010, %3125 ], [ %3010, %3077 ], [ %3010, %3038 ], [ %2081, %2094 ]
  %3164 = phi float [ %2082, %3004 ], [ %2082, %2390 ], [ %2082, %2073 ], [ %3150, %3127 ], [ %2082, %3125 ], [ %3120, %3077 ], [ %3069, %3038 ], [ %2082, %2094 ]
  %3165 = phi float [ %2083, %3004 ], [ %2083, %2390 ], [ %2083, %2073 ], [ %3151, %3127 ], [ %2083, %3125 ], [ %3121, %3077 ], [ %3070, %3038 ], [ %2083, %2094 ]
  %3166 = phi float [ %2084, %3004 ], [ %2084, %2390 ], [ %2084, %2073 ], [ %3152, %3127 ], [ %2084, %3125 ], [ %3122, %3077 ], [ %3071, %3038 ], [ %2084, %2094 ]
  %3167 = phi float [ %2085, %3004 ], [ %2085, %2390 ], [ %2085, %2073 ], [ %3142, %3127 ], [ %2085, %3125 ], [ %3112, %3077 ], [ %3057, %3038 ], [ %2085, %2094 ]
  %3168 = phi float [ %2086, %3004 ], [ %2086, %2390 ], [ %2086, %2073 ], [ %3143, %3127 ], [ %2086, %3125 ], [ %3113, %3077 ], [ %3058, %3038 ], [ %2086, %2094 ]
  %3169 = phi float [ %2087, %3004 ], [ %2087, %2390 ], [ %2087, %2073 ], [ %3144, %3127 ], [ %2087, %3125 ], [ %3114, %3077 ], [ %3059, %3038 ], [ %2087, %2094 ]
  %3170 = phi float [ %3011, %3004 ], [ %2088, %2390 ], [ %2088, %2073 ], [ %3011, %3127 ], [ %3011, %3125 ], [ %3011, %3077 ], [ %3011, %3038 ], [ %2088, %2094 ]
  %3171 = phi float [ %2089, %3004 ], [ %2089, %2390 ], [ %2089, %2073 ], [ %3138, %3127 ], [ %2089, %3125 ], [ %3108, %3077 ], [ %3050, %3038 ], [ %2089, %2094 ]
  %3172 = phi float [ %2090, %3004 ], [ %2090, %2390 ], [ %2090, %2073 ], [ %3135, %3127 ], [ %2090, %3125 ], [ %3085, %3077 ], [ %3047, %3038 ], [ %2090, %2094 ]
  %3173 = phi float [ %2091, %3004 ], [ %2091, %2390 ], [ %2091, %2073 ], [ %3146, %3127 ], [ %2091, %3125 ], [ %3116, %3077 ], [ %3062, %3038 ], [ %2091, %2094 ]
  %3174 = phi float [ %2092, %3004 ], [ %2092, %2390 ], [ %2092, %2073 ], [ %3154, %3127 ], [ %2092, %3125 ], [ %3124, %3077 ], [ %3074, %3038 ], [ %2092, %2094 ]
  %3175 = phi float [ %3012, %3004 ], [ %2093, %2390 ], [ %2093, %2073 ], [ %3012, %3127 ], [ %3012, %3125 ], [ %3012, %3077 ], [ %3012, %3038 ], [ %2093, %2094 ]
  br i1 %347, label %4237, label %3176

; <label>:3176                                    ; preds = %3155
  %3177 = icmp ult i32 %398, 4
  %3178 = add i32 %33, 72
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %33, 76
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = or i32 %3183, %3180
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %4237, label %3186

; <label>:3186                                    ; preds = %3176
  %3187 = and i32 %3180, 262144
  %3188 = icmp ne i32 %3187, 0
  %3189 = select i1 %3188, float %36, float 1.000000e+00
  %3190 = select i1 %3188, float %37, float 0.000000e+00
  %3191 = select i1 %3188, float %38, float 0.000000e+00
  %3192 = select i1 %3188, float %39, float 1.000000e+00
  %3193 = select i1 %3188, float %40, float %61
  %3194 = select i1 %3188, float %41, float %62
  %3195 = add i32 %33, 332
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fmul fast float %3199, 0x3F50624DE0000000
  %3201 = add i32 %33, 136
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 16
  %3205 = and i32 %3204, 255
  %3206 = lshr i32 %3203, 24
  %3207 = add i32 %33, 340
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = and i32 %3209, 65535
  %3211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3210)  ; LegacyF16ToF32(value)
  %3212 = lshr i32 %3209, 16
  %3213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3212)  ; LegacyF16ToF32(value)
  %3214 = add i32 %33, 80
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 22
  %3218 = shl nuw nsw i32 %3217, 5
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = shl i32 %3216, 4
  %3221 = and i32 %3220, 32752
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = lshr i32 %3216, 7
  %3224 = and i32 %3223, 32752
  %3225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3224)  ; LegacyF16ToF32(value)
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 3
  %3228 = fmul fast float %3227, 1.000000e+03
  %3229 = fmul fast float %337, %3228
  %3230 = call float @dx.op.unary.f32(i32 22, float %3229)  ; Frc(value)
  %3231 = fadd fast float %3230, %327
  %3232 = fmul fast float %338, %3228
  %3233 = call float @dx.op.unary.f32(i32 22, float %3232)  ; Frc(value)
  %3234 = fadd fast float %3233, %329
  %3235 = fmul fast float %3200, %3228
  %3236 = call float @dx.op.unary.f32(i32 22, float %3235)  ; Frc(value)
  %3237 = fmul fast float %3236, 0x401921FB60000000
  %3238 = fadd fast float %3237, %3219
  %3239 = call float @dx.op.unary.f32(i32 13, float %3238)  ; Sin(value)
  %3240 = call float @dx.op.unary.f32(i32 12, float %3238)  ; Cos(value)
  %3241 = fsub fast float -0.000000e+00, %3239
  %3242 = fadd fast float %3193, -5.000000e-01
  %3243 = fadd fast float %3194, -5.000000e-01
  %3244 = fmul fast float %3211, %3242
  %3245 = fmul fast float %3213, %3243
  %3246 = fadd fast float %3244, 5.000000e-01
  %3247 = fadd fast float %3245, 5.000000e-01
  %3248 = fmul fast float %3222, %3246
  %3249 = fmul fast float %3225, %3247
  %3250 = fmul fast float %3240, %3248
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3241, float %3249, float %3250)  ; FMad(a,b,c)
  %3252 = fmul fast float %3239, %3248
  %3253 = call float @dx.op.tertiary.f32(i32 46, float %3240, float %3249, float %3252)  ; FMad(a,b,c)
  %3254 = fadd fast float %3231, %3251
  %3255 = fadd fast float %3234, %3253
  %3256 = icmp ugt i32 %3205, 1
  %3257 = icmp ugt i32 %3203, 33554431
  %3258 = or i1 %3257, %3256
  br i1 %3258, label %3259, label %3284

; <label>:3259                                    ; preds = %3186
  %3260 = add i32 %33, 276
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3260, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = lshr i32 %3262, 16
  %3264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3263)  ; LegacyF16ToF32(value)
  %3265 = fmul fast float %3227, %3264
  %3266 = call float @dx.op.unary.f32(i32 22, float %3265)  ; Frc(value)
  %3267 = mul nuw nsw i32 %3205, %3206
  %3268 = uitofp i32 %3267 to float
  %3269 = fmul fast float %3266, %3268
  %3270 = call float @dx.op.unary.f32(i32 27, float %3269)  ; Round_ni(value)
  %3271 = fptoui float %3270 to i32
  %3272 = urem i32 %3271, %3205
  %3273 = udiv i32 %3271, %3206
  %3274 = call float @dx.op.unary.f32(i32 22, float %3254)  ; Frc(value)
  %3275 = call float @dx.op.unary.f32(i32 22, float %3255)  ; Frc(value)
  %3276 = uitofp i32 %3272 to float
  %3277 = uitofp i32 %3273 to float
  %3278 = fadd fast float %3274, %3276
  %3279 = fadd fast float %3275, %3277
  %3280 = uitofp i32 %3205 to float
  %3281 = uitofp i32 %3206 to float
  %3282 = fdiv fast float %3278, %3280
  %3283 = fdiv fast float %3279, %3281
  br label %3284

; <label>:3284                                    ; preds = %3259, %3186
  %3285 = phi float [ %3282, %3259 ], [ %3254, %3186 ]
  %3286 = phi float [ %3283, %3259 ], [ %3255, %3186 ]
  %3287 = and i32 %3180, 16777216
  %3288 = icmp eq i32 %3287, 0
  br i1 %3288, label %3398, label %3289

; <label>:3289                                    ; preds = %3284
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3293 = extractvalue %dx.types.CBufRet.f32 %3290, 2
  %3294 = fadd fast float %3291, %128
  %3295 = fadd fast float %3292, %129
  %3296 = fadd fast float %3293, %130
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 0
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  %3300 = icmp eq i32 %34, 65535
  br i1 %3300, label %3395, label %3301

; <label>:3301                                    ; preds = %3289
  %3302 = lshr i32 %34, 1
  %3303 = shl i32 %3302, 2
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %34, 1
  %3307 = icmp ne i32 %3306, 0
  %3308 = lshr i32 %3305, 16
  %3309 = and i32 %3305, 65535
  %3310 = select i1 %3307, i32 %3308, i32 %3309
  %3311 = icmp eq i32 %3310, 65535
  br i1 %3311, label %3391, label %3312

; <label>:3312                                    ; preds = %3301
  %3313 = mul nuw nsw i32 %3310, 40
  %3314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.ResRet.f32 %3314, 2
  %3318 = add nuw nsw i32 %3313, 12
  %3319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3318, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.f32 %3319, 0
  %3321 = extractvalue %dx.types.ResRet.f32 %3319, 1
  %3322 = extractvalue %dx.types.ResRet.f32 %3319, 2
  %3323 = add nuw nsw i32 %3313, 24
  %3324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = add nuw nsw i32 %3313, 36
  %3329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = fsub fast float %3294, %3315
  %3332 = fsub fast float %3295, %3316
  %3333 = fsub fast float %3296, %3317
  %3334 = fmul fast float %3330, %3331
  %3335 = fmul fast float %3330, %3332
  %3336 = fmul fast float %3330, %3333
  %3337 = call float @dx.op.unary.f32(i32 27, float %3334)  ; Round_ni(value)
  %3338 = call float @dx.op.unary.f32(i32 27, float %3335)  ; Round_ni(value)
  %3339 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3340 = fadd fast float %3337, 5.000000e-01
  %3341 = fadd fast float %3338, 5.000000e-01
  %3342 = fadd fast float %3339, 5.000000e-01
  %3343 = fmul fast float %3340, %3320
  %3344 = fmul fast float %3341, %3321
  %3345 = fmul fast float %3342, %3322
  %3346 = shl i32 %34, 2
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = add i32 %3348, 0
  %3350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3351 = call float @dx.op.unary.f32(i32 22, float %3343)  ; Frc(value)
  %3352 = call float @dx.op.unary.f32(i32 22, float %3344)  ; Frc(value)
  %3353 = call float @dx.op.unary.f32(i32 22, float %3345)  ; Frc(value)
  %3354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3350, %dx.types.Handle %30, float %3351, float %3352, float %3353, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3355 = extractvalue %dx.types.ResRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.ResRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.ResRet.f32 %3354, 2
  %3358 = fmul fast float %3355, 1.023000e+03
  %3359 = fmul fast float %3356, 1.023000e+03
  %3360 = fmul fast float %3357, 1.023000e+03
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = call float @dx.op.unary.f32(i32 27, float %3361)  ; Round_ni(value)
  %3365 = call float @dx.op.unary.f32(i32 27, float %3362)  ; Round_ni(value)
  %3366 = call float @dx.op.unary.f32(i32 27, float %3363)  ; Round_ni(value)
  %3367 = fsub fast float %3334, %3337
  %3368 = fsub fast float %3335, %3338
  %3369 = fsub fast float %3336, %3339
  %3370 = fmul fast float %3367, 7.500000e-01
  %3371 = fmul fast float %3368, 7.500000e-01
  %3372 = fmul fast float %3369, 7.500000e-01
  %3373 = fadd fast float %3337, 1.250000e-01
  %3374 = fadd fast float %3373, %3370
  %3375 = fadd fast float %3374, %3364
  %3376 = fadd fast float %3338, 1.250000e-01
  %3377 = fadd fast float %3376, %3371
  %3378 = fadd fast float %3377, %3365
  %3379 = fadd fast float %3339, 1.250000e-01
  %3380 = fadd fast float %3379, %3372
  %3381 = fadd fast float %3380, %3366
  %3382 = fmul fast float %3375, %3325
  %3383 = fmul fast float %3378, %3326
  %3384 = fmul fast float %3381, %3327
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = add i32 %3386, 0
  %3388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3388, %dx.types.Handle %28, float %3382, float %3383, float %3384, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  br label %3391

; <label>:3391                                    ; preds = %3312, %3301
  %3392 = phi float [ %3390, %3312 ], [ -1.000000e+00, %3301 ]
  %3393 = fadd fast float %3392, %3299
  %3394 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  br label %3395

; <label>:3395                                    ; preds = %3391, %3289
  %3396 = phi float [ %3394, %3391 ], [ %3299, %3289 ]
  %3397 = fmul fast float %3396, %393
  br label %3398

; <label>:3398                                    ; preds = %3395, %3284
  %3399 = phi float [ %3397, %3395 ], [ %393, %3284 ]
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = and i32 %3401, 256
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3450, label %3404

; <label>:3404                                    ; preds = %3398
  %3405 = add i32 %33, 436
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = add i32 %3407, 0
  %3409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3409, %dx.types.Handle %70, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = add i32 %33, 148
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = shl i32 %3414, 4
  %3416 = and i32 %3415, 32752
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = lshr i32 %3414, 7
  %3419 = and i32 %3418, 32752
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = fsub fast float 1.000000e+00, %3399
  %3422 = call float @dx.op.binary.f32(i32 35, float %3421, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3423 = bitcast float %3399 to i32
  %3424 = sitofp i32 %3423 to float
  %3425 = fadd fast float %3424, 0xC1CFBF8940000000
  %3426 = fmul fast float %3420, %3425
  %3427 = fadd fast float %3426, 0x41CFBF8940000000
  %3428 = fptosi float %3427 to i32
  %3429 = bitcast i32 %3428 to float
  %3430 = bitcast float %3422 to i32
  %3431 = sitofp i32 %3430 to float
  %3432 = fadd fast float %3431, 0xC1CFBF8940000000
  %3433 = fmul fast float %3432, %3420
  %3434 = fadd fast float %3433, 0x41CFBF8940000000
  %3435 = fptosi float %3434 to i32
  %3436 = bitcast i32 %3435 to float
  %3437 = fmul fast float %3429, %3417
  %3438 = fmul fast float %3436, %3417
  %3439 = fsub fast float %3422, %3437
  %3440 = fadd fast float %3438, %3422
  %3441 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3443 = fsub fast float %3411, %3441
  %3444 = fsub fast float %3442, %3441
  %3445 = bitcast float %3444 to i32
  %3446 = sub nsw i32 2129859010, %3445
  %3447 = bitcast i32 %3446 to float
  %3448 = fmul fast float %3447, %3443
  %3449 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  br label %3450

; <label>:3450                                    ; preds = %3404, %3398
  %3451 = phi float [ %3449, %3404 ], [ %3399, %3398 ]
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 128
  %3455 = icmp eq i32 %3454, 0
  br i1 %3455, label %3472, label %3456

; <label>:3456                                    ; preds = %3450
  %3457 = add i32 %33, 420
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = add i32 %3459, 0
  %3461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3461, %dx.types.Handle %70, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 524288
  %3467 = icmp ne i32 %3466, 0
  %3468 = fcmp fast ogt float %3463, 0x3FE0101020000000
  %3469 = select i1 %3468, float 1.000000e+00, float 0.000000e+00
  %3470 = select i1 %3467, float %3469, float %3463
  %3471 = fmul fast float %3470, %3451
  br label %3472

; <label>:3472                                    ; preds = %3456, %3450
  %3473 = phi float [ %3471, %3456 ], [ %3451, %3450 ]
  %3474 = fcmp fast ult float %3473, 0x3F70101020000000
  br i1 %3474, label %4237, label %3475

; <label>:3475                                    ; preds = %3472
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = and i32 %3477, 16
  %3479 = icmp eq i32 %3478, 0
  br i1 %3479, label %3678, label %3480

; <label>:3480                                    ; preds = %3475
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %33, 372
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %69, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = extractvalue %dx.types.ResRet.f32 %3488, 3
  %3493 = and i32 %3482, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3482, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = fmul fast float %3492, %3494
  %3499 = fadd fast float %3498, %3497
  %3500 = fmul fast float %3499, 0x3F70101000000000
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = and i32 %3502, 512
  %3504 = icmp eq i32 %3503, 0
  br i1 %3504, label %3513, label %3505

; <label>:3505                                    ; preds = %3480
  %3506 = add i32 %33, 452
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = add i32 %3508, 0
  %3510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3510, %dx.types.Handle %70, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  br label %3513

; <label>:3513                                    ; preds = %3505, %3480
  %3514 = phi float [ %3512, %3505 ], [ 1.000000e+00, %3480 ]
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 33554432
  %3518 = icmp eq i32 %3517, 0
  br i1 %3518, label %3625, label %3519

; <label>:3519                                    ; preds = %3513
  %3520 = add i32 %33, 272
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 65535
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = lshr i32 %3522, 16
  %3526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3525)  ; LegacyF16ToF32(value)
  %3527 = add i32 %33, 276
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 65535
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = lshr i32 %3533, 24
  %3535 = uitofp i32 %3534 to float
  %3536 = fmul fast float %3535, 0x3F70101020000000
  %3537 = and i32 %3533, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = fmul fast float %3538, 0x3F70101020000000
  %3540 = lshr i32 %3533, 8
  %3541 = and i32 %3540, 255
  %3542 = uitofp i32 %3541 to float
  %3543 = fmul fast float %3542, 0x3F70101020000000
  %3544 = lshr i32 %3533, 16
  %3545 = and i32 %3544, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = fmul fast float %3546, 0x3F70101020000000
  %3548 = add i32 %33, 268
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = lshr i32 %3550, 24
  %3552 = uitofp i32 %3551 to float
  %3553 = fmul fast float %3552, 0x3F70101020000000
  %3554 = and i32 %3550, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = fmul fast float %3555, 0x3F70101020000000
  %3557 = lshr i32 %3550, 8
  %3558 = and i32 %3557, 255
  %3559 = uitofp i32 %3558 to float
  %3560 = fmul fast float %3559, 0x3F70101020000000
  %3561 = lshr i32 %3550, 16
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = fmul fast float %3563, 0x3F70101020000000
  %3565 = bitcast float %3489 to i32
  %3566 = ashr i32 %3565, 1
  %3567 = sub nsw i32 1597463174, %3566
  %3568 = bitcast i32 %3567 to float
  %3569 = fmul fast float %3489, 5.000000e-01
  %3570 = fmul fast float %3568, %3568
  %3571 = fmul fast float %3570, %3569
  %3572 = fsub fast float 1.500000e+00, %3571
  %3573 = fmul fast float %3568, %3489
  %3574 = fmul fast float %3573, %3572
  %3575 = bitcast float %3490 to i32
  %3576 = ashr i32 %3575, 1
  %3577 = sub nsw i32 1597463174, %3576
  %3578 = bitcast i32 %3577 to float
  %3579 = fmul fast float %3490, 5.000000e-01
  %3580 = fmul fast float %3578, %3578
  %3581 = fmul fast float %3580, %3579
  %3582 = fsub fast float 1.500000e+00, %3581
  %3583 = fmul fast float %3578, %3490
  %3584 = fmul fast float %3583, %3582
  %3585 = bitcast float %3491 to i32
  %3586 = ashr i32 %3585, 1
  %3587 = sub nsw i32 1597463174, %3586
  %3588 = bitcast i32 %3587 to float
  %3589 = fmul fast float %3491, 5.000000e-01
  %3590 = fmul fast float %3588, %3588
  %3591 = fmul fast float %3590, %3589
  %3592 = fsub fast float 1.500000e+00, %3591
  %3593 = fmul fast float %3588, %3491
  %3594 = fmul fast float %3593, %3592
  %3595 = fsub fast float %3574, %3556
  %3596 = fsub fast float %3584, %3560
  %3597 = fsub fast float %3594, %3564
  %3598 = fmul fast float %3595, %3524
  %3599 = fmul fast float %3596, %3526
  %3600 = fmul fast float %3597, %3531
  %3601 = fadd fast float %3598, %3539
  %3602 = fadd fast float %3599, %3543
  %3603 = fadd fast float %3600, %3547
  %3604 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3605 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3606 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3607 = fmul fast float %3604, %3604
  %3608 = fmul fast float %3605, %3605
  %3609 = fmul fast float %3606, %3606
  %3610 = fsub fast float %3607, %3489
  %3611 = fsub fast float %3608, %3490
  %3612 = fsub fast float %3609, %3491
  %3613 = fmul fast float %3610, %3514
  %3614 = fmul fast float %3611, %3514
  %3615 = fmul fast float %3612, %3514
  %3616 = fadd fast float %3613, %3489
  %3617 = fadd fast float %3614, %3490
  %3618 = fadd fast float %3615, %3491
  %3619 = fadd fast float %3536, %3500
  %3620 = fsub fast float %3619, %3553
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fsub fast float %3621, %3500
  %3623 = fmul fast float %3622, %3514
  %3624 = fadd fast float %3623, %3500
  br label %3678

; <label>:3625                                    ; preds = %3513
  %3626 = and i32 %3516, 134217728
  %3627 = icmp eq i32 %3626, 0
  br i1 %3627, label %3662, label %3628

; <label>:3628                                    ; preds = %3625
  %3629 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3630 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3631 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3632 = fadd fast float %3629, -5.000000e-01
  %3633 = fadd fast float %3630, -5.000000e-01
  %3634 = fadd fast float %3631, -5.000000e-01
  %3635 = fmul fast float %3632, %3514
  %3636 = fmul fast float %3633, %3514
  %3637 = fmul fast float %3634, %3514
  %3638 = fadd fast float %3635, 5.000000e-01
  %3639 = fadd fast float %3636, 5.000000e-01
  %3640 = fadd fast float %3637, 5.000000e-01
  %3641 = call float @dx.op.unary.f32(i32 24, float %3489)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %3490)  ; Sqrt(value)
  %3643 = call float @dx.op.unary.f32(i32 24, float %3491)  ; Sqrt(value)
  %3644 = fmul fast float %3638, 2.000000e+00
  %3645 = fsub fast float 1.000000e+00, %3644
  %3646 = fmul fast float %3645, %3641
  %3647 = fadd fast float %3646, %3644
  %3648 = fmul fast float %3647, %3641
  %3649 = fmul fast float %3639, 2.000000e+00
  %3650 = fsub fast float 1.000000e+00, %3649
  %3651 = fmul fast float %3650, %3642
  %3652 = fadd fast float %3651, %3649
  %3653 = fmul fast float %3652, %3642
  %3654 = fmul fast float %3640, 2.000000e+00
  %3655 = fsub fast float 1.000000e+00, %3654
  %3656 = fmul fast float %3655, %3643
  %3657 = fadd fast float %3656, %3654
  %3658 = fmul fast float %3657, %3643
  %3659 = fmul fast float %3648, %3648
  %3660 = fmul fast float %3653, %3653
  %3661 = fmul fast float %3658, %3658
  br label %3678

; <label>:3662                                    ; preds = %3625
  %3663 = fmul fast float %314, %314
  %3664 = fmul fast float %318, %318
  %3665 = fmul fast float %322, %322
  %3666 = fadd fast float %3663, -1.000000e+00
  %3667 = fadd fast float %3664, -1.000000e+00
  %3668 = fadd fast float %3665, -1.000000e+00
  %3669 = fmul fast float %3514, %3666
  %3670 = fmul fast float %3514, %3667
  %3671 = fmul fast float %3514, %3668
  %3672 = fadd fast float %3669, 1.000000e+00
  %3673 = fadd fast float %3670, 1.000000e+00
  %3674 = fadd fast float %3671, 1.000000e+00
  %3675 = fmul fast float %3672, %3489
  %3676 = fmul fast float %3673, %3490
  %3677 = fmul fast float %3674, %3491
  br label %3678

; <label>:3678                                    ; preds = %3662, %3628, %3519, %3475
  %3679 = phi float [ %3624, %3519 ], [ %3500, %3628 ], [ %3500, %3662 ], [ 0x3FA23C0BE0000000, %3475 ]
  %3680 = phi float [ %3616, %3519 ], [ %3659, %3628 ], [ %3675, %3662 ], [ 1.000000e+00, %3475 ]
  %3681 = phi float [ %3617, %3519 ], [ %3660, %3628 ], [ %3676, %3662 ], [ 1.000000e+00, %3475 ]
  %3682 = phi float [ %3618, %3519 ], [ %3661, %3628 ], [ %3677, %3662 ], [ 1.000000e+00, %3475 ]
  %3683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.i32 %3683, 1
  %3685 = and i32 %3684, 1
  %3686 = icmp ne i32 %3685, 0
  %3687 = add i32 %33, 356
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 32
  %3691 = icmp ne i32 %3690, 0
  %3692 = and i1 %3686, %3691
  %3693 = select i1 %3692, float 1.000000e+00, float %3680
  %3694 = select i1 %3692, float 0x3FD3333340000000, float %3681
  %3695 = select i1 %3692, float 0x3FD3333340000000, float %3682
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 32
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3772, label %3700

; <label>:3700                                    ; preds = %3678
  %3701 = add i32 %33, 140
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = add i32 %33, 388
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = add i32 %3706, 0
  %3708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3708, %dx.types.Handle %69, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = extractvalue %dx.types.ResRet.f32 %3709, 3
  %3714 = and i32 %3703, 255
  %3715 = uitofp i32 %3714 to float
  %3716 = lshr i32 %3703, 8
  %3717 = and i32 %3716, 255
  %3718 = uitofp i32 %3717 to float
  %3719 = lshr i32 %3703, 16
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101000000000
  %3723 = fmul fast float %3710, %3715
  %3724 = fadd fast float %3723, %3718
  %3725 = fmul fast float %3724, 0x3F70101000000000
  %3726 = fadd fast float %3711, -5.000000e-01
  %3727 = fadd fast float %3713, -5.000000e-01
  %3728 = fmul fast float %3726, %3722
  %3729 = fmul fast float %3727, %3722
  %3730 = fadd fast float %3728, 5.000000e-01
  %3731 = fadd fast float %3729, 5.000000e-01
  %3732 = fmul fast float %3730, 2.000000e+00
  %3733 = fadd fast float %3732, -1.000000e+00
  %3734 = fmul fast float %3731, 2.000000e+00
  %3735 = fadd fast float %3734, -1.000000e+00
  %3736 = fadd fast float %3733, %3735
  %3737 = fmul fast float %3736, 5.000000e-01
  %3738 = fsub fast float %3733, %3735
  %3739 = fmul fast float %3738, 5.000000e-01
  %3740 = call float @dx.op.unary.f32(i32 6, float %3737)  ; FAbs(value)
  %3741 = fsub fast float 1.000000e+00, %3740
  %3742 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3743 = fsub fast float %3741, %3742
  %3744 = call float @dx.op.dot3.f32(i32 55, float %3737, float %3739, float %3743, float %3737, float %3739, float %3743)  ; Dot3(ax,ay,az,bx,by,bz)
  %3745 = call float @dx.op.unary.f32(i32 25, float %3744)  ; Rsqrt(value)
  %3746 = fmul fast float %3737, %3745
  %3747 = fmul fast float %3739, %3745
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 67108864
  %3751 = icmp eq i32 %3750, 0
  br i1 %3751, label %3768, label %3752

; <label>:3752                                    ; preds = %3700
  %3753 = add i32 %33, 328
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 65535
  %3757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3756)  ; LegacyF16ToF32(value)
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = and i32 %3759, 65535
  %3761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3760)  ; LegacyF16ToF32(value)
  %3762 = lshr i32 %3755, 16
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = fsub fast float %3725, %3763
  %3765 = fmul fast float %3764, %3757
  %3766 = fadd fast float %3765, %3761
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  br label %3768

; <label>:3768                                    ; preds = %3752, %3700
  %3769 = phi float [ %3767, %3752 ], [ %3725, %3700 ]
  %3770 = call float @dx.op.dot2.f32(i32 54, float %3746, float %3747, float %3189, float %3190)  ; Dot2(ax,ay,bx,by)
  %3771 = call float @dx.op.dot2.f32(i32 54, float %3746, float %3747, float %3191, float %3192)  ; Dot2(ax,ay,bx,by)
  br label %3772

; <label>:3772                                    ; preds = %3768, %3678
  %3773 = phi float [ %3769, %3768 ], [ 0x3FD6666660000000, %3678 ]
  %3774 = phi float [ %3770, %3768 ], [ 0.000000e+00, %3678 ]
  %3775 = phi float [ %3771, %3768 ], [ 0.000000e+00, %3678 ]
  %3776 = phi float [ %3712, %3768 ], [ 1.000000e+00, %3678 ]
  %3777 = add i32 %33, 208
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = lshr i32 %3779, 22
  %3781 = shl nuw nsw i32 %3780, 5
  %3782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3781)  ; LegacyF16ToF32(value)
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = and i32 %3784, 64
  %3786 = icmp eq i32 %3785, 0
  br i1 %3786, label %3820, label %3787

; <label>:3787                                    ; preds = %3772
  %3788 = add i32 %33, 404
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = add i32 %3790, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = and i32 %3794, 131072
  %3796 = icmp eq i32 %3795, 0
  %3797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3792, %dx.types.Handle %69, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = fmul fast float %3798, %302
  %3802 = fmul fast float %3799, %305
  %3803 = fmul fast float %3800, %308
  br i1 %3796, label %3810, label %3804

; <label>:3804                                    ; preds = %3787
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3807 = fmul fast float %3806, %3801
  %3808 = fmul fast float %3806, %3802
  %3809 = fmul fast float %3806, %3803
  br label %3810

; <label>:3810                                    ; preds = %3804, %3787
  %3811 = phi float [ %3807, %3804 ], [ %3801, %3787 ]
  %3812 = phi float [ %3808, %3804 ], [ %3802, %3787 ]
  %3813 = phi float [ %3809, %3804 ], [ %3803, %3787 ]
  %3814 = fmul fast float %3811, %3782
  %3815 = select i1 %170, float %3814, float %3811
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3812, float %3813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = select i1 %170, float 0.000000e+00, float %3811
  %3818 = select i1 %170, float %3816, float %3812
  %3819 = select i1 %170, float 0.000000e+00, float %3813
  br label %3820

; <label>:3820                                    ; preds = %3810, %3772
  %3821 = phi float [ %3817, %3810 ], [ 0.000000e+00, %3772 ]
  %3822 = phi float [ %3818, %3810 ], [ 0.000000e+00, %3772 ]
  %3823 = phi float [ %3819, %3810 ], [ 0.000000e+00, %3772 ]
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = and i32 %3825, 1024
  %3827 = icmp eq i32 %3826, 0
  br i1 %3827, label %3858, label %3828

; <label>:3828                                    ; preds = %3820
  %3829 = add i32 %33, 200
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3833, 0x3F70101020000000
  %3835 = lshr i32 %3831, 8
  %3836 = and i32 %3835, 255
  %3837 = uitofp i32 %3836 to float
  %3838 = fmul fast float %3837, 0x3F70101020000000
  %3839 = lshr i32 %3831, 16
  %3840 = and i32 %3839, 255
  %3841 = uitofp i32 %3840 to float
  %3842 = fmul fast float %3841, 0x3F70101020000000
  %3843 = fmul fast float %3834, %3834
  %3844 = fmul fast float %3838, %3838
  %3845 = fmul fast float %3842, %3842
  %3846 = add i32 %33, 468
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = add i32 %3848, 0
  %3850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3850, %dx.types.Handle %70, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = fmul fast float %3843, %3852
  %3856 = fmul fast float %3844, %3853
  %3857 = fmul fast float %3845, %3854
  br label %3858

; <label>:3858                                    ; preds = %3828, %3820
  %3859 = phi float [ %3855, %3828 ], [ 0.000000e+00, %3820 ]
  %3860 = phi float [ %3856, %3828 ], [ 0.000000e+00, %3820 ]
  %3861 = phi float [ %3857, %3828 ], [ 0.000000e+00, %3820 ]
  %3862 = fcmp fast ogt float %3859, 0.000000e+00
  %3863 = fcmp fast ogt float %3860, 0.000000e+00
  %3864 = fcmp fast ogt float %3861, 0.000000e+00
  %3865 = call float @dx.op.unary.f32(i32 23, float %3859)  ; Log(value)
  %3866 = call float @dx.op.unary.f32(i32 23, float %3860)  ; Log(value)
  %3867 = call float @dx.op.unary.f32(i32 23, float %3861)  ; Log(value)
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = lshr i32 %3869, 7
  %3871 = and i32 %3870, 32752
  %3872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3871)  ; LegacyF16ToF32(value)
  %3873 = fmul fast float %3865, 0xBFE62E4300000000
  %3874 = fmul fast float %3873, %3872
  %3875 = fmul fast float %3866, 0xBFE62E4300000000
  %3876 = fmul fast float %3875, %3872
  %3877 = fmul fast float %3867, 0xBFE62E4300000000
  %3878 = fmul fast float %3877, %3872
  %3879 = select i1 %3862, float %3874, float 1.270000e+02
  %3880 = select i1 %3863, float %3876, float 1.270000e+02
  %3881 = select i1 %3864, float %3878, float 1.270000e+02
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 26624
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3943, label %3886

; <label>:3886                                    ; preds = %3858
  %3887 = add i32 %33, 484
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = add i32 %3889, 0
  %3891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3891, %dx.types.Handle %70, float %3285, float %3286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.i32 %3896, 0
  %3898 = and i32 %3897, 1048576
  %3899 = icmp ne i32 %3898, 0
  %3900 = and i32 %3897, 8192
  %3901 = icmp eq i32 %3900, 0
  br i1 %3901, label %3916, label %3902

; <label>:3902                                    ; preds = %3886
  %3903 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3904 = select i1 %3899, float %3903, float %3894
  %3905 = select i1 %3899, float %3893, float %3894
  %3906 = add i32 %33, 144
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = lshr i32 %3908, 16
  %3910 = and i32 %3909, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = fmul fast float %3911, 0x3F80101020000000
  %3913 = fmul fast float %3912, %3905
  %3914 = fmul fast float %3912, %3894
  %3915 = fmul fast float %3912, %3904
  br label %3916

; <label>:3916                                    ; preds = %3902, %3886
  %3917 = phi float [ %3913, %3902 ], [ 0.000000e+00, %3886 ]
  %3918 = phi float [ %3914, %3902 ], [ 0.000000e+00, %3886 ]
  %3919 = phi float [ %3915, %3902 ], [ 0.000000e+00, %3886 ]
  %3920 = and i32 %3897, 2048
  %3921 = icmp eq i32 %3920, 0
  br i1 %3921, label %3930, label %3922

; <label>:3922                                    ; preds = %3916
  %3923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.i32 %3923, 0
  %3925 = shl i32 %3924, 4
  %3926 = and i32 %3925, 32752
  %3927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3926)  ; LegacyF16ToF32(value)
  %3928 = fmul fast float %3927, %3895
  %3929 = call float @dx.op.binary.f32(i32 35, float %3928, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3930

; <label>:3930                                    ; preds = %3922, %3916
  %3931 = phi float [ %3929, %3922 ], [ 0x3F70101020000000, %3916 ]
  %3932 = and i32 %3897, 16384
  %3933 = icmp eq i32 %3932, 0
  br i1 %3933, label %3943, label %3934

; <label>:3934                                    ; preds = %3930
  %3935 = add i32 %33, 144
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = lshr i32 %3937, 24
  %3939 = uitofp i32 %3938 to float
  %3940 = fmul fast float %3893, 0x3F70101020000000
  %3941 = select i1 %3899, float 0x3F70101020000000, float %3940
  %3942 = fmul fast float %3941, %3939
  br label %3943

; <label>:3943                                    ; preds = %3934, %3930, %3858
  %3944 = phi float [ %3917, %3934 ], [ %3917, %3930 ], [ 0.000000e+00, %3858 ]
  %3945 = phi float [ %3918, %3934 ], [ %3918, %3930 ], [ 0.000000e+00, %3858 ]
  %3946 = phi float [ %3919, %3934 ], [ %3919, %3930 ], [ 0.000000e+00, %3858 ]
  %3947 = phi float [ %3931, %3934 ], [ %3931, %3930 ], [ 0x3F70101020000000, %3858 ]
  %3948 = phi float [ %3942, %3934 ], [ 0.000000e+00, %3930 ], [ 0.000000e+00, %3858 ]
  %3949 = add i32 %33, 144
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 255
  %3953 = uitofp i32 %3952 to float
  %3954 = lshr i32 %3951, 8
  %3955 = and i32 %3954, 255
  %3956 = uitofp i32 %3955 to float
  %3957 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = fmul fast float %3956, %3957
  %3959 = fadd fast float %3958, %3953
  %3960 = fmul fast float %3959, 0x3F70101020000000
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  br i1 %3177, label %3962, label %3997

; <label>:3962                                    ; preds = %3943
  %3963 = fmul fast float %3947, 2.000000e+00
  %3964 = fcmp fast olt float %3879, 1.270000e+02
  %3965 = fcmp fast olt float %3880, 1.270000e+02
  %3966 = fcmp fast olt float %3881, 1.270000e+02
  %3967 = fmul fast float %3879, 0xBFF7154760000000
  %3968 = fmul fast float %3967, %3963
  %3969 = fmul fast float %3880, 0xBFF7154760000000
  %3970 = fmul fast float %3969, %3963
  %3971 = fmul fast float %3881, 0xBFF7154760000000
  %3972 = fmul fast float %3971, %3963
  %3973 = call float @dx.op.unary.f32(i32 21, float %3968)  ; Exp(value)
  %3974 = call float @dx.op.unary.f32(i32 21, float %3970)  ; Exp(value)
  %3975 = call float @dx.op.unary.f32(i32 21, float %3972)  ; Exp(value)
  %3976 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3977 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3978 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3979 = fadd fast float %3976, -1.000000e+00
  %3980 = select i1 %3964, float %3979, float -1.000000e+00
  %3981 = fadd fast float %3977, -1.000000e+00
  %3982 = select i1 %3965, float %3981, float -1.000000e+00
  %3983 = fadd fast float %3978, -1.000000e+00
  %3984 = select i1 %3966, float %3983, float -1.000000e+00
  %3985 = fmul fast float %3980, %3473
  %3986 = fmul fast float %3982, %3473
  %3987 = fmul fast float %3984, %3473
  %3988 = fadd fast float %3985, 1.000000e+00
  %3989 = fadd fast float %3986, 1.000000e+00
  %3990 = fadd fast float %3987, 1.000000e+00
  %3991 = fmul fast float %3988, %3158
  %3992 = fmul fast float %3989, %3159
  %3993 = fmul fast float %3990, %3160
  %3994 = fmul fast float %3988, %3161
  %3995 = fmul fast float %3989, %3162
  %3996 = fmul fast float %3990, %3163
  br label %3997

; <label>:3997                                    ; preds = %3962, %3943
  %3998 = phi float [ %3991, %3962 ], [ %3158, %3943 ]
  %3999 = phi float [ %3992, %3962 ], [ %3159, %3943 ]
  %4000 = phi float [ %3993, %3962 ], [ %3160, %3943 ]
  %4001 = phi float [ %3994, %3962 ], [ %3161, %3943 ]
  %4002 = phi float [ %3995, %3962 ], [ %3162, %3943 ]
  %4003 = phi float [ %3996, %3962 ], [ %3163, %3943 ]
  %4004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.i32 %4004, 0
  %4006 = and i32 %4005, 3
  %4007 = icmp eq i32 %4006, 3
  br i1 %4007, label %4086, label %4008

; <label>:4008                                    ; preds = %3997
  %4009 = and i32 %4005, 16
  %4010 = icmp ne i32 %4009, 0
  %4011 = select i1 %4010, float %3473, float 0.000000e+00
  %4012 = icmp eq i32 %4006, 0
  br i1 %4012, label %4013, label %4041

; <label>:4013                                    ; preds = %4008
  %4014 = and i32 %4005, 64
  %4015 = icmp ne i32 %4014, 0
  %4016 = select i1 %4015, float %3473, float 0.000000e+00
  %4017 = fsub fast float %3693, %3998
  %4018 = fsub fast float %3694, %3999
  %4019 = fsub fast float %3695, %4000
  %4020 = fmul fast float %4011, %4017
  %4021 = fmul fast float %4011, %4018
  %4022 = fmul fast float %4011, %4019
  %4023 = fadd fast float %4020, %3998
  %4024 = fadd fast float %4021, %3999
  %4025 = fadd fast float %4022, %4000
  %4026 = fsub fast float %3679, %3170
  %4027 = fmul fast float %4011, %4026
  %4028 = fadd fast float %4027, %3170
  %4029 = fsub fast float %3821, %4001
  %4030 = fsub fast float %3822, %4002
  %4031 = fsub fast float %3823, %4003
  %4032 = fmul fast float %4016, %4029
  %4033 = fmul fast float %4016, %4030
  %4034 = fmul fast float %4016, %4031
  %4035 = fadd fast float %4032, %4001
  %4036 = fadd fast float %4033, %4002
  %4037 = fadd fast float %4034, %4003
  %4038 = fsub fast float %3961, %3175
  %4039 = fmul fast float %4011, %4038
  %4040 = fadd fast float %4039, %3175
  br label %4086

; <label>:4041                                    ; preds = %4008
  %4042 = icmp eq i32 %4006, 1
  br i1 %4042, label %4043, label %4056

; <label>:4043                                    ; preds = %4041
  %4044 = fadd fast float %3693, -1.000000e+00
  %4045 = fadd fast float %3694, -1.000000e+00
  %4046 = fadd fast float %3695, -1.000000e+00
  %4047 = fmul fast float %4011, %4044
  %4048 = fmul fast float %4011, %4045
  %4049 = fmul fast float %4011, %4046
  %4050 = fadd fast float %4047, 1.000000e+00
  %4051 = fadd fast float %4048, 1.000000e+00
  %4052 = fadd fast float %4049, 1.000000e+00
  %4053 = fmul fast float %4050, %3998
  %4054 = fmul fast float %4051, %3999
  %4055 = fmul fast float %4052, %4000
  br label %4086

; <label>:4056                                    ; preds = %4041
  %4057 = icmp eq i32 %4006, 2
  br i1 %4057, label %4058, label %4086

; <label>:4058                                    ; preds = %4056
  %4059 = call float @dx.op.unary.f32(i32 24, float %3693)  ; Sqrt(value)
  %4060 = call float @dx.op.unary.f32(i32 24, float %3694)  ; Sqrt(value)
  %4061 = call float @dx.op.unary.f32(i32 24, float %3695)  ; Sqrt(value)
  %4062 = fadd fast float %4059, -5.000000e-01
  %4063 = fadd fast float %4060, -5.000000e-01
  %4064 = fadd fast float %4061, -5.000000e-01
  %4065 = fmul fast float %4062, %4011
  %4066 = fmul fast float %4063, %4011
  %4067 = fmul fast float %4064, %4011
  %4068 = fadd fast float %4065, 5.000000e-01
  %4069 = fadd fast float %4066, 5.000000e-01
  %4070 = fadd fast float %4067, 5.000000e-01
  %4071 = fmul fast float %4068, 2.000000e+00
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = fmul fast float %4072, %3998
  %4074 = fadd fast float %4073, %4071
  %4075 = fmul fast float %4074, %3998
  %4076 = fmul fast float %4069, 2.000000e+00
  %4077 = fsub fast float 1.000000e+00, %4076
  %4078 = fmul fast float %4077, %3999
  %4079 = fadd fast float %4078, %4076
  %4080 = fmul fast float %4079, %3999
  %4081 = fmul fast float %4070, 2.000000e+00
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = fmul fast float %4082, %4000
  %4084 = fadd fast float %4083, %4081
  %4085 = fmul fast float %4084, %4000
  br label %4086

; <label>:4086                                    ; preds = %4058, %4056, %4043, %4013, %3997
  %4087 = phi float [ %3998, %3997 ], [ %4075, %4058 ], [ %3998, %4056 ], [ %4053, %4043 ], [ %4023, %4013 ]
  %4088 = phi float [ %3999, %3997 ], [ %4080, %4058 ], [ %3999, %4056 ], [ %4054, %4043 ], [ %4024, %4013 ]
  %4089 = phi float [ %4000, %3997 ], [ %4085, %4058 ], [ %4000, %4056 ], [ %4055, %4043 ], [ %4025, %4013 ]
  %4090 = phi float [ %4001, %3997 ], [ %4001, %4058 ], [ %4001, %4056 ], [ %4001, %4043 ], [ %4035, %4013 ]
  %4091 = phi float [ %4002, %3997 ], [ %4002, %4058 ], [ %4002, %4056 ], [ %4002, %4043 ], [ %4036, %4013 ]
  %4092 = phi float [ %4003, %3997 ], [ %4003, %4058 ], [ %4003, %4056 ], [ %4003, %4043 ], [ %4037, %4013 ]
  %4093 = phi float [ %3170, %3997 ], [ %3170, %4058 ], [ %3170, %4056 ], [ %3170, %4043 ], [ %4028, %4013 ]
  %4094 = phi float [ %3175, %3997 ], [ %3175, %4058 ], [ %3175, %4056 ], [ %3175, %4043 ], [ %4040, %4013 ]
  %4095 = and i32 %4005, 12
  %4096 = icmp eq i32 %4095, 12
  br i1 %4096, label %4237, label %4097

; <label>:4097                                    ; preds = %4086
  %4098 = and i32 %4005, 2097184
  %4099 = icmp eq i32 %4098, 2097184
  %4100 = select i1 %4099, float %3473, float 0.000000e+00
  %4101 = and i32 %4005, 4194336
  %4102 = icmp eq i32 %4101, 4194336
  %4103 = select i1 %4102, float %3473, float 0.000000e+00
  %4104 = and i32 %4005, 8388640
  %4105 = icmp eq i32 %4104, 8388640
  %4106 = select i1 %4105, float %3473, float 0.000000e+00
  %4107 = and i32 %4005, 1024
  %4108 = icmp ne i32 %4107, 0
  %4109 = select i1 %4108, float %3473, float 0.000000e+00
  %4110 = and i32 %4005, 2048
  %4111 = icmp ne i32 %4110, 0
  %4112 = select i1 %4111, float %3473, float 0.000000e+00
  %4113 = and i32 %4005, 8192
  %4114 = icmp ne i32 %4113, 0
  %4115 = select i1 %4114, float %3473, float 0.000000e+00
  %4116 = and i32 %4005, 16384
  %4117 = icmp ne i32 %4116, 0
  %4118 = select i1 %4117, float %3473, float 0.000000e+00
  %4119 = icmp eq i32 %4095, 0
  br i1 %4119, label %4120, label %4157

; <label>:4120                                    ; preds = %4097
  %4121 = fsub fast float %3774, %3156
  %4122 = fsub fast float %3775, %3157
  %4123 = fmul fast float %4100, %4121
  %4124 = fmul fast float %4100, %4122
  %4125 = fadd fast float %4123, %3156
  %4126 = fadd fast float %4124, %3157
  %4127 = fsub fast float %3776, %3172
  %4128 = fmul fast float %4103, %4127
  %4129 = fadd fast float %4128, %3172
  %4130 = fsub fast float %3773, %3171
  %4131 = fmul fast float %4106, %4130
  %4132 = fadd fast float %4131, %3171
  %4133 = fsub fast float %3879, %3167
  %4134 = fsub fast float %3880, %3168
  %4135 = fsub fast float %3881, %3169
  %4136 = fmul fast float %4109, %4133
  %4137 = fmul fast float %4109, %4134
  %4138 = fmul fast float %4109, %4135
  %4139 = fadd fast float %4136, %3167
  %4140 = fadd fast float %4137, %3168
  %4141 = fadd fast float %4138, %3169
  %4142 = fsub fast float %3947, %3173
  %4143 = fmul fast float %4112, %4142
  %4144 = fadd fast float %4143, %3173
  %4145 = fsub fast float %3944, %3164
  %4146 = fsub fast float %3945, %3165
  %4147 = fsub fast float %3946, %3166
  %4148 = fmul fast float %4115, %4145
  %4149 = fmul fast float %4115, %4146
  %4150 = fmul fast float %4115, %4147
  %4151 = fadd fast float %4148, %3164
  %4152 = fadd fast float %4149, %3165
  %4153 = fadd fast float %4150, %3166
  %4154 = fsub fast float %3948, %3174
  %4155 = fmul fast float %4118, %4154
  %4156 = fadd fast float %4155, %3174
  br label %4237

; <label>:4157                                    ; preds = %4097
  %4158 = icmp eq i32 %4095, 4
  br i1 %4158, label %4159, label %4207

; <label>:4159                                    ; preds = %4157
  %4160 = fmul fast float %4100, %3774
  %4161 = fmul fast float %4100, %3775
  %4162 = fadd fast float %4160, %3156
  %4163 = fadd fast float %4161, %3157
  %4164 = call float @dx.op.binary.f32(i32 36, float %3172, float %3776)  ; FMin(a,b)
  %4165 = fsub fast float %4164, %3172
  %4166 = fmul fast float %4165, %4103
  %4167 = fadd fast float %4166, %3172
  %4168 = fadd fast float %3773, %3171
  %4169 = fmul fast float %4168, 0x3FF337FAE0000000
  %4170 = fmul fast float %3171, %3171
  %4171 = fmul fast float %3773, %3773
  %4172 = fadd fast float %4171, %4170
  %4173 = fmul fast float %4172, 0x3FE5152B00000000
  %4174 = fmul fast float %3171, 0xBFCC1F85E0000000
  %4175 = fmul fast float %4174, %3773
  %4176 = fadd fast float %4175, 0xBFE1363700000000
  %4177 = fadd fast float %4176, %4169
  %4178 = fsub fast float %4177, %4173
  %4179 = fmul fast float %4168, 0x3FBA6F0D00000000
  %4180 = fmul fast float %4172, 0x3FD0432880000000
  %4181 = fmul fast float %3171, 0xBFEF110800000000
  %4182 = fmul fast float %4181, %3773
  %4183 = fadd fast float %4182, 1.000000e+00
  %4184 = fsub fast float %4183, %4179
  %4185 = fadd fast float %4184, %4180
  %4186 = fdiv fast float %4178, %4185
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fsub fast float %4187, %3171
  %4189 = fmul fast float %4188, %4106
  %4190 = fadd fast float %4189, %3171
  %4191 = fmul fast float %4109, %3879
  %4192 = fmul fast float %4109, %3880
  %4193 = fmul fast float %4109, %3881
  %4194 = fadd fast float %4191, %3167
  %4195 = fadd fast float %4192, %3168
  %4196 = fadd fast float %4193, %3169
  %4197 = fmul fast float %4112, %3947
  %4198 = fadd fast float %4197, %3173
  %4199 = fmul fast float %4115, %3944
  %4200 = fmul fast float %4115, %3945
  %4201 = fmul fast float %4115, %3946
  %4202 = fadd fast float %4199, %3164
  %4203 = fadd fast float %4200, %3165
  %4204 = fadd fast float %4201, %3166
  %4205 = fmul fast float %4118, %3948
  %4206 = fadd fast float %4205, %3174
  br label %4237

; <label>:4207                                    ; preds = %4157
  %4208 = icmp eq i32 %4095, 8
  br i1 %4208, label %4209, label %4237

; <label>:4209                                    ; preds = %4207
  %4210 = fmul fast float %4100, %3774
  %4211 = fmul fast float %4100, %3775
  %4212 = fadd fast float %4210, %3156
  %4213 = fadd fast float %4211, %3157
  %4214 = call float @dx.op.binary.f32(i32 36, float %3172, float %3776)  ; FMin(a,b)
  %4215 = fsub fast float %4214, %3172
  %4216 = fmul fast float %4215, %4103
  %4217 = fadd fast float %4216, %3172
  %4218 = fsub fast float %3773, %3171
  %4219 = fmul fast float %4106, %4218
  %4220 = fadd fast float %4219, %3171
  %4221 = fmul fast float %4109, %3879
  %4222 = fmul fast float %4109, %3880
  %4223 = fmul fast float %4109, %3881
  %4224 = fadd fast float %4221, %3167
  %4225 = fadd fast float %4222, %3168
  %4226 = fadd fast float %4223, %3169
  %4227 = fmul fast float %4112, %3947
  %4228 = fadd fast float %4227, %3173
  %4229 = fmul fast float %4115, %3944
  %4230 = fmul fast float %4115, %3945
  %4231 = fmul fast float %4115, %3946
  %4232 = fadd fast float %4229, %3164
  %4233 = fadd fast float %4230, %3165
  %4234 = fadd fast float %4231, %3166
  %4235 = fmul fast float %4118, %3948
  %4236 = fadd fast float %4235, %3174
  br label %4237

; <label>:4237                                    ; preds = %4209, %4207, %4159, %4120, %4086, %3472, %3176, %3155
  %4238 = phi float [ %3156, %4086 ], [ %3156, %3472 ], [ %3156, %3155 ], [ %3156, %3176 ], [ %4125, %4120 ], [ %4162, %4159 ], [ %3156, %4207 ], [ %4212, %4209 ]
  %4239 = phi float [ %3157, %4086 ], [ %3157, %3472 ], [ %3157, %3155 ], [ %3157, %3176 ], [ %4126, %4120 ], [ %4163, %4159 ], [ %3157, %4207 ], [ %4213, %4209 ]
  %4240 = phi float [ %4087, %4086 ], [ %3158, %3472 ], [ %3158, %3155 ], [ %3158, %3176 ], [ %4087, %4120 ], [ %4087, %4159 ], [ %4087, %4207 ], [ %4087, %4209 ]
  %4241 = phi float [ %4088, %4086 ], [ %3159, %3472 ], [ %3159, %3155 ], [ %3159, %3176 ], [ %4088, %4120 ], [ %4088, %4159 ], [ %4088, %4207 ], [ %4088, %4209 ]
  %4242 = phi float [ %4089, %4086 ], [ %3160, %3472 ], [ %3160, %3155 ], [ %3160, %3176 ], [ %4089, %4120 ], [ %4089, %4159 ], [ %4089, %4207 ], [ %4089, %4209 ]
  %4243 = phi float [ %4090, %4086 ], [ %3161, %3472 ], [ %3161, %3155 ], [ %3161, %3176 ], [ %4090, %4120 ], [ %4090, %4159 ], [ %4090, %4207 ], [ %4090, %4209 ]
  %4244 = phi float [ %4091, %4086 ], [ %3162, %3472 ], [ %3162, %3155 ], [ %3162, %3176 ], [ %4091, %4120 ], [ %4091, %4159 ], [ %4091, %4207 ], [ %4091, %4209 ]
  %4245 = phi float [ %4092, %4086 ], [ %3163, %3472 ], [ %3163, %3155 ], [ %3163, %3176 ], [ %4092, %4120 ], [ %4092, %4159 ], [ %4092, %4207 ], [ %4092, %4209 ]
  %4246 = phi float [ %3164, %4086 ], [ %3164, %3472 ], [ %3164, %3155 ], [ %3164, %3176 ], [ %4151, %4120 ], [ %4202, %4159 ], [ %3164, %4207 ], [ %4232, %4209 ]
  %4247 = phi float [ %3165, %4086 ], [ %3165, %3472 ], [ %3165, %3155 ], [ %3165, %3176 ], [ %4152, %4120 ], [ %4203, %4159 ], [ %3165, %4207 ], [ %4233, %4209 ]
  %4248 = phi float [ %3166, %4086 ], [ %3166, %3472 ], [ %3166, %3155 ], [ %3166, %3176 ], [ %4153, %4120 ], [ %4204, %4159 ], [ %3166, %4207 ], [ %4234, %4209 ]
  %4249 = phi float [ %3167, %4086 ], [ %3167, %3472 ], [ %3167, %3155 ], [ %3167, %3176 ], [ %4139, %4120 ], [ %4194, %4159 ], [ %3167, %4207 ], [ %4224, %4209 ]
  %4250 = phi float [ %3168, %4086 ], [ %3168, %3472 ], [ %3168, %3155 ], [ %3168, %3176 ], [ %4140, %4120 ], [ %4195, %4159 ], [ %3168, %4207 ], [ %4225, %4209 ]
  %4251 = phi float [ %3169, %4086 ], [ %3169, %3472 ], [ %3169, %3155 ], [ %3169, %3176 ], [ %4141, %4120 ], [ %4196, %4159 ], [ %3169, %4207 ], [ %4226, %4209 ]
  %4252 = phi float [ %4093, %4086 ], [ %3170, %3472 ], [ %3170, %3155 ], [ %3170, %3176 ], [ %4093, %4120 ], [ %4093, %4159 ], [ %4093, %4207 ], [ %4093, %4209 ]
  %4253 = phi float [ %3171, %4086 ], [ %3171, %3472 ], [ %3171, %3155 ], [ %3171, %3176 ], [ %4132, %4120 ], [ %4190, %4159 ], [ %3171, %4207 ], [ %4220, %4209 ]
  %4254 = phi float [ %3172, %4086 ], [ %3172, %3472 ], [ %3172, %3155 ], [ %3172, %3176 ], [ %4129, %4120 ], [ %4167, %4159 ], [ %3172, %4207 ], [ %4217, %4209 ]
  %4255 = phi float [ %3173, %4086 ], [ %3173, %3472 ], [ %3173, %3155 ], [ %3173, %3176 ], [ %4144, %4120 ], [ %4198, %4159 ], [ %3173, %4207 ], [ %4228, %4209 ]
  %4256 = phi float [ %3174, %4086 ], [ %3174, %3472 ], [ %3174, %3155 ], [ %3174, %3176 ], [ %4156, %4120 ], [ %4206, %4159 ], [ %3174, %4207 ], [ %4236, %4209 ]
  %4257 = phi float [ %4094, %4086 ], [ %3175, %3472 ], [ %3175, %3155 ], [ %3175, %3176 ], [ %4094, %4120 ], [ %4094, %4159 ], [ %4094, %4207 ], [ %4094, %4209 ]
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = call float @dx.op.dot2.f32(i32 54, float %4238, float %4239, float %4238, float %4239)  ; Dot2(ax,ay,bx,by)
  %4261 = fmul fast float %4260, 0x3FE3333340000000
  %4262 = fsub fast float 1.000000e+00, %4261
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4239, float %4262, float %4238, float %4239, float %4262)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = call float @dx.op.unary.f32(i32 25, float %4263)  ; Rsqrt(value)
  %4265 = fmul fast float %4264, %4238
  %4266 = fmul fast float %4264, %4239
  %4267 = fmul fast float %4262, %4264
  %4268 = fmul fast float %4267, %80
  %4269 = fmul fast float %4267, %81
  %4270 = fmul fast float %4267, %82
  %4271 = fmul fast float %4265, %54
  %4272 = fmul fast float %4265, %55
  %4273 = fmul fast float %4265, %56
  %4274 = fadd fast float %4268, %4271
  %4275 = fadd fast float %4269, %4272
  %4276 = fadd fast float %4270, %4273
  %4277 = fmul fast float %92, %4266
  %4278 = fmul fast float %93, %4266
  %4279 = fmul fast float %94, %4266
  %4280 = fadd fast float %4274, %4277
  %4281 = fadd fast float %4275, %4278
  %4282 = fadd fast float %4276, %4279
  %4283 = call float @dx.op.dot3.f32(i32 55, float %4280, float %4281, float %4282, float %4280, float %4281, float %4282)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = call float @dx.op.unary.f32(i32 25, float %4283)  ; Rsqrt(value)
  %4285 = fmul fast float %4280, %4284
  %4286 = fmul fast float %4281, %4284
  %4287 = fmul fast float %4282, %4284
  %4288 = and i32 %35, 1
  %4289 = icmp eq i32 %4288, 0
  br i1 %4289, label %4290, label %4882

; <label>:4290                                    ; preds = %4237
  %4291 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %4292 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %4293 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %4294 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %4295 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %4296 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %4297 = fadd fast float %4291, %128
  %4298 = fadd fast float %4292, %129
  %4299 = fadd fast float %4293, %130
  %4300 = fadd fast float %4294, %128
  %4301 = fadd fast float %4295, %129
  %4302 = fadd fast float %4296, %130
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4310 = fmul fast float %4304, %73
  %4311 = fmul fast float %4310, %4308
  %4312 = fmul fast float %4305, %74
  %4313 = fmul fast float %4312, %4309
  %4314 = fptoui float %4311 to i32
  %4315 = fptoui float %4313 to i32
  %4316 = fadd fast float %4304, -1.000000e+00
  %4317 = fadd fast float %4305, -1.000000e+00
  %4318 = fptoui float %4316 to i32
  %4319 = fptoui float %4317 to i32
  %4320 = call i32 @dx.op.binary.i32(i32 40, i32 %4314, i32 %4318)  ; UMin(a,b)
  %4321 = call i32 @dx.op.binary.i32(i32 40, i32 %4315, i32 %4319)  ; UMin(a,b)
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 2
  %4324 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4325 = fmul fast float %4323, %68
  %4326 = fsub fast float %4325, %4324
  %4327 = fadd fast float %4306, -1.000000e+00
  %4328 = call float @dx.op.binary.f32(i32 36, float %4326, float %4327)  ; FMin(a,b)
  %4329 = fptoui float %4328 to i32
  %4330 = fptoui float %4304 to i32
  %4331 = fptoui float %4305 to i32
  %4332 = mul i32 %4329, %4331
  %4333 = add i32 %4332, %4321
  %4334 = mul i32 %4333, %4330
  %4335 = add i32 %4334, %4320
  %4336 = shl i32 %4335, 2
  %4337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.i32 %4337, 0
  %4339 = and i32 %4338, 1023
  %4340 = lshr i32 %4338, 10
  %4341 = icmp eq i32 %4339, 0
  br i1 %4341, label %4845, label %4342

; <label>:4342                                    ; preds = %4290
  %4343 = and i32 %4338, 1023
  br label %4344

; <label>:4344                                    ; preds = %4476, %4342
  %4345 = phi i32 [ %4426, %4476 ], [ 0, %4342 ]
  %4346 = phi float [ %4477, %4476 ], [ 0.000000e+00, %4342 ]
  %4347 = phi float [ %4478, %4476 ], [ %4259, %4342 ]
  %4348 = phi float [ %4479, %4476 ], [ %4257, %4342 ]
  %4349 = phi float [ %4480, %4476 ], [ %4249, %4342 ]
  %4350 = phi float [ %4481, %4476 ], [ %4250, %4342 ]
  %4351 = phi float [ %4482, %4476 ], [ %4251, %4342 ]
  %4352 = phi float [ %4483, %4476 ], [ %4256, %4342 ]
  %4353 = phi float [ %4484, %4476 ], [ 0.000000e+00, %4342 ]
  %4354 = phi float [ %4485, %4476 ], [ %4246, %4342 ]
  %4355 = phi float [ %4486, %4476 ], [ %4247, %4342 ]
  %4356 = phi float [ %4487, %4476 ], [ %4248, %4342 ]
  %4357 = phi float [ %4488, %4476 ], [ %4243, %4342 ]
  %4358 = phi float [ %4489, %4476 ], [ %4244, %4342 ]
  %4359 = phi float [ %4490, %4476 ], [ %4245, %4342 ]
  %4360 = phi float [ %4491, %4476 ], [ %4285, %4342 ]
  %4361 = phi float [ %4492, %4476 ], [ %4286, %4342 ]
  %4362 = phi float [ %4493, %4476 ], [ %4287, %4342 ]
  %4363 = phi float [ %4494, %4476 ], [ %4254, %4342 ]
  %4364 = phi float [ %4495, %4476 ], [ %4253, %4342 ]
  %4365 = phi float [ %4496, %4476 ], [ 0.000000e+00, %4342 ]
  %4366 = phi float [ %4497, %4476 ], [ %4252, %4342 ]
  %4367 = phi float [ %4498, %4476 ], [ %4240, %4342 ]
  %4368 = phi float [ %4499, %4476 ], [ %4241, %4342 ]
  %4369 = phi float [ %4500, %4476 ], [ %4242, %4342 ]
  %4370 = add nuw nsw i32 %4345, %4340
  %4371 = shl i32 %4370, 2
  %4372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.i32 %4372, 0
  %4374 = shl i32 %4373, 8
  %4375 = or i32 %4374, 48
  %4376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = or i32 %4374, 64
  %4382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.i32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.i32 %4382, 1
  %4385 = or i32 %4374, 80
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 3
  %4389 = or i32 %4374, 96
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = or i32 %4374, 112
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4398 = or i32 %4374, 128
  %4399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.ResRet.f32 %4399, 1
  %4402 = extractvalue %dx.types.ResRet.f32 %4399, 2
  %4403 = extractvalue %dx.types.ResRet.f32 %4399, 3
  %4404 = or i32 %4374, 144
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = extractvalue %dx.types.ResRet.f32 %4405, 3
  %4410 = or i32 %4374, 160
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = or i32 %4374, 192
  %4417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.i32 %4417, 0
  %4419 = or i32 %4374, 208
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = or i32 %4374, 248
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = add nuw nsw i32 %4345, 1
  %4427 = bitcast float %4380 to i32
  %4428 = and i32 %4427, 512
  %4429 = icmp eq i32 %4428, 0
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = extractvalue %dx.types.ResRet.f32 %4430, 3
  %4435 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4436 = or i32 %4374, 16
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.ResRet.f32 %4437, 3
  %4442 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4443 = or i32 %4374, 32
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.ResRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4444, 2
  %4448 = extractvalue %dx.types.ResRet.f32 %4444, 3
  %4449 = call float @dx.op.dot4.f32(i32 56, float %4445, float %4446, float %4447, float %4448, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4450 = call float @dx.op.unary.f32(i32 27, float %4435)  ; Round_ni(value)
  %4451 = call float @dx.op.unary.f32(i32 6, float %4450)  ; FAbs(value)
  %4452 = call float @dx.op.unary.f32(i32 27, float %4442)  ; Round_ni(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %4452)  ; FAbs(value)
  %4454 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4455 = call float @dx.op.unary.f32(i32 27, float %4454)  ; Round_ni(value)
  %4456 = fadd fast float %4453, %4451
  %4457 = fadd fast float %4456, %4455
  %4458 = fcmp fast oeq float %4457, 0.000000e+00
  %4459 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %4297, float %4298, float %4299, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4460 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %4297, float %4298, float %4299, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4461 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %4300, float %4301, float %4302, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4462 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %4300, float %4301, float %4302, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4463 = fsub fast float %4459, %4435
  %4464 = fsub fast float %4461, %4435
  %4465 = fsub fast float %4460, %4442
  %4466 = fsub fast float %4462, %4442
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4470 = fadd fast float %4469, %4467
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4473 = fcmp fast ogt float %4471, %4472
  %4474 = and i1 %4458, %4473
  %4475 = and i1 %4429, %4474
  br i1 %4475, label %4502, label %4476

; <label>:4476                                    ; preds = %4831, %4583, %4502, %4344
  %4477 = phi float [ %4346, %4502 ], [ %4586, %4583 ], [ %4586, %4831 ], [ %4346, %4344 ]
  %4478 = phi float [ %4347, %4502 ], [ %4347, %4583 ], [ %4807, %4831 ], [ %4347, %4344 ]
  %4479 = phi float [ %4348, %4502 ], [ %4348, %4583 ], [ %4805, %4831 ], [ %4348, %4344 ]
  %4480 = phi float [ %4349, %4502 ], [ %4349, %4583 ], [ %4783, %4831 ], [ %4349, %4344 ]
  %4481 = phi float [ %4350, %4502 ], [ %4350, %4583 ], [ %4784, %4831 ], [ %4350, %4344 ]
  %4482 = phi float [ %4351, %4502 ], [ %4351, %4583 ], [ %4785, %4831 ], [ %4351, %4344 ]
  %4483 = phi float [ %4352, %4502 ], [ %4352, %4583 ], [ %4710, %4831 ], [ %4352, %4344 ]
  %4484 = phi float [ %4353, %4502 ], [ %4353, %4583 ], [ %4708, %4831 ], [ %4353, %4344 ]
  %4485 = phi float [ %4354, %4502 ], [ %4354, %4583 ], [ %4753, %4831 ], [ %4354, %4344 ]
  %4486 = phi float [ %4355, %4502 ], [ %4355, %4583 ], [ %4754, %4831 ], [ %4355, %4344 ]
  %4487 = phi float [ %4356, %4502 ], [ %4356, %4583 ], [ %4755, %4831 ], [ %4356, %4344 ]
  %4488 = phi float [ %4357, %4502 ], [ %4357, %4583 ], [ %4841, %4831 ], [ %4357, %4344 ]
  %4489 = phi float [ %4358, %4502 ], [ %4358, %4583 ], [ %4842, %4831 ], [ %4358, %4344 ]
  %4490 = phi float [ %4359, %4502 ], [ %4359, %4583 ], [ %4843, %4831 ], [ %4359, %4344 ]
  %4491 = phi float [ %4360, %4502 ], [ %4360, %4583 ], [ %4689, %4831 ], [ %4360, %4344 ]
  %4492 = phi float [ %4361, %4502 ], [ %4361, %4583 ], [ %4690, %4831 ], [ %4361, %4344 ]
  %4493 = phi float [ %4362, %4502 ], [ %4362, %4583 ], [ %4691, %4831 ], [ %4362, %4344 ]
  %4494 = phi float [ %4363, %4502 ], [ %4363, %4583 ], [ %4763, %4831 ], [ %4363, %4344 ]
  %4495 = phi float [ %4364, %4502 ], [ %4364, %4583 ], [ %4760, %4831 ], [ %4364, %4344 ]
  %4496 = phi float [ %4365, %4502 ], [ %4365, %4583 ], [ %4757, %4831 ], [ %4365, %4344 ]
  %4497 = phi float [ %4366, %4502 ], [ %4366, %4583 ], [ %4706, %4831 ], [ %4366, %4344 ]
  %4498 = phi float [ %4367, %4502 ], [ %4367, %4583 ], [ %4701, %4831 ], [ %4367, %4344 ]
  %4499 = phi float [ %4368, %4502 ], [ %4368, %4583 ], [ %4702, %4831 ], [ %4368, %4344 ]
  %4500 = phi float [ %4369, %4502 ], [ %4369, %4583 ], [ %4703, %4831 ], [ %4369, %4344 ]
  %4501 = icmp eq i32 %4426, %4343
  br i1 %4501, label %4844, label %4344

; <label>:4502                                    ; preds = %4344
  %4503 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4504 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4506 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4507 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4508 = extractvalue %dx.types.ResRet.i32 %4382, 3
  %4509 = extractvalue %dx.types.ResRet.i32 %4382, 2
  %4510 = add i32 %4508, 0
  %4511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4510, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4513 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4511, %dx.types.Handle %4512, float %4435, float %4442, float undef, float undef, i32 0, i32 0, i32 undef, float %4463, float %4465, float undef, float %4464, float %4466, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = fmul fast float %4514, %4507
  %4516 = fadd fast float %4515, %4506
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4435, %4391
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4442, float %4518)  ; FMad(a,b,c)
  %4520 = fadd fast float %4519, %4505
  %4521 = fmul fast float %4435, %4393
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4442, float %4521)  ; FMad(a,b,c)
  %4523 = fadd fast float %4522, %4504
  %4524 = fmul fast float %4463, %4391
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4465, float %4524)  ; FMad(a,b,c)
  %4526 = fmul fast float %4463, %4393
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4465, float %4526)  ; FMad(a,b,c)
  %4528 = fmul fast float %4464, %4391
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4466, float %4528)  ; FMad(a,b,c)
  %4530 = fmul fast float %4464, %4393
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4466, float %4530)  ; FMad(a,b,c)
  %4532 = add i32 %4509, 0
  %4533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4532, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4533, %dx.types.Handle %4512, float %4520, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float %4525, float %4527, float undef, float %4529, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = and i32 %4427, 1024
  %4537 = icmp ne i32 %4536, 0
  %4538 = fcmp fast ogt float %4535, 0x3FE0101020000000
  %4539 = uitofp i1 %4538 to float
  %4540 = select i1 %4537, float %4539, float %4535
  %4541 = and i32 %4427, 8192
  %4542 = icmp ne i32 %4541, 0
  %4543 = select i1 %4542, float %4503, float 1.000000e+00
  %4544 = fmul fast float %4435, 2.000000e+00
  %4545 = fadd fast float %4544, -1.000000e+00
  %4546 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4547 = fmul fast float %4546, %4424
  %4548 = fsub fast float %4547, %4424
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  %4550 = fmul fast float %4442, 2.000000e+00
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4553 = fmul fast float %4552, %4425
  %4554 = fsub fast float %4553, %4425
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fmul fast float %4454, %4387
  %4557 = fsub fast float %4556, %4387
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = fmul fast float %4517, %4543
  %4560 = fmul fast float %4559, %4514
  %4561 = fmul fast float %4560, %4549
  %4562 = fmul fast float %4561, %4540
  %4563 = fmul fast float %4562, %4555
  %4564 = fmul fast float %4563, %4558
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4568 = fsub fast float %4471, %4567
  %4569 = fmul fast float %4568, %4566
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fmul fast float %4564, %4388
  %4572 = fadd fast float %4564, %4388
  %4573 = fmul fast float %4572, %4397
  %4574 = fsub fast float %4573, %4397
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = and i32 %4427, 128
  %4577 = icmp ne i32 %4576, 0
  %4578 = select i1 %4577, float %4575, float %4571
  %4579 = fmul fast float %4578, %4570
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = fcmp fast ugt float %4579, %4581
  br i1 %4582, label %4583, label %4476

; <label>:4583                                    ; preds = %4502
  %4584 = select i1 %4542, float %4579, float 0.000000e+00
  %4585 = fadd fast float %4584, %4346
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  br i1 %4542, label %4476, label %4587

; <label>:4587                                    ; preds = %4583
  %4588 = and i32 %4427, 4
  %4589 = and i32 %4427, 8
  %4590 = add i32 %4383, 0
  %4591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4590, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4593 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4591, %dx.types.Handle %4592, float %4520, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float %4525, float %4527, float undef, float %4529, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = bitcast float %4409 to i32
  %4599 = and i32 %4598, 255
  %4600 = uitofp i32 %4599 to float
  %4601 = lshr i32 %4598, 8
  %4602 = and i32 %4601, 255
  %4603 = uitofp i32 %4602 to float
  %4604 = fmul fast float %4597, %4600
  %4605 = fadd fast float %4604, %4603
  %4606 = fmul fast float %4605, 0x3F70101000000000
  %4607 = add i32 %4384, 0
  %4608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4607, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4609 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4608, %dx.types.Handle %4592, float %4520, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float %4525, float %4527, float undef, float %4529, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4609, 3
  %4614 = bitcast float %4403 to i32
  %4615 = and i32 %4614, 255
  %4616 = uitofp i32 %4615 to float
  %4617 = lshr i32 %4614, 8
  %4618 = and i32 %4617, 255
  %4619 = uitofp i32 %4618 to float
  %4620 = lshr i32 %4614, 16
  %4621 = and i32 %4620, 255
  %4622 = uitofp i32 %4621 to float
  %4623 = fmul fast float %4622, 0x3F70101000000000
  %4624 = fmul fast float %4610, %4616
  %4625 = fadd fast float %4624, %4619
  %4626 = fmul fast float %4625, 0x3F70101000000000
  %4627 = fadd fast float %4611, -5.000000e-01
  %4628 = fadd fast float %4613, -5.000000e-01
  %4629 = fmul fast float %4627, %4623
  %4630 = fmul fast float %4628, %4623
  %4631 = fadd fast float %4629, 5.000000e-01
  %4632 = fadd fast float %4630, 5.000000e-01
  %4633 = fmul fast float %4594, %4412
  %4634 = fmul fast float %4595, %4413
  %4635 = fmul fast float %4596, %4414
  %4636 = fmul fast float %4631, 2.000000e+00
  %4637 = fadd fast float %4636, -1.000000e+00
  %4638 = fmul fast float %4632, 2.000000e+00
  %4639 = fadd fast float %4638, -1.000000e+00
  %4640 = fadd fast float %4637, %4639
  %4641 = fmul fast float %4640, 5.000000e-01
  %4642 = fsub fast float %4637, %4639
  %4643 = fmul fast float %4642, 5.000000e-01
  %4644 = call float @dx.op.unary.f32(i32 6, float %4641)  ; FAbs(value)
  %4645 = fsub fast float 1.000000e+00, %4644
  %4646 = call float @dx.op.unary.f32(i32 6, float %4643)  ; FAbs(value)
  %4647 = fsub fast float %4645, %4646
  %4648 = call float @dx.op.dot3.f32(i32 55, float %4641, float %4643, float %4647, float %4641, float %4643, float %4647)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = call float @dx.op.unary.f32(i32 25, float %4648)  ; Rsqrt(value)
  %4650 = fmul fast float %4641, %4649
  %4651 = fmul fast float %4643, %4649
  %4652 = fmul fast float %4649, %4647
  %4653 = fmul fast float %4652, %4377
  %4654 = fmul fast float %4652, %4378
  %4655 = fmul fast float %4652, %4379
  %4656 = fmul fast float %4650, %4400
  %4657 = fmul fast float %4650, %4401
  %4658 = fmul fast float %4650, %4402
  %4659 = fadd fast float %4656, %4653
  %4660 = fadd fast float %4657, %4654
  %4661 = fadd fast float %4658, %4655
  %4662 = fmul fast float %4651, %4406
  %4663 = fmul fast float %4651, %4407
  %4664 = fmul fast float %4651, %4408
  %4665 = fadd fast float %4659, %4662
  %4666 = fadd fast float %4660, %4663
  %4667 = fadd fast float %4661, %4664
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %4665, float %4666, float %4667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 25, float %4668)  ; Rsqrt(value)
  %4670 = fmul fast float %4665, %4669
  %4671 = fmul fast float %4666, %4669
  %4672 = fmul fast float %4667, %4669
  %4673 = icmp ne i32 %4589, 0
  %4674 = select i1 %4673, float 1.000000e+00, float 0.000000e+00
  %4675 = fmul fast float %4579, %4674
  %4676 = and i32 %4427, 1
  %4677 = icmp eq i32 %4676, 0
  br i1 %4677, label %4678, label %4682

; <label>:4678                                    ; preds = %4587
  %4679 = fsub fast float %4670, %4360
  %4680 = fsub fast float %4671, %4361
  %4681 = fsub fast float %4672, %4362
  br label %4682

; <label>:4682                                    ; preds = %4678, %4587
  %4683 = phi float [ %4679, %4678 ], [ %4670, %4587 ]
  %4684 = phi float [ %4680, %4678 ], [ %4671, %4587 ]
  %4685 = phi float [ %4681, %4678 ], [ %4672, %4587 ]
  %4686 = fmul float %4685, %4675
  %4687 = fmul float %4684, %4675
  %4688 = fmul float %4683, %4675
  %4689 = fadd fast float %4688, %4360
  %4690 = fadd fast float %4687, %4361
  %4691 = fadd fast float %4686, %4362
  %4692 = icmp ne i32 %4588, 0
  %4693 = select i1 %4692, float 1.000000e+00, float 0.000000e+00
  %4694 = fmul fast float %4579, %4693
  %4695 = fsub fast float %4633, %4367
  %4696 = fsub fast float %4634, %4368
  %4697 = fsub fast float %4635, %4369
  %4698 = fmul fast float %4695, %4694
  %4699 = fmul fast float %4696, %4694
  %4700 = fmul fast float %4697, %4694
  %4701 = fadd fast float %4698, %4367
  %4702 = fadd fast float %4699, %4368
  %4703 = fadd fast float %4700, %4369
  %4704 = fsub fast float %4606, %4366
  %4705 = fmul fast float %4704, %4694
  %4706 = fadd fast float %4705, %4366
  %4707 = fmul fast float %4694, %4353
  %4708 = fsub fast float %4353, %4707
  %4709 = fmul fast float %4694, %4352
  %4710 = fsub fast float %4352, %4709
  %4711 = bitcast float %4421 to i32
  %4712 = lshr i32 %4711, 16
  %4713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4712)  ; LegacyF16ToF32(value)
  %4714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.i32 %4714, 0
  %4716 = and i32 %4715, 1
  %4717 = icmp eq i32 %4716, 0
  br i1 %4717, label %4718, label %4743

; <label>:4718                                    ; preds = %4682
  %4719 = fadd fast float %4606, 0xBFB99999A0000000
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4720, 0x3FF1C71C80000000
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4723, %4633
  %4725 = fmul fast float %4723, %4634
  %4726 = fmul fast float %4723, %4635
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4728, float %4729)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4727, float %4730)  ; FMax(a,b)
  %4732 = fcmp fast ogt float %4731, 0.000000e+00
  %4733 = bitcast float %4731 to i32
  %4734 = sub nsw i32 2129859010, %4733
  %4735 = bitcast i32 %4734 to float
  %4736 = select i1 %4732, float %4735, float 0.000000e+00
  %4737 = fmul fast float %4727, %4713
  %4738 = fmul fast float %4728, %4713
  %4739 = fmul fast float %4729, %4713
  %4740 = fmul fast float %4737, %4736
  %4741 = fmul fast float %4738, %4736
  %4742 = fmul fast float %4739, %4736
  br label %4743

; <label>:4743                                    ; preds = %4718, %4682
  %4744 = phi float [ %4713, %4682 ], [ %4740, %4718 ]
  %4745 = phi float [ %4713, %4682 ], [ %4741, %4718 ]
  %4746 = phi float [ %4713, %4682 ], [ %4742, %4718 ]
  %4747 = fsub fast float %4744, %4354
  %4748 = fsub fast float %4745, %4355
  %4749 = fsub fast float %4746, %4356
  %4750 = fmul fast float %4747, %4694
  %4751 = fmul fast float %4748, %4694
  %4752 = fmul fast float %4749, %4694
  %4753 = fadd fast float %4750, %4354
  %4754 = fadd fast float %4751, %4355
  %4755 = fadd fast float %4752, %4356
  %4756 = fadd fast float %4579, %4365
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fsub fast float %4626, %4364
  %4759 = fmul fast float %4758, %4675
  %4760 = fadd fast float %4759, %4364
  %4761 = fsub fast float %4612, %4363
  %4762 = fmul fast float %4761, %4675
  %4763 = fadd fast float %4762, %4363
  br i1 %4677, label %4772, label %4764

; <label>:4764                                    ; preds = %4743
  %4765 = and i32 %4427, 32768
  %4766 = icmp eq i32 %4765, 0
  br i1 %4766, label %4782, label %4767

; <label>:4767                                    ; preds = %4764
  %4768 = fmul fast float %4675, 1.270000e+02
  %4769 = fadd fast float %4768, %4349
  %4770 = fadd fast float %4768, %4350
  %4771 = fadd fast float %4768, %4351
  br label %4782

; <label>:4772                                    ; preds = %4743
  %4773 = fsub fast float 1.270000e+02, %4349
  %4774 = fsub fast float 1.270000e+02, %4350
  %4775 = fsub fast float 1.270000e+02, %4351
  %4776 = fmul fast float %4675, %4773
  %4777 = fmul fast float %4675, %4774
  %4778 = fmul fast float %4675, %4775
  %4779 = fadd fast float %4776, %4349
  %4780 = fadd fast float %4777, %4350
  %4781 = fadd fast float %4778, %4351
  br label %4782

; <label>:4782                                    ; preds = %4772, %4767, %4764
  %4783 = phi float [ %4769, %4767 ], [ %4349, %4764 ], [ %4779, %4772 ]
  %4784 = phi float [ %4770, %4767 ], [ %4350, %4764 ], [ %4780, %4772 ]
  %4785 = phi float [ %4771, %4767 ], [ %4351, %4764 ], [ %4781, %4772 ]
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = fmul fast float %4789, %4786
  %4791 = fadd fast float %4790, %4788
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = bitcast float %4415 to i32
  %4794 = and i32 %4793, 65535
  %4795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4794)  ; LegacyF16ToF32(value)
  %4796 = lshr i32 %4793, 16
  %4797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4796)  ; LegacyF16ToF32(value)
  %4798 = fcmp fast oge float %4795, 0.000000e+00
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = select i1 %4798, float %4795, float %4800
  %4802 = fadd fast float %4801, %4797
  %4803 = fsub fast float %4792, %4348
  %4804 = fmul fast float %4803, %4579
  %4805 = fadd fast float %4804, %4348
  %4806 = fmul fast float %4802, %4579
  %4807 = call float @dx.op.binary.f32(i32 35, float %4347, float %4806)  ; FMax(a,b)
  %4808 = and i32 %4427, 16
  %4809 = icmp eq i32 %4808, 0
  br i1 %4809, label %4831, label %4810

; <label>:4810                                    ; preds = %4782
  %4811 = add i32 %4418, 0
  %4812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4812, %dx.types.Handle %4592, float %4520, float %4523, float undef, float undef, i32 0, i32 0, i32 undef, float %4525, float %4527, float undef, float %4529, float %4531, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.ResRet.f32 %4813, 1
  %4816 = extractvalue %dx.types.ResRet.f32 %4813, 2
  %4817 = and i32 %4711, 65535
  %4818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4817)  ; LegacyF16ToF32(value)
  %4819 = fmul fast float %4814, %4412
  %4820 = fmul fast float %4815, %4413
  %4821 = fmul fast float %4816, %4414
  %4822 = and i32 %4427, 16384
  %4823 = icmp ne i32 %4822, 0
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 0
  %4826 = select i1 %4823, float %4825, float 1.000000e+00
  %4827 = fmul fast float %4826, %4818
  %4828 = fmul fast float %4819, %4827
  %4829 = fmul fast float %4820, %4827
  %4830 = fmul fast float %4821, %4827
  br label %4831

; <label>:4831                                    ; preds = %4810, %4782
  %4832 = phi float [ %4828, %4810 ], [ 0.000000e+00, %4782 ]
  %4833 = phi float [ %4829, %4810 ], [ 0.000000e+00, %4782 ]
  %4834 = phi float [ %4830, %4810 ], [ 0.000000e+00, %4782 ]
  %4835 = fsub fast float %4832, %4357
  %4836 = fsub fast float %4833, %4358
  %4837 = fsub fast float %4834, %4359
  %4838 = fmul fast float %4835, %4579
  %4839 = fmul fast float %4836, %4579
  %4840 = fmul fast float %4837, %4579
  %4841 = fadd fast float %4838, %4357
  %4842 = fadd fast float %4839, %4358
  %4843 = fadd fast float %4840, %4359
  br label %4476

; <label>:4844                                    ; preds = %4476
  br label %4845

; <label>:4845                                    ; preds = %4844, %4290
  %4846 = phi float [ 0.000000e+00, %4290 ], [ %4477, %4844 ]
  %4847 = phi float [ %4259, %4290 ], [ %4478, %4844 ]
  %4848 = phi float [ %4257, %4290 ], [ %4479, %4844 ]
  %4849 = phi float [ %4249, %4290 ], [ %4480, %4844 ]
  %4850 = phi float [ %4250, %4290 ], [ %4481, %4844 ]
  %4851 = phi float [ %4251, %4290 ], [ %4482, %4844 ]
  %4852 = phi float [ %4256, %4290 ], [ %4483, %4844 ]
  %4853 = phi float [ 0.000000e+00, %4290 ], [ %4484, %4844 ]
  %4854 = phi float [ %4246, %4290 ], [ %4485, %4844 ]
  %4855 = phi float [ %4247, %4290 ], [ %4486, %4844 ]
  %4856 = phi float [ %4248, %4290 ], [ %4487, %4844 ]
  %4857 = phi float [ %4243, %4290 ], [ %4488, %4844 ]
  %4858 = phi float [ %4244, %4290 ], [ %4489, %4844 ]
  %4859 = phi float [ %4245, %4290 ], [ %4490, %4844 ]
  %4860 = phi float [ %4285, %4290 ], [ %4491, %4844 ]
  %4861 = phi float [ %4286, %4290 ], [ %4492, %4844 ]
  %4862 = phi float [ %4287, %4290 ], [ %4493, %4844 ]
  %4863 = phi float [ %4254, %4290 ], [ %4494, %4844 ]
  %4864 = phi float [ %4253, %4290 ], [ %4495, %4844 ]
  %4865 = phi float [ 0.000000e+00, %4290 ], [ %4496, %4844 ]
  %4866 = phi float [ %4252, %4290 ], [ %4497, %4844 ]
  %4867 = phi float [ %4240, %4290 ], [ %4498, %4844 ]
  %4868 = phi float [ %4241, %4290 ], [ %4499, %4844 ]
  %4869 = phi float [ %4242, %4290 ], [ %4500, %4844 ]
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4860, float %4861, float %4862, float %4860, float %4861, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 25, float %4870)  ; Rsqrt(value)
  %4872 = fmul fast float %4871, %4860
  %4873 = fmul fast float %4871, %4861
  %4874 = fmul fast float %4871, %4862
  %4875 = fadd fast float %4865, %1006
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.unary.f32(i32 25, float %4877)  ; Rsqrt(value)
  %4879 = fmul fast float %4878, %4872
  %4880 = fmul fast float %4878, %4873
  %4881 = fmul fast float %4878, %4874
  br label %4882

; <label>:4882                                    ; preds = %4845, %4237
  %4883 = phi float [ %4879, %4845 ], [ %4285, %4237 ]
  %4884 = phi float [ %4880, %4845 ], [ %4286, %4237 ]
  %4885 = phi float [ %4881, %4845 ], [ %4287, %4237 ]
  %4886 = phi float [ %4867, %4845 ], [ %4240, %4237 ]
  %4887 = phi float [ %4868, %4845 ], [ %4241, %4237 ]
  %4888 = phi float [ %4869, %4845 ], [ %4242, %4237 ]
  %4889 = phi float [ %4857, %4845 ], [ %4243, %4237 ]
  %4890 = phi float [ %4858, %4845 ], [ %4244, %4237 ]
  %4891 = phi float [ %4859, %4845 ], [ %4245, %4237 ]
  %4892 = phi float [ %4854, %4845 ], [ %4246, %4237 ]
  %4893 = phi float [ %4855, %4845 ], [ %4247, %4237 ]
  %4894 = phi float [ %4856, %4845 ], [ %4248, %4237 ]
  %4895 = phi float [ %4849, %4845 ], [ %4249, %4237 ]
  %4896 = phi float [ %4850, %4845 ], [ %4250, %4237 ]
  %4897 = phi float [ %4851, %4845 ], [ %4251, %4237 ]
  %4898 = phi float [ %4866, %4845 ], [ %4252, %4237 ]
  %4899 = phi float [ %4876, %4845 ], [ %1006, %4237 ]
  %4900 = phi float [ %4864, %4845 ], [ %4253, %4237 ]
  %4901 = phi float [ %4863, %4845 ], [ %4254, %4237 ]
  %4902 = phi float [ %4853, %4845 ], [ 0.000000e+00, %4237 ]
  %4903 = phi float [ %4852, %4845 ], [ %4256, %4237 ]
  %4904 = phi float [ %4846, %4845 ], [ 0.000000e+00, %4237 ]
  %4905 = phi float [ %4847, %4845 ], [ %4259, %4237 ]
  %4906 = phi float [ %4848, %4845 ], [ %4257, %4237 ]
  %4907 = fadd fast float %4898, 0xBFB99999A0000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, 0x3FF1C71C80000000
  %4910 = call float @dx.op.binary.f32(i32 36, float %4898, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4911 = fsub fast float 1.000000e+00, %4909
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, %4886
  %4914 = fmul fast float %4912, %4887
  %4915 = fmul fast float %4912, %4888
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = fmul fast float %4909, %4886
  %4920 = fmul fast float %4909, %4887
  %4921 = fmul fast float %4909, %4888
  %4922 = fadd fast float %4919, %4910
  %4923 = fadd fast float %4920, %4910
  %4924 = fadd fast float %4921, %4910
  %4925 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4927 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4930 = extractvalue %dx.types.ResRet.i32 %4929, 0
  %4931 = and i32 %4930, 1
  %4932 = icmp eq i32 %4931, 0
  br i1 %4932, label %4947, label %4933

; <label>:4933                                    ; preds = %4882
  %4934 = call float @dx.op.binary.f32(i32 35, float %4917, float %4918)  ; FMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4916, float %4934)  ; FMax(a,b)
  %4936 = fcmp fast ogt float %4935, 0.000000e+00
  %4937 = bitcast float %4935 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = select i1 %4936, float %4939, float 0.000000e+00
  %4941 = fmul fast float %4916, %4892
  %4942 = fmul fast float %4917, %4893
  %4943 = fmul fast float %4918, %4894
  %4944 = fmul fast float %4941, %4940
  %4945 = fmul fast float %4942, %4940
  %4946 = fmul fast float %4943, %4940
  br label %4947

; <label>:4947                                    ; preds = %4933, %4882
  %4948 = phi float [ %4944, %4933 ], [ %4892, %4882 ]
  %4949 = phi float [ %4945, %4933 ], [ %4893, %4882 ]
  %4950 = phi float [ %4946, %4933 ], [ %4894, %4882 ]
  %4951 = call float @dx.op.binary.f32(i32 36, float %4895, float 1.270000e+02)  ; FMin(a,b)
  %4952 = call float @dx.op.binary.f32(i32 36, float %4896, float 1.270000e+02)  ; FMin(a,b)
  %4953 = call float @dx.op.binary.f32(i32 36, float %4897, float 1.270000e+02)  ; FMin(a,b)
  %4954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.i32 %4954, 3
  %4956 = and i32 %4955, 8
  %4957 = icmp ne i32 %4956, 0
  %4958 = call float @dx.op.binary.f32(i32 35, float %4916, float %4886)  ; FMax(a,b)
  %4959 = call float @dx.op.binary.f32(i32 35, float %4917, float %4886)  ; FMax(a,b)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4918, float %4886)  ; FMax(a,b)
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = select i1 %170, float %4886, float %4916
  %4963 = select i1 %170, float %4961, float %4917
  %4964 = select i1 %170, float 1.000000e+00, float %4918
  %4965 = select i1 %4957, float %4958, float %4962
  %4966 = select i1 %4957, float %4959, float %4963
  %4967 = select i1 %4957, float %4960, float %4964
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = select i1 %170, float %4968, float %4948
  %4970 = select i1 %170, float %4968, float %4949
  %4971 = select i1 %170, float %4968, float %4950
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4976 = fadd fast float %4973, %128
  %4977 = fadd fast float %4974, %129
  %4978 = fadd fast float %4975, %130
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = fsub fast float %4976, %4980
  %4983 = fsub fast float %4977, %4981
  %4984 = fmul fast float %4982, %4982
  %4985 = fmul fast float %4983, %4983
  %4986 = fadd fast float %4984, %4985
  %4987 = call float @dx.op.unary.f32(i32 24, float %4986)  ; Sqrt(value)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4989 = fcmp fast olt float %4987, %4988
  br i1 %4989, label %4990, label %5057

; <label>:4990                                    ; preds = %4947
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4999 = extractvalue %dx.types.CBufRet.f32 %4995, 1
  %5000 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %5001 = extractvalue %dx.types.CBufRet.f32 %4993, 3
  %5002 = extractvalue %dx.types.CBufRet.f32 %4995, 3
  %5003 = fadd fast float %5000, %4976
  %5004 = fadd fast float %5001, %4977
  %5005 = fadd fast float %5002, %4978
  %5006 = fmul fast float %5003, %4992
  %5007 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4994, float %5006)  ; FMad(a,b,c)
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5005, float %4996, float %5007)  ; FMad(a,b,c)
  %5009 = fmul fast float %5003, %4997
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4998, float %5009)  ; FMad(a,b,c)
  %5011 = call float @dx.op.tertiary.f32(i32 46, float %5005, float %4999, float %5010)  ; FMad(a,b,c)
  %5012 = fsub fast float %5008, %5000
  %5013 = fsub fast float %5011, %5001
  %5014 = fsub fast float %5012, %4980
  %5015 = fadd fast float %5014, %4988
  %5016 = fsub fast float %5013, %4981
  %5017 = fadd fast float %5016, %4988
  %5018 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %5019 = fmul fast float %5015, %5018
  %5020 = fmul fast float %5017, %5018
  %5021 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5023 = fsub fast float 1.000000e+00, %5021
  %5024 = fsub fast float 1.000000e+00, %5022
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = fcmp fast ugt float %5026, 0.000000e+00
  br i1 %5027, label %5028, label %5331

; <label>:5028                                    ; preds = %4990
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = fmul fast float %5030, %5026
  %5032 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5033 = fadd fast float %5032, %5031
  %5034 = extractvalue %dx.types.CBufRet.f32 %4995, 2
  %5035 = fadd fast float %5033, %5002
  %5036 = fmul fast float %5008, %4996
  %5037 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %4999, float %5036)  ; FMad(a,b,c)
  %5038 = call float @dx.op.tertiary.f32(i32 46, float %5035, float %5034, float %5037)  ; FMad(a,b,c)
  %5039 = fsub fast float %5038, %5002
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5042 = fsub fast float %5039, %5041
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %5023, float %5024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = fadd fast float %5048, %5044
  %5052 = fmul fast float %5051, 0x3F847AE140000000
  %5053 = fadd fast float %5049, %5045
  %5054 = fmul fast float %5053, 0x3F847AE140000000
  %5055 = fadd fast float %5050, %5046
  %5056 = fmul fast float %5055, 0x3F847AE140000000
  br label %5331

; <label>:5057                                    ; preds = %4947
  %5058 = and i32 %146, 1
  %5059 = icmp eq i32 %5058, 0
  br i1 %5059, label %5331, label %5060

; <label>:5060                                    ; preds = %5057
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 0
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.CBufRet.f32 %5061, 1
  %5068 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5069 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5061, 3
  %5071 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5072 = extractvalue %dx.types.CBufRet.f32 %5065, 3
  %5073 = fadd fast float %5070, %4976
  %5074 = fadd fast float %5071, %4977
  %5075 = fadd fast float %5072, %4978
  %5076 = fmul fast float %5073, %5062
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %5074, float %5064, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %5075, float %5066, float %5077)  ; FMad(a,b,c)
  %5079 = fmul fast float %5073, %5067
  %5080 = call float @dx.op.tertiary.f32(i32 46, float %5074, float %5068, float %5079)  ; FMad(a,b,c)
  %5081 = call float @dx.op.tertiary.f32(i32 46, float %5075, float %5069, float %5080)  ; FMad(a,b,c)
  %5082 = fsub fast float %5078, %5070
  %5083 = fsub fast float %5081, %5071
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5088 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.i32 %5091, 0
  %5093 = extractvalue %dx.types.CBufRet.i32 %5091, 1
  %5094 = udiv i32 %5093, %5092
  %5095 = fsub fast float %5082, %5085
  %5096 = fsub fast float %5083, %5086
  %5097 = call float @dx.op.binary.f32(i32 35, float %5095, float 0.000000e+00)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 35, float %5096, float 0.000000e+00)  ; FMax(a,b)
  %5099 = call float @dx.op.binary.f32(i32 36, float %5097, float %5087)  ; FMin(a,b)
  %5100 = call float @dx.op.binary.f32(i32 36, float %5098, float %5088)  ; FMin(a,b)
  %5101 = add i32 %5092, -1
  %5102 = add i32 %5094, -1
  %5103 = fmul fast float %5099, %5090
  %5104 = fmul fast float %5100, %5090
  %5105 = fptoui float %5103 to i32
  %5106 = fptoui float %5104 to i32
  %5107 = call i32 @dx.op.binary.i32(i32 40, i32 %5105, i32 %5101)  ; UMin(a,b)
  %5108 = call i32 @dx.op.binary.i32(i32 40, i32 %5106, i32 %5102)  ; UMin(a,b)
  %5109 = mul i32 %5108, %5092
  %5110 = add i32 %5109, %5107
  %5111 = shl i32 %5110, 2
  %5112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5111, i32 undef)  ; BufferLoad(srv,index,wot)
  %5113 = extractvalue %dx.types.ResRet.i32 %5112, 0
  %5114 = icmp eq i32 %5113, -1
  br i1 %5114, label %5331, label %5115

; <label>:5115                                    ; preds = %5060
  %5116 = mul i32 %5113, 148
  %5117 = add i32 %5116, 4
  %5118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = add i32 %5116, 8
  %5121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5120, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = add i32 %5116, 36
  %5124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = add i32 %5116, 60
  %5127 = add i32 %5116, 92
  %5128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.i32 %5128, 0
  %5130 = add i32 %5116, 116
  %5131 = fsub fast float %5082, %5119
  %5132 = fsub fast float %5083, %5122
  %5133 = fmul fast float %5090, %5131
  %5134 = fmul fast float %5090, %5132
  %5135 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5140 = call float @dx.op.unary.f32(i32 83, float %5135)  ; DerivCoarseX(value)
  %5141 = call float @dx.op.unary.f32(i32 83, float %5137)  ; DerivCoarseX(value)
  %5142 = call float @dx.op.unary.f32(i32 84, float %5135)  ; DerivCoarseY(value)
  %5143 = call float @dx.op.unary.f32(i32 84, float %5137)  ; DerivCoarseY(value)
  %5144 = fmul fast float %5140, %5139
  %5145 = fmul fast float %5141, %5139
  %5146 = fmul fast float %5142, %5139
  %5147 = fmul fast float %5143, %5139
  %5148 = call float @dx.op.dot2.f32(i32 54, float %5146, float %5147, float %5146, float %5147)  ; Dot2(ax,ay,bx,by)
  %5149 = call float @dx.op.dot2.f32(i32 54, float %5144, float %5145, float %5144, float %5145)  ; Dot2(ax,ay,bx,by)
  %5150 = call float @dx.op.binary.f32(i32 35, float %5149, float %5148)  ; FMax(a,b)
  %5151 = call float @dx.op.unary.f32(i32 23, float %5150)  ; Log(value)
  %5152 = fmul fast float %5151, 5.000000e-01
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5155 = fadd fast float %5154, %5152
  %5156 = call float @dx.op.binary.f32(i32 35, float %5155, float 0.000000e+00)  ; FMax(a,b)
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5159 = fadd fast float %5158, %5156
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5162 = fadd fast float %5159, %5161
  %5163 = add i32 %5129, 0
  %5164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5164, i32 0)  ; GetDimensions(handle,mipLevel)
  %5166 = extractvalue %dx.types.Dimensions %5165, 0
  %5167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5166)  ; FirstbitLo(value)
  %5168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.i32 %5168, 1
  %5170 = sub nsw i32 %5169, %5167
  %5171 = sitofp i32 %5170 to float
  %5172 = fsub fast float %5162, %5171
  %5173 = call float @dx.op.binary.f32(i32 35, float %5172, float 0.000000e+00)  ; FMax(a,b)
  %5174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5164, %dx.types.Handle %27, float %5135, float %5137, float %5125, float undef, i32 0, i32 0, i32 undef, float %5173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = fcmp ule float %5175, 0x3FE0101020000000
  %5177 = extractvalue %dx.types.CBufRet.i32 %5168, 0
  %5178 = and i32 %5177, 128
  %5179 = icmp ne i32 %5178, 0
  %5180 = and i1 %5176, %5179
  br i1 %5180, label %5331, label %5181

; <label>:5181                                    ; preds = %5115
  %5182 = add i32 %5116, 20
  %5183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5182, i32 undef)  ; BufferLoad(srv,index,wot)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 0
  %5185 = add i32 %5116, 24
  %5186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5185, i32 undef)  ; BufferLoad(srv,index,wot)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = add i32 %5116, 40
  %5189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5188, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = add i32 %5116, 96
  %5192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5191, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.i32 %5192, 0
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5196 = fmul fast float %5195, %5135
  %5197 = fmul fast float %5195, %5137
  %5198 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5199 = fadd fast float %5196, %5198
  %5200 = fadd fast float %5197, %5198
  %5201 = add i32 %5193, 0
  %5202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5202, i32 0)  ; GetDimensions(handle,mipLevel)
  %5204 = extractvalue %dx.types.Dimensions %5203, 0
  %5205 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5204)  ; FirstbitLo(value)
  %5206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.i32 %5206, 1
  %5208 = sub nsw i32 %5207, %5205
  %5209 = sitofp i32 %5208 to float
  %5210 = fsub fast float %5159, %5209
  %5211 = call float @dx.op.binary.f32(i32 35, float %5210, float 0.000000e+00)  ; FMax(a,b)
  %5212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5202, %dx.types.Handle %27, float %5199, float %5200, float %5190, float undef, i32 0, i32 0, i32 undef, float %5211)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = fmul fast float %5213, %5184
  %5215 = fadd fast float %5214, %5187
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.CBufRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 3
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5224 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5225 = fadd fast float %5221, %5082
  %5226 = fadd fast float %5223, %5083
  %5227 = fadd fast float %5215, %5224
  %5228 = fmul fast float %5225, %5217
  %5229 = call float @dx.op.tertiary.f32(i32 46, float %5226, float %5218, float %5228)  ; FMad(a,b,c)
  %5230 = call float @dx.op.tertiary.f32(i32 46, float %5227, float %5219, float %5229)  ; FMad(a,b,c)
  %5231 = fsub fast float %5230, %5224
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 2
  %5234 = fsub fast float %5231, %5233
  %5235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.i32 %5235, 0
  %5237 = call i32 @dx.op.binary.i32(i32 40, i32 %5113, i32 %5236)  ; UMin(a,b)
  %5238 = mul i32 %5237, 36
  %5239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.i32 %5239, 0
  %5241 = add i32 %5238, 4
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = fmul fast float %5243, %5135
  %5245 = fmul fast float %5243, %5137
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5247 = fadd fast float %5244, %5246
  %5248 = fadd fast float %5245, %5246
  %5249 = icmp eq i32 %5240, 0
  br i1 %5249, label %5318, label %5250

; <label>:5250                                    ; preds = %5181
  br label %5251

; <label>:5251                                    ; preds = %5308, %5250
  %5252 = phi float [ %5309, %5308 ], [ 0.000000e+00, %5250 ]
  %5253 = phi float [ %5310, %5308 ], [ 0.000000e+00, %5250 ]
  %5254 = phi float [ %5311, %5308 ], [ 0.000000e+00, %5250 ]
  %5255 = phi float [ %5312, %5308 ], [ 0.000000e+00, %5250 ]
  %5256 = phi float [ %5313, %5308 ], [ 0.000000e+00, %5250 ]
  %5257 = phi float [ %5314, %5308 ], [ 0.000000e+00, %5250 ]
  %5258 = phi i32 [ %5315, %5308 ], [ 0, %5250 ]
  %5259 = shl i32 %5258, 2
  %5260 = add i32 %5126, %5259
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = add i32 %5130, %5259
  %5264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5263, i32 undef)  ; BufferLoad(srv,index,wot)
  %5265 = extractvalue %dx.types.ResRet.i32 %5264, 0
  %5266 = add i32 %5265, 0
  %5267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5268 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5267, i32 0)  ; GetDimensions(handle,mipLevel)
  %5269 = extractvalue %dx.types.Dimensions %5268, 0
  %5270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5269)  ; FirstbitLo(value)
  %5271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.i32 %5271, 1
  %5273 = sub nsw i32 %5272, %5270
  %5274 = sitofp i32 %5273 to float
  %5275 = fsub fast float %5159, %5274
  %5276 = call float @dx.op.binary.f32(i32 35, float %5275, float 0.000000e+00)  ; FMax(a,b)
  %5277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5267, %dx.types.Handle %27, float %5247, float %5248, float %5262, float undef, i32 0, i32 0, i32 undef, float %5276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = fcmp fast ogt float %5278, 0.000000e+00
  br i1 %5279, label %5280, label %5308

; <label>:5280                                    ; preds = %5251
  %5281 = add i32 %5241, %5259
  %5282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.i32 %5282, 0
  %5284 = and i32 %5283, 32767
  %5285 = mul nuw nsw i32 %5284, 928
  %5286 = add nuw nsw i32 %5285, 48
  %5287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5291 = add nuw nsw i32 %5285, 60
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = fmul fast float %5288, %5278
  %5297 = fmul fast float %5289, %5278
  %5298 = fmul fast float %5290, %5278
  %5299 = fadd fast float %5296, %5252
  %5300 = fadd fast float %5297, %5253
  %5301 = fadd fast float %5298, %5254
  %5302 = fmul fast float %5293, %5278
  %5303 = fmul fast float %5294, %5278
  %5304 = fmul fast float %5295, %5278
  %5305 = fadd fast float %5302, %5255
  %5306 = fadd fast float %5303, %5256
  %5307 = fadd fast float %5304, %5257
  br label %5308

; <label>:5308                                    ; preds = %5280, %5251
  %5309 = phi float [ %5299, %5280 ], [ %5252, %5251 ]
  %5310 = phi float [ %5300, %5280 ], [ %5253, %5251 ]
  %5311 = phi float [ %5301, %5280 ], [ %5254, %5251 ]
  %5312 = phi float [ %5305, %5280 ], [ %5255, %5251 ]
  %5313 = phi float [ %5306, %5280 ], [ %5256, %5251 ]
  %5314 = phi float [ %5307, %5280 ], [ %5257, %5251 ]
  %5315 = add nuw i32 %5258, 1
  %5316 = icmp eq i32 %5315, %5240
  br i1 %5316, label %5317, label %5251

; <label>:5317                                    ; preds = %5308
  br label %5318

; <label>:5318                                    ; preds = %5317, %5181
  %5319 = phi float [ 0.000000e+00, %5181 ], [ %5309, %5317 ]
  %5320 = phi float [ 0.000000e+00, %5181 ], [ %5310, %5317 ]
  %5321 = phi float [ 0.000000e+00, %5181 ], [ %5311, %5317 ]
  %5322 = phi float [ 0.000000e+00, %5181 ], [ %5312, %5317 ]
  %5323 = phi float [ 0.000000e+00, %5181 ], [ %5313, %5317 ]
  %5324 = phi float [ 0.000000e+00, %5181 ], [ %5314, %5317 ]
  %5325 = fadd fast float %5322, %5319
  %5326 = fmul fast float %5325, 0x3F847AE140000000
  %5327 = fadd fast float %5323, %5320
  %5328 = fmul fast float %5327, 0x3F847AE140000000
  %5329 = fadd fast float %5324, %5321
  %5330 = fmul fast float %5329, 0x3F847AE140000000
  br label %5331

; <label>:5331                                    ; preds = %5318, %5115, %5060, %5057, %5028, %4990
  %5332 = phi float [ %5042, %5028 ], [ -1.310720e+05, %4990 ], [ %5234, %5318 ], [ -1.310720e+05, %5060 ], [ -1.310720e+05, %5115 ], [ -1.310720e+05, %5057 ]
  %5333 = phi float [ %5052, %5028 ], [ 0.000000e+00, %4990 ], [ %5326, %5318 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5057 ]
  %5334 = phi float [ %5054, %5028 ], [ 0.000000e+00, %4990 ], [ %5328, %5318 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5057 ]
  %5335 = phi float [ %5056, %5028 ], [ 0.000000e+00, %4990 ], [ %5330, %5318 ], [ 0.000000e+00, %5060 ], [ 0.000000e+00, %5115 ], [ 0.000000e+00, %5057 ]
  %5336 = phi i1 [ true, %5028 ], [ false, %4990 ], [ true, %5318 ], [ false, %5060 ], [ false, %5115 ], [ false, %5057 ]
  %5337 = and i32 %146, 3
  %5338 = icmp eq i32 %5337, 1
  %5339 = select i1 %5338, float 1.000000e+00, float 0.000000e+00
  %5340 = fsub fast float %5332, %130
  %5341 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5342 = select i1 %5336, float %5341, float 1.000000e+00
  %5343 = fmul fast float %5342, %5339
  %5344 = icmp eq i32 %5337, 3
  %5345 = select i1 %5344, float 1.000000e+00, float %5343
  %5346 = call float @dx.op.binary.f32(i32 35, float %4904, float %5345)  ; FMax(a,b)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = fcmp fast une float %5347, 0.000000e+00
  %5349 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.unary.f32(i32 25, float %5349)  ; Rsqrt(value)
  br i1 %5348, label %5358, label %5351

; <label>:5351                                    ; preds = %5331
  %5352 = fmul fast float %5350, %128
  %5353 = fmul fast float %5350, %129
  %5354 = fmul fast float %5350, %130
  %5355 = fsub fast float -0.000000e+00, %5352
  %5356 = fsub fast float -0.000000e+00, %5353
  %5357 = fsub fast float -0.000000e+00, %5354
  br label %5526

; <label>:5358                                    ; preds = %5331
  %5359 = fmul fast float %128, %5350
  %5360 = fsub fast float -0.000000e+00, %5359
  %5361 = fmul fast float %129, %5350
  %5362 = fsub fast float -0.000000e+00, %5361
  %5363 = fmul fast float %130, %5350
  %5364 = fsub fast float -0.000000e+00, %5363
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5362, float %5364, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fmul fast float %5347, 2.500000e+00
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = fmul fast float %5347, 0x4013FFFFE0000000
  %5369 = fadd fast float %5368, 0xBFFFFFFFE0000000
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fmul fast float %5347, 0x4004000020000000
  %5372 = fadd fast float %5371, 0xBFF8000040000000
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5375 = fmul fast float %4907, 1.000000e+01
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fmul fast float %5376, 2.000000e+00
  %5378 = fsub fast float 3.000000e+00, %5377
  %5379 = fmul fast float %5376, %5376
  %5380 = fmul fast float %5379, %5378
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = fsub fast float 0x3FE3333340000000, %4928
  %5383 = fmul fast float %5382, 0x400AAAAAA0000000
  %5384 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5385 = fmul fast float %5381, %5384
  %5386 = fmul fast float %4965, 0x3FEA2B8620000000
  %5387 = fmul fast float %4966, 0x3FEA2B8620000000
  %5388 = fmul fast float %4967, 0x3FEA2B8620000000
  %5389 = fadd fast float %5386, 0x3FC81DFBA0000000
  %5390 = fmul fast float %5389, %4965
  %5391 = fadd fast float %5390, 0x3F910E6020000000
  %5392 = fadd fast float %5387, 0x3FC81DFBA0000000
  %5393 = fmul fast float %5392, %4966
  %5394 = fadd fast float %5393, 0x3F910E6020000000
  %5395 = fadd fast float %5388, 0x3FC81DFBA0000000
  %5396 = fmul fast float %5395, %4967
  %5397 = fadd fast float %5396, 0x3F910E6020000000
  %5398 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5399 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5400 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5401 = fsub fast float %5398, %4965
  %5402 = fsub fast float %5399, %4966
  %5403 = fsub fast float %5400, %4967
  %5404 = fmul fast float %5401, %5374
  %5405 = fmul fast float %5404, %5385
  %5406 = fmul fast float %5402, %5374
  %5407 = fmul fast float %5406, %5385
  %5408 = fmul fast float %5403, %5374
  %5409 = fmul fast float %5408, %5385
  %5410 = fadd fast float %5405, %4965
  %5411 = fadd fast float %5407, %4966
  %5412 = fadd fast float %5409, %4967
  %5413 = fmul fast float %4901, %4901
  %5414 = fmul fast float %5413, %5413
  %5415 = fadd fast float %5370, 1.000000e+00
  %5416 = fsub fast float %5415, %5385
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = fsub fast float 1.000000e+00, %5414
  %5421 = call float @dx.op.binary.f32(i32 36, float %5417, float %5420)  ; FMin(a,b)
  %5422 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5421, float %5422)  ; FMax(a,b)
  %5424 = fadd fast float %5419, 0xBFE4CCCCC0000000
  %5425 = fmul fast float %5424, 0x4006DB6DA0000000
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = fmul fast float %5426, 2.000000e+00
  %5428 = fsub fast float 3.000000e+00, %5427
  %5429 = bitcast float %4925 to i32
  %5430 = ashr i32 %5429, 1
  %5431 = add nsw i32 %5430, 532487669
  %5432 = bitcast i32 %5431 to float
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = bitcast float %5433 to i32
  %5435 = sub nsw i32 2129859010, %5434
  %5436 = bitcast i32 %5435 to float
  %5437 = fmul fast float %5436, 2.000000e+00
  %5438 = bitcast float %4926 to i32
  %5439 = ashr i32 %5438, 1
  %5440 = add nsw i32 %5439, 532487669
  %5441 = bitcast i32 %5440 to float
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = bitcast float %5442 to i32
  %5444 = sub nsw i32 2129859010, %5443
  %5445 = bitcast i32 %5444 to float
  %5446 = fmul fast float %5445, 2.000000e+00
  %5447 = bitcast float %4927 to i32
  %5448 = ashr i32 %5447, 1
  %5449 = add nsw i32 %5448, 532487669
  %5450 = bitcast i32 %5449 to float
  %5451 = fsub fast float 1.000000e+00, %5450
  %5452 = bitcast float %5451 to i32
  %5453 = sub nsw i32 2129859010, %5452
  %5454 = bitcast i32 %5453 to float
  %5455 = fmul fast float %5454, 2.000000e+00
  %5456 = fsub fast float 0x4002A9FBE0000000, %5437
  %5457 = fadd fast float %5437, 0x3FD54FDF00000000
  %5458 = bitcast float %5457 to i32
  %5459 = sub nsw i32 2129859010, %5458
  %5460 = bitcast i32 %5459 to float
  %5461 = fmul fast float %5460, %5456
  %5462 = fmul fast float %5461, %5461
  %5463 = fsub fast float 0x4002A9FBE0000000, %5446
  %5464 = fadd fast float %5446, 0x3FD54FDF00000000
  %5465 = bitcast float %5464 to i32
  %5466 = sub nsw i32 2129859010, %5465
  %5467 = bitcast i32 %5466 to float
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %5468, %5468
  %5470 = fsub fast float 0x4002A9FBE0000000, %5455
  %5471 = fadd fast float %5455, 0x3FD54FDF00000000
  %5472 = bitcast float %5471 to i32
  %5473 = sub nsw i32 2129859010, %5472
  %5474 = bitcast i32 %5473 to float
  %5475 = fmul fast float %5474, %5470
  %5476 = fmul fast float %5475, %5475
  %5477 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5462)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5469)  ; FMax(a,b)
  %5479 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5476)  ; FMax(a,b)
  %5480 = fsub fast float 1.000000e+00, %5365
  %5481 = fadd fast float %5480, %5381
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fsub fast float 1.000000e+00, %5345
  %5484 = fmul fast float %5423, %5483
  %5485 = fmul fast float %5426, %5426
  %5486 = fmul fast float %5485, %5484
  %5487 = fmul fast float %5486, %5428
  %5488 = fmul fast float %5483, 0xBFE99999A0000000
  %5489 = fmul fast float %5488, %5374
  %5490 = fmul fast float %5489, %5385
  %5491 = fadd fast float %5490, 1.000000e+00
  %5492 = fadd fast float %4928, -1.000000e+00
  %5493 = fmul fast float %5491, %5492
  %5494 = fadd fast float %5493, 1.000000e+00
  %5495 = fsub fast float %5477, %4925
  %5496 = fsub fast float %5478, %4926
  %5497 = fsub fast float %5479, %4927
  %5498 = fmul fast float %5487, %5495
  %5499 = fmul fast float %5487, %5496
  %5500 = fmul fast float %5487, %5497
  %5501 = fadd fast float %5498, %4925
  %5502 = fadd fast float %5499, %4926
  %5503 = fadd fast float %5500, %4927
  %5504 = fsub fast float %80, %4883
  %5505 = fsub fast float %81, %4884
  %5506 = fsub fast float %82, %4885
  %5507 = fmul fast float %5487, %5504
  %5508 = fmul fast float %5487, %5505
  %5509 = fmul fast float %5487, %5506
  %5510 = fadd fast float %5507, %4883
  %5511 = fadd fast float %5508, %4884
  %5512 = fadd fast float %5509, %4885
  %5513 = fmul fast float %5487, %5482
  %5514 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = fmul fast float %5513, %5515
  %5517 = fadd fast float %5516, %5514
  %5518 = fsub fast float 1.000000e+00, %4901
  %5519 = fmul fast float %5487, %5518
  %5520 = fadd fast float %5519, %4901
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5511, float %5512, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = call float @dx.op.unary.f32(i32 25, float %5521)  ; Rsqrt(value)
  %5523 = fmul fast float %5510, %5522
  %5524 = fmul fast float %5511, %5522
  %5525 = fmul fast float %5512, %5522
  br label %5526

; <label>:5526                                    ; preds = %5358, %5351
  %5527 = phi float [ %5357, %5351 ], [ %5364, %5358 ]
  %5528 = phi float [ %5356, %5351 ], [ %5362, %5358 ]
  %5529 = phi float [ %5355, %5351 ], [ %5360, %5358 ]
  %5530 = phi float [ %5354, %5351 ], [ %5363, %5358 ]
  %5531 = phi float [ %5353, %5351 ], [ %5361, %5358 ]
  %5532 = phi float [ %5352, %5351 ], [ %5359, %5358 ]
  %5533 = phi float [ %4925, %5351 ], [ %5501, %5358 ]
  %5534 = phi float [ %4926, %5351 ], [ %5502, %5358 ]
  %5535 = phi float [ %4927, %5351 ], [ %5503, %5358 ]
  %5536 = phi float [ %4883, %5351 ], [ %5523, %5358 ]
  %5537 = phi float [ %4884, %5351 ], [ %5524, %5358 ]
  %5538 = phi float [ %4885, %5351 ], [ %5525, %5358 ]
  %5539 = phi float [ %4965, %5351 ], [ %5410, %5358 ]
  %5540 = phi float [ %4966, %5351 ], [ %5411, %5358 ]
  %5541 = phi float [ %4967, %5351 ], [ %5412, %5358 ]
  %5542 = phi float [ %4928, %5351 ], [ %5517, %5358 ]
  %5543 = phi float [ %4901, %5351 ], [ %5520, %5358 ]
  %5544 = select i1 %170, float 0.000000e+00, float %5535
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %5538, float %5529, float %5528, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5531, float %5530, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fmul fast float %5547, 2.000000e+00
  %5549 = fmul fast float %5548, %5536
  %5550 = fmul fast float %5548, %5537
  %5551 = fmul fast float %5548, %5538
  %5552 = fsub fast float %5532, %5549
  %5553 = fsub fast float %5531, %5550
  %5554 = fsub fast float %5530, %5551
  %5555 = call float @dx.op.binary.f32(i32 36, float %5543, float 1.000000e+00)  ; FMin(a,b)
  %5556 = fsub fast float 1.000000e+00, %5543
  %5557 = bitcast float %5556 to i32
  %5558 = sub nsw i32 2129859010, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5561 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fcmp fast oeq float %5561, 0.000000e+00
  %5563 = fcmp fast oeq float %5560, 0.000000e+00
  %5564 = or i1 %5563, %5562
  br i1 %5564, label %5594, label %5565

; <label>:5565                                    ; preds = %5526
  %5566 = fsub fast float -0.000000e+00, %53
  %5567 = fsub fast float -0.000000e+00, %51
  %5568 = call float @dx.op.unary.f32(i32 24, float %5561)  ; Sqrt(value)
  %5569 = fdiv fast float %5568, %5560
  %5570 = fcmp fast ogt float %5569, 0x3FFB6F8900000000
  %5571 = select i1 %5570, float 0x3FFB6F8900000000, float %5569
  %5572 = fmul fast float %5571, 0x3FE8A23460000000
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = call float @dx.op.binary.f32(i32 35, float %5571, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5575 = fmul fast float %5573, %5560
  %5576 = fmul fast float %5574, 0x3FF279A740000000
  %5577 = fadd fast float %5576, -1.000000e+00
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5567, float %52, float %5566, float %5567, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = call float @dx.op.unary.f32(i32 25, float %5578)  ; Rsqrt(value)
  %5580 = fmul fast float %5579, %5566
  %5581 = fmul fast float %5579, %5567
  %5582 = fmul fast float %5579, %52
  %5583 = fmul fast float %5577, %5577
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5574, 0x40005F8BE0000000
  %5586 = fsub fast float 0x400C5BF8A0000000, %5585
  %5587 = fdiv fast float %5575, %5586
  %5588 = fmul fast float %5587, 0x3FEE31C3C0000000
  %5589 = fmul fast float %5588, %5584
  %5590 = fmul fast float %5574, 0x3FDACB7480000000
  %5591 = fadd fast float %5590, 0xBFD7347680000000
  %5592 = fmul fast float %5591, %5587
  %5593 = fmul fast float %5592, %5584
  br label %5594

; <label>:5594                                    ; preds = %5565, %5526
  %5595 = phi float [ %5580, %5565 ], [ 0.000000e+00, %5526 ]
  %5596 = phi float [ %5581, %5565 ], [ 0.000000e+00, %5526 ]
  %5597 = phi float [ %5582, %5565 ], [ 0.000000e+00, %5526 ]
  %5598 = phi float [ %5589, %5565 ], [ 0.000000e+00, %5526 ]
  %5599 = phi float [ %5593, %5565 ], [ 0.000000e+00, %5526 ]
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = fmul fast float %5600, 0x3FDF454380000000
  %5602 = fmul fast float %5600, %5600
  %5603 = fmul fast float %5602, 0x3FEE471020000000
  %5604 = fadd fast float %5603, 0xBFD42F6020000000
  %5605 = fmul fast float %5560, 0x3FD20DD760000000
  %5606 = fmul fast float %5604, %5599
  %5607 = fadd fast float %5606, %5605
  %5608 = fmul fast float %5601, %5598
  %5609 = fadd fast float %5607, %5608
  %5610 = fsub fast float %5607, %5608
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, 0x3FDF454380000000
  %5613 = fmul fast float %5611, %5611
  %5614 = fmul fast float %5613, 0x3FEE471020000000
  %5615 = fadd fast float %5614, 0xBFD42F6020000000
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5598, float %5599, float 0x3FD20DD760000000, float %5612, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %5618 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fcmp fast oeq float %5618, 0.000000e+00
  %5620 = fcmp fast oeq float %5617, 0.000000e+00
  %5621 = or i1 %5620, %5619
  br i1 %5621, label %5651, label %5622

; <label>:5622                                    ; preds = %5594
  %5623 = fsub fast float -0.000000e+00, %49
  %5624 = fsub fast float -0.000000e+00, %47
  %5625 = call float @dx.op.unary.f32(i32 24, float %5618)  ; Sqrt(value)
  %5626 = fdiv fast float %5625, %5617
  %5627 = fcmp fast ogt float %5626, 0x3FFB6F8900000000
  %5628 = select i1 %5627, float 0x3FFB6F8900000000, float %5626
  %5629 = fmul fast float %5628, 0x3FE8A23460000000
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5628, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5632 = fmul fast float %5630, %5617
  %5633 = fmul fast float %5631, 0x3FF279A740000000
  %5634 = fadd fast float %5633, -1.000000e+00
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %48, float %5623, float %5624, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.unary.f32(i32 25, float %5635)  ; Rsqrt(value)
  %5637 = fmul fast float %5636, %5623
  %5638 = fmul fast float %5636, %5624
  %5639 = fmul fast float %5636, %48
  %5640 = fmul fast float %5634, %5634
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5631, 0x40005F8BE0000000
  %5643 = fsub fast float 0x400C5BF8A0000000, %5642
  %5644 = fdiv fast float %5632, %5643
  %5645 = fmul fast float %5644, 0x3FEE31C3C0000000
  %5646 = fmul fast float %5645, %5641
  %5647 = fmul fast float %5631, 0x3FDACB7480000000
  %5648 = fadd fast float %5647, 0xBFD7347680000000
  %5649 = fmul fast float %5648, %5644
  %5650 = fmul fast float %5649, %5641
  br label %5651

; <label>:5651                                    ; preds = %5622, %5594
  %5652 = phi float [ %5637, %5622 ], [ 0.000000e+00, %5594 ]
  %5653 = phi float [ %5638, %5622 ], [ 0.000000e+00, %5594 ]
  %5654 = phi float [ %5639, %5622 ], [ 0.000000e+00, %5594 ]
  %5655 = phi float [ %5646, %5622 ], [ 0.000000e+00, %5594 ]
  %5656 = phi float [ %5650, %5622 ], [ 0.000000e+00, %5594 ]
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5653, float %5654, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fmul fast float %5657, 0x3FDF454380000000
  %5659 = fmul fast float %5657, %5657
  %5660 = fmul fast float %5659, 0x3FEE471020000000
  %5661 = fadd fast float %5660, 0xBFD42F6020000000
  %5662 = fmul fast float %5617, 0x3FD20DD760000000
  %5663 = fmul fast float %5661, %5656
  %5664 = fadd fast float %5663, %5662
  %5665 = fmul fast float %5658, %5655
  %5666 = fadd fast float %5664, %5665
  %5667 = fsub fast float %5664, %5665
  %5668 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5653, float %5654, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = fmul fast float %5668, 0x3FDF454380000000
  %5670 = fmul fast float %5668, %5668
  %5671 = fmul fast float %5670, 0x3FEE471020000000
  %5672 = fadd fast float %5671, 0xBFD42F6020000000
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5655, float %5656, float 0x3FD20DD760000000, float %5669, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %5675 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fcmp fast oeq float %5675, 0.000000e+00
  %5677 = fcmp fast oeq float %5674, 0.000000e+00
  %5678 = or i1 %5677, %5676
  br i1 %5678, label %5708, label %5679

; <label>:5679                                    ; preds = %5651
  %5680 = fsub fast float -0.000000e+00, %45
  %5681 = fsub fast float -0.000000e+00, %43
  %5682 = call float @dx.op.unary.f32(i32 24, float %5675)  ; Sqrt(value)
  %5683 = fdiv fast float %5682, %5674
  %5684 = fcmp fast ogt float %5683, 0x3FFB6F8900000000
  %5685 = select i1 %5684, float 0x3FFB6F8900000000, float %5683
  %5686 = fmul fast float %5685, 0x3FE8A23460000000
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = call float @dx.op.binary.f32(i32 35, float %5685, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5689 = fmul fast float %5687, %5674
  %5690 = fmul fast float %5688, 0x3FF279A740000000
  %5691 = fadd fast float %5690, -1.000000e+00
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5680, float %5681, float %44, float %5680, float %5681, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = call float @dx.op.unary.f32(i32 25, float %5692)  ; Rsqrt(value)
  %5694 = fmul fast float %5693, %5680
  %5695 = fmul fast float %5693, %5681
  %5696 = fmul fast float %5693, %44
  %5697 = fmul fast float %5691, %5691
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = fmul fast float %5688, 0x40005F8BE0000000
  %5700 = fsub fast float 0x400C5BF8A0000000, %5699
  %5701 = fdiv fast float %5689, %5700
  %5702 = fmul fast float %5701, 0x3FEE31C3C0000000
  %5703 = fmul fast float %5702, %5698
  %5704 = fmul fast float %5688, 0x3FDACB7480000000
  %5705 = fadd fast float %5704, 0xBFD7347680000000
  %5706 = fmul fast float %5705, %5701
  %5707 = fmul fast float %5706, %5698
  br label %5708

; <label>:5708                                    ; preds = %5679, %5651
  %5709 = phi float [ %5694, %5679 ], [ 0.000000e+00, %5651 ]
  %5710 = phi float [ %5695, %5679 ], [ 0.000000e+00, %5651 ]
  %5711 = phi float [ %5696, %5679 ], [ 0.000000e+00, %5651 ]
  %5712 = phi float [ %5703, %5679 ], [ 0.000000e+00, %5651 ]
  %5713 = phi float [ %5707, %5679 ], [ 0.000000e+00, %5651 ]
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = fmul fast float %5714, 0x3FDF454380000000
  %5716 = fmul fast float %5714, %5714
  %5717 = fmul fast float %5716, 0x3FEE471020000000
  %5718 = fadd fast float %5717, 0xBFD42F6020000000
  %5719 = fmul fast float %5674, 0x3FD20DD760000000
  %5720 = fmul fast float %5718, %5713
  %5721 = fadd fast float %5720, %5719
  %5722 = fmul fast float %5715, %5712
  %5723 = fadd fast float %5721, %5722
  %5724 = fsub fast float %5721, %5722
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fmul fast float %5725, 0x3FDF454380000000
  %5727 = fmul fast float %5725, %5725
  %5728 = fmul fast float %5727, 0x3FEE471020000000
  %5729 = fadd fast float %5728, 0xBFD42F6020000000
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5712, float %5713, float 0x3FD20DD760000000, float %5726, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5732 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5733 = call float @dx.op.binary.f32(i32 35, float %5723, float 0.000000e+00)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5735 = call float @dx.op.binary.f32(i32 35, float %5667, float 0.000000e+00)  ; FMax(a,b)
  %5736 = call float @dx.op.binary.f32(i32 35, float %5724, float 0.000000e+00)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5616, float 0.000000e+00)  ; FMax(a,b)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5673, float 0.000000e+00)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5730, float 0.000000e+00)  ; FMax(a,b)
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = call float @dx.op.binary.f32(i32 36, float %5539, float %5741)  ; FMin(a,b)
  %5743 = fsub fast float 1.000000e+00, %5555
  %5744 = fmul fast float %5742, %5743
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = bitcast float %5745 to i32
  %5747 = sub nsw i32 2129859010, %5746
  %5748 = bitcast i32 %5747 to float
  %5749 = call float @dx.op.binary.f32(i32 36, float %5540, float %5741)  ; FMin(a,b)
  %5750 = fmul fast float %5749, %5743
  %5751 = fsub fast float 1.000000e+00, %5750
  %5752 = bitcast float %5751 to i32
  %5753 = sub nsw i32 2129859010, %5752
  %5754 = bitcast i32 %5753 to float
  %5755 = call float @dx.op.binary.f32(i32 36, float %5541, float %5741)  ; FMin(a,b)
  %5756 = fmul fast float %5755, %5743
  %5757 = fsub fast float 1.000000e+00, %5756
  %5758 = bitcast float %5757 to i32
  %5759 = sub nsw i32 2129859010, %5758
  %5760 = bitcast i32 %5759 to float
  %5761 = fmul fast float %5731, %5555
  %5762 = fmul fast float %5761, %5748
  %5763 = fmul fast float %5732, %5555
  %5764 = fmul fast float %5763, %5754
  %5765 = fmul fast float %5733, %5555
  %5766 = fmul fast float %5765, %5760
  %5767 = call float @dx.op.binary.f32(i32 36, float %5533, float %5741)  ; FMin(a,b)
  %5768 = fmul fast float %5767, %5743
  %5769 = fsub fast float 1.000000e+00, %5768
  %5770 = bitcast float %5769 to i32
  %5771 = sub nsw i32 2129859010, %5770
  %5772 = bitcast i32 %5771 to float
  %5773 = call float @dx.op.binary.f32(i32 36, float %5534, float %5741)  ; FMin(a,b)
  %5774 = fmul fast float %5773, %5743
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = bitcast float %5775 to i32
  %5777 = sub nsw i32 2129859010, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = call float @dx.op.binary.f32(i32 36, float %5544, float %5741)  ; FMin(a,b)
  %5780 = fmul fast float %5779, %5743
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = bitcast float %5781 to i32
  %5783 = sub nsw i32 2129859010, %5782
  %5784 = bitcast i32 %5783 to float
  %5785 = fmul fast float %5737, %5555
  %5786 = fmul fast float %5785, %5772
  %5787 = fmul fast float %5738, %5555
  %5788 = fmul fast float %5787, %5778
  %5789 = fmul fast float %5739, %5555
  %5790 = fmul fast float %5789, %5784
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5764, float %5766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = select i1 %170, float 0.000000e+00, float %5762
  %5793 = select i1 %170, float %5791, float %5764
  %5794 = select i1 %170, float 0.000000e+00, float %5766
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %5736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = select i1 %170, float 0.000000e+00, float %5734
  %5797 = select i1 %170, float %5795, float %5735
  %5798 = select i1 %170, float 0.000000e+00, float %5736
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5788, float %5790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = select i1 %170, float 0.000000e+00, float %5786
  %5801 = select i1 %170, float %5799, float %5788
  %5802 = select i1 %170, float 0.000000e+00, float %5790
  %5803 = fmul fast float %5546, 9.843750e-01
  %5804 = fmul fast float %5542, 9.843750e-01
  %5805 = fadd fast float %5803, 7.812500e-03
  %5806 = fadd fast float %5804, 7.812500e-03
  %5807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5805, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5808 = extractvalue %dx.types.ResRet.f32 %5807, 2
  %5809 = extractvalue %dx.types.ResRet.f32 %5807, 3
  %5810 = fmul fast float %5808, %5533
  %5811 = fmul fast float %5808, %5534
  %5812 = fmul fast float %5808, %5544
  %5813 = fadd fast float %5810, %5809
  %5814 = fadd fast float %5811, %5809
  %5815 = fadd fast float %5812, %5809
  %5816 = fcmp fast ogt float %4902, 0.000000e+00
  br i1 %5816, label %5817, label %5843

; <label>:5817                                    ; preds = %5708
  %5818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %5546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.ResRet.f32 %5818, 1
  %5821 = extractvalue %dx.types.ResRet.f32 %5818, 2
  %5822 = fadd fast float %5819, -5.000000e-01
  %5823 = fadd fast float %5820, -5.000000e-01
  %5824 = fadd fast float %5821, -5.000000e-01
  %5825 = fsub fast float 1.000000e+00, %5533
  %5826 = fsub fast float 1.000000e+00, %5534
  %5827 = fsub fast float 1.000000e+00, %5544
  %5828 = fmul fast float %5533, 4.000000e+00
  %5829 = fmul fast float %5828, %5825
  %5830 = fmul fast float %5829, %5822
  %5831 = fmul fast float %5534, 4.000000e+00
  %5832 = fmul fast float %5831, %5826
  %5833 = fmul fast float %5832, %5823
  %5834 = fmul fast float %5544, 4.000000e+00
  %5835 = fmul fast float %5834, %5827
  %5836 = fmul fast float %5835, %5824
  %5837 = fadd fast float %5830, %5813
  %5838 = fadd fast float %5833, %5814
  %5839 = fadd fast float %5836, %5815
  %5840 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  br label %5843

; <label>:5843                                    ; preds = %5817, %5708
  %5844 = phi float [ %5840, %5817 ], [ %5813, %5708 ]
  %5845 = phi float [ %5841, %5817 ], [ %5814, %5708 ]
  %5846 = phi float [ %5842, %5817 ], [ %5815, %5708 ]
  %5847 = call float @dx.op.binary.f32(i32 35, float %5845, float %5846)  ; FMax(a,b)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5844, float %5847)  ; FMax(a,b)
  %5849 = fsub fast float 1.000000e+00, %5848
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %5541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fcmp fast ogt float %5850, 0x3E7FF19E20000000
  %5852 = fdiv fast float 1.000000e+00, %5850
  %5853 = select i1 %5851, float %5852, float 0.000000e+00
  %5854 = fmul fast float %5853, %5539
  %5855 = fmul fast float %5853, %5540
  %5856 = fmul fast float %5853, %5541
  %5857 = fadd fast float %5854, -1.000000e+00
  %5858 = fadd fast float %5855, -1.000000e+00
  %5859 = fadd fast float %5856, -1.000000e+00
  %5860 = fmul fast float %5857, 5.000000e-01
  %5861 = fmul fast float %5858, 5.000000e-01
  %5862 = fmul fast float %5859, 5.000000e-01
  %5863 = fadd fast float %5860, 1.000000e+00
  %5864 = fadd fast float %5861, 1.000000e+00
  %5865 = fadd fast float %5862, 1.000000e+00
  %5866 = call float @dx.op.binary.f32(i32 35, float %5546, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5867 = fdiv fast float %4255, %5866
  %5868 = fmul fast float %5844, %5800
  %5869 = fmul fast float %5845, %5801
  %5870 = fmul fast float %5846, %5802
  %5871 = fsub fast float 1.000000e+00, %5546
  %5872 = bitcast float %5871 to i32
  %5873 = sitofp i32 %5872 to float
  %5874 = fmul fast float %5873, 5.000000e+00
  %5875 = fadd fast float %5874, 0xC1EFBF8940000000
  %5876 = fptosi float %5875 to i32
  %5877 = bitcast i32 %5876 to float
  %5878 = fmul fast float %5877, %4903
  %5879 = fmul fast float %5792, %5878
  %5880 = fmul fast float %5879, %5849
  %5881 = fmul fast float %5880, %5863
  %5882 = fmul fast float %5793, %5878
  %5883 = fmul fast float %5882, %5849
  %5884 = fmul fast float %5883, %5864
  %5885 = fmul fast float %5794, %5878
  %5886 = fmul fast float %5885, %5849
  %5887 = fmul fast float %5886, %5865
  %5888 = fadd fast float %5868, %4889
  %5889 = fadd fast float %5888, %5881
  %5890 = fmul fast float %5889, %4899
  %5891 = fadd fast float %5869, %4890
  %5892 = fadd fast float %5891, %5884
  %5893 = fmul fast float %5892, %4899
  %5894 = fadd fast float %5870, %4891
  %5895 = fadd fast float %5894, %5887
  %5896 = fmul fast float %5895, %4899
  %5897 = fmul fast float %5534, 0x4012D0A400000000
  %5898 = fmul fast float %5849, %5794
  %5899 = fmul fast float %5849, %5793
  %5900 = fmul fast float %5849, %5792
  %5901 = fsub fast float 1.000000e+00, %5542
  %5902 = fmul fast float %5901, %4899
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = fsub fast float 1.000000e+00, %5904
  %5906 = fadd fast float %5897, 0x3FDB6377A0000000
  %5907 = fmul fast float %5905, %5906
  %5908 = call float @dx.op.dot3.f32(i32 55, float %4969, float %4970, float %4971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = fadd fast float %5907, %5908
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = fcmp fast olt float %4953, 1.270000e+02
  %5912 = fmul fast float %4953, 0xBFF7154760000000
  %5913 = fmul fast float %5912, %5867
  %5914 = call float @dx.op.unary.f32(i32 21, float %5913)  ; Exp(value)
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = select i1 %5911, float %5915, float 0.000000e+00
  %5917 = fmul fast float %5916, %5849
  %5918 = fadd fast float %5917, -1.000000e+00
  %5919 = fmul fast float %5918, %4899
  %5920 = fadd fast float %5919, 1.000000e+00
  %5921 = fcmp fast olt float %4952, 1.270000e+02
  %5922 = fmul fast float %4952, 0xBFF7154760000000
  %5923 = fmul fast float %5922, %5867
  %5924 = call float @dx.op.unary.f32(i32 21, float %5923)  ; Exp(value)
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = select i1 %5921, float %5925, float 0.000000e+00
  %5927 = fmul fast float %5926, %5849
  %5928 = fadd fast float %5927, -1.000000e+00
  %5929 = fmul fast float %5928, %4899
  %5930 = fadd fast float %5929, 1.000000e+00
  %5931 = fcmp fast olt float %4951, 1.270000e+02
  %5932 = fmul fast float %4951, 0xBFF7154760000000
  %5933 = fmul fast float %5932, %5867
  %5934 = call float @dx.op.unary.f32(i32 21, float %5933)  ; Exp(value)
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = select i1 %5931, float %5935, float 0.000000e+00
  %5937 = fmul fast float %5936, %5849
  %5938 = fadd fast float %5937, -1.000000e+00
  %5939 = fmul fast float %5938, %4899
  %5940 = fadd fast float %5939, 1.000000e+00
  %5941 = call float @dx.op.binary.f32(i32 35, float %5910, float 0x3F847AE140000000)  ; FMax(a,b)
  %5942 = fmul fast float %5941, %5941
  %5943 = fmul fast float %5942, %5942
  %5944 = fmul fast float %5943, 0xC00A935000000000
  %5945 = call float @dx.op.unary.f32(i32 21, float %5944)  ; Exp(value)
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = fmul fast float %5946, %5796
  %5948 = fmul fast float %5947, %5940
  %5949 = fmul fast float %5930, %5797
  %5950 = fmul fast float %5949, %5946
  %5951 = fmul fast float %5920, %5798
  %5952 = fmul fast float %5951, %5946
  %5953 = fadd fast float %5948, %5900
  %5954 = fmul fast float %5953, %4899
  %5955 = fadd fast float %5950, %5899
  %5956 = fmul fast float %5955, %4899
  %5957 = fadd fast float %5952, %5898
  %5958 = fmul fast float %5957, %4899
  %5959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5959, 3
  %5961 = fcmp fast oeq float %5960, 0.000000e+00
  br i1 %5961, label %6304, label %5962

; <label>:5962                                    ; preds = %5843
  %5963 = extractvalue %dx.types.CBufRet.f32 %5959, 0
  %5964 = extractvalue %dx.types.CBufRet.f32 %5959, 1
  %5965 = extractvalue %dx.types.CBufRet.f32 %5959, 2
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = select i1 %170, float %5971, float %5967
  %5975 = select i1 %170, float %5973, float %5968
  %5976 = select i1 %170, float %5972, float %5969
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5979 = fcmp fast une float %5978, 0.000000e+00
  br i1 %5979, label %5980, label %5997

; <label>:5980                                    ; preds = %5962
  %5981 = fptoui float %73 to i32
  %5982 = fptoui float %74 to i32
  %5983 = lshr i32 %5981, 4
  %5984 = lshr i32 %5982, 4
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = fptoui float %5986 to i32
  %5988 = add i32 %5987, 15
  %5989 = lshr i32 %5988, 4
  %5990 = mul i32 %5989, %5984
  %5991 = add i32 %5990, %5983
  %5992 = shl i32 %5991, 3
  %5993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5992, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.i32 %5993, 0
  %5995 = and i32 %5994, -268435456
  %5996 = icmp eq i32 %5995, -1342177280
  br i1 %5996, label %6007, label %5997

; <label>:5997                                    ; preds = %5980, %5962
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6000 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6001 = fmul fast float %5999, %73
  %6002 = fmul fast float %6000, %74
  %6003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %6001, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.ResRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.ResRet.f32 %6003, 2
  br label %6007

; <label>:6007                                    ; preds = %5997, %5980
  %6008 = phi float [ %6004, %5997 ], [ 0.000000e+00, %5980 ]
  %6009 = phi float [ %6005, %5997 ], [ 0.000000e+00, %5980 ]
  %6010 = phi float [ %6006, %5997 ], [ 0.000000e+00, %5980 ]
  %6011 = call float @dx.op.binary.f32(i32 36, float %6009, float %6010)  ; FMin(a,b)
  %6012 = call float @dx.op.binary.f32(i32 36, float %6008, float %6011)  ; FMin(a,b)
  %6013 = fcmp fast ogt float %6012, 0.000000e+00
  br i1 %6013, label %6014, label %6304, !dx.controlflow.hints !73

; <label>:6014                                    ; preds = %6007
  %6015 = fmul fast float %6008, %5974
  %6016 = fmul fast float %6009, %5975
  %6017 = fmul fast float %6010, %5976
  %6018 = fsub fast float %5963, %5532
  %6019 = fsub fast float %5964, %5531
  %6020 = fsub fast float %5965, %5530
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = call float @dx.op.unary.f32(i32 25, float %6021)  ; Rsqrt(value)
  %6023 = fmul fast float %6022, %6018
  %6024 = fmul fast float %6022, %6019
  %6025 = fmul fast float %6022, %6020
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5963, float %5964, float %5965, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5528, float %5527, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6029 = fmul fast float %6028, %6028
  %6030 = fmul fast float %6029, %5559
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = fmul fast float %6031, %6028
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %5538, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fmul fast float %6033, %6033
  %6035 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6036 = call float @dx.op.binary.f32(i32 35, float %5901, float 0x3F847AE140000000)  ; FMax(a,b)
  %6037 = fmul fast float %6036, %6036
  %6038 = fmul fast float %6037, %6037
  %6039 = fsub fast float 1.000000e+00, %6038
  %6040 = fmul fast float %5546, %5546
  %6041 = fmul fast float %6040, %6039
  %6042 = fadd fast float %6041, %6038
  %6043 = bitcast float %6042 to i32
  %6044 = ashr i32 %6043, 1
  %6045 = add nsw i32 %6044, 532487669
  %6046 = bitcast i32 %6045 to float
  %6047 = fadd fast float %6046, %5546
  %6048 = fmul fast float %6038, %6034
  %6049 = fsub fast float 1.000000e+00, %6034
  %6050 = fadd fast float %6049, %6048
  %6051 = fmul fast float %6035, %6035
  %6052 = fmul fast float %6051, %6039
  %6053 = fadd fast float %6052, %6038
  %6054 = bitcast float %6053 to i32
  %6055 = ashr i32 %6054, 1
  %6056 = add nsw i32 %6055, 532487669
  %6057 = bitcast i32 %6056 to float
  %6058 = fadd fast float %6057, %6035
  %6059 = fmul fast float %6050, %6050
  %6060 = fmul fast float %6059, %6047
  %6061 = fmul fast float %6060, %6058
  %6062 = fdiv fast float 0x3FF0A00000000000, %6061
  %6063 = fmul fast float %6062, %6038
  %6064 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6065 = fsub fast float 1.000000e+00, %6064
  %6066 = bitcast float %6065 to i32
  %6067 = sitofp i32 %6066 to float
  %6068 = fmul fast float %6067, 5.000000e+00
  %6069 = fadd fast float %6068, 0xC1EFBF8940000000
  %6070 = fptosi float %6069 to i32
  %6071 = bitcast i32 %6070 to float
  %6072 = fsub fast float 1.000000e+00, %5533
  %6073 = fsub fast float 1.000000e+00, %5534
  %6074 = fsub fast float 1.000000e+00, %5544
  %6075 = fmul fast float %6071, %6072
  %6076 = fmul fast float %6071, %6073
  %6077 = fmul fast float %6071, %6074
  %6078 = fadd fast float %6075, %5533
  %6079 = fadd fast float %6076, %5534
  %6080 = fadd fast float %6077, %5544
  br i1 %5816, label %6081, label %6104

; <label>:6081                                    ; preds = %6014
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6064, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = fadd fast float %6083, -5.000000e-01
  %6087 = fadd fast float %6084, -5.000000e-01
  %6088 = fadd fast float %6085, -5.000000e-01
  %6089 = fmul fast float %5533, 4.000000e+00
  %6090 = fmul fast float %6089, %6072
  %6091 = fmul fast float %6090, %6086
  %6092 = fmul fast float %5534, 4.000000e+00
  %6093 = fmul fast float %6092, %6073
  %6094 = fmul fast float %6093, %6087
  %6095 = fmul fast float %5544, 4.000000e+00
  %6096 = fmul fast float %6095, %6074
  %6097 = fmul fast float %6096, %6088
  %6098 = fadd fast float %6091, %6078
  %6099 = fadd fast float %6094, %6079
  %6100 = fadd fast float %6097, %6080
  %6101 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6102 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  br label %6104

; <label>:6104                                    ; preds = %6081, %6014
  %6105 = phi float [ %6101, %6081 ], [ %6078, %6014 ]
  %6106 = phi float [ %6102, %6081 ], [ %6079, %6014 ]
  %6107 = phi float [ %6103, %6081 ], [ %6080, %6014 ]
  %6108 = fmul fast float %6026, 9.843750e-01
  %6109 = fadd fast float %6108, 7.812500e-03
  %6110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6109, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 2
  %6112 = extractvalue %dx.types.ResRet.f32 %6110, 3
  %6113 = fmul fast float %6111, %5533
  %6114 = fmul fast float %6111, %5534
  %6115 = fmul fast float %6111, %5544
  %6116 = fadd fast float %6113, %6112
  %6117 = fadd fast float %6114, %6112
  %6118 = fadd fast float %6115, %6112
  br i1 %5816, label %6119, label %6142

; <label>:6119                                    ; preds = %6104
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = fadd fast float %6121, -5.000000e-01
  %6125 = fadd fast float %6122, -5.000000e-01
  %6126 = fadd fast float %6123, -5.000000e-01
  %6127 = fmul fast float %5533, 4.000000e+00
  %6128 = fmul fast float %6127, %6072
  %6129 = fmul fast float %6128, %6124
  %6130 = fmul fast float %5534, 4.000000e+00
  %6131 = fmul fast float %6130, %6073
  %6132 = fmul fast float %6131, %6125
  %6133 = fmul fast float %5544, 4.000000e+00
  %6134 = fmul fast float %6133, %6074
  %6135 = fmul fast float %6134, %6126
  %6136 = fadd fast float %6129, %6116
  %6137 = fadd fast float %6132, %6117
  %6138 = fadd fast float %6135, %6118
  %6139 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6140 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  br label %6142

; <label>:6142                                    ; preds = %6119, %6104
  %6143 = phi float [ %6139, %6119 ], [ %6116, %6104 ]
  %6144 = phi float [ %6140, %6119 ], [ %6117, %6104 ]
  %6145 = phi float [ %6141, %6119 ], [ %6118, %6104 ]
  %6146 = call float @dx.op.binary.f32(i32 35, float %6144, float %6145)  ; FMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 35, float %6143, float %6146)  ; FMax(a,b)
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = call float @dx.op.binary.f32(i32 35, float %6035, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6150 = fdiv fast float %4255, %6149
  %6151 = fmul fast float %5932, %6150
  %6152 = fmul fast float %5922, %6150
  %6153 = fmul fast float %5912, %6150
  %6154 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6155 = call float @dx.op.unary.f32(i32 21, float %6152)  ; Exp(value)
  %6156 = call float @dx.op.unary.f32(i32 21, float %6153)  ; Exp(value)
  %6157 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = select i1 %5931, float %6157, float 0.000000e+00
  %6161 = select i1 %5921, float %6158, float 0.000000e+00
  %6162 = select i1 %5911, float %6159, float 0.000000e+00
  %6163 = fsub fast float -0.000000e+00, %5536
  %6164 = fsub fast float -0.000000e+00, %5537
  %6165 = fsub fast float -0.000000e+00, %5538
  %6166 = call float @dx.op.dot3.f32(i32 55, float %5963, float %5964, float %5965, float %6163, float %6164, float %6165)  ; Dot3(ax,ay,az,bx,by,bz)
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = fmul fast float %6167, 9.843750e-01
  %6169 = fadd fast float %6168, 7.812500e-03
  %6170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6169, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6171 = extractvalue %dx.types.ResRet.f32 %6170, 2
  %6172 = extractvalue %dx.types.ResRet.f32 %6170, 3
  %6173 = fmul fast float %6171, %5533
  %6174 = fmul fast float %6171, %5534
  %6175 = fmul fast float %6171, %5544
  %6176 = fadd fast float %6173, %6172
  %6177 = fadd fast float %6174, %6172
  %6178 = fadd fast float %6175, %6172
  br i1 %5816, label %6179, label %6202

; <label>:6179                                    ; preds = %6142
  %6180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6181 = extractvalue %dx.types.ResRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.ResRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.ResRet.f32 %6180, 2
  %6184 = fadd fast float %6181, -5.000000e-01
  %6185 = fadd fast float %6182, -5.000000e-01
  %6186 = fadd fast float %6183, -5.000000e-01
  %6187 = fmul fast float %5533, 4.000000e+00
  %6188 = fmul fast float %6187, %6072
  %6189 = fmul fast float %6188, %6184
  %6190 = fmul fast float %5534, 4.000000e+00
  %6191 = fmul fast float %6190, %6073
  %6192 = fmul fast float %6191, %6185
  %6193 = fmul fast float %5544, 4.000000e+00
  %6194 = fmul fast float %6193, %6074
  %6195 = fmul fast float %6194, %6186
  %6196 = fadd fast float %6189, %6176
  %6197 = fadd fast float %6192, %6177
  %6198 = fadd fast float %6195, %6178
  %6199 = call float @dx.op.unary.f32(i32 7, float %6196)  ; Saturate(value)
  %6200 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6201 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  br label %6202

; <label>:6202                                    ; preds = %6179, %6142
  %6203 = phi float [ %6199, %6179 ], [ %6176, %6142 ]
  %6204 = phi float [ %6200, %6179 ], [ %6177, %6142 ]
  %6205 = phi float [ %6201, %6179 ], [ %6178, %6142 ]
  %6206 = call float @dx.op.binary.f32(i32 35, float %6204, float %6205)  ; FMax(a,b)
  %6207 = call float @dx.op.binary.f32(i32 35, float %6203, float %6206)  ; FMax(a,b)
  %6208 = fsub fast float 1.000000e+00, %6207
  %6209 = fmul fast float %5901, %5906
  %6210 = fadd fast float %5908, %6209
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fsub fast float %5963, %5552
  %6213 = fsub fast float %5964, %5553
  %6214 = fsub fast float %5965, %5554
  %6215 = call float @dx.op.dot3.f32(i32 55, float %6212, float %6213, float %6214, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = call float @dx.op.unary.f32(i32 25, float %6215)  ; Rsqrt(value)
  %6217 = fmul fast float %6216, %6212
  %6218 = fmul fast float %6216, %6213
  %6219 = fmul fast float %6216, %6214
  %6220 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = fmul fast float %6220, %6220
  %6222 = call float @dx.op.unary.f32(i32 6, float %6167)  ; FAbs(value)
  %6223 = call float @dx.op.binary.f32(i32 35, float %6211, float 0x3F847AE140000000)  ; FMax(a,b)
  %6224 = fmul fast float %6223, %6223
  %6225 = fmul fast float %6224, %6224
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = fmul fast float %6040, %6226
  %6228 = fadd fast float %6227, %6225
  %6229 = bitcast float %6228 to i32
  %6230 = ashr i32 %6229, 1
  %6231 = add nsw i32 %6230, 532487669
  %6232 = bitcast i32 %6231 to float
  %6233 = fadd fast float %6232, %5546
  %6234 = fmul fast float %6225, %6221
  %6235 = fsub fast float 1.000000e+00, %6221
  %6236 = fadd fast float %6235, %6234
  %6237 = fmul fast float %6222, %6222
  %6238 = fmul fast float %6237, %6226
  %6239 = fadd fast float %6238, %6225
  %6240 = bitcast float %6239 to i32
  %6241 = ashr i32 %6240, 1
  %6242 = add nsw i32 %6241, 532487669
  %6243 = bitcast i32 %6242 to float
  %6244 = fadd fast float %6243, %6222
  %6245 = fmul fast float %6236, %6236
  %6246 = fmul fast float %6245, %6233
  %6247 = fmul fast float %6246, %6244
  %6248 = fdiv fast float 0x3FF0A00000000000, %6247
  %6249 = fmul fast float %6248, %6225
  %6250 = fmul fast float %6167, %6160
  %6251 = fmul fast float %6167, %6161
  %6252 = fmul fast float %6167, %6162
  %6253 = fmul fast float %6250, %6208
  %6254 = fmul fast float %6253, %6249
  %6255 = fmul fast float %6251, %6208
  %6256 = fmul fast float %6255, %6249
  %6257 = fmul fast float %6252, %6208
  %6258 = fmul fast float %6257, %6249
  %6259 = fmul fast float %6105, %6063
  %6260 = fmul fast float %6106, %6063
  %6261 = fmul fast float %6107, %6063
  %6262 = fsub fast float 1.000000e+00, %6027
  %6263 = bitcast float %6262 to i32
  %6264 = sitofp i32 %6263 to float
  %6265 = fmul fast float %6264, 5.000000e+00
  %6266 = fadd fast float %6265, 0xC1EFBF8940000000
  %6267 = fptosi float %6266 to i32
  %6268 = bitcast i32 %6267 to float
  %6269 = fmul fast float %6268, %4903
  %6270 = fmul fast float %6148, %6269
  %6271 = fmul fast float %6270, %5863
  %6272 = fmul fast float %6270, %5864
  %6273 = fmul fast float %6270, %5865
  %6274 = fadd fast float %6271, %6259
  %6275 = fadd fast float %6272, %6260
  %6276 = fadd fast float %6273, %6261
  %6277 = fmul fast float %6274, %6032
  %6278 = fmul fast float %6275, %6032
  %6279 = fmul fast float %6276, %6032
  %6280 = fmul fast float %6032, %6015
  %6281 = fmul fast float %6280, %6148
  %6282 = fmul fast float %6032, %6016
  %6283 = fmul fast float %6282, %6148
  %6284 = fmul fast float %6032, %6017
  %6285 = fmul fast float %6284, %6148
  %6286 = fadd fast float %6277, %6254
  %6287 = fadd fast float %6278, %6256
  %6288 = fadd fast float %6279, %6258
  %6289 = fmul fast float %6286, %6015
  %6290 = fmul fast float %6287, %6016
  %6291 = fmul fast float %6288, %6017
  %6292 = fadd fast float %6281, %5953
  %6293 = fmul fast float %6292, %4899
  %6294 = fadd fast float %6283, %5955
  %6295 = fmul fast float %6294, %4899
  %6296 = fadd fast float %6285, %5957
  %6297 = fmul fast float %6296, %4899
  %6298 = fadd fast float %6289, %5889
  %6299 = fmul fast float %6298, %4899
  %6300 = fadd fast float %6290, %5892
  %6301 = fmul fast float %6300, %4899
  %6302 = fadd fast float %6291, %5895
  %6303 = fmul fast float %6302, %4899
  br label %6304

; <label>:6304                                    ; preds = %6202, %6007, %5843
  %6305 = phi float [ %5890, %5843 ], [ %5890, %6007 ], [ %6299, %6202 ]
  %6306 = phi float [ %5893, %5843 ], [ %5893, %6007 ], [ %6301, %6202 ]
  %6307 = phi float [ %5896, %5843 ], [ %5896, %6007 ], [ %6303, %6202 ]
  %6308 = phi float [ %5954, %5843 ], [ %5954, %6007 ], [ %6293, %6202 ]
  %6309 = phi float [ %5956, %5843 ], [ %5956, %6007 ], [ %6295, %6202 ]
  %6310 = phi float [ %5958, %5843 ], [ %5958, %6007 ], [ %6297, %6202 ]
  %6311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.i32 %6311, 0
  %6313 = icmp eq i32 %6312, 0
  br i1 %6313, label %6885, label %6314

; <label>:6314                                    ; preds = %6304
  %6315 = fptoui float %73 to i32
  %6316 = fptoui float %74 to i32
  %6317 = lshr i32 %6315, 4
  %6318 = lshr i32 %6316, 4
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 0
  %6321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6318, i32 %6320, i32 %6317)  ; UMad(a,b,c)
  %6322 = add nsw i32 %6312, -1
  %6323 = call i32 @dx.op.binary.i32(i32 37, i32 %6322, i32 0)  ; IMax(a,b)
  %6324 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %6325 = fptoui float %6324 to i32
  %6326 = lshr i32 %6325, 5
  %6327 = call i32 @dx.op.binary.i32(i32 40, i32 %6326, i32 8191)  ; UMin(a,b)
  %6328 = shl i32 %6327, 2
  %6329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6328, i32 undef)  ; BufferLoad(srv,index,wot)
  %6330 = extractvalue %dx.types.ResRet.i32 %6329, 0
  %6331 = lshr i32 %6330, 16
  %6332 = and i32 %6330, 65535
  %6333 = lshr i32 %6330, 21
  %6334 = lshr i32 %6332, 5
  %6335 = call i32 @dx.op.binary.i32(i32 40, i32 %6334, i32 %6323)  ; UMin(a,b)
  %6336 = icmp ugt i32 %6333, %6335
  br i1 %6336, label %6885, label %6337

; <label>:6337                                    ; preds = %6314
  br label %6338

; <label>:6338                                    ; preds = %6875, %6337
  %6339 = phi i32 [ %6882, %6875 ], [ %6333, %6337 ]
  %6340 = phi float [ %6876, %6875 ], [ %6305, %6337 ]
  %6341 = phi float [ %6877, %6875 ], [ %6306, %6337 ]
  %6342 = phi float [ %6878, %6875 ], [ %6307, %6337 ]
  %6343 = phi float [ %6879, %6875 ], [ %6308, %6337 ]
  %6344 = phi float [ %6880, %6875 ], [ %6309, %6337 ]
  %6345 = phi float [ %6881, %6875 ], [ %6310, %6337 ]
  %6346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.i32 %6346, 0
  %6348 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6321, i32 %6347, i32 %6339)  ; UMad(a,b,c)
  %6349 = shl i32 %6348, 2
  %6350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6349, i32 undef)  ; BufferLoad(srv,index,wot)
  %6351 = extractvalue %dx.types.ResRet.i32 %6350, 0
  %6352 = shl i32 %6339, 5
  %6353 = sub nsw i32 %6331, %6352
  %6354 = call i32 @dx.op.binary.i32(i32 37, i32 %6353, i32 0)  ; IMax(a,b)
  %6355 = call i32 @dx.op.binary.i32(i32 38, i32 %6354, i32 31)  ; IMin(a,b)
  %6356 = sub nsw i32 1, %6331
  %6357 = add nsw i32 %6356, %6332
  %6358 = call i32 @dx.op.binary.i32(i32 37, i32 %6357, i32 0)  ; IMax(a,b)
  %6359 = call i32 @dx.op.binary.i32(i32 38, i32 %6358, i32 32)  ; IMin(a,b)
  %6360 = and i32 %6359, 31
  %6361 = shl i32 -1, %6360
  %6362 = xor i32 %6361, -1
  %6363 = and i32 %6355, 31
  %6364 = shl i32 %6362, %6363
  %6365 = icmp eq i32 %6359, 32
  %6366 = select i1 %6365, i32 -1, i32 %6364
  %6367 = and i32 %6366, %6351
  %6368 = icmp eq i32 %6367, 0
  br i1 %6368, label %6875, label %6369

; <label>:6369                                    ; preds = %6338
  br label %6370

; <label>:6370                                    ; preds = %6454, %6369
  %6371 = phi i32 [ %6382, %6454 ], [ %6367, %6369 ]
  %6372 = phi float [ %6455, %6454 ], [ %6340, %6369 ]
  %6373 = phi float [ %6456, %6454 ], [ %6341, %6369 ]
  %6374 = phi float [ %6457, %6454 ], [ %6342, %6369 ]
  %6375 = phi float [ %6458, %6454 ], [ %6343, %6369 ]
  %6376 = phi float [ %6459, %6454 ], [ %6344, %6369 ]
  %6377 = phi float [ %6460, %6454 ], [ %6345, %6369 ]
  %6378 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6371)  ; FirstbitLo(value)
  %6379 = add i32 %6378, %6352
  %6380 = and i32 %6378, 31
  %6381 = shl i32 1, %6380
  %6382 = xor i32 %6381, %6371
  %6383 = mul i32 %6379, 112
  %6384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6383, i32 undef)  ; BufferLoad(srv,index,wot)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.ResRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.ResRet.f32 %6384, 2
  %6388 = or i32 %6383, 12
  %6389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6388, i32 undef)  ; BufferLoad(srv,index,wot)
  %6390 = extractvalue %dx.types.ResRet.f32 %6389, 0
  %6391 = add i32 %6383, 28
  %6392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6391, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.i32 %6392, 0
  %6394 = add i32 %6383, 44
  %6395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6394, i32 undef)  ; BufferLoad(srv,index,wot)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 0
  %6397 = add i32 %6383, 48
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = add i32 %6383, 80
  %6403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6402, i32 undef)  ; BufferLoad(srv,index,wot)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6403, 2
  %6406 = call float @dx.op.dot3.f32(i32 55, float %6385, float %6386, float %6387, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6407 = select i1 %170, float %6404, float %6385
  %6408 = select i1 %170, float %6406, float %6386
  %6409 = select i1 %170, float %6405, float %6387
  %6410 = icmp slt i32 %6393, 0
  %6411 = fsub fast float %6399, %128
  %6412 = fsub fast float %6400, %129
  %6413 = fsub fast float %6401, %130
  %6414 = call float @dx.op.dot3.f32(i32 55, float %6411, float %6412, float %6413, float %6411, float %6412, float %6413)  ; Dot3(ax,ay,az,bx,by,bz)
  %6415 = call float @dx.op.unary.f32(i32 24, float %6414)  ; Sqrt(value)
  %6416 = fdiv fast float 1.000000e+00, %6415
  %6417 = fmul fast float %6416, %6411
  %6418 = fmul fast float %6416, %6412
  %6419 = fmul fast float %6416, %6413
  %6420 = fadd fast float %6415, %6390
  %6421 = fdiv fast float 1.000000e+00, %6420
  %6422 = fmul float %6396, %6421
  %6423 = fmul float %6422, %6422
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = and i32 %6381, %6367
  %6426 = icmp eq i32 %6425, 0
  br i1 %6426, label %6449, label %6427, !dx.controlflow.hints !74

; <label>:6427                                    ; preds = %6370
  %6428 = lshr i32 %6315, 5
  %6429 = lshr i32 %6316, 5
  %6430 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6428, i32 %6429, i32 %6379, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6431 = extractvalue %dx.types.ResRet.i32 %6430, 0
  %6432 = and i32 %6431, 3
  %6433 = icmp eq i32 %6432, 0
  %6434 = select i1 %6433, float 1.000000e+00, float 0.000000e+00
  %6435 = icmp eq i32 %6432, 3
  br i1 %6435, label %6436, label %6449

; <label>:6436                                    ; preds = %6427
  %6437 = lshr i32 %6431, 10
  %6438 = and i32 %6437, 8160
  %6439 = and i32 %6316, 31
  %6440 = or i32 %6438, %6439
  %6441 = lshr i32 %6431, 1
  %6442 = and i32 %6441, 16352
  %6443 = and i32 %6315, 31
  %6444 = or i32 %6442, %6443
  %6445 = lshr i32 %6431, 23
  %6446 = and i32 %6445, 255
  %6447 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6444, i32 %6440, i32 %6446, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  br label %6449

; <label>:6449                                    ; preds = %6436, %6427, %6370
  %6450 = phi float [ %6448, %6436 ], [ %6434, %6427 ], [ 0.000000e+00, %6370 ]
  %6451 = call float @dx.op.binary.f32(i32 36, float %6450, float %6450)  ; FMin(a,b)
  %6452 = call float @dx.op.binary.f32(i32 36, float %6450, float %6451)  ; FMin(a,b)
  %6453 = fcmp fast ogt float %6452, 0.000000e+00
  br i1 %6453, label %6462, label %6454, !dx.controlflow.hints !75

; <label>:6454                                    ; preds = %6828, %6449
  %6455 = phi float [ %6372, %6449 ], [ %6871, %6828 ]
  %6456 = phi float [ %6373, %6449 ], [ %6872, %6828 ]
  %6457 = phi float [ %6374, %6449 ], [ %6873, %6828 ]
  %6458 = phi float [ %6375, %6449 ], [ %6865, %6828 ]
  %6459 = phi float [ %6376, %6449 ], [ %6866, %6828 ]
  %6460 = phi float [ %6377, %6449 ], [ %6867, %6828 ]
  %6461 = icmp eq i32 %6371, %6381
  br i1 %6461, label %6874, label %6370

; <label>:6462                                    ; preds = %6449
  %6463 = fmul fast float %6450, %6407
  %6464 = fmul fast float %6450, %6408
  %6465 = fmul fast float %6450, %6409
  %6466 = fsub fast float %6401, %5332
  %6467 = fcmp fast ogt float %6466, 0.000000e+00
  %6468 = fsub fast float %130, %5332
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = xor i1 %6469, %6467
  %6471 = fsub fast float %5332, %6401
  %6472 = fmul fast float %6471, 2.000000e+00
  %6473 = fadd fast float %6472, %6401
  %6474 = select i1 %6470, float %6401, float %6473
  %6475 = fsub fast float %6474, %130
  %6476 = call float @dx.op.dot3.f32(i32 55, float %6411, float %6412, float %6475, float %6411, float %6412, float %6475)  ; Dot3(ax,ay,az,bx,by,bz)
  %6477 = call float @dx.op.unary.f32(i32 25, float %6476)  ; Rsqrt(value)
  %6478 = fmul fast float %6477, %6411
  %6479 = fmul fast float %6477, %6412
  %6480 = fmul fast float %6477, %6475
  %6481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6482 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6478, float %6479, float %6480)  ; Dot3(ax,ay,az,bx,by,bz)
  %6483 = fdiv fast float 1.000000e+00, %6482
  %6484 = fmul fast float %6483, %6481
  %6485 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6468, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6486 = fcmp fast ogt float %6485, 0.000000e+00
  %6487 = fcmp fast olt float %6485, 0.000000e+00
  %6488 = zext i1 %6486 to i32
  %6489 = zext i1 %6487 to i32
  %6490 = sub nsw i32 %6488, %6489
  %6491 = sitofp i32 %6490 to float
  %6492 = fsub fast float %6474, %5332
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6411, float %6412, float %6492, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = fcmp fast ogt float %6493, 0.000000e+00
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = zext i1 %6494 to i32
  %6497 = zext i1 %6495 to i32
  %6498 = sub nsw i32 %6496, %6497
  %6499 = sitofp i32 %6498 to float
  %6500 = fcmp fast une float %6491, %6499
  br i1 %6500, label %6501, label %6511

; <label>:6501                                    ; preds = %6462
  %6502 = fmul fast float %6484, %6480
  %6503 = fmul fast float %6484, %6479
  %6504 = fmul fast float %6484, %6478
  %6505 = fmul fast float %6504, %6504
  %6506 = fmul fast float %6503, %6503
  %6507 = fadd fast float %6505, %6506
  %6508 = fmul fast float %6502, %6502
  %6509 = fadd fast float %6507, %6508
  %6510 = call float @dx.op.unary.f32(i32 24, float %6509)  ; Sqrt(value)
  br label %6523

; <label>:6511                                    ; preds = %6462
  %6512 = icmp slt i32 %6490, 0
  br i1 %6512, label %6513, label %6523

; <label>:6513                                    ; preds = %6511
  %6514 = fsub fast float %128, %6399
  %6515 = fsub fast float %129, %6400
  %6516 = fsub fast float %130, %6474
  %6517 = fmul fast float %6514, %6514
  %6518 = fmul fast float %6515, %6515
  %6519 = fadd fast float %6517, %6518
  %6520 = fmul fast float %6516, %6516
  %6521 = fadd fast float %6519, %6520
  %6522 = call float @dx.op.unary.f32(i32 24, float %6521)  ; Sqrt(value)
  br label %6523

; <label>:6523                                    ; preds = %6513, %6511, %6501
  %6524 = phi float [ %6510, %6501 ], [ %6522, %6513 ], [ 0.000000e+00, %6511 ]
  %6525 = and i1 %6469, %6467
  %6526 = fsub fast float -0.000000e+00, %6524
  %6527 = select i1 %6525, float -0.000000e+00, float %6526
  %6528 = fmul fast float %5333, 0x3FF7154760000000
  %6529 = fmul fast float %6528, %6527
  %6530 = fmul fast float %5334, 0x3FF7154760000000
  %6531 = fmul fast float %6530, %6527
  %6532 = fmul fast float %5335, 0x3FF7154760000000
  %6533 = fmul fast float %6532, %6527
  %6534 = call float @dx.op.unary.f32(i32 21, float %6529)  ; Exp(value)
  %6535 = call float @dx.op.unary.f32(i32 21, float %6531)  ; Exp(value)
  %6536 = call float @dx.op.unary.f32(i32 21, float %6533)  ; Exp(value)
  %6537 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  %6538 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6539 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6540 = fmul fast float %6463, %6537
  %6541 = fmul fast float %6464, %6538
  %6542 = fmul fast float %6465, %6539
  %6543 = fsub fast float %6417, %5532
  %6544 = fsub fast float %6418, %5531
  %6545 = fsub fast float %6419, %5530
  %6546 = call float @dx.op.dot3.f32(i32 55, float %6543, float %6544, float %6545, float %6543, float %6544, float %6545)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = call float @dx.op.unary.f32(i32 25, float %6546)  ; Rsqrt(value)
  %6548 = fmul fast float %6547, %6543
  %6549 = fmul fast float %6547, %6544
  %6550 = fmul fast float %6547, %6545
  %6551 = call float @dx.op.dot3.f32(i32 55, float %6417, float %6418, float %6419, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %6552 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5528, float %5527, float %6548, float %6549, float %6550)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6554 = fmul fast float %6553, %6424
  %6555 = fmul fast float %6553, %6553
  %6556 = fmul fast float %6555, %5559
  %6557 = call float @dx.op.unary.f32(i32 7, float %6556)  ; Saturate(value)
  %6558 = fmul fast float %6554, %6557
  %6559 = bitcast float %6414 to i32
  %6560 = ashr i32 %6559, 1
  %6561 = sub nsw i32 1597463007, %6560
  %6562 = bitcast i32 %6561 to float
  %6563 = fmul fast float %6562, %6411
  %6564 = fmul fast float %6562, %6412
  %6565 = fmul fast float %6562, %6413
  %6566 = fsub fast float %6563, %5532
  %6567 = fsub fast float %6564, %5531
  %6568 = fsub fast float %6565, %5530
  %6569 = call float @dx.op.dot3.f32(i32 55, float %6566, float %6567, float %6568, float %6566, float %6567, float %6568)  ; Dot3(ax,ay,az,bx,by,bz)
  %6570 = call float @dx.op.unary.f32(i32 25, float %6569)  ; Rsqrt(value)
  %6571 = fmul fast float %6566, %6570
  %6572 = fmul fast float %6567, %6570
  %6573 = fmul fast float %6568, %6570
  %6574 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %5538, float %6571, float %6572, float %6573)  ; Dot3(ax,ay,az,bx,by,bz)
  %6575 = fmul fast float %6574, %6574
  %6576 = call float @dx.op.unary.f32(i32 6, float %6551)  ; FAbs(value)
  %6577 = call float @dx.op.binary.f32(i32 35, float %5901, float 0x3F847AE140000000)  ; FMax(a,b)
  %6578 = fmul fast float %6577, %6577
  %6579 = fmul fast float %6578, %6578
  %6580 = fsub fast float 1.000000e+00, %6579
  %6581 = fmul fast float %5546, %5546
  %6582 = fmul fast float %6581, %6580
  %6583 = fadd fast float %6582, %6579
  %6584 = bitcast float %6583 to i32
  %6585 = ashr i32 %6584, 1
  %6586 = add nsw i32 %6585, 532487669
  %6587 = bitcast i32 %6586 to float
  %6588 = fadd fast float %6587, %5546
  %6589 = fmul fast float %6579, %6575
  %6590 = fsub fast float 1.000000e+00, %6575
  %6591 = fadd fast float %6590, %6589
  %6592 = fmul fast float %6576, %6576
  %6593 = fmul fast float %6592, %6580
  %6594 = fadd fast float %6593, %6579
  %6595 = bitcast float %6594 to i32
  %6596 = ashr i32 %6595, 1
  %6597 = add nsw i32 %6596, 532487669
  %6598 = bitcast i32 %6597 to float
  %6599 = fadd fast float %6598, %6576
  %6600 = fmul fast float %6591, %6591
  %6601 = fmul fast float %6600, %6588
  %6602 = fmul fast float %6601, %6599
  %6603 = fdiv fast float 1.000000e+00, %6602
  %6604 = bitcast float %6579 to i32
  %6605 = sitofp i32 %6604 to float
  %6606 = fmul fast float %6605, 0x3FE7F73180000000
  %6607 = fadd fast float %6606, 0x41AFE27C40000000
  %6608 = fptosi float %6607 to i32
  %6609 = bitcast i32 %6608 to float
  %6610 = fmul fast float %6396, 0x3FD80E9D60000000
  %6611 = fmul fast float %6610, %6562
  %6612 = fadd fast float %6609, %6611
  %6613 = bitcast float %6612 to i32
  %6614 = sub nsw i32 2129859010, %6613
  %6615 = bitcast i32 %6614 to float
  %6616 = fmul fast float %6579, %6603
  %6617 = fmul fast float %6616, %6609
  %6618 = fmul fast float %6617, %6615
  %6619 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6620 = fsub fast float 1.000000e+00, %6619
  %6621 = bitcast float %6620 to i32
  %6622 = sitofp i32 %6621 to float
  %6623 = fmul fast float %6622, 5.000000e+00
  %6624 = fadd fast float %6623, 0xC1EFBF8940000000
  %6625 = fptosi float %6624 to i32
  %6626 = bitcast i32 %6625 to float
  %6627 = fsub fast float 1.000000e+00, %5533
  %6628 = fsub fast float 1.000000e+00, %5534
  %6629 = fsub fast float 1.000000e+00, %5544
  %6630 = fmul fast float %6626, %6627
  %6631 = fmul fast float %6626, %6628
  %6632 = fmul fast float %6626, %6629
  %6633 = fadd fast float %6630, %5533
  %6634 = fadd fast float %6631, %5534
  %6635 = fadd fast float %6632, %5544
  br i1 %5816, label %6636, label %6659

; <label>:6636                                    ; preds = %6523
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = fadd fast float %6638, -5.000000e-01
  %6642 = fadd fast float %6639, -5.000000e-01
  %6643 = fadd fast float %6640, -5.000000e-01
  %6644 = fmul fast float %5533, 4.000000e+00
  %6645 = fmul fast float %6644, %6627
  %6646 = fmul fast float %6645, %6641
  %6647 = fmul fast float %5534, 4.000000e+00
  %6648 = fmul fast float %6647, %6628
  %6649 = fmul fast float %6648, %6642
  %6650 = fmul fast float %5544, 4.000000e+00
  %6651 = fmul fast float %6650, %6629
  %6652 = fmul fast float %6651, %6643
  %6653 = fadd fast float %6646, %6633
  %6654 = fadd fast float %6649, %6634
  %6655 = fadd fast float %6652, %6635
  %6656 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6657 = call float @dx.op.unary.f32(i32 7, float %6654)  ; Saturate(value)
  %6658 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  br label %6659

; <label>:6659                                    ; preds = %6636, %6523
  %6660 = phi float [ %6656, %6636 ], [ %6633, %6523 ]
  %6661 = phi float [ %6657, %6636 ], [ %6634, %6523 ]
  %6662 = phi float [ %6658, %6636 ], [ %6635, %6523 ]
  %6663 = fmul fast float %6551, 9.843750e-01
  %6664 = fadd fast float %6663, 7.812500e-03
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6664, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 3
  %6668 = fmul fast float %6666, %5533
  %6669 = fmul fast float %6666, %5534
  %6670 = fmul fast float %6666, %5544
  %6671 = fadd fast float %6668, %6667
  %6672 = fadd fast float %6669, %6667
  %6673 = fadd fast float %6670, %6667
  br i1 %5816, label %6674, label %6697

; <label>:6674                                    ; preds = %6659
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.ResRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.ResRet.f32 %6675, 2
  %6679 = fadd fast float %6676, -5.000000e-01
  %6680 = fadd fast float %6677, -5.000000e-01
  %6681 = fadd fast float %6678, -5.000000e-01
  %6682 = fmul fast float %5533, 4.000000e+00
  %6683 = fmul fast float %6682, %6627
  %6684 = fmul fast float %6683, %6679
  %6685 = fmul fast float %5534, 4.000000e+00
  %6686 = fmul fast float %6685, %6628
  %6687 = fmul fast float %6686, %6680
  %6688 = fmul fast float %5544, 4.000000e+00
  %6689 = fmul fast float %6688, %6629
  %6690 = fmul fast float %6689, %6681
  %6691 = fadd fast float %6684, %6671
  %6692 = fadd fast float %6687, %6672
  %6693 = fadd fast float %6690, %6673
  %6694 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6695 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6696 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  br label %6697

; <label>:6697                                    ; preds = %6674, %6659
  %6698 = phi float [ %6694, %6674 ], [ %6671, %6659 ]
  %6699 = phi float [ %6695, %6674 ], [ %6672, %6659 ]
  %6700 = phi float [ %6696, %6674 ], [ %6673, %6659 ]
  %6701 = call float @dx.op.binary.f32(i32 35, float %6699, float %6700)  ; FMax(a,b)
  %6702 = call float @dx.op.binary.f32(i32 35, float %6698, float %6701)  ; FMax(a,b)
  %6703 = fsub fast float 1.000000e+00, %6702
  %6704 = call float @dx.op.binary.f32(i32 35, float %6576, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6705 = fdiv fast float %4255, %6704
  %6706 = fmul fast float %5932, %6705
  %6707 = fmul fast float %5922, %6705
  %6708 = fmul fast float %5912, %6705
  %6709 = call float @dx.op.unary.f32(i32 21, float %6706)  ; Exp(value)
  %6710 = call float @dx.op.unary.f32(i32 21, float %6707)  ; Exp(value)
  %6711 = call float @dx.op.unary.f32(i32 21, float %6708)  ; Exp(value)
  %6712 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6713 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6714 = call float @dx.op.unary.f32(i32 7, float %6711)  ; Saturate(value)
  %6715 = select i1 %5931, float %6712, float 0.000000e+00
  %6716 = select i1 %5921, float %6713, float 0.000000e+00
  %6717 = select i1 %5911, float %6714, float 0.000000e+00
  %6718 = fsub fast float -0.000000e+00, %5536
  %6719 = fsub fast float -0.000000e+00, %5537
  %6720 = fsub fast float -0.000000e+00, %5538
  %6721 = call float @dx.op.dot3.f32(i32 55, float %6417, float %6418, float %6419, float %6718, float %6719, float %6720)  ; Dot3(ax,ay,az,bx,by,bz)
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fmul fast float %6722, %6424
  %6724 = fmul fast float %6722, 9.843750e-01
  %6725 = fadd fast float %6724, 7.812500e-03
  %6726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6725, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 2
  %6728 = extractvalue %dx.types.ResRet.f32 %6726, 3
  %6729 = fmul fast float %6727, %5533
  %6730 = fmul fast float %6727, %5534
  %6731 = fmul fast float %6727, %5544
  %6732 = fadd fast float %6729, %6728
  %6733 = fadd fast float %6730, %6728
  %6734 = fadd fast float %6731, %6728
  br i1 %5816, label %6735, label %6758

; <label>:6735                                    ; preds = %6697
  %6736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4902, float %6722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6737 = extractvalue %dx.types.ResRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.ResRet.f32 %6736, 1
  %6739 = extractvalue %dx.types.ResRet.f32 %6736, 2
  %6740 = fadd fast float %6737, -5.000000e-01
  %6741 = fadd fast float %6738, -5.000000e-01
  %6742 = fadd fast float %6739, -5.000000e-01
  %6743 = fmul fast float %5533, 4.000000e+00
  %6744 = fmul fast float %6743, %6627
  %6745 = fmul fast float %6744, %6740
  %6746 = fmul fast float %5534, 4.000000e+00
  %6747 = fmul fast float %6746, %6628
  %6748 = fmul fast float %6747, %6741
  %6749 = fmul fast float %5544, 4.000000e+00
  %6750 = fmul fast float %6749, %6629
  %6751 = fmul fast float %6750, %6742
  %6752 = fadd fast float %6745, %6732
  %6753 = fadd fast float %6748, %6733
  %6754 = fadd fast float %6751, %6734
  %6755 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6756 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6757 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  br label %6758

; <label>:6758                                    ; preds = %6735, %6697
  %6759 = phi float [ %6755, %6735 ], [ %6732, %6697 ]
  %6760 = phi float [ %6756, %6735 ], [ %6733, %6697 ]
  %6761 = phi float [ %6757, %6735 ], [ %6734, %6697 ]
  %6762 = call float @dx.op.binary.f32(i32 35, float %6760, float %6761)  ; FMax(a,b)
  %6763 = call float @dx.op.binary.f32(i32 35, float %6759, float %6762)  ; FMax(a,b)
  %6764 = fsub fast float 1.000000e+00, %6763
  %6765 = fmul fast float %5901, %5906
  %6766 = fadd fast float %5908, %6765
  %6767 = call float @dx.op.unary.f32(i32 7, float %6766)  ; Saturate(value)
  %6768 = fsub fast float %6563, %5552
  %6769 = fsub fast float %6564, %5553
  %6770 = fsub fast float %6565, %5554
  %6771 = call float @dx.op.dot3.f32(i32 55, float %6768, float %6769, float %6770, float %6768, float %6769, float %6770)  ; Dot3(ax,ay,az,bx,by,bz)
  %6772 = call float @dx.op.unary.f32(i32 25, float %6771)  ; Rsqrt(value)
  %6773 = fmul fast float %6768, %6772
  %6774 = fmul fast float %6769, %6772
  %6775 = fmul fast float %6770, %6772
  %6776 = call float @dx.op.dot3.f32(i32 55, float %6718, float %6719, float %6720, float %6773, float %6774, float %6775)  ; Dot3(ax,ay,az,bx,by,bz)
  %6777 = fmul fast float %6776, %6776
  %6778 = call float @dx.op.unary.f32(i32 6, float %6722)  ; FAbs(value)
  %6779 = call float @dx.op.binary.f32(i32 35, float %6767, float 0x3F847AE140000000)  ; FMax(a,b)
  %6780 = fmul fast float %6779, %6779
  %6781 = fmul fast float %6780, %6780
  %6782 = fsub fast float 1.000000e+00, %6781
  %6783 = fmul fast float %6581, %6782
  %6784 = fadd fast float %6783, %6781
  %6785 = bitcast float %6784 to i32
  %6786 = ashr i32 %6785, 1
  %6787 = add nsw i32 %6786, 532487669
  %6788 = bitcast i32 %6787 to float
  %6789 = fadd fast float %6788, %5546
  %6790 = fmul fast float %6781, %6777
  %6791 = fsub fast float 1.000000e+00, %6777
  %6792 = fadd fast float %6791, %6790
  %6793 = fmul fast float %6778, %6778
  %6794 = fmul fast float %6793, %6782
  %6795 = fadd fast float %6794, %6781
  %6796 = bitcast float %6795 to i32
  %6797 = ashr i32 %6796, 1
  %6798 = add nsw i32 %6797, 532487669
  %6799 = bitcast i32 %6798 to float
  %6800 = fadd fast float %6799, %6778
  %6801 = fmul fast float %6792, %6792
  %6802 = fmul fast float %6801, %6789
  %6803 = fmul fast float %6802, %6800
  %6804 = fdiv fast float 1.000000e+00, %6803
  %6805 = bitcast float %6781 to i32
  %6806 = sitofp i32 %6805 to float
  %6807 = fmul fast float %6806, 0x3FE7F73180000000
  %6808 = fadd fast float %6807, 0x41AFE27C40000000
  %6809 = fptosi float %6808 to i32
  %6810 = bitcast i32 %6809 to float
  %6811 = fadd fast float %6810, %6611
  %6812 = bitcast float %6811 to i32
  %6813 = sub nsw i32 2129859010, %6812
  %6814 = bitcast i32 %6813 to float
  %6815 = fmul fast float %6781, %6804
  %6816 = fmul fast float %6815, %6810
  %6817 = fmul fast float %6816, %6814
  br i1 %6410, label %6818, label %6828

; <label>:6818                                    ; preds = %6758
  %6819 = fmul fast float %6723, %6715
  %6820 = fmul fast float %6723, %6716
  %6821 = fmul fast float %6723, %6717
  %6822 = fmul fast float %6819, %6764
  %6823 = fmul fast float %6822, %6817
  %6824 = fmul fast float %6820, %6764
  %6825 = fmul fast float %6824, %6817
  %6826 = fmul fast float %6821, %6764
  %6827 = fmul fast float %6826, %6817
  br label %6828

; <label>:6828                                    ; preds = %6818, %6758
  %6829 = phi float [ %6823, %6818 ], [ 0.000000e+00, %6758 ]
  %6830 = phi float [ %6825, %6818 ], [ 0.000000e+00, %6758 ]
  %6831 = phi float [ %6827, %6818 ], [ 0.000000e+00, %6758 ]
  %6832 = fmul fast float %6660, %6618
  %6833 = fmul fast float %6661, %6618
  %6834 = fmul fast float %6662, %6618
  %6835 = fsub fast float 1.000000e+00, %6552
  %6836 = bitcast float %6835 to i32
  %6837 = sitofp i32 %6836 to float
  %6838 = fmul fast float %6837, 5.000000e+00
  %6839 = fadd fast float %6838, 0xC1EFBF8940000000
  %6840 = fptosi float %6839 to i32
  %6841 = bitcast i32 %6840 to float
  %6842 = fmul fast float %6841, %4903
  %6843 = fmul fast float %6703, %6842
  %6844 = fmul fast float %6843, %5863
  %6845 = fmul fast float %6843, %5864
  %6846 = fmul fast float %6843, %5865
  %6847 = fadd fast float %6844, %6832
  %6848 = fadd fast float %6845, %6833
  %6849 = fadd fast float %6846, %6834
  %6850 = fmul fast float %6847, %6558
  %6851 = fmul fast float %6848, %6558
  %6852 = fmul fast float %6849, %6558
  %6853 = fadd fast float %6850, %6829
  %6854 = fadd fast float %6851, %6830
  %6855 = fadd fast float %6852, %6831
  %6856 = fmul fast float %6540, %4899
  %6857 = fmul fast float %6856, %6558
  %6858 = fmul fast float %6857, %6703
  %6859 = fmul fast float %6541, %4899
  %6860 = fmul fast float %6859, %6558
  %6861 = fmul fast float %6860, %6703
  %6862 = fmul fast float %6542, %4899
  %6863 = fmul fast float %6862, %6558
  %6864 = fmul fast float %6863, %6703
  %6865 = fadd fast float %6858, %6375
  %6866 = fadd fast float %6861, %6376
  %6867 = fadd fast float %6864, %6377
  %6868 = fmul fast float %6856, %6853
  %6869 = fmul fast float %6859, %6854
  %6870 = fmul fast float %6862, %6855
  %6871 = fadd fast float %6868, %6372
  %6872 = fadd fast float %6869, %6373
  %6873 = fadd fast float %6870, %6374
  br label %6454

; <label>:6874                                    ; preds = %6454
  br label %6875

; <label>:6875                                    ; preds = %6874, %6338
  %6876 = phi float [ %6340, %6338 ], [ %6455, %6874 ]
  %6877 = phi float [ %6341, %6338 ], [ %6456, %6874 ]
  %6878 = phi float [ %6342, %6338 ], [ %6457, %6874 ]
  %6879 = phi float [ %6343, %6338 ], [ %6458, %6874 ]
  %6880 = phi float [ %6344, %6338 ], [ %6459, %6874 ]
  %6881 = phi float [ %6345, %6338 ], [ %6460, %6874 ]
  %6882 = add i32 %6339, 1
  %6883 = icmp ugt i32 %6882, %6335
  br i1 %6883, label %6884, label %6338

; <label>:6884                                    ; preds = %6875
  br label %6885

; <label>:6885                                    ; preds = %6884, %6314, %6304
  %6886 = phi float [ %6305, %6304 ], [ %6305, %6314 ], [ %6876, %6884 ]
  %6887 = phi float [ %6306, %6304 ], [ %6306, %6314 ], [ %6877, %6884 ]
  %6888 = phi float [ %6307, %6304 ], [ %6307, %6314 ], [ %6878, %6884 ]
  %6889 = phi float [ %6308, %6304 ], [ %6308, %6314 ], [ %6879, %6884 ]
  %6890 = phi float [ %6309, %6304 ], [ %6309, %6314 ], [ %6880, %6884 ]
  %6891 = phi float [ %6310, %6304 ], [ %6310, %6314 ], [ %6881, %6884 ]
  %6892 = call float @dx.op.unary.f32(i32 24, float %5539)  ; Sqrt(value)
  %6893 = call float @dx.op.unary.f32(i32 24, float %5540)  ; Sqrt(value)
  %6894 = call float @dx.op.unary.f32(i32 24, float %5541)  ; Sqrt(value)
  %6895 = fmul fast float %6892, %6889
  %6896 = fmul fast float %6893, %6890
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  br i1 %170, label %6899, label %6919

; <label>:6899                                    ; preds = %6885
  %6900 = fadd fast float %6891, %4905
  %6901 = fmul fast float %6900, %4906
  %6902 = fsub fast float 1.000000e+00, %4906
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 3
  %6906 = fmul fast float %6905, %6903
  %6907 = fadd fast float %6906, %6901
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = fmul fast float %6909, %5871
  %6911 = fsub fast float %6907, %6910
  %6912 = fadd fast float %6896, %6895
  %6913 = fmul fast float %6898, %6912
  %6914 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6915 = fsub fast float %6911, %6914
  %6916 = extractvalue %dx.types.CBufRet.f32 %6904, 2
  %6917 = fmul fast float %6915, %6916
  %6918 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  br label %6935

; <label>:6919                                    ; preds = %6885
  %6920 = fmul fast float %6894, %6891
  %6921 = fmul fast float %6898, %6895
  %6922 = fmul fast float %6898, %6896
  %6923 = fmul fast float %6920, %6898
  %6924 = add i32 %33, 356
  %6925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.i32 %6925, 0
  %6927 = and i32 %6926, 32
  %6928 = icmp eq i32 %6927, 0
  br i1 %6928, label %6935, label %6929

; <label>:6929                                    ; preds = %6919
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %6932 = fmul fast float %6931, 0x3FE99999A0000000
  %6933 = fadd fast float %6931, %6921
  %6934 = fadd fast float %6932, %6923
  br label %6935

; <label>:6935                                    ; preds = %6929, %6919, %6899
  %6936 = phi float [ %6913, %6899 ], [ %6933, %6929 ], [ %6921, %6919 ]
  %6937 = phi float [ %6918, %6899 ], [ %6922, %6929 ], [ %6922, %6919 ]
  %6938 = phi float [ 1.000000e+00, %6899 ], [ %6934, %6929 ], [ %6923, %6919 ]
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %6941 = fmul fast float %6940, %6887
  %6942 = fmul fast float %6940, %6888
  %6943 = fadd fast float %6887, %6886
  %6944 = select i1 %170, float %6943, float %6886
  %6945 = fmul float %6944, %6940
  %6946 = select i1 %170, float 0.000000e+00, float %6941
  %6947 = select i1 %170, float 0.000000e+00, float %6942
  %6948 = fmul fast float %6936, %6892
  %6949 = fmul fast float %6937, %6893
  %6950 = fmul fast float %6938, %6894
  %6951 = fadd fast float %6945, %6948
  %6952 = fadd fast float %6946, %6949
  %6953 = fadd fast float %6947, %6950
  %6954 = select i1 %170, float %6937, float %6952
  %6955 = select i1 %170, float %6938, float %6953
  %6956 = call float @dx.op.binary.f32(i32 36, float %6951, float 3.225500e+04)  ; FMin(a,b)
  %6957 = call float @dx.op.binary.f32(i32 36, float %6954, float 3.225500e+04)  ; FMin(a,b)
  %6958 = call float @dx.op.binary.f32(i32 36, float %6955, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6956)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6957)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

