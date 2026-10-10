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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c1a8c8c3ad6884816fc72818cecc64ec
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %61
  %69 = fmul fast float %67, %62
  %70 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = bitcast float %70 to i32
  %72 = ashr i32 %71, 1
  %73 = sub nsw i32 1597250115, %72
  %74 = bitcast i32 %73 to float
  %75 = fmul fast float %74, %53
  %76 = fmul fast float %74, %54
  %77 = fmul fast float %74, %55
  %78 = fmul fast float %54, %51
  %79 = fmul fast float %55, %50
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %55, %49
  %82 = fmul fast float %53, %51
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %53, %50
  %85 = fmul fast float %54, %49
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %80, %52
  %88 = fmul fast float %83, %52
  %89 = fmul fast float %86, %52
  %90 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = bitcast float %90 to i32
  %92 = ashr i32 %91, 1
  %93 = sub nsw i32 1597250115, %92
  %94 = bitcast i32 %93 to float
  %95 = fmul fast float %94, %42
  %96 = fmul fast float %94, %43
  %97 = fmul fast float %94, %44
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %68, 2.000000e+00
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %69, 2.000000e+00
  %104 = fmul fast float %103, %100
  %105 = fsub fast float 1.000000e+00, %102
  %106 = fsub fast float 1.000000e+00, %104
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %105, %108
  %112 = fmul fast float %105, %109
  %113 = fmul fast float %105, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fmul fast float %106, %115
  %119 = fmul fast float %106, %116
  %120 = fmul fast float %106, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %125, %111
  %127 = fadd fast float %119, %123
  %128 = fadd fast float %127, %112
  %129 = fadd fast float %120, %124
  %130 = fadd fast float %129, %113
  %131 = fmul fast float %126, %63
  %132 = fmul fast float %128, %63
  %133 = fmul fast float %130, %63
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %68
  %138 = fmul fast float %136, %69
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 114688
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %142, float %137, float 0.000000e+00
  %144 = select i1 %142, float %138, float 0.000000e+00
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %143, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, 2.550000e+02
  %148 = fptoui float %147 to i32
  %149 = select i1 %142, i32 %148, i32 0
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 3
  %153 = and i32 %152, 3
  %154 = icmp ne i32 %153, 0
  %155 = and i32 %152, 4
  %156 = icmp ne i32 %155, 0
  %157 = and i1 %154, %156
  br i1 %157, label %158, label %169

; <label>:158                                     ; preds = %0
  %159 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %160 = fmul fast float %159, %69
  %161 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %162 = fmul fast float %161, %68
  %163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %162, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fsub fast float 1.000000e+00, %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = fcmp fast olt float %165, %167
  br label %172

; <label>:169                                     ; preds = %0
  %170 = icmp eq i32 %155, 0
  %171 = and i1 %154, %170
  br label %172

; <label>:172                                     ; preds = %169, %158
  %173 = phi i1 [ %168, %158 ], [ %171, %169 ]
  %174 = add i32 %33, 156
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = shl i32 %176, 4
  %178 = and i32 %177, 32752
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %176, 7
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %176, 22
  %184 = shl nuw nsw i32 %183, 5
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = add i32 %33, 216
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %188, 8
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %188, 16
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = add i32 %33, 36
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 65535
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %202, 16
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = add i32 %33, 288
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %209, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = fmul fast float %211, 0x3F50624DE0000000
  %215 = fmul fast float %213, 0x3F50624DE0000000
  %216 = add i32 %33, 172
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = shl i32 %218, 4
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %218, 7
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %218, 22
  %226 = shl nuw nsw i32 %225, 5
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %33, 232
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %230, 8
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %230, 16
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = add i32 %33, 52
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %33, 304
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %253, 0x3F50624DE0000000
  %257 = fmul fast float %255, 0x3F50624DE0000000
  %258 = add i32 %33, 188
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = shl i32 %260, 4
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %260, 7
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %260, 22
  %268 = shl nuw nsw i32 %267, 5
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %33, 248
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %272, 8
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %272, 16
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = add i32 %33, 68
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %33, 320
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = add i32 %33, 204
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = shl i32 %302, 4
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %302, 7
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %302, 22
  %310 = shl nuw nsw i32 %309, 5
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %33, 264
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %314, 8
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %314, 16
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = add i32 %33, 84
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %33, 336
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = fmul fast float %337, 0x3F50624DE0000000
  %341 = fmul fast float %339, 0x3F50624DE0000000
  %342 = add i32 %33, 348
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 32
  %346 = icmp eq i32 %345, 0
  %347 = and i32 %344, 64
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %344, 128
  %350 = icmp eq i32 %349, 0
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %368, label %355

; <label>:355                                     ; preds = %172
  %356 = add i32 %33, 488
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = fmul fast float %362, %58
  %366 = fmul fast float %363, %59
  %367 = fmul fast float %364, %60
  br label %368

; <label>:368                                     ; preds = %355, %172
  %369 = phi float [ %60, %172 ], [ %367, %355 ]
  %370 = phi float [ %59, %172 ], [ %366, %355 ]
  %371 = phi float [ %58, %172 ], [ %365, %355 ]
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %395, label %376

; <label>:376                                     ; preds = %368
  %377 = add i32 %33, 44
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %371, float 1.000000e+00
  %383 = add i32 %33, 60
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %370, float 1.000000e+00
  %389 = add i32 %33, 76
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 1
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, float %369, float 1.000000e+00
  br label %395

; <label>:395                                     ; preds = %376, %368
  %396 = phi float [ %369, %368 ], [ %394, %376 ]
  %397 = phi float [ %370, %368 ], [ %388, %376 ]
  %398 = phi float [ %371, %368 ], [ %382, %376 ]
  %399 = lshr i32 %373, 20
  %400 = and i32 %399, 3
  %401 = add nuw nsw i32 %400, 1
  %402 = add i32 %33, 24
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %33, 28
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = or i32 %407, %404
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %886, label %410

; <label>:410                                     ; preds = %395
  %411 = and i32 %404, 262144
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %36, float 1.000000e+00
  %414 = select i1 %412, float %37, float 0.000000e+00
  %415 = select i1 %412, float %38, float 0.000000e+00
  %416 = select i1 %412, float %39, float 1.000000e+00
  %417 = select i1 %412, float %40, float %56
  %418 = select i1 %412, float %41, float %57
  %419 = add i32 %33, 284
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fmul fast float %423, 0x3F50624DE0000000
  %425 = add i32 %33, 88
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = lshr i32 %427, 24
  %431 = add i32 %33, 292
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %33, 32
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = lshr i32 %440, 22
  %442 = shl nuw nsw i32 %441, 5
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = shl i32 %440, 4
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %440, 7
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %452 = fmul fast float %451, 1.000000e+03
  %453 = fmul fast float %214, %452
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fadd fast float %454, %204
  %456 = fmul fast float %215, %452
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, %206
  %459 = fmul fast float %424, %452
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fmul fast float %460, 0x401921FB60000000
  %462 = fadd fast float %461, %443
  %463 = call float @dx.op.unary.f32(i32 13, float %462)  ; Sin(value)
  %464 = call float @dx.op.unary.f32(i32 12, float %462)  ; Cos(value)
  %465 = fsub fast float -0.000000e+00, %463
  %466 = fadd fast float %417, -5.000000e-01
  %467 = fadd fast float %418, -5.000000e-01
  %468 = fmul fast float %435, %466
  %469 = fmul fast float %437, %467
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fadd fast float %469, 5.000000e-01
  %472 = fmul fast float %446, %470
  %473 = fmul fast float %449, %471
  %474 = fmul fast float %464, %472
  %475 = call float @dx.op.tertiary.f32(i32 46, float %465, float %473, float %474)  ; FMad(a,b,c)
  %476 = fmul fast float %463, %472
  %477 = call float @dx.op.tertiary.f32(i32 46, float %464, float %473, float %476)  ; FMad(a,b,c)
  %478 = fadd fast float %455, %475
  %479 = fadd fast float %458, %477
  %480 = icmp ugt i32 %429, 1
  %481 = icmp ugt i32 %427, 33554431
  %482 = or i1 %481, %480
  br i1 %482, label %483, label %508

; <label>:483                                     ; preds = %410
  %484 = add i32 %33, 228
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = fmul fast float %451, %488
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = mul nuw nsw i32 %429, %430
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %490, %492
  %494 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %495 = fptoui float %494 to i32
  %496 = urem i32 %495, %429
  %497 = udiv i32 %495, %430
  %498 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %499 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %500 = uitofp i32 %496 to float
  %501 = uitofp i32 %497 to float
  %502 = fadd fast float %498, %500
  %503 = fadd fast float %499, %501
  %504 = uitofp i32 %429 to float
  %505 = uitofp i32 %430 to float
  %506 = fdiv fast float %502, %504
  %507 = fdiv fast float %503, %505
  br label %508

; <label>:508                                     ; preds = %483, %410
  %509 = phi float [ %506, %483 ], [ %478, %410 ]
  %510 = phi float [ %507, %483 ], [ %479, %410 ]
  %511 = and i32 %404, 16
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %709, label %513

; <label>:513                                     ; preds = %508
  %514 = add i32 %33, 360
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %518, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = extractvalue %dx.types.ResRet.f32 %519, 3
  %524 = and i32 %427, 255
  %525 = uitofp i32 %524 to float
  %526 = lshr i32 %427, 8
  %527 = and i32 %526, 255
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %523, %525
  %530 = fadd fast float %529, %528
  %531 = fmul fast float %530, 0x3F70101000000000
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 512
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %544, label %536

; <label>:536                                     ; preds = %513
  %537 = add i32 %33, 440
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  br label %544

; <label>:544                                     ; preds = %536, %513
  %545 = phi float [ %543, %536 ], [ 1.000000e+00, %513 ]
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 33554432
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %656, label %550

; <label>:550                                     ; preds = %544
  %551 = add i32 %33, 224
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %33, 228
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 65535
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 24
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = and i32 %564, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %564, 8
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %564, 16
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = add i32 %33, 220
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 24
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = and i32 %581, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %581, 8
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = lshr i32 %581, 16
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = bitcast float %520 to i32
  %597 = ashr i32 %596, 1
  %598 = sub nsw i32 1597463174, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %520, 5.000000e-01
  %601 = fmul fast float %599, %599
  %602 = fmul fast float %601, %600
  %603 = fsub fast float 1.500000e+00, %602
  %604 = fmul fast float %599, %520
  %605 = fmul fast float %604, %603
  %606 = bitcast float %521 to i32
  %607 = ashr i32 %606, 1
  %608 = sub nsw i32 1597463174, %607
  %609 = bitcast i32 %608 to float
  %610 = fmul fast float %521, 5.000000e-01
  %611 = fmul fast float %609, %609
  %612 = fmul fast float %611, %610
  %613 = fsub fast float 1.500000e+00, %612
  %614 = fmul fast float %609, %521
  %615 = fmul fast float %614, %613
  %616 = bitcast float %522 to i32
  %617 = ashr i32 %616, 1
  %618 = sub nsw i32 1597463174, %617
  %619 = bitcast i32 %618 to float
  %620 = fmul fast float %522, 5.000000e-01
  %621 = fmul fast float %619, %619
  %622 = fmul fast float %621, %620
  %623 = fsub fast float 1.500000e+00, %622
  %624 = fmul fast float %619, %522
  %625 = fmul fast float %624, %623
  %626 = fsub fast float %605, %587
  %627 = fsub fast float %615, %591
  %628 = fsub fast float %625, %595
  %629 = fmul fast float %626, %555
  %630 = fmul fast float %627, %557
  %631 = fmul fast float %628, %562
  %632 = fadd fast float %629, %570
  %633 = fadd fast float %630, %574
  %634 = fadd fast float %631, %578
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fmul fast float %637, %637
  %641 = fsub fast float %638, %520
  %642 = fsub fast float %639, %521
  %643 = fsub fast float %640, %522
  %644 = fmul fast float %641, %545
  %645 = fmul fast float %642, %545
  %646 = fmul fast float %643, %545
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %567, %531
  %651 = fsub fast float %650, %584
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = fsub fast float %652, %531
  %654 = fmul fast float %653, %545
  %655 = fadd fast float %654, %531
  br label %709

; <label>:656                                     ; preds = %544
  %657 = and i32 %547, 134217728
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %693, label %659

; <label>:659                                     ; preds = %656
  %660 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %662 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fmul fast float %663, %545
  %667 = fmul fast float %664, %545
  %668 = fmul fast float %665, %545
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fadd fast float %668, 5.000000e-01
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = fmul fast float %669, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %672
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %672
  %680 = fmul fast float %670, 2.000000e+00
  %681 = fsub fast float 1.000000e+00, %680
  %682 = fmul fast float %681, %673
  %683 = fadd fast float %682, %680
  %684 = fmul fast float %683, %673
  %685 = fmul fast float %671, 2.000000e+00
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %674
  %688 = fadd fast float %687, %685
  %689 = fmul fast float %688, %674
  %690 = fmul fast float %679, %679
  %691 = fmul fast float %684, %684
  %692 = fmul fast float %689, %689
  br label %709

; <label>:693                                     ; preds = %656
  %694 = fmul fast float %191, %191
  %695 = fmul fast float %195, %195
  %696 = fmul fast float %199, %199
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fmul fast float %545, %697
  %701 = fmul fast float %545, %698
  %702 = fmul fast float %545, %699
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fmul fast float %703, %520
  %707 = fmul fast float %704, %521
  %708 = fmul fast float %705, %522
  br label %709

; <label>:709                                     ; preds = %693, %659, %550, %508
  %710 = phi float [ %655, %550 ], [ %531, %659 ], [ %531, %693 ], [ 0x3FA23C0BE0000000, %508 ]
  %711 = phi float [ %647, %550 ], [ %690, %659 ], [ %706, %693 ], [ 1.000000e+00, %508 ]
  %712 = phi float [ %648, %550 ], [ %691, %659 ], [ %707, %693 ], [ 1.000000e+00, %508 ]
  %713 = phi float [ %649, %550 ], [ %692, %659 ], [ %708, %693 ], [ 1.000000e+00, %508 ]
  %714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.i32 %714, 1
  %716 = and i32 %715, 1
  %717 = icmp ne i32 %716, 0
  %718 = add i32 %33, 356
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 32
  %722 = icmp ne i32 %721, 0
  %723 = and i1 %717, %722
  %724 = select i1 %723, float 1.000000e+00, float %711
  %725 = select i1 %723, float 0x3FD3333340000000, float %712
  %726 = select i1 %723, float 0x3FD3333340000000, float %713
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 32
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %803, label %731

; <label>:731                                     ; preds = %709
  %732 = add i32 %33, 92
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %33, 376
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = and i32 %734, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %734, 8
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %734, 16
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101000000000
  %754 = fmul fast float %741, %746
  %755 = fadd fast float %754, %749
  %756 = fmul fast float %755, 0x3F70101000000000
  %757 = fadd fast float %742, -5.000000e-01
  %758 = fadd fast float %744, -5.000000e-01
  %759 = fmul fast float %757, %753
  %760 = fmul fast float %758, %753
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %761, 2.000000e+00
  %764 = fadd fast float %763, -1.000000e+00
  %765 = fmul fast float %762, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fadd fast float %764, %766
  %768 = fmul fast float %767, 5.000000e-01
  %769 = fsub fast float %764, %766
  %770 = fmul fast float %769, 5.000000e-01
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = fsub fast float 1.000000e+00, %771
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float %772, %773
  %775 = call float @dx.op.dot3.f32(i32 55, float %768, float %770, float %774, float %768, float %770, float %774)  ; Dot3(ax,ay,az,bx,by,bz)
  %776 = call float @dx.op.unary.f32(i32 25, float %775)  ; Rsqrt(value)
  %777 = fmul fast float %768, %776
  %778 = fmul fast float %770, %776
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 67108864
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %799, label %783

; <label>:783                                     ; preds = %731
  %784 = add i32 %33, 280
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = lshr i32 %786, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fsub fast float %756, %794
  %796 = fmul fast float %795, %788
  %797 = fadd fast float %796, %792
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %783, %731
  %800 = phi float [ %798, %783 ], [ %756, %731 ]
  %801 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %802 = call float @dx.op.dot2.f32(i32 54, float %777, float %778, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  br label %803

; <label>:803                                     ; preds = %799, %709
  %804 = phi float [ %800, %799 ], [ 0x3FD6666660000000, %709 ]
  %805 = phi float [ %801, %799 ], [ 0.000000e+00, %709 ]
  %806 = phi float [ %802, %799 ], [ 0.000000e+00, %709 ]
  %807 = phi float [ %743, %799 ], [ 1.000000e+00, %709 ]
  %808 = add i32 %33, 160
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 22
  %812 = shl nuw nsw i32 %811, 5
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 64
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %851, label %818

; <label>:818                                     ; preds = %803
  %819 = add i32 %33, 392
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %821, 0
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 131072
  %827 = icmp eq i32 %826, 0
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %823, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = fmul fast float %829, %179
  %833 = fmul fast float %830, %182
  %834 = fmul fast float %831, %185
  br i1 %827, label %841, label %835

; <label>:835                                     ; preds = %818
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = fmul fast float %837, %832
  %839 = fmul fast float %837, %833
  %840 = fmul fast float %837, %834
  br label %841

; <label>:841                                     ; preds = %835, %818
  %842 = phi float [ %838, %835 ], [ %832, %818 ]
  %843 = phi float [ %839, %835 ], [ %833, %818 ]
  %844 = phi float [ %840, %835 ], [ %834, %818 ]
  %845 = fmul fast float %842, %813
  %846 = select i1 %173, float %845, float %842
  %847 = call float @dx.op.dot3.f32(i32 55, float %846, float %843, float %844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = select i1 %173, float 0.000000e+00, float %842
  %849 = select i1 %173, float %847, float %843
  %850 = select i1 %173, float 0.000000e+00, float %844
  br label %851

; <label>:851                                     ; preds = %841, %803
  %852 = phi float [ %848, %841 ], [ 0.000000e+00, %803 ]
  %853 = phi float [ %849, %841 ], [ 0.000000e+00, %803 ]
  %854 = phi float [ %850, %841 ], [ 0.000000e+00, %803 ]
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 65536
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %869, label %859

; <label>:859                                     ; preds = %851
  %860 = add i32 %33, 472
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = add i32 %862, 0
  %864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %864, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  br label %869

; <label>:869                                     ; preds = %859, %851
  %870 = phi float [ %866, %859 ], [ 0.000000e+00, %851 ]
  %871 = phi float [ %867, %859 ], [ 0.000000e+00, %851 ]
  %872 = phi float [ %868, %859 ], [ 0.000000e+00, %851 ]
  %873 = add i32 %33, 96
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = lshr i32 %875, 8
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = fmul fast float %880, %881
  %883 = fadd fast float %882, %877
  %884 = fmul fast float %883, 0x3F70101020000000
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  br label %886

; <label>:886                                     ; preds = %869, %395
  %887 = phi float [ 0.000000e+00, %395 ], [ %805, %869 ]
  %888 = phi float [ 0.000000e+00, %395 ], [ %806, %869 ]
  %889 = phi float [ 0.000000e+00, %395 ], [ %724, %869 ]
  %890 = phi float [ 0.000000e+00, %395 ], [ %725, %869 ]
  %891 = phi float [ 0.000000e+00, %395 ], [ %726, %869 ]
  %892 = phi float [ 0.000000e+00, %395 ], [ %870, %869 ]
  %893 = phi float [ 0.000000e+00, %395 ], [ %871, %869 ]
  %894 = phi float [ 0.000000e+00, %395 ], [ %872, %869 ]
  %895 = phi float [ 0.000000e+00, %395 ], [ %852, %869 ]
  %896 = phi float [ 0.000000e+00, %395 ], [ %853, %869 ]
  %897 = phi float [ 0.000000e+00, %395 ], [ %854, %869 ]
  %898 = phi float [ 0.000000e+00, %395 ], [ %710, %869 ]
  %899 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %869 ]
  %900 = phi float [ 0.000000e+00, %395 ], [ %804, %869 ]
  %901 = phi float [ 0.000000e+00, %395 ], [ %807, %869 ]
  %902 = phi float [ 0.000000e+00, %395 ], [ %885, %869 ]
  br i1 %346, label %1783, label %903

; <label>:903                                     ; preds = %886
  %904 = icmp ult i32 %401, 2
  %905 = add i32 %33, 40
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = add i32 %33, 44
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = or i32 %910, %907
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %1783, label %913

; <label>:913                                     ; preds = %903
  %914 = and i32 %907, 262144
  %915 = icmp ne i32 %914, 0
  %916 = select i1 %915, float %36, float 1.000000e+00
  %917 = select i1 %915, float %37, float 0.000000e+00
  %918 = select i1 %915, float %38, float 0.000000e+00
  %919 = select i1 %915, float %39, float 1.000000e+00
  %920 = select i1 %915, float %40, float %56
  %921 = select i1 %915, float %41, float %57
  %922 = add i32 %33, 300
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = lshr i32 %924, 16
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = fmul fast float %926, 0x3F50624DE0000000
  %928 = add i32 %33, 104
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = lshr i32 %930, 16
  %932 = and i32 %931, 255
  %933 = lshr i32 %930, 24
  %934 = add i32 %33, 308
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 65535
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = lshr i32 %936, 16
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = add i32 %33, 48
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 22
  %945 = shl nuw nsw i32 %944, 5
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = shl i32 %943, 4
  %948 = and i32 %947, 32752
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %943, 7
  %951 = and i32 %950, 32752
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %955 = fmul fast float %954, 1.000000e+03
  %956 = fmul fast float %256, %955
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = fadd fast float %957, %246
  %959 = fmul fast float %257, %955
  %960 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %961 = fadd fast float %960, %248
  %962 = fmul fast float %927, %955
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = fmul fast float %963, 0x401921FB60000000
  %965 = fadd fast float %964, %946
  %966 = call float @dx.op.unary.f32(i32 13, float %965)  ; Sin(value)
  %967 = call float @dx.op.unary.f32(i32 12, float %965)  ; Cos(value)
  %968 = fsub fast float -0.000000e+00, %966
  %969 = fadd fast float %920, -5.000000e-01
  %970 = fadd fast float %921, -5.000000e-01
  %971 = fmul fast float %938, %969
  %972 = fmul fast float %940, %970
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fmul fast float %949, %973
  %976 = fmul fast float %952, %974
  %977 = fmul fast float %967, %975
  %978 = call float @dx.op.tertiary.f32(i32 46, float %968, float %976, float %977)  ; FMad(a,b,c)
  %979 = fmul fast float %966, %975
  %980 = call float @dx.op.tertiary.f32(i32 46, float %967, float %976, float %979)  ; FMad(a,b,c)
  %981 = fadd fast float %958, %978
  %982 = fadd fast float %961, %980
  %983 = icmp ugt i32 %932, 1
  %984 = icmp ugt i32 %930, 33554431
  %985 = or i1 %984, %983
  br i1 %985, label %986, label %1011

; <label>:986                                     ; preds = %913
  %987 = add i32 %33, 244
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = fmul fast float %954, %991
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = mul nuw nsw i32 %932, %933
  %995 = uitofp i32 %994 to float
  %996 = fmul fast float %993, %995
  %997 = call float @dx.op.unary.f32(i32 27, float %996)  ; Round_ni(value)
  %998 = fptoui float %997 to i32
  %999 = urem i32 %998, %932
  %1000 = udiv i32 %998, %933
  %1001 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %1002 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %1003 = uitofp i32 %999 to float
  %1004 = uitofp i32 %1000 to float
  %1005 = fadd fast float %1001, %1003
  %1006 = fadd fast float %1002, %1004
  %1007 = uitofp i32 %932 to float
  %1008 = uitofp i32 %933 to float
  %1009 = fdiv fast float %1005, %1007
  %1010 = fdiv fast float %1006, %1008
  br label %1011

; <label>:1011                                    ; preds = %986, %913
  %1012 = phi float [ %1009, %986 ], [ %981, %913 ]
  %1013 = phi float [ %1010, %986 ], [ %982, %913 ]
  %1014 = and i32 %907, 16777216
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1125, label %1016

; <label>:1016                                    ; preds = %1011
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1021 = fadd fast float %1018, %131
  %1022 = fadd fast float %1019, %132
  %1023 = fadd fast float %1020, %133
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = icmp eq i32 %34, 65535
  br i1 %1027, label %1122, label %1028

; <label>:1028                                    ; preds = %1016
  %1029 = lshr i32 %34, 1
  %1030 = shl i32 %1029, 2
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %34, 1
  %1034 = icmp ne i32 %1033, 0
  %1035 = lshr i32 %1032, 16
  %1036 = and i32 %1032, 65535
  %1037 = select i1 %1034, i32 %1035, i32 %1036
  %1038 = icmp eq i32 %1037, 65535
  br i1 %1038, label %1118, label %1039

; <label>:1039                                    ; preds = %1028
  %1040 = mul nuw nsw i32 %1037, 40
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = add nuw nsw i32 %1040, 12
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = add nuw nsw i32 %1040, 24
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = add nuw nsw i32 %1040, 36
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = fsub fast float %1021, %1042
  %1059 = fsub fast float %1022, %1043
  %1060 = fsub fast float %1023, %1044
  %1061 = fmul fast float %1057, %1058
  %1062 = fmul fast float %1057, %1059
  %1063 = fmul fast float %1057, %1060
  %1064 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fmul fast float %1067, %1047
  %1071 = fmul fast float %1068, %1048
  %1072 = fmul fast float %1069, %1049
  %1073 = shl i32 %34, 2
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1077, %dx.types.Handle %30, float %1078, float %1079, float %1080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = fmul fast float %1082, 1.023000e+03
  %1086 = fmul fast float %1083, 1.023000e+03
  %1087 = fmul fast float %1084, 1.023000e+03
  %1088 = fadd fast float %1085, 5.000000e-01
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = fadd fast float %1087, 5.000000e-01
  %1091 = call float @dx.op.unary.f32(i32 27, float %1088)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = fsub fast float %1061, %1064
  %1095 = fsub fast float %1062, %1065
  %1096 = fsub fast float %1063, %1066
  %1097 = fmul fast float %1094, 7.500000e-01
  %1098 = fmul fast float %1095, 7.500000e-01
  %1099 = fmul fast float %1096, 7.500000e-01
  %1100 = fadd fast float %1064, 1.250000e-01
  %1101 = fadd fast float %1100, %1097
  %1102 = fadd fast float %1101, %1091
  %1103 = fadd fast float %1065, 1.250000e-01
  %1104 = fadd fast float %1103, %1098
  %1105 = fadd fast float %1104, %1092
  %1106 = fadd fast float %1066, 1.250000e-01
  %1107 = fadd fast float %1106, %1099
  %1108 = fadd fast float %1107, %1093
  %1109 = fmul fast float %1102, %1052
  %1110 = fmul fast float %1105, %1053
  %1111 = fmul fast float %1108, %1054
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1115, %dx.types.Handle %28, float %1109, float %1110, float %1111, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  br label %1118

; <label>:1118                                    ; preds = %1039, %1028
  %1119 = phi float [ %1117, %1039 ], [ -1.000000e+00, %1028 ]
  %1120 = fadd fast float %1119, %1026
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  br label %1122

; <label>:1122                                    ; preds = %1118, %1016
  %1123 = phi float [ %1121, %1118 ], [ %1026, %1016 ]
  %1124 = fmul fast float %1123, %398
  br label %1125

; <label>:1125                                    ; preds = %1122, %1011
  %1126 = phi float [ %1124, %1122 ], [ %398, %1011 ]
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 256
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1177, label %1131

; <label>:1131                                    ; preds = %1125
  %1132 = add i32 %33, 428
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %1134, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %65, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = add i32 %33, 116
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = shl i32 %1141, 4
  %1143 = and i32 %1142, 32752
  %1144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1143)  ; LegacyF16ToF32(value)
  %1145 = lshr i32 %1141, 7
  %1146 = and i32 %1145, 32752
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = fsub fast float 1.000000e+00, %1126
  %1149 = call float @dx.op.binary.f32(i32 35, float %1148, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1150 = bitcast float %1126 to i32
  %1151 = sitofp i32 %1150 to float
  %1152 = fadd fast float %1151, 0xC1CFBF8940000000
  %1153 = fmul fast float %1147, %1152
  %1154 = fadd fast float %1153, 0x41CFBF8940000000
  %1155 = fptosi float %1154 to i32
  %1156 = bitcast i32 %1155 to float
  %1157 = bitcast float %1149 to i32
  %1158 = sitofp i32 %1157 to float
  %1159 = fadd fast float %1158, 0xC1CFBF8940000000
  %1160 = fmul fast float %1159, %1147
  %1161 = fadd fast float %1160, 0x41CFBF8940000000
  %1162 = fptosi float %1161 to i32
  %1163 = bitcast i32 %1162 to float
  %1164 = fmul fast float %1156, %1144
  %1165 = fmul fast float %1163, %1144
  %1166 = fsub fast float %1149, %1164
  %1167 = fadd fast float %1165, %1149
  %1168 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1170 = fsub fast float %1138, %1168
  %1171 = fsub fast float %1169, %1168
  %1172 = bitcast float %1171 to i32
  %1173 = sub nsw i32 2129859010, %1172
  %1174 = bitcast i32 %1173 to float
  %1175 = fmul fast float %1174, %1170
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  br label %1177

; <label>:1177                                    ; preds = %1131, %1125
  %1178 = phi float [ %1176, %1131 ], [ %1126, %1125 ]
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 128
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1199, label %1183

; <label>:1183                                    ; preds = %1177
  %1184 = add i32 %33, 412
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %65, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 524288
  %1194 = icmp ne i32 %1193, 0
  %1195 = fcmp fast ogt float %1190, 0x3FE0101020000000
  %1196 = select i1 %1195, float 1.000000e+00, float 0.000000e+00
  %1197 = select i1 %1194, float %1196, float %1190
  %1198 = fmul fast float %1197, %1178
  br label %1199

; <label>:1199                                    ; preds = %1183, %1177
  %1200 = phi float [ %1198, %1183 ], [ %1178, %1177 ]
  %1201 = fcmp fast ult float %1200, 0x3F70101020000000
  br i1 %1201, label %1783, label %1202

; <label>:1202                                    ; preds = %1199
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 16
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1405, label %1207

; <label>:1207                                    ; preds = %1202
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = add i32 %33, 364
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %64, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = extractvalue %dx.types.ResRet.f32 %1215, 3
  %1220 = and i32 %1209, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = lshr i32 %1209, 8
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1219, %1221
  %1226 = fadd fast float %1225, %1224
  %1227 = fmul fast float %1226, 0x3F70101000000000
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 512
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1240, label %1232

; <label>:1232                                    ; preds = %1207
  %1233 = add i32 %33, 444
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = add i32 %1235, 0
  %1237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1237, %dx.types.Handle %65, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  br label %1240

; <label>:1240                                    ; preds = %1232, %1207
  %1241 = phi float [ %1239, %1232 ], [ 1.000000e+00, %1207 ]
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 33554432
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1352, label %1246

; <label>:1246                                    ; preds = %1240
  %1247 = add i32 %33, 240
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 65535
  %1251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1250)  ; LegacyF16ToF32(value)
  %1252 = lshr i32 %1249, 16
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = add i32 %33, 244
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, 65535
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = lshr i32 %1260, 24
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1262, 0x3F70101020000000
  %1264 = and i32 %1260, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = lshr i32 %1260, 8
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = lshr i32 %1260, 16
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1273, 0x3F70101020000000
  %1275 = add i32 %33, 236
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 24
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = and i32 %1277, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = lshr i32 %1277, 8
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = lshr i32 %1277, 16
  %1289 = and i32 %1288, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = bitcast float %1216 to i32
  %1293 = ashr i32 %1292, 1
  %1294 = sub nsw i32 1597463174, %1293
  %1295 = bitcast i32 %1294 to float
  %1296 = fmul fast float %1216, 5.000000e-01
  %1297 = fmul fast float %1295, %1295
  %1298 = fmul fast float %1297, %1296
  %1299 = fsub fast float 1.500000e+00, %1298
  %1300 = fmul fast float %1295, %1216
  %1301 = fmul fast float %1300, %1299
  %1302 = bitcast float %1217 to i32
  %1303 = ashr i32 %1302, 1
  %1304 = sub nsw i32 1597463174, %1303
  %1305 = bitcast i32 %1304 to float
  %1306 = fmul fast float %1217, 5.000000e-01
  %1307 = fmul fast float %1305, %1305
  %1308 = fmul fast float %1307, %1306
  %1309 = fsub fast float 1.500000e+00, %1308
  %1310 = fmul fast float %1305, %1217
  %1311 = fmul fast float %1310, %1309
  %1312 = bitcast float %1218 to i32
  %1313 = ashr i32 %1312, 1
  %1314 = sub nsw i32 1597463174, %1313
  %1315 = bitcast i32 %1314 to float
  %1316 = fmul fast float %1218, 5.000000e-01
  %1317 = fmul fast float %1315, %1315
  %1318 = fmul fast float %1317, %1316
  %1319 = fsub fast float 1.500000e+00, %1318
  %1320 = fmul fast float %1315, %1218
  %1321 = fmul fast float %1320, %1319
  %1322 = fsub fast float %1301, %1283
  %1323 = fsub fast float %1311, %1287
  %1324 = fsub fast float %1321, %1291
  %1325 = fmul fast float %1322, %1251
  %1326 = fmul fast float %1323, %1253
  %1327 = fmul fast float %1324, %1258
  %1328 = fadd fast float %1325, %1266
  %1329 = fadd fast float %1326, %1270
  %1330 = fadd fast float %1327, %1274
  %1331 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1332 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = fmul fast float %1331, %1331
  %1335 = fmul fast float %1332, %1332
  %1336 = fmul fast float %1333, %1333
  %1337 = fsub fast float %1334, %1216
  %1338 = fsub fast float %1335, %1217
  %1339 = fsub fast float %1336, %1218
  %1340 = fmul fast float %1337, %1241
  %1341 = fmul fast float %1338, %1241
  %1342 = fmul fast float %1339, %1241
  %1343 = fadd fast float %1340, %1216
  %1344 = fadd fast float %1341, %1217
  %1345 = fadd fast float %1342, %1218
  %1346 = fadd fast float %1263, %1227
  %1347 = fsub fast float %1346, %1280
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fsub fast float %1348, %1227
  %1350 = fmul fast float %1349, %1241
  %1351 = fadd fast float %1350, %1227
  br label %1405

; <label>:1352                                    ; preds = %1240
  %1353 = and i32 %1243, 134217728
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1389, label %1355

; <label>:1355                                    ; preds = %1352
  %1356 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1357 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1358 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1359 = fadd fast float %1356, -5.000000e-01
  %1360 = fadd fast float %1357, -5.000000e-01
  %1361 = fadd fast float %1358, -5.000000e-01
  %1362 = fmul fast float %1359, %1241
  %1363 = fmul fast float %1360, %1241
  %1364 = fmul fast float %1361, %1241
  %1365 = fadd fast float %1362, 5.000000e-01
  %1366 = fadd fast float %1363, 5.000000e-01
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1369 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1370 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1371 = fmul fast float %1365, 2.000000e+00
  %1372 = fsub fast float 1.000000e+00, %1371
  %1373 = fmul fast float %1372, %1368
  %1374 = fadd fast float %1373, %1371
  %1375 = fmul fast float %1374, %1368
  %1376 = fmul fast float %1366, 2.000000e+00
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1377, %1369
  %1379 = fadd fast float %1378, %1376
  %1380 = fmul fast float %1379, %1369
  %1381 = fmul fast float %1367, 2.000000e+00
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1382, %1370
  %1384 = fadd fast float %1383, %1381
  %1385 = fmul fast float %1384, %1370
  %1386 = fmul fast float %1375, %1375
  %1387 = fmul fast float %1380, %1380
  %1388 = fmul fast float %1385, %1385
  br label %1405

; <label>:1389                                    ; preds = %1352
  %1390 = fmul fast float %233, %233
  %1391 = fmul fast float %237, %237
  %1392 = fmul fast float %241, %241
  %1393 = fadd fast float %1390, -1.000000e+00
  %1394 = fadd fast float %1391, -1.000000e+00
  %1395 = fadd fast float %1392, -1.000000e+00
  %1396 = fmul fast float %1241, %1393
  %1397 = fmul fast float %1241, %1394
  %1398 = fmul fast float %1241, %1395
  %1399 = fadd fast float %1396, 1.000000e+00
  %1400 = fadd fast float %1397, 1.000000e+00
  %1401 = fadd fast float %1398, 1.000000e+00
  %1402 = fmul fast float %1399, %1216
  %1403 = fmul fast float %1400, %1217
  %1404 = fmul fast float %1401, %1218
  br label %1405

; <label>:1405                                    ; preds = %1389, %1355, %1246, %1202
  %1406 = phi float [ %1351, %1246 ], [ %1227, %1355 ], [ %1227, %1389 ], [ 0x3FA23C0BE0000000, %1202 ]
  %1407 = phi float [ %1343, %1246 ], [ %1386, %1355 ], [ %1402, %1389 ], [ 1.000000e+00, %1202 ]
  %1408 = phi float [ %1344, %1246 ], [ %1387, %1355 ], [ %1403, %1389 ], [ 1.000000e+00, %1202 ]
  %1409 = phi float [ %1345, %1246 ], [ %1388, %1355 ], [ %1404, %1389 ], [ 1.000000e+00, %1202 ]
  %1410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.i32 %1410, 1
  %1412 = and i32 %1411, 1
  %1413 = icmp ne i32 %1412, 0
  %1414 = add i32 %33, 356
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = and i32 %1416, 32
  %1418 = icmp ne i32 %1417, 0
  %1419 = and i1 %1413, %1418
  %1420 = select i1 %1419, float 1.000000e+00, float %1407
  %1421 = select i1 %1419, float 0x3FD3333340000000, float %1408
  %1422 = select i1 %1419, float 0x3FD3333340000000, float %1409
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 32
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1499, label %1427

; <label>:1427                                    ; preds = %1405
  %1428 = add i32 %33, 108
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %33, 380
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %1433, 0
  %1435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1435, %dx.types.Handle %64, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.ResRet.f32 %1436, 2
  %1440 = extractvalue %dx.types.ResRet.f32 %1436, 3
  %1441 = and i32 %1430, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = lshr i32 %1430, 8
  %1444 = and i32 %1443, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1430, 16
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = fmul fast float %1448, 0x3F70101000000000
  %1450 = fmul fast float %1437, %1442
  %1451 = fadd fast float %1450, %1445
  %1452 = fmul fast float %1451, 0x3F70101000000000
  %1453 = fadd fast float %1438, -5.000000e-01
  %1454 = fadd fast float %1440, -5.000000e-01
  %1455 = fmul fast float %1453, %1449
  %1456 = fmul fast float %1454, %1449
  %1457 = fadd fast float %1455, 5.000000e-01
  %1458 = fadd fast float %1456, 5.000000e-01
  %1459 = fmul fast float %1457, 2.000000e+00
  %1460 = fadd fast float %1459, -1.000000e+00
  %1461 = fmul fast float %1458, 2.000000e+00
  %1462 = fadd fast float %1461, -1.000000e+00
  %1463 = fadd fast float %1460, %1462
  %1464 = fmul fast float %1463, 5.000000e-01
  %1465 = fsub fast float %1460, %1462
  %1466 = fmul fast float %1465, 5.000000e-01
  %1467 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1468 = fsub fast float 1.000000e+00, %1467
  %1469 = call float @dx.op.unary.f32(i32 6, float %1466)  ; FAbs(value)
  %1470 = fsub fast float %1468, %1469
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1464, float %1466, float %1470, float %1464, float %1466, float %1470)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.unary.f32(i32 25, float %1471)  ; Rsqrt(value)
  %1473 = fmul fast float %1464, %1472
  %1474 = fmul fast float %1466, %1472
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 67108864
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1495, label %1479

; <label>:1479                                    ; preds = %1427
  %1480 = add i32 %33, 296
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 65535
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = lshr i32 %1482, 16
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = fsub fast float %1452, %1490
  %1492 = fmul fast float %1491, %1484
  %1493 = fadd fast float %1492, %1488
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  br label %1495

; <label>:1495                                    ; preds = %1479, %1427
  %1496 = phi float [ %1494, %1479 ], [ %1452, %1427 ]
  %1497 = call float @dx.op.dot2.f32(i32 54, float %1473, float %1474, float %916, float %917)  ; Dot2(ax,ay,bx,by)
  %1498 = call float @dx.op.dot2.f32(i32 54, float %1473, float %1474, float %918, float %919)  ; Dot2(ax,ay,bx,by)
  br label %1499

; <label>:1499                                    ; preds = %1495, %1405
  %1500 = phi float [ %1496, %1495 ], [ 0x3FD6666660000000, %1405 ]
  %1501 = phi float [ %1497, %1495 ], [ 0.000000e+00, %1405 ]
  %1502 = phi float [ %1498, %1495 ], [ 0.000000e+00, %1405 ]
  %1503 = phi float [ %1439, %1495 ], [ 1.000000e+00, %1405 ]
  %1504 = add i32 %33, 176
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = lshr i32 %1506, 22
  %1508 = shl nuw nsw i32 %1507, 5
  %1509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1508)  ; LegacyF16ToF32(value)
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 64
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1547, label %1514

; <label>:1514                                    ; preds = %1499
  %1515 = add i32 %33, 396
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = add i32 %1517, 0
  %1519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 131072
  %1523 = icmp eq i32 %1522, 0
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1519, %dx.types.Handle %64, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = fmul fast float %1525, %221
  %1529 = fmul fast float %1526, %224
  %1530 = fmul fast float %1527, %227
  br i1 %1523, label %1537, label %1531

; <label>:1531                                    ; preds = %1514
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 0
  %1534 = fmul fast float %1533, %1528
  %1535 = fmul fast float %1533, %1529
  %1536 = fmul fast float %1533, %1530
  br label %1537

; <label>:1537                                    ; preds = %1531, %1514
  %1538 = phi float [ %1534, %1531 ], [ %1528, %1514 ]
  %1539 = phi float [ %1535, %1531 ], [ %1529, %1514 ]
  %1540 = phi float [ %1536, %1531 ], [ %1530, %1514 ]
  %1541 = fmul fast float %1538, %1509
  %1542 = select i1 %173, float %1541, float %1538
  %1543 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1539, float %1540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1544 = select i1 %173, float 0.000000e+00, float %1538
  %1545 = select i1 %173, float %1543, float %1539
  %1546 = select i1 %173, float 0.000000e+00, float %1540
  br label %1547

; <label>:1547                                    ; preds = %1537, %1499
  %1548 = phi float [ %1544, %1537 ], [ 0.000000e+00, %1499 ]
  %1549 = phi float [ %1545, %1537 ], [ 0.000000e+00, %1499 ]
  %1550 = phi float [ %1546, %1537 ], [ 0.000000e+00, %1499 ]
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 65536
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1565, label %1555

; <label>:1555                                    ; preds = %1547
  %1556 = add i32 %33, 476
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %65, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  br label %1565

; <label>:1565                                    ; preds = %1555, %1547
  %1566 = phi float [ %1562, %1555 ], [ 0.000000e+00, %1547 ]
  %1567 = phi float [ %1563, %1555 ], [ 0.000000e+00, %1547 ]
  %1568 = phi float [ %1564, %1555 ], [ 0.000000e+00, %1547 ]
  %1569 = add i32 %33, 112
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1571, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1420, float %1421, float %1422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = fmul fast float %1576, %1577
  %1579 = fadd fast float %1578, %1573
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  br i1 %904, label %1582, label %1593

; <label>:1582                                    ; preds = %1565
  %1583 = fsub fast float 1.000000e+00, %1200
  %1584 = fmul fast float %1583, %889
  %1585 = fmul fast float %1583, %890
  %1586 = fmul fast float %1583, %891
  %1587 = fmul fast float %1583, %895
  %1588 = fmul fast float %1583, %896
  %1589 = fmul fast float %1583, %897
  %1590 = fmul fast float %1583, %892
  %1591 = fmul fast float %1583, %893
  %1592 = fmul fast float %1583, %894
  br label %1593

; <label>:1593                                    ; preds = %1582, %1565
  %1594 = phi float [ %1584, %1582 ], [ %889, %1565 ]
  %1595 = phi float [ %1585, %1582 ], [ %890, %1565 ]
  %1596 = phi float [ %1586, %1582 ], [ %891, %1565 ]
  %1597 = phi float [ %1590, %1582 ], [ %892, %1565 ]
  %1598 = phi float [ %1591, %1582 ], [ %893, %1565 ]
  %1599 = phi float [ %1592, %1582 ], [ %894, %1565 ]
  %1600 = phi float [ %1587, %1582 ], [ %895, %1565 ]
  %1601 = phi float [ %1588, %1582 ], [ %896, %1565 ]
  %1602 = phi float [ %1589, %1582 ], [ %897, %1565 ]
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 3
  %1606 = icmp eq i32 %1605, 3
  br i1 %1606, label %1697, label %1607

; <label>:1607                                    ; preds = %1593
  %1608 = and i32 %1604, 16
  %1609 = icmp ne i32 %1608, 0
  %1610 = select i1 %1609, float %1200, float 0.000000e+00
  %1611 = icmp eq i32 %1605, 0
  br i1 %1611, label %1612, label %1652

; <label>:1612                                    ; preds = %1607
  %1613 = and i32 %1604, 64
  %1614 = icmp ne i32 %1613, 0
  %1615 = select i1 %1614, float %1200, float 0.000000e+00
  %1616 = and i32 %1604, 65536
  %1617 = icmp ne i32 %1616, 0
  %1618 = select i1 %1617, float %1200, float 0.000000e+00
  %1619 = fsub fast float %1420, %1594
  %1620 = fsub fast float %1421, %1595
  %1621 = fsub fast float %1422, %1596
  %1622 = fmul fast float %1610, %1619
  %1623 = fmul fast float %1610, %1620
  %1624 = fmul fast float %1610, %1621
  %1625 = fadd fast float %1622, %1594
  %1626 = fadd fast float %1623, %1595
  %1627 = fadd fast float %1624, %1596
  %1628 = fsub fast float %1406, %898
  %1629 = fmul fast float %1610, %1628
  %1630 = fadd fast float %1629, %898
  %1631 = fsub fast float %1548, %1600
  %1632 = fsub fast float %1549, %1601
  %1633 = fsub fast float %1550, %1602
  %1634 = fmul fast float %1615, %1631
  %1635 = fmul fast float %1615, %1632
  %1636 = fmul fast float %1615, %1633
  %1637 = fadd fast float %1634, %1600
  %1638 = fadd fast float %1635, %1601
  %1639 = fadd fast float %1636, %1602
  %1640 = fsub fast float %1566, %1597
  %1641 = fsub fast float %1567, %1598
  %1642 = fsub fast float %1568, %1599
  %1643 = fmul fast float %1618, %1640
  %1644 = fmul fast float %1618, %1641
  %1645 = fmul fast float %1618, %1642
  %1646 = fadd fast float %1643, %1597
  %1647 = fadd fast float %1644, %1598
  %1648 = fadd fast float %1645, %1599
  %1649 = fsub fast float %1581, %902
  %1650 = fmul fast float %1610, %1649
  %1651 = fadd fast float %1650, %902
  br label %1697

; <label>:1652                                    ; preds = %1607
  %1653 = icmp eq i32 %1605, 1
  br i1 %1653, label %1654, label %1667

; <label>:1654                                    ; preds = %1652
  %1655 = fadd fast float %1420, -1.000000e+00
  %1656 = fadd fast float %1421, -1.000000e+00
  %1657 = fadd fast float %1422, -1.000000e+00
  %1658 = fmul fast float %1610, %1655
  %1659 = fmul fast float %1610, %1656
  %1660 = fmul fast float %1610, %1657
  %1661 = fadd fast float %1658, 1.000000e+00
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fmul fast float %1661, %1594
  %1665 = fmul fast float %1662, %1595
  %1666 = fmul fast float %1663, %1596
  br label %1697

; <label>:1667                                    ; preds = %1652
  %1668 = icmp eq i32 %1605, 2
  br i1 %1668, label %1669, label %1697

; <label>:1669                                    ; preds = %1667
  %1670 = call float @dx.op.unary.f32(i32 24, float %1420)  ; Sqrt(value)
  %1671 = call float @dx.op.unary.f32(i32 24, float %1421)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fmul fast float %1673, %1610
  %1677 = fmul fast float %1674, %1610
  %1678 = fmul fast float %1675, %1610
  %1679 = fadd fast float %1676, 5.000000e-01
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fmul fast float %1679, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1594
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1594
  %1687 = fmul fast float %1680, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1595
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1595
  %1692 = fmul fast float %1681, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1596
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1596
  br label %1697

; <label>:1697                                    ; preds = %1669, %1667, %1654, %1612, %1593
  %1698 = phi float [ %1594, %1593 ], [ %1686, %1669 ], [ %1594, %1667 ], [ %1664, %1654 ], [ %1625, %1612 ]
  %1699 = phi float [ %1595, %1593 ], [ %1691, %1669 ], [ %1595, %1667 ], [ %1665, %1654 ], [ %1626, %1612 ]
  %1700 = phi float [ %1596, %1593 ], [ %1696, %1669 ], [ %1596, %1667 ], [ %1666, %1654 ], [ %1627, %1612 ]
  %1701 = phi float [ %1597, %1593 ], [ %1597, %1669 ], [ %1597, %1667 ], [ %1597, %1654 ], [ %1646, %1612 ]
  %1702 = phi float [ %1598, %1593 ], [ %1598, %1669 ], [ %1598, %1667 ], [ %1598, %1654 ], [ %1647, %1612 ]
  %1703 = phi float [ %1599, %1593 ], [ %1599, %1669 ], [ %1599, %1667 ], [ %1599, %1654 ], [ %1648, %1612 ]
  %1704 = phi float [ %1600, %1593 ], [ %1600, %1669 ], [ %1600, %1667 ], [ %1600, %1654 ], [ %1637, %1612 ]
  %1705 = phi float [ %1601, %1593 ], [ %1601, %1669 ], [ %1601, %1667 ], [ %1601, %1654 ], [ %1638, %1612 ]
  %1706 = phi float [ %1602, %1593 ], [ %1602, %1669 ], [ %1602, %1667 ], [ %1602, %1654 ], [ %1639, %1612 ]
  %1707 = phi float [ %898, %1593 ], [ %898, %1669 ], [ %898, %1667 ], [ %898, %1654 ], [ %1630, %1612 ]
  %1708 = phi float [ %902, %1593 ], [ %902, %1669 ], [ %902, %1667 ], [ %902, %1654 ], [ %1651, %1612 ]
  %1709 = and i32 %1604, 12
  %1710 = icmp eq i32 %1709, 12
  br i1 %1710, label %1783, label %1711

; <label>:1711                                    ; preds = %1697
  %1712 = and i32 %1604, 2097184
  %1713 = icmp eq i32 %1712, 2097184
  %1714 = select i1 %1713, float %1200, float 0.000000e+00
  %1715 = and i32 %1604, 4194336
  %1716 = icmp eq i32 %1715, 4194336
  %1717 = select i1 %1716, float %1200, float 0.000000e+00
  %1718 = and i32 %1604, 8388640
  %1719 = icmp eq i32 %1718, 8388640
  %1720 = select i1 %1719, float %1200, float 0.000000e+00
  %1721 = icmp eq i32 %1709, 0
  br i1 %1721, label %1722, label %1735

; <label>:1722                                    ; preds = %1711
  %1723 = fsub fast float %1501, %887
  %1724 = fsub fast float %1502, %888
  %1725 = fmul fast float %1714, %1723
  %1726 = fmul fast float %1714, %1724
  %1727 = fadd fast float %1725, %887
  %1728 = fadd fast float %1726, %888
  %1729 = fsub fast float %1503, %901
  %1730 = fmul fast float %1717, %1729
  %1731 = fadd fast float %1730, %901
  %1732 = fsub fast float %1500, %900
  %1733 = fmul fast float %1720, %1732
  %1734 = fadd fast float %1733, %900
  br label %1783

; <label>:1735                                    ; preds = %1711
  %1736 = icmp eq i32 %1709, 4
  br i1 %1736, label %1737, label %1769

; <label>:1737                                    ; preds = %1735
  %1738 = fmul fast float %1714, %1501
  %1739 = fmul fast float %1714, %1502
  %1740 = fadd fast float %1738, %887
  %1741 = fadd fast float %1739, %888
  %1742 = call float @dx.op.binary.f32(i32 36, float %901, float %1503)  ; FMin(a,b)
  %1743 = fsub fast float %1742, %901
  %1744 = fmul fast float %1743, %1717
  %1745 = fadd fast float %1744, %901
  %1746 = fadd fast float %1500, %900
  %1747 = fmul fast float %1746, 0x3FF337FAE0000000
  %1748 = fmul fast float %900, %900
  %1749 = fmul fast float %1500, %1500
  %1750 = fadd fast float %1749, %1748
  %1751 = fmul fast float %1750, 0x3FE5152B00000000
  %1752 = fmul fast float %900, 0xBFCC1F85E0000000
  %1753 = fmul fast float %1752, %1500
  %1754 = fadd fast float %1753, 0xBFE1363700000000
  %1755 = fadd fast float %1754, %1747
  %1756 = fsub fast float %1755, %1751
  %1757 = fmul fast float %1746, 0x3FBA6F0D00000000
  %1758 = fmul fast float %1750, 0x3FD0432880000000
  %1759 = fmul fast float %900, 0xBFEF110800000000
  %1760 = fmul fast float %1759, %1500
  %1761 = fadd fast float %1760, 1.000000e+00
  %1762 = fsub fast float %1761, %1757
  %1763 = fadd fast float %1762, %1758
  %1764 = fdiv fast float %1756, %1763
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1766 = fsub fast float %1765, %900
  %1767 = fmul fast float %1766, %1720
  %1768 = fadd fast float %1767, %900
  br label %1783

; <label>:1769                                    ; preds = %1735
  %1770 = icmp eq i32 %1709, 8
  br i1 %1770, label %1771, label %1783

; <label>:1771                                    ; preds = %1769
  %1772 = fmul fast float %1714, %1501
  %1773 = fmul fast float %1714, %1502
  %1774 = fadd fast float %1772, %887
  %1775 = fadd fast float %1773, %888
  %1776 = call float @dx.op.binary.f32(i32 36, float %901, float %1503)  ; FMin(a,b)
  %1777 = fsub fast float %1776, %901
  %1778 = fmul fast float %1777, %1717
  %1779 = fadd fast float %1778, %901
  %1780 = fsub fast float %1500, %900
  %1781 = fmul fast float %1720, %1780
  %1782 = fadd fast float %1781, %900
  br label %1783

; <label>:1783                                    ; preds = %1771, %1769, %1737, %1722, %1697, %1199, %903, %886
  %1784 = phi float [ %887, %1697 ], [ %887, %1199 ], [ %887, %886 ], [ %1774, %1771 ], [ %887, %1769 ], [ %1740, %1737 ], [ %1727, %1722 ], [ %887, %903 ]
  %1785 = phi float [ %888, %1697 ], [ %888, %1199 ], [ %888, %886 ], [ %1775, %1771 ], [ %888, %1769 ], [ %1741, %1737 ], [ %1728, %1722 ], [ %888, %903 ]
  %1786 = phi float [ %1698, %1697 ], [ %889, %1199 ], [ %889, %886 ], [ %1698, %1771 ], [ %1698, %1769 ], [ %1698, %1737 ], [ %1698, %1722 ], [ %889, %903 ]
  %1787 = phi float [ %1699, %1697 ], [ %890, %1199 ], [ %890, %886 ], [ %1699, %1771 ], [ %1699, %1769 ], [ %1699, %1737 ], [ %1699, %1722 ], [ %890, %903 ]
  %1788 = phi float [ %1700, %1697 ], [ %891, %1199 ], [ %891, %886 ], [ %1700, %1771 ], [ %1700, %1769 ], [ %1700, %1737 ], [ %1700, %1722 ], [ %891, %903 ]
  %1789 = phi float [ %1701, %1697 ], [ %892, %1199 ], [ %892, %886 ], [ %1701, %1771 ], [ %1701, %1769 ], [ %1701, %1737 ], [ %1701, %1722 ], [ %892, %903 ]
  %1790 = phi float [ %1702, %1697 ], [ %893, %1199 ], [ %893, %886 ], [ %1702, %1771 ], [ %1702, %1769 ], [ %1702, %1737 ], [ %1702, %1722 ], [ %893, %903 ]
  %1791 = phi float [ %1703, %1697 ], [ %894, %1199 ], [ %894, %886 ], [ %1703, %1771 ], [ %1703, %1769 ], [ %1703, %1737 ], [ %1703, %1722 ], [ %894, %903 ]
  %1792 = phi float [ %1704, %1697 ], [ %895, %1199 ], [ %895, %886 ], [ %1704, %1771 ], [ %1704, %1769 ], [ %1704, %1737 ], [ %1704, %1722 ], [ %895, %903 ]
  %1793 = phi float [ %1705, %1697 ], [ %896, %1199 ], [ %896, %886 ], [ %1705, %1771 ], [ %1705, %1769 ], [ %1705, %1737 ], [ %1705, %1722 ], [ %896, %903 ]
  %1794 = phi float [ %1706, %1697 ], [ %897, %1199 ], [ %897, %886 ], [ %1706, %1771 ], [ %1706, %1769 ], [ %1706, %1737 ], [ %1706, %1722 ], [ %897, %903 ]
  %1795 = phi float [ %1707, %1697 ], [ %898, %1199 ], [ %898, %886 ], [ %1707, %1771 ], [ %1707, %1769 ], [ %1707, %1737 ], [ %1707, %1722 ], [ %898, %903 ]
  %1796 = phi float [ %900, %1697 ], [ %900, %1199 ], [ %900, %886 ], [ %1782, %1771 ], [ %900, %1769 ], [ %1768, %1737 ], [ %1734, %1722 ], [ %900, %903 ]
  %1797 = phi float [ %901, %1697 ], [ %901, %1199 ], [ %901, %886 ], [ %1779, %1771 ], [ %901, %1769 ], [ %1745, %1737 ], [ %1731, %1722 ], [ %901, %903 ]
  %1798 = phi float [ %1708, %1697 ], [ %902, %1199 ], [ %902, %886 ], [ %1708, %1771 ], [ %1708, %1769 ], [ %1708, %1737 ], [ %1708, %1722 ], [ %902, %903 ]
  br i1 %348, label %2679, label %1799

; <label>:1799                                    ; preds = %1783
  %1800 = icmp ult i32 %401, 3
  %1801 = add i32 %33, 56
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = add i32 %33, 60
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = or i32 %1806, %1803
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %2679, label %1809

; <label>:1809                                    ; preds = %1799
  %1810 = and i32 %1803, 262144
  %1811 = icmp ne i32 %1810, 0
  %1812 = select i1 %1811, float %36, float 1.000000e+00
  %1813 = select i1 %1811, float %37, float 0.000000e+00
  %1814 = select i1 %1811, float %38, float 0.000000e+00
  %1815 = select i1 %1811, float %39, float 1.000000e+00
  %1816 = select i1 %1811, float %40, float %56
  %1817 = select i1 %1811, float %41, float %57
  %1818 = add i32 %33, 316
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = lshr i32 %1820, 16
  %1822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1821)  ; LegacyF16ToF32(value)
  %1823 = fmul fast float %1822, 0x3F50624DE0000000
  %1824 = add i32 %33, 120
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = lshr i32 %1826, 16
  %1828 = and i32 %1827, 255
  %1829 = lshr i32 %1826, 24
  %1830 = add i32 %33, 324
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1832, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = add i32 %33, 64
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = lshr i32 %1839, 22
  %1841 = shl nuw nsw i32 %1840, 5
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = shl i32 %1839, 4
  %1844 = and i32 %1843, 32752
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = lshr i32 %1839, 7
  %1847 = and i32 %1846, 32752
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1851 = fmul fast float %1850, 1.000000e+03
  %1852 = fmul fast float %298, %1851
  %1853 = call float @dx.op.unary.f32(i32 22, float %1852)  ; Frc(value)
  %1854 = fadd fast float %1853, %288
  %1855 = fmul fast float %299, %1851
  %1856 = call float @dx.op.unary.f32(i32 22, float %1855)  ; Frc(value)
  %1857 = fadd fast float %1856, %290
  %1858 = fmul fast float %1823, %1851
  %1859 = call float @dx.op.unary.f32(i32 22, float %1858)  ; Frc(value)
  %1860 = fmul fast float %1859, 0x401921FB60000000
  %1861 = fadd fast float %1860, %1842
  %1862 = call float @dx.op.unary.f32(i32 13, float %1861)  ; Sin(value)
  %1863 = call float @dx.op.unary.f32(i32 12, float %1861)  ; Cos(value)
  %1864 = fsub fast float -0.000000e+00, %1862
  %1865 = fadd fast float %1816, -5.000000e-01
  %1866 = fadd fast float %1817, -5.000000e-01
  %1867 = fmul fast float %1834, %1865
  %1868 = fmul fast float %1836, %1866
  %1869 = fadd fast float %1867, 5.000000e-01
  %1870 = fadd fast float %1868, 5.000000e-01
  %1871 = fmul fast float %1845, %1869
  %1872 = fmul fast float %1848, %1870
  %1873 = fmul fast float %1863, %1871
  %1874 = call float @dx.op.tertiary.f32(i32 46, float %1864, float %1872, float %1873)  ; FMad(a,b,c)
  %1875 = fmul fast float %1862, %1871
  %1876 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1872, float %1875)  ; FMad(a,b,c)
  %1877 = fadd fast float %1854, %1874
  %1878 = fadd fast float %1857, %1876
  %1879 = icmp ugt i32 %1828, 1
  %1880 = icmp ugt i32 %1826, 33554431
  %1881 = or i1 %1880, %1879
  br i1 %1881, label %1882, label %1907

; <label>:1882                                    ; preds = %1809
  %1883 = add i32 %33, 260
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = lshr i32 %1885, 16
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = fmul fast float %1850, %1887
  %1889 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1890 = mul nuw nsw i32 %1828, %1829
  %1891 = uitofp i32 %1890 to float
  %1892 = fmul fast float %1889, %1891
  %1893 = call float @dx.op.unary.f32(i32 27, float %1892)  ; Round_ni(value)
  %1894 = fptoui float %1893 to i32
  %1895 = urem i32 %1894, %1828
  %1896 = udiv i32 %1894, %1829
  %1897 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1898 = call float @dx.op.unary.f32(i32 22, float %1878)  ; Frc(value)
  %1899 = uitofp i32 %1895 to float
  %1900 = uitofp i32 %1896 to float
  %1901 = fadd fast float %1897, %1899
  %1902 = fadd fast float %1898, %1900
  %1903 = uitofp i32 %1828 to float
  %1904 = uitofp i32 %1829 to float
  %1905 = fdiv fast float %1901, %1903
  %1906 = fdiv fast float %1902, %1904
  br label %1907

; <label>:1907                                    ; preds = %1882, %1809
  %1908 = phi float [ %1905, %1882 ], [ %1877, %1809 ]
  %1909 = phi float [ %1906, %1882 ], [ %1878, %1809 ]
  %1910 = and i32 %1803, 16777216
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %2021, label %1912

; <label>:1912                                    ; preds = %1907
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.CBufRet.f32 %1913, 1
  %1916 = extractvalue %dx.types.CBufRet.f32 %1913, 2
  %1917 = fadd fast float %1914, %131
  %1918 = fadd fast float %1915, %132
  %1919 = fadd fast float %1916, %133
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = icmp eq i32 %34, 65535
  br i1 %1923, label %2018, label %1924

; <label>:1924                                    ; preds = %1912
  %1925 = lshr i32 %34, 1
  %1926 = shl i32 %1925, 2
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %34, 1
  %1930 = icmp ne i32 %1929, 0
  %1931 = lshr i32 %1928, 16
  %1932 = and i32 %1928, 65535
  %1933 = select i1 %1930, i32 %1931, i32 %1932
  %1934 = icmp eq i32 %1933, 65535
  br i1 %1934, label %2014, label %1935

; <label>:1935                                    ; preds = %1924
  %1936 = mul nuw nsw i32 %1933, 40
  %1937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.ResRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.ResRet.f32 %1937, 2
  %1941 = add nuw nsw i32 %1936, 12
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.ResRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.ResRet.f32 %1942, 2
  %1946 = add nuw nsw i32 %1936, 24
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1951 = add nuw nsw i32 %1936, 36
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = fsub fast float %1917, %1938
  %1955 = fsub fast float %1918, %1939
  %1956 = fsub fast float %1919, %1940
  %1957 = fmul fast float %1953, %1954
  %1958 = fmul fast float %1953, %1955
  %1959 = fmul fast float %1953, %1956
  %1960 = call float @dx.op.unary.f32(i32 27, float %1957)  ; Round_ni(value)
  %1961 = call float @dx.op.unary.f32(i32 27, float %1958)  ; Round_ni(value)
  %1962 = call float @dx.op.unary.f32(i32 27, float %1959)  ; Round_ni(value)
  %1963 = fadd fast float %1960, 5.000000e-01
  %1964 = fadd fast float %1961, 5.000000e-01
  %1965 = fadd fast float %1962, 5.000000e-01
  %1966 = fmul fast float %1963, %1943
  %1967 = fmul fast float %1964, %1944
  %1968 = fmul fast float %1965, %1945
  %1969 = shl i32 %34, 2
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1975 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1976 = call float @dx.op.unary.f32(i32 22, float %1968)  ; Frc(value)
  %1977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1973, %dx.types.Handle %30, float %1974, float %1975, float %1976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = fmul fast float %1978, 1.023000e+03
  %1982 = fmul fast float %1979, 1.023000e+03
  %1983 = fmul fast float %1980, 1.023000e+03
  %1984 = fadd fast float %1981, 5.000000e-01
  %1985 = fadd fast float %1982, 5.000000e-01
  %1986 = fadd fast float %1983, 5.000000e-01
  %1987 = call float @dx.op.unary.f32(i32 27, float %1984)  ; Round_ni(value)
  %1988 = call float @dx.op.unary.f32(i32 27, float %1985)  ; Round_ni(value)
  %1989 = call float @dx.op.unary.f32(i32 27, float %1986)  ; Round_ni(value)
  %1990 = fsub fast float %1957, %1960
  %1991 = fsub fast float %1958, %1961
  %1992 = fsub fast float %1959, %1962
  %1993 = fmul fast float %1990, 7.500000e-01
  %1994 = fmul fast float %1991, 7.500000e-01
  %1995 = fmul fast float %1992, 7.500000e-01
  %1996 = fadd fast float %1960, 1.250000e-01
  %1997 = fadd fast float %1996, %1993
  %1998 = fadd fast float %1997, %1987
  %1999 = fadd fast float %1961, 1.250000e-01
  %2000 = fadd fast float %1999, %1994
  %2001 = fadd fast float %2000, %1988
  %2002 = fadd fast float %1962, 1.250000e-01
  %2003 = fadd fast float %2002, %1995
  %2004 = fadd fast float %2003, %1989
  %2005 = fmul fast float %1998, %1948
  %2006 = fmul fast float %2001, %1949
  %2007 = fmul fast float %2004, %1950
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2011, %dx.types.Handle %28, float %2005, float %2006, float %2007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  br label %2014

; <label>:2014                                    ; preds = %1935, %1924
  %2015 = phi float [ %2013, %1935 ], [ -1.000000e+00, %1924 ]
  %2016 = fadd fast float %2015, %1922
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  br label %2018

; <label>:2018                                    ; preds = %2014, %1912
  %2019 = phi float [ %2017, %2014 ], [ %1922, %1912 ]
  %2020 = fmul fast float %2019, %397
  br label %2021

; <label>:2021                                    ; preds = %2018, %1907
  %2022 = phi float [ %2020, %2018 ], [ %397, %1907 ]
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 256
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2073, label %2027

; <label>:2027                                    ; preds = %2021
  %2028 = add i32 %33, 432
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = add i32 %2030, 0
  %2032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2032, %dx.types.Handle %65, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = add i32 %33, 132
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = shl i32 %2037, 4
  %2039 = and i32 %2038, 32752
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = lshr i32 %2037, 7
  %2042 = and i32 %2041, 32752
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = fsub fast float 1.000000e+00, %2022
  %2045 = call float @dx.op.binary.f32(i32 35, float %2044, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2046 = bitcast float %2022 to i32
  %2047 = sitofp i32 %2046 to float
  %2048 = fadd fast float %2047, 0xC1CFBF8940000000
  %2049 = fmul fast float %2043, %2048
  %2050 = fadd fast float %2049, 0x41CFBF8940000000
  %2051 = fptosi float %2050 to i32
  %2052 = bitcast i32 %2051 to float
  %2053 = bitcast float %2045 to i32
  %2054 = sitofp i32 %2053 to float
  %2055 = fadd fast float %2054, 0xC1CFBF8940000000
  %2056 = fmul fast float %2055, %2043
  %2057 = fadd fast float %2056, 0x41CFBF8940000000
  %2058 = fptosi float %2057 to i32
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %2052, %2040
  %2061 = fmul fast float %2059, %2040
  %2062 = fsub fast float %2045, %2060
  %2063 = fadd fast float %2061, %2045
  %2064 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2065 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2066 = fsub fast float %2034, %2064
  %2067 = fsub fast float %2065, %2064
  %2068 = bitcast float %2067 to i32
  %2069 = sub nsw i32 2129859010, %2068
  %2070 = bitcast i32 %2069 to float
  %2071 = fmul fast float %2070, %2066
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  br label %2073

; <label>:2073                                    ; preds = %2027, %2021
  %2074 = phi float [ %2072, %2027 ], [ %2022, %2021 ]
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 128
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2095, label %2079

; <label>:2079                                    ; preds = %2073
  %2080 = add i32 %33, 416
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = add i32 %2082, 0
  %2084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2084, %dx.types.Handle %65, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 524288
  %2090 = icmp ne i32 %2089, 0
  %2091 = fcmp fast ogt float %2086, 0x3FE0101020000000
  %2092 = select i1 %2091, float 1.000000e+00, float 0.000000e+00
  %2093 = select i1 %2090, float %2092, float %2086
  %2094 = fmul fast float %2093, %2074
  br label %2095

; <label>:2095                                    ; preds = %2079, %2073
  %2096 = phi float [ %2094, %2079 ], [ %2074, %2073 ]
  %2097 = fcmp fast ult float %2096, 0x3F70101020000000
  br i1 %2097, label %2679, label %2098

; <label>:2098                                    ; preds = %2095
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 16
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2301, label %2103

; <label>:2103                                    ; preds = %2098
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = add i32 %33, 368
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = add i32 %2108, 0
  %2110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2110, %dx.types.Handle %64, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2112 = extractvalue %dx.types.ResRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.ResRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.ResRet.f32 %2111, 2
  %2115 = extractvalue %dx.types.ResRet.f32 %2111, 3
  %2116 = and i32 %2105, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = lshr i32 %2105, 8
  %2119 = and i32 %2118, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2115, %2117
  %2122 = fadd fast float %2121, %2120
  %2123 = fmul fast float %2122, 0x3F70101000000000
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %2125, 512
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2136, label %2128

; <label>:2128                                    ; preds = %2103
  %2129 = add i32 %33, 448
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = add i32 %2131, 0
  %2133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2133, %dx.types.Handle %65, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  br label %2136

; <label>:2136                                    ; preds = %2128, %2103
  %2137 = phi float [ %2135, %2128 ], [ 1.000000e+00, %2103 ]
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = and i32 %2139, 33554432
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2248, label %2142

; <label>:2142                                    ; preds = %2136
  %2143 = add i32 %33, 256
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 65535
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = lshr i32 %2145, 16
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = add i32 %33, 260
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 65535
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = lshr i32 %2156, 24
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2158, 0x3F70101020000000
  %2160 = and i32 %2156, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2161, 0x3F70101020000000
  %2163 = lshr i32 %2156, 8
  %2164 = and i32 %2163, 255
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2165, 0x3F70101020000000
  %2167 = lshr i32 %2156, 16
  %2168 = and i32 %2167, 255
  %2169 = uitofp i32 %2168 to float
  %2170 = fmul fast float %2169, 0x3F70101020000000
  %2171 = add i32 %33, 252
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2171, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = lshr i32 %2173, 24
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2175, 0x3F70101020000000
  %2177 = and i32 %2173, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2178, 0x3F70101020000000
  %2180 = lshr i32 %2173, 8
  %2181 = and i32 %2180, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = lshr i32 %2173, 16
  %2185 = and i32 %2184, 255
  %2186 = uitofp i32 %2185 to float
  %2187 = fmul fast float %2186, 0x3F70101020000000
  %2188 = bitcast float %2112 to i32
  %2189 = ashr i32 %2188, 1
  %2190 = sub nsw i32 1597463174, %2189
  %2191 = bitcast i32 %2190 to float
  %2192 = fmul fast float %2112, 5.000000e-01
  %2193 = fmul fast float %2191, %2191
  %2194 = fmul fast float %2193, %2192
  %2195 = fsub fast float 1.500000e+00, %2194
  %2196 = fmul fast float %2191, %2112
  %2197 = fmul fast float %2196, %2195
  %2198 = bitcast float %2113 to i32
  %2199 = ashr i32 %2198, 1
  %2200 = sub nsw i32 1597463174, %2199
  %2201 = bitcast i32 %2200 to float
  %2202 = fmul fast float %2113, 5.000000e-01
  %2203 = fmul fast float %2201, %2201
  %2204 = fmul fast float %2203, %2202
  %2205 = fsub fast float 1.500000e+00, %2204
  %2206 = fmul fast float %2201, %2113
  %2207 = fmul fast float %2206, %2205
  %2208 = bitcast float %2114 to i32
  %2209 = ashr i32 %2208, 1
  %2210 = sub nsw i32 1597463174, %2209
  %2211 = bitcast i32 %2210 to float
  %2212 = fmul fast float %2114, 5.000000e-01
  %2213 = fmul fast float %2211, %2211
  %2214 = fmul fast float %2213, %2212
  %2215 = fsub fast float 1.500000e+00, %2214
  %2216 = fmul fast float %2211, %2114
  %2217 = fmul fast float %2216, %2215
  %2218 = fsub fast float %2197, %2179
  %2219 = fsub fast float %2207, %2183
  %2220 = fsub fast float %2217, %2187
  %2221 = fmul fast float %2218, %2147
  %2222 = fmul fast float %2219, %2149
  %2223 = fmul fast float %2220, %2154
  %2224 = fadd fast float %2221, %2162
  %2225 = fadd fast float %2222, %2166
  %2226 = fadd fast float %2223, %2170
  %2227 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2228 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2230 = fmul fast float %2227, %2227
  %2231 = fmul fast float %2228, %2228
  %2232 = fmul fast float %2229, %2229
  %2233 = fsub fast float %2230, %2112
  %2234 = fsub fast float %2231, %2113
  %2235 = fsub fast float %2232, %2114
  %2236 = fmul fast float %2233, %2137
  %2237 = fmul fast float %2234, %2137
  %2238 = fmul fast float %2235, %2137
  %2239 = fadd fast float %2236, %2112
  %2240 = fadd fast float %2237, %2113
  %2241 = fadd fast float %2238, %2114
  %2242 = fadd fast float %2159, %2123
  %2243 = fsub fast float %2242, %2176
  %2244 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2245 = fsub fast float %2244, %2123
  %2246 = fmul fast float %2245, %2137
  %2247 = fadd fast float %2246, %2123
  br label %2301

; <label>:2248                                    ; preds = %2136
  %2249 = and i32 %2139, 134217728
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2285, label %2251

; <label>:2251                                    ; preds = %2248
  %2252 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2253 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2254 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2255 = fadd fast float %2252, -5.000000e-01
  %2256 = fadd fast float %2253, -5.000000e-01
  %2257 = fadd fast float %2254, -5.000000e-01
  %2258 = fmul fast float %2255, %2137
  %2259 = fmul fast float %2256, %2137
  %2260 = fmul fast float %2257, %2137
  %2261 = fadd fast float %2258, 5.000000e-01
  %2262 = fadd fast float %2259, 5.000000e-01
  %2263 = fadd fast float %2260, 5.000000e-01
  %2264 = call float @dx.op.unary.f32(i32 24, float %2112)  ; Sqrt(value)
  %2265 = call float @dx.op.unary.f32(i32 24, float %2113)  ; Sqrt(value)
  %2266 = call float @dx.op.unary.f32(i32 24, float %2114)  ; Sqrt(value)
  %2267 = fmul fast float %2261, 2.000000e+00
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = fmul fast float %2268, %2264
  %2270 = fadd fast float %2269, %2267
  %2271 = fmul fast float %2270, %2264
  %2272 = fmul fast float %2262, 2.000000e+00
  %2273 = fsub fast float 1.000000e+00, %2272
  %2274 = fmul fast float %2273, %2265
  %2275 = fadd fast float %2274, %2272
  %2276 = fmul fast float %2275, %2265
  %2277 = fmul fast float %2263, 2.000000e+00
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %2278, %2266
  %2280 = fadd fast float %2279, %2277
  %2281 = fmul fast float %2280, %2266
  %2282 = fmul fast float %2271, %2271
  %2283 = fmul fast float %2276, %2276
  %2284 = fmul fast float %2281, %2281
  br label %2301

; <label>:2285                                    ; preds = %2248
  %2286 = fmul fast float %275, %275
  %2287 = fmul fast float %279, %279
  %2288 = fmul fast float %283, %283
  %2289 = fadd fast float %2286, -1.000000e+00
  %2290 = fadd fast float %2287, -1.000000e+00
  %2291 = fadd fast float %2288, -1.000000e+00
  %2292 = fmul fast float %2137, %2289
  %2293 = fmul fast float %2137, %2290
  %2294 = fmul fast float %2137, %2291
  %2295 = fadd fast float %2292, 1.000000e+00
  %2296 = fadd fast float %2293, 1.000000e+00
  %2297 = fadd fast float %2294, 1.000000e+00
  %2298 = fmul fast float %2295, %2112
  %2299 = fmul fast float %2296, %2113
  %2300 = fmul fast float %2297, %2114
  br label %2301

; <label>:2301                                    ; preds = %2285, %2251, %2142, %2098
  %2302 = phi float [ %2247, %2142 ], [ %2123, %2251 ], [ %2123, %2285 ], [ 0x3FA23C0BE0000000, %2098 ]
  %2303 = phi float [ %2239, %2142 ], [ %2282, %2251 ], [ %2298, %2285 ], [ 1.000000e+00, %2098 ]
  %2304 = phi float [ %2240, %2142 ], [ %2283, %2251 ], [ %2299, %2285 ], [ 1.000000e+00, %2098 ]
  %2305 = phi float [ %2241, %2142 ], [ %2284, %2251 ], [ %2300, %2285 ], [ 1.000000e+00, %2098 ]
  %2306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.i32 %2306, 1
  %2308 = and i32 %2307, 1
  %2309 = icmp ne i32 %2308, 0
  %2310 = add i32 %33, 356
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 32
  %2314 = icmp ne i32 %2313, 0
  %2315 = and i1 %2309, %2314
  %2316 = select i1 %2315, float 1.000000e+00, float %2303
  %2317 = select i1 %2315, float 0x3FD3333340000000, float %2304
  %2318 = select i1 %2315, float 0x3FD3333340000000, float %2305
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 32
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2395, label %2323

; <label>:2323                                    ; preds = %2301
  %2324 = add i32 %33, 124
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = add i32 %33, 384
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %64, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.f32 %2332, 3
  %2337 = and i32 %2326, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = lshr i32 %2326, 8
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = lshr i32 %2326, 16
  %2343 = and i32 %2342, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = fmul fast float %2344, 0x3F70101000000000
  %2346 = fmul fast float %2333, %2338
  %2347 = fadd fast float %2346, %2341
  %2348 = fmul fast float %2347, 0x3F70101000000000
  %2349 = fadd fast float %2334, -5.000000e-01
  %2350 = fadd fast float %2336, -5.000000e-01
  %2351 = fmul fast float %2349, %2345
  %2352 = fmul fast float %2350, %2345
  %2353 = fadd fast float %2351, 5.000000e-01
  %2354 = fadd fast float %2352, 5.000000e-01
  %2355 = fmul fast float %2353, 2.000000e+00
  %2356 = fadd fast float %2355, -1.000000e+00
  %2357 = fmul fast float %2354, 2.000000e+00
  %2358 = fadd fast float %2357, -1.000000e+00
  %2359 = fadd fast float %2356, %2358
  %2360 = fmul fast float %2359, 5.000000e-01
  %2361 = fsub fast float %2356, %2358
  %2362 = fmul fast float %2361, 5.000000e-01
  %2363 = call float @dx.op.unary.f32(i32 6, float %2360)  ; FAbs(value)
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = call float @dx.op.unary.f32(i32 6, float %2362)  ; FAbs(value)
  %2366 = fsub fast float %2364, %2365
  %2367 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2362, float %2366, float %2360, float %2362, float %2366)  ; Dot3(ax,ay,az,bx,by,bz)
  %2368 = call float @dx.op.unary.f32(i32 25, float %2367)  ; Rsqrt(value)
  %2369 = fmul fast float %2360, %2368
  %2370 = fmul fast float %2362, %2368
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 67108864
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2391, label %2375

; <label>:2375                                    ; preds = %2323
  %2376 = add i32 %33, 312
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 65535
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %2378, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = fsub fast float %2348, %2386
  %2388 = fmul fast float %2387, %2380
  %2389 = fadd fast float %2388, %2384
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  br label %2391

; <label>:2391                                    ; preds = %2375, %2323
  %2392 = phi float [ %2390, %2375 ], [ %2348, %2323 ]
  %2393 = call float @dx.op.dot2.f32(i32 54, float %2369, float %2370, float %1812, float %1813)  ; Dot2(ax,ay,bx,by)
  %2394 = call float @dx.op.dot2.f32(i32 54, float %2369, float %2370, float %1814, float %1815)  ; Dot2(ax,ay,bx,by)
  br label %2395

; <label>:2395                                    ; preds = %2391, %2301
  %2396 = phi float [ %2392, %2391 ], [ 0x3FD6666660000000, %2301 ]
  %2397 = phi float [ %2393, %2391 ], [ 0.000000e+00, %2301 ]
  %2398 = phi float [ %2394, %2391 ], [ 0.000000e+00, %2301 ]
  %2399 = phi float [ %2335, %2391 ], [ 1.000000e+00, %2301 ]
  %2400 = add i32 %33, 192
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = lshr i32 %2402, 22
  %2404 = shl nuw nsw i32 %2403, 5
  %2405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2404)  ; LegacyF16ToF32(value)
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 64
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2443, label %2410

; <label>:2410                                    ; preds = %2395
  %2411 = add i32 %33, 400
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %2413, 0
  %2415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 131072
  %2419 = icmp eq i32 %2418, 0
  %2420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2415, %dx.types.Handle %64, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2421 = extractvalue %dx.types.ResRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.ResRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.ResRet.f32 %2420, 2
  %2424 = fmul fast float %2421, %263
  %2425 = fmul fast float %2422, %266
  %2426 = fmul fast float %2423, %269
  br i1 %2419, label %2433, label %2427

; <label>:2427                                    ; preds = %2410
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = fmul fast float %2429, %2424
  %2431 = fmul fast float %2429, %2425
  %2432 = fmul fast float %2429, %2426
  br label %2433

; <label>:2433                                    ; preds = %2427, %2410
  %2434 = phi float [ %2430, %2427 ], [ %2424, %2410 ]
  %2435 = phi float [ %2431, %2427 ], [ %2425, %2410 ]
  %2436 = phi float [ %2432, %2427 ], [ %2426, %2410 ]
  %2437 = fmul fast float %2434, %2405
  %2438 = select i1 %173, float %2437, float %2434
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2435, float %2436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = select i1 %173, float 0.000000e+00, float %2434
  %2441 = select i1 %173, float %2439, float %2435
  %2442 = select i1 %173, float 0.000000e+00, float %2436
  br label %2443

; <label>:2443                                    ; preds = %2433, %2395
  %2444 = phi float [ %2440, %2433 ], [ 0.000000e+00, %2395 ]
  %2445 = phi float [ %2441, %2433 ], [ 0.000000e+00, %2395 ]
  %2446 = phi float [ %2442, %2433 ], [ 0.000000e+00, %2395 ]
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 65536
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2461, label %2451

; <label>:2451                                    ; preds = %2443
  %2452 = add i32 %33, 480
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %2454, 0
  %2456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2456, %dx.types.Handle %65, float %1908, float %1909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.ResRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.ResRet.f32 %2457, 2
  br label %2461

; <label>:2461                                    ; preds = %2451, %2443
  %2462 = phi float [ %2458, %2451 ], [ 0.000000e+00, %2443 ]
  %2463 = phi float [ %2459, %2451 ], [ 0.000000e+00, %2443 ]
  %2464 = phi float [ %2460, %2451 ], [ 0.000000e+00, %2443 ]
  %2465 = add i32 %33, 128
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = lshr i32 %2467, 8
  %2471 = and i32 %2470, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %2318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2474 = fmul fast float %2472, %2473
  %2475 = fadd fast float %2474, %2469
  %2476 = fmul fast float %2475, 0x3F70101020000000
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  br i1 %1800, label %2478, label %2489

; <label>:2478                                    ; preds = %2461
  %2479 = fsub fast float 1.000000e+00, %2096
  %2480 = fmul fast float %2479, %1786
  %2481 = fmul fast float %2479, %1787
  %2482 = fmul fast float %2479, %1788
  %2483 = fmul fast float %2479, %1792
  %2484 = fmul fast float %2479, %1793
  %2485 = fmul fast float %2479, %1794
  %2486 = fmul fast float %2479, %1789
  %2487 = fmul fast float %2479, %1790
  %2488 = fmul fast float %2479, %1791
  br label %2489

; <label>:2489                                    ; preds = %2478, %2461
  %2490 = phi float [ %2480, %2478 ], [ %1786, %2461 ]
  %2491 = phi float [ %2481, %2478 ], [ %1787, %2461 ]
  %2492 = phi float [ %2482, %2478 ], [ %1788, %2461 ]
  %2493 = phi float [ %2486, %2478 ], [ %1789, %2461 ]
  %2494 = phi float [ %2487, %2478 ], [ %1790, %2461 ]
  %2495 = phi float [ %2488, %2478 ], [ %1791, %2461 ]
  %2496 = phi float [ %2483, %2478 ], [ %1792, %2461 ]
  %2497 = phi float [ %2484, %2478 ], [ %1793, %2461 ]
  %2498 = phi float [ %2485, %2478 ], [ %1794, %2461 ]
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 3
  %2502 = icmp eq i32 %2501, 3
  br i1 %2502, label %2593, label %2503

; <label>:2503                                    ; preds = %2489
  %2504 = and i32 %2500, 16
  %2505 = icmp ne i32 %2504, 0
  %2506 = select i1 %2505, float %2096, float 0.000000e+00
  %2507 = icmp eq i32 %2501, 0
  br i1 %2507, label %2508, label %2548

; <label>:2508                                    ; preds = %2503
  %2509 = and i32 %2500, 64
  %2510 = icmp ne i32 %2509, 0
  %2511 = select i1 %2510, float %2096, float 0.000000e+00
  %2512 = and i32 %2500, 65536
  %2513 = icmp ne i32 %2512, 0
  %2514 = select i1 %2513, float %2096, float 0.000000e+00
  %2515 = fsub fast float %2316, %2490
  %2516 = fsub fast float %2317, %2491
  %2517 = fsub fast float %2318, %2492
  %2518 = fmul fast float %2506, %2515
  %2519 = fmul fast float %2506, %2516
  %2520 = fmul fast float %2506, %2517
  %2521 = fadd fast float %2518, %2490
  %2522 = fadd fast float %2519, %2491
  %2523 = fadd fast float %2520, %2492
  %2524 = fsub fast float %2302, %1795
  %2525 = fmul fast float %2506, %2524
  %2526 = fadd fast float %2525, %1795
  %2527 = fsub fast float %2444, %2496
  %2528 = fsub fast float %2445, %2497
  %2529 = fsub fast float %2446, %2498
  %2530 = fmul fast float %2511, %2527
  %2531 = fmul fast float %2511, %2528
  %2532 = fmul fast float %2511, %2529
  %2533 = fadd fast float %2530, %2496
  %2534 = fadd fast float %2531, %2497
  %2535 = fadd fast float %2532, %2498
  %2536 = fsub fast float %2462, %2493
  %2537 = fsub fast float %2463, %2494
  %2538 = fsub fast float %2464, %2495
  %2539 = fmul fast float %2514, %2536
  %2540 = fmul fast float %2514, %2537
  %2541 = fmul fast float %2514, %2538
  %2542 = fadd fast float %2539, %2493
  %2543 = fadd fast float %2540, %2494
  %2544 = fadd fast float %2541, %2495
  %2545 = fsub fast float %2477, %1798
  %2546 = fmul fast float %2506, %2545
  %2547 = fadd fast float %2546, %1798
  br label %2593

; <label>:2548                                    ; preds = %2503
  %2549 = icmp eq i32 %2501, 1
  br i1 %2549, label %2550, label %2563

; <label>:2550                                    ; preds = %2548
  %2551 = fadd fast float %2316, -1.000000e+00
  %2552 = fadd fast float %2317, -1.000000e+00
  %2553 = fadd fast float %2318, -1.000000e+00
  %2554 = fmul fast float %2506, %2551
  %2555 = fmul fast float %2506, %2552
  %2556 = fmul fast float %2506, %2553
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fadd fast float %2556, 1.000000e+00
  %2560 = fmul fast float %2557, %2490
  %2561 = fmul fast float %2558, %2491
  %2562 = fmul fast float %2559, %2492
  br label %2593

; <label>:2563                                    ; preds = %2548
  %2564 = icmp eq i32 %2501, 2
  br i1 %2564, label %2565, label %2593

; <label>:2565                                    ; preds = %2563
  %2566 = call float @dx.op.unary.f32(i32 24, float %2316)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %2317)  ; Sqrt(value)
  %2568 = call float @dx.op.unary.f32(i32 24, float %2318)  ; Sqrt(value)
  %2569 = fadd fast float %2566, -5.000000e-01
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fadd fast float %2568, -5.000000e-01
  %2572 = fmul fast float %2569, %2506
  %2573 = fmul fast float %2570, %2506
  %2574 = fmul fast float %2571, %2506
  %2575 = fadd fast float %2572, 5.000000e-01
  %2576 = fadd fast float %2573, 5.000000e-01
  %2577 = fadd fast float %2574, 5.000000e-01
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2490
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2490
  %2583 = fmul fast float %2576, 2.000000e+00
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = fmul fast float %2584, %2491
  %2586 = fadd fast float %2585, %2583
  %2587 = fmul fast float %2586, %2491
  %2588 = fmul fast float %2577, 2.000000e+00
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2589, %2492
  %2591 = fadd fast float %2590, %2588
  %2592 = fmul fast float %2591, %2492
  br label %2593

; <label>:2593                                    ; preds = %2565, %2563, %2550, %2508, %2489
  %2594 = phi float [ %2490, %2489 ], [ %2582, %2565 ], [ %2490, %2563 ], [ %2560, %2550 ], [ %2521, %2508 ]
  %2595 = phi float [ %2491, %2489 ], [ %2587, %2565 ], [ %2491, %2563 ], [ %2561, %2550 ], [ %2522, %2508 ]
  %2596 = phi float [ %2492, %2489 ], [ %2592, %2565 ], [ %2492, %2563 ], [ %2562, %2550 ], [ %2523, %2508 ]
  %2597 = phi float [ %2493, %2489 ], [ %2493, %2565 ], [ %2493, %2563 ], [ %2493, %2550 ], [ %2542, %2508 ]
  %2598 = phi float [ %2494, %2489 ], [ %2494, %2565 ], [ %2494, %2563 ], [ %2494, %2550 ], [ %2543, %2508 ]
  %2599 = phi float [ %2495, %2489 ], [ %2495, %2565 ], [ %2495, %2563 ], [ %2495, %2550 ], [ %2544, %2508 ]
  %2600 = phi float [ %2496, %2489 ], [ %2496, %2565 ], [ %2496, %2563 ], [ %2496, %2550 ], [ %2533, %2508 ]
  %2601 = phi float [ %2497, %2489 ], [ %2497, %2565 ], [ %2497, %2563 ], [ %2497, %2550 ], [ %2534, %2508 ]
  %2602 = phi float [ %2498, %2489 ], [ %2498, %2565 ], [ %2498, %2563 ], [ %2498, %2550 ], [ %2535, %2508 ]
  %2603 = phi float [ %1795, %2489 ], [ %1795, %2565 ], [ %1795, %2563 ], [ %1795, %2550 ], [ %2526, %2508 ]
  %2604 = phi float [ %1798, %2489 ], [ %1798, %2565 ], [ %1798, %2563 ], [ %1798, %2550 ], [ %2547, %2508 ]
  %2605 = and i32 %2500, 12
  %2606 = icmp eq i32 %2605, 12
  br i1 %2606, label %2679, label %2607

; <label>:2607                                    ; preds = %2593
  %2608 = and i32 %2500, 2097184
  %2609 = icmp eq i32 %2608, 2097184
  %2610 = select i1 %2609, float %2096, float 0.000000e+00
  %2611 = and i32 %2500, 4194336
  %2612 = icmp eq i32 %2611, 4194336
  %2613 = select i1 %2612, float %2096, float 0.000000e+00
  %2614 = and i32 %2500, 8388640
  %2615 = icmp eq i32 %2614, 8388640
  %2616 = select i1 %2615, float %2096, float 0.000000e+00
  %2617 = icmp eq i32 %2605, 0
  br i1 %2617, label %2618, label %2631

; <label>:2618                                    ; preds = %2607
  %2619 = fsub fast float %2397, %1784
  %2620 = fsub fast float %2398, %1785
  %2621 = fmul fast float %2610, %2619
  %2622 = fmul fast float %2610, %2620
  %2623 = fadd fast float %2621, %1784
  %2624 = fadd fast float %2622, %1785
  %2625 = fsub fast float %2399, %1797
  %2626 = fmul fast float %2613, %2625
  %2627 = fadd fast float %2626, %1797
  %2628 = fsub fast float %2396, %1796
  %2629 = fmul fast float %2616, %2628
  %2630 = fadd fast float %2629, %1796
  br label %2679

; <label>:2631                                    ; preds = %2607
  %2632 = icmp eq i32 %2605, 4
  br i1 %2632, label %2633, label %2665

; <label>:2633                                    ; preds = %2631
  %2634 = fmul fast float %2610, %2397
  %2635 = fmul fast float %2610, %2398
  %2636 = fadd fast float %2634, %1784
  %2637 = fadd fast float %2635, %1785
  %2638 = call float @dx.op.binary.f32(i32 36, float %1797, float %2399)  ; FMin(a,b)
  %2639 = fsub fast float %2638, %1797
  %2640 = fmul fast float %2639, %2613
  %2641 = fadd fast float %2640, %1797
  %2642 = fadd fast float %2396, %1796
  %2643 = fmul fast float %2642, 0x3FF337FAE0000000
  %2644 = fmul fast float %1796, %1796
  %2645 = fmul fast float %2396, %2396
  %2646 = fadd fast float %2645, %2644
  %2647 = fmul fast float %2646, 0x3FE5152B00000000
  %2648 = fmul fast float %1796, 0xBFCC1F85E0000000
  %2649 = fmul fast float %2648, %2396
  %2650 = fadd fast float %2649, 0xBFE1363700000000
  %2651 = fadd fast float %2650, %2643
  %2652 = fsub fast float %2651, %2647
  %2653 = fmul fast float %2642, 0x3FBA6F0D00000000
  %2654 = fmul fast float %2646, 0x3FD0432880000000
  %2655 = fmul fast float %1796, 0xBFEF110800000000
  %2656 = fmul fast float %2655, %2396
  %2657 = fadd fast float %2656, 1.000000e+00
  %2658 = fsub fast float %2657, %2653
  %2659 = fadd fast float %2658, %2654
  %2660 = fdiv fast float %2652, %2659
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  %2662 = fsub fast float %2661, %1796
  %2663 = fmul fast float %2662, %2616
  %2664 = fadd fast float %2663, %1796
  br label %2679

; <label>:2665                                    ; preds = %2631
  %2666 = icmp eq i32 %2605, 8
  br i1 %2666, label %2667, label %2679

; <label>:2667                                    ; preds = %2665
  %2668 = fmul fast float %2610, %2397
  %2669 = fmul fast float %2610, %2398
  %2670 = fadd fast float %2668, %1784
  %2671 = fadd fast float %2669, %1785
  %2672 = call float @dx.op.binary.f32(i32 36, float %1797, float %2399)  ; FMin(a,b)
  %2673 = fsub fast float %2672, %1797
  %2674 = fmul fast float %2673, %2613
  %2675 = fadd fast float %2674, %1797
  %2676 = fsub fast float %2396, %1796
  %2677 = fmul fast float %2616, %2676
  %2678 = fadd fast float %2677, %1796
  br label %2679

; <label>:2679                                    ; preds = %2667, %2665, %2633, %2618, %2593, %2095, %1799, %1783
  %2680 = phi float [ %1784, %2593 ], [ %1784, %2095 ], [ %1784, %1783 ], [ %2670, %2667 ], [ %1784, %2665 ], [ %2636, %2633 ], [ %2623, %2618 ], [ %1784, %1799 ]
  %2681 = phi float [ %1785, %2593 ], [ %1785, %2095 ], [ %1785, %1783 ], [ %2671, %2667 ], [ %1785, %2665 ], [ %2637, %2633 ], [ %2624, %2618 ], [ %1785, %1799 ]
  %2682 = phi float [ %2594, %2593 ], [ %1786, %2095 ], [ %1786, %1783 ], [ %2594, %2667 ], [ %2594, %2665 ], [ %2594, %2633 ], [ %2594, %2618 ], [ %1786, %1799 ]
  %2683 = phi float [ %2595, %2593 ], [ %1787, %2095 ], [ %1787, %1783 ], [ %2595, %2667 ], [ %2595, %2665 ], [ %2595, %2633 ], [ %2595, %2618 ], [ %1787, %1799 ]
  %2684 = phi float [ %2596, %2593 ], [ %1788, %2095 ], [ %1788, %1783 ], [ %2596, %2667 ], [ %2596, %2665 ], [ %2596, %2633 ], [ %2596, %2618 ], [ %1788, %1799 ]
  %2685 = phi float [ %2597, %2593 ], [ %1789, %2095 ], [ %1789, %1783 ], [ %2597, %2667 ], [ %2597, %2665 ], [ %2597, %2633 ], [ %2597, %2618 ], [ %1789, %1799 ]
  %2686 = phi float [ %2598, %2593 ], [ %1790, %2095 ], [ %1790, %1783 ], [ %2598, %2667 ], [ %2598, %2665 ], [ %2598, %2633 ], [ %2598, %2618 ], [ %1790, %1799 ]
  %2687 = phi float [ %2599, %2593 ], [ %1791, %2095 ], [ %1791, %1783 ], [ %2599, %2667 ], [ %2599, %2665 ], [ %2599, %2633 ], [ %2599, %2618 ], [ %1791, %1799 ]
  %2688 = phi float [ %2600, %2593 ], [ %1792, %2095 ], [ %1792, %1783 ], [ %2600, %2667 ], [ %2600, %2665 ], [ %2600, %2633 ], [ %2600, %2618 ], [ %1792, %1799 ]
  %2689 = phi float [ %2601, %2593 ], [ %1793, %2095 ], [ %1793, %1783 ], [ %2601, %2667 ], [ %2601, %2665 ], [ %2601, %2633 ], [ %2601, %2618 ], [ %1793, %1799 ]
  %2690 = phi float [ %2602, %2593 ], [ %1794, %2095 ], [ %1794, %1783 ], [ %2602, %2667 ], [ %2602, %2665 ], [ %2602, %2633 ], [ %2602, %2618 ], [ %1794, %1799 ]
  %2691 = phi float [ %2603, %2593 ], [ %1795, %2095 ], [ %1795, %1783 ], [ %2603, %2667 ], [ %2603, %2665 ], [ %2603, %2633 ], [ %2603, %2618 ], [ %1795, %1799 ]
  %2692 = phi float [ %1796, %2593 ], [ %1796, %2095 ], [ %1796, %1783 ], [ %2678, %2667 ], [ %1796, %2665 ], [ %2664, %2633 ], [ %2630, %2618 ], [ %1796, %1799 ]
  %2693 = phi float [ %1797, %2593 ], [ %1797, %2095 ], [ %1797, %1783 ], [ %2675, %2667 ], [ %1797, %2665 ], [ %2641, %2633 ], [ %2627, %2618 ], [ %1797, %1799 ]
  %2694 = phi float [ %2604, %2593 ], [ %1798, %2095 ], [ %1798, %1783 ], [ %2604, %2667 ], [ %2604, %2665 ], [ %2604, %2633 ], [ %2604, %2618 ], [ %1798, %1799 ]
  br i1 %350, label %3575, label %2695

; <label>:2695                                    ; preds = %2679
  %2696 = icmp ult i32 %401, 4
  %2697 = add i32 %33, 72
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = add i32 %33, 76
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = or i32 %2702, %2699
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %3575, label %2705

; <label>:2705                                    ; preds = %2695
  %2706 = and i32 %2699, 262144
  %2707 = icmp ne i32 %2706, 0
  %2708 = select i1 %2707, float %36, float 1.000000e+00
  %2709 = select i1 %2707, float %37, float 0.000000e+00
  %2710 = select i1 %2707, float %38, float 0.000000e+00
  %2711 = select i1 %2707, float %39, float 1.000000e+00
  %2712 = select i1 %2707, float %40, float %56
  %2713 = select i1 %2707, float %41, float %57
  %2714 = add i32 %33, 332
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = lshr i32 %2716, 16
  %2718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2717)  ; LegacyF16ToF32(value)
  %2719 = fmul fast float %2718, 0x3F50624DE0000000
  %2720 = add i32 %33, 136
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = lshr i32 %2722, 16
  %2724 = and i32 %2723, 255
  %2725 = lshr i32 %2722, 24
  %2726 = add i32 %33, 340
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 65535
  %2730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2729)  ; LegacyF16ToF32(value)
  %2731 = lshr i32 %2728, 16
  %2732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2731)  ; LegacyF16ToF32(value)
  %2733 = add i32 %33, 80
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = lshr i32 %2735, 22
  %2737 = shl nuw nsw i32 %2736, 5
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = shl i32 %2735, 4
  %2740 = and i32 %2739, 32752
  %2741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2740)  ; LegacyF16ToF32(value)
  %2742 = lshr i32 %2735, 7
  %2743 = and i32 %2742, 32752
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 3
  %2747 = fmul fast float %2746, 1.000000e+03
  %2748 = fmul fast float %340, %2747
  %2749 = call float @dx.op.unary.f32(i32 22, float %2748)  ; Frc(value)
  %2750 = fadd fast float %2749, %330
  %2751 = fmul fast float %341, %2747
  %2752 = call float @dx.op.unary.f32(i32 22, float %2751)  ; Frc(value)
  %2753 = fadd fast float %2752, %332
  %2754 = fmul fast float %2719, %2747
  %2755 = call float @dx.op.unary.f32(i32 22, float %2754)  ; Frc(value)
  %2756 = fmul fast float %2755, 0x401921FB60000000
  %2757 = fadd fast float %2756, %2738
  %2758 = call float @dx.op.unary.f32(i32 13, float %2757)  ; Sin(value)
  %2759 = call float @dx.op.unary.f32(i32 12, float %2757)  ; Cos(value)
  %2760 = fsub fast float -0.000000e+00, %2758
  %2761 = fadd fast float %2712, -5.000000e-01
  %2762 = fadd fast float %2713, -5.000000e-01
  %2763 = fmul fast float %2730, %2761
  %2764 = fmul fast float %2732, %2762
  %2765 = fadd fast float %2763, 5.000000e-01
  %2766 = fadd fast float %2764, 5.000000e-01
  %2767 = fmul fast float %2741, %2765
  %2768 = fmul fast float %2744, %2766
  %2769 = fmul fast float %2759, %2767
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %2760, float %2768, float %2769)  ; FMad(a,b,c)
  %2771 = fmul fast float %2758, %2767
  %2772 = call float @dx.op.tertiary.f32(i32 46, float %2759, float %2768, float %2771)  ; FMad(a,b,c)
  %2773 = fadd fast float %2750, %2770
  %2774 = fadd fast float %2753, %2772
  %2775 = icmp ugt i32 %2724, 1
  %2776 = icmp ugt i32 %2722, 33554431
  %2777 = or i1 %2776, %2775
  br i1 %2777, label %2778, label %2803

; <label>:2778                                    ; preds = %2705
  %2779 = add i32 %33, 276
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = lshr i32 %2781, 16
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = fmul fast float %2746, %2783
  %2785 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2786 = mul nuw nsw i32 %2724, %2725
  %2787 = uitofp i32 %2786 to float
  %2788 = fmul fast float %2785, %2787
  %2789 = call float @dx.op.unary.f32(i32 27, float %2788)  ; Round_ni(value)
  %2790 = fptoui float %2789 to i32
  %2791 = urem i32 %2790, %2724
  %2792 = udiv i32 %2790, %2725
  %2793 = call float @dx.op.unary.f32(i32 22, float %2773)  ; Frc(value)
  %2794 = call float @dx.op.unary.f32(i32 22, float %2774)  ; Frc(value)
  %2795 = uitofp i32 %2791 to float
  %2796 = uitofp i32 %2792 to float
  %2797 = fadd fast float %2793, %2795
  %2798 = fadd fast float %2794, %2796
  %2799 = uitofp i32 %2724 to float
  %2800 = uitofp i32 %2725 to float
  %2801 = fdiv fast float %2797, %2799
  %2802 = fdiv fast float %2798, %2800
  br label %2803

; <label>:2803                                    ; preds = %2778, %2705
  %2804 = phi float [ %2801, %2778 ], [ %2773, %2705 ]
  %2805 = phi float [ %2802, %2778 ], [ %2774, %2705 ]
  %2806 = and i32 %2699, 16777216
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2917, label %2808

; <label>:2808                                    ; preds = %2803
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = fadd fast float %2810, %131
  %2814 = fadd fast float %2811, %132
  %2815 = fadd fast float %2812, %133
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = icmp eq i32 %34, 65535
  br i1 %2819, label %2914, label %2820

; <label>:2820                                    ; preds = %2808
  %2821 = lshr i32 %34, 1
  %2822 = shl i32 %2821, 2
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %34, 1
  %2826 = icmp ne i32 %2825, 0
  %2827 = lshr i32 %2824, 16
  %2828 = and i32 %2824, 65535
  %2829 = select i1 %2826, i32 %2827, i32 %2828
  %2830 = icmp eq i32 %2829, 65535
  br i1 %2830, label %2910, label %2831

; <label>:2831                                    ; preds = %2820
  %2832 = mul nuw nsw i32 %2829, 40
  %2833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = add nuw nsw i32 %2832, 12
  %2838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = add nuw nsw i32 %2832, 24
  %2843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.ResRet.f32 %2843, 1
  %2846 = extractvalue %dx.types.ResRet.f32 %2843, 2
  %2847 = add nuw nsw i32 %2832, 36
  %2848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = fsub fast float %2813, %2834
  %2851 = fsub fast float %2814, %2835
  %2852 = fsub fast float %2815, %2836
  %2853 = fmul fast float %2849, %2850
  %2854 = fmul fast float %2849, %2851
  %2855 = fmul fast float %2849, %2852
  %2856 = call float @dx.op.unary.f32(i32 27, float %2853)  ; Round_ni(value)
  %2857 = call float @dx.op.unary.f32(i32 27, float %2854)  ; Round_ni(value)
  %2858 = call float @dx.op.unary.f32(i32 27, float %2855)  ; Round_ni(value)
  %2859 = fadd fast float %2856, 5.000000e-01
  %2860 = fadd fast float %2857, 5.000000e-01
  %2861 = fadd fast float %2858, 5.000000e-01
  %2862 = fmul fast float %2859, %2839
  %2863 = fmul fast float %2860, %2840
  %2864 = fmul fast float %2861, %2841
  %2865 = shl i32 %34, 2
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = add i32 %2867, 0
  %2869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2870 = call float @dx.op.unary.f32(i32 22, float %2862)  ; Frc(value)
  %2871 = call float @dx.op.unary.f32(i32 22, float %2863)  ; Frc(value)
  %2872 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2869, %dx.types.Handle %30, float %2870, float %2871, float %2872, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = fmul fast float %2874, 1.023000e+03
  %2878 = fmul fast float %2875, 1.023000e+03
  %2879 = fmul fast float %2876, 1.023000e+03
  %2880 = fadd fast float %2877, 5.000000e-01
  %2881 = fadd fast float %2878, 5.000000e-01
  %2882 = fadd fast float %2879, 5.000000e-01
  %2883 = call float @dx.op.unary.f32(i32 27, float %2880)  ; Round_ni(value)
  %2884 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2885 = call float @dx.op.unary.f32(i32 27, float %2882)  ; Round_ni(value)
  %2886 = fsub fast float %2853, %2856
  %2887 = fsub fast float %2854, %2857
  %2888 = fsub fast float %2855, %2858
  %2889 = fmul fast float %2886, 7.500000e-01
  %2890 = fmul fast float %2887, 7.500000e-01
  %2891 = fmul fast float %2888, 7.500000e-01
  %2892 = fadd fast float %2856, 1.250000e-01
  %2893 = fadd fast float %2892, %2889
  %2894 = fadd fast float %2893, %2883
  %2895 = fadd fast float %2857, 1.250000e-01
  %2896 = fadd fast float %2895, %2890
  %2897 = fadd fast float %2896, %2884
  %2898 = fadd fast float %2858, 1.250000e-01
  %2899 = fadd fast float %2898, %2891
  %2900 = fadd fast float %2899, %2885
  %2901 = fmul fast float %2894, %2844
  %2902 = fmul fast float %2897, %2845
  %2903 = fmul fast float %2900, %2846
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2907, %dx.types.Handle %28, float %2901, float %2902, float %2903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  br label %2910

; <label>:2910                                    ; preds = %2831, %2820
  %2911 = phi float [ %2909, %2831 ], [ -1.000000e+00, %2820 ]
  %2912 = fadd fast float %2911, %2818
  %2913 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  br label %2914

; <label>:2914                                    ; preds = %2910, %2808
  %2915 = phi float [ %2913, %2910 ], [ %2818, %2808 ]
  %2916 = fmul fast float %2915, %396
  br label %2917

; <label>:2917                                    ; preds = %2914, %2803
  %2918 = phi float [ %2916, %2914 ], [ %396, %2803 ]
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 256
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2969, label %2923

; <label>:2923                                    ; preds = %2917
  %2924 = add i32 %33, 436
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %65, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = add i32 %33, 148
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = shl i32 %2933, 4
  %2935 = and i32 %2934, 32752
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = lshr i32 %2933, 7
  %2938 = and i32 %2937, 32752
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fsub fast float 1.000000e+00, %2918
  %2941 = call float @dx.op.binary.f32(i32 35, float %2940, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2942 = bitcast float %2918 to i32
  %2943 = sitofp i32 %2942 to float
  %2944 = fadd fast float %2943, 0xC1CFBF8940000000
  %2945 = fmul fast float %2939, %2944
  %2946 = fadd fast float %2945, 0x41CFBF8940000000
  %2947 = fptosi float %2946 to i32
  %2948 = bitcast i32 %2947 to float
  %2949 = bitcast float %2941 to i32
  %2950 = sitofp i32 %2949 to float
  %2951 = fadd fast float %2950, 0xC1CFBF8940000000
  %2952 = fmul fast float %2951, %2939
  %2953 = fadd fast float %2952, 0x41CFBF8940000000
  %2954 = fptosi float %2953 to i32
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2948, %2936
  %2957 = fmul fast float %2955, %2936
  %2958 = fsub fast float %2941, %2956
  %2959 = fadd fast float %2957, %2941
  %2960 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2961 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2962 = fsub fast float %2930, %2960
  %2963 = fsub fast float %2961, %2960
  %2964 = bitcast float %2963 to i32
  %2965 = sub nsw i32 2129859010, %2964
  %2966 = bitcast i32 %2965 to float
  %2967 = fmul fast float %2966, %2962
  %2968 = call float @dx.op.unary.f32(i32 7, float %2967)  ; Saturate(value)
  br label %2969

; <label>:2969                                    ; preds = %2923, %2917
  %2970 = phi float [ %2968, %2923 ], [ %2918, %2917 ]
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 128
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %2991, label %2975

; <label>:2975                                    ; preds = %2969
  %2976 = add i32 %33, 420
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %65, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 524288
  %2986 = icmp ne i32 %2985, 0
  %2987 = fcmp fast ogt float %2982, 0x3FE0101020000000
  %2988 = select i1 %2987, float 1.000000e+00, float 0.000000e+00
  %2989 = select i1 %2986, float %2988, float %2982
  %2990 = fmul fast float %2989, %2970
  br label %2991

; <label>:2991                                    ; preds = %2975, %2969
  %2992 = phi float [ %2990, %2975 ], [ %2970, %2969 ]
  %2993 = fcmp fast ult float %2992, 0x3F70101020000000
  br i1 %2993, label %3575, label %2994

; <label>:2994                                    ; preds = %2991
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 16
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3197, label %2999

; <label>:2999                                    ; preds = %2994
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = add i32 %33, 372
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = add i32 %3004, 0
  %3006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3006, %dx.types.Handle %64, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3008 = extractvalue %dx.types.ResRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.ResRet.f32 %3007, 1
  %3010 = extractvalue %dx.types.ResRet.f32 %3007, 2
  %3011 = extractvalue %dx.types.ResRet.f32 %3007, 3
  %3012 = and i32 %3001, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = lshr i32 %3001, 8
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3011, %3013
  %3018 = fadd fast float %3017, %3016
  %3019 = fmul fast float %3018, 0x3F70101000000000
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = and i32 %3021, 512
  %3023 = icmp eq i32 %3022, 0
  br i1 %3023, label %3032, label %3024

; <label>:3024                                    ; preds = %2999
  %3025 = add i32 %33, 452
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3029, %dx.types.Handle %65, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  br label %3032

; <label>:3032                                    ; preds = %3024, %2999
  %3033 = phi float [ %3031, %3024 ], [ 1.000000e+00, %2999 ]
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 33554432
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3144, label %3038

; <label>:3038                                    ; preds = %3032
  %3039 = add i32 %33, 272
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 65535
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = lshr i32 %3041, 16
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = add i32 %33, 276
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = lshr i32 %3052, 24
  %3054 = uitofp i32 %3053 to float
  %3055 = fmul fast float %3054, 0x3F70101020000000
  %3056 = and i32 %3052, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = fmul fast float %3057, 0x3F70101020000000
  %3059 = lshr i32 %3052, 8
  %3060 = and i32 %3059, 255
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = lshr i32 %3052, 16
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = add i32 %33, 268
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = lshr i32 %3069, 24
  %3071 = uitofp i32 %3070 to float
  %3072 = fmul fast float %3071, 0x3F70101020000000
  %3073 = and i32 %3069, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = fmul fast float %3074, 0x3F70101020000000
  %3076 = lshr i32 %3069, 8
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = lshr i32 %3069, 16
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = bitcast float %3008 to i32
  %3085 = ashr i32 %3084, 1
  %3086 = sub nsw i32 1597463174, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3008, 5.000000e-01
  %3089 = fmul fast float %3087, %3087
  %3090 = fmul fast float %3089, %3088
  %3091 = fsub fast float 1.500000e+00, %3090
  %3092 = fmul fast float %3087, %3008
  %3093 = fmul fast float %3092, %3091
  %3094 = bitcast float %3009 to i32
  %3095 = ashr i32 %3094, 1
  %3096 = sub nsw i32 1597463174, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3009, 5.000000e-01
  %3099 = fmul fast float %3097, %3097
  %3100 = fmul fast float %3099, %3098
  %3101 = fsub fast float 1.500000e+00, %3100
  %3102 = fmul fast float %3097, %3009
  %3103 = fmul fast float %3102, %3101
  %3104 = bitcast float %3010 to i32
  %3105 = ashr i32 %3104, 1
  %3106 = sub nsw i32 1597463174, %3105
  %3107 = bitcast i32 %3106 to float
  %3108 = fmul fast float %3010, 5.000000e-01
  %3109 = fmul fast float %3107, %3107
  %3110 = fmul fast float %3109, %3108
  %3111 = fsub fast float 1.500000e+00, %3110
  %3112 = fmul fast float %3107, %3010
  %3113 = fmul fast float %3112, %3111
  %3114 = fsub fast float %3093, %3075
  %3115 = fsub fast float %3103, %3079
  %3116 = fsub fast float %3113, %3083
  %3117 = fmul fast float %3114, %3043
  %3118 = fmul fast float %3115, %3045
  %3119 = fmul fast float %3116, %3050
  %3120 = fadd fast float %3117, %3058
  %3121 = fadd fast float %3118, %3062
  %3122 = fadd fast float %3119, %3066
  %3123 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3124 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3125 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3126 = fmul fast float %3123, %3123
  %3127 = fmul fast float %3124, %3124
  %3128 = fmul fast float %3125, %3125
  %3129 = fsub fast float %3126, %3008
  %3130 = fsub fast float %3127, %3009
  %3131 = fsub fast float %3128, %3010
  %3132 = fmul fast float %3129, %3033
  %3133 = fmul fast float %3130, %3033
  %3134 = fmul fast float %3131, %3033
  %3135 = fadd fast float %3132, %3008
  %3136 = fadd fast float %3133, %3009
  %3137 = fadd fast float %3134, %3010
  %3138 = fadd fast float %3055, %3019
  %3139 = fsub fast float %3138, %3072
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = fsub fast float %3140, %3019
  %3142 = fmul fast float %3141, %3033
  %3143 = fadd fast float %3142, %3019
  br label %3197

; <label>:3144                                    ; preds = %3032
  %3145 = and i32 %3035, 134217728
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3181, label %3147

; <label>:3147                                    ; preds = %3144
  %3148 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3149 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3150 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fadd fast float %3149, -5.000000e-01
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fmul fast float %3151, %3033
  %3155 = fmul fast float %3152, %3033
  %3156 = fmul fast float %3153, %3033
  %3157 = fadd fast float %3154, 5.000000e-01
  %3158 = fadd fast float %3155, 5.000000e-01
  %3159 = fadd fast float %3156, 5.000000e-01
  %3160 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3161 = call float @dx.op.unary.f32(i32 24, float %3009)  ; Sqrt(value)
  %3162 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3163 = fmul fast float %3157, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3160
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3160
  %3168 = fmul fast float %3158, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3161
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3161
  %3173 = fmul fast float %3159, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3162
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3162
  %3178 = fmul fast float %3167, %3167
  %3179 = fmul fast float %3172, %3172
  %3180 = fmul fast float %3177, %3177
  br label %3197

; <label>:3181                                    ; preds = %3144
  %3182 = fmul fast float %317, %317
  %3183 = fmul fast float %321, %321
  %3184 = fmul fast float %325, %325
  %3185 = fadd fast float %3182, -1.000000e+00
  %3186 = fadd fast float %3183, -1.000000e+00
  %3187 = fadd fast float %3184, -1.000000e+00
  %3188 = fmul fast float %3033, %3185
  %3189 = fmul fast float %3033, %3186
  %3190 = fmul fast float %3033, %3187
  %3191 = fadd fast float %3188, 1.000000e+00
  %3192 = fadd fast float %3189, 1.000000e+00
  %3193 = fadd fast float %3190, 1.000000e+00
  %3194 = fmul fast float %3191, %3008
  %3195 = fmul fast float %3192, %3009
  %3196 = fmul fast float %3193, %3010
  br label %3197

; <label>:3197                                    ; preds = %3181, %3147, %3038, %2994
  %3198 = phi float [ %3143, %3038 ], [ %3019, %3147 ], [ %3019, %3181 ], [ 0x3FA23C0BE0000000, %2994 ]
  %3199 = phi float [ %3135, %3038 ], [ %3178, %3147 ], [ %3194, %3181 ], [ 1.000000e+00, %2994 ]
  %3200 = phi float [ %3136, %3038 ], [ %3179, %3147 ], [ %3195, %3181 ], [ 1.000000e+00, %2994 ]
  %3201 = phi float [ %3137, %3038 ], [ %3180, %3147 ], [ %3196, %3181 ], [ 1.000000e+00, %2994 ]
  %3202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.i32 %3202, 1
  %3204 = and i32 %3203, 1
  %3205 = icmp ne i32 %3204, 0
  %3206 = add i32 %33, 356
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 32
  %3210 = icmp ne i32 %3209, 0
  %3211 = and i1 %3205, %3210
  %3212 = select i1 %3211, float 1.000000e+00, float %3199
  %3213 = select i1 %3211, float 0x3FD3333340000000, float %3200
  %3214 = select i1 %3211, float 0x3FD3333340000000, float %3201
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 32
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3291, label %3219

; <label>:3219                                    ; preds = %3197
  %3220 = add i32 %33, 140
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %33, 388
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = add i32 %3225, 0
  %3227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3227, %dx.types.Handle %64, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3229 = extractvalue %dx.types.ResRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.ResRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.ResRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.ResRet.f32 %3228, 3
  %3233 = and i32 %3222, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = lshr i32 %3222, 8
  %3236 = and i32 %3235, 255
  %3237 = uitofp i32 %3236 to float
  %3238 = lshr i32 %3222, 16
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101000000000
  %3242 = fmul fast float %3229, %3234
  %3243 = fadd fast float %3242, %3237
  %3244 = fmul fast float %3243, 0x3F70101000000000
  %3245 = fadd fast float %3230, -5.000000e-01
  %3246 = fadd fast float %3232, -5.000000e-01
  %3247 = fmul fast float %3245, %3241
  %3248 = fmul fast float %3246, %3241
  %3249 = fadd fast float %3247, 5.000000e-01
  %3250 = fadd fast float %3248, 5.000000e-01
  %3251 = fmul fast float %3249, 2.000000e+00
  %3252 = fadd fast float %3251, -1.000000e+00
  %3253 = fmul fast float %3250, 2.000000e+00
  %3254 = fadd fast float %3253, -1.000000e+00
  %3255 = fadd fast float %3252, %3254
  %3256 = fmul fast float %3255, 5.000000e-01
  %3257 = fsub fast float %3252, %3254
  %3258 = fmul fast float %3257, 5.000000e-01
  %3259 = call float @dx.op.unary.f32(i32 6, float %3256)  ; FAbs(value)
  %3260 = fsub fast float 1.000000e+00, %3259
  %3261 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3262 = fsub fast float %3260, %3261
  %3263 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3258, float %3262, float %3256, float %3258, float %3262)  ; Dot3(ax,ay,az,bx,by,bz)
  %3264 = call float @dx.op.unary.f32(i32 25, float %3263)  ; Rsqrt(value)
  %3265 = fmul fast float %3256, %3264
  %3266 = fmul fast float %3258, %3264
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 67108864
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3287, label %3271

; <label>:3271                                    ; preds = %3219
  %3272 = add i32 %33, 328
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 65535
  %3276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3275)  ; LegacyF16ToF32(value)
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 65535
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = lshr i32 %3274, 16
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = fsub fast float %3244, %3282
  %3284 = fmul fast float %3283, %3276
  %3285 = fadd fast float %3284, %3280
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  br label %3287

; <label>:3287                                    ; preds = %3271, %3219
  %3288 = phi float [ %3286, %3271 ], [ %3244, %3219 ]
  %3289 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %2708, float %2709)  ; Dot2(ax,ay,bx,by)
  %3290 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %2710, float %2711)  ; Dot2(ax,ay,bx,by)
  br label %3291

; <label>:3291                                    ; preds = %3287, %3197
  %3292 = phi float [ %3288, %3287 ], [ 0x3FD6666660000000, %3197 ]
  %3293 = phi float [ %3289, %3287 ], [ 0.000000e+00, %3197 ]
  %3294 = phi float [ %3290, %3287 ], [ 0.000000e+00, %3197 ]
  %3295 = phi float [ %3231, %3287 ], [ 1.000000e+00, %3197 ]
  %3296 = add i32 %33, 208
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = lshr i32 %3298, 22
  %3300 = shl nuw nsw i32 %3299, 5
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 64
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3339, label %3306

; <label>:3306                                    ; preds = %3291
  %3307 = add i32 %33, 404
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = and i32 %3313, 131072
  %3315 = icmp eq i32 %3314, 0
  %3316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %64, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = fmul fast float %3317, %305
  %3321 = fmul fast float %3318, %308
  %3322 = fmul fast float %3319, %311
  br i1 %3315, label %3329, label %3323

; <label>:3323                                    ; preds = %3306
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = fmul fast float %3325, %3320
  %3327 = fmul fast float %3325, %3321
  %3328 = fmul fast float %3325, %3322
  br label %3329

; <label>:3329                                    ; preds = %3323, %3306
  %3330 = phi float [ %3326, %3323 ], [ %3320, %3306 ]
  %3331 = phi float [ %3327, %3323 ], [ %3321, %3306 ]
  %3332 = phi float [ %3328, %3323 ], [ %3322, %3306 ]
  %3333 = fmul fast float %3330, %3301
  %3334 = select i1 %173, float %3333, float %3330
  %3335 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3331, float %3332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3336 = select i1 %173, float 0.000000e+00, float %3330
  %3337 = select i1 %173, float %3335, float %3331
  %3338 = select i1 %173, float 0.000000e+00, float %3332
  br label %3339

; <label>:3339                                    ; preds = %3329, %3291
  %3340 = phi float [ %3336, %3329 ], [ 0.000000e+00, %3291 ]
  %3341 = phi float [ %3337, %3329 ], [ 0.000000e+00, %3291 ]
  %3342 = phi float [ %3338, %3329 ], [ 0.000000e+00, %3291 ]
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 65536
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3357, label %3347

; <label>:3347                                    ; preds = %3339
  %3348 = add i32 %33, 484
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %3350, 0
  %3352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3352, %dx.types.Handle %65, float %2804, float %2805, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  br label %3357

; <label>:3357                                    ; preds = %3347, %3339
  %3358 = phi float [ %3354, %3347 ], [ 0.000000e+00, %3339 ]
  %3359 = phi float [ %3355, %3347 ], [ 0.000000e+00, %3339 ]
  %3360 = phi float [ %3356, %3347 ], [ 0.000000e+00, %3339 ]
  %3361 = add i32 %33, 144
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3363, 8
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3212, float %3213, float %3214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = fmul fast float %3368, %3369
  %3371 = fadd fast float %3370, %3365
  %3372 = fmul fast float %3371, 0x3F70101020000000
  %3373 = call float @dx.op.unary.f32(i32 7, float %3372)  ; Saturate(value)
  br i1 %2696, label %3374, label %3385

; <label>:3374                                    ; preds = %3357
  %3375 = fsub fast float 1.000000e+00, %2992
  %3376 = fmul fast float %3375, %2682
  %3377 = fmul fast float %3375, %2683
  %3378 = fmul fast float %3375, %2684
  %3379 = fmul fast float %3375, %2688
  %3380 = fmul fast float %3375, %2689
  %3381 = fmul fast float %3375, %2690
  %3382 = fmul fast float %3375, %2685
  %3383 = fmul fast float %3375, %2686
  %3384 = fmul fast float %3375, %2687
  br label %3385

; <label>:3385                                    ; preds = %3374, %3357
  %3386 = phi float [ %3376, %3374 ], [ %2682, %3357 ]
  %3387 = phi float [ %3377, %3374 ], [ %2683, %3357 ]
  %3388 = phi float [ %3378, %3374 ], [ %2684, %3357 ]
  %3389 = phi float [ %3382, %3374 ], [ %2685, %3357 ]
  %3390 = phi float [ %3383, %3374 ], [ %2686, %3357 ]
  %3391 = phi float [ %3384, %3374 ], [ %2687, %3357 ]
  %3392 = phi float [ %3379, %3374 ], [ %2688, %3357 ]
  %3393 = phi float [ %3380, %3374 ], [ %2689, %3357 ]
  %3394 = phi float [ %3381, %3374 ], [ %2690, %3357 ]
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 3
  %3398 = icmp eq i32 %3397, 3
  br i1 %3398, label %3489, label %3399

; <label>:3399                                    ; preds = %3385
  %3400 = and i32 %3396, 16
  %3401 = icmp ne i32 %3400, 0
  %3402 = select i1 %3401, float %2992, float 0.000000e+00
  %3403 = icmp eq i32 %3397, 0
  br i1 %3403, label %3404, label %3444

; <label>:3404                                    ; preds = %3399
  %3405 = and i32 %3396, 64
  %3406 = icmp ne i32 %3405, 0
  %3407 = select i1 %3406, float %2992, float 0.000000e+00
  %3408 = and i32 %3396, 65536
  %3409 = icmp ne i32 %3408, 0
  %3410 = select i1 %3409, float %2992, float 0.000000e+00
  %3411 = fsub fast float %3212, %3386
  %3412 = fsub fast float %3213, %3387
  %3413 = fsub fast float %3214, %3388
  %3414 = fmul fast float %3402, %3411
  %3415 = fmul fast float %3402, %3412
  %3416 = fmul fast float %3402, %3413
  %3417 = fadd fast float %3414, %3386
  %3418 = fadd fast float %3415, %3387
  %3419 = fadd fast float %3416, %3388
  %3420 = fsub fast float %3198, %2691
  %3421 = fmul fast float %3402, %3420
  %3422 = fadd fast float %3421, %2691
  %3423 = fsub fast float %3340, %3392
  %3424 = fsub fast float %3341, %3393
  %3425 = fsub fast float %3342, %3394
  %3426 = fmul fast float %3407, %3423
  %3427 = fmul fast float %3407, %3424
  %3428 = fmul fast float %3407, %3425
  %3429 = fadd fast float %3426, %3392
  %3430 = fadd fast float %3427, %3393
  %3431 = fadd fast float %3428, %3394
  %3432 = fsub fast float %3358, %3389
  %3433 = fsub fast float %3359, %3390
  %3434 = fsub fast float %3360, %3391
  %3435 = fmul fast float %3410, %3432
  %3436 = fmul fast float %3410, %3433
  %3437 = fmul fast float %3410, %3434
  %3438 = fadd fast float %3435, %3389
  %3439 = fadd fast float %3436, %3390
  %3440 = fadd fast float %3437, %3391
  %3441 = fsub fast float %3373, %2694
  %3442 = fmul fast float %3402, %3441
  %3443 = fadd fast float %3442, %2694
  br label %3489

; <label>:3444                                    ; preds = %3399
  %3445 = icmp eq i32 %3397, 1
  br i1 %3445, label %3446, label %3459

; <label>:3446                                    ; preds = %3444
  %3447 = fadd fast float %3212, -1.000000e+00
  %3448 = fadd fast float %3213, -1.000000e+00
  %3449 = fadd fast float %3214, -1.000000e+00
  %3450 = fmul fast float %3402, %3447
  %3451 = fmul fast float %3402, %3448
  %3452 = fmul fast float %3402, %3449
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fadd fast float %3451, 1.000000e+00
  %3455 = fadd fast float %3452, 1.000000e+00
  %3456 = fmul fast float %3453, %3386
  %3457 = fmul fast float %3454, %3387
  %3458 = fmul fast float %3455, %3388
  br label %3489

; <label>:3459                                    ; preds = %3444
  %3460 = icmp eq i32 %3397, 2
  br i1 %3460, label %3461, label %3489

; <label>:3461                                    ; preds = %3459
  %3462 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3463 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3464 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3465 = fadd fast float %3462, -5.000000e-01
  %3466 = fadd fast float %3463, -5.000000e-01
  %3467 = fadd fast float %3464, -5.000000e-01
  %3468 = fmul fast float %3465, %3402
  %3469 = fmul fast float %3466, %3402
  %3470 = fmul fast float %3467, %3402
  %3471 = fadd fast float %3468, 5.000000e-01
  %3472 = fadd fast float %3469, 5.000000e-01
  %3473 = fadd fast float %3470, 5.000000e-01
  %3474 = fmul fast float %3471, 2.000000e+00
  %3475 = fsub fast float 1.000000e+00, %3474
  %3476 = fmul fast float %3475, %3386
  %3477 = fadd fast float %3476, %3474
  %3478 = fmul fast float %3477, %3386
  %3479 = fmul fast float %3472, 2.000000e+00
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = fmul fast float %3480, %3387
  %3482 = fadd fast float %3481, %3479
  %3483 = fmul fast float %3482, %3387
  %3484 = fmul fast float %3473, 2.000000e+00
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3388
  %3487 = fadd fast float %3486, %3484
  %3488 = fmul fast float %3487, %3388
  br label %3489

; <label>:3489                                    ; preds = %3461, %3459, %3446, %3404, %3385
  %3490 = phi float [ %3386, %3385 ], [ %3478, %3461 ], [ %3386, %3459 ], [ %3456, %3446 ], [ %3417, %3404 ]
  %3491 = phi float [ %3387, %3385 ], [ %3483, %3461 ], [ %3387, %3459 ], [ %3457, %3446 ], [ %3418, %3404 ]
  %3492 = phi float [ %3388, %3385 ], [ %3488, %3461 ], [ %3388, %3459 ], [ %3458, %3446 ], [ %3419, %3404 ]
  %3493 = phi float [ %3389, %3385 ], [ %3389, %3461 ], [ %3389, %3459 ], [ %3389, %3446 ], [ %3438, %3404 ]
  %3494 = phi float [ %3390, %3385 ], [ %3390, %3461 ], [ %3390, %3459 ], [ %3390, %3446 ], [ %3439, %3404 ]
  %3495 = phi float [ %3391, %3385 ], [ %3391, %3461 ], [ %3391, %3459 ], [ %3391, %3446 ], [ %3440, %3404 ]
  %3496 = phi float [ %3392, %3385 ], [ %3392, %3461 ], [ %3392, %3459 ], [ %3392, %3446 ], [ %3429, %3404 ]
  %3497 = phi float [ %3393, %3385 ], [ %3393, %3461 ], [ %3393, %3459 ], [ %3393, %3446 ], [ %3430, %3404 ]
  %3498 = phi float [ %3394, %3385 ], [ %3394, %3461 ], [ %3394, %3459 ], [ %3394, %3446 ], [ %3431, %3404 ]
  %3499 = phi float [ %2691, %3385 ], [ %2691, %3461 ], [ %2691, %3459 ], [ %2691, %3446 ], [ %3422, %3404 ]
  %3500 = phi float [ %2694, %3385 ], [ %2694, %3461 ], [ %2694, %3459 ], [ %2694, %3446 ], [ %3443, %3404 ]
  %3501 = and i32 %3396, 12
  %3502 = icmp eq i32 %3501, 12
  br i1 %3502, label %3575, label %3503

; <label>:3503                                    ; preds = %3489
  %3504 = and i32 %3396, 2097184
  %3505 = icmp eq i32 %3504, 2097184
  %3506 = select i1 %3505, float %2992, float 0.000000e+00
  %3507 = and i32 %3396, 4194336
  %3508 = icmp eq i32 %3507, 4194336
  %3509 = select i1 %3508, float %2992, float 0.000000e+00
  %3510 = and i32 %3396, 8388640
  %3511 = icmp eq i32 %3510, 8388640
  %3512 = select i1 %3511, float %2992, float 0.000000e+00
  %3513 = icmp eq i32 %3501, 0
  br i1 %3513, label %3514, label %3527

; <label>:3514                                    ; preds = %3503
  %3515 = fsub fast float %3293, %2680
  %3516 = fsub fast float %3294, %2681
  %3517 = fmul fast float %3506, %3515
  %3518 = fmul fast float %3506, %3516
  %3519 = fadd fast float %3517, %2680
  %3520 = fadd fast float %3518, %2681
  %3521 = fsub fast float %3295, %2693
  %3522 = fmul fast float %3509, %3521
  %3523 = fadd fast float %3522, %2693
  %3524 = fsub fast float %3292, %2692
  %3525 = fmul fast float %3512, %3524
  %3526 = fadd fast float %3525, %2692
  br label %3575

; <label>:3527                                    ; preds = %3503
  %3528 = icmp eq i32 %3501, 4
  br i1 %3528, label %3529, label %3561

; <label>:3529                                    ; preds = %3527
  %3530 = fmul fast float %3506, %3293
  %3531 = fmul fast float %3506, %3294
  %3532 = fadd fast float %3530, %2680
  %3533 = fadd fast float %3531, %2681
  %3534 = call float @dx.op.binary.f32(i32 36, float %2693, float %3295)  ; FMin(a,b)
  %3535 = fsub fast float %3534, %2693
  %3536 = fmul fast float %3535, %3509
  %3537 = fadd fast float %3536, %2693
  %3538 = fadd fast float %3292, %2692
  %3539 = fmul fast float %3538, 0x3FF337FAE0000000
  %3540 = fmul fast float %2692, %2692
  %3541 = fmul fast float %3292, %3292
  %3542 = fadd fast float %3541, %3540
  %3543 = fmul fast float %3542, 0x3FE5152B00000000
  %3544 = fmul fast float %2692, 0xBFCC1F85E0000000
  %3545 = fmul fast float %3544, %3292
  %3546 = fadd fast float %3545, 0xBFE1363700000000
  %3547 = fadd fast float %3546, %3539
  %3548 = fsub fast float %3547, %3543
  %3549 = fmul fast float %3538, 0x3FBA6F0D00000000
  %3550 = fmul fast float %3542, 0x3FD0432880000000
  %3551 = fmul fast float %2692, 0xBFEF110800000000
  %3552 = fmul fast float %3551, %3292
  %3553 = fadd fast float %3552, 1.000000e+00
  %3554 = fsub fast float %3553, %3549
  %3555 = fadd fast float %3554, %3550
  %3556 = fdiv fast float %3548, %3555
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fsub fast float %3557, %2692
  %3559 = fmul fast float %3558, %3512
  %3560 = fadd fast float %3559, %2692
  br label %3575

; <label>:3561                                    ; preds = %3527
  %3562 = icmp eq i32 %3501, 8
  br i1 %3562, label %3563, label %3575

; <label>:3563                                    ; preds = %3561
  %3564 = fmul fast float %3506, %3293
  %3565 = fmul fast float %3506, %3294
  %3566 = fadd fast float %3564, %2680
  %3567 = fadd fast float %3565, %2681
  %3568 = call float @dx.op.binary.f32(i32 36, float %2693, float %3295)  ; FMin(a,b)
  %3569 = fsub fast float %3568, %2693
  %3570 = fmul fast float %3569, %3509
  %3571 = fadd fast float %3570, %2693
  %3572 = fsub fast float %3292, %2692
  %3573 = fmul fast float %3512, %3572
  %3574 = fadd fast float %3573, %2692
  br label %3575

; <label>:3575                                    ; preds = %3563, %3561, %3529, %3514, %3489, %2991, %2695, %2679
  %3576 = phi float [ %2680, %3489 ], [ %2680, %2991 ], [ %2680, %2679 ], [ %2680, %2695 ], [ %3519, %3514 ], [ %3532, %3529 ], [ %2680, %3561 ], [ %3566, %3563 ]
  %3577 = phi float [ %2681, %3489 ], [ %2681, %2991 ], [ %2681, %2679 ], [ %2681, %2695 ], [ %3520, %3514 ], [ %3533, %3529 ], [ %2681, %3561 ], [ %3567, %3563 ]
  %3578 = phi float [ %3490, %3489 ], [ %2682, %2991 ], [ %2682, %2679 ], [ %2682, %2695 ], [ %3490, %3514 ], [ %3490, %3529 ], [ %3490, %3561 ], [ %3490, %3563 ]
  %3579 = phi float [ %3491, %3489 ], [ %2683, %2991 ], [ %2683, %2679 ], [ %2683, %2695 ], [ %3491, %3514 ], [ %3491, %3529 ], [ %3491, %3561 ], [ %3491, %3563 ]
  %3580 = phi float [ %3492, %3489 ], [ %2684, %2991 ], [ %2684, %2679 ], [ %2684, %2695 ], [ %3492, %3514 ], [ %3492, %3529 ], [ %3492, %3561 ], [ %3492, %3563 ]
  %3581 = phi float [ %3493, %3489 ], [ %2685, %2991 ], [ %2685, %2679 ], [ %2685, %2695 ], [ %3493, %3514 ], [ %3493, %3529 ], [ %3493, %3561 ], [ %3493, %3563 ]
  %3582 = phi float [ %3494, %3489 ], [ %2686, %2991 ], [ %2686, %2679 ], [ %2686, %2695 ], [ %3494, %3514 ], [ %3494, %3529 ], [ %3494, %3561 ], [ %3494, %3563 ]
  %3583 = phi float [ %3495, %3489 ], [ %2687, %2991 ], [ %2687, %2679 ], [ %2687, %2695 ], [ %3495, %3514 ], [ %3495, %3529 ], [ %3495, %3561 ], [ %3495, %3563 ]
  %3584 = phi float [ %3496, %3489 ], [ %2688, %2991 ], [ %2688, %2679 ], [ %2688, %2695 ], [ %3496, %3514 ], [ %3496, %3529 ], [ %3496, %3561 ], [ %3496, %3563 ]
  %3585 = phi float [ %3497, %3489 ], [ %2689, %2991 ], [ %2689, %2679 ], [ %2689, %2695 ], [ %3497, %3514 ], [ %3497, %3529 ], [ %3497, %3561 ], [ %3497, %3563 ]
  %3586 = phi float [ %3498, %3489 ], [ %2690, %2991 ], [ %2690, %2679 ], [ %2690, %2695 ], [ %3498, %3514 ], [ %3498, %3529 ], [ %3498, %3561 ], [ %3498, %3563 ]
  %3587 = phi float [ %3499, %3489 ], [ %2691, %2991 ], [ %2691, %2679 ], [ %2691, %2695 ], [ %3499, %3514 ], [ %3499, %3529 ], [ %3499, %3561 ], [ %3499, %3563 ]
  %3588 = phi float [ %2692, %3489 ], [ %2692, %2991 ], [ %2692, %2679 ], [ %2692, %2695 ], [ %3526, %3514 ], [ %3560, %3529 ], [ %2692, %3561 ], [ %3574, %3563 ]
  %3589 = phi float [ %2693, %3489 ], [ %2693, %2991 ], [ %2693, %2679 ], [ %2693, %2695 ], [ %3523, %3514 ], [ %3537, %3529 ], [ %2693, %3561 ], [ %3571, %3563 ]
  %3590 = phi float [ %3500, %3489 ], [ %2694, %2991 ], [ %2694, %2679 ], [ %2694, %2695 ], [ %3500, %3514 ], [ %3500, %3529 ], [ %3500, %3561 ], [ %3500, %3563 ]
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = call float @dx.op.dot2.f32(i32 54, float %3576, float %3577, float %3576, float %3577)  ; Dot2(ax,ay,bx,by)
  %3594 = fmul fast float %3593, 0x3FE3333340000000
  %3595 = fsub fast float 1.000000e+00, %3594
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3576, float %3577, float %3595, float %3576, float %3577, float %3595)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = call float @dx.op.unary.f32(i32 25, float %3596)  ; Rsqrt(value)
  %3598 = fmul fast float %3597, %3576
  %3599 = fmul fast float %3597, %3577
  %3600 = fmul fast float %3595, %3597
  %3601 = fmul fast float %3600, %75
  %3602 = fmul fast float %3600, %76
  %3603 = fmul fast float %3600, %77
  %3604 = fmul fast float %3598, %49
  %3605 = fmul fast float %3598, %50
  %3606 = fmul fast float %3598, %51
  %3607 = fadd fast float %3601, %3604
  %3608 = fadd fast float %3602, %3605
  %3609 = fadd fast float %3603, %3606
  %3610 = fmul fast float %87, %3599
  %3611 = fmul fast float %88, %3599
  %3612 = fmul fast float %89, %3599
  %3613 = fadd fast float %3607, %3610
  %3614 = fadd fast float %3608, %3611
  %3615 = fadd fast float %3609, %3612
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3613, float %3614, float %3615, float %3613, float %3614, float %3615)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = call float @dx.op.unary.f32(i32 25, float %3616)  ; Rsqrt(value)
  %3618 = fmul fast float %3613, %3617
  %3619 = fmul fast float %3614, %3617
  %3620 = fmul fast float %3615, %3617
  %3621 = and i32 %35, 1
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3623, label %4131

; <label>:3623                                    ; preds = %3575
  %3624 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3625 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3626 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3627 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3628 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3629 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3630 = fadd fast float %3624, %131
  %3631 = fadd fast float %3625, %132
  %3632 = fadd fast float %3626, %133
  %3633 = fadd fast float %3627, %131
  %3634 = fadd fast float %3628, %132
  %3635 = fadd fast float %3629, %133
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.CBufRet.f32 %3636, 2
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 2
  %3642 = extractvalue %dx.types.CBufRet.f32 %3640, 3
  %3643 = fmul fast float %3637, %68
  %3644 = fmul fast float %3643, %3641
  %3645 = fmul fast float %3638, %69
  %3646 = fmul fast float %3645, %3642
  %3647 = fptoui float %3644 to i32
  %3648 = fptoui float %3646 to i32
  %3649 = fadd fast float %3637, -1.000000e+00
  %3650 = fadd fast float %3638, -1.000000e+00
  %3651 = fptoui float %3649 to i32
  %3652 = fptoui float %3650 to i32
  %3653 = call i32 @dx.op.binary.i32(i32 40, i32 %3647, i32 %3651)  ; UMin(a,b)
  %3654 = call i32 @dx.op.binary.i32(i32 40, i32 %3648, i32 %3652)  ; UMin(a,b)
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3658 = fmul fast float %3656, %63
  %3659 = fsub fast float %3658, %3657
  %3660 = fadd fast float %3639, -1.000000e+00
  %3661 = call float @dx.op.binary.f32(i32 36, float %3659, float %3660)  ; FMin(a,b)
  %3662 = fptoui float %3661 to i32
  %3663 = fptoui float %3637 to i32
  %3664 = fptoui float %3638 to i32
  %3665 = mul i32 %3662, %3664
  %3666 = add i32 %3665, %3654
  %3667 = mul i32 %3666, %3663
  %3668 = add i32 %3667, %3653
  %3669 = shl i32 %3668, 2
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = and i32 %3671, 1023
  %3673 = lshr i32 %3671, 10
  %3674 = icmp eq i32 %3672, 0
  br i1 %3674, label %4100, label %3675

; <label>:3675                                    ; preds = %3623
  %3676 = and i32 %3671, 1023
  br label %3677

; <label>:3677                                    ; preds = %3803, %3675
  %3678 = phi i32 [ %3753, %3803 ], [ 0, %3675 ]
  %3679 = phi float [ %3804, %3803 ], [ 0.000000e+00, %3675 ]
  %3680 = phi float [ %3805, %3803 ], [ %3592, %3675 ]
  %3681 = phi float [ %3806, %3803 ], [ %3590, %3675 ]
  %3682 = phi float [ %3807, %3803 ], [ 0.000000e+00, %3675 ]
  %3683 = phi float [ %3808, %3803 ], [ 0.000000e+00, %3675 ]
  %3684 = phi float [ %3809, %3803 ], [ %3584, %3675 ]
  %3685 = phi float [ %3810, %3803 ], [ %3585, %3675 ]
  %3686 = phi float [ %3811, %3803 ], [ %3586, %3675 ]
  %3687 = phi float [ %3812, %3803 ], [ %3618, %3675 ]
  %3688 = phi float [ %3813, %3803 ], [ %3619, %3675 ]
  %3689 = phi float [ %3814, %3803 ], [ %3620, %3675 ]
  %3690 = phi float [ %3815, %3803 ], [ %3589, %3675 ]
  %3691 = phi float [ %3816, %3803 ], [ %3588, %3675 ]
  %3692 = phi float [ %3817, %3803 ], [ 0.000000e+00, %3675 ]
  %3693 = phi float [ %3818, %3803 ], [ %3587, %3675 ]
  %3694 = phi float [ %3819, %3803 ], [ %3578, %3675 ]
  %3695 = phi float [ %3820, %3803 ], [ %3579, %3675 ]
  %3696 = phi float [ %3821, %3803 ], [ %3580, %3675 ]
  %3697 = add nuw nsw i32 %3678, %3673
  %3698 = shl i32 %3697, 2
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = shl i32 %3700, 8
  %3702 = or i32 %3701, 48
  %3703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.ResRet.f32 %3703, 3
  %3708 = or i32 %3701, 64
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.i32 %3709, 1
  %3712 = or i32 %3701, 80
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3716 = or i32 %3701, 96
  %3717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3722 = or i32 %3701, 112
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3725 = or i32 %3701, 128
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.ResRet.f32 %3726, 3
  %3731 = or i32 %3701, 144
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3737 = or i32 %3701, 160
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.ResRet.f32 %3738, 3
  %3743 = or i32 %3701, 192
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = or i32 %3701, 208
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = or i32 %3701, 248
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = add nuw nsw i32 %3678, 1
  %3754 = bitcast float %3707 to i32
  %3755 = and i32 %3754, 512
  %3756 = icmp eq i32 %3755, 0
  %3757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  %3761 = extractvalue %dx.types.ResRet.f32 %3757, 3
  %3762 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3763 = or i32 %3701, 16
  %3764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = call float @dx.op.dot4.f32(i32 56, float %3765, float %3766, float %3767, float %3768, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3770 = or i32 %3701, 32
  %3771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.ResRet.f32 %3771, 3
  %3776 = call float @dx.op.dot4.f32(i32 56, float %3772, float %3773, float %3774, float %3775, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3777 = call float @dx.op.unary.f32(i32 27, float %3762)  ; Round_ni(value)
  %3778 = call float @dx.op.unary.f32(i32 6, float %3777)  ; FAbs(value)
  %3779 = call float @dx.op.unary.f32(i32 27, float %3769)  ; Round_ni(value)
  %3780 = call float @dx.op.unary.f32(i32 6, float %3779)  ; FAbs(value)
  %3781 = call float @dx.op.unary.f32(i32 6, float %3776)  ; FAbs(value)
  %3782 = call float @dx.op.unary.f32(i32 27, float %3781)  ; Round_ni(value)
  %3783 = fadd fast float %3780, %3778
  %3784 = fadd fast float %3783, %3782
  %3785 = fcmp fast oeq float %3784, 0.000000e+00
  %3786 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %3630, float %3631, float %3632, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3787 = call float @dx.op.dot4.f32(i32 56, float %3765, float %3766, float %3767, float %3768, float %3630, float %3631, float %3632, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3788 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3789 = call float @dx.op.dot4.f32(i32 56, float %3765, float %3766, float %3767, float %3768, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3790 = fsub fast float %3786, %3762
  %3791 = fsub fast float %3788, %3762
  %3792 = fsub fast float %3787, %3769
  %3793 = fsub fast float %3789, %3769
  %3794 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3705, float %3706, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.f32 %3795, 2
  %3797 = fadd fast float %3796, %3794
  %3798 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3795, 0
  %3800 = fcmp fast ogt float %3798, %3799
  %3801 = and i1 %3785, %3800
  %3802 = and i1 %3756, %3801
  br i1 %3802, label %3823, label %3803

; <label>:3803                                    ; preds = %4086, %3904, %3823, %3677
  %3804 = phi float [ %3679, %3823 ], [ %3907, %3904 ], [ %3907, %4086 ], [ %3679, %3677 ]
  %3805 = phi float [ %3680, %3823 ], [ %3680, %3904 ], [ %4061, %4086 ], [ %3680, %3677 ]
  %3806 = phi float [ %3681, %3823 ], [ %3681, %3904 ], [ %4059, %4086 ], [ %3681, %3677 ]
  %3807 = phi float [ %3682, %3823 ], [ %3682, %3904 ], [ %4031, %4086 ], [ %3682, %3677 ]
  %3808 = phi float [ %3683, %3823 ], [ %3683, %3904 ], [ %4029, %4086 ], [ %3683, %3677 ]
  %3809 = phi float [ %3684, %3823 ], [ %3684, %3904 ], [ %4096, %4086 ], [ %3684, %3677 ]
  %3810 = phi float [ %3685, %3823 ], [ %3685, %3904 ], [ %4097, %4086 ], [ %3685, %3677 ]
  %3811 = phi float [ %3686, %3823 ], [ %3686, %3904 ], [ %4098, %4086 ], [ %3686, %3677 ]
  %3812 = phi float [ %3687, %3823 ], [ %3687, %3904 ], [ %4010, %4086 ], [ %3687, %3677 ]
  %3813 = phi float [ %3688, %3823 ], [ %3688, %3904 ], [ %4011, %4086 ], [ %3688, %3677 ]
  %3814 = phi float [ %3689, %3823 ], [ %3689, %3904 ], [ %4012, %4086 ], [ %3689, %3677 ]
  %3815 = phi float [ %3690, %3823 ], [ %3690, %3904 ], [ %4039, %4086 ], [ %3690, %3677 ]
  %3816 = phi float [ %3691, %3823 ], [ %3691, %3904 ], [ %4036, %4086 ], [ %3691, %3677 ]
  %3817 = phi float [ %3692, %3823 ], [ %3692, %3904 ], [ %4033, %4086 ], [ %3692, %3677 ]
  %3818 = phi float [ %3693, %3823 ], [ %3693, %3904 ], [ %4027, %4086 ], [ %3693, %3677 ]
  %3819 = phi float [ %3694, %3823 ], [ %3694, %3904 ], [ %4022, %4086 ], [ %3694, %3677 ]
  %3820 = phi float [ %3695, %3823 ], [ %3695, %3904 ], [ %4023, %4086 ], [ %3695, %3677 ]
  %3821 = phi float [ %3696, %3823 ], [ %3696, %3904 ], [ %4024, %4086 ], [ %3696, %3677 ]
  %3822 = icmp eq i32 %3753, %3676
  br i1 %3822, label %4099, label %3677

; <label>:3823                                    ; preds = %3677
  %3824 = extractvalue %dx.types.ResRet.f32 %3723, 3
  %3825 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3829 = extractvalue %dx.types.ResRet.i32 %3709, 3
  %3830 = extractvalue %dx.types.ResRet.i32 %3709, 2
  %3831 = add i32 %3829, 0
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3831, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3834 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3832, %dx.types.Handle %3833, float %3762, float %3769, float undef, float undef, i32 0, i32 0, i32 undef, float %3790, float %3792, float undef, float %3791, float %3793, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = fmul fast float %3835, %3828
  %3837 = fadd fast float %3836, %3827
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fmul fast float %3762, %3718
  %3840 = call float @dx.op.tertiary.f32(i32 46, float %3719, float %3769, float %3839)  ; FMad(a,b,c)
  %3841 = fadd fast float %3840, %3826
  %3842 = fmul fast float %3762, %3720
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3769, float %3842)  ; FMad(a,b,c)
  %3844 = fadd fast float %3843, %3825
  %3845 = fmul fast float %3790, %3718
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3719, float %3792, float %3845)  ; FMad(a,b,c)
  %3847 = fmul fast float %3790, %3720
  %3848 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3792, float %3847)  ; FMad(a,b,c)
  %3849 = fmul fast float %3791, %3718
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3719, float %3793, float %3849)  ; FMad(a,b,c)
  %3851 = fmul fast float %3791, %3720
  %3852 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3793, float %3851)  ; FMad(a,b,c)
  %3853 = add i32 %3830, 0
  %3854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3853, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3855 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3854, %dx.types.Handle %3833, float %3841, float %3844, float undef, float undef, i32 0, i32 0, i32 undef, float %3846, float %3848, float undef, float %3850, float %3852, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = and i32 %3754, 1024
  %3858 = icmp ne i32 %3857, 0
  %3859 = fcmp fast ogt float %3856, 0x3FE0101020000000
  %3860 = uitofp i1 %3859 to float
  %3861 = select i1 %3858, float %3860, float %3856
  %3862 = and i32 %3754, 8192
  %3863 = icmp ne i32 %3862, 0
  %3864 = select i1 %3863, float %3824, float 1.000000e+00
  %3865 = fmul fast float %3762, 2.000000e+00
  %3866 = fadd fast float %3865, -1.000000e+00
  %3867 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3868 = fmul fast float %3867, %3751
  %3869 = fsub fast float %3868, %3751
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = fmul fast float %3769, 2.000000e+00
  %3872 = fadd fast float %3871, -1.000000e+00
  %3873 = call float @dx.op.unary.f32(i32 6, float %3872)  ; FAbs(value)
  %3874 = fmul fast float %3873, %3752
  %3875 = fsub fast float %3874, %3752
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = fmul fast float %3781, %3714
  %3878 = fsub fast float %3877, %3714
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fmul fast float %3838, %3864
  %3881 = fmul fast float %3880, %3835
  %3882 = fmul fast float %3881, %3870
  %3883 = fmul fast float %3882, %3861
  %3884 = fmul fast float %3883, %3876
  %3885 = fmul fast float %3884, %3879
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3889 = fsub fast float %3798, %3888
  %3890 = fmul fast float %3889, %3887
  %3891 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3892 = fmul fast float %3885, %3715
  %3893 = fadd fast float %3885, %3715
  %3894 = fmul fast float %3893, %3724
  %3895 = fsub fast float %3894, %3724
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = and i32 %3754, 128
  %3898 = icmp ne i32 %3897, 0
  %3899 = select i1 %3898, float %3896, float %3892
  %3900 = fmul fast float %3899, %3891
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = fcmp fast ugt float %3900, %3902
  br i1 %3903, label %3904, label %3803

; <label>:3904                                    ; preds = %3823
  %3905 = select i1 %3863, float %3900, float 0.000000e+00
  %3906 = fadd fast float %3905, %3679
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  br i1 %3863, label %3803, label %3908

; <label>:3908                                    ; preds = %3904
  %3909 = and i32 %3754, 4
  %3910 = and i32 %3754, 8
  %3911 = add i32 %3710, 0
  %3912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3911, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3914 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3912, %dx.types.Handle %3913, float %3841, float %3844, float undef, float undef, i32 0, i32 0, i32 undef, float %3846, float %3848, float undef, float %3850, float %3852, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = bitcast float %3736 to i32
  %3920 = and i32 %3919, 255
  %3921 = uitofp i32 %3920 to float
  %3922 = lshr i32 %3919, 8
  %3923 = and i32 %3922, 255
  %3924 = uitofp i32 %3923 to float
  %3925 = fmul fast float %3918, %3921
  %3926 = fadd fast float %3925, %3924
  %3927 = fmul fast float %3926, 0x3F70101000000000
  %3928 = add i32 %3711, 0
  %3929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3928, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3930 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3929, %dx.types.Handle %3913, float %3841, float %3844, float undef, float undef, i32 0, i32 0, i32 undef, float %3846, float %3848, float undef, float %3850, float %3852, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = extractvalue %dx.types.ResRet.f32 %3930, 3
  %3935 = bitcast float %3730 to i32
  %3936 = and i32 %3935, 255
  %3937 = uitofp i32 %3936 to float
  %3938 = lshr i32 %3935, 8
  %3939 = and i32 %3938, 255
  %3940 = uitofp i32 %3939 to float
  %3941 = lshr i32 %3935, 16
  %3942 = and i32 %3941, 255
  %3943 = uitofp i32 %3942 to float
  %3944 = fmul fast float %3943, 0x3F70101000000000
  %3945 = fmul fast float %3931, %3937
  %3946 = fadd fast float %3945, %3940
  %3947 = fmul fast float %3946, 0x3F70101000000000
  %3948 = fadd fast float %3932, -5.000000e-01
  %3949 = fadd fast float %3934, -5.000000e-01
  %3950 = fmul fast float %3948, %3944
  %3951 = fmul fast float %3949, %3944
  %3952 = fadd fast float %3950, 5.000000e-01
  %3953 = fadd fast float %3951, 5.000000e-01
  %3954 = fmul fast float %3915, %3739
  %3955 = fmul fast float %3916, %3740
  %3956 = fmul fast float %3917, %3741
  %3957 = fmul fast float %3952, 2.000000e+00
  %3958 = fadd fast float %3957, -1.000000e+00
  %3959 = fmul fast float %3953, 2.000000e+00
  %3960 = fadd fast float %3959, -1.000000e+00
  %3961 = fadd fast float %3958, %3960
  %3962 = fmul fast float %3961, 5.000000e-01
  %3963 = fsub fast float %3958, %3960
  %3964 = fmul fast float %3963, 5.000000e-01
  %3965 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3966 = fsub fast float 1.000000e+00, %3965
  %3967 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3968 = fsub fast float %3966, %3967
  %3969 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3964, float %3968, float %3962, float %3964, float %3968)  ; Dot3(ax,ay,az,bx,by,bz)
  %3970 = call float @dx.op.unary.f32(i32 25, float %3969)  ; Rsqrt(value)
  %3971 = fmul fast float %3962, %3970
  %3972 = fmul fast float %3964, %3970
  %3973 = fmul fast float %3970, %3968
  %3974 = fmul fast float %3973, %3704
  %3975 = fmul fast float %3973, %3705
  %3976 = fmul fast float %3973, %3706
  %3977 = fmul fast float %3971, %3727
  %3978 = fmul fast float %3971, %3728
  %3979 = fmul fast float %3971, %3729
  %3980 = fadd fast float %3977, %3974
  %3981 = fadd fast float %3978, %3975
  %3982 = fadd fast float %3979, %3976
  %3983 = fmul fast float %3972, %3733
  %3984 = fmul fast float %3972, %3734
  %3985 = fmul fast float %3972, %3735
  %3986 = fadd fast float %3980, %3983
  %3987 = fadd fast float %3981, %3984
  %3988 = fadd fast float %3982, %3985
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %3986, float %3987, float %3988)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = call float @dx.op.unary.f32(i32 25, float %3989)  ; Rsqrt(value)
  %3991 = fmul fast float %3986, %3990
  %3992 = fmul fast float %3987, %3990
  %3993 = fmul fast float %3988, %3990
  %3994 = icmp ne i32 %3910, 0
  %3995 = select i1 %3994, float 1.000000e+00, float 0.000000e+00
  %3996 = fmul fast float %3900, %3995
  %3997 = and i32 %3754, 1
  %3998 = icmp eq i32 %3997, 0
  br i1 %3998, label %3999, label %4003

; <label>:3999                                    ; preds = %3908
  %4000 = fsub fast float %3991, %3687
  %4001 = fsub fast float %3992, %3688
  %4002 = fsub fast float %3993, %3689
  br label %4003

; <label>:4003                                    ; preds = %3999, %3908
  %4004 = phi float [ %4000, %3999 ], [ %3991, %3908 ]
  %4005 = phi float [ %4001, %3999 ], [ %3992, %3908 ]
  %4006 = phi float [ %4002, %3999 ], [ %3993, %3908 ]
  %4007 = fmul float %4006, %3996
  %4008 = fmul float %4005, %3996
  %4009 = fmul float %4004, %3996
  %4010 = fadd fast float %4009, %3687
  %4011 = fadd fast float %4008, %3688
  %4012 = fadd fast float %4007, %3689
  %4013 = icmp ne i32 %3909, 0
  %4014 = select i1 %4013, float 1.000000e+00, float 0.000000e+00
  %4015 = fmul fast float %3900, %4014
  %4016 = fsub fast float %3954, %3694
  %4017 = fsub fast float %3955, %3695
  %4018 = fsub fast float %3956, %3696
  %4019 = fmul fast float %4016, %4015
  %4020 = fmul fast float %4017, %4015
  %4021 = fmul fast float %4018, %4015
  %4022 = fadd fast float %4019, %3694
  %4023 = fadd fast float %4020, %3695
  %4024 = fadd fast float %4021, %3696
  %4025 = fsub fast float %3927, %3693
  %4026 = fmul fast float %4025, %4015
  %4027 = fadd fast float %4026, %3693
  %4028 = fmul fast float %4015, %3683
  %4029 = fsub fast float %3683, %4028
  %4030 = fmul fast float %4015, %3682
  %4031 = fsub fast float %3682, %4030
  %4032 = fadd fast float %3900, %3692
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = fsub fast float %3947, %3691
  %4035 = fmul fast float %4034, %3996
  %4036 = fadd fast float %4035, %3691
  %4037 = fsub fast float %3933, %3690
  %4038 = fmul fast float %4037, %3996
  %4039 = fadd fast float %4038, %3690
  %4040 = call float @dx.op.dot3.f32(i32 55, float %3954, float %3955, float %3956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.CBufRet.f32 %4041, 1
  %4044 = fmul fast float %4043, %4040
  %4045 = fadd fast float %4044, %4042
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = bitcast float %3742 to i32
  %4048 = and i32 %4047, 65535
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = lshr i32 %4047, 16
  %4051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4050)  ; LegacyF16ToF32(value)
  %4052 = fcmp fast oge float %4049, 0.000000e+00
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = select i1 %4052, float %4049, float %4054
  %4056 = fadd fast float %4055, %4051
  %4057 = fsub fast float %4046, %3681
  %4058 = fmul fast float %4057, %3900
  %4059 = fadd fast float %4058, %3681
  %4060 = fmul fast float %4056, %3900
  %4061 = call float @dx.op.binary.f32(i32 35, float %3680, float %4060)  ; FMax(a,b)
  %4062 = and i32 %3754, 16
  %4063 = icmp eq i32 %4062, 0
  br i1 %4063, label %4086, label %4064

; <label>:4064                                    ; preds = %4003
  %4065 = bitcast float %3748 to i32
  %4066 = add i32 %3745, 0
  %4067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4066, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4067, %dx.types.Handle %3913, float %3841, float %3844, float undef, float undef, i32 0, i32 0, i32 undef, float %3846, float %3848, float undef, float %3850, float %3852, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.ResRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.ResRet.f32 %4068, 2
  %4072 = and i32 %4065, 65535
  %4073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4072)  ; LegacyF16ToF32(value)
  %4074 = fmul fast float %4069, %3739
  %4075 = fmul fast float %4070, %3740
  %4076 = fmul fast float %4071, %3741
  %4077 = and i32 %3754, 16384
  %4078 = icmp ne i32 %4077, 0
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = select i1 %4078, float %4080, float 1.000000e+00
  %4082 = fmul fast float %4081, %4073
  %4083 = fmul fast float %4074, %4082
  %4084 = fmul fast float %4075, %4082
  %4085 = fmul fast float %4076, %4082
  br label %4086

; <label>:4086                                    ; preds = %4064, %4003
  %4087 = phi float [ %4083, %4064 ], [ 0.000000e+00, %4003 ]
  %4088 = phi float [ %4084, %4064 ], [ 0.000000e+00, %4003 ]
  %4089 = phi float [ %4085, %4064 ], [ 0.000000e+00, %4003 ]
  %4090 = fsub fast float %4087, %3684
  %4091 = fsub fast float %4088, %3685
  %4092 = fsub fast float %4089, %3686
  %4093 = fmul fast float %4090, %3900
  %4094 = fmul fast float %4091, %3900
  %4095 = fmul fast float %4092, %3900
  %4096 = fadd fast float %4093, %3684
  %4097 = fadd fast float %4094, %3685
  %4098 = fadd fast float %4095, %3686
  br label %3803

; <label>:4099                                    ; preds = %3803
  br label %4100

; <label>:4100                                    ; preds = %4099, %3623
  %4101 = phi float [ 0.000000e+00, %3623 ], [ %3804, %4099 ]
  %4102 = phi float [ %3592, %3623 ], [ %3805, %4099 ]
  %4103 = phi float [ %3590, %3623 ], [ %3806, %4099 ]
  %4104 = phi float [ 0.000000e+00, %3623 ], [ %3807, %4099 ]
  %4105 = phi float [ 0.000000e+00, %3623 ], [ %3808, %4099 ]
  %4106 = phi float [ %3584, %3623 ], [ %3809, %4099 ]
  %4107 = phi float [ %3585, %3623 ], [ %3810, %4099 ]
  %4108 = phi float [ %3586, %3623 ], [ %3811, %4099 ]
  %4109 = phi float [ %3618, %3623 ], [ %3812, %4099 ]
  %4110 = phi float [ %3619, %3623 ], [ %3813, %4099 ]
  %4111 = phi float [ %3620, %3623 ], [ %3814, %4099 ]
  %4112 = phi float [ %3589, %3623 ], [ %3815, %4099 ]
  %4113 = phi float [ %3588, %3623 ], [ %3816, %4099 ]
  %4114 = phi float [ 0.000000e+00, %3623 ], [ %3817, %4099 ]
  %4115 = phi float [ %3587, %3623 ], [ %3818, %4099 ]
  %4116 = phi float [ %3578, %3623 ], [ %3819, %4099 ]
  %4117 = phi float [ %3579, %3623 ], [ %3820, %4099 ]
  %4118 = phi float [ %3580, %3623 ], [ %3821, %4099 ]
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4109, float %4110, float %4111, float %4109, float %4110, float %4111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = call float @dx.op.unary.f32(i32 25, float %4119)  ; Rsqrt(value)
  %4121 = fmul fast float %4120, %4109
  %4122 = fmul fast float %4120, %4110
  %4123 = fmul fast float %4120, %4111
  %4124 = fadd fast float %4114, %899
  %4125 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4121, float %4122, float %4123, float %4121, float %4122, float %4123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = call float @dx.op.unary.f32(i32 25, float %4126)  ; Rsqrt(value)
  %4128 = fmul fast float %4127, %4121
  %4129 = fmul fast float %4127, %4122
  %4130 = fmul fast float %4127, %4123
  br label %4131

; <label>:4131                                    ; preds = %4100, %3575
  %4132 = phi float [ %4128, %4100 ], [ %3618, %3575 ]
  %4133 = phi float [ %4129, %4100 ], [ %3619, %3575 ]
  %4134 = phi float [ %4130, %4100 ], [ %3620, %3575 ]
  %4135 = phi float [ %4116, %4100 ], [ %3578, %3575 ]
  %4136 = phi float [ %4117, %4100 ], [ %3579, %3575 ]
  %4137 = phi float [ %4118, %4100 ], [ %3580, %3575 ]
  %4138 = phi float [ %4106, %4100 ], [ %3584, %3575 ]
  %4139 = phi float [ %4107, %4100 ], [ %3585, %3575 ]
  %4140 = phi float [ %4108, %4100 ], [ %3586, %3575 ]
  %4141 = phi float [ %4115, %4100 ], [ %3587, %3575 ]
  %4142 = phi float [ %4125, %4100 ], [ %899, %3575 ]
  %4143 = phi float [ %4113, %4100 ], [ %3588, %3575 ]
  %4144 = phi float [ %4112, %4100 ], [ %3589, %3575 ]
  %4145 = phi float [ %4105, %4100 ], [ 0.000000e+00, %3575 ]
  %4146 = phi float [ %4104, %4100 ], [ 0.000000e+00, %3575 ]
  %4147 = phi float [ %4101, %4100 ], [ 0.000000e+00, %3575 ]
  %4148 = phi float [ %4102, %4100 ], [ %3592, %3575 ]
  %4149 = phi float [ %4103, %4100 ], [ %3590, %3575 ]
  %4150 = fadd fast float %4141, 0xBFB99999A0000000
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, 0x3FF1C71C80000000
  %4153 = call float @dx.op.binary.f32(i32 36, float %4141, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4154 = fsub fast float 1.000000e+00, %4152
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fmul fast float %4155, %4135
  %4157 = fmul fast float %4155, %4136
  %4158 = fmul fast float %4155, %4137
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = fmul fast float %4152, %4135
  %4163 = fmul fast float %4152, %4136
  %4164 = fmul fast float %4152, %4137
  %4165 = fadd fast float %4162, %4153
  %4166 = fadd fast float %4163, %4153
  %4167 = fadd fast float %4164, %4153
  %4168 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.i32 %4172, 3
  %4174 = and i32 %4173, 8
  %4175 = icmp ne i32 %4174, 0
  %4176 = call float @dx.op.binary.f32(i32 35, float %4159, float %4135)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %4160, float %4135)  ; FMax(a,b)
  %4178 = call float @dx.op.binary.f32(i32 35, float %4161, float %4135)  ; FMax(a,b)
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4159, float %4160, float %4161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = select i1 %173, float %4135, float %4159
  %4181 = select i1 %173, float %4179, float %4160
  %4182 = select i1 %173, float 1.000000e+00, float %4161
  %4183 = select i1 %4175, float %4176, float %4180
  %4184 = select i1 %4175, float %4177, float %4181
  %4185 = select i1 %4175, float %4178, float %4182
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4190 = fadd fast float %4187, %131
  %4191 = fadd fast float %4188, %132
  %4192 = fadd fast float %4189, %133
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4196 = fsub fast float %4190, %4194
  %4197 = fsub fast float %4191, %4195
  %4198 = fmul fast float %4196, %4196
  %4199 = fmul fast float %4197, %4197
  %4200 = fadd fast float %4198, %4199
  %4201 = call float @dx.op.unary.f32(i32 24, float %4200)  ; Sqrt(value)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4203 = fcmp fast olt float %4201, %4202
  br i1 %4203, label %4204, label %4271

; <label>:4204                                    ; preds = %4131
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4212 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4209, 1
  %4214 = extractvalue %dx.types.CBufRet.f32 %4205, 3
  %4215 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4216 = extractvalue %dx.types.CBufRet.f32 %4209, 3
  %4217 = fadd fast float %4214, %4190
  %4218 = fadd fast float %4215, %4191
  %4219 = fadd fast float %4216, %4192
  %4220 = fmul fast float %4217, %4206
  %4221 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4208, float %4220)  ; FMad(a,b,c)
  %4222 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4210, float %4221)  ; FMad(a,b,c)
  %4223 = fmul fast float %4217, %4211
  %4224 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4212, float %4223)  ; FMad(a,b,c)
  %4225 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4213, float %4224)  ; FMad(a,b,c)
  %4226 = fsub fast float %4222, %4214
  %4227 = fsub fast float %4225, %4215
  %4228 = fsub fast float %4226, %4194
  %4229 = fadd fast float %4228, %4202
  %4230 = fsub fast float %4227, %4195
  %4231 = fadd fast float %4230, %4202
  %4232 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4233 = fmul fast float %4229, %4232
  %4234 = fmul fast float %4231, %4232
  %4235 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4237 = fsub fast float 1.000000e+00, %4235
  %4238 = fsub fast float 1.000000e+00, %4236
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4237, float %4238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = fcmp fast ugt float %4240, 0.000000e+00
  br i1 %4241, label %4242, label %4545

; <label>:4242                                    ; preds = %4204
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4245 = fmul fast float %4244, %4240
  %4246 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4247 = fadd fast float %4246, %4245
  %4248 = extractvalue %dx.types.CBufRet.f32 %4209, 2
  %4249 = fadd fast float %4247, %4216
  %4250 = fmul fast float %4222, %4210
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4213, float %4250)  ; FMad(a,b,c)
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4249, float %4248, float %4251)  ; FMad(a,b,c)
  %4253 = fsub fast float %4252, %4216
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 2
  %4256 = fsub fast float %4253, %4255
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4237, float %4238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4237, float %4238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.ResRet.f32 %4261, 1
  %4264 = extractvalue %dx.types.ResRet.f32 %4261, 2
  %4265 = fadd fast float %4262, %4258
  %4266 = fmul fast float %4265, 0x3F847AE140000000
  %4267 = fadd fast float %4263, %4259
  %4268 = fmul fast float %4267, 0x3F847AE140000000
  %4269 = fadd fast float %4264, %4260
  %4270 = fmul fast float %4269, 0x3F847AE140000000
  br label %4545

; <label>:4271                                    ; preds = %4131
  %4272 = and i32 %149, 1
  %4273 = icmp eq i32 %4272, 0
  br i1 %4273, label %4545, label %4274

; <label>:4274                                    ; preds = %4271
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4282 = extractvalue %dx.types.CBufRet.f32 %4277, 1
  %4283 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4284 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4285 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4286 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4287 = fadd fast float %4284, %4190
  %4288 = fadd fast float %4285, %4191
  %4289 = fadd fast float %4286, %4192
  %4290 = fmul fast float %4287, %4276
  %4291 = call float @dx.op.tertiary.f32(i32 46, float %4288, float %4278, float %4290)  ; FMad(a,b,c)
  %4292 = call float @dx.op.tertiary.f32(i32 46, float %4289, float %4280, float %4291)  ; FMad(a,b,c)
  %4293 = fmul fast float %4287, %4281
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4288, float %4282, float %4293)  ; FMad(a,b,c)
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4289, float %4283, float %4294)  ; FMad(a,b,c)
  %4296 = fsub fast float %4292, %4284
  %4297 = fsub fast float %4295, %4285
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4302 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.i32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.i32 %4305, 1
  %4308 = udiv i32 %4307, %4306
  %4309 = fsub fast float %4296, %4299
  %4310 = fsub fast float %4297, %4300
  %4311 = call float @dx.op.binary.f32(i32 35, float %4309, float 0.000000e+00)  ; FMax(a,b)
  %4312 = call float @dx.op.binary.f32(i32 35, float %4310, float 0.000000e+00)  ; FMax(a,b)
  %4313 = call float @dx.op.binary.f32(i32 36, float %4311, float %4301)  ; FMin(a,b)
  %4314 = call float @dx.op.binary.f32(i32 36, float %4312, float %4302)  ; FMin(a,b)
  %4315 = add i32 %4306, -1
  %4316 = add i32 %4308, -1
  %4317 = fmul fast float %4313, %4304
  %4318 = fmul fast float %4314, %4304
  %4319 = fptoui float %4317 to i32
  %4320 = fptoui float %4318 to i32
  %4321 = call i32 @dx.op.binary.i32(i32 40, i32 %4319, i32 %4315)  ; UMin(a,b)
  %4322 = call i32 @dx.op.binary.i32(i32 40, i32 %4320, i32 %4316)  ; UMin(a,b)
  %4323 = mul i32 %4322, %4306
  %4324 = add i32 %4323, %4321
  %4325 = shl i32 %4324, 2
  %4326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4325, i32 undef)  ; BufferLoad(srv,index,wot)
  %4327 = extractvalue %dx.types.ResRet.i32 %4326, 0
  %4328 = icmp eq i32 %4327, -1
  br i1 %4328, label %4545, label %4329

; <label>:4329                                    ; preds = %4274
  %4330 = mul i32 %4327, 148
  %4331 = add i32 %4330, 4
  %4332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = add i32 %4330, 8
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = add i32 %4330, 36
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4330, 60
  %4341 = add i32 %4330, 92
  %4342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.i32 %4342, 0
  %4344 = add i32 %4330, 116
  %4345 = fsub fast float %4296, %4333
  %4346 = fsub fast float %4297, %4336
  %4347 = fmul fast float %4304, %4345
  %4348 = fmul fast float %4304, %4346
  %4349 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4351 = fsub fast float 1.000000e+00, %4350
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4354 = call float @dx.op.unary.f32(i32 83, float %4349)  ; DerivCoarseX(value)
  %4355 = call float @dx.op.unary.f32(i32 83, float %4351)  ; DerivCoarseX(value)
  %4356 = call float @dx.op.unary.f32(i32 84, float %4349)  ; DerivCoarseY(value)
  %4357 = call float @dx.op.unary.f32(i32 84, float %4351)  ; DerivCoarseY(value)
  %4358 = fmul fast float %4354, %4353
  %4359 = fmul fast float %4355, %4353
  %4360 = fmul fast float %4356, %4353
  %4361 = fmul fast float %4357, %4353
  %4362 = call float @dx.op.dot2.f32(i32 54, float %4360, float %4361, float %4360, float %4361)  ; Dot2(ax,ay,bx,by)
  %4363 = call float @dx.op.dot2.f32(i32 54, float %4358, float %4359, float %4358, float %4359)  ; Dot2(ax,ay,bx,by)
  %4364 = call float @dx.op.binary.f32(i32 35, float %4363, float %4362)  ; FMax(a,b)
  %4365 = call float @dx.op.unary.f32(i32 23, float %4364)  ; Log(value)
  %4366 = fmul fast float %4365, 5.000000e-01
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4369 = fadd fast float %4368, %4366
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4373 = fadd fast float %4372, %4370
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = fadd fast float %4373, %4375
  %4377 = add i32 %4343, 0
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4378, i32 0)  ; GetDimensions(handle,mipLevel)
  %4380 = extractvalue %dx.types.Dimensions %4379, 0
  %4381 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4380)  ; FirstbitLo(value)
  %4382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.i32 %4382, 1
  %4384 = sub nsw i32 %4383, %4381
  %4385 = sitofp i32 %4384 to float
  %4386 = fsub fast float %4376, %4385
  %4387 = call float @dx.op.binary.f32(i32 35, float %4386, float 0.000000e+00)  ; FMax(a,b)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4378, %dx.types.Handle %27, float %4349, float %4351, float %4339, float undef, i32 0, i32 0, i32 undef, float %4387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = fcmp ule float %4389, 0x3FE0101020000000
  %4391 = extractvalue %dx.types.CBufRet.i32 %4382, 0
  %4392 = and i32 %4391, 128
  %4393 = icmp ne i32 %4392, 0
  %4394 = and i1 %4390, %4393
  br i1 %4394, label %4545, label %4395

; <label>:4395                                    ; preds = %4329
  %4396 = add i32 %4330, 20
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = add i32 %4330, 24
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = add i32 %4330, 40
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = add i32 %4330, 96
  %4406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.i32 %4406, 0
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 2
  %4410 = fmul fast float %4409, %4349
  %4411 = fmul fast float %4409, %4351
  %4412 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4413 = fadd fast float %4410, %4412
  %4414 = fadd fast float %4411, %4412
  %4415 = add i32 %4407, 0
  %4416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4415, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4417 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4416, i32 0)  ; GetDimensions(handle,mipLevel)
  %4418 = extractvalue %dx.types.Dimensions %4417, 0
  %4419 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4418)  ; FirstbitLo(value)
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 1
  %4422 = sub nsw i32 %4421, %4419
  %4423 = sitofp i32 %4422 to float
  %4424 = fsub fast float %4373, %4423
  %4425 = call float @dx.op.binary.f32(i32 35, float %4424, float 0.000000e+00)  ; FMax(a,b)
  %4426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4416, %dx.types.Handle %27, float %4413, float %4414, float %4404, float undef, i32 0, i32 0, i32 undef, float %4425)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = fmul fast float %4427, %4398
  %4429 = fadd fast float %4428, %4401
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.CBufRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.CBufRet.f32 %4430, 2
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4438 = extractvalue %dx.types.CBufRet.f32 %4430, 3
  %4439 = fadd fast float %4435, %4296
  %4440 = fadd fast float %4437, %4297
  %4441 = fadd fast float %4429, %4438
  %4442 = fmul fast float %4439, %4431
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %4440, float %4432, float %4442)  ; FMad(a,b,c)
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4441, float %4433, float %4443)  ; FMad(a,b,c)
  %4445 = fsub fast float %4444, %4438
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 2
  %4448 = fsub fast float %4445, %4447
  %4449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.i32 %4449, 0
  %4451 = call i32 @dx.op.binary.i32(i32 40, i32 %4327, i32 %4450)  ; UMin(a,b)
  %4452 = mul i32 %4451, 36
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = add i32 %4452, 4
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4458 = fmul fast float %4457, %4349
  %4459 = fmul fast float %4457, %4351
  %4460 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4461 = fadd fast float %4458, %4460
  %4462 = fadd fast float %4459, %4460
  %4463 = icmp eq i32 %4454, 0
  br i1 %4463, label %4532, label %4464

; <label>:4464                                    ; preds = %4395
  br label %4465

; <label>:4465                                    ; preds = %4522, %4464
  %4466 = phi float [ %4523, %4522 ], [ 0.000000e+00, %4464 ]
  %4467 = phi float [ %4524, %4522 ], [ 0.000000e+00, %4464 ]
  %4468 = phi float [ %4525, %4522 ], [ 0.000000e+00, %4464 ]
  %4469 = phi float [ %4526, %4522 ], [ 0.000000e+00, %4464 ]
  %4470 = phi float [ %4527, %4522 ], [ 0.000000e+00, %4464 ]
  %4471 = phi float [ %4528, %4522 ], [ 0.000000e+00, %4464 ]
  %4472 = phi i32 [ %4529, %4522 ], [ 0, %4464 ]
  %4473 = shl i32 %4472, 2
  %4474 = add i32 %4340, %4473
  %4475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 0
  %4477 = add i32 %4344, %4473
  %4478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.i32 %4478, 0
  %4480 = add i32 %4479, 0
  %4481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4480, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4482 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4481, i32 0)  ; GetDimensions(handle,mipLevel)
  %4483 = extractvalue %dx.types.Dimensions %4482, 0
  %4484 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4483)  ; FirstbitLo(value)
  %4485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.i32 %4485, 1
  %4487 = sub nsw i32 %4486, %4484
  %4488 = sitofp i32 %4487 to float
  %4489 = fsub fast float %4373, %4488
  %4490 = call float @dx.op.binary.f32(i32 35, float %4489, float 0.000000e+00)  ; FMax(a,b)
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4481, %dx.types.Handle %27, float %4461, float %4462, float %4476, float undef, i32 0, i32 0, i32 undef, float %4490)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = fcmp fast ogt float %4492, 0.000000e+00
  br i1 %4493, label %4494, label %4522

; <label>:4494                                    ; preds = %4465
  %4495 = add i32 %4455, %4473
  %4496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4495, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.i32 %4496, 0
  %4498 = and i32 %4497, 32767
  %4499 = mul nuw nsw i32 %4498, 928
  %4500 = add nuw nsw i32 %4499, 48
  %4501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.ResRet.f32 %4501, 1
  %4504 = extractvalue %dx.types.ResRet.f32 %4501, 2
  %4505 = add nuw nsw i32 %4499, 60
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = fmul fast float %4502, %4492
  %4511 = fmul fast float %4503, %4492
  %4512 = fmul fast float %4504, %4492
  %4513 = fadd fast float %4510, %4466
  %4514 = fadd fast float %4511, %4467
  %4515 = fadd fast float %4512, %4468
  %4516 = fmul fast float %4507, %4492
  %4517 = fmul fast float %4508, %4492
  %4518 = fmul fast float %4509, %4492
  %4519 = fadd fast float %4516, %4469
  %4520 = fadd fast float %4517, %4470
  %4521 = fadd fast float %4518, %4471
  br label %4522

; <label>:4522                                    ; preds = %4494, %4465
  %4523 = phi float [ %4513, %4494 ], [ %4466, %4465 ]
  %4524 = phi float [ %4514, %4494 ], [ %4467, %4465 ]
  %4525 = phi float [ %4515, %4494 ], [ %4468, %4465 ]
  %4526 = phi float [ %4519, %4494 ], [ %4469, %4465 ]
  %4527 = phi float [ %4520, %4494 ], [ %4470, %4465 ]
  %4528 = phi float [ %4521, %4494 ], [ %4471, %4465 ]
  %4529 = add nuw i32 %4472, 1
  %4530 = icmp eq i32 %4529, %4454
  br i1 %4530, label %4531, label %4465

; <label>:4531                                    ; preds = %4522
  br label %4532

; <label>:4532                                    ; preds = %4531, %4395
  %4533 = phi float [ 0.000000e+00, %4395 ], [ %4523, %4531 ]
  %4534 = phi float [ 0.000000e+00, %4395 ], [ %4524, %4531 ]
  %4535 = phi float [ 0.000000e+00, %4395 ], [ %4525, %4531 ]
  %4536 = phi float [ 0.000000e+00, %4395 ], [ %4526, %4531 ]
  %4537 = phi float [ 0.000000e+00, %4395 ], [ %4527, %4531 ]
  %4538 = phi float [ 0.000000e+00, %4395 ], [ %4528, %4531 ]
  %4539 = fadd fast float %4536, %4533
  %4540 = fmul fast float %4539, 0x3F847AE140000000
  %4541 = fadd fast float %4537, %4534
  %4542 = fmul fast float %4541, 0x3F847AE140000000
  %4543 = fadd fast float %4538, %4535
  %4544 = fmul fast float %4543, 0x3F847AE140000000
  br label %4545

; <label>:4545                                    ; preds = %4532, %4329, %4274, %4271, %4242, %4204
  %4546 = phi float [ %4256, %4242 ], [ -1.310720e+05, %4204 ], [ %4448, %4532 ], [ -1.310720e+05, %4274 ], [ -1.310720e+05, %4329 ], [ -1.310720e+05, %4271 ]
  %4547 = phi float [ %4266, %4242 ], [ 0.000000e+00, %4204 ], [ %4540, %4532 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4329 ], [ 0.000000e+00, %4271 ]
  %4548 = phi float [ %4268, %4242 ], [ 0.000000e+00, %4204 ], [ %4542, %4532 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4329 ], [ 0.000000e+00, %4271 ]
  %4549 = phi float [ %4270, %4242 ], [ 0.000000e+00, %4204 ], [ %4544, %4532 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4329 ], [ 0.000000e+00, %4271 ]
  %4550 = phi i1 [ true, %4242 ], [ false, %4204 ], [ true, %4532 ], [ false, %4274 ], [ false, %4329 ], [ false, %4271 ]
  %4551 = and i32 %149, 3
  %4552 = icmp eq i32 %4551, 1
  %4553 = select i1 %4552, float 1.000000e+00, float 0.000000e+00
  %4554 = fsub fast float %4546, %133
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = select i1 %4550, float %4555, float 1.000000e+00
  %4557 = fmul fast float %4556, %4553
  %4558 = icmp eq i32 %4551, 3
  %4559 = select i1 %4558, float 1.000000e+00, float %4557
  %4560 = call float @dx.op.binary.f32(i32 35, float %4147, float %4559)  ; FMax(a,b)
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fcmp fast une float %4561, 0.000000e+00
  %4563 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4564 = call float @dx.op.unary.f32(i32 25, float %4563)  ; Rsqrt(value)
  br i1 %4562, label %4572, label %4565

; <label>:4565                                    ; preds = %4545
  %4566 = fmul fast float %4564, %131
  %4567 = fmul fast float %4564, %132
  %4568 = fmul fast float %4564, %133
  %4569 = fsub fast float -0.000000e+00, %4566
  %4570 = fsub fast float -0.000000e+00, %4567
  %4571 = fsub fast float -0.000000e+00, %4568
  br label %4740

; <label>:4572                                    ; preds = %4545
  %4573 = fmul fast float %131, %4564
  %4574 = fsub fast float -0.000000e+00, %4573
  %4575 = fmul fast float %132, %4564
  %4576 = fsub fast float -0.000000e+00, %4575
  %4577 = fmul fast float %133, %4564
  %4578 = fsub fast float -0.000000e+00, %4577
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4576, float %4578, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = fmul fast float %4561, 2.500000e+00
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fmul fast float %4561, 0x4013FFFFE0000000
  %4583 = fadd fast float %4582, 0xBFFFFFFFE0000000
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fmul fast float %4561, 0x4004000020000000
  %4586 = fadd fast float %4585, 0xBFF8000040000000
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4589 = fmul fast float %4150, 1.000000e+01
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4590, 2.000000e+00
  %4592 = fsub fast float 3.000000e+00, %4591
  %4593 = fmul fast float %4590, %4590
  %4594 = fmul fast float %4593, %4592
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = fsub fast float 0x3FE3333340000000, %4171
  %4597 = fmul fast float %4596, 0x400AAAAAA0000000
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = fmul fast float %4595, %4598
  %4600 = fmul fast float %4183, 0x3FEA2B8620000000
  %4601 = fmul fast float %4184, 0x3FEA2B8620000000
  %4602 = fmul fast float %4185, 0x3FEA2B8620000000
  %4603 = fadd fast float %4600, 0x3FC81DFBA0000000
  %4604 = fmul fast float %4603, %4183
  %4605 = fadd fast float %4604, 0x3F910E6020000000
  %4606 = fadd fast float %4601, 0x3FC81DFBA0000000
  %4607 = fmul fast float %4606, %4184
  %4608 = fadd fast float %4607, 0x3F910E6020000000
  %4609 = fadd fast float %4602, 0x3FC81DFBA0000000
  %4610 = fmul fast float %4609, %4185
  %4611 = fadd fast float %4610, 0x3F910E6020000000
  %4612 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4613 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4615 = fsub fast float %4612, %4183
  %4616 = fsub fast float %4613, %4184
  %4617 = fsub fast float %4614, %4185
  %4618 = fmul fast float %4615, %4588
  %4619 = fmul fast float %4618, %4599
  %4620 = fmul fast float %4616, %4588
  %4621 = fmul fast float %4620, %4599
  %4622 = fmul fast float %4617, %4588
  %4623 = fmul fast float %4622, %4599
  %4624 = fadd fast float %4619, %4183
  %4625 = fadd fast float %4621, %4184
  %4626 = fadd fast float %4623, %4185
  %4627 = fmul fast float %4144, %4144
  %4628 = fmul fast float %4627, %4627
  %4629 = fadd fast float %4584, 1.000000e+00
  %4630 = fsub fast float %4629, %4599
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fsub fast float 1.000000e+00, %4628
  %4635 = call float @dx.op.binary.f32(i32 36, float %4631, float %4634)  ; FMin(a,b)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4637 = call float @dx.op.binary.f32(i32 35, float %4635, float %4636)  ; FMax(a,b)
  %4638 = fadd fast float %4633, 0xBFE4CCCCC0000000
  %4639 = fmul fast float %4638, 0x4006DB6DA0000000
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4640, 2.000000e+00
  %4642 = fsub fast float 3.000000e+00, %4641
  %4643 = bitcast float %4168 to i32
  %4644 = ashr i32 %4643, 1
  %4645 = add nsw i32 %4644, 532487669
  %4646 = bitcast i32 %4645 to float
  %4647 = fsub fast float 1.000000e+00, %4646
  %4648 = bitcast float %4647 to i32
  %4649 = sub nsw i32 2129859010, %4648
  %4650 = bitcast i32 %4649 to float
  %4651 = fmul fast float %4650, 2.000000e+00
  %4652 = bitcast float %4169 to i32
  %4653 = ashr i32 %4652, 1
  %4654 = add nsw i32 %4653, 532487669
  %4655 = bitcast i32 %4654 to float
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = bitcast float %4656 to i32
  %4658 = sub nsw i32 2129859010, %4657
  %4659 = bitcast i32 %4658 to float
  %4660 = fmul fast float %4659, 2.000000e+00
  %4661 = bitcast float %4170 to i32
  %4662 = ashr i32 %4661, 1
  %4663 = add nsw i32 %4662, 532487669
  %4664 = bitcast i32 %4663 to float
  %4665 = fsub fast float 1.000000e+00, %4664
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, 2.000000e+00
  %4670 = fsub fast float 0x4002A9FBE0000000, %4651
  %4671 = fadd fast float %4651, 0x3FD54FDF00000000
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, %4670
  %4676 = fmul fast float %4675, %4675
  %4677 = fsub fast float 0x4002A9FBE0000000, %4660
  %4678 = fadd fast float %4660, 0x3FD54FDF00000000
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4681, %4677
  %4683 = fmul fast float %4682, %4682
  %4684 = fsub fast float 0x4002A9FBE0000000, %4669
  %4685 = fadd fast float %4669, 0x3FD54FDF00000000
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4688, %4684
  %4690 = fmul fast float %4689, %4689
  %4691 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4676)  ; FMax(a,b)
  %4692 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4683)  ; FMax(a,b)
  %4693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4690)  ; FMax(a,b)
  %4694 = fsub fast float 1.000000e+00, %4579
  %4695 = fadd fast float %4694, %4595
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fsub fast float 1.000000e+00, %4559
  %4698 = fmul fast float %4637, %4697
  %4699 = fmul fast float %4640, %4640
  %4700 = fmul fast float %4699, %4698
  %4701 = fmul fast float %4700, %4642
  %4702 = fmul fast float %4697, 0xBFE99999A0000000
  %4703 = fmul fast float %4702, %4588
  %4704 = fmul fast float %4703, %4599
  %4705 = fadd fast float %4704, 1.000000e+00
  %4706 = fadd fast float %4171, -1.000000e+00
  %4707 = fmul fast float %4705, %4706
  %4708 = fadd fast float %4707, 1.000000e+00
  %4709 = fsub fast float %4691, %4168
  %4710 = fsub fast float %4692, %4169
  %4711 = fsub fast float %4693, %4170
  %4712 = fmul fast float %4701, %4709
  %4713 = fmul fast float %4701, %4710
  %4714 = fmul fast float %4701, %4711
  %4715 = fadd fast float %4712, %4168
  %4716 = fadd fast float %4713, %4169
  %4717 = fadd fast float %4714, %4170
  %4718 = fsub fast float %75, %4132
  %4719 = fsub fast float %76, %4133
  %4720 = fsub fast float %77, %4134
  %4721 = fmul fast float %4701, %4718
  %4722 = fmul fast float %4701, %4719
  %4723 = fmul fast float %4701, %4720
  %4724 = fadd fast float %4721, %4132
  %4725 = fadd fast float %4722, %4133
  %4726 = fadd fast float %4723, %4134
  %4727 = fmul fast float %4701, %4696
  %4728 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = fmul fast float %4727, %4729
  %4731 = fadd fast float %4730, %4728
  %4732 = fsub fast float 1.000000e+00, %4144
  %4733 = fmul fast float %4701, %4732
  %4734 = fadd fast float %4733, %4144
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 25, float %4735)  ; Rsqrt(value)
  %4737 = fmul fast float %4724, %4736
  %4738 = fmul fast float %4725, %4736
  %4739 = fmul fast float %4726, %4736
  br label %4740

; <label>:4740                                    ; preds = %4572, %4565
  %4741 = phi float [ %4571, %4565 ], [ %4578, %4572 ]
  %4742 = phi float [ %4570, %4565 ], [ %4576, %4572 ]
  %4743 = phi float [ %4569, %4565 ], [ %4574, %4572 ]
  %4744 = phi float [ %4568, %4565 ], [ %4577, %4572 ]
  %4745 = phi float [ %4567, %4565 ], [ %4575, %4572 ]
  %4746 = phi float [ %4566, %4565 ], [ %4573, %4572 ]
  %4747 = phi float [ %4168, %4565 ], [ %4715, %4572 ]
  %4748 = phi float [ %4169, %4565 ], [ %4716, %4572 ]
  %4749 = phi float [ %4170, %4565 ], [ %4717, %4572 ]
  %4750 = phi float [ %4183, %4565 ], [ %4624, %4572 ]
  %4751 = phi float [ %4184, %4565 ], [ %4625, %4572 ]
  %4752 = phi float [ %4185, %4565 ], [ %4626, %4572 ]
  %4753 = phi float [ %4132, %4565 ], [ %4737, %4572 ]
  %4754 = phi float [ %4133, %4565 ], [ %4738, %4572 ]
  %4755 = phi float [ %4134, %4565 ], [ %4739, %4572 ]
  %4756 = phi float [ %4171, %4565 ], [ %4731, %4572 ]
  %4757 = phi float [ %4144, %4565 ], [ %4734, %4572 ]
  %4758 = select i1 %173, float 0.000000e+00, float %4749
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %4743, float %4742, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4745, float %4744, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %4762 = fmul fast float %4761, 2.000000e+00
  %4763 = fmul fast float %4762, %4753
  %4764 = fmul fast float %4762, %4754
  %4765 = fmul fast float %4762, %4755
  %4766 = fsub fast float %4746, %4763
  %4767 = fsub fast float %4745, %4764
  %4768 = fsub fast float %4744, %4765
  %4769 = call float @dx.op.binary.f32(i32 36, float %4757, float 1.000000e+00)  ; FMin(a,b)
  %4770 = fsub fast float 1.000000e+00, %4757
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fsub fast float 1.000000e+00, %45
  %4775 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4775, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4777 = fdiv fast float %4774, %4776
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, 5.000000e-01
  %4781 = fadd fast float %4780, 5.000000e-01
  %4782 = fmul fast float %4781, %45
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fmul fast float %4784, %4777
  %4786 = fadd fast float %4782, %4785
  %4787 = fsub fast float 5.000000e-01, %4780
  %4788 = fmul fast float %4787, %4750
  %4789 = fmul fast float %4787, %4751
  %4790 = fmul fast float %4787, %4752
  %4791 = fadd fast float %4786, %4788
  %4792 = fadd fast float %4786, %4789
  %4793 = fadd fast float %4786, %4790
  %4794 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4767, float %4768, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4795, 5.000000e-01
  %4797 = fadd fast float %4796, 5.000000e-01
  %4798 = fmul fast float %4797, %45
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4766, float %4767, float %4768, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, %4777
  %4802 = fadd fast float %4798, %4801
  %4803 = fsub fast float 5.000000e-01, %4796
  %4804 = fmul fast float %4803, %4750
  %4805 = fmul fast float %4803, %4751
  %4806 = fmul fast float %4803, %4752
  %4807 = fadd fast float %4802, %4804
  %4808 = fadd fast float %4802, %4805
  %4809 = fadd fast float %4802, %4806
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = call float @dx.op.binary.f32(i32 36, float %4750, float %4811)  ; FMin(a,b)
  %4813 = fsub fast float 1.000000e+00, %4769
  %4814 = fmul fast float %4812, %4813
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = bitcast float %4815 to i32
  %4817 = sub nsw i32 2129859010, %4816
  %4818 = bitcast i32 %4817 to float
  %4819 = call float @dx.op.binary.f32(i32 36, float %4751, float %4811)  ; FMin(a,b)
  %4820 = fmul fast float %4819, %4813
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = bitcast float %4821 to i32
  %4823 = sub nsw i32 2129859010, %4822
  %4824 = bitcast i32 %4823 to float
  %4825 = call float @dx.op.binary.f32(i32 36, float %4752, float %4811)  ; FMin(a,b)
  %4826 = fmul fast float %4825, %4813
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = bitcast float %4827 to i32
  %4829 = sub nsw i32 2129859010, %4828
  %4830 = bitcast i32 %4829 to float
  %4831 = fmul fast float %4769, %46
  %4832 = fmul fast float %4831, %4791
  %4833 = fmul fast float %4832, %4818
  %4834 = fmul fast float %4769, %47
  %4835 = fmul fast float %4834, %4792
  %4836 = fmul fast float %4835, %4824
  %4837 = fmul fast float %4769, %48
  %4838 = fmul fast float %4837, %4793
  %4839 = fmul fast float %4838, %4830
  %4840 = call float @dx.op.binary.f32(i32 36, float %4747, float %4811)  ; FMin(a,b)
  %4841 = fmul fast float %4840, %4813
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = call float @dx.op.binary.f32(i32 36, float %4748, float %4811)  ; FMin(a,b)
  %4847 = fmul fast float %4846, %4813
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = call float @dx.op.binary.f32(i32 36, float %4758, float %4811)  ; FMin(a,b)
  %4853 = fmul fast float %4852, %4813
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = bitcast float %4854 to i32
  %4856 = sub nsw i32 2129859010, %4855
  %4857 = bitcast i32 %4856 to float
  %4858 = fmul fast float %4831, %4807
  %4859 = fmul fast float %4858, %4845
  %4860 = fmul fast float %4834, %4808
  %4861 = fmul fast float %4860, %4851
  %4862 = fmul fast float %4837, %4809
  %4863 = fmul fast float %4862, %4857
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4836, float %4839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = select i1 %173, float 0.000000e+00, float %4833
  %4866 = select i1 %173, float %4864, float %4836
  %4867 = select i1 %173, float 0.000000e+00, float %4839
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4861, float %4863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = select i1 %173, float 0.000000e+00, float %4859
  %4870 = select i1 %173, float %4868, float %4861
  %4871 = select i1 %173, float 0.000000e+00, float %4863
  %4872 = fmul fast float %4760, 9.843750e-01
  %4873 = fmul fast float %4756, 9.843750e-01
  %4874 = fadd fast float %4872, 7.812500e-03
  %4875 = fadd fast float %4873, 7.812500e-03
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4874, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 2
  %4878 = extractvalue %dx.types.ResRet.f32 %4876, 3
  %4879 = fmul fast float %4877, %4747
  %4880 = fmul fast float %4877, %4748
  %4881 = fmul fast float %4877, %4758
  %4882 = fadd fast float %4879, %4878
  %4883 = fadd fast float %4880, %4878
  %4884 = fadd fast float %4881, %4878
  %4885 = fcmp fast ogt float %4145, 0.000000e+00
  br i1 %4885, label %4886, label %4912

; <label>:4886                                    ; preds = %4740
  %4887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4145, float %4760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.ResRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.ResRet.f32 %4887, 2
  %4891 = fadd fast float %4888, -5.000000e-01
  %4892 = fadd fast float %4889, -5.000000e-01
  %4893 = fadd fast float %4890, -5.000000e-01
  %4894 = fsub fast float 1.000000e+00, %4747
  %4895 = fsub fast float 1.000000e+00, %4748
  %4896 = fsub fast float 1.000000e+00, %4758
  %4897 = fmul fast float %4747, 4.000000e+00
  %4898 = fmul fast float %4897, %4894
  %4899 = fmul fast float %4898, %4891
  %4900 = fmul fast float %4748, 4.000000e+00
  %4901 = fmul fast float %4900, %4895
  %4902 = fmul fast float %4901, %4892
  %4903 = fmul fast float %4758, 4.000000e+00
  %4904 = fmul fast float %4903, %4896
  %4905 = fmul fast float %4904, %4893
  %4906 = fadd fast float %4899, %4882
  %4907 = fadd fast float %4902, %4883
  %4908 = fadd fast float %4905, %4884
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  br label %4912

; <label>:4912                                    ; preds = %4886, %4740
  %4913 = phi float [ %4909, %4886 ], [ %4882, %4740 ]
  %4914 = phi float [ %4910, %4886 ], [ %4883, %4740 ]
  %4915 = phi float [ %4911, %4886 ], [ %4884, %4740 ]
  %4916 = call float @dx.op.binary.f32(i32 35, float %4914, float %4915)  ; FMax(a,b)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4913, float %4916)  ; FMax(a,b)
  %4918 = fsub fast float 1.000000e+00, %4917
  %4919 = fmul fast float %4918, %4865
  %4920 = fmul fast float %4918, %4866
  %4921 = fmul fast float %4918, %4867
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %4752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = fcmp fast ogt float %4922, 0x3E7FF19E20000000
  %4924 = fdiv fast float 1.000000e+00, %4922
  %4925 = select i1 %4923, float %4924, float 0.000000e+00
  %4926 = fmul fast float %4925, %4750
  %4927 = fmul fast float %4925, %4751
  %4928 = fmul fast float %4925, %4752
  %4929 = fadd fast float %4926, -1.000000e+00
  %4930 = fadd fast float %4927, -1.000000e+00
  %4931 = fadd fast float %4928, -1.000000e+00
  %4932 = fmul fast float %4929, 5.000000e-01
  %4933 = fmul fast float %4930, 5.000000e-01
  %4934 = fmul fast float %4931, 5.000000e-01
  %4935 = fadd fast float %4932, 1.000000e+00
  %4936 = fadd fast float %4933, 1.000000e+00
  %4937 = fadd fast float %4934, 1.000000e+00
  %4938 = fmul fast float %4913, %4869
  %4939 = fmul fast float %4914, %4870
  %4940 = fmul fast float %4915, %4871
  %4941 = fsub fast float 1.000000e+00, %4760
  %4942 = bitcast float %4941 to i32
  %4943 = sitofp i32 %4942 to float
  %4944 = fmul fast float %4943, 5.000000e+00
  %4945 = fadd fast float %4944, 0xC1EFBF8940000000
  %4946 = fptosi float %4945 to i32
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4146
  %4949 = fmul fast float %4865, %4948
  %4950 = fmul fast float %4949, %4918
  %4951 = fmul fast float %4950, %4935
  %4952 = fmul fast float %4866, %4948
  %4953 = fmul fast float %4952, %4918
  %4954 = fmul fast float %4953, %4936
  %4955 = fmul fast float %4867, %4948
  %4956 = fmul fast float %4955, %4918
  %4957 = fmul fast float %4956, %4937
  %4958 = fmul fast float %4919, %4142
  %4959 = fmul fast float %4920, %4142
  %4960 = fmul fast float %4921, %4142
  %4961 = fadd fast float %4938, %4138
  %4962 = fadd fast float %4961, %4951
  %4963 = fmul fast float %4962, %4142
  %4964 = fadd fast float %4939, %4139
  %4965 = fadd fast float %4964, %4954
  %4966 = fmul fast float %4965, %4142
  %4967 = fadd fast float %4940, %4140
  %4968 = fadd fast float %4967, %4957
  %4969 = fmul fast float %4968, %4142
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 3
  %4972 = fcmp fast oeq float %4971, 0.000000e+00
  br i1 %4972, label %5207, label %4973

; <label>:4973                                    ; preds = %4912
  %4974 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4975 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4976 = extractvalue %dx.types.CBufRet.f32 %4970, 2
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4979 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4980 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4981 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %4985 = call float @dx.op.dot3.f32(i32 55, float %4979, float %4980, float %4981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = select i1 %173, float %4983, float %4979
  %4987 = select i1 %173, float %4985, float %4980
  %4988 = select i1 %173, float %4984, float %4981
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 1
  %4991 = fcmp fast une float %4990, 0.000000e+00
  br i1 %4991, label %4992, label %5009

; <label>:4992                                    ; preds = %4973
  %4993 = fptoui float %68 to i32
  %4994 = fptoui float %69 to i32
  %4995 = lshr i32 %4993, 4
  %4996 = lshr i32 %4994, 4
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = fptoui float %4998 to i32
  %5000 = add i32 %4999, 15
  %5001 = lshr i32 %5000, 4
  %5002 = mul i32 %5001, %4996
  %5003 = add i32 %5002, %4995
  %5004 = shl i32 %5003, 3
  %5005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5004, i32 undef)  ; BufferLoad(srv,index,wot)
  %5006 = extractvalue %dx.types.ResRet.i32 %5005, 0
  %5007 = and i32 %5006, -268435456
  %5008 = icmp eq i32 %5007, -1342177280
  br i1 %5008, label %5019, label %5009

; <label>:5009                                    ; preds = %4992, %4973
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5013 = fmul fast float %5011, %68
  %5014 = fmul fast float %5012, %69
  %5015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5016 = extractvalue %dx.types.ResRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.ResRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.ResRet.f32 %5015, 2
  br label %5019

; <label>:5019                                    ; preds = %5009, %4992
  %5020 = phi float [ %5016, %5009 ], [ 0.000000e+00, %4992 ]
  %5021 = phi float [ %5017, %5009 ], [ 0.000000e+00, %4992 ]
  %5022 = phi float [ %5018, %5009 ], [ 0.000000e+00, %4992 ]
  %5023 = call float @dx.op.binary.f32(i32 36, float %5021, float %5022)  ; FMin(a,b)
  %5024 = call float @dx.op.binary.f32(i32 36, float %5020, float %5023)  ; FMin(a,b)
  %5025 = fcmp fast ogt float %5024, 0.000000e+00
  br i1 %5025, label %5026, label %5207, !dx.controlflow.hints !72

; <label>:5026                                    ; preds = %5019
  %5027 = fmul fast float %5020, %4986
  %5028 = fmul fast float %5021, %4987
  %5029 = fmul fast float %5022, %4988
  %5030 = fsub fast float %4974, %4746
  %5031 = fsub fast float %4975, %4745
  %5032 = fsub fast float %4976, %4744
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 25, float %5033)  ; Rsqrt(value)
  %5035 = fmul fast float %5034, %5030
  %5036 = fmul fast float %5034, %5031
  %5037 = fmul fast float %5034, %5032
  %5038 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4742, float %4741, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5041 = fmul fast float %5040, %5040
  %5042 = fmul fast float %5041, %4773
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5043, %5040
  %5045 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = fmul fast float %5045, %5045
  %5047 = call float @dx.op.unary.f32(i32 6, float %5038)  ; FAbs(value)
  %5048 = fsub fast float 1.000000e+00, %4756
  %5049 = call float @dx.op.binary.f32(i32 35, float %5048, float 0x3F847AE140000000)  ; FMax(a,b)
  %5050 = fmul fast float %5049, %5049
  %5051 = fmul fast float %5050, %5050
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = fmul fast float %4760, %4760
  %5054 = fmul fast float %5053, %5052
  %5055 = fadd fast float %5054, %5051
  %5056 = bitcast float %5055 to i32
  %5057 = ashr i32 %5056, 1
  %5058 = add nsw i32 %5057, 532487669
  %5059 = bitcast i32 %5058 to float
  %5060 = fadd fast float %5059, %4760
  %5061 = fmul fast float %5051, %5046
  %5062 = fsub fast float 1.000000e+00, %5046
  %5063 = fadd fast float %5062, %5061
  %5064 = fmul fast float %5047, %5047
  %5065 = fmul fast float %5064, %5052
  %5066 = fadd fast float %5065, %5051
  %5067 = bitcast float %5066 to i32
  %5068 = ashr i32 %5067, 1
  %5069 = add nsw i32 %5068, 532487669
  %5070 = bitcast i32 %5069 to float
  %5071 = fadd fast float %5070, %5047
  %5072 = fmul fast float %5063, %5063
  %5073 = fmul fast float %5072, %5060
  %5074 = fmul fast float %5073, %5071
  %5075 = fdiv fast float 0x3FF0A00000000000, %5074
  %5076 = fmul fast float %5075, %5051
  %5077 = call float @dx.op.unary.f32(i32 6, float %5039)  ; FAbs(value)
  %5078 = fsub fast float 1.000000e+00, %5077
  %5079 = bitcast float %5078 to i32
  %5080 = sitofp i32 %5079 to float
  %5081 = fmul fast float %5080, 5.000000e+00
  %5082 = fadd fast float %5081, 0xC1EFBF8940000000
  %5083 = fptosi float %5082 to i32
  %5084 = bitcast i32 %5083 to float
  %5085 = fsub fast float 1.000000e+00, %4747
  %5086 = fsub fast float 1.000000e+00, %4748
  %5087 = fsub fast float 1.000000e+00, %4758
  %5088 = fmul fast float %5084, %5085
  %5089 = fmul fast float %5084, %5086
  %5090 = fmul fast float %5084, %5087
  %5091 = fadd fast float %5088, %4747
  %5092 = fadd fast float %5089, %4748
  %5093 = fadd fast float %5090, %4758
  br i1 %4885, label %5094, label %5117

; <label>:5094                                    ; preds = %5026
  %5095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4145, float %5077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = fadd fast float %5096, -5.000000e-01
  %5100 = fadd fast float %5097, -5.000000e-01
  %5101 = fadd fast float %5098, -5.000000e-01
  %5102 = fmul fast float %4747, 4.000000e+00
  %5103 = fmul fast float %5102, %5085
  %5104 = fmul fast float %5103, %5099
  %5105 = fmul fast float %4748, 4.000000e+00
  %5106 = fmul fast float %5105, %5086
  %5107 = fmul fast float %5106, %5100
  %5108 = fmul fast float %4758, 4.000000e+00
  %5109 = fmul fast float %5108, %5087
  %5110 = fmul fast float %5109, %5101
  %5111 = fadd fast float %5104, %5091
  %5112 = fadd fast float %5107, %5092
  %5113 = fadd fast float %5110, %5093
  %5114 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  br label %5117

; <label>:5117                                    ; preds = %5094, %5026
  %5118 = phi float [ %5114, %5094 ], [ %5091, %5026 ]
  %5119 = phi float [ %5115, %5094 ], [ %5092, %5026 ]
  %5120 = phi float [ %5116, %5094 ], [ %5093, %5026 ]
  %5121 = fmul fast float %5038, 9.843750e-01
  %5122 = fadd fast float %5121, 7.812500e-03
  %5123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5122, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 2
  %5125 = extractvalue %dx.types.ResRet.f32 %5123, 3
  %5126 = fmul fast float %5124, %4747
  %5127 = fmul fast float %5124, %4748
  %5128 = fmul fast float %5124, %4758
  %5129 = fadd fast float %5126, %5125
  %5130 = fadd fast float %5127, %5125
  %5131 = fadd fast float %5128, %5125
  br i1 %4885, label %5132, label %5155

; <label>:5132                                    ; preds = %5117
  %5133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4145, float %5038, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5134 = extractvalue %dx.types.ResRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.ResRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.ResRet.f32 %5133, 2
  %5137 = fadd fast float %5134, -5.000000e-01
  %5138 = fadd fast float %5135, -5.000000e-01
  %5139 = fadd fast float %5136, -5.000000e-01
  %5140 = fmul fast float %4747, 4.000000e+00
  %5141 = fmul fast float %5140, %5085
  %5142 = fmul fast float %5141, %5137
  %5143 = fmul fast float %4748, 4.000000e+00
  %5144 = fmul fast float %5143, %5086
  %5145 = fmul fast float %5144, %5138
  %5146 = fmul fast float %4758, 4.000000e+00
  %5147 = fmul fast float %5146, %5087
  %5148 = fmul fast float %5147, %5139
  %5149 = fadd fast float %5142, %5129
  %5150 = fadd fast float %5145, %5130
  %5151 = fadd fast float %5148, %5131
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  br label %5155

; <label>:5155                                    ; preds = %5132, %5117
  %5156 = phi float [ %5152, %5132 ], [ %5129, %5117 ]
  %5157 = phi float [ %5153, %5132 ], [ %5130, %5117 ]
  %5158 = phi float [ %5154, %5132 ], [ %5131, %5117 ]
  %5159 = call float @dx.op.binary.f32(i32 35, float %5157, float %5158)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5156, float %5159)  ; FMax(a,b)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %5118, %5076
  %5163 = fmul fast float %5119, %5076
  %5164 = fmul fast float %5120, %5076
  %5165 = fsub fast float 1.000000e+00, %5039
  %5166 = bitcast float %5165 to i32
  %5167 = sitofp i32 %5166 to float
  %5168 = fmul fast float %5167, 5.000000e+00
  %5169 = fadd fast float %5168, 0xC1EFBF8940000000
  %5170 = fptosi float %5169 to i32
  %5171 = bitcast i32 %5170 to float
  %5172 = fmul fast float %5171, %4146
  %5173 = fmul fast float %5161, %5172
  %5174 = fmul fast float %5173, %4935
  %5175 = fmul fast float %5173, %4936
  %5176 = fmul fast float %5173, %4937
  %5177 = fmul fast float %4978, %3581
  %5178 = fmul fast float %4978, %3582
  %5179 = fmul fast float %4978, %3583
  %5180 = fadd fast float %5162, %5177
  %5181 = fadd fast float %5180, %5174
  %5182 = fadd fast float %5163, %5178
  %5183 = fadd fast float %5182, %5175
  %5184 = fadd fast float %5164, %5179
  %5185 = fadd fast float %5184, %5176
  %5186 = fmul fast float %5044, %5027
  %5187 = fmul fast float %5186, %5161
  %5188 = fmul fast float %5044, %5028
  %5189 = fmul fast float %5188, %5161
  %5190 = fmul fast float %5044, %5029
  %5191 = fmul fast float %5190, %5161
  %5192 = fmul fast float %5186, %5181
  %5193 = fmul fast float %5188, %5183
  %5194 = fmul fast float %5190, %5185
  %5195 = fadd fast float %5187, %4919
  %5196 = fmul fast float %5195, %4142
  %5197 = fadd fast float %5189, %4920
  %5198 = fmul fast float %5197, %4142
  %5199 = fadd fast float %5191, %4921
  %5200 = fmul fast float %5199, %4142
  %5201 = fadd fast float %5192, %4962
  %5202 = fmul fast float %5201, %4142
  %5203 = fadd fast float %5193, %4965
  %5204 = fmul fast float %5203, %4142
  %5205 = fadd fast float %5194, %4968
  %5206 = fmul fast float %5205, %4142
  br label %5207

; <label>:5207                                    ; preds = %5155, %5019, %4912
  %5208 = phi float [ %4963, %4912 ], [ %4963, %5019 ], [ %5202, %5155 ]
  %5209 = phi float [ %4966, %4912 ], [ %4966, %5019 ], [ %5204, %5155 ]
  %5210 = phi float [ %4969, %4912 ], [ %4969, %5019 ], [ %5206, %5155 ]
  %5211 = phi float [ %4958, %4912 ], [ %4958, %5019 ], [ %5196, %5155 ]
  %5212 = phi float [ %4959, %4912 ], [ %4959, %5019 ], [ %5198, %5155 ]
  %5213 = phi float [ %4960, %4912 ], [ %4960, %5019 ], [ %5200, %5155 ]
  %5214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.i32 %5214, 0
  %5216 = icmp eq i32 %5215, 0
  br i1 %5216, label %5658, label %5217

; <label>:5217                                    ; preds = %5207
  %5218 = fptoui float %68 to i32
  %5219 = fptoui float %69 to i32
  %5220 = lshr i32 %5218, 4
  %5221 = lshr i32 %5219, 4
  %5222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.i32 %5222, 0
  %5224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5221, i32 %5223, i32 %5220)  ; UMad(a,b,c)
  %5225 = add nsw i32 %5215, -1
  %5226 = call i32 @dx.op.binary.i32(i32 37, i32 %5225, i32 0)  ; IMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5228 = fptoui float %5227 to i32
  %5229 = lshr i32 %5228, 5
  %5230 = call i32 @dx.op.binary.i32(i32 40, i32 %5229, i32 8191)  ; UMin(a,b)
  %5231 = shl i32 %5230, 2
  %5232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.i32 %5232, 0
  %5234 = lshr i32 %5233, 16
  %5235 = and i32 %5233, 65535
  %5236 = lshr i32 %5233, 21
  %5237 = lshr i32 %5235, 5
  %5238 = call i32 @dx.op.binary.i32(i32 40, i32 %5237, i32 %5226)  ; UMin(a,b)
  %5239 = icmp ugt i32 %5236, %5238
  br i1 %5239, label %5658, label %5240

; <label>:5240                                    ; preds = %5217
  br label %5241

; <label>:5241                                    ; preds = %5648, %5240
  %5242 = phi i32 [ %5655, %5648 ], [ %5236, %5240 ]
  %5243 = phi float [ %5649, %5648 ], [ %5208, %5240 ]
  %5244 = phi float [ %5650, %5648 ], [ %5209, %5240 ]
  %5245 = phi float [ %5651, %5648 ], [ %5210, %5240 ]
  %5246 = phi float [ %5652, %5648 ], [ %5211, %5240 ]
  %5247 = phi float [ %5653, %5648 ], [ %5212, %5240 ]
  %5248 = phi float [ %5654, %5648 ], [ %5213, %5240 ]
  %5249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.i32 %5249, 0
  %5251 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5224, i32 %5250, i32 %5242)  ; UMad(a,b,c)
  %5252 = shl i32 %5251, 2
  %5253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.i32 %5253, 0
  %5255 = shl i32 %5242, 5
  %5256 = sub nsw i32 %5234, %5255
  %5257 = call i32 @dx.op.binary.i32(i32 37, i32 %5256, i32 0)  ; IMax(a,b)
  %5258 = call i32 @dx.op.binary.i32(i32 38, i32 %5257, i32 31)  ; IMin(a,b)
  %5259 = sub nsw i32 1, %5234
  %5260 = add nsw i32 %5259, %5235
  %5261 = call i32 @dx.op.binary.i32(i32 37, i32 %5260, i32 0)  ; IMax(a,b)
  %5262 = call i32 @dx.op.binary.i32(i32 38, i32 %5261, i32 32)  ; IMin(a,b)
  %5263 = and i32 %5262, 31
  %5264 = shl i32 -1, %5263
  %5265 = xor i32 %5264, -1
  %5266 = and i32 %5258, 31
  %5267 = shl i32 %5265, %5266
  %5268 = icmp eq i32 %5262, 32
  %5269 = select i1 %5268, i32 -1, i32 %5267
  %5270 = and i32 %5269, %5254
  %5271 = icmp eq i32 %5270, 0
  br i1 %5271, label %5648, label %5272

; <label>:5272                                    ; preds = %5241
  br label %5273

; <label>:5273                                    ; preds = %5354, %5272
  %5274 = phi i32 [ %5285, %5354 ], [ %5270, %5272 ]
  %5275 = phi float [ %5355, %5354 ], [ %5243, %5272 ]
  %5276 = phi float [ %5356, %5354 ], [ %5244, %5272 ]
  %5277 = phi float [ %5357, %5354 ], [ %5245, %5272 ]
  %5278 = phi float [ %5358, %5354 ], [ %5246, %5272 ]
  %5279 = phi float [ %5359, %5354 ], [ %5247, %5272 ]
  %5280 = phi float [ %5360, %5354 ], [ %5248, %5272 ]
  %5281 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5274)  ; FirstbitLo(value)
  %5282 = add i32 %5281, %5255
  %5283 = and i32 %5281, 31
  %5284 = shl i32 1, %5283
  %5285 = xor i32 %5284, %5274
  %5286 = mul i32 %5282, 112
  %5287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5291 = or i32 %5286, 12
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = add i32 %5286, 44
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = add i32 %5286, 48
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = add i32 %5286, 80
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = select i1 %173, float %5305, float %5288
  %5309 = select i1 %173, float %5307, float %5289
  %5310 = select i1 %173, float %5306, float %5290
  %5311 = fsub fast float %5299, %131
  %5312 = fsub fast float %5300, %132
  %5313 = fsub fast float %5301, %133
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5311, float %5312, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 24, float %5314)  ; Sqrt(value)
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = fmul fast float %5316, %5311
  %5318 = fmul fast float %5316, %5312
  %5319 = fmul fast float %5316, %5313
  %5320 = fadd fast float %5315, %5293
  %5321 = fdiv fast float 1.000000e+00, %5320
  %5322 = fmul float %5296, %5321
  %5323 = fmul float %5322, %5322
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = and i32 %5284, %5270
  %5326 = icmp eq i32 %5325, 0
  br i1 %5326, label %5349, label %5327, !dx.controlflow.hints !73

; <label>:5327                                    ; preds = %5273
  %5328 = lshr i32 %5218, 5
  %5329 = lshr i32 %5219, 5
  %5330 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5328, i32 %5329, i32 %5282, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5331 = extractvalue %dx.types.ResRet.i32 %5330, 0
  %5332 = and i32 %5331, 3
  %5333 = icmp eq i32 %5332, 0
  %5334 = select i1 %5333, float 1.000000e+00, float 0.000000e+00
  %5335 = icmp eq i32 %5332, 3
  br i1 %5335, label %5336, label %5349

; <label>:5336                                    ; preds = %5327
  %5337 = lshr i32 %5331, 10
  %5338 = and i32 %5337, 8160
  %5339 = and i32 %5219, 31
  %5340 = or i32 %5338, %5339
  %5341 = lshr i32 %5331, 1
  %5342 = and i32 %5341, 16352
  %5343 = and i32 %5218, 31
  %5344 = or i32 %5342, %5343
  %5345 = lshr i32 %5331, 23
  %5346 = and i32 %5345, 255
  %5347 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5344, i32 %5340, i32 %5346, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  br label %5349

; <label>:5349                                    ; preds = %5336, %5327, %5273
  %5350 = phi float [ %5348, %5336 ], [ %5334, %5327 ], [ 0.000000e+00, %5273 ]
  %5351 = call float @dx.op.binary.f32(i32 36, float %5350, float %5350)  ; FMin(a,b)
  %5352 = call float @dx.op.binary.f32(i32 36, float %5350, float %5351)  ; FMin(a,b)
  %5353 = fcmp fast ogt float %5352, 0.000000e+00
  br i1 %5353, label %5362, label %5354, !dx.controlflow.hints !74

; <label>:5354                                    ; preds = %5598, %5349
  %5355 = phi float [ %5275, %5349 ], [ %5644, %5598 ]
  %5356 = phi float [ %5276, %5349 ], [ %5645, %5598 ]
  %5357 = phi float [ %5277, %5349 ], [ %5646, %5598 ]
  %5358 = phi float [ %5278, %5349 ], [ %5638, %5598 ]
  %5359 = phi float [ %5279, %5349 ], [ %5639, %5598 ]
  %5360 = phi float [ %5280, %5349 ], [ %5640, %5598 ]
  %5361 = icmp eq i32 %5274, %5284
  br i1 %5361, label %5647, label %5273

; <label>:5362                                    ; preds = %5349
  %5363 = fmul fast float %5350, %5308
  %5364 = fmul fast float %5350, %5309
  %5365 = fmul fast float %5350, %5310
  %5366 = fsub fast float %5301, %4546
  %5367 = fcmp fast ogt float %5366, 0.000000e+00
  %5368 = fsub fast float %133, %4546
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  %5370 = xor i1 %5369, %5367
  %5371 = fsub fast float %4546, %5301
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = fadd fast float %5372, %5301
  %5374 = select i1 %5370, float %5301, float %5373
  %5375 = fsub fast float %5374, %133
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5375, float %5311, float %5312, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.unary.f32(i32 25, float %5376)  ; Rsqrt(value)
  %5378 = fmul fast float %5377, %5311
  %5379 = fmul fast float %5377, %5312
  %5380 = fmul fast float %5377, %5375
  %5381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5378, float %5379, float %5380)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = fdiv fast float 1.000000e+00, %5382
  %5384 = fmul fast float %5383, %5381
  %5385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5368, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fcmp fast ogt float %5385, 0.000000e+00
  %5387 = fcmp fast olt float %5385, 0.000000e+00
  %5388 = zext i1 %5386 to i32
  %5389 = zext i1 %5387 to i32
  %5390 = sub nsw i32 %5388, %5389
  %5391 = sitofp i32 %5390 to float
  %5392 = fsub fast float %5374, %4546
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5392, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fcmp fast ogt float %5393, 0.000000e+00
  %5395 = fcmp fast olt float %5393, 0.000000e+00
  %5396 = zext i1 %5394 to i32
  %5397 = zext i1 %5395 to i32
  %5398 = sub nsw i32 %5396, %5397
  %5399 = sitofp i32 %5398 to float
  %5400 = fcmp fast une float %5391, %5399
  br i1 %5400, label %5401, label %5411

; <label>:5401                                    ; preds = %5362
  %5402 = fmul fast float %5384, %5380
  %5403 = fmul fast float %5384, %5379
  %5404 = fmul fast float %5384, %5378
  %5405 = fmul fast float %5404, %5404
  %5406 = fmul fast float %5403, %5403
  %5407 = fadd fast float %5405, %5406
  %5408 = fmul fast float %5402, %5402
  %5409 = fadd fast float %5407, %5408
  %5410 = call float @dx.op.unary.f32(i32 24, float %5409)  ; Sqrt(value)
  br label %5423

; <label>:5411                                    ; preds = %5362
  %5412 = icmp slt i32 %5390, 0
  br i1 %5412, label %5413, label %5423

; <label>:5413                                    ; preds = %5411
  %5414 = fsub fast float %131, %5299
  %5415 = fsub fast float %132, %5300
  %5416 = fsub fast float %133, %5374
  %5417 = fmul fast float %5414, %5414
  %5418 = fmul fast float %5415, %5415
  %5419 = fadd fast float %5417, %5418
  %5420 = fmul fast float %5416, %5416
  %5421 = fadd fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  br label %5423

; <label>:5423                                    ; preds = %5413, %5411, %5401
  %5424 = phi float [ %5410, %5401 ], [ %5422, %5413 ], [ 0.000000e+00, %5411 ]
  %5425 = and i1 %5369, %5367
  %5426 = fsub fast float -0.000000e+00, %5424
  %5427 = select i1 %5425, float -0.000000e+00, float %5426
  %5428 = fmul fast float %4547, 0x3FF7154760000000
  %5429 = fmul fast float %5428, %5427
  %5430 = fmul fast float %4548, 0x3FF7154760000000
  %5431 = fmul fast float %5430, %5427
  %5432 = fmul fast float %4549, 0x3FF7154760000000
  %5433 = fmul fast float %5432, %5427
  %5434 = call float @dx.op.unary.f32(i32 21, float %5429)  ; Exp(value)
  %5435 = call float @dx.op.unary.f32(i32 21, float %5431)  ; Exp(value)
  %5436 = call float @dx.op.unary.f32(i32 21, float %5433)  ; Exp(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5440 = fmul fast float %5363, %5437
  %5441 = fmul fast float %5364, %5438
  %5442 = fmul fast float %5365, %5439
  %5443 = fsub fast float %5317, %4746
  %5444 = fsub fast float %5318, %4745
  %5445 = fsub fast float %5319, %4744
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 25, float %5446)  ; Rsqrt(value)
  %5448 = fmul fast float %5447, %5443
  %5449 = fmul fast float %5447, %5444
  %5450 = fmul fast float %5447, %5445
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4742, float %4741, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5454 = fmul fast float %5453, %5324
  %5455 = fmul fast float %5453, %5453
  %5456 = fmul fast float %5455, %4773
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = fmul fast float %5454, %5457
  %5459 = bitcast float %5314 to i32
  %5460 = ashr i32 %5459, 1
  %5461 = sub nsw i32 1597463007, %5460
  %5462 = bitcast i32 %5461 to float
  %5463 = fmul fast float %5462, %5311
  %5464 = fmul fast float %5462, %5312
  %5465 = fmul fast float %5462, %5313
  %5466 = fsub fast float %5463, %4746
  %5467 = fsub fast float %5464, %4745
  %5468 = fsub fast float %5465, %4744
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.unary.f32(i32 25, float %5469)  ; Rsqrt(value)
  %5471 = fmul fast float %5466, %5470
  %5472 = fmul fast float %5467, %5470
  %5473 = fmul fast float %5468, %5470
  %5474 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fmul fast float %5474, %5474
  %5476 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5477 = fsub fast float 1.000000e+00, %4756
  %5478 = call float @dx.op.binary.f32(i32 35, float %5477, float 0x3F847AE140000000)  ; FMax(a,b)
  %5479 = fmul fast float %5478, %5478
  %5480 = fmul fast float %5479, %5479
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = fmul fast float %4760, %4760
  %5483 = fmul fast float %5482, %5481
  %5484 = fadd fast float %5483, %5480
  %5485 = bitcast float %5484 to i32
  %5486 = ashr i32 %5485, 1
  %5487 = add nsw i32 %5486, 532487669
  %5488 = bitcast i32 %5487 to float
  %5489 = fadd fast float %5488, %4760
  %5490 = fmul fast float %5480, %5475
  %5491 = fsub fast float 1.000000e+00, %5475
  %5492 = fadd fast float %5491, %5490
  %5493 = fmul fast float %5476, %5476
  %5494 = fmul fast float %5493, %5481
  %5495 = fadd fast float %5494, %5480
  %5496 = bitcast float %5495 to i32
  %5497 = ashr i32 %5496, 1
  %5498 = add nsw i32 %5497, 532487669
  %5499 = bitcast i32 %5498 to float
  %5500 = fadd fast float %5499, %5476
  %5501 = fmul fast float %5492, %5492
  %5502 = fmul fast float %5501, %5489
  %5503 = fmul fast float %5502, %5500
  %5504 = fdiv fast float 1.000000e+00, %5503
  %5505 = bitcast float %5480 to i32
  %5506 = sitofp i32 %5505 to float
  %5507 = fmul fast float %5506, 0x3FE7F73180000000
  %5508 = fadd fast float %5507, 0x41AFE27C40000000
  %5509 = fptosi float %5508 to i32
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5296, 0x3FD80E9D60000000
  %5512 = fmul fast float %5511, %5462
  %5513 = fadd fast float %5510, %5512
  %5514 = bitcast float %5513 to i32
  %5515 = sub nsw i32 2129859010, %5514
  %5516 = bitcast i32 %5515 to float
  %5517 = fmul fast float %5480, %5504
  %5518 = fmul fast float %5517, %5510
  %5519 = fmul fast float %5518, %5516
  %5520 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 5.000000e+00
  %5525 = fadd fast float %5524, 0xC1EFBF8940000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fsub fast float 1.000000e+00, %4747
  %5529 = fsub fast float 1.000000e+00, %4748
  %5530 = fsub fast float 1.000000e+00, %4758
  %5531 = fmul fast float %5527, %5528
  %5532 = fmul fast float %5527, %5529
  %5533 = fmul fast float %5527, %5530
  %5534 = fadd fast float %5531, %4747
  %5535 = fadd fast float %5532, %4748
  %5536 = fadd fast float %5533, %4758
  br i1 %4885, label %5537, label %5560

; <label>:5537                                    ; preds = %5423
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4145, float %5520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fmul fast float %4747, 4.000000e+00
  %5546 = fmul fast float %5545, %5528
  %5547 = fmul fast float %5546, %5542
  %5548 = fmul fast float %4748, 4.000000e+00
  %5549 = fmul fast float %5548, %5529
  %5550 = fmul fast float %5549, %5543
  %5551 = fmul fast float %4758, 4.000000e+00
  %5552 = fmul fast float %5551, %5530
  %5553 = fmul fast float %5552, %5544
  %5554 = fadd fast float %5547, %5534
  %5555 = fadd fast float %5550, %5535
  %5556 = fadd fast float %5553, %5536
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  br label %5560

; <label>:5560                                    ; preds = %5537, %5423
  %5561 = phi float [ %5557, %5537 ], [ %5534, %5423 ]
  %5562 = phi float [ %5558, %5537 ], [ %5535, %5423 ]
  %5563 = phi float [ %5559, %5537 ], [ %5536, %5423 ]
  %5564 = fmul fast float %5451, 9.843750e-01
  %5565 = fadd fast float %5564, 7.812500e-03
  %5566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5565, float %4875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 3
  %5569 = fmul fast float %5567, %4747
  %5570 = fmul fast float %5567, %4748
  %5571 = fmul fast float %5567, %4758
  %5572 = fadd fast float %5569, %5568
  %5573 = fadd fast float %5570, %5568
  %5574 = fadd fast float %5571, %5568
  br i1 %4885, label %5575, label %5598

; <label>:5575                                    ; preds = %5560
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4145, float %5451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = fadd fast float %5577, -5.000000e-01
  %5581 = fadd fast float %5578, -5.000000e-01
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fmul fast float %4747, 4.000000e+00
  %5584 = fmul fast float %5583, %5528
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %4748, 4.000000e+00
  %5587 = fmul fast float %5586, %5529
  %5588 = fmul fast float %5587, %5581
  %5589 = fmul fast float %4758, 4.000000e+00
  %5590 = fmul fast float %5589, %5530
  %5591 = fmul fast float %5590, %5582
  %5592 = fadd fast float %5585, %5572
  %5593 = fadd fast float %5588, %5573
  %5594 = fadd fast float %5591, %5574
  %5595 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  br label %5598

; <label>:5598                                    ; preds = %5575, %5560
  %5599 = phi float [ %5595, %5575 ], [ %5572, %5560 ]
  %5600 = phi float [ %5596, %5575 ], [ %5573, %5560 ]
  %5601 = phi float [ %5597, %5575 ], [ %5574, %5560 ]
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5599, float %5602)  ; FMax(a,b)
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5561, %5519
  %5606 = fmul fast float %5562, %5519
  %5607 = fmul fast float %5563, %5519
  %5608 = fsub fast float 1.000000e+00, %5452
  %5609 = bitcast float %5608 to i32
  %5610 = sitofp i32 %5609 to float
  %5611 = fmul fast float %5610, 5.000000e+00
  %5612 = fadd fast float %5611, 0xC1EFBF8940000000
  %5613 = fptosi float %5612 to i32
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %4146
  %5616 = fmul fast float %5604, %5615
  %5617 = fmul fast float %5616, %4935
  %5618 = fmul fast float %5616, %4936
  %5619 = fmul fast float %5616, %4937
  %5620 = fmul fast float %5304, %3581
  %5621 = fmul fast float %5304, %3582
  %5622 = fmul fast float %5304, %3583
  %5623 = fadd fast float %5605, %5620
  %5624 = fadd fast float %5623, %5617
  %5625 = fadd fast float %5606, %5621
  %5626 = fadd fast float %5625, %5618
  %5627 = fadd fast float %5607, %5622
  %5628 = fadd fast float %5627, %5619
  %5629 = fmul fast float %5440, %4142
  %5630 = fmul fast float %5629, %5458
  %5631 = fmul fast float %5630, %5604
  %5632 = fmul fast float %5441, %4142
  %5633 = fmul fast float %5632, %5458
  %5634 = fmul fast float %5633, %5604
  %5635 = fmul fast float %5442, %4142
  %5636 = fmul fast float %5635, %5458
  %5637 = fmul fast float %5636, %5604
  %5638 = fadd fast float %5631, %5278
  %5639 = fadd fast float %5634, %5279
  %5640 = fadd fast float %5637, %5280
  %5641 = fmul fast float %5630, %5624
  %5642 = fmul fast float %5633, %5626
  %5643 = fmul fast float %5636, %5628
  %5644 = fadd fast float %5641, %5275
  %5645 = fadd fast float %5642, %5276
  %5646 = fadd fast float %5643, %5277
  br label %5354

; <label>:5647                                    ; preds = %5354
  br label %5648

; <label>:5648                                    ; preds = %5647, %5241
  %5649 = phi float [ %5243, %5241 ], [ %5355, %5647 ]
  %5650 = phi float [ %5244, %5241 ], [ %5356, %5647 ]
  %5651 = phi float [ %5245, %5241 ], [ %5357, %5647 ]
  %5652 = phi float [ %5246, %5241 ], [ %5358, %5647 ]
  %5653 = phi float [ %5247, %5241 ], [ %5359, %5647 ]
  %5654 = phi float [ %5248, %5241 ], [ %5360, %5647 ]
  %5655 = add i32 %5242, 1
  %5656 = icmp ugt i32 %5655, %5238
  br i1 %5656, label %5657, label %5241

; <label>:5657                                    ; preds = %5648
  br label %5658

; <label>:5658                                    ; preds = %5657, %5217, %5207
  %5659 = phi float [ %5208, %5207 ], [ %5208, %5217 ], [ %5649, %5657 ]
  %5660 = phi float [ %5209, %5207 ], [ %5209, %5217 ], [ %5650, %5657 ]
  %5661 = phi float [ %5210, %5207 ], [ %5210, %5217 ], [ %5651, %5657 ]
  %5662 = phi float [ %5211, %5207 ], [ %5211, %5217 ], [ %5652, %5657 ]
  %5663 = phi float [ %5212, %5207 ], [ %5212, %5217 ], [ %5653, %5657 ]
  %5664 = phi float [ %5213, %5207 ], [ %5213, %5217 ], [ %5654, %5657 ]
  %5665 = call float @dx.op.unary.f32(i32 24, float %4750)  ; Sqrt(value)
  %5666 = call float @dx.op.unary.f32(i32 24, float %4751)  ; Sqrt(value)
  %5667 = call float @dx.op.unary.f32(i32 24, float %4752)  ; Sqrt(value)
  %5668 = fmul fast float %5665, %5662
  %5669 = fmul fast float %5666, %5663
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  br i1 %173, label %5672, label %5692

; <label>:5672                                    ; preds = %5658
  %5673 = fadd fast float %5664, %4148
  %5674 = fmul fast float %5673, %4149
  %5675 = fsub fast float 1.000000e+00, %4149
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5679 = fmul fast float %5678, %5676
  %5680 = fadd fast float %5679, %5674
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 0
  %5683 = fmul fast float %5682, %4941
  %5684 = fsub fast float %5680, %5683
  %5685 = fadd fast float %5669, %5668
  %5686 = fmul fast float %5671, %5685
  %5687 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5688 = fsub fast float %5684, %5687
  %5689 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5690 = fmul fast float %5688, %5689
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  br label %5708

; <label>:5692                                    ; preds = %5658
  %5693 = fmul fast float %5667, %5664
  %5694 = fmul fast float %5671, %5668
  %5695 = fmul fast float %5671, %5669
  %5696 = fmul fast float %5693, %5671
  %5697 = add i32 %33, 356
  %5698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5697, i32 undef)  ; BufferLoad(srv,index,wot)
  %5699 = extractvalue %dx.types.ResRet.i32 %5698, 0
  %5700 = and i32 %5699, 32
  %5701 = icmp eq i32 %5700, 0
  br i1 %5701, label %5708, label %5702

; <label>:5702                                    ; preds = %5692
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 0
  %5705 = fmul fast float %5704, 0x3FE99999A0000000
  %5706 = fadd fast float %5704, %5694
  %5707 = fadd fast float %5705, %5696
  br label %5708

; <label>:5708                                    ; preds = %5702, %5692, %5672
  %5709 = phi float [ %5686, %5672 ], [ %5706, %5702 ], [ %5694, %5692 ]
  %5710 = phi float [ %5691, %5672 ], [ %5695, %5702 ], [ %5695, %5692 ]
  %5711 = phi float [ 1.000000e+00, %5672 ], [ %5707, %5702 ], [ %5696, %5692 ]
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = fmul fast float %5713, %5660
  %5715 = fmul fast float %5713, %5661
  %5716 = fadd fast float %5660, %5659
  %5717 = select i1 %173, float %5716, float %5659
  %5718 = fmul float %5717, %5713
  %5719 = select i1 %173, float 0.000000e+00, float %5714
  %5720 = select i1 %173, float 0.000000e+00, float %5715
  %5721 = fmul fast float %5709, %5665
  %5722 = fmul fast float %5710, %5666
  %5723 = fmul fast float %5711, %5667
  %5724 = fadd fast float %5718, %5721
  %5725 = fadd fast float %5719, %5722
  %5726 = fadd fast float %5720, %5723
  %5727 = select i1 %173, float %5710, float %5725
  %5728 = select i1 %173, float %5711, float %5726
  %5729 = call float @dx.op.binary.f32(i32 36, float %5724, float 3.225500e+04)  ; FMin(a,b)
  %5730 = call float @dx.op.binary.f32(i32 36, float %5727, float 3.225500e+04)  ; FMin(a,b)
  %5731 = call float @dx.op.binary.f32(i32 36, float %5728, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5730)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5731)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !71}
!49 = !{!50, !69, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68}
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
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, !59}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 7, i8 0, !57}
!65 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 8, i8 0, !61}
!66 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 9, i8 0, !67}
!67 = !{i32 3, i32 13}
!68 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

