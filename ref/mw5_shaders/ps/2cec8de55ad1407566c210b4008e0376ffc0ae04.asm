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
; shader hash: 769f38e408a1d5e7f7998f5eb718d92e
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
  %134 = add i32 %33, 360
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = extractvalue %dx.types.ResRet.i32 %135, 1
  %138 = extractvalue %dx.types.ResRet.i32 %135, 2
  %139 = extractvalue %dx.types.ResRet.i32 %135, 3
  %140 = bitcast i32 %136 to float
  %141 = bitcast i32 %137 to float
  %142 = bitcast i32 %138 to float
  %143 = bitcast i32 %139 to float
  %144 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %145 = call float @dx.op.unary.f32(i32 25, float %144)  ; Rsqrt(value)
  %146 = fmul fast float %145, %75
  %147 = fmul fast float %145, %76
  %148 = fmul fast float %145, %77
  %149 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.unary.f32(i32 25, float %149)  ; Rsqrt(value)
  %151 = fmul fast float %150, %131
  %152 = fmul fast float %150, %132
  %153 = fmul fast float %150, %133
  %154 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = fmul fast float %154, %154
  %156 = fmul fast float %155, %142
  %157 = fadd fast float %156, %143
  %158 = call float @dx.op.unary.f32(i32 7, float %157)  ; Saturate(value)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %161 = fmul fast float %160, %149
  %162 = fsub fast float %140, %161
  %163 = fmul fast float %162, %141
  %164 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  %165 = fmul fast float %164, %158
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %68
  %170 = fmul fast float %168, %69
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = and i32 %172, 114688
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float %169, float 0.000000e+00
  %176 = select i1 %174, float %170, float 0.000000e+00
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fmul fast float %178, 2.550000e+02
  %180 = fptoui float %179 to i32
  %181 = select i1 %174, i32 %180, i32 0
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 3
  %185 = and i32 %184, 3
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %184, 4
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %201

; <label>:190                                     ; preds = %0
  %191 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %192 = fmul fast float %191, %69
  %193 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %194 = fmul fast float %193, %68
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %194, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fsub fast float 1.000000e+00, %196
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = fcmp fast olt float %197, %199
  br label %204

; <label>:201                                     ; preds = %0
  %202 = icmp eq i32 %187, 0
  %203 = and i1 %186, %202
  br label %204

; <label>:204                                     ; preds = %201, %190
  %205 = phi i1 [ %200, %190 ], [ %203, %201 ]
  %206 = add i32 %33, 156
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = shl i32 %208, 4
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %208, 7
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = add i32 %33, 216
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %220, 8
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %220, 16
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = add i32 %33, 36
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %33, 288
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = fmul fast float %243, 0x3F50624DE0000000
  %247 = fmul fast float %245, 0x3F50624DE0000000
  %248 = add i32 %33, 172
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = shl i32 %250, 4
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %250, 7
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %250, 22
  %258 = shl nuw nsw i32 %257, 5
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %33, 232
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %262, 8
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %262, 16
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = add i32 %33, 52
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %33, 304
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = fmul fast float %285, 0x3F50624DE0000000
  %289 = fmul fast float %287, 0x3F50624DE0000000
  %290 = add i32 %33, 188
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %33, 248
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %304, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %304, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = add i32 %33, 68
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %33, 320
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %327, 0x3F50624DE0000000
  %331 = fmul fast float %329, 0x3F50624DE0000000
  %332 = add i32 %33, 204
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = shl i32 %334, 4
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %334, 7
  %339 = and i32 %338, 32752
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %334, 22
  %342 = shl nuw nsw i32 %341, 5
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %33, 264
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %346, 8
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %346, 16
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = add i32 %33, 84
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 65535
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %360, 16
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %33, 336
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = fmul fast float %369, 0x3F50624DE0000000
  %373 = fmul fast float %371, 0x3F50624DE0000000
  %374 = add i32 %33, 348
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 32
  %378 = icmp eq i32 %377, 0
  %379 = and i32 %376, 64
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %376, 128
  %382 = icmp eq i32 %381, 0
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %400, label %387

; <label>:387                                     ; preds = %204
  %388 = add i32 %33, 536
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %390, 0
  %392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %392, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = extractvalue %dx.types.ResRet.f32 %393, 1
  %396 = extractvalue %dx.types.ResRet.f32 %393, 2
  %397 = fmul fast float %394, %58
  %398 = fmul fast float %395, %59
  %399 = fmul fast float %396, %60
  br label %400

; <label>:400                                     ; preds = %387, %204
  %401 = phi float [ %60, %204 ], [ %399, %387 ]
  %402 = phi float [ %59, %204 ], [ %398, %387 ]
  %403 = phi float [ %58, %204 ], [ %397, %387 ]
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 2
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %427, label %408

; <label>:408                                     ; preds = %400
  %409 = add i32 %33, 44
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %403, float 1.000000e+00
  %415 = add i32 %33, 60
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %402, float 1.000000e+00
  %421 = add i32 %33, 76
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 1
  %425 = icmp ne i32 %424, 0
  %426 = select i1 %425, float %401, float 1.000000e+00
  br label %427

; <label>:427                                     ; preds = %408, %400
  %428 = phi float [ %401, %400 ], [ %426, %408 ]
  %429 = phi float [ %402, %400 ], [ %420, %408 ]
  %430 = phi float [ %403, %400 ], [ %414, %408 ]
  %431 = lshr i32 %405, 20
  %432 = and i32 %431, 3
  %433 = add nuw nsw i32 %432, 1
  %434 = add i32 %33, 24
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = add i32 %33, 28
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = or i32 %439, %436
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %900, label %442

; <label>:442                                     ; preds = %427
  %443 = and i32 %436, 262144
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %36, float 1.000000e+00
  %446 = select i1 %444, float %37, float 0.000000e+00
  %447 = select i1 %444, float %38, float 0.000000e+00
  %448 = select i1 %444, float %39, float 1.000000e+00
  %449 = select i1 %444, float %40, float %56
  %450 = select i1 %444, float %41, float %57
  %451 = add i32 %33, 284
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = fmul fast float %455, 0x3F50624DE0000000
  %457 = add i32 %33, 88
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = lshr i32 %459, 16
  %461 = and i32 %460, 255
  %462 = lshr i32 %459, 24
  %463 = add i32 %33, 292
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %33, 32
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = lshr i32 %472, 22
  %474 = shl nuw nsw i32 %473, 5
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = shl i32 %472, 4
  %477 = and i32 %476, 32752
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %472, 7
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %484 = fmul fast float %483, 1.000000e+03
  %485 = fmul fast float %246, %484
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fadd fast float %486, %236
  %488 = fmul fast float %247, %484
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = fadd fast float %489, %238
  %491 = fmul fast float %456, %484
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = fmul fast float %492, 0x401921FB60000000
  %494 = fadd fast float %493, %475
  %495 = call float @dx.op.unary.f32(i32 13, float %494)  ; Sin(value)
  %496 = call float @dx.op.unary.f32(i32 12, float %494)  ; Cos(value)
  %497 = fsub fast float -0.000000e+00, %495
  %498 = fadd fast float %449, -5.000000e-01
  %499 = fadd fast float %450, -5.000000e-01
  %500 = fmul fast float %467, %498
  %501 = fmul fast float %469, %499
  %502 = fadd fast float %500, 5.000000e-01
  %503 = fadd fast float %501, 5.000000e-01
  %504 = fmul fast float %478, %502
  %505 = fmul fast float %481, %503
  %506 = fmul fast float %496, %504
  %507 = call float @dx.op.tertiary.f32(i32 46, float %497, float %505, float %506)  ; FMad(a,b,c)
  %508 = fmul fast float %495, %504
  %509 = call float @dx.op.tertiary.f32(i32 46, float %496, float %505, float %508)  ; FMad(a,b,c)
  %510 = fadd fast float %487, %507
  %511 = fadd fast float %490, %509
  %512 = icmp ugt i32 %461, 1
  %513 = icmp ugt i32 %459, 33554431
  %514 = or i1 %513, %512
  br i1 %514, label %515, label %540

; <label>:515                                     ; preds = %442
  %516 = add i32 %33, 228
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = fmul fast float %483, %520
  %522 = call float @dx.op.unary.f32(i32 22, float %521)  ; Frc(value)
  %523 = mul nuw nsw i32 %461, %462
  %524 = uitofp i32 %523 to float
  %525 = fmul fast float %522, %524
  %526 = call float @dx.op.unary.f32(i32 27, float %525)  ; Round_ni(value)
  %527 = fptoui float %526 to i32
  %528 = urem i32 %527, %461
  %529 = udiv i32 %527, %462
  %530 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %531 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %532 = uitofp i32 %528 to float
  %533 = uitofp i32 %529 to float
  %534 = fadd fast float %530, %532
  %535 = fadd fast float %531, %533
  %536 = uitofp i32 %461 to float
  %537 = uitofp i32 %462 to float
  %538 = fdiv fast float %534, %536
  %539 = fdiv fast float %535, %537
  br label %540

; <label>:540                                     ; preds = %515, %442
  %541 = phi float [ %538, %515 ], [ %510, %442 ]
  %542 = phi float [ %539, %515 ], [ %511, %442 ]
  %543 = and i32 %436, 16
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %741, label %545

; <label>:545                                     ; preds = %540
  %546 = add i32 %33, 408
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = add i32 %548, 0
  %550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %550, %dx.types.Handle %64, float %541, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = extractvalue %dx.types.ResRet.f32 %551, 3
  %556 = and i32 %459, 255
  %557 = uitofp i32 %556 to float
  %558 = lshr i32 %459, 8
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %555, %557
  %562 = fadd fast float %561, %560
  %563 = fmul fast float %562, 0x3F70101000000000
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 512
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %576, label %568

; <label>:568                                     ; preds = %545
  %569 = add i32 %33, 488
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %65, float %541, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  br label %576

; <label>:576                                     ; preds = %568, %545
  %577 = phi float [ %575, %568 ], [ 1.000000e+00, %545 ]
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 33554432
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %688, label %582

; <label>:582                                     ; preds = %576
  %583 = add i32 %33, 224
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 65535
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = lshr i32 %585, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = add i32 %33, 228
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 65535
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %611 = add i32 %33, 220
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = lshr i32 %613, 24
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = and i32 %613, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %613, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = lshr i32 %613, 16
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = bitcast float %552 to i32
  %629 = ashr i32 %628, 1
  %630 = sub nsw i32 1597463174, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %552, 5.000000e-01
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %633, %632
  %635 = fsub fast float 1.500000e+00, %634
  %636 = fmul fast float %631, %552
  %637 = fmul fast float %636, %635
  %638 = bitcast float %553 to i32
  %639 = ashr i32 %638, 1
  %640 = sub nsw i32 1597463174, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %553, 5.000000e-01
  %643 = fmul fast float %641, %641
  %644 = fmul fast float %643, %642
  %645 = fsub fast float 1.500000e+00, %644
  %646 = fmul fast float %641, %553
  %647 = fmul fast float %646, %645
  %648 = bitcast float %554 to i32
  %649 = ashr i32 %648, 1
  %650 = sub nsw i32 1597463174, %649
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %554, 5.000000e-01
  %653 = fmul fast float %651, %651
  %654 = fmul fast float %653, %652
  %655 = fsub fast float 1.500000e+00, %654
  %656 = fmul fast float %651, %554
  %657 = fmul fast float %656, %655
  %658 = fsub fast float %637, %619
  %659 = fsub fast float %647, %623
  %660 = fsub fast float %657, %627
  %661 = fmul fast float %658, %587
  %662 = fmul fast float %659, %589
  %663 = fmul fast float %660, %594
  %664 = fadd fast float %661, %602
  %665 = fadd fast float %662, %606
  %666 = fadd fast float %663, %610
  %667 = call float @dx.op.unary.f32(i32 7, float %664)  ; Saturate(value)
  %668 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  %669 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %670 = fmul fast float %667, %667
  %671 = fmul fast float %668, %668
  %672 = fmul fast float %669, %669
  %673 = fsub fast float %670, %552
  %674 = fsub fast float %671, %553
  %675 = fsub fast float %672, %554
  %676 = fmul fast float %673, %577
  %677 = fmul fast float %674, %577
  %678 = fmul fast float %675, %577
  %679 = fadd fast float %676, %552
  %680 = fadd fast float %677, %553
  %681 = fadd fast float %678, %554
  %682 = fadd fast float %599, %563
  %683 = fsub fast float %682, %616
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  %685 = fsub fast float %684, %563
  %686 = fmul fast float %685, %577
  %687 = fadd fast float %686, %563
  br label %741

; <label>:688                                     ; preds = %576
  %689 = and i32 %579, 134217728
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %725, label %691

; <label>:691                                     ; preds = %688
  %692 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %693 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %694 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %695 = fadd fast float %692, -5.000000e-01
  %696 = fadd fast float %693, -5.000000e-01
  %697 = fadd fast float %694, -5.000000e-01
  %698 = fmul fast float %695, %577
  %699 = fmul fast float %696, %577
  %700 = fmul fast float %697, %577
  %701 = fadd fast float %698, 5.000000e-01
  %702 = fadd fast float %699, 5.000000e-01
  %703 = fadd fast float %700, 5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 24, float %552)  ; Sqrt(value)
  %705 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %706 = call float @dx.op.unary.f32(i32 24, float %554)  ; Sqrt(value)
  %707 = fmul fast float %701, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %704
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %704
  %712 = fmul fast float %702, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %705
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %705
  %717 = fmul fast float %703, 2.000000e+00
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %718, %706
  %720 = fadd fast float %719, %717
  %721 = fmul fast float %720, %706
  %722 = fmul fast float %711, %711
  %723 = fmul fast float %716, %716
  %724 = fmul fast float %721, %721
  br label %741

; <label>:725                                     ; preds = %688
  %726 = fmul fast float %223, %223
  %727 = fmul fast float %227, %227
  %728 = fmul fast float %231, %231
  %729 = fadd fast float %726, -1.000000e+00
  %730 = fadd fast float %727, -1.000000e+00
  %731 = fadd fast float %728, -1.000000e+00
  %732 = fmul fast float %577, %729
  %733 = fmul fast float %577, %730
  %734 = fmul fast float %577, %731
  %735 = fadd fast float %732, 1.000000e+00
  %736 = fadd fast float %733, 1.000000e+00
  %737 = fadd fast float %734, 1.000000e+00
  %738 = fmul fast float %735, %552
  %739 = fmul fast float %736, %553
  %740 = fmul fast float %737, %554
  br label %741

; <label>:741                                     ; preds = %725, %691, %582, %540
  %742 = phi float [ %687, %582 ], [ %563, %691 ], [ %563, %725 ], [ 0x3FA23C0BE0000000, %540 ]
  %743 = phi float [ %679, %582 ], [ %722, %691 ], [ %738, %725 ], [ 1.000000e+00, %540 ]
  %744 = phi float [ %680, %582 ], [ %723, %691 ], [ %739, %725 ], [ 1.000000e+00, %540 ]
  %745 = phi float [ %681, %582 ], [ %724, %691 ], [ %740, %725 ], [ 1.000000e+00, %540 ]
  %746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.i32 %746, 1
  %748 = and i32 %747, 1
  %749 = icmp ne i32 %748, 0
  %750 = add i32 %33, 356
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 32
  %754 = icmp ne i32 %753, 0
  %755 = and i1 %749, %754
  %756 = select i1 %755, float 1.000000e+00, float %743
  %757 = select i1 %755, float 0x3FD3333340000000, float %744
  %758 = select i1 %755, float 0x3FD3333340000000, float %745
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 32
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %835, label %763

; <label>:763                                     ; preds = %741
  %764 = add i32 %33, 92
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %33, 424
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %769, 0
  %771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %771, %dx.types.Handle %64, float %541, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = extractvalue %dx.types.ResRet.f32 %772, 3
  %777 = and i32 %766, 255
  %778 = uitofp i32 %777 to float
  %779 = lshr i32 %766, 8
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = lshr i32 %766, 16
  %783 = and i32 %782, 255
  %784 = uitofp i32 %783 to float
  %785 = fmul fast float %784, 0x3F70101000000000
  %786 = fmul fast float %773, %778
  %787 = fadd fast float %786, %781
  %788 = fmul fast float %787, 0x3F70101000000000
  %789 = fadd fast float %774, -5.000000e-01
  %790 = fadd fast float %776, -5.000000e-01
  %791 = fmul fast float %789, %785
  %792 = fmul fast float %790, %785
  %793 = fadd fast float %791, 5.000000e-01
  %794 = fadd fast float %792, 5.000000e-01
  %795 = fmul fast float %793, 2.000000e+00
  %796 = fadd fast float %795, -1.000000e+00
  %797 = fmul fast float %794, 2.000000e+00
  %798 = fadd fast float %797, -1.000000e+00
  %799 = fadd fast float %796, %798
  %800 = fmul fast float %799, 5.000000e-01
  %801 = fsub fast float %796, %798
  %802 = fmul fast float %801, 5.000000e-01
  %803 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %804 = fsub fast float 1.000000e+00, %803
  %805 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %806 = fsub fast float %804, %805
  %807 = call float @dx.op.dot3.f32(i32 55, float %800, float %802, float %806, float %800, float %802, float %806)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.unary.f32(i32 25, float %807)  ; Rsqrt(value)
  %809 = fmul fast float %800, %808
  %810 = fmul fast float %802, %808
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 67108864
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %831, label %815

; <label>:815                                     ; preds = %763
  %816 = add i32 %33, 280
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 65535
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = lshr i32 %818, 16
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = fsub fast float %788, %826
  %828 = fmul fast float %827, %820
  %829 = fadd fast float %828, %824
  %830 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  br label %831

; <label>:831                                     ; preds = %815, %763
  %832 = phi float [ %830, %815 ], [ %788, %763 ]
  %833 = call float @dx.op.dot2.f32(i32 54, float %809, float %810, float %445, float %446)  ; Dot2(ax,ay,bx,by)
  %834 = call float @dx.op.dot2.f32(i32 54, float %809, float %810, float %447, float %448)  ; Dot2(ax,ay,bx,by)
  br label %835

; <label>:835                                     ; preds = %831, %741
  %836 = phi float [ %832, %831 ], [ 0x3FD6666660000000, %741 ]
  %837 = phi float [ %833, %831 ], [ 0.000000e+00, %741 ]
  %838 = phi float [ %834, %831 ], [ 0.000000e+00, %741 ]
  %839 = phi float [ %775, %831 ], [ 1.000000e+00, %741 ]
  %840 = add i32 %33, 160
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = lshr i32 %842, 22
  %844 = shl nuw nsw i32 %843, 5
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 64
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %883, label %850

; <label>:850                                     ; preds = %835
  %851 = add i32 %33, 440
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = add i32 %853, 0
  %855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 131072
  %859 = icmp eq i32 %858, 0
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %855, %dx.types.Handle %64, float %541, float %542, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = fmul fast float %861, %211
  %865 = fmul fast float %862, %214
  %866 = fmul fast float %863, %217
  br i1 %859, label %873, label %867

; <label>:867                                     ; preds = %850
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = fmul fast float %869, %864
  %871 = fmul fast float %869, %865
  %872 = fmul fast float %869, %866
  br label %873

; <label>:873                                     ; preds = %867, %850
  %874 = phi float [ %870, %867 ], [ %864, %850 ]
  %875 = phi float [ %871, %867 ], [ %865, %850 ]
  %876 = phi float [ %872, %867 ], [ %866, %850 ]
  %877 = fmul fast float %874, %845
  %878 = select i1 %205, float %877, float %874
  %879 = call float @dx.op.dot3.f32(i32 55, float %878, float %875, float %876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = select i1 %205, float 0.000000e+00, float %874
  %881 = select i1 %205, float %879, float %875
  %882 = select i1 %205, float 0.000000e+00, float %876
  br label %883

; <label>:883                                     ; preds = %873, %835
  %884 = phi float [ %880, %873 ], [ 0.000000e+00, %835 ]
  %885 = phi float [ %881, %873 ], [ 0.000000e+00, %835 ]
  %886 = phi float [ %882, %873 ], [ 0.000000e+00, %835 ]
  %887 = add i32 %33, 96
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = lshr i32 %889, 8
  %893 = and i32 %892, 255
  %894 = uitofp i32 %893 to float
  %895 = call float @dx.op.dot3.f32(i32 55, float %756, float %757, float %758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = fmul fast float %894, %895
  %897 = fadd fast float %896, %891
  %898 = fmul fast float %897, 0x3F70101020000000
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  br label %900

; <label>:900                                     ; preds = %883, %427
  %901 = phi float [ 0.000000e+00, %427 ], [ %837, %883 ]
  %902 = phi float [ 0.000000e+00, %427 ], [ %838, %883 ]
  %903 = phi float [ 0.000000e+00, %427 ], [ %756, %883 ]
  %904 = phi float [ 0.000000e+00, %427 ], [ %757, %883 ]
  %905 = phi float [ 0.000000e+00, %427 ], [ %758, %883 ]
  %906 = phi float [ 0.000000e+00, %427 ], [ %884, %883 ]
  %907 = phi float [ 0.000000e+00, %427 ], [ %885, %883 ]
  %908 = phi float [ 0.000000e+00, %427 ], [ %886, %883 ]
  %909 = phi float [ 0.000000e+00, %427 ], [ %742, %883 ]
  %910 = phi float [ 0.000000e+00, %427 ], [ 1.000000e+00, %883 ]
  %911 = phi float [ 0.000000e+00, %427 ], [ %836, %883 ]
  %912 = phi float [ 0.000000e+00, %427 ], [ %839, %883 ]
  %913 = phi float [ 0.000000e+00, %427 ], [ %899, %883 ]
  br i1 %378, label %1866, label %914

; <label>:914                                     ; preds = %900
  %915 = icmp ult i32 %433, 2
  %916 = add i32 %33, 40
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %33, 44
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = or i32 %921, %918
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %1866, label %924

; <label>:924                                     ; preds = %914
  %925 = and i32 %918, 262144
  %926 = icmp ne i32 %925, 0
  %927 = select i1 %926, float %36, float 1.000000e+00
  %928 = select i1 %926, float %37, float 0.000000e+00
  %929 = select i1 %926, float %38, float 0.000000e+00
  %930 = select i1 %926, float %39, float 1.000000e+00
  %931 = select i1 %926, float %40, float %56
  %932 = select i1 %926, float %41, float %57
  %933 = add i32 %33, 300
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 16
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = fmul fast float %937, 0x3F50624DE0000000
  %939 = add i32 %33, 104
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 16
  %943 = and i32 %942, 255
  %944 = lshr i32 %941, 24
  %945 = add i32 %33, 308
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %947, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = add i32 %33, 48
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 22
  %956 = shl nuw nsw i32 %955, 5
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = shl i32 %954, 4
  %959 = and i32 %958, 32752
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = lshr i32 %954, 7
  %962 = and i32 %961, 32752
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %966 = fmul fast float %965, 1.000000e+03
  %967 = fmul fast float %288, %966
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fadd fast float %968, %278
  %970 = fmul fast float %289, %966
  %971 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %972 = fadd fast float %971, %280
  %973 = fmul fast float %938, %966
  %974 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %975 = fmul fast float %974, 0x401921FB60000000
  %976 = fadd fast float %975, %957
  %977 = call float @dx.op.unary.f32(i32 13, float %976)  ; Sin(value)
  %978 = call float @dx.op.unary.f32(i32 12, float %976)  ; Cos(value)
  %979 = fsub fast float -0.000000e+00, %977
  %980 = fadd fast float %931, -5.000000e-01
  %981 = fadd fast float %932, -5.000000e-01
  %982 = fmul fast float %949, %980
  %983 = fmul fast float %951, %981
  %984 = fadd fast float %982, 5.000000e-01
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fmul fast float %960, %984
  %987 = fmul fast float %963, %985
  %988 = fmul fast float %978, %986
  %989 = call float @dx.op.tertiary.f32(i32 46, float %979, float %987, float %988)  ; FMad(a,b,c)
  %990 = fmul fast float %977, %986
  %991 = call float @dx.op.tertiary.f32(i32 46, float %978, float %987, float %990)  ; FMad(a,b,c)
  %992 = fadd fast float %969, %989
  %993 = fadd fast float %972, %991
  %994 = icmp ugt i32 %943, 1
  %995 = icmp ugt i32 %941, 33554431
  %996 = or i1 %995, %994
  br i1 %996, label %997, label %1022

; <label>:997                                     ; preds = %924
  %998 = add i32 %33, 244
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = lshr i32 %1000, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = fmul fast float %965, %1002
  %1004 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1005 = mul nuw nsw i32 %943, %944
  %1006 = uitofp i32 %1005 to float
  %1007 = fmul fast float %1004, %1006
  %1008 = call float @dx.op.unary.f32(i32 27, float %1007)  ; Round_ni(value)
  %1009 = fptoui float %1008 to i32
  %1010 = urem i32 %1009, %943
  %1011 = udiv i32 %1009, %944
  %1012 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %1013 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %1014 = uitofp i32 %1010 to float
  %1015 = uitofp i32 %1011 to float
  %1016 = fadd fast float %1012, %1014
  %1017 = fadd fast float %1013, %1015
  %1018 = uitofp i32 %943 to float
  %1019 = uitofp i32 %944 to float
  %1020 = fdiv fast float %1016, %1018
  %1021 = fdiv fast float %1017, %1019
  br label %1022

; <label>:1022                                    ; preds = %997, %924
  %1023 = phi float [ %1020, %997 ], [ %992, %924 ]
  %1024 = phi float [ %1021, %997 ], [ %993, %924 ]
  %1025 = and i32 %918, 16777216
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1136, label %1027

; <label>:1027                                    ; preds = %1022
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1032 = fadd fast float %1029, %131
  %1033 = fadd fast float %1030, %132
  %1034 = fadd fast float %1031, %133
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = icmp eq i32 %34, 65535
  br i1 %1038, label %1133, label %1039

; <label>:1039                                    ; preds = %1027
  %1040 = lshr i32 %34, 1
  %1041 = shl i32 %1040, 2
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %34, 1
  %1045 = icmp ne i32 %1044, 0
  %1046 = lshr i32 %1043, 16
  %1047 = and i32 %1043, 65535
  %1048 = select i1 %1045, i32 %1046, i32 %1047
  %1049 = icmp eq i32 %1048, 65535
  br i1 %1049, label %1129, label %1050

; <label>:1050                                    ; preds = %1039
  %1051 = mul nuw nsw i32 %1048, 40
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1051, 12
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = add nuw nsw i32 %1051, 24
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = add nuw nsw i32 %1051, 36
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = fsub fast float %1032, %1053
  %1070 = fsub fast float %1033, %1054
  %1071 = fsub fast float %1034, %1055
  %1072 = fmul fast float %1068, %1069
  %1073 = fmul fast float %1068, %1070
  %1074 = fmul fast float %1068, %1071
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1077 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fadd fast float %1077, 5.000000e-01
  %1081 = fmul fast float %1078, %1058
  %1082 = fmul fast float %1079, %1059
  %1083 = fmul fast float %1080, %1060
  %1084 = shl i32 %34, 2
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1090 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1091 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1088, %dx.types.Handle %30, float %1089, float %1090, float %1091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = fmul fast float %1093, 1.023000e+03
  %1097 = fmul fast float %1094, 1.023000e+03
  %1098 = fmul fast float %1095, 1.023000e+03
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1105 = fsub fast float %1072, %1075
  %1106 = fsub fast float %1073, %1076
  %1107 = fsub fast float %1074, %1077
  %1108 = fmul fast float %1105, 7.500000e-01
  %1109 = fmul fast float %1106, 7.500000e-01
  %1110 = fmul fast float %1107, 7.500000e-01
  %1111 = fadd fast float %1075, 1.250000e-01
  %1112 = fadd fast float %1111, %1108
  %1113 = fadd fast float %1112, %1102
  %1114 = fadd fast float %1076, 1.250000e-01
  %1115 = fadd fast float %1114, %1109
  %1116 = fadd fast float %1115, %1103
  %1117 = fadd fast float %1077, 1.250000e-01
  %1118 = fadd fast float %1117, %1110
  %1119 = fadd fast float %1118, %1104
  %1120 = fmul fast float %1113, %1063
  %1121 = fmul fast float %1116, %1064
  %1122 = fmul fast float %1119, %1065
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1126, %dx.types.Handle %28, float %1120, float %1121, float %1122, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  br label %1129

; <label>:1129                                    ; preds = %1050, %1039
  %1130 = phi float [ %1128, %1050 ], [ -1.000000e+00, %1039 ]
  %1131 = fadd fast float %1130, %1037
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  br label %1133

; <label>:1133                                    ; preds = %1129, %1027
  %1134 = phi float [ %1132, %1129 ], [ %1037, %1027 ]
  %1135 = fmul fast float %1134, %430
  br label %1136

; <label>:1136                                    ; preds = %1133, %1022
  %1137 = phi float [ %1135, %1133 ], [ %430, %1022 ]
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 256
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1188, label %1142

; <label>:1142                                    ; preds = %1136
  %1143 = add i32 %33, 476
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %1145, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1147, %dx.types.Handle %65, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = add i32 %33, 116
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = shl i32 %1152, 4
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %1152, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fsub fast float 1.000000e+00, %1137
  %1160 = call float @dx.op.binary.f32(i32 35, float %1159, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1161 = bitcast float %1137 to i32
  %1162 = sitofp i32 %1161 to float
  %1163 = fadd fast float %1162, 0xC1CFBF8940000000
  %1164 = fmul fast float %1158, %1163
  %1165 = fadd fast float %1164, 0x41CFBF8940000000
  %1166 = fptosi float %1165 to i32
  %1167 = bitcast i32 %1166 to float
  %1168 = bitcast float %1160 to i32
  %1169 = sitofp i32 %1168 to float
  %1170 = fadd fast float %1169, 0xC1CFBF8940000000
  %1171 = fmul fast float %1170, %1158
  %1172 = fadd fast float %1171, 0x41CFBF8940000000
  %1173 = fptosi float %1172 to i32
  %1174 = bitcast i32 %1173 to float
  %1175 = fmul fast float %1167, %1155
  %1176 = fmul fast float %1174, %1155
  %1177 = fsub fast float %1160, %1175
  %1178 = fadd fast float %1176, %1160
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = fsub fast float %1149, %1179
  %1182 = fsub fast float %1180, %1179
  %1183 = bitcast float %1182 to i32
  %1184 = sub nsw i32 2129859010, %1183
  %1185 = bitcast i32 %1184 to float
  %1186 = fmul fast float %1185, %1181
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  br label %1188

; <label>:1188                                    ; preds = %1142, %1136
  %1189 = phi float [ %1187, %1142 ], [ %1137, %1136 ]
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 128
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1210, label %1194

; <label>:1194                                    ; preds = %1188
  %1195 = add i32 %33, 460
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %65, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 524288
  %1205 = icmp ne i32 %1204, 0
  %1206 = fcmp fast ogt float %1201, 0x3FE0101020000000
  %1207 = select i1 %1206, float 1.000000e+00, float 0.000000e+00
  %1208 = select i1 %1205, float %1207, float %1201
  %1209 = fmul fast float %1208, %1189
  br label %1210

; <label>:1210                                    ; preds = %1194, %1188
  %1211 = phi float [ %1209, %1194 ], [ %1189, %1188 ]
  %1212 = fcmp fast ult float %1211, 0x3F70101020000000
  br i1 %1212, label %1866, label %1213

; <label>:1213                                    ; preds = %1210
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 16
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1416, label %1218

; <label>:1218                                    ; preds = %1213
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %33, 412
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %64, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.ResRet.f32 %1226, 3
  %1231 = and i32 %1220, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = lshr i32 %1220, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1230, %1232
  %1237 = fadd fast float %1236, %1235
  %1238 = fmul fast float %1237, 0x3F70101000000000
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 512
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1251, label %1243

; <label>:1243                                    ; preds = %1218
  %1244 = add i32 %33, 492
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %65, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  br label %1251

; <label>:1251                                    ; preds = %1243, %1218
  %1252 = phi float [ %1250, %1243 ], [ 1.000000e+00, %1218 ]
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 33554432
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1363, label %1257

; <label>:1257                                    ; preds = %1251
  %1258 = add i32 %33, 240
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = and i32 %1260, 65535
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = lshr i32 %1260, 16
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = add i32 %33, 244
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 65535
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1286 = add i32 %33, 236
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = lshr i32 %1288, 24
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1290, 0x3F70101020000000
  %1292 = and i32 %1288, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = lshr i32 %1288, 8
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = lshr i32 %1288, 16
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = bitcast float %1227 to i32
  %1304 = ashr i32 %1303, 1
  %1305 = sub nsw i32 1597463174, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1227, 5.000000e-01
  %1308 = fmul fast float %1306, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float 1.500000e+00, %1309
  %1311 = fmul fast float %1306, %1227
  %1312 = fmul fast float %1311, %1310
  %1313 = bitcast float %1228 to i32
  %1314 = ashr i32 %1313, 1
  %1315 = sub nsw i32 1597463174, %1314
  %1316 = bitcast i32 %1315 to float
  %1317 = fmul fast float %1228, 5.000000e-01
  %1318 = fmul fast float %1316, %1316
  %1319 = fmul fast float %1318, %1317
  %1320 = fsub fast float 1.500000e+00, %1319
  %1321 = fmul fast float %1316, %1228
  %1322 = fmul fast float %1321, %1320
  %1323 = bitcast float %1229 to i32
  %1324 = ashr i32 %1323, 1
  %1325 = sub nsw i32 1597463174, %1324
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1229, 5.000000e-01
  %1328 = fmul fast float %1326, %1326
  %1329 = fmul fast float %1328, %1327
  %1330 = fsub fast float 1.500000e+00, %1329
  %1331 = fmul fast float %1326, %1229
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float %1312, %1294
  %1334 = fsub fast float %1322, %1298
  %1335 = fsub fast float %1332, %1302
  %1336 = fmul fast float %1333, %1262
  %1337 = fmul fast float %1334, %1264
  %1338 = fmul fast float %1335, %1269
  %1339 = fadd fast float %1336, %1277
  %1340 = fadd fast float %1337, %1281
  %1341 = fadd fast float %1338, %1285
  %1342 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1344 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1345 = fmul fast float %1342, %1342
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fsub fast float %1345, %1227
  %1349 = fsub fast float %1346, %1228
  %1350 = fsub fast float %1347, %1229
  %1351 = fmul fast float %1348, %1252
  %1352 = fmul fast float %1349, %1252
  %1353 = fmul fast float %1350, %1252
  %1354 = fadd fast float %1351, %1227
  %1355 = fadd fast float %1352, %1228
  %1356 = fadd fast float %1353, %1229
  %1357 = fadd fast float %1274, %1238
  %1358 = fsub fast float %1357, %1291
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fsub fast float %1359, %1238
  %1361 = fmul fast float %1360, %1252
  %1362 = fadd fast float %1361, %1238
  br label %1416

; <label>:1363                                    ; preds = %1251
  %1364 = and i32 %1254, 134217728
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1400, label %1366

; <label>:1366                                    ; preds = %1363
  %1367 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1368 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %1369 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fadd fast float %1368, -5.000000e-01
  %1372 = fadd fast float %1369, -5.000000e-01
  %1373 = fmul fast float %1370, %1252
  %1374 = fmul fast float %1371, %1252
  %1375 = fmul fast float %1372, %1252
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = fadd fast float %1374, 5.000000e-01
  %1378 = fadd fast float %1375, 5.000000e-01
  %1379 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1380 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1381 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1382 = fmul fast float %1376, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1379
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1379
  %1387 = fmul fast float %1377, 2.000000e+00
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1388, %1380
  %1390 = fadd fast float %1389, %1387
  %1391 = fmul fast float %1390, %1380
  %1392 = fmul fast float %1378, 2.000000e+00
  %1393 = fsub fast float 1.000000e+00, %1392
  %1394 = fmul fast float %1393, %1381
  %1395 = fadd fast float %1394, %1392
  %1396 = fmul fast float %1395, %1381
  %1397 = fmul fast float %1386, %1386
  %1398 = fmul fast float %1391, %1391
  %1399 = fmul fast float %1396, %1396
  br label %1416

; <label>:1400                                    ; preds = %1363
  %1401 = fmul fast float %265, %265
  %1402 = fmul fast float %269, %269
  %1403 = fmul fast float %273, %273
  %1404 = fadd fast float %1401, -1.000000e+00
  %1405 = fadd fast float %1402, -1.000000e+00
  %1406 = fadd fast float %1403, -1.000000e+00
  %1407 = fmul fast float %1252, %1404
  %1408 = fmul fast float %1252, %1405
  %1409 = fmul fast float %1252, %1406
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fadd fast float %1408, 1.000000e+00
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = fmul fast float %1410, %1227
  %1414 = fmul fast float %1411, %1228
  %1415 = fmul fast float %1412, %1229
  br label %1416

; <label>:1416                                    ; preds = %1400, %1366, %1257, %1213
  %1417 = phi float [ %1362, %1257 ], [ %1238, %1366 ], [ %1238, %1400 ], [ 0x3FA23C0BE0000000, %1213 ]
  %1418 = phi float [ %1354, %1257 ], [ %1397, %1366 ], [ %1413, %1400 ], [ 1.000000e+00, %1213 ]
  %1419 = phi float [ %1355, %1257 ], [ %1398, %1366 ], [ %1414, %1400 ], [ 1.000000e+00, %1213 ]
  %1420 = phi float [ %1356, %1257 ], [ %1399, %1366 ], [ %1415, %1400 ], [ 1.000000e+00, %1213 ]
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 1
  %1423 = and i32 %1422, 1
  %1424 = icmp ne i32 %1423, 0
  %1425 = add i32 %33, 356
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 32
  %1429 = icmp ne i32 %1428, 0
  %1430 = and i1 %1424, %1429
  %1431 = select i1 %1430, float 1.000000e+00, float %1418
  %1432 = select i1 %1430, float 0x3FD3333340000000, float %1419
  %1433 = select i1 %1430, float 0x3FD3333340000000, float %1420
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 32
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1510, label %1438

; <label>:1438                                    ; preds = %1416
  %1439 = add i32 %33, 108
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = add i32 %33, 428
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %1444, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1446, %dx.types.Handle %64, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.ResRet.f32 %1447, 2
  %1451 = extractvalue %dx.types.ResRet.f32 %1447, 3
  %1452 = and i32 %1441, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = lshr i32 %1441, 8
  %1455 = and i32 %1454, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = lshr i32 %1441, 16
  %1458 = and i32 %1457, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = fmul fast float %1459, 0x3F70101000000000
  %1461 = fmul fast float %1448, %1453
  %1462 = fadd fast float %1461, %1456
  %1463 = fmul fast float %1462, 0x3F70101000000000
  %1464 = fadd fast float %1449, -5.000000e-01
  %1465 = fadd fast float %1451, -5.000000e-01
  %1466 = fmul fast float %1464, %1460
  %1467 = fmul fast float %1465, %1460
  %1468 = fadd fast float %1466, 5.000000e-01
  %1469 = fadd fast float %1467, 5.000000e-01
  %1470 = fmul fast float %1468, 2.000000e+00
  %1471 = fadd fast float %1470, -1.000000e+00
  %1472 = fmul fast float %1469, 2.000000e+00
  %1473 = fadd fast float %1472, -1.000000e+00
  %1474 = fadd fast float %1471, %1473
  %1475 = fmul fast float %1474, 5.000000e-01
  %1476 = fsub fast float %1471, %1473
  %1477 = fmul fast float %1476, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1481 = fsub fast float %1479, %1480
  %1482 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1477, float %1481, float %1475, float %1477, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = call float @dx.op.unary.f32(i32 25, float %1482)  ; Rsqrt(value)
  %1484 = fmul fast float %1475, %1483
  %1485 = fmul fast float %1477, %1483
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 67108864
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1506, label %1490

; <label>:1490                                    ; preds = %1438
  %1491 = add i32 %33, 296
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 65535
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = lshr i32 %1493, 16
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = fsub fast float %1463, %1501
  %1503 = fmul fast float %1502, %1495
  %1504 = fadd fast float %1503, %1499
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  br label %1506

; <label>:1506                                    ; preds = %1490, %1438
  %1507 = phi float [ %1505, %1490 ], [ %1463, %1438 ]
  %1508 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %927, float %928)  ; Dot2(ax,ay,bx,by)
  %1509 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %929, float %930)  ; Dot2(ax,ay,bx,by)
  br label %1510

; <label>:1510                                    ; preds = %1506, %1416
  %1511 = phi float [ %1507, %1506 ], [ 0x3FD6666660000000, %1416 ]
  %1512 = phi float [ %1508, %1506 ], [ 0.000000e+00, %1416 ]
  %1513 = phi float [ %1509, %1506 ], [ 0.000000e+00, %1416 ]
  %1514 = phi float [ %1450, %1506 ], [ 1.000000e+00, %1416 ]
  %1515 = add i32 %33, 176
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = lshr i32 %1517, 22
  %1519 = shl nuw nsw i32 %1518, 5
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 64
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1558, label %1525

; <label>:1525                                    ; preds = %1510
  %1526 = add i32 %33, 444
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 131072
  %1534 = icmp eq i32 %1533, 0
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %64, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.ResRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.ResRet.f32 %1535, 2
  %1539 = fmul fast float %1536, %253
  %1540 = fmul fast float %1537, %256
  %1541 = fmul fast float %1538, %259
  br i1 %1534, label %1548, label %1542

; <label>:1542                                    ; preds = %1525
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 0
  %1545 = fmul fast float %1544, %1539
  %1546 = fmul fast float %1544, %1540
  %1547 = fmul fast float %1544, %1541
  br label %1548

; <label>:1548                                    ; preds = %1542, %1525
  %1549 = phi float [ %1545, %1542 ], [ %1539, %1525 ]
  %1550 = phi float [ %1546, %1542 ], [ %1540, %1525 ]
  %1551 = phi float [ %1547, %1542 ], [ %1541, %1525 ]
  %1552 = fmul fast float %1549, %1520
  %1553 = select i1 %205, float %1552, float %1549
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = select i1 %205, float 0.000000e+00, float %1549
  %1556 = select i1 %205, float %1554, float %1550
  %1557 = select i1 %205, float 0.000000e+00, float %1551
  br label %1558

; <label>:1558                                    ; preds = %1548, %1510
  %1559 = phi float [ %1555, %1548 ], [ 0.000000e+00, %1510 ]
  %1560 = phi float [ %1556, %1548 ], [ 0.000000e+00, %1510 ]
  %1561 = phi float [ %1557, %1548 ], [ 0.000000e+00, %1510 ]
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 1024
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1596, label %1566

; <label>:1566                                    ; preds = %1558
  %1567 = add i32 %33, 168
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = lshr i32 %1569, 8
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = lshr i32 %1569, 16
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = fmul fast float %1572, %1572
  %1582 = fmul fast float %1576, %1576
  %1583 = fmul fast float %1580, %1580
  %1584 = add i32 %33, 508
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %65, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.ResRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1589, 2
  %1593 = fmul fast float %1581, %1590
  %1594 = fmul fast float %1582, %1591
  %1595 = fmul fast float %1583, %1592
  br label %1596

; <label>:1596                                    ; preds = %1566, %1558
  %1597 = phi float [ %1593, %1566 ], [ 0.000000e+00, %1558 ]
  %1598 = phi float [ %1594, %1566 ], [ 0.000000e+00, %1558 ]
  %1599 = phi float [ %1595, %1566 ], [ 0.000000e+00, %1558 ]
  %1600 = fcmp fast ogt float %1597, 0.000000e+00
  %1601 = fcmp fast ogt float %1598, 0.000000e+00
  %1602 = fcmp fast ogt float %1599, 0.000000e+00
  %1603 = call float @dx.op.unary.f32(i32 23, float %1597)  ; Log(value)
  %1604 = call float @dx.op.unary.f32(i32 23, float %1598)  ; Log(value)
  %1605 = call float @dx.op.unary.f32(i32 23, float %1599)  ; Log(value)
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 7
  %1609 = and i32 %1608, 32752
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = fmul fast float %1603, 0xBFE62E4300000000
  %1612 = fmul fast float %1611, %1610
  %1613 = fmul fast float %1604, 0xBFE62E4300000000
  %1614 = fmul fast float %1613, %1610
  %1615 = fmul fast float %1605, 0xBFE62E4300000000
  %1616 = fmul fast float %1615, %1610
  %1617 = select i1 %1600, float %1612, float 1.270000e+02
  %1618 = select i1 %1601, float %1614, float 1.270000e+02
  %1619 = select i1 %1602, float %1616, float 1.270000e+02
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 10240
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1644, label %1624

; <label>:1624                                    ; preds = %1596
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 2048
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1644, label %1629

; <label>:1629                                    ; preds = %1624
  %1630 = add i32 %33, 524
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = add i32 %1632, 0
  %1634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1634, %dx.types.Handle %65, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 3
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = shl i32 %1638, 4
  %1640 = and i32 %1639, 32752
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = fmul fast float %1641, %1636
  %1643 = call float @dx.op.binary.f32(i32 35, float %1642, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1644

; <label>:1644                                    ; preds = %1629, %1624, %1596
  %1645 = phi float [ %1643, %1629 ], [ 0x3F70101020000000, %1624 ], [ 0x3F70101020000000, %1596 ]
  %1646 = add i32 %33, 112
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 255
  %1650 = uitofp i32 %1649 to float
  %1651 = lshr i32 %1648, 8
  %1652 = and i32 %1651, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1655 = fmul fast float %1653, %1654
  %1656 = fadd fast float %1655, %1650
  %1657 = fmul fast float %1656, 0x3F70101020000000
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  br i1 %915, label %1659, label %1694

; <label>:1659                                    ; preds = %1644
  %1660 = fmul fast float %1645, 2.000000e+00
  %1661 = fcmp fast olt float %1617, 1.270000e+02
  %1662 = fcmp fast olt float %1618, 1.270000e+02
  %1663 = fcmp fast olt float %1619, 1.270000e+02
  %1664 = fmul fast float %1617, 0xBFF7154760000000
  %1665 = fmul fast float %1664, %1660
  %1666 = fmul fast float %1618, 0xBFF7154760000000
  %1667 = fmul fast float %1666, %1660
  %1668 = fmul fast float %1619, 0xBFF7154760000000
  %1669 = fmul fast float %1668, %1660
  %1670 = call float @dx.op.unary.f32(i32 21, float %1665)  ; Exp(value)
  %1671 = call float @dx.op.unary.f32(i32 21, float %1667)  ; Exp(value)
  %1672 = call float @dx.op.unary.f32(i32 21, float %1669)  ; Exp(value)
  %1673 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1674 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1675 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1676 = fadd fast float %1673, -1.000000e+00
  %1677 = select i1 %1661, float %1676, float -1.000000e+00
  %1678 = fadd fast float %1674, -1.000000e+00
  %1679 = select i1 %1662, float %1678, float -1.000000e+00
  %1680 = fadd fast float %1675, -1.000000e+00
  %1681 = select i1 %1663, float %1680, float -1.000000e+00
  %1682 = fmul fast float %1677, %1211
  %1683 = fmul fast float %1679, %1211
  %1684 = fmul fast float %1681, %1211
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fmul fast float %1685, %903
  %1689 = fmul fast float %1686, %904
  %1690 = fmul fast float %1687, %905
  %1691 = fmul fast float %1685, %906
  %1692 = fmul fast float %1686, %907
  %1693 = fmul fast float %1687, %908
  br label %1694

; <label>:1694                                    ; preds = %1659, %1644
  %1695 = phi float [ %1688, %1659 ], [ %903, %1644 ]
  %1696 = phi float [ %1689, %1659 ], [ %904, %1644 ]
  %1697 = phi float [ %1690, %1659 ], [ %905, %1644 ]
  %1698 = phi float [ %1691, %1659 ], [ %906, %1644 ]
  %1699 = phi float [ %1692, %1659 ], [ %907, %1644 ]
  %1700 = phi float [ %1693, %1659 ], [ %908, %1644 ]
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 3
  %1704 = icmp eq i32 %1703, 3
  br i1 %1704, label %1783, label %1705

; <label>:1705                                    ; preds = %1694
  %1706 = and i32 %1702, 16
  %1707 = icmp ne i32 %1706, 0
  %1708 = select i1 %1707, float %1211, float 0.000000e+00
  %1709 = icmp eq i32 %1703, 0
  br i1 %1709, label %1710, label %1738

; <label>:1710                                    ; preds = %1705
  %1711 = and i32 %1702, 64
  %1712 = icmp ne i32 %1711, 0
  %1713 = select i1 %1712, float %1211, float 0.000000e+00
  %1714 = fsub fast float %1431, %1695
  %1715 = fsub fast float %1432, %1696
  %1716 = fsub fast float %1433, %1697
  %1717 = fmul fast float %1708, %1714
  %1718 = fmul fast float %1708, %1715
  %1719 = fmul fast float %1708, %1716
  %1720 = fadd fast float %1717, %1695
  %1721 = fadd fast float %1718, %1696
  %1722 = fadd fast float %1719, %1697
  %1723 = fsub fast float %1417, %909
  %1724 = fmul fast float %1708, %1723
  %1725 = fadd fast float %1724, %909
  %1726 = fsub fast float %1559, %1698
  %1727 = fsub fast float %1560, %1699
  %1728 = fsub fast float %1561, %1700
  %1729 = fmul fast float %1713, %1726
  %1730 = fmul fast float %1713, %1727
  %1731 = fmul fast float %1713, %1728
  %1732 = fadd fast float %1729, %1698
  %1733 = fadd fast float %1730, %1699
  %1734 = fadd fast float %1731, %1700
  %1735 = fsub fast float %1658, %913
  %1736 = fmul fast float %1708, %1735
  %1737 = fadd fast float %1736, %913
  br label %1783

; <label>:1738                                    ; preds = %1705
  %1739 = icmp eq i32 %1703, 1
  br i1 %1739, label %1740, label %1753

; <label>:1740                                    ; preds = %1738
  %1741 = fadd fast float %1431, -1.000000e+00
  %1742 = fadd fast float %1432, -1.000000e+00
  %1743 = fadd fast float %1433, -1.000000e+00
  %1744 = fmul fast float %1708, %1741
  %1745 = fmul fast float %1708, %1742
  %1746 = fmul fast float %1708, %1743
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fadd fast float %1746, 1.000000e+00
  %1750 = fmul fast float %1747, %1695
  %1751 = fmul fast float %1748, %1696
  %1752 = fmul fast float %1749, %1697
  br label %1783

; <label>:1753                                    ; preds = %1738
  %1754 = icmp eq i32 %1703, 2
  br i1 %1754, label %1755, label %1783

; <label>:1755                                    ; preds = %1753
  %1756 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1758 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1759 = fadd fast float %1756, -5.000000e-01
  %1760 = fadd fast float %1757, -5.000000e-01
  %1761 = fadd fast float %1758, -5.000000e-01
  %1762 = fmul fast float %1759, %1708
  %1763 = fmul fast float %1760, %1708
  %1764 = fmul fast float %1761, %1708
  %1765 = fadd fast float %1762, 5.000000e-01
  %1766 = fadd fast float %1763, 5.000000e-01
  %1767 = fadd fast float %1764, 5.000000e-01
  %1768 = fmul fast float %1765, 2.000000e+00
  %1769 = fsub fast float 1.000000e+00, %1768
  %1770 = fmul fast float %1769, %1695
  %1771 = fadd fast float %1770, %1768
  %1772 = fmul fast float %1771, %1695
  %1773 = fmul fast float %1766, 2.000000e+00
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = fmul fast float %1774, %1696
  %1776 = fadd fast float %1775, %1773
  %1777 = fmul fast float %1776, %1696
  %1778 = fmul fast float %1767, 2.000000e+00
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = fmul fast float %1779, %1697
  %1781 = fadd fast float %1780, %1778
  %1782 = fmul fast float %1781, %1697
  br label %1783

; <label>:1783                                    ; preds = %1755, %1753, %1740, %1710, %1694
  %1784 = phi float [ %1695, %1694 ], [ %1772, %1755 ], [ %1695, %1753 ], [ %1750, %1740 ], [ %1720, %1710 ]
  %1785 = phi float [ %1696, %1694 ], [ %1777, %1755 ], [ %1696, %1753 ], [ %1751, %1740 ], [ %1721, %1710 ]
  %1786 = phi float [ %1697, %1694 ], [ %1782, %1755 ], [ %1697, %1753 ], [ %1752, %1740 ], [ %1722, %1710 ]
  %1787 = phi float [ %1698, %1694 ], [ %1698, %1755 ], [ %1698, %1753 ], [ %1698, %1740 ], [ %1732, %1710 ]
  %1788 = phi float [ %1699, %1694 ], [ %1699, %1755 ], [ %1699, %1753 ], [ %1699, %1740 ], [ %1733, %1710 ]
  %1789 = phi float [ %1700, %1694 ], [ %1700, %1755 ], [ %1700, %1753 ], [ %1700, %1740 ], [ %1734, %1710 ]
  %1790 = phi float [ %909, %1694 ], [ %909, %1755 ], [ %909, %1753 ], [ %909, %1740 ], [ %1725, %1710 ]
  %1791 = phi float [ %913, %1694 ], [ %913, %1755 ], [ %913, %1753 ], [ %913, %1740 ], [ %1737, %1710 ]
  %1792 = and i32 %1702, 12
  %1793 = icmp eq i32 %1792, 12
  br i1 %1793, label %1866, label %1794

; <label>:1794                                    ; preds = %1783
  %1795 = and i32 %1702, 2097184
  %1796 = icmp eq i32 %1795, 2097184
  %1797 = select i1 %1796, float %1211, float 0.000000e+00
  %1798 = and i32 %1702, 4194336
  %1799 = icmp eq i32 %1798, 4194336
  %1800 = select i1 %1799, float %1211, float 0.000000e+00
  %1801 = and i32 %1702, 8388640
  %1802 = icmp eq i32 %1801, 8388640
  %1803 = select i1 %1802, float %1211, float 0.000000e+00
  %1804 = icmp eq i32 %1792, 0
  br i1 %1804, label %1805, label %1818

; <label>:1805                                    ; preds = %1794
  %1806 = fsub fast float %1512, %901
  %1807 = fsub fast float %1513, %902
  %1808 = fmul fast float %1797, %1806
  %1809 = fmul fast float %1797, %1807
  %1810 = fadd fast float %1808, %901
  %1811 = fadd fast float %1809, %902
  %1812 = fsub fast float %1514, %912
  %1813 = fmul fast float %1800, %1812
  %1814 = fadd fast float %1813, %912
  %1815 = fsub fast float %1511, %911
  %1816 = fmul fast float %1803, %1815
  %1817 = fadd fast float %1816, %911
  br label %1866

; <label>:1818                                    ; preds = %1794
  %1819 = icmp eq i32 %1792, 4
  br i1 %1819, label %1820, label %1852

; <label>:1820                                    ; preds = %1818
  %1821 = fmul fast float %1797, %1512
  %1822 = fmul fast float %1797, %1513
  %1823 = fadd fast float %1821, %901
  %1824 = fadd fast float %1822, %902
  %1825 = call float @dx.op.binary.f32(i32 36, float %912, float %1514)  ; FMin(a,b)
  %1826 = fsub fast float %1825, %912
  %1827 = fmul fast float %1826, %1800
  %1828 = fadd fast float %1827, %912
  %1829 = fadd fast float %1511, %911
  %1830 = fmul fast float %1829, 0x3FF337FAE0000000
  %1831 = fmul fast float %911, %911
  %1832 = fmul fast float %1511, %1511
  %1833 = fadd fast float %1832, %1831
  %1834 = fmul fast float %1833, 0x3FE5152B00000000
  %1835 = fmul fast float %911, 0xBFCC1F85E0000000
  %1836 = fmul fast float %1835, %1511
  %1837 = fadd fast float %1836, 0xBFE1363700000000
  %1838 = fadd fast float %1837, %1830
  %1839 = fsub fast float %1838, %1834
  %1840 = fmul fast float %1829, 0x3FBA6F0D00000000
  %1841 = fmul fast float %1833, 0x3FD0432880000000
  %1842 = fmul fast float %911, 0xBFEF110800000000
  %1843 = fmul fast float %1842, %1511
  %1844 = fadd fast float %1843, 1.000000e+00
  %1845 = fsub fast float %1844, %1840
  %1846 = fadd fast float %1845, %1841
  %1847 = fdiv fast float %1839, %1846
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = fsub fast float %1848, %911
  %1850 = fmul fast float %1849, %1803
  %1851 = fadd fast float %1850, %911
  br label %1866

; <label>:1852                                    ; preds = %1818
  %1853 = icmp eq i32 %1792, 8
  br i1 %1853, label %1854, label %1866

; <label>:1854                                    ; preds = %1852
  %1855 = fmul fast float %1797, %1512
  %1856 = fmul fast float %1797, %1513
  %1857 = fadd fast float %1855, %901
  %1858 = fadd fast float %1856, %902
  %1859 = call float @dx.op.binary.f32(i32 36, float %912, float %1514)  ; FMin(a,b)
  %1860 = fsub fast float %1859, %912
  %1861 = fmul fast float %1860, %1800
  %1862 = fadd fast float %1861, %912
  %1863 = fsub fast float %1511, %911
  %1864 = fmul fast float %1803, %1863
  %1865 = fadd fast float %1864, %911
  br label %1866

; <label>:1866                                    ; preds = %1854, %1852, %1820, %1805, %1783, %1210, %914, %900
  %1867 = phi float [ %901, %1783 ], [ %901, %1210 ], [ %901, %900 ], [ %1857, %1854 ], [ %901, %1852 ], [ %1823, %1820 ], [ %1810, %1805 ], [ %901, %914 ]
  %1868 = phi float [ %902, %1783 ], [ %902, %1210 ], [ %902, %900 ], [ %1858, %1854 ], [ %902, %1852 ], [ %1824, %1820 ], [ %1811, %1805 ], [ %902, %914 ]
  %1869 = phi float [ %1784, %1783 ], [ %903, %1210 ], [ %903, %900 ], [ %1784, %1854 ], [ %1784, %1852 ], [ %1784, %1820 ], [ %1784, %1805 ], [ %903, %914 ]
  %1870 = phi float [ %1785, %1783 ], [ %904, %1210 ], [ %904, %900 ], [ %1785, %1854 ], [ %1785, %1852 ], [ %1785, %1820 ], [ %1785, %1805 ], [ %904, %914 ]
  %1871 = phi float [ %1786, %1783 ], [ %905, %1210 ], [ %905, %900 ], [ %1786, %1854 ], [ %1786, %1852 ], [ %1786, %1820 ], [ %1786, %1805 ], [ %905, %914 ]
  %1872 = phi float [ %1787, %1783 ], [ %906, %1210 ], [ %906, %900 ], [ %1787, %1854 ], [ %1787, %1852 ], [ %1787, %1820 ], [ %1787, %1805 ], [ %906, %914 ]
  %1873 = phi float [ %1788, %1783 ], [ %907, %1210 ], [ %907, %900 ], [ %1788, %1854 ], [ %1788, %1852 ], [ %1788, %1820 ], [ %1788, %1805 ], [ %907, %914 ]
  %1874 = phi float [ %1789, %1783 ], [ %908, %1210 ], [ %908, %900 ], [ %1789, %1854 ], [ %1789, %1852 ], [ %1789, %1820 ], [ %1789, %1805 ], [ %908, %914 ]
  %1875 = phi float [ %1790, %1783 ], [ %909, %1210 ], [ %909, %900 ], [ %1790, %1854 ], [ %1790, %1852 ], [ %1790, %1820 ], [ %1790, %1805 ], [ %909, %914 ]
  %1876 = phi float [ %911, %1783 ], [ %911, %1210 ], [ %911, %900 ], [ %1865, %1854 ], [ %911, %1852 ], [ %1851, %1820 ], [ %1817, %1805 ], [ %911, %914 ]
  %1877 = phi float [ %912, %1783 ], [ %912, %1210 ], [ %912, %900 ], [ %1862, %1854 ], [ %912, %1852 ], [ %1828, %1820 ], [ %1814, %1805 ], [ %912, %914 ]
  %1878 = phi float [ %1791, %1783 ], [ %913, %1210 ], [ %913, %900 ], [ %1791, %1854 ], [ %1791, %1852 ], [ %1791, %1820 ], [ %1791, %1805 ], [ %913, %914 ]
  br i1 %380, label %2831, label %1879

; <label>:1879                                    ; preds = %1866
  %1880 = icmp ult i32 %433, 3
  %1881 = add i32 %33, 56
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = add i32 %33, 60
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = or i32 %1886, %1883
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %2831, label %1889

; <label>:1889                                    ; preds = %1879
  %1890 = and i32 %1883, 262144
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %36, float 1.000000e+00
  %1893 = select i1 %1891, float %37, float 0.000000e+00
  %1894 = select i1 %1891, float %38, float 0.000000e+00
  %1895 = select i1 %1891, float %39, float 1.000000e+00
  %1896 = select i1 %1891, float %40, float %56
  %1897 = select i1 %1891, float %41, float %57
  %1898 = add i32 %33, 316
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = lshr i32 %1900, 16
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = fmul fast float %1902, 0x3F50624DE0000000
  %1904 = add i32 %33, 120
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 16
  %1908 = and i32 %1907, 255
  %1909 = lshr i32 %1906, 24
  %1910 = add i32 %33, 324
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 65535
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1912, 16
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = add i32 %33, 64
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = lshr i32 %1919, 22
  %1921 = shl nuw nsw i32 %1920, 5
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = shl i32 %1919, 4
  %1924 = and i32 %1923, 32752
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = lshr i32 %1919, 7
  %1927 = and i32 %1926, 32752
  %1928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1927)  ; LegacyF16ToF32(value)
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 3
  %1931 = fmul fast float %1930, 1.000000e+03
  %1932 = fmul fast float %330, %1931
  %1933 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1934 = fadd fast float %1933, %320
  %1935 = fmul fast float %331, %1931
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = fadd fast float %1936, %322
  %1938 = fmul fast float %1903, %1931
  %1939 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1940 = fmul fast float %1939, 0x401921FB60000000
  %1941 = fadd fast float %1940, %1922
  %1942 = call float @dx.op.unary.f32(i32 13, float %1941)  ; Sin(value)
  %1943 = call float @dx.op.unary.f32(i32 12, float %1941)  ; Cos(value)
  %1944 = fsub fast float -0.000000e+00, %1942
  %1945 = fadd fast float %1896, -5.000000e-01
  %1946 = fadd fast float %1897, -5.000000e-01
  %1947 = fmul fast float %1914, %1945
  %1948 = fmul fast float %1916, %1946
  %1949 = fadd fast float %1947, 5.000000e-01
  %1950 = fadd fast float %1948, 5.000000e-01
  %1951 = fmul fast float %1925, %1949
  %1952 = fmul fast float %1928, %1950
  %1953 = fmul fast float %1943, %1951
  %1954 = call float @dx.op.tertiary.f32(i32 46, float %1944, float %1952, float %1953)  ; FMad(a,b,c)
  %1955 = fmul fast float %1942, %1951
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1943, float %1952, float %1955)  ; FMad(a,b,c)
  %1957 = fadd fast float %1934, %1954
  %1958 = fadd fast float %1937, %1956
  %1959 = icmp ugt i32 %1908, 1
  %1960 = icmp ugt i32 %1906, 33554431
  %1961 = or i1 %1960, %1959
  br i1 %1961, label %1962, label %1987

; <label>:1962                                    ; preds = %1889
  %1963 = add i32 %33, 260
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = lshr i32 %1965, 16
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = fmul fast float %1930, %1967
  %1969 = call float @dx.op.unary.f32(i32 22, float %1968)  ; Frc(value)
  %1970 = mul nuw nsw i32 %1908, %1909
  %1971 = uitofp i32 %1970 to float
  %1972 = fmul fast float %1969, %1971
  %1973 = call float @dx.op.unary.f32(i32 27, float %1972)  ; Round_ni(value)
  %1974 = fptoui float %1973 to i32
  %1975 = urem i32 %1974, %1908
  %1976 = udiv i32 %1974, %1909
  %1977 = call float @dx.op.unary.f32(i32 22, float %1957)  ; Frc(value)
  %1978 = call float @dx.op.unary.f32(i32 22, float %1958)  ; Frc(value)
  %1979 = uitofp i32 %1975 to float
  %1980 = uitofp i32 %1976 to float
  %1981 = fadd fast float %1977, %1979
  %1982 = fadd fast float %1978, %1980
  %1983 = uitofp i32 %1908 to float
  %1984 = uitofp i32 %1909 to float
  %1985 = fdiv fast float %1981, %1983
  %1986 = fdiv fast float %1982, %1984
  br label %1987

; <label>:1987                                    ; preds = %1962, %1889
  %1988 = phi float [ %1985, %1962 ], [ %1957, %1889 ]
  %1989 = phi float [ %1986, %1962 ], [ %1958, %1889 ]
  %1990 = and i32 %1883, 16777216
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2101, label %1992

; <label>:1992                                    ; preds = %1987
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %1996 = extractvalue %dx.types.CBufRet.f32 %1993, 2
  %1997 = fadd fast float %1994, %131
  %1998 = fadd fast float %1995, %132
  %1999 = fadd fast float %1996, %133
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = icmp eq i32 %34, 65535
  br i1 %2003, label %2098, label %2004

; <label>:2004                                    ; preds = %1992
  %2005 = lshr i32 %34, 1
  %2006 = shl i32 %2005, 2
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %34, 1
  %2010 = icmp ne i32 %2009, 0
  %2011 = lshr i32 %2008, 16
  %2012 = and i32 %2008, 65535
  %2013 = select i1 %2010, i32 %2011, i32 %2012
  %2014 = icmp eq i32 %2013, 65535
  br i1 %2014, label %2094, label %2015

; <label>:2015                                    ; preds = %2004
  %2016 = mul nuw nsw i32 %2013, 40
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = add nuw nsw i32 %2016, 12
  %2022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.ResRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.ResRet.f32 %2022, 2
  %2026 = add nuw nsw i32 %2016, 24
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.ResRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2031 = add nuw nsw i32 %2016, 36
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = fsub fast float %1997, %2018
  %2035 = fsub fast float %1998, %2019
  %2036 = fsub fast float %1999, %2020
  %2037 = fmul fast float %2033, %2034
  %2038 = fmul fast float %2033, %2035
  %2039 = fmul fast float %2033, %2036
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2043 = fadd fast float %2040, 5.000000e-01
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fmul fast float %2043, %2023
  %2047 = fmul fast float %2044, %2024
  %2048 = fmul fast float %2045, %2025
  %2049 = shl i32 %34, 2
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = add i32 %2051, 0
  %2053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2054 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2055 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2056 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2053, %dx.types.Handle %30, float %2054, float %2055, float %2056, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = fmul fast float %2058, 1.023000e+03
  %2062 = fmul fast float %2059, 1.023000e+03
  %2063 = fmul fast float %2060, 1.023000e+03
  %2064 = fadd fast float %2061, 5.000000e-01
  %2065 = fadd fast float %2062, 5.000000e-01
  %2066 = fadd fast float %2063, 5.000000e-01
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = fsub fast float %2037, %2040
  %2071 = fsub fast float %2038, %2041
  %2072 = fsub fast float %2039, %2042
  %2073 = fmul fast float %2070, 7.500000e-01
  %2074 = fmul fast float %2071, 7.500000e-01
  %2075 = fmul fast float %2072, 7.500000e-01
  %2076 = fadd fast float %2040, 1.250000e-01
  %2077 = fadd fast float %2076, %2073
  %2078 = fadd fast float %2077, %2067
  %2079 = fadd fast float %2041, 1.250000e-01
  %2080 = fadd fast float %2079, %2074
  %2081 = fadd fast float %2080, %2068
  %2082 = fadd fast float %2042, 1.250000e-01
  %2083 = fadd fast float %2082, %2075
  %2084 = fadd fast float %2083, %2069
  %2085 = fmul fast float %2078, %2028
  %2086 = fmul fast float %2081, %2029
  %2087 = fmul fast float %2084, %2030
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2091, %dx.types.Handle %28, float %2085, float %2086, float %2087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  br label %2094

; <label>:2094                                    ; preds = %2015, %2004
  %2095 = phi float [ %2093, %2015 ], [ -1.000000e+00, %2004 ]
  %2096 = fadd fast float %2095, %2002
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  br label %2098

; <label>:2098                                    ; preds = %2094, %1992
  %2099 = phi float [ %2097, %2094 ], [ %2002, %1992 ]
  %2100 = fmul fast float %2099, %429
  br label %2101

; <label>:2101                                    ; preds = %2098, %1987
  %2102 = phi float [ %2100, %2098 ], [ %429, %1987 ]
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 256
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2153, label %2107

; <label>:2107                                    ; preds = %2101
  %2108 = add i32 %33, 480
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %2110, 0
  %2112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2112, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = add i32 %33, 132
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = shl i32 %2117, 4
  %2119 = and i32 %2118, 32752
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = lshr i32 %2117, 7
  %2122 = and i32 %2121, 32752
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fsub fast float 1.000000e+00, %2102
  %2125 = call float @dx.op.binary.f32(i32 35, float %2124, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2126 = bitcast float %2102 to i32
  %2127 = sitofp i32 %2126 to float
  %2128 = fadd fast float %2127, 0xC1CFBF8940000000
  %2129 = fmul fast float %2123, %2128
  %2130 = fadd fast float %2129, 0x41CFBF8940000000
  %2131 = fptosi float %2130 to i32
  %2132 = bitcast i32 %2131 to float
  %2133 = bitcast float %2125 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2135, %2123
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2132, %2120
  %2141 = fmul fast float %2139, %2120
  %2142 = fsub fast float %2125, %2140
  %2143 = fadd fast float %2141, %2125
  %2144 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2146 = fsub fast float %2114, %2144
  %2147 = fsub fast float %2145, %2144
  %2148 = bitcast float %2147 to i32
  %2149 = sub nsw i32 2129859010, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2150, %2146
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2107, %2101
  %2154 = phi float [ %2152, %2107 ], [ %2102, %2101 ]
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 128
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2175, label %2159

; <label>:2159                                    ; preds = %2153
  %2160 = add i32 %33, 464
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 524288
  %2170 = icmp ne i32 %2169, 0
  %2171 = fcmp fast ogt float %2166, 0x3FE0101020000000
  %2172 = select i1 %2171, float 1.000000e+00, float 0.000000e+00
  %2173 = select i1 %2170, float %2172, float %2166
  %2174 = fmul fast float %2173, %2154
  br label %2175

; <label>:2175                                    ; preds = %2159, %2153
  %2176 = phi float [ %2174, %2159 ], [ %2154, %2153 ]
  %2177 = fcmp fast ult float %2176, 0x3F70101020000000
  br i1 %2177, label %2831, label %2178

; <label>:2178                                    ; preds = %2175
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 16
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2381, label %2183

; <label>:2183                                    ; preds = %2178
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = add i32 %33, 416
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = add i32 %2188, 0
  %2190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2190, %dx.types.Handle %64, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.ResRet.f32 %2191, 3
  %2196 = and i32 %2185, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = lshr i32 %2185, 8
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2195, %2197
  %2202 = fadd fast float %2201, %2200
  %2203 = fmul fast float %2202, 0x3F70101000000000
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 512
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2216, label %2208

; <label>:2208                                    ; preds = %2183
  %2209 = add i32 %33, 496
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %2211, 0
  %2213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2213, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  br label %2216

; <label>:2216                                    ; preds = %2208, %2183
  %2217 = phi float [ %2215, %2208 ], [ 1.000000e+00, %2183 ]
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 33554432
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2328, label %2222

; <label>:2222                                    ; preds = %2216
  %2223 = add i32 %33, 256
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 65535
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = lshr i32 %2225, 16
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = add i32 %33, 260
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = lshr i32 %2236, 24
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = and i32 %2236, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = lshr i32 %2236, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = lshr i32 %2236, 16
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = add i32 %33, 252
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = lshr i32 %2253, 24
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = and i32 %2253, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = lshr i32 %2253, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2253, 16
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = bitcast float %2192 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597463174, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2192, 5.000000e-01
  %2273 = fmul fast float %2271, %2271
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.500000e+00, %2274
  %2276 = fmul fast float %2271, %2192
  %2277 = fmul fast float %2276, %2275
  %2278 = bitcast float %2193 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = sub nsw i32 1597463174, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2193, 5.000000e-01
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, %2282
  %2285 = fsub fast float 1.500000e+00, %2284
  %2286 = fmul fast float %2281, %2193
  %2287 = fmul fast float %2286, %2285
  %2288 = bitcast float %2194 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = sub nsw i32 1597463174, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2194, 5.000000e-01
  %2293 = fmul fast float %2291, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fsub fast float 1.500000e+00, %2294
  %2296 = fmul fast float %2291, %2194
  %2297 = fmul fast float %2296, %2295
  %2298 = fsub fast float %2277, %2259
  %2299 = fsub fast float %2287, %2263
  %2300 = fsub fast float %2297, %2267
  %2301 = fmul fast float %2298, %2227
  %2302 = fmul fast float %2299, %2229
  %2303 = fmul fast float %2300, %2234
  %2304 = fadd fast float %2301, %2242
  %2305 = fadd fast float %2302, %2246
  %2306 = fadd fast float %2303, %2250
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2308, %2308
  %2312 = fmul fast float %2309, %2309
  %2313 = fsub fast float %2310, %2192
  %2314 = fsub fast float %2311, %2193
  %2315 = fsub fast float %2312, %2194
  %2316 = fmul fast float %2313, %2217
  %2317 = fmul fast float %2314, %2217
  %2318 = fmul fast float %2315, %2217
  %2319 = fadd fast float %2316, %2192
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2239, %2203
  %2323 = fsub fast float %2322, %2256
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = fsub fast float %2324, %2203
  %2326 = fmul fast float %2325, %2217
  %2327 = fadd fast float %2326, %2203
  br label %2381

; <label>:2328                                    ; preds = %2216
  %2329 = and i32 %2219, 134217728
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2365, label %2331

; <label>:2331                                    ; preds = %2328
  %2332 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2335 = fadd fast float %2332, -5.000000e-01
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fmul fast float %2335, %2217
  %2339 = fmul fast float %2336, %2217
  %2340 = fmul fast float %2337, %2217
  %2341 = fadd fast float %2338, 5.000000e-01
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = fmul fast float %2341, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, %2344
  %2350 = fadd fast float %2349, %2347
  %2351 = fmul fast float %2350, %2344
  %2352 = fmul fast float %2342, 2.000000e+00
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2353, %2345
  %2355 = fadd fast float %2354, %2352
  %2356 = fmul fast float %2355, %2345
  %2357 = fmul fast float %2343, 2.000000e+00
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2358, %2346
  %2360 = fadd fast float %2359, %2357
  %2361 = fmul fast float %2360, %2346
  %2362 = fmul fast float %2351, %2351
  %2363 = fmul fast float %2356, %2356
  %2364 = fmul fast float %2361, %2361
  br label %2381

; <label>:2365                                    ; preds = %2328
  %2366 = fmul fast float %307, %307
  %2367 = fmul fast float %311, %311
  %2368 = fmul fast float %315, %315
  %2369 = fadd fast float %2366, -1.000000e+00
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fmul fast float %2217, %2369
  %2373 = fmul fast float %2217, %2370
  %2374 = fmul fast float %2217, %2371
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fmul fast float %2375, %2192
  %2379 = fmul fast float %2376, %2193
  %2380 = fmul fast float %2377, %2194
  br label %2381

; <label>:2381                                    ; preds = %2365, %2331, %2222, %2178
  %2382 = phi float [ %2327, %2222 ], [ %2203, %2331 ], [ %2203, %2365 ], [ 0x3FA23C0BE0000000, %2178 ]
  %2383 = phi float [ %2319, %2222 ], [ %2362, %2331 ], [ %2378, %2365 ], [ 1.000000e+00, %2178 ]
  %2384 = phi float [ %2320, %2222 ], [ %2363, %2331 ], [ %2379, %2365 ], [ 1.000000e+00, %2178 ]
  %2385 = phi float [ %2321, %2222 ], [ %2364, %2331 ], [ %2380, %2365 ], [ 1.000000e+00, %2178 ]
  %2386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.i32 %2386, 1
  %2388 = and i32 %2387, 1
  %2389 = icmp ne i32 %2388, 0
  %2390 = add i32 %33, 356
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp ne i32 %2393, 0
  %2395 = and i1 %2389, %2394
  %2396 = select i1 %2395, float 1.000000e+00, float %2383
  %2397 = select i1 %2395, float 0x3FD3333340000000, float %2384
  %2398 = select i1 %2395, float 0x3FD3333340000000, float %2385
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 32
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2475, label %2403

; <label>:2403                                    ; preds = %2381
  %2404 = add i32 %33, 124
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %33, 432
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2411, %dx.types.Handle %64, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.ResRet.f32 %2412, 3
  %2417 = and i32 %2406, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = lshr i32 %2406, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = lshr i32 %2406, 16
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101000000000
  %2426 = fmul fast float %2413, %2418
  %2427 = fadd fast float %2426, %2421
  %2428 = fmul fast float %2427, 0x3F70101000000000
  %2429 = fadd fast float %2414, -5.000000e-01
  %2430 = fadd fast float %2416, -5.000000e-01
  %2431 = fmul fast float %2429, %2425
  %2432 = fmul fast float %2430, %2425
  %2433 = fadd fast float %2431, 5.000000e-01
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fmul fast float %2433, 2.000000e+00
  %2436 = fadd fast float %2435, -1.000000e+00
  %2437 = fmul fast float %2434, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fadd fast float %2436, %2438
  %2440 = fmul fast float %2439, 5.000000e-01
  %2441 = fsub fast float %2436, %2438
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float %2444, %2445
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2442, float %2446, float %2440, float %2442, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.unary.f32(i32 25, float %2447)  ; Rsqrt(value)
  %2449 = fmul fast float %2440, %2448
  %2450 = fmul fast float %2442, %2448
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 67108864
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2471, label %2455

; <label>:2455                                    ; preds = %2403
  %2456 = add i32 %33, 312
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 65535
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 65535
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = lshr i32 %2458, 16
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = fsub fast float %2428, %2466
  %2468 = fmul fast float %2467, %2460
  %2469 = fadd fast float %2468, %2464
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  br label %2471

; <label>:2471                                    ; preds = %2455, %2403
  %2472 = phi float [ %2470, %2455 ], [ %2428, %2403 ]
  %2473 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %1892, float %1893)  ; Dot2(ax,ay,bx,by)
  %2474 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %1894, float %1895)  ; Dot2(ax,ay,bx,by)
  br label %2475

; <label>:2475                                    ; preds = %2471, %2381
  %2476 = phi float [ %2472, %2471 ], [ 0x3FD6666660000000, %2381 ]
  %2477 = phi float [ %2473, %2471 ], [ 0.000000e+00, %2381 ]
  %2478 = phi float [ %2474, %2471 ], [ 0.000000e+00, %2381 ]
  %2479 = phi float [ %2415, %2471 ], [ 1.000000e+00, %2381 ]
  %2480 = add i32 %33, 192
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 22
  %2484 = shl nuw nsw i32 %2483, 5
  %2485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2484)  ; LegacyF16ToF32(value)
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 64
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2523, label %2490

; <label>:2490                                    ; preds = %2475
  %2491 = add i32 %33, 448
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %2493, 0
  %2495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 131072
  %2499 = icmp eq i32 %2498, 0
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2495, %dx.types.Handle %64, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = fmul fast float %2501, %295
  %2505 = fmul fast float %2502, %298
  %2506 = fmul fast float %2503, %301
  br i1 %2499, label %2513, label %2507

; <label>:2507                                    ; preds = %2490
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = fmul fast float %2509, %2504
  %2511 = fmul fast float %2509, %2505
  %2512 = fmul fast float %2509, %2506
  br label %2513

; <label>:2513                                    ; preds = %2507, %2490
  %2514 = phi float [ %2510, %2507 ], [ %2504, %2490 ]
  %2515 = phi float [ %2511, %2507 ], [ %2505, %2490 ]
  %2516 = phi float [ %2512, %2507 ], [ %2506, %2490 ]
  %2517 = fmul fast float %2514, %2485
  %2518 = select i1 %205, float %2517, float %2514
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2515, float %2516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2520 = select i1 %205, float 0.000000e+00, float %2514
  %2521 = select i1 %205, float %2519, float %2515
  %2522 = select i1 %205, float 0.000000e+00, float %2516
  br label %2523

; <label>:2523                                    ; preds = %2513, %2475
  %2524 = phi float [ %2520, %2513 ], [ 0.000000e+00, %2475 ]
  %2525 = phi float [ %2521, %2513 ], [ 0.000000e+00, %2475 ]
  %2526 = phi float [ %2522, %2513 ], [ 0.000000e+00, %2475 ]
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 1024
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2561, label %2531

; <label>:2531                                    ; preds = %2523
  %2532 = add i32 %33, 184
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101020000000
  %2538 = lshr i32 %2534, 8
  %2539 = and i32 %2538, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = fmul fast float %2540, 0x3F70101020000000
  %2542 = lshr i32 %2534, 16
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = fmul fast float %2537, %2537
  %2547 = fmul fast float %2541, %2541
  %2548 = fmul fast float %2545, %2545
  %2549 = add i32 %33, 512
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = add i32 %2551, 0
  %2553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2553, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2555 = extractvalue %dx.types.ResRet.f32 %2554, 0
  %2556 = extractvalue %dx.types.ResRet.f32 %2554, 1
  %2557 = extractvalue %dx.types.ResRet.f32 %2554, 2
  %2558 = fmul fast float %2546, %2555
  %2559 = fmul fast float %2547, %2556
  %2560 = fmul fast float %2548, %2557
  br label %2561

; <label>:2561                                    ; preds = %2531, %2523
  %2562 = phi float [ %2558, %2531 ], [ 0.000000e+00, %2523 ]
  %2563 = phi float [ %2559, %2531 ], [ 0.000000e+00, %2523 ]
  %2564 = phi float [ %2560, %2531 ], [ 0.000000e+00, %2523 ]
  %2565 = fcmp fast ogt float %2562, 0.000000e+00
  %2566 = fcmp fast ogt float %2563, 0.000000e+00
  %2567 = fcmp fast ogt float %2564, 0.000000e+00
  %2568 = call float @dx.op.unary.f32(i32 23, float %2562)  ; Log(value)
  %2569 = call float @dx.op.unary.f32(i32 23, float %2563)  ; Log(value)
  %2570 = call float @dx.op.unary.f32(i32 23, float %2564)  ; Log(value)
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = lshr i32 %2572, 7
  %2574 = and i32 %2573, 32752
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fmul fast float %2568, 0xBFE62E4300000000
  %2577 = fmul fast float %2576, %2575
  %2578 = fmul fast float %2569, 0xBFE62E4300000000
  %2579 = fmul fast float %2578, %2575
  %2580 = fmul fast float %2570, 0xBFE62E4300000000
  %2581 = fmul fast float %2580, %2575
  %2582 = select i1 %2565, float %2577, float 1.270000e+02
  %2583 = select i1 %2566, float %2579, float 1.270000e+02
  %2584 = select i1 %2567, float %2581, float 1.270000e+02
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 10240
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2609, label %2589

; <label>:2589                                    ; preds = %2561
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = and i32 %2591, 2048
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %2609, label %2594

; <label>:2594                                    ; preds = %2589
  %2595 = add i32 %33, 528
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %2597, 0
  %2599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2599, %dx.types.Handle %65, float %1988, float %1989, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 3
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = shl i32 %2603, 4
  %2605 = and i32 %2604, 32752
  %2606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2605)  ; LegacyF16ToF32(value)
  %2607 = fmul fast float %2606, %2601
  %2608 = call float @dx.op.binary.f32(i32 35, float %2607, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2609

; <label>:2609                                    ; preds = %2594, %2589, %2561
  %2610 = phi float [ %2608, %2594 ], [ 0x3F70101020000000, %2589 ], [ 0x3F70101020000000, %2561 ]
  %2611 = add i32 %33, 128
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = lshr i32 %2613, 8
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = fmul fast float %2618, %2619
  %2621 = fadd fast float %2620, %2615
  %2622 = fmul fast float %2621, 0x3F70101020000000
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br i1 %1880, label %2624, label %2659

; <label>:2624                                    ; preds = %2609
  %2625 = fmul fast float %2610, 2.000000e+00
  %2626 = fcmp fast olt float %2582, 1.270000e+02
  %2627 = fcmp fast olt float %2583, 1.270000e+02
  %2628 = fcmp fast olt float %2584, 1.270000e+02
  %2629 = fmul fast float %2582, 0xBFF7154760000000
  %2630 = fmul fast float %2629, %2625
  %2631 = fmul fast float %2583, 0xBFF7154760000000
  %2632 = fmul fast float %2631, %2625
  %2633 = fmul fast float %2584, 0xBFF7154760000000
  %2634 = fmul fast float %2633, %2625
  %2635 = call float @dx.op.unary.f32(i32 21, float %2630)  ; Exp(value)
  %2636 = call float @dx.op.unary.f32(i32 21, float %2632)  ; Exp(value)
  %2637 = call float @dx.op.unary.f32(i32 21, float %2634)  ; Exp(value)
  %2638 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  %2639 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2640 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2641 = fadd fast float %2638, -1.000000e+00
  %2642 = select i1 %2626, float %2641, float -1.000000e+00
  %2643 = fadd fast float %2639, -1.000000e+00
  %2644 = select i1 %2627, float %2643, float -1.000000e+00
  %2645 = fadd fast float %2640, -1.000000e+00
  %2646 = select i1 %2628, float %2645, float -1.000000e+00
  %2647 = fmul fast float %2642, %2176
  %2648 = fmul fast float %2644, %2176
  %2649 = fmul fast float %2646, %2176
  %2650 = fadd fast float %2647, 1.000000e+00
  %2651 = fadd fast float %2648, 1.000000e+00
  %2652 = fadd fast float %2649, 1.000000e+00
  %2653 = fmul fast float %2650, %1869
  %2654 = fmul fast float %2651, %1870
  %2655 = fmul fast float %2652, %1871
  %2656 = fmul fast float %2650, %1872
  %2657 = fmul fast float %2651, %1873
  %2658 = fmul fast float %2652, %1874
  br label %2659

; <label>:2659                                    ; preds = %2624, %2609
  %2660 = phi float [ %2653, %2624 ], [ %1869, %2609 ]
  %2661 = phi float [ %2654, %2624 ], [ %1870, %2609 ]
  %2662 = phi float [ %2655, %2624 ], [ %1871, %2609 ]
  %2663 = phi float [ %2656, %2624 ], [ %1872, %2609 ]
  %2664 = phi float [ %2657, %2624 ], [ %1873, %2609 ]
  %2665 = phi float [ %2658, %2624 ], [ %1874, %2609 ]
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = and i32 %2667, 3
  %2669 = icmp eq i32 %2668, 3
  br i1 %2669, label %2748, label %2670

; <label>:2670                                    ; preds = %2659
  %2671 = and i32 %2667, 16
  %2672 = icmp ne i32 %2671, 0
  %2673 = select i1 %2672, float %2176, float 0.000000e+00
  %2674 = icmp eq i32 %2668, 0
  br i1 %2674, label %2675, label %2703

; <label>:2675                                    ; preds = %2670
  %2676 = and i32 %2667, 64
  %2677 = icmp ne i32 %2676, 0
  %2678 = select i1 %2677, float %2176, float 0.000000e+00
  %2679 = fsub fast float %2396, %2660
  %2680 = fsub fast float %2397, %2661
  %2681 = fsub fast float %2398, %2662
  %2682 = fmul fast float %2673, %2679
  %2683 = fmul fast float %2673, %2680
  %2684 = fmul fast float %2673, %2681
  %2685 = fadd fast float %2682, %2660
  %2686 = fadd fast float %2683, %2661
  %2687 = fadd fast float %2684, %2662
  %2688 = fsub fast float %2382, %1875
  %2689 = fmul fast float %2673, %2688
  %2690 = fadd fast float %2689, %1875
  %2691 = fsub fast float %2524, %2663
  %2692 = fsub fast float %2525, %2664
  %2693 = fsub fast float %2526, %2665
  %2694 = fmul fast float %2678, %2691
  %2695 = fmul fast float %2678, %2692
  %2696 = fmul fast float %2678, %2693
  %2697 = fadd fast float %2694, %2663
  %2698 = fadd fast float %2695, %2664
  %2699 = fadd fast float %2696, %2665
  %2700 = fsub fast float %2623, %1878
  %2701 = fmul fast float %2673, %2700
  %2702 = fadd fast float %2701, %1878
  br label %2748

; <label>:2703                                    ; preds = %2670
  %2704 = icmp eq i32 %2668, 1
  br i1 %2704, label %2705, label %2718

; <label>:2705                                    ; preds = %2703
  %2706 = fadd fast float %2396, -1.000000e+00
  %2707 = fadd fast float %2397, -1.000000e+00
  %2708 = fadd fast float %2398, -1.000000e+00
  %2709 = fmul fast float %2673, %2706
  %2710 = fmul fast float %2673, %2707
  %2711 = fmul fast float %2673, %2708
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fadd fast float %2710, 1.000000e+00
  %2714 = fadd fast float %2711, 1.000000e+00
  %2715 = fmul fast float %2712, %2660
  %2716 = fmul fast float %2713, %2661
  %2717 = fmul fast float %2714, %2662
  br label %2748

; <label>:2718                                    ; preds = %2703
  %2719 = icmp eq i32 %2668, 2
  br i1 %2719, label %2720, label %2748

; <label>:2720                                    ; preds = %2718
  %2721 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2722 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2723 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fadd fast float %2722, -5.000000e-01
  %2726 = fadd fast float %2723, -5.000000e-01
  %2727 = fmul fast float %2724, %2673
  %2728 = fmul fast float %2725, %2673
  %2729 = fmul fast float %2726, %2673
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fadd fast float %2728, 5.000000e-01
  %2732 = fadd fast float %2729, 5.000000e-01
  %2733 = fmul fast float %2730, 2.000000e+00
  %2734 = fsub fast float 1.000000e+00, %2733
  %2735 = fmul fast float %2734, %2660
  %2736 = fadd fast float %2735, %2733
  %2737 = fmul fast float %2736, %2660
  %2738 = fmul fast float %2731, 2.000000e+00
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = fmul fast float %2739, %2661
  %2741 = fadd fast float %2740, %2738
  %2742 = fmul fast float %2741, %2661
  %2743 = fmul fast float %2732, 2.000000e+00
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2744, %2662
  %2746 = fadd fast float %2745, %2743
  %2747 = fmul fast float %2746, %2662
  br label %2748

; <label>:2748                                    ; preds = %2720, %2718, %2705, %2675, %2659
  %2749 = phi float [ %2660, %2659 ], [ %2737, %2720 ], [ %2660, %2718 ], [ %2715, %2705 ], [ %2685, %2675 ]
  %2750 = phi float [ %2661, %2659 ], [ %2742, %2720 ], [ %2661, %2718 ], [ %2716, %2705 ], [ %2686, %2675 ]
  %2751 = phi float [ %2662, %2659 ], [ %2747, %2720 ], [ %2662, %2718 ], [ %2717, %2705 ], [ %2687, %2675 ]
  %2752 = phi float [ %2663, %2659 ], [ %2663, %2720 ], [ %2663, %2718 ], [ %2663, %2705 ], [ %2697, %2675 ]
  %2753 = phi float [ %2664, %2659 ], [ %2664, %2720 ], [ %2664, %2718 ], [ %2664, %2705 ], [ %2698, %2675 ]
  %2754 = phi float [ %2665, %2659 ], [ %2665, %2720 ], [ %2665, %2718 ], [ %2665, %2705 ], [ %2699, %2675 ]
  %2755 = phi float [ %1875, %2659 ], [ %1875, %2720 ], [ %1875, %2718 ], [ %1875, %2705 ], [ %2690, %2675 ]
  %2756 = phi float [ %1878, %2659 ], [ %1878, %2720 ], [ %1878, %2718 ], [ %1878, %2705 ], [ %2702, %2675 ]
  %2757 = and i32 %2667, 12
  %2758 = icmp eq i32 %2757, 12
  br i1 %2758, label %2831, label %2759

; <label>:2759                                    ; preds = %2748
  %2760 = and i32 %2667, 2097184
  %2761 = icmp eq i32 %2760, 2097184
  %2762 = select i1 %2761, float %2176, float 0.000000e+00
  %2763 = and i32 %2667, 4194336
  %2764 = icmp eq i32 %2763, 4194336
  %2765 = select i1 %2764, float %2176, float 0.000000e+00
  %2766 = and i32 %2667, 8388640
  %2767 = icmp eq i32 %2766, 8388640
  %2768 = select i1 %2767, float %2176, float 0.000000e+00
  %2769 = icmp eq i32 %2757, 0
  br i1 %2769, label %2770, label %2783

; <label>:2770                                    ; preds = %2759
  %2771 = fsub fast float %2477, %1867
  %2772 = fsub fast float %2478, %1868
  %2773 = fmul fast float %2762, %2771
  %2774 = fmul fast float %2762, %2772
  %2775 = fadd fast float %2773, %1867
  %2776 = fadd fast float %2774, %1868
  %2777 = fsub fast float %2479, %1877
  %2778 = fmul fast float %2765, %2777
  %2779 = fadd fast float %2778, %1877
  %2780 = fsub fast float %2476, %1876
  %2781 = fmul fast float %2768, %2780
  %2782 = fadd fast float %2781, %1876
  br label %2831

; <label>:2783                                    ; preds = %2759
  %2784 = icmp eq i32 %2757, 4
  br i1 %2784, label %2785, label %2817

; <label>:2785                                    ; preds = %2783
  %2786 = fmul fast float %2762, %2477
  %2787 = fmul fast float %2762, %2478
  %2788 = fadd fast float %2786, %1867
  %2789 = fadd fast float %2787, %1868
  %2790 = call float @dx.op.binary.f32(i32 36, float %1877, float %2479)  ; FMin(a,b)
  %2791 = fsub fast float %2790, %1877
  %2792 = fmul fast float %2791, %2765
  %2793 = fadd fast float %2792, %1877
  %2794 = fadd fast float %2476, %1876
  %2795 = fmul fast float %2794, 0x3FF337FAE0000000
  %2796 = fmul fast float %1876, %1876
  %2797 = fmul fast float %2476, %2476
  %2798 = fadd fast float %2797, %2796
  %2799 = fmul fast float %2798, 0x3FE5152B00000000
  %2800 = fmul fast float %1876, 0xBFCC1F85E0000000
  %2801 = fmul fast float %2800, %2476
  %2802 = fadd fast float %2801, 0xBFE1363700000000
  %2803 = fadd fast float %2802, %2795
  %2804 = fsub fast float %2803, %2799
  %2805 = fmul fast float %2794, 0x3FBA6F0D00000000
  %2806 = fmul fast float %2798, 0x3FD0432880000000
  %2807 = fmul fast float %1876, 0xBFEF110800000000
  %2808 = fmul fast float %2807, %2476
  %2809 = fadd fast float %2808, 1.000000e+00
  %2810 = fsub fast float %2809, %2805
  %2811 = fadd fast float %2810, %2806
  %2812 = fdiv fast float %2804, %2811
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2814 = fsub fast float %2813, %1876
  %2815 = fmul fast float %2814, %2768
  %2816 = fadd fast float %2815, %1876
  br label %2831

; <label>:2817                                    ; preds = %2783
  %2818 = icmp eq i32 %2757, 8
  br i1 %2818, label %2819, label %2831

; <label>:2819                                    ; preds = %2817
  %2820 = fmul fast float %2762, %2477
  %2821 = fmul fast float %2762, %2478
  %2822 = fadd fast float %2820, %1867
  %2823 = fadd fast float %2821, %1868
  %2824 = call float @dx.op.binary.f32(i32 36, float %1877, float %2479)  ; FMin(a,b)
  %2825 = fsub fast float %2824, %1877
  %2826 = fmul fast float %2825, %2765
  %2827 = fadd fast float %2826, %1877
  %2828 = fsub fast float %2476, %1876
  %2829 = fmul fast float %2768, %2828
  %2830 = fadd fast float %2829, %1876
  br label %2831

; <label>:2831                                    ; preds = %2819, %2817, %2785, %2770, %2748, %2175, %1879, %1866
  %2832 = phi float [ %1867, %2748 ], [ %1867, %2175 ], [ %1867, %1866 ], [ %2822, %2819 ], [ %1867, %2817 ], [ %2788, %2785 ], [ %2775, %2770 ], [ %1867, %1879 ]
  %2833 = phi float [ %1868, %2748 ], [ %1868, %2175 ], [ %1868, %1866 ], [ %2823, %2819 ], [ %1868, %2817 ], [ %2789, %2785 ], [ %2776, %2770 ], [ %1868, %1879 ]
  %2834 = phi float [ %2749, %2748 ], [ %1869, %2175 ], [ %1869, %1866 ], [ %2749, %2819 ], [ %2749, %2817 ], [ %2749, %2785 ], [ %2749, %2770 ], [ %1869, %1879 ]
  %2835 = phi float [ %2750, %2748 ], [ %1870, %2175 ], [ %1870, %1866 ], [ %2750, %2819 ], [ %2750, %2817 ], [ %2750, %2785 ], [ %2750, %2770 ], [ %1870, %1879 ]
  %2836 = phi float [ %2751, %2748 ], [ %1871, %2175 ], [ %1871, %1866 ], [ %2751, %2819 ], [ %2751, %2817 ], [ %2751, %2785 ], [ %2751, %2770 ], [ %1871, %1879 ]
  %2837 = phi float [ %2752, %2748 ], [ %1872, %2175 ], [ %1872, %1866 ], [ %2752, %2819 ], [ %2752, %2817 ], [ %2752, %2785 ], [ %2752, %2770 ], [ %1872, %1879 ]
  %2838 = phi float [ %2753, %2748 ], [ %1873, %2175 ], [ %1873, %1866 ], [ %2753, %2819 ], [ %2753, %2817 ], [ %2753, %2785 ], [ %2753, %2770 ], [ %1873, %1879 ]
  %2839 = phi float [ %2754, %2748 ], [ %1874, %2175 ], [ %1874, %1866 ], [ %2754, %2819 ], [ %2754, %2817 ], [ %2754, %2785 ], [ %2754, %2770 ], [ %1874, %1879 ]
  %2840 = phi float [ %2755, %2748 ], [ %1875, %2175 ], [ %1875, %1866 ], [ %2755, %2819 ], [ %2755, %2817 ], [ %2755, %2785 ], [ %2755, %2770 ], [ %1875, %1879 ]
  %2841 = phi float [ %1876, %2748 ], [ %1876, %2175 ], [ %1876, %1866 ], [ %2830, %2819 ], [ %1876, %2817 ], [ %2816, %2785 ], [ %2782, %2770 ], [ %1876, %1879 ]
  %2842 = phi float [ %1877, %2748 ], [ %1877, %2175 ], [ %1877, %1866 ], [ %2827, %2819 ], [ %1877, %2817 ], [ %2793, %2785 ], [ %2779, %2770 ], [ %1877, %1879 ]
  %2843 = phi float [ %2756, %2748 ], [ %1878, %2175 ], [ %1878, %1866 ], [ %2756, %2819 ], [ %2756, %2817 ], [ %2756, %2785 ], [ %2756, %2770 ], [ %1878, %1879 ]
  br i1 %382, label %3796, label %2844

; <label>:2844                                    ; preds = %2831
  %2845 = icmp ult i32 %433, 4
  %2846 = add i32 %33, 72
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %33, 76
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = or i32 %2851, %2848
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %3796, label %2854

; <label>:2854                                    ; preds = %2844
  %2855 = and i32 %2848, 262144
  %2856 = icmp ne i32 %2855, 0
  %2857 = select i1 %2856, float %36, float 1.000000e+00
  %2858 = select i1 %2856, float %37, float 0.000000e+00
  %2859 = select i1 %2856, float %38, float 0.000000e+00
  %2860 = select i1 %2856, float %39, float 1.000000e+00
  %2861 = select i1 %2856, float %40, float %56
  %2862 = select i1 %2856, float %41, float %57
  %2863 = add i32 %33, 332
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = fmul fast float %2867, 0x3F50624DE0000000
  %2869 = add i32 %33, 136
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 16
  %2873 = and i32 %2872, 255
  %2874 = lshr i32 %2871, 24
  %2875 = add i32 %33, 340
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = lshr i32 %2877, 16
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = add i32 %33, 80
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = lshr i32 %2884, 22
  %2886 = shl nuw nsw i32 %2885, 5
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = shl i32 %2884, 4
  %2889 = and i32 %2888, 32752
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2884, 7
  %2892 = and i32 %2891, 32752
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2896 = fmul fast float %2895, 1.000000e+03
  %2897 = fmul fast float %372, %2896
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = fadd fast float %2898, %362
  %2900 = fmul fast float %373, %2896
  %2901 = call float @dx.op.unary.f32(i32 22, float %2900)  ; Frc(value)
  %2902 = fadd fast float %2901, %364
  %2903 = fmul fast float %2868, %2896
  %2904 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2905 = fmul fast float %2904, 0x401921FB60000000
  %2906 = fadd fast float %2905, %2887
  %2907 = call float @dx.op.unary.f32(i32 13, float %2906)  ; Sin(value)
  %2908 = call float @dx.op.unary.f32(i32 12, float %2906)  ; Cos(value)
  %2909 = fsub fast float -0.000000e+00, %2907
  %2910 = fadd fast float %2861, -5.000000e-01
  %2911 = fadd fast float %2862, -5.000000e-01
  %2912 = fmul fast float %2879, %2910
  %2913 = fmul fast float %2881, %2911
  %2914 = fadd fast float %2912, 5.000000e-01
  %2915 = fadd fast float %2913, 5.000000e-01
  %2916 = fmul fast float %2890, %2914
  %2917 = fmul fast float %2893, %2915
  %2918 = fmul fast float %2908, %2916
  %2919 = call float @dx.op.tertiary.f32(i32 46, float %2909, float %2917, float %2918)  ; FMad(a,b,c)
  %2920 = fmul fast float %2907, %2916
  %2921 = call float @dx.op.tertiary.f32(i32 46, float %2908, float %2917, float %2920)  ; FMad(a,b,c)
  %2922 = fadd fast float %2899, %2919
  %2923 = fadd fast float %2902, %2921
  %2924 = icmp ugt i32 %2873, 1
  %2925 = icmp ugt i32 %2871, 33554431
  %2926 = or i1 %2925, %2924
  br i1 %2926, label %2927, label %2952

; <label>:2927                                    ; preds = %2854
  %2928 = add i32 %33, 276
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = lshr i32 %2930, 16
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = fmul fast float %2895, %2932
  %2934 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2935 = mul nuw nsw i32 %2873, %2874
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2934, %2936
  %2938 = call float @dx.op.unary.f32(i32 27, float %2937)  ; Round_ni(value)
  %2939 = fptoui float %2938 to i32
  %2940 = urem i32 %2939, %2873
  %2941 = udiv i32 %2939, %2874
  %2942 = call float @dx.op.unary.f32(i32 22, float %2922)  ; Frc(value)
  %2943 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2944 = uitofp i32 %2940 to float
  %2945 = uitofp i32 %2941 to float
  %2946 = fadd fast float %2942, %2944
  %2947 = fadd fast float %2943, %2945
  %2948 = uitofp i32 %2873 to float
  %2949 = uitofp i32 %2874 to float
  %2950 = fdiv fast float %2946, %2948
  %2951 = fdiv fast float %2947, %2949
  br label %2952

; <label>:2952                                    ; preds = %2927, %2854
  %2953 = phi float [ %2950, %2927 ], [ %2922, %2854 ]
  %2954 = phi float [ %2951, %2927 ], [ %2923, %2854 ]
  %2955 = and i32 %2848, 16777216
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3066, label %2957

; <label>:2957                                    ; preds = %2952
  %2958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.CBufRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.CBufRet.f32 %2958, 2
  %2962 = fadd fast float %2959, %131
  %2963 = fadd fast float %2960, %132
  %2964 = fadd fast float %2961, %133
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2968 = icmp eq i32 %34, 65535
  br i1 %2968, label %3063, label %2969

; <label>:2969                                    ; preds = %2957
  %2970 = lshr i32 %34, 1
  %2971 = shl i32 %2970, 2
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %34, 1
  %2975 = icmp ne i32 %2974, 0
  %2976 = lshr i32 %2973, 16
  %2977 = and i32 %2973, 65535
  %2978 = select i1 %2975, i32 %2976, i32 %2977
  %2979 = icmp eq i32 %2978, 65535
  br i1 %2979, label %3059, label %2980

; <label>:2980                                    ; preds = %2969
  %2981 = mul nuw nsw i32 %2978, 40
  %2982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = add nuw nsw i32 %2981, 12
  %2987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = add nuw nsw i32 %2981, 24
  %2992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = add nuw nsw i32 %2981, 36
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = fsub fast float %2962, %2983
  %3000 = fsub fast float %2963, %2984
  %3001 = fsub fast float %2964, %2985
  %3002 = fmul fast float %2998, %2999
  %3003 = fmul fast float %2998, %3000
  %3004 = fmul fast float %2998, %3001
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = call float @dx.op.unary.f32(i32 27, float %3003)  ; Round_ni(value)
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fmul fast float %3008, %2988
  %3012 = fmul fast float %3009, %2989
  %3013 = fmul fast float %3010, %2990
  %3014 = shl i32 %34, 2
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = add i32 %3016, 0
  %3018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3019 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3020 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3021 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3018, %dx.types.Handle %30, float %3019, float %3020, float %3021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fmul fast float %3023, 1.023000e+03
  %3027 = fmul fast float %3024, 1.023000e+03
  %3028 = fmul fast float %3025, 1.023000e+03
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = fadd fast float %3027, 5.000000e-01
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3033 = call float @dx.op.unary.f32(i32 27, float %3030)  ; Round_ni(value)
  %3034 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3035 = fsub fast float %3002, %3005
  %3036 = fsub fast float %3003, %3006
  %3037 = fsub fast float %3004, %3007
  %3038 = fmul fast float %3035, 7.500000e-01
  %3039 = fmul fast float %3036, 7.500000e-01
  %3040 = fmul fast float %3037, 7.500000e-01
  %3041 = fadd fast float %3005, 1.250000e-01
  %3042 = fadd fast float %3041, %3038
  %3043 = fadd fast float %3042, %3032
  %3044 = fadd fast float %3006, 1.250000e-01
  %3045 = fadd fast float %3044, %3039
  %3046 = fadd fast float %3045, %3033
  %3047 = fadd fast float %3007, 1.250000e-01
  %3048 = fadd fast float %3047, %3040
  %3049 = fadd fast float %3048, %3034
  %3050 = fmul fast float %3043, %2993
  %3051 = fmul fast float %3046, %2994
  %3052 = fmul fast float %3049, %2995
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3056, %dx.types.Handle %28, float %3050, float %3051, float %3052, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  br label %3059

; <label>:3059                                    ; preds = %2980, %2969
  %3060 = phi float [ %3058, %2980 ], [ -1.000000e+00, %2969 ]
  %3061 = fadd fast float %3060, %2967
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  br label %3063

; <label>:3063                                    ; preds = %3059, %2957
  %3064 = phi float [ %3062, %3059 ], [ %2967, %2957 ]
  %3065 = fmul fast float %3064, %428
  br label %3066

; <label>:3066                                    ; preds = %3063, %2952
  %3067 = phi float [ %3065, %3063 ], [ %428, %2952 ]
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = and i32 %3069, 256
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3118, label %3072

; <label>:3072                                    ; preds = %3066
  %3073 = add i32 %33, 484
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = add i32 %3075, 0
  %3077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3077, %dx.types.Handle %65, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = add i32 %33, 148
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = shl i32 %3082, 4
  %3084 = and i32 %3083, 32752
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = lshr i32 %3082, 7
  %3087 = and i32 %3086, 32752
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = fsub fast float 1.000000e+00, %3067
  %3090 = call float @dx.op.binary.f32(i32 35, float %3089, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3091 = bitcast float %3067 to i32
  %3092 = sitofp i32 %3091 to float
  %3093 = fadd fast float %3092, 0xC1CFBF8940000000
  %3094 = fmul fast float %3088, %3093
  %3095 = fadd fast float %3094, 0x41CFBF8940000000
  %3096 = fptosi float %3095 to i32
  %3097 = bitcast i32 %3096 to float
  %3098 = bitcast float %3090 to i32
  %3099 = sitofp i32 %3098 to float
  %3100 = fadd fast float %3099, 0xC1CFBF8940000000
  %3101 = fmul fast float %3100, %3088
  %3102 = fadd fast float %3101, 0x41CFBF8940000000
  %3103 = fptosi float %3102 to i32
  %3104 = bitcast i32 %3103 to float
  %3105 = fmul fast float %3097, %3085
  %3106 = fmul fast float %3104, %3085
  %3107 = fsub fast float %3090, %3105
  %3108 = fadd fast float %3106, %3090
  %3109 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3110 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3111 = fsub fast float %3079, %3109
  %3112 = fsub fast float %3110, %3109
  %3113 = bitcast float %3112 to i32
  %3114 = sub nsw i32 2129859010, %3113
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3115, %3111
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  br label %3118

; <label>:3118                                    ; preds = %3072, %3066
  %3119 = phi float [ %3117, %3072 ], [ %3067, %3066 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 128
  %3123 = icmp eq i32 %3122, 0
  br i1 %3123, label %3140, label %3124

; <label>:3124                                    ; preds = %3118
  %3125 = add i32 %33, 468
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = add i32 %3127, 0
  %3129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3129, %dx.types.Handle %65, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 524288
  %3135 = icmp ne i32 %3134, 0
  %3136 = fcmp fast ogt float %3131, 0x3FE0101020000000
  %3137 = select i1 %3136, float 1.000000e+00, float 0.000000e+00
  %3138 = select i1 %3135, float %3137, float %3131
  %3139 = fmul fast float %3138, %3119
  br label %3140

; <label>:3140                                    ; preds = %3124, %3118
  %3141 = phi float [ %3139, %3124 ], [ %3119, %3118 ]
  %3142 = fcmp fast ult float %3141, 0x3F70101020000000
  br i1 %3142, label %3796, label %3143

; <label>:3143                                    ; preds = %3140
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 16
  %3147 = icmp eq i32 %3146, 0
  br i1 %3147, label %3346, label %3148

; <label>:3148                                    ; preds = %3143
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %33, 420
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %3153, 0
  %3155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3155, %dx.types.Handle %64, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = extractvalue %dx.types.ResRet.f32 %3156, 3
  %3161 = and i32 %3150, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = lshr i32 %3150, 8
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = fmul fast float %3160, %3162
  %3167 = fadd fast float %3166, %3165
  %3168 = fmul fast float %3167, 0x3F70101000000000
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 512
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3181, label %3173

; <label>:3173                                    ; preds = %3148
  %3174 = add i32 %33, 500
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = add i32 %3176, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3178, %dx.types.Handle %65, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  br label %3181

; <label>:3181                                    ; preds = %3173, %3148
  %3182 = phi float [ %3180, %3173 ], [ 1.000000e+00, %3148 ]
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 33554432
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3293, label %3187

; <label>:3187                                    ; preds = %3181
  %3188 = add i32 %33, 272
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 65535
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = lshr i32 %3190, 16
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = add i32 %33, 276
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = lshr i32 %3201, 24
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = and i32 %3201, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3201, 8
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3201, 16
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = add i32 %33, 268
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = lshr i32 %3218, 24
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 0x3F70101020000000
  %3222 = and i32 %3218, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = lshr i32 %3218, 8
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = lshr i32 %3218, 16
  %3230 = and i32 %3229, 255
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = bitcast float %3157 to i32
  %3234 = ashr i32 %3233, 1
  %3235 = sub nsw i32 1597463174, %3234
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3157, 5.000000e-01
  %3238 = fmul fast float %3236, %3236
  %3239 = fmul fast float %3238, %3237
  %3240 = fsub fast float 1.500000e+00, %3239
  %3241 = fmul fast float %3236, %3157
  %3242 = fmul fast float %3241, %3240
  %3243 = bitcast float %3158 to i32
  %3244 = ashr i32 %3243, 1
  %3245 = sub nsw i32 1597463174, %3244
  %3246 = bitcast i32 %3245 to float
  %3247 = fmul fast float %3158, 5.000000e-01
  %3248 = fmul fast float %3246, %3246
  %3249 = fmul fast float %3248, %3247
  %3250 = fsub fast float 1.500000e+00, %3249
  %3251 = fmul fast float %3246, %3158
  %3252 = fmul fast float %3251, %3250
  %3253 = bitcast float %3159 to i32
  %3254 = ashr i32 %3253, 1
  %3255 = sub nsw i32 1597463174, %3254
  %3256 = bitcast i32 %3255 to float
  %3257 = fmul fast float %3159, 5.000000e-01
  %3258 = fmul fast float %3256, %3256
  %3259 = fmul fast float %3258, %3257
  %3260 = fsub fast float 1.500000e+00, %3259
  %3261 = fmul fast float %3256, %3159
  %3262 = fmul fast float %3261, %3260
  %3263 = fsub fast float %3242, %3224
  %3264 = fsub fast float %3252, %3228
  %3265 = fsub fast float %3262, %3232
  %3266 = fmul fast float %3263, %3192
  %3267 = fmul fast float %3264, %3194
  %3268 = fmul fast float %3265, %3199
  %3269 = fadd fast float %3266, %3207
  %3270 = fadd fast float %3267, %3211
  %3271 = fadd fast float %3268, %3215
  %3272 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3273 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = fmul fast float %3272, %3272
  %3276 = fmul fast float %3273, %3273
  %3277 = fmul fast float %3274, %3274
  %3278 = fsub fast float %3275, %3157
  %3279 = fsub fast float %3276, %3158
  %3280 = fsub fast float %3277, %3159
  %3281 = fmul fast float %3278, %3182
  %3282 = fmul fast float %3279, %3182
  %3283 = fmul fast float %3280, %3182
  %3284 = fadd fast float %3281, %3157
  %3285 = fadd fast float %3282, %3158
  %3286 = fadd fast float %3283, %3159
  %3287 = fadd fast float %3204, %3168
  %3288 = fsub fast float %3287, %3221
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3290 = fsub fast float %3289, %3168
  %3291 = fmul fast float %3290, %3182
  %3292 = fadd fast float %3291, %3168
  br label %3346

; <label>:3293                                    ; preds = %3181
  %3294 = and i32 %3184, 134217728
  %3295 = icmp eq i32 %3294, 0
  br i1 %3295, label %3330, label %3296

; <label>:3296                                    ; preds = %3293
  %3297 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3298 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %3299 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %3300 = fadd fast float %3297, -5.000000e-01
  %3301 = fadd fast float %3298, -5.000000e-01
  %3302 = fadd fast float %3299, -5.000000e-01
  %3303 = fmul fast float %3300, %3182
  %3304 = fmul fast float %3301, %3182
  %3305 = fmul fast float %3302, %3182
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = fadd fast float %3304, 5.000000e-01
  %3308 = fadd fast float %3305, 5.000000e-01
  %3309 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %3158)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3312 = fmul fast float %3306, 2.000000e+00
  %3313 = fsub fast float 1.000000e+00, %3312
  %3314 = fmul fast float %3313, %3309
  %3315 = fadd fast float %3314, %3312
  %3316 = fmul fast float %3315, %3309
  %3317 = fmul fast float %3307, 2.000000e+00
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3310
  %3320 = fadd fast float %3319, %3317
  %3321 = fmul fast float %3320, %3310
  %3322 = fmul fast float %3308, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3311
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3311
  %3327 = fmul fast float %3316, %3316
  %3328 = fmul fast float %3321, %3321
  %3329 = fmul fast float %3326, %3326
  br label %3346

; <label>:3330                                    ; preds = %3293
  %3331 = fmul fast float %349, %349
  %3332 = fmul fast float %353, %353
  %3333 = fmul fast float %357, %357
  %3334 = fadd fast float %3331, -1.000000e+00
  %3335 = fadd fast float %3332, -1.000000e+00
  %3336 = fadd fast float %3333, -1.000000e+00
  %3337 = fmul fast float %3182, %3334
  %3338 = fmul fast float %3182, %3335
  %3339 = fmul fast float %3182, %3336
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fmul fast float %3340, %3157
  %3344 = fmul fast float %3341, %3158
  %3345 = fmul fast float %3342, %3159
  br label %3346

; <label>:3346                                    ; preds = %3330, %3296, %3187, %3143
  %3347 = phi float [ %3292, %3187 ], [ %3168, %3296 ], [ %3168, %3330 ], [ 0x3FA23C0BE0000000, %3143 ]
  %3348 = phi float [ %3284, %3187 ], [ %3327, %3296 ], [ %3343, %3330 ], [ 1.000000e+00, %3143 ]
  %3349 = phi float [ %3285, %3187 ], [ %3328, %3296 ], [ %3344, %3330 ], [ 1.000000e+00, %3143 ]
  %3350 = phi float [ %3286, %3187 ], [ %3329, %3296 ], [ %3345, %3330 ], [ 1.000000e+00, %3143 ]
  %3351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.i32 %3351, 1
  %3353 = and i32 %3352, 1
  %3354 = icmp ne i32 %3353, 0
  %3355 = add i32 %33, 356
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 32
  %3359 = icmp ne i32 %3358, 0
  %3360 = and i1 %3354, %3359
  %3361 = select i1 %3360, float 1.000000e+00, float %3348
  %3362 = select i1 %3360, float 0x3FD3333340000000, float %3349
  %3363 = select i1 %3360, float 0x3FD3333340000000, float %3350
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = and i32 %3365, 32
  %3367 = icmp eq i32 %3366, 0
  br i1 %3367, label %3440, label %3368

; <label>:3368                                    ; preds = %3346
  %3369 = add i32 %33, 140
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = add i32 %33, 436
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = add i32 %3374, 0
  %3376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3376, %dx.types.Handle %64, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = and i32 %3371, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = lshr i32 %3371, 8
  %3385 = and i32 %3384, 255
  %3386 = uitofp i32 %3385 to float
  %3387 = lshr i32 %3371, 16
  %3388 = and i32 %3387, 255
  %3389 = uitofp i32 %3388 to float
  %3390 = fmul fast float %3389, 0x3F70101000000000
  %3391 = fmul fast float %3378, %3383
  %3392 = fadd fast float %3391, %3386
  %3393 = fmul fast float %3392, 0x3F70101000000000
  %3394 = fadd fast float %3379, -5.000000e-01
  %3395 = fadd fast float %3381, -5.000000e-01
  %3396 = fmul fast float %3394, %3390
  %3397 = fmul fast float %3395, %3390
  %3398 = fadd fast float %3396, 5.000000e-01
  %3399 = fadd fast float %3397, 5.000000e-01
  %3400 = fmul fast float %3398, 2.000000e+00
  %3401 = fadd fast float %3400, -1.000000e+00
  %3402 = fmul fast float %3399, 2.000000e+00
  %3403 = fadd fast float %3402, -1.000000e+00
  %3404 = fadd fast float %3401, %3403
  %3405 = fmul fast float %3404, 5.000000e-01
  %3406 = fsub fast float %3401, %3403
  %3407 = fmul fast float %3406, 5.000000e-01
  %3408 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3409 = fsub fast float 1.000000e+00, %3408
  %3410 = call float @dx.op.unary.f32(i32 6, float %3407)  ; FAbs(value)
  %3411 = fsub fast float %3409, %3410
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3407, float %3411, float %3405, float %3407, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = call float @dx.op.unary.f32(i32 25, float %3412)  ; Rsqrt(value)
  %3414 = fmul fast float %3405, %3413
  %3415 = fmul fast float %3407, %3413
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 67108864
  %3419 = icmp eq i32 %3418, 0
  br i1 %3419, label %3436, label %3420

; <label>:3420                                    ; preds = %3368
  %3421 = add i32 %33, 328
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 65535
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 65535
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = lshr i32 %3423, 16
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = fsub fast float %3393, %3431
  %3433 = fmul fast float %3432, %3425
  %3434 = fadd fast float %3433, %3429
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  br label %3436

; <label>:3436                                    ; preds = %3420, %3368
  %3437 = phi float [ %3435, %3420 ], [ %3393, %3368 ]
  %3438 = call float @dx.op.dot2.f32(i32 54, float %3414, float %3415, float %2857, float %2858)  ; Dot2(ax,ay,bx,by)
  %3439 = call float @dx.op.dot2.f32(i32 54, float %3414, float %3415, float %2859, float %2860)  ; Dot2(ax,ay,bx,by)
  br label %3440

; <label>:3440                                    ; preds = %3436, %3346
  %3441 = phi float [ %3437, %3436 ], [ 0x3FD6666660000000, %3346 ]
  %3442 = phi float [ %3438, %3436 ], [ 0.000000e+00, %3346 ]
  %3443 = phi float [ %3439, %3436 ], [ 0.000000e+00, %3346 ]
  %3444 = phi float [ %3380, %3436 ], [ 1.000000e+00, %3346 ]
  %3445 = add i32 %33, 208
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = lshr i32 %3447, 22
  %3449 = shl nuw nsw i32 %3448, 5
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449)  ; LegacyF16ToF32(value)
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 64
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %3488, label %3455

; <label>:3455                                    ; preds = %3440
  %3456 = add i32 %33, 452
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = add i32 %3458, 0
  %3460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 131072
  %3464 = icmp eq i32 %3463, 0
  %3465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3460, %dx.types.Handle %64, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = fmul fast float %3466, %337
  %3470 = fmul fast float %3467, %340
  %3471 = fmul fast float %3468, %343
  br i1 %3464, label %3478, label %3472

; <label>:3472                                    ; preds = %3455
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = fmul fast float %3474, %3469
  %3476 = fmul fast float %3474, %3470
  %3477 = fmul fast float %3474, %3471
  br label %3478

; <label>:3478                                    ; preds = %3472, %3455
  %3479 = phi float [ %3475, %3472 ], [ %3469, %3455 ]
  %3480 = phi float [ %3476, %3472 ], [ %3470, %3455 ]
  %3481 = phi float [ %3477, %3472 ], [ %3471, %3455 ]
  %3482 = fmul fast float %3479, %3450
  %3483 = select i1 %205, float %3482, float %3479
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3480, float %3481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = select i1 %205, float 0.000000e+00, float %3479
  %3486 = select i1 %205, float %3484, float %3480
  %3487 = select i1 %205, float 0.000000e+00, float %3481
  br label %3488

; <label>:3488                                    ; preds = %3478, %3440
  %3489 = phi float [ %3485, %3478 ], [ 0.000000e+00, %3440 ]
  %3490 = phi float [ %3486, %3478 ], [ 0.000000e+00, %3440 ]
  %3491 = phi float [ %3487, %3478 ], [ 0.000000e+00, %3440 ]
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 1024
  %3495 = icmp eq i32 %3494, 0
  br i1 %3495, label %3526, label %3496

; <label>:3496                                    ; preds = %3488
  %3497 = add i32 %33, 200
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = fmul fast float %3501, 0x3F70101020000000
  %3503 = lshr i32 %3499, 8
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = fmul fast float %3505, 0x3F70101020000000
  %3507 = lshr i32 %3499, 16
  %3508 = and i32 %3507, 255
  %3509 = uitofp i32 %3508 to float
  %3510 = fmul fast float %3509, 0x3F70101020000000
  %3511 = fmul fast float %3502, %3502
  %3512 = fmul fast float %3506, %3506
  %3513 = fmul fast float %3510, %3510
  %3514 = add i32 %33, 516
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = add i32 %3516, 0
  %3518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3518, %dx.types.Handle %65, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = fmul fast float %3511, %3520
  %3524 = fmul fast float %3512, %3521
  %3525 = fmul fast float %3513, %3522
  br label %3526

; <label>:3526                                    ; preds = %3496, %3488
  %3527 = phi float [ %3523, %3496 ], [ 0.000000e+00, %3488 ]
  %3528 = phi float [ %3524, %3496 ], [ 0.000000e+00, %3488 ]
  %3529 = phi float [ %3525, %3496 ], [ 0.000000e+00, %3488 ]
  %3530 = fcmp fast ogt float %3527, 0.000000e+00
  %3531 = fcmp fast ogt float %3528, 0.000000e+00
  %3532 = fcmp fast ogt float %3529, 0.000000e+00
  %3533 = call float @dx.op.unary.f32(i32 23, float %3527)  ; Log(value)
  %3534 = call float @dx.op.unary.f32(i32 23, float %3528)  ; Log(value)
  %3535 = call float @dx.op.unary.f32(i32 23, float %3529)  ; Log(value)
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = lshr i32 %3537, 7
  %3539 = and i32 %3538, 32752
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = fmul fast float %3533, 0xBFE62E4300000000
  %3542 = fmul fast float %3541, %3540
  %3543 = fmul fast float %3534, 0xBFE62E4300000000
  %3544 = fmul fast float %3543, %3540
  %3545 = fmul fast float %3535, 0xBFE62E4300000000
  %3546 = fmul fast float %3545, %3540
  %3547 = select i1 %3530, float %3542, float 1.270000e+02
  %3548 = select i1 %3531, float %3544, float 1.270000e+02
  %3549 = select i1 %3532, float %3546, float 1.270000e+02
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 10240
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3574, label %3554

; <label>:3554                                    ; preds = %3526
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 2048
  %3558 = icmp eq i32 %3557, 0
  br i1 %3558, label %3574, label %3559

; <label>:3559                                    ; preds = %3554
  %3560 = add i32 %33, 532
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = add i32 %3562, 0
  %3564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3564, %dx.types.Handle %65, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 3
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = shl i32 %3568, 4
  %3570 = and i32 %3569, 32752
  %3571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3570)  ; LegacyF16ToF32(value)
  %3572 = fmul fast float %3571, %3566
  %3573 = call float @dx.op.binary.f32(i32 35, float %3572, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3574

; <label>:3574                                    ; preds = %3559, %3554, %3526
  %3575 = phi float [ %3573, %3559 ], [ 0x3F70101020000000, %3554 ], [ 0x3F70101020000000, %3526 ]
  %3576 = add i32 %33, 144
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 255
  %3580 = uitofp i32 %3579 to float
  %3581 = lshr i32 %3578, 8
  %3582 = and i32 %3581, 255
  %3583 = uitofp i32 %3582 to float
  %3584 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3362, float %3363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3585 = fmul fast float %3583, %3584
  %3586 = fadd fast float %3585, %3580
  %3587 = fmul fast float %3586, 0x3F70101020000000
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  br i1 %2845, label %3589, label %3624

; <label>:3589                                    ; preds = %3574
  %3590 = fmul fast float %3575, 2.000000e+00
  %3591 = fcmp fast olt float %3547, 1.270000e+02
  %3592 = fcmp fast olt float %3548, 1.270000e+02
  %3593 = fcmp fast olt float %3549, 1.270000e+02
  %3594 = fmul fast float %3547, 0xBFF7154760000000
  %3595 = fmul fast float %3594, %3590
  %3596 = fmul fast float %3548, 0xBFF7154760000000
  %3597 = fmul fast float %3596, %3590
  %3598 = fmul fast float %3549, 0xBFF7154760000000
  %3599 = fmul fast float %3598, %3590
  %3600 = call float @dx.op.unary.f32(i32 21, float %3595)  ; Exp(value)
  %3601 = call float @dx.op.unary.f32(i32 21, float %3597)  ; Exp(value)
  %3602 = call float @dx.op.unary.f32(i32 21, float %3599)  ; Exp(value)
  %3603 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3604 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3605 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3606 = fadd fast float %3603, -1.000000e+00
  %3607 = select i1 %3591, float %3606, float -1.000000e+00
  %3608 = fadd fast float %3604, -1.000000e+00
  %3609 = select i1 %3592, float %3608, float -1.000000e+00
  %3610 = fadd fast float %3605, -1.000000e+00
  %3611 = select i1 %3593, float %3610, float -1.000000e+00
  %3612 = fmul fast float %3607, %3141
  %3613 = fmul fast float %3609, %3141
  %3614 = fmul fast float %3611, %3141
  %3615 = fadd fast float %3612, 1.000000e+00
  %3616 = fadd fast float %3613, 1.000000e+00
  %3617 = fadd fast float %3614, 1.000000e+00
  %3618 = fmul fast float %3615, %2834
  %3619 = fmul fast float %3616, %2835
  %3620 = fmul fast float %3617, %2836
  %3621 = fmul fast float %3615, %2837
  %3622 = fmul fast float %3616, %2838
  %3623 = fmul fast float %3617, %2839
  br label %3624

; <label>:3624                                    ; preds = %3589, %3574
  %3625 = phi float [ %3618, %3589 ], [ %2834, %3574 ]
  %3626 = phi float [ %3619, %3589 ], [ %2835, %3574 ]
  %3627 = phi float [ %3620, %3589 ], [ %2836, %3574 ]
  %3628 = phi float [ %3621, %3589 ], [ %2837, %3574 ]
  %3629 = phi float [ %3622, %3589 ], [ %2838, %3574 ]
  %3630 = phi float [ %3623, %3589 ], [ %2839, %3574 ]
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 3
  %3634 = icmp eq i32 %3633, 3
  br i1 %3634, label %3713, label %3635

; <label>:3635                                    ; preds = %3624
  %3636 = and i32 %3632, 16
  %3637 = icmp ne i32 %3636, 0
  %3638 = select i1 %3637, float %3141, float 0.000000e+00
  %3639 = icmp eq i32 %3633, 0
  br i1 %3639, label %3640, label %3668

; <label>:3640                                    ; preds = %3635
  %3641 = and i32 %3632, 64
  %3642 = icmp ne i32 %3641, 0
  %3643 = select i1 %3642, float %3141, float 0.000000e+00
  %3644 = fsub fast float %3361, %3625
  %3645 = fsub fast float %3362, %3626
  %3646 = fsub fast float %3363, %3627
  %3647 = fmul fast float %3638, %3644
  %3648 = fmul fast float %3638, %3645
  %3649 = fmul fast float %3638, %3646
  %3650 = fadd fast float %3647, %3625
  %3651 = fadd fast float %3648, %3626
  %3652 = fadd fast float %3649, %3627
  %3653 = fsub fast float %3347, %2840
  %3654 = fmul fast float %3638, %3653
  %3655 = fadd fast float %3654, %2840
  %3656 = fsub fast float %3489, %3628
  %3657 = fsub fast float %3490, %3629
  %3658 = fsub fast float %3491, %3630
  %3659 = fmul fast float %3643, %3656
  %3660 = fmul fast float %3643, %3657
  %3661 = fmul fast float %3643, %3658
  %3662 = fadd fast float %3659, %3628
  %3663 = fadd fast float %3660, %3629
  %3664 = fadd fast float %3661, %3630
  %3665 = fsub fast float %3588, %2843
  %3666 = fmul fast float %3638, %3665
  %3667 = fadd fast float %3666, %2843
  br label %3713

; <label>:3668                                    ; preds = %3635
  %3669 = icmp eq i32 %3633, 1
  br i1 %3669, label %3670, label %3683

; <label>:3670                                    ; preds = %3668
  %3671 = fadd fast float %3361, -1.000000e+00
  %3672 = fadd fast float %3362, -1.000000e+00
  %3673 = fadd fast float %3363, -1.000000e+00
  %3674 = fmul fast float %3638, %3671
  %3675 = fmul fast float %3638, %3672
  %3676 = fmul fast float %3638, %3673
  %3677 = fadd fast float %3674, 1.000000e+00
  %3678 = fadd fast float %3675, 1.000000e+00
  %3679 = fadd fast float %3676, 1.000000e+00
  %3680 = fmul fast float %3677, %3625
  %3681 = fmul fast float %3678, %3626
  %3682 = fmul fast float %3679, %3627
  br label %3713

; <label>:3683                                    ; preds = %3668
  %3684 = icmp eq i32 %3633, 2
  br i1 %3684, label %3685, label %3713

; <label>:3685                                    ; preds = %3683
  %3686 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3687 = call float @dx.op.unary.f32(i32 24, float %3362)  ; Sqrt(value)
  %3688 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3689 = fadd fast float %3686, -5.000000e-01
  %3690 = fadd fast float %3687, -5.000000e-01
  %3691 = fadd fast float %3688, -5.000000e-01
  %3692 = fmul fast float %3689, %3638
  %3693 = fmul fast float %3690, %3638
  %3694 = fmul fast float %3691, %3638
  %3695 = fadd fast float %3692, 5.000000e-01
  %3696 = fadd fast float %3693, 5.000000e-01
  %3697 = fadd fast float %3694, 5.000000e-01
  %3698 = fmul fast float %3695, 2.000000e+00
  %3699 = fsub fast float 1.000000e+00, %3698
  %3700 = fmul fast float %3699, %3625
  %3701 = fadd fast float %3700, %3698
  %3702 = fmul fast float %3701, %3625
  %3703 = fmul fast float %3696, 2.000000e+00
  %3704 = fsub fast float 1.000000e+00, %3703
  %3705 = fmul fast float %3704, %3626
  %3706 = fadd fast float %3705, %3703
  %3707 = fmul fast float %3706, %3626
  %3708 = fmul fast float %3697, 2.000000e+00
  %3709 = fsub fast float 1.000000e+00, %3708
  %3710 = fmul fast float %3709, %3627
  %3711 = fadd fast float %3710, %3708
  %3712 = fmul fast float %3711, %3627
  br label %3713

; <label>:3713                                    ; preds = %3685, %3683, %3670, %3640, %3624
  %3714 = phi float [ %3625, %3624 ], [ %3702, %3685 ], [ %3625, %3683 ], [ %3680, %3670 ], [ %3650, %3640 ]
  %3715 = phi float [ %3626, %3624 ], [ %3707, %3685 ], [ %3626, %3683 ], [ %3681, %3670 ], [ %3651, %3640 ]
  %3716 = phi float [ %3627, %3624 ], [ %3712, %3685 ], [ %3627, %3683 ], [ %3682, %3670 ], [ %3652, %3640 ]
  %3717 = phi float [ %3628, %3624 ], [ %3628, %3685 ], [ %3628, %3683 ], [ %3628, %3670 ], [ %3662, %3640 ]
  %3718 = phi float [ %3629, %3624 ], [ %3629, %3685 ], [ %3629, %3683 ], [ %3629, %3670 ], [ %3663, %3640 ]
  %3719 = phi float [ %3630, %3624 ], [ %3630, %3685 ], [ %3630, %3683 ], [ %3630, %3670 ], [ %3664, %3640 ]
  %3720 = phi float [ %2840, %3624 ], [ %2840, %3685 ], [ %2840, %3683 ], [ %2840, %3670 ], [ %3655, %3640 ]
  %3721 = phi float [ %2843, %3624 ], [ %2843, %3685 ], [ %2843, %3683 ], [ %2843, %3670 ], [ %3667, %3640 ]
  %3722 = and i32 %3632, 12
  %3723 = icmp eq i32 %3722, 12
  br i1 %3723, label %3796, label %3724

; <label>:3724                                    ; preds = %3713
  %3725 = and i32 %3632, 2097184
  %3726 = icmp eq i32 %3725, 2097184
  %3727 = select i1 %3726, float %3141, float 0.000000e+00
  %3728 = and i32 %3632, 4194336
  %3729 = icmp eq i32 %3728, 4194336
  %3730 = select i1 %3729, float %3141, float 0.000000e+00
  %3731 = and i32 %3632, 8388640
  %3732 = icmp eq i32 %3731, 8388640
  %3733 = select i1 %3732, float %3141, float 0.000000e+00
  %3734 = icmp eq i32 %3722, 0
  br i1 %3734, label %3735, label %3748

; <label>:3735                                    ; preds = %3724
  %3736 = fsub fast float %3442, %2832
  %3737 = fsub fast float %3443, %2833
  %3738 = fmul fast float %3727, %3736
  %3739 = fmul fast float %3727, %3737
  %3740 = fadd fast float %3738, %2832
  %3741 = fadd fast float %3739, %2833
  %3742 = fsub fast float %3444, %2842
  %3743 = fmul fast float %3730, %3742
  %3744 = fadd fast float %3743, %2842
  %3745 = fsub fast float %3441, %2841
  %3746 = fmul fast float %3733, %3745
  %3747 = fadd fast float %3746, %2841
  br label %3796

; <label>:3748                                    ; preds = %3724
  %3749 = icmp eq i32 %3722, 4
  br i1 %3749, label %3750, label %3782

; <label>:3750                                    ; preds = %3748
  %3751 = fmul fast float %3727, %3442
  %3752 = fmul fast float %3727, %3443
  %3753 = fadd fast float %3751, %2832
  %3754 = fadd fast float %3752, %2833
  %3755 = call float @dx.op.binary.f32(i32 36, float %2842, float %3444)  ; FMin(a,b)
  %3756 = fsub fast float %3755, %2842
  %3757 = fmul fast float %3756, %3730
  %3758 = fadd fast float %3757, %2842
  %3759 = fadd fast float %3441, %2841
  %3760 = fmul fast float %3759, 0x3FF337FAE0000000
  %3761 = fmul fast float %2841, %2841
  %3762 = fmul fast float %3441, %3441
  %3763 = fadd fast float %3762, %3761
  %3764 = fmul fast float %3763, 0x3FE5152B00000000
  %3765 = fmul fast float %2841, 0xBFCC1F85E0000000
  %3766 = fmul fast float %3765, %3441
  %3767 = fadd fast float %3766, 0xBFE1363700000000
  %3768 = fadd fast float %3767, %3760
  %3769 = fsub fast float %3768, %3764
  %3770 = fmul fast float %3759, 0x3FBA6F0D00000000
  %3771 = fmul fast float %3763, 0x3FD0432880000000
  %3772 = fmul fast float %2841, 0xBFEF110800000000
  %3773 = fmul fast float %3772, %3441
  %3774 = fadd fast float %3773, 1.000000e+00
  %3775 = fsub fast float %3774, %3770
  %3776 = fadd fast float %3775, %3771
  %3777 = fdiv fast float %3769, %3776
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fsub fast float %3778, %2841
  %3780 = fmul fast float %3779, %3733
  %3781 = fadd fast float %3780, %2841
  br label %3796

; <label>:3782                                    ; preds = %3748
  %3783 = icmp eq i32 %3722, 8
  br i1 %3783, label %3784, label %3796

; <label>:3784                                    ; preds = %3782
  %3785 = fmul fast float %3727, %3442
  %3786 = fmul fast float %3727, %3443
  %3787 = fadd fast float %3785, %2832
  %3788 = fadd fast float %3786, %2833
  %3789 = call float @dx.op.binary.f32(i32 36, float %2842, float %3444)  ; FMin(a,b)
  %3790 = fsub fast float %3789, %2842
  %3791 = fmul fast float %3790, %3730
  %3792 = fadd fast float %3791, %2842
  %3793 = fsub fast float %3441, %2841
  %3794 = fmul fast float %3733, %3793
  %3795 = fadd fast float %3794, %2841
  br label %3796

; <label>:3796                                    ; preds = %3784, %3782, %3750, %3735, %3713, %3140, %2844, %2831
  %3797 = phi float [ %2832, %3713 ], [ %2832, %3140 ], [ %2832, %2831 ], [ %2832, %2844 ], [ %3740, %3735 ], [ %3753, %3750 ], [ %2832, %3782 ], [ %3787, %3784 ]
  %3798 = phi float [ %2833, %3713 ], [ %2833, %3140 ], [ %2833, %2831 ], [ %2833, %2844 ], [ %3741, %3735 ], [ %3754, %3750 ], [ %2833, %3782 ], [ %3788, %3784 ]
  %3799 = phi float [ %3714, %3713 ], [ %2834, %3140 ], [ %2834, %2831 ], [ %2834, %2844 ], [ %3714, %3735 ], [ %3714, %3750 ], [ %3714, %3782 ], [ %3714, %3784 ]
  %3800 = phi float [ %3715, %3713 ], [ %2835, %3140 ], [ %2835, %2831 ], [ %2835, %2844 ], [ %3715, %3735 ], [ %3715, %3750 ], [ %3715, %3782 ], [ %3715, %3784 ]
  %3801 = phi float [ %3716, %3713 ], [ %2836, %3140 ], [ %2836, %2831 ], [ %2836, %2844 ], [ %3716, %3735 ], [ %3716, %3750 ], [ %3716, %3782 ], [ %3716, %3784 ]
  %3802 = phi float [ %3717, %3713 ], [ %2837, %3140 ], [ %2837, %2831 ], [ %2837, %2844 ], [ %3717, %3735 ], [ %3717, %3750 ], [ %3717, %3782 ], [ %3717, %3784 ]
  %3803 = phi float [ %3718, %3713 ], [ %2838, %3140 ], [ %2838, %2831 ], [ %2838, %2844 ], [ %3718, %3735 ], [ %3718, %3750 ], [ %3718, %3782 ], [ %3718, %3784 ]
  %3804 = phi float [ %3719, %3713 ], [ %2839, %3140 ], [ %2839, %2831 ], [ %2839, %2844 ], [ %3719, %3735 ], [ %3719, %3750 ], [ %3719, %3782 ], [ %3719, %3784 ]
  %3805 = phi float [ %3720, %3713 ], [ %2840, %3140 ], [ %2840, %2831 ], [ %2840, %2844 ], [ %3720, %3735 ], [ %3720, %3750 ], [ %3720, %3782 ], [ %3720, %3784 ]
  %3806 = phi float [ %2841, %3713 ], [ %2841, %3140 ], [ %2841, %2831 ], [ %2841, %2844 ], [ %3747, %3735 ], [ %3781, %3750 ], [ %2841, %3782 ], [ %3795, %3784 ]
  %3807 = phi float [ %2842, %3713 ], [ %2842, %3140 ], [ %2842, %2831 ], [ %2842, %2844 ], [ %3744, %3735 ], [ %3758, %3750 ], [ %2842, %3782 ], [ %3792, %3784 ]
  %3808 = phi float [ %3721, %3713 ], [ %2843, %3140 ], [ %2843, %2831 ], [ %2843, %2844 ], [ %3721, %3735 ], [ %3721, %3750 ], [ %3721, %3782 ], [ %3721, %3784 ]
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = call float @dx.op.dot2.f32(i32 54, float %3797, float %3798, float %3797, float %3798)  ; Dot2(ax,ay,bx,by)
  %3812 = fmul fast float %3811, 0x3FE3333340000000
  %3813 = fsub fast float 1.000000e+00, %3812
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3813, float %3797, float %3798, float %3813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call float @dx.op.unary.f32(i32 25, float %3814)  ; Rsqrt(value)
  %3816 = fmul fast float %3815, %3797
  %3817 = fmul fast float %3815, %3798
  %3818 = fmul fast float %3813, %3815
  %3819 = fmul fast float %3818, %75
  %3820 = fmul fast float %3818, %76
  %3821 = fmul fast float %3818, %77
  %3822 = fmul fast float %3816, %49
  %3823 = fmul fast float %3816, %50
  %3824 = fmul fast float %3816, %51
  %3825 = fadd fast float %3819, %3822
  %3826 = fadd fast float %3820, %3823
  %3827 = fadd fast float %3821, %3824
  %3828 = fmul fast float %87, %3817
  %3829 = fmul fast float %88, %3817
  %3830 = fmul fast float %89, %3817
  %3831 = fadd fast float %3825, %3828
  %3832 = fadd fast float %3826, %3829
  %3833 = fadd fast float %3827, %3830
  %3834 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float %3831, float %3832, float %3833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3835 = call float @dx.op.unary.f32(i32 25, float %3834)  ; Rsqrt(value)
  %3836 = fmul fast float %3831, %3835
  %3837 = fmul fast float %3832, %3835
  %3838 = fmul fast float %3833, %3835
  %3839 = and i32 %35, 1
  %3840 = icmp eq i32 %3839, 0
  br i1 %3840, label %3841, label %4353

; <label>:3841                                    ; preds = %3796
  %3842 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3843 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3844 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3845 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3846 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3847 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3848 = fadd fast float %3842, %131
  %3849 = fadd fast float %3843, %132
  %3850 = fadd fast float %3844, %133
  %3851 = fadd fast float %3845, %131
  %3852 = fadd fast float %3846, %132
  %3853 = fadd fast float %3847, %133
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3861 = fmul fast float %3855, %68
  %3862 = fmul fast float %3861, %3859
  %3863 = fmul fast float %3856, %69
  %3864 = fmul fast float %3863, %3860
  %3865 = fptoui float %3862 to i32
  %3866 = fptoui float %3864 to i32
  %3867 = fadd fast float %3855, -1.000000e+00
  %3868 = fadd fast float %3856, -1.000000e+00
  %3869 = fptoui float %3867 to i32
  %3870 = fptoui float %3868 to i32
  %3871 = call i32 @dx.op.binary.i32(i32 40, i32 %3865, i32 %3869)  ; UMin(a,b)
  %3872 = call i32 @dx.op.binary.i32(i32 40, i32 %3866, i32 %3870)  ; UMin(a,b)
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3876 = fmul fast float %3874, %63
  %3877 = fsub fast float %3876, %3875
  %3878 = fadd fast float %3857, -1.000000e+00
  %3879 = call float @dx.op.binary.f32(i32 36, float %3877, float %3878)  ; FMin(a,b)
  %3880 = fptoui float %3879 to i32
  %3881 = fptoui float %3855 to i32
  %3882 = fptoui float %3856 to i32
  %3883 = mul i32 %3880, %3882
  %3884 = add i32 %3883, %3872
  %3885 = mul i32 %3884, %3881
  %3886 = add i32 %3885, %3871
  %3887 = shl i32 %3886, 2
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, 1023
  %3891 = lshr i32 %3889, 10
  %3892 = icmp eq i32 %3890, 0
  br i1 %3892, label %4321, label %3893

; <label>:3893                                    ; preds = %3841
  %3894 = and i32 %3889, 1023
  br label %3895

; <label>:3895                                    ; preds = %4022, %3893
  %3896 = phi i32 [ %3972, %4022 ], [ 0, %3893 ]
  %3897 = phi float [ %4023, %4022 ], [ 0.000000e+00, %3893 ]
  %3898 = phi float [ %4024, %4022 ], [ %910, %3893 ]
  %3899 = phi float [ %4025, %4022 ], [ %3810, %3893 ]
  %3900 = phi float [ %4026, %4022 ], [ %3808, %3893 ]
  %3901 = phi float [ %4027, %4022 ], [ 0.000000e+00, %3893 ]
  %3902 = phi float [ %4028, %4022 ], [ 0.000000e+00, %3893 ]
  %3903 = phi float [ %4029, %4022 ], [ %3802, %3893 ]
  %3904 = phi float [ %4030, %4022 ], [ %3803, %3893 ]
  %3905 = phi float [ %4031, %4022 ], [ %3804, %3893 ]
  %3906 = phi float [ %4032, %4022 ], [ %3836, %3893 ]
  %3907 = phi float [ %4033, %4022 ], [ %3837, %3893 ]
  %3908 = phi float [ %4034, %4022 ], [ %3838, %3893 ]
  %3909 = phi float [ %4035, %4022 ], [ %3807, %3893 ]
  %3910 = phi float [ %4036, %4022 ], [ %3806, %3893 ]
  %3911 = phi float [ %4037, %4022 ], [ 0.000000e+00, %3893 ]
  %3912 = phi float [ %4038, %4022 ], [ %3805, %3893 ]
  %3913 = phi float [ %4039, %4022 ], [ %3799, %3893 ]
  %3914 = phi float [ %4040, %4022 ], [ %3800, %3893 ]
  %3915 = phi float [ %4041, %4022 ], [ %3801, %3893 ]
  %3916 = add nuw nsw i32 %3896, %3891
  %3917 = shl i32 %3916, 2
  %3918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.i32 %3918, 0
  %3920 = shl i32 %3919, 8
  %3921 = or i32 %3920, 48
  %3922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3926 = extractvalue %dx.types.ResRet.f32 %3922, 3
  %3927 = or i32 %3920, 64
  %3928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.i32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3928, 1
  %3931 = or i32 %3920, 80
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %3935 = or i32 %3920, 96
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %3941 = or i32 %3920, 112
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3944 = or i32 %3920, 128
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3949 = extractvalue %dx.types.ResRet.f32 %3945, 3
  %3950 = or i32 %3920, 144
  %3951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3955 = extractvalue %dx.types.ResRet.f32 %3951, 3
  %3956 = or i32 %3920, 160
  %3957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = extractvalue %dx.types.ResRet.f32 %3957, 3
  %3962 = or i32 %3920, 192
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = or i32 %3920, 208
  %3966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = or i32 %3920, 248
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = add nuw nsw i32 %3896, 1
  %3973 = bitcast float %3926 to i32
  %3974 = and i32 %3973, 512
  %3975 = icmp eq i32 %3974, 0
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3982 = or i32 %3920, 16
  %3983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.ResRet.f32 %3983, 3
  %3988 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3989 = or i32 %3920, 32
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.unary.f32(i32 27, float %3981)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 27, float %3988)  ; Round_ni(value)
  %3999 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4000 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 27, float %4000)  ; Round_ni(value)
  %4002 = fadd fast float %3999, %3997
  %4003 = fadd fast float %4002, %4001
  %4004 = fcmp fast oeq float %4003, 0.000000e+00
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3848, float %3849, float %3850, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %3848, float %3849, float %3850, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3851, float %3852, float %3853, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4008 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %3851, float %3852, float %3853, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4009 = fsub fast float %4005, %3981
  %4010 = fsub fast float %4007, %3981
  %4011 = fsub fast float %4006, %3988
  %4012 = fsub fast float %4008, %3988
  %4013 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3924, float %3925, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4016 = fadd fast float %4015, %4013
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4019 = fcmp fast ogt float %4017, %4018
  %4020 = and i1 %4004, %4019
  %4021 = and i1 %3975, %4020
  br i1 %4021, label %4043, label %4022

; <label>:4022                                    ; preds = %4307, %4124, %4043, %3895
  %4023 = phi float [ %3897, %4043 ], [ %4127, %4124 ], [ %4127, %4307 ], [ %3897, %3895 ]
  %4024 = phi float [ %3898, %4043 ], [ %3898, %4124 ], [ %4282, %4307 ], [ %3898, %3895 ]
  %4025 = phi float [ %3899, %4043 ], [ %3899, %4124 ], [ %4281, %4307 ], [ %3899, %3895 ]
  %4026 = phi float [ %3900, %4043 ], [ %3900, %4124 ], [ %4279, %4307 ], [ %3900, %3895 ]
  %4027 = phi float [ %3901, %4043 ], [ %3901, %4124 ], [ %4251, %4307 ], [ %3901, %3895 ]
  %4028 = phi float [ %3902, %4043 ], [ %3902, %4124 ], [ %4249, %4307 ], [ %3902, %3895 ]
  %4029 = phi float [ %3903, %4043 ], [ %3903, %4124 ], [ %4317, %4307 ], [ %3903, %3895 ]
  %4030 = phi float [ %3904, %4043 ], [ %3904, %4124 ], [ %4318, %4307 ], [ %3904, %3895 ]
  %4031 = phi float [ %3905, %4043 ], [ %3905, %4124 ], [ %4319, %4307 ], [ %3905, %3895 ]
  %4032 = phi float [ %3906, %4043 ], [ %3906, %4124 ], [ %4230, %4307 ], [ %3906, %3895 ]
  %4033 = phi float [ %3907, %4043 ], [ %3907, %4124 ], [ %4231, %4307 ], [ %3907, %3895 ]
  %4034 = phi float [ %3908, %4043 ], [ %3908, %4124 ], [ %4232, %4307 ], [ %3908, %3895 ]
  %4035 = phi float [ %3909, %4043 ], [ %3909, %4124 ], [ %4259, %4307 ], [ %3909, %3895 ]
  %4036 = phi float [ %3910, %4043 ], [ %3910, %4124 ], [ %4256, %4307 ], [ %3910, %3895 ]
  %4037 = phi float [ %3911, %4043 ], [ %3911, %4124 ], [ %4253, %4307 ], [ %3911, %3895 ]
  %4038 = phi float [ %3912, %4043 ], [ %3912, %4124 ], [ %4247, %4307 ], [ %3912, %3895 ]
  %4039 = phi float [ %3913, %4043 ], [ %3913, %4124 ], [ %4242, %4307 ], [ %3913, %3895 ]
  %4040 = phi float [ %3914, %4043 ], [ %3914, %4124 ], [ %4243, %4307 ], [ %3914, %3895 ]
  %4041 = phi float [ %3915, %4043 ], [ %3915, %4124 ], [ %4244, %4307 ], [ %3915, %3895 ]
  %4042 = icmp eq i32 %3972, %3894
  br i1 %4042, label %4320, label %3895

; <label>:4043                                    ; preds = %3895
  %4044 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %4045 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %4049 = extractvalue %dx.types.ResRet.i32 %3928, 3
  %4050 = extractvalue %dx.types.ResRet.i32 %3928, 2
  %4051 = add i32 %4049, 0
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4051, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4054 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4052, %dx.types.Handle %4053, float %3981, float %3988, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4010, float %4012, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = fmul fast float %4055, %4048
  %4057 = fadd fast float %4056, %4047
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %3981, %3937
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %3988, float %4059)  ; FMad(a,b,c)
  %4061 = fadd fast float %4060, %4046
  %4062 = fmul fast float %3981, %3939
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %3988, float %4062)  ; FMad(a,b,c)
  %4064 = fadd fast float %4063, %4045
  %4065 = fmul fast float %4009, %3937
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %4011, float %4065)  ; FMad(a,b,c)
  %4067 = fmul fast float %4009, %3939
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4011, float %4067)  ; FMad(a,b,c)
  %4069 = fmul fast float %4010, %3937
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %3938, float %4012, float %4069)  ; FMad(a,b,c)
  %4071 = fmul fast float %4010, %3939
  %4072 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %4012, float %4071)  ; FMad(a,b,c)
  %4073 = add i32 %4050, 0
  %4074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4075 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4074, %dx.types.Handle %4053, float %4061, float %4064, float undef, float undef, i32 0, i32 0, i32 undef, float %4066, float %4068, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4076 = extractvalue %dx.types.ResRet.f32 %4075, 0
  %4077 = and i32 %3973, 1024
  %4078 = icmp ne i32 %4077, 0
  %4079 = fcmp fast ogt float %4076, 0x3FE0101020000000
  %4080 = uitofp i1 %4079 to float
  %4081 = select i1 %4078, float %4080, float %4076
  %4082 = and i32 %3973, 8192
  %4083 = icmp ne i32 %4082, 0
  %4084 = select i1 %4083, float %4044, float 1.000000e+00
  %4085 = fmul fast float %3981, 2.000000e+00
  %4086 = fadd fast float %4085, -1.000000e+00
  %4087 = call float @dx.op.unary.f32(i32 6, float %4086)  ; FAbs(value)
  %4088 = fmul fast float %4087, %3970
  %4089 = fsub fast float %4088, %3970
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = fmul fast float %3988, 2.000000e+00
  %4092 = fadd fast float %4091, -1.000000e+00
  %4093 = call float @dx.op.unary.f32(i32 6, float %4092)  ; FAbs(value)
  %4094 = fmul fast float %4093, %3971
  %4095 = fsub fast float %4094, %3971
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4000, %3933
  %4098 = fsub fast float %4097, %3933
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fmul fast float %4058, %4084
  %4101 = fmul fast float %4100, %4055
  %4102 = fmul fast float %4101, %4090
  %4103 = fmul fast float %4102, %4081
  %4104 = fmul fast float %4103, %4096
  %4105 = fmul fast float %4104, %4099
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4109 = fsub fast float %4017, %4108
  %4110 = fmul fast float %4109, %4107
  %4111 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4112 = fmul fast float %4105, %3934
  %4113 = fadd fast float %4105, %3934
  %4114 = fmul fast float %4113, %3943
  %4115 = fsub fast float %4114, %3943
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = and i32 %3973, 128
  %4118 = icmp ne i32 %4117, 0
  %4119 = select i1 %4118, float %4116, float %4112
  %4120 = fmul fast float %4119, %4111
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = fcmp fast ugt float %4120, %4122
  br i1 %4123, label %4124, label %4022

; <label>:4124                                    ; preds = %4043
  %4125 = select i1 %4083, float %4120, float 0.000000e+00
  %4126 = fadd fast float %4125, %3897
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  br i1 %4083, label %4022, label %4128

; <label>:4128                                    ; preds = %4124
  %4129 = and i32 %3973, 4
  %4130 = and i32 %3973, 8
  %4131 = add i32 %3929, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %4133, float %4061, float %4064, float undef, float undef, i32 0, i32 0, i32 undef, float %4066, float %4068, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = bitcast float %3955 to i32
  %4140 = and i32 %4139, 255
  %4141 = uitofp i32 %4140 to float
  %4142 = lshr i32 %4139, 8
  %4143 = and i32 %4142, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = fmul fast float %4138, %4141
  %4146 = fadd fast float %4145, %4144
  %4147 = fmul fast float %4146, 0x3F70101000000000
  %4148 = add i32 %3930, 0
  %4149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4148, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4150 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4149, %dx.types.Handle %4133, float %4061, float %4064, float undef, float undef, i32 0, i32 0, i32 undef, float %4066, float %4068, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4154 = extractvalue %dx.types.ResRet.f32 %4150, 3
  %4155 = bitcast float %3949 to i32
  %4156 = and i32 %4155, 255
  %4157 = uitofp i32 %4156 to float
  %4158 = lshr i32 %4155, 8
  %4159 = and i32 %4158, 255
  %4160 = uitofp i32 %4159 to float
  %4161 = lshr i32 %4155, 16
  %4162 = and i32 %4161, 255
  %4163 = uitofp i32 %4162 to float
  %4164 = fmul fast float %4163, 0x3F70101000000000
  %4165 = fmul fast float %4151, %4157
  %4166 = fadd fast float %4165, %4160
  %4167 = fmul fast float %4166, 0x3F70101000000000
  %4168 = fadd fast float %4152, -5.000000e-01
  %4169 = fadd fast float %4154, -5.000000e-01
  %4170 = fmul fast float %4168, %4164
  %4171 = fmul fast float %4169, %4164
  %4172 = fadd fast float %4170, 5.000000e-01
  %4173 = fadd fast float %4171, 5.000000e-01
  %4174 = fmul fast float %4135, %3958
  %4175 = fmul fast float %4136, %3959
  %4176 = fmul fast float %4137, %3960
  %4177 = fmul fast float %4172, 2.000000e+00
  %4178 = fadd fast float %4177, -1.000000e+00
  %4179 = fmul fast float %4173, 2.000000e+00
  %4180 = fadd fast float %4179, -1.000000e+00
  %4181 = fadd fast float %4178, %4180
  %4182 = fmul fast float %4181, 5.000000e-01
  %4183 = fsub fast float %4178, %4180
  %4184 = fmul fast float %4183, 5.000000e-01
  %4185 = call float @dx.op.unary.f32(i32 6, float %4182)  ; FAbs(value)
  %4186 = fsub fast float 1.000000e+00, %4185
  %4187 = call float @dx.op.unary.f32(i32 6, float %4184)  ; FAbs(value)
  %4188 = fsub fast float %4186, %4187
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4182, float %4184, float %4188, float %4182, float %4184, float %4188)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = call float @dx.op.unary.f32(i32 25, float %4189)  ; Rsqrt(value)
  %4191 = fmul fast float %4182, %4190
  %4192 = fmul fast float %4184, %4190
  %4193 = fmul fast float %4190, %4188
  %4194 = fmul fast float %4193, %3923
  %4195 = fmul fast float %4193, %3924
  %4196 = fmul fast float %4193, %3925
  %4197 = fmul fast float %4191, %3946
  %4198 = fmul fast float %4191, %3947
  %4199 = fmul fast float %4191, %3948
  %4200 = fadd fast float %4197, %4194
  %4201 = fadd fast float %4198, %4195
  %4202 = fadd fast float %4199, %4196
  %4203 = fmul fast float %4192, %3952
  %4204 = fmul fast float %4192, %3953
  %4205 = fmul fast float %4192, %3954
  %4206 = fadd fast float %4200, %4203
  %4207 = fadd fast float %4201, %4204
  %4208 = fadd fast float %4202, %4205
  %4209 = call float @dx.op.dot3.f32(i32 55, float %4206, float %4207, float %4208, float %4206, float %4207, float %4208)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = call float @dx.op.unary.f32(i32 25, float %4209)  ; Rsqrt(value)
  %4211 = fmul fast float %4206, %4210
  %4212 = fmul fast float %4207, %4210
  %4213 = fmul fast float %4208, %4210
  %4214 = icmp ne i32 %4130, 0
  %4215 = select i1 %4214, float 1.000000e+00, float 0.000000e+00
  %4216 = fmul fast float %4120, %4215
  %4217 = and i32 %3973, 1
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4219, label %4223

; <label>:4219                                    ; preds = %4128
  %4220 = fsub fast float %4211, %3906
  %4221 = fsub fast float %4212, %3907
  %4222 = fsub fast float %4213, %3908
  br label %4223

; <label>:4223                                    ; preds = %4219, %4128
  %4224 = phi float [ %4220, %4219 ], [ %4211, %4128 ]
  %4225 = phi float [ %4221, %4219 ], [ %4212, %4128 ]
  %4226 = phi float [ %4222, %4219 ], [ %4213, %4128 ]
  %4227 = fmul float %4226, %4216
  %4228 = fmul float %4225, %4216
  %4229 = fmul float %4224, %4216
  %4230 = fadd fast float %4229, %3906
  %4231 = fadd fast float %4228, %3907
  %4232 = fadd fast float %4227, %3908
  %4233 = icmp ne i32 %4129, 0
  %4234 = select i1 %4233, float 1.000000e+00, float 0.000000e+00
  %4235 = fmul fast float %4120, %4234
  %4236 = fsub fast float %4174, %3913
  %4237 = fsub fast float %4175, %3914
  %4238 = fsub fast float %4176, %3915
  %4239 = fmul fast float %4236, %4235
  %4240 = fmul fast float %4237, %4235
  %4241 = fmul fast float %4238, %4235
  %4242 = fadd fast float %4239, %3913
  %4243 = fadd fast float %4240, %3914
  %4244 = fadd fast float %4241, %3915
  %4245 = fsub fast float %4147, %3912
  %4246 = fmul fast float %4245, %4235
  %4247 = fadd fast float %4246, %3912
  %4248 = fmul fast float %4235, %3902
  %4249 = fsub fast float %3902, %4248
  %4250 = fmul fast float %4235, %3901
  %4251 = fsub fast float %3901, %4250
  %4252 = fadd fast float %4120, %3911
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fsub fast float %4167, %3910
  %4255 = fmul fast float %4254, %4216
  %4256 = fadd fast float %4255, %3910
  %4257 = fsub fast float %4153, %3909
  %4258 = fmul fast float %4257, %4216
  %4259 = fadd fast float %4258, %3909
  %4260 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.CBufRet.f32 %4261, 1
  %4264 = fmul fast float %4263, %4260
  %4265 = fadd fast float %4264, %4262
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = bitcast float %3961 to i32
  %4268 = and i32 %4267, 65535
  %4269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4268)  ; LegacyF16ToF32(value)
  %4270 = lshr i32 %4267, 16
  %4271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4270)  ; LegacyF16ToF32(value)
  %4272 = fcmp fast oge float %4269, 0.000000e+00
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = select i1 %4272, float %4269, float %4274
  %4276 = fadd fast float %4275, %4271
  %4277 = fsub fast float %4266, %3900
  %4278 = fmul fast float %4277, %4120
  %4279 = fadd fast float %4278, %3900
  %4280 = fmul fast float %4276, %4120
  %4281 = call float @dx.op.binary.f32(i32 35, float %3899, float %4280)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float %3898, float %4120)  ; FMax(a,b)
  %4283 = and i32 %3973, 16
  %4284 = icmp eq i32 %4283, 0
  br i1 %4284, label %4307, label %4285

; <label>:4285                                    ; preds = %4223
  %4286 = bitcast float %3967 to i32
  %4287 = add i32 %3964, 0
  %4288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4287, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4288, %dx.types.Handle %4133, float %4061, float %4064, float undef, float undef, i32 0, i32 0, i32 undef, float %4066, float %4068, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = and i32 %4286, 65535
  %4294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4293)  ; LegacyF16ToF32(value)
  %4295 = fmul fast float %4290, %3958
  %4296 = fmul fast float %4291, %3959
  %4297 = fmul fast float %4292, %3960
  %4298 = and i32 %3973, 16384
  %4299 = icmp ne i32 %4298, 0
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = select i1 %4299, float %4301, float 1.000000e+00
  %4303 = fmul fast float %4302, %4294
  %4304 = fmul fast float %4295, %4303
  %4305 = fmul fast float %4296, %4303
  %4306 = fmul fast float %4297, %4303
  br label %4307

; <label>:4307                                    ; preds = %4285, %4223
  %4308 = phi float [ %4304, %4285 ], [ 0.000000e+00, %4223 ]
  %4309 = phi float [ %4305, %4285 ], [ 0.000000e+00, %4223 ]
  %4310 = phi float [ %4306, %4285 ], [ 0.000000e+00, %4223 ]
  %4311 = fsub fast float %4308, %3903
  %4312 = fsub fast float %4309, %3904
  %4313 = fsub fast float %4310, %3905
  %4314 = fmul fast float %4311, %4120
  %4315 = fmul fast float %4312, %4120
  %4316 = fmul fast float %4313, %4120
  %4317 = fadd fast float %4314, %3903
  %4318 = fadd fast float %4315, %3904
  %4319 = fadd fast float %4316, %3905
  br label %4022

; <label>:4320                                    ; preds = %4022
  br label %4321

; <label>:4321                                    ; preds = %4320, %3841
  %4322 = phi float [ 0.000000e+00, %3841 ], [ %4023, %4320 ]
  %4323 = phi float [ %910, %3841 ], [ %4024, %4320 ]
  %4324 = phi float [ %3810, %3841 ], [ %4025, %4320 ]
  %4325 = phi float [ %3808, %3841 ], [ %4026, %4320 ]
  %4326 = phi float [ 0.000000e+00, %3841 ], [ %4027, %4320 ]
  %4327 = phi float [ 0.000000e+00, %3841 ], [ %4028, %4320 ]
  %4328 = phi float [ %3802, %3841 ], [ %4029, %4320 ]
  %4329 = phi float [ %3803, %3841 ], [ %4030, %4320 ]
  %4330 = phi float [ %3804, %3841 ], [ %4031, %4320 ]
  %4331 = phi float [ %3836, %3841 ], [ %4032, %4320 ]
  %4332 = phi float [ %3837, %3841 ], [ %4033, %4320 ]
  %4333 = phi float [ %3838, %3841 ], [ %4034, %4320 ]
  %4334 = phi float [ %3807, %3841 ], [ %4035, %4320 ]
  %4335 = phi float [ %3806, %3841 ], [ %4036, %4320 ]
  %4336 = phi float [ 0.000000e+00, %3841 ], [ %4037, %4320 ]
  %4337 = phi float [ %3805, %3841 ], [ %4038, %4320 ]
  %4338 = phi float [ %3799, %3841 ], [ %4039, %4320 ]
  %4339 = phi float [ %3800, %3841 ], [ %4040, %4320 ]
  %4340 = phi float [ %3801, %3841 ], [ %4041, %4320 ]
  %4341 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %4331, float %4332, float %4333)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = call float @dx.op.unary.f32(i32 25, float %4341)  ; Rsqrt(value)
  %4343 = fmul fast float %4342, %4331
  %4344 = fmul fast float %4342, %4332
  %4345 = fmul fast float %4342, %4333
  %4346 = fadd fast float %4336, %910
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = call float @dx.op.dot3.f32(i32 55, float %4343, float %4344, float %4345, float %4343, float %4344, float %4345)  ; Dot3(ax,ay,az,bx,by,bz)
  %4349 = call float @dx.op.unary.f32(i32 25, float %4348)  ; Rsqrt(value)
  %4350 = fmul fast float %4349, %4343
  %4351 = fmul fast float %4349, %4344
  %4352 = fmul fast float %4349, %4345
  br label %4353

; <label>:4353                                    ; preds = %4321, %3796
  %4354 = phi float [ %4338, %4321 ], [ %3799, %3796 ]
  %4355 = phi float [ %4339, %4321 ], [ %3800, %3796 ]
  %4356 = phi float [ %4340, %4321 ], [ %3801, %3796 ]
  %4357 = phi float [ %4328, %4321 ], [ %3802, %3796 ]
  %4358 = phi float [ %4329, %4321 ], [ %3803, %3796 ]
  %4359 = phi float [ %4330, %4321 ], [ %3804, %3796 ]
  %4360 = phi float [ %4350, %4321 ], [ %3836, %3796 ]
  %4361 = phi float [ %4351, %4321 ], [ %3837, %3796 ]
  %4362 = phi float [ %4352, %4321 ], [ %3838, %3796 ]
  %4363 = phi float [ %4337, %4321 ], [ %3805, %3796 ]
  %4364 = phi float [ %4347, %4321 ], [ %910, %3796 ]
  %4365 = phi float [ %4335, %4321 ], [ %3806, %3796 ]
  %4366 = phi float [ %4334, %4321 ], [ %3807, %3796 ]
  %4367 = phi float [ %4327, %4321 ], [ 0.000000e+00, %3796 ]
  %4368 = phi float [ %4326, %4321 ], [ 0.000000e+00, %3796 ]
  %4369 = phi float [ %4322, %4321 ], [ 0.000000e+00, %3796 ]
  %4370 = phi float [ %4324, %4321 ], [ %3810, %3796 ]
  %4371 = phi float [ %4323, %4321 ], [ %910, %3796 ]
  %4372 = phi float [ %4325, %4321 ], [ %3808, %3796 ]
  %4373 = add i32 %33, 392
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = extractvalue %dx.types.ResRet.i32 %4374, 1
  %4377 = extractvalue %dx.types.ResRet.i32 %4374, 2
  %4378 = extractvalue %dx.types.ResRet.i32 %4374, 3
  %4379 = bitcast i32 %4375 to float
  %4380 = bitcast i32 %4376 to float
  %4381 = bitcast i32 %4377 to float
  %4382 = bitcast i32 %4378 to float
  %4383 = fsub fast float %4354, %4379
  %4384 = fsub fast float %4355, %4380
  %4385 = fsub fast float %4356, %4381
  %4386 = fmul fast float %4383, %165
  %4387 = fmul fast float %4384, %165
  %4388 = fmul fast float %4385, %165
  %4389 = fadd fast float %4386, %4379
  %4390 = fadd fast float %4387, %4380
  %4391 = fadd fast float %4388, %4381
  %4392 = fsub fast float %4364, %4382
  %4393 = fmul fast float %4392, %165
  %4394 = fadd fast float %4393, %4382
  %4395 = fadd fast float %4363, 0xBFB99999A0000000
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fmul fast float %4396, 0x3FF1C71C80000000
  %4398 = call float @dx.op.binary.f32(i32 36, float %4363, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4399 = fsub fast float 1.000000e+00, %4397
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4401 = fmul fast float %4389, %4400
  %4402 = fmul fast float %4390, %4400
  %4403 = fmul fast float %4391, %4400
  %4404 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4407 = fmul fast float %4389, %4397
  %4408 = fmul fast float %4390, %4397
  %4409 = fmul fast float %4391, %4397
  %4410 = fadd fast float %4407, %4398
  %4411 = fadd fast float %4408, %4398
  %4412 = fadd fast float %4409, %4398
  %4413 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4415 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4416 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 3
  %4419 = and i32 %4418, 8
  %4420 = icmp ne i32 %4419, 0
  %4421 = call float @dx.op.binary.f32(i32 35, float %4404, float %4389)  ; FMax(a,b)
  %4422 = call float @dx.op.binary.f32(i32 35, float %4405, float %4389)  ; FMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 35, float %4406, float %4389)  ; FMax(a,b)
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4405, float %4406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = select i1 %205, float %4389, float %4404
  %4426 = select i1 %205, float %4424, float %4405
  %4427 = select i1 %205, float 1.000000e+00, float %4406
  %4428 = select i1 %4420, float %4421, float %4425
  %4429 = select i1 %4420, float %4422, float %4426
  %4430 = select i1 %4420, float %4423, float %4427
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4435 = fadd fast float %4432, %131
  %4436 = fadd fast float %4433, %132
  %4437 = fadd fast float %4434, %133
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4441 = fsub fast float %4435, %4439
  %4442 = fsub fast float %4436, %4440
  %4443 = fmul fast float %4441, %4441
  %4444 = fmul fast float %4442, %4442
  %4445 = fadd fast float %4443, %4444
  %4446 = call float @dx.op.unary.f32(i32 24, float %4445)  ; Sqrt(value)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4448 = fcmp fast olt float %4446, %4447
  br i1 %4448, label %4449, label %4516

; <label>:4449                                    ; preds = %4353
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4457 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4458 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4460 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4461 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4462 = fadd fast float %4459, %4435
  %4463 = fadd fast float %4460, %4436
  %4464 = fadd fast float %4461, %4437
  %4465 = fmul fast float %4462, %4451
  %4466 = call float @dx.op.tertiary.f32(i32 46, float %4463, float %4453, float %4465)  ; FMad(a,b,c)
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4455, float %4466)  ; FMad(a,b,c)
  %4468 = fmul fast float %4462, %4456
  %4469 = call float @dx.op.tertiary.f32(i32 46, float %4463, float %4457, float %4468)  ; FMad(a,b,c)
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4458, float %4469)  ; FMad(a,b,c)
  %4471 = fsub fast float %4467, %4459
  %4472 = fsub fast float %4470, %4460
  %4473 = fsub fast float %4471, %4439
  %4474 = fadd fast float %4473, %4447
  %4475 = fsub fast float %4472, %4440
  %4476 = fadd fast float %4475, %4447
  %4477 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4478 = fmul fast float %4474, %4477
  %4479 = fmul fast float %4476, %4477
  %4480 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4482 = fsub fast float 1.000000e+00, %4480
  %4483 = fsub fast float 1.000000e+00, %4481
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4482, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = fcmp fast ugt float %4485, 0.000000e+00
  br i1 %4486, label %4487, label %4790

; <label>:4487                                    ; preds = %4449
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4490 = fmul fast float %4489, %4485
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4492 = fadd fast float %4491, %4490
  %4493 = extractvalue %dx.types.CBufRet.f32 %4454, 2
  %4494 = fadd fast float %4492, %4461
  %4495 = fmul fast float %4467, %4455
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4470, float %4458, float %4495)  ; FMad(a,b,c)
  %4497 = call float @dx.op.tertiary.f32(i32 46, float %4494, float %4493, float %4496)  ; FMad(a,b,c)
  %4498 = fsub fast float %4497, %4461
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4501 = fsub fast float %4498, %4500
  %4502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4482, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.ResRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4502, 2
  %4506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4482, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = fadd fast float %4507, %4503
  %4511 = fmul fast float %4510, 0x3F847AE140000000
  %4512 = fadd fast float %4508, %4504
  %4513 = fmul fast float %4512, 0x3F847AE140000000
  %4514 = fadd fast float %4509, %4505
  %4515 = fmul fast float %4514, 0x3F847AE140000000
  br label %4790

; <label>:4516                                    ; preds = %4353
  %4517 = and i32 %181, 1
  %4518 = icmp eq i32 %4517, 0
  br i1 %4518, label %4790, label %4519

; <label>:4519                                    ; preds = %4516
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4527 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4528 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4530 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4531 = extractvalue %dx.types.CBufRet.f32 %4524, 3
  %4532 = fadd fast float %4529, %4435
  %4533 = fadd fast float %4530, %4436
  %4534 = fadd fast float %4531, %4437
  %4535 = fmul fast float %4532, %4521
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4523, float %4535)  ; FMad(a,b,c)
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4525, float %4536)  ; FMad(a,b,c)
  %4538 = fmul fast float %4532, %4526
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4527, float %4538)  ; FMad(a,b,c)
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4528, float %4539)  ; FMad(a,b,c)
  %4541 = fsub fast float %4537, %4529
  %4542 = fsub fast float %4540, %4530
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.i32 %4550, 0
  %4552 = extractvalue %dx.types.CBufRet.i32 %4550, 1
  %4553 = udiv i32 %4552, %4551
  %4554 = fsub fast float %4541, %4544
  %4555 = fsub fast float %4542, %4545
  %4556 = call float @dx.op.binary.f32(i32 35, float %4554, float 0.000000e+00)  ; FMax(a,b)
  %4557 = call float @dx.op.binary.f32(i32 35, float %4555, float 0.000000e+00)  ; FMax(a,b)
  %4558 = call float @dx.op.binary.f32(i32 36, float %4556, float %4546)  ; FMin(a,b)
  %4559 = call float @dx.op.binary.f32(i32 36, float %4557, float %4547)  ; FMin(a,b)
  %4560 = add i32 %4551, -1
  %4561 = add i32 %4553, -1
  %4562 = fmul fast float %4558, %4549
  %4563 = fmul fast float %4559, %4549
  %4564 = fptoui float %4562 to i32
  %4565 = fptoui float %4563 to i32
  %4566 = call i32 @dx.op.binary.i32(i32 40, i32 %4564, i32 %4560)  ; UMin(a,b)
  %4567 = call i32 @dx.op.binary.i32(i32 40, i32 %4565, i32 %4561)  ; UMin(a,b)
  %4568 = mul i32 %4567, %4551
  %4569 = add i32 %4568, %4566
  %4570 = shl i32 %4569, 2
  %4571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.i32 %4571, 0
  %4573 = icmp eq i32 %4572, -1
  br i1 %4573, label %4790, label %4574

; <label>:4574                                    ; preds = %4519
  %4575 = mul i32 %4572, 148
  %4576 = add i32 %4575, 4
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = add i32 %4575, 8
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = add i32 %4575, 36
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = add i32 %4575, 60
  %4586 = add i32 %4575, 92
  %4587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.i32 %4587, 0
  %4589 = add i32 %4575, 116
  %4590 = fsub fast float %4541, %4578
  %4591 = fsub fast float %4542, %4581
  %4592 = fmul fast float %4549, %4590
  %4593 = fmul fast float %4549, %4591
  %4594 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4596 = fsub fast float 1.000000e+00, %4595
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 2
  %4599 = call float @dx.op.unary.f32(i32 83, float %4594)  ; DerivCoarseX(value)
  %4600 = call float @dx.op.unary.f32(i32 83, float %4596)  ; DerivCoarseX(value)
  %4601 = call float @dx.op.unary.f32(i32 84, float %4594)  ; DerivCoarseY(value)
  %4602 = call float @dx.op.unary.f32(i32 84, float %4596)  ; DerivCoarseY(value)
  %4603 = fmul fast float %4599, %4598
  %4604 = fmul fast float %4600, %4598
  %4605 = fmul fast float %4601, %4598
  %4606 = fmul fast float %4602, %4598
  %4607 = call float @dx.op.dot2.f32(i32 54, float %4605, float %4606, float %4605, float %4606)  ; Dot2(ax,ay,bx,by)
  %4608 = call float @dx.op.dot2.f32(i32 54, float %4603, float %4604, float %4603, float %4604)  ; Dot2(ax,ay,bx,by)
  %4609 = call float @dx.op.binary.f32(i32 35, float %4608, float %4607)  ; FMax(a,b)
  %4610 = call float @dx.op.unary.f32(i32 23, float %4609)  ; Log(value)
  %4611 = fmul fast float %4610, 5.000000e-01
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4614 = fadd fast float %4613, %4611
  %4615 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 3
  %4618 = fadd fast float %4617, %4615
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4621 = fadd fast float %4618, %4620
  %4622 = add i32 %4588, 0
  %4623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4622, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4624 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4623, i32 0)  ; GetDimensions(handle,mipLevel)
  %4625 = extractvalue %dx.types.Dimensions %4624, 0
  %4626 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4625)  ; FirstbitLo(value)
  %4627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.i32 %4627, 1
  %4629 = sub nsw i32 %4628, %4626
  %4630 = sitofp i32 %4629 to float
  %4631 = fsub fast float %4621, %4630
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4623, %dx.types.Handle %27, float %4594, float %4596, float %4584, float undef, i32 0, i32 0, i32 undef, float %4632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 0
  %4635 = fcmp ule float %4634, 0x3FE0101020000000
  %4636 = extractvalue %dx.types.CBufRet.i32 %4627, 0
  %4637 = and i32 %4636, 128
  %4638 = icmp ne i32 %4637, 0
  %4639 = and i1 %4635, %4638
  br i1 %4639, label %4790, label %4640

; <label>:4640                                    ; preds = %4574
  %4641 = add i32 %4575, 20
  %4642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4641, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = add i32 %4575, 24
  %4645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = add i32 %4575, 40
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = add i32 %4575, 96
  %4651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.i32 %4651, 0
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4655 = fmul fast float %4654, %4594
  %4656 = fmul fast float %4654, %4596
  %4657 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4658 = fadd fast float %4655, %4657
  %4659 = fadd fast float %4656, %4657
  %4660 = add i32 %4652, 0
  %4661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4660, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4662 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4661, i32 0)  ; GetDimensions(handle,mipLevel)
  %4663 = extractvalue %dx.types.Dimensions %4662, 0
  %4664 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4663)  ; FirstbitLo(value)
  %4665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.i32 %4665, 1
  %4667 = sub nsw i32 %4666, %4664
  %4668 = sitofp i32 %4667 to float
  %4669 = fsub fast float %4618, %4668
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float 0.000000e+00)  ; FMax(a,b)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4661, %dx.types.Handle %27, float %4658, float %4659, float %4649, float undef, i32 0, i32 0, i32 undef, float %4670)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = fmul fast float %4672, %4643
  %4674 = fadd fast float %4673, %4646
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 3
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4683 = extractvalue %dx.types.CBufRet.f32 %4675, 3
  %4684 = fadd fast float %4680, %4541
  %4685 = fadd fast float %4682, %4542
  %4686 = fadd fast float %4674, %4683
  %4687 = fmul fast float %4684, %4676
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4685, float %4677, float %4687)  ; FMad(a,b,c)
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4686, float %4678, float %4688)  ; FMad(a,b,c)
  %4690 = fsub fast float %4689, %4683
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4693 = fsub fast float %4690, %4692
  %4694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.i32 %4694, 0
  %4696 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 %4695)  ; UMin(a,b)
  %4697 = mul i32 %4696, 36
  %4698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4697, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.i32 %4698, 0
  %4700 = add i32 %4697, 4
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = fmul fast float %4702, %4594
  %4704 = fmul fast float %4702, %4596
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4706 = fadd fast float %4703, %4705
  %4707 = fadd fast float %4704, %4705
  %4708 = icmp eq i32 %4699, 0
  br i1 %4708, label %4777, label %4709

; <label>:4709                                    ; preds = %4640
  br label %4710

; <label>:4710                                    ; preds = %4767, %4709
  %4711 = phi float [ %4768, %4767 ], [ 0.000000e+00, %4709 ]
  %4712 = phi float [ %4769, %4767 ], [ 0.000000e+00, %4709 ]
  %4713 = phi float [ %4770, %4767 ], [ 0.000000e+00, %4709 ]
  %4714 = phi float [ %4771, %4767 ], [ 0.000000e+00, %4709 ]
  %4715 = phi float [ %4772, %4767 ], [ 0.000000e+00, %4709 ]
  %4716 = phi float [ %4773, %4767 ], [ 0.000000e+00, %4709 ]
  %4717 = phi i32 [ %4774, %4767 ], [ 0, %4709 ]
  %4718 = shl i32 %4717, 2
  %4719 = add i32 %4585, %4718
  %4720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4719, i32 undef)  ; BufferLoad(srv,index,wot)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = add i32 %4589, %4718
  %4723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.i32 %4723, 0
  %4725 = add i32 %4724, 0
  %4726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4725, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4727 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4726, i32 0)  ; GetDimensions(handle,mipLevel)
  %4728 = extractvalue %dx.types.Dimensions %4727, 0
  %4729 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4728)  ; FirstbitLo(value)
  %4730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.i32 %4730, 1
  %4732 = sub nsw i32 %4731, %4729
  %4733 = sitofp i32 %4732 to float
  %4734 = fsub fast float %4618, %4733
  %4735 = call float @dx.op.binary.f32(i32 35, float %4734, float 0.000000e+00)  ; FMax(a,b)
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4726, %dx.types.Handle %27, float %4706, float %4707, float %4721, float undef, i32 0, i32 0, i32 undef, float %4735)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = fcmp fast ogt float %4737, 0.000000e+00
  br i1 %4738, label %4739, label %4767

; <label>:4739                                    ; preds = %4710
  %4740 = add i32 %4700, %4718
  %4741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4740, i32 undef)  ; BufferLoad(srv,index,wot)
  %4742 = extractvalue %dx.types.ResRet.i32 %4741, 0
  %4743 = and i32 %4742, 32767
  %4744 = mul nuw nsw i32 %4743, 928
  %4745 = add nuw nsw i32 %4744, 48
  %4746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4745, i32 undef)  ; BufferLoad(srv,index,wot)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4750 = add nuw nsw i32 %4744, 60
  %4751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4750, i32 undef)  ; BufferLoad(srv,index,wot)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = fmul fast float %4747, %4737
  %4756 = fmul fast float %4748, %4737
  %4757 = fmul fast float %4749, %4737
  %4758 = fadd fast float %4755, %4711
  %4759 = fadd fast float %4756, %4712
  %4760 = fadd fast float %4757, %4713
  %4761 = fmul fast float %4752, %4737
  %4762 = fmul fast float %4753, %4737
  %4763 = fmul fast float %4754, %4737
  %4764 = fadd fast float %4761, %4714
  %4765 = fadd fast float %4762, %4715
  %4766 = fadd fast float %4763, %4716
  br label %4767

; <label>:4767                                    ; preds = %4739, %4710
  %4768 = phi float [ %4758, %4739 ], [ %4711, %4710 ]
  %4769 = phi float [ %4759, %4739 ], [ %4712, %4710 ]
  %4770 = phi float [ %4760, %4739 ], [ %4713, %4710 ]
  %4771 = phi float [ %4764, %4739 ], [ %4714, %4710 ]
  %4772 = phi float [ %4765, %4739 ], [ %4715, %4710 ]
  %4773 = phi float [ %4766, %4739 ], [ %4716, %4710 ]
  %4774 = add nuw i32 %4717, 1
  %4775 = icmp eq i32 %4774, %4699
  br i1 %4775, label %4776, label %4710

; <label>:4776                                    ; preds = %4767
  br label %4777

; <label>:4777                                    ; preds = %4776, %4640
  %4778 = phi float [ 0.000000e+00, %4640 ], [ %4768, %4776 ]
  %4779 = phi float [ 0.000000e+00, %4640 ], [ %4769, %4776 ]
  %4780 = phi float [ 0.000000e+00, %4640 ], [ %4770, %4776 ]
  %4781 = phi float [ 0.000000e+00, %4640 ], [ %4771, %4776 ]
  %4782 = phi float [ 0.000000e+00, %4640 ], [ %4772, %4776 ]
  %4783 = phi float [ 0.000000e+00, %4640 ], [ %4773, %4776 ]
  %4784 = fadd fast float %4781, %4778
  %4785 = fmul fast float %4784, 0x3F847AE140000000
  %4786 = fadd fast float %4782, %4779
  %4787 = fmul fast float %4786, 0x3F847AE140000000
  %4788 = fadd fast float %4783, %4780
  %4789 = fmul fast float %4788, 0x3F847AE140000000
  br label %4790

; <label>:4790                                    ; preds = %4777, %4574, %4519, %4516, %4487, %4449
  %4791 = phi float [ %4501, %4487 ], [ -1.310720e+05, %4449 ], [ %4693, %4777 ], [ -1.310720e+05, %4519 ], [ -1.310720e+05, %4574 ], [ -1.310720e+05, %4516 ]
  %4792 = phi float [ %4511, %4487 ], [ 0.000000e+00, %4449 ], [ %4785, %4777 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4516 ]
  %4793 = phi float [ %4513, %4487 ], [ 0.000000e+00, %4449 ], [ %4787, %4777 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4516 ]
  %4794 = phi float [ %4515, %4487 ], [ 0.000000e+00, %4449 ], [ %4789, %4777 ], [ 0.000000e+00, %4519 ], [ 0.000000e+00, %4574 ], [ 0.000000e+00, %4516 ]
  %4795 = phi i1 [ true, %4487 ], [ false, %4449 ], [ true, %4777 ], [ false, %4519 ], [ false, %4574 ], [ false, %4516 ]
  %4796 = and i32 %181, 3
  %4797 = icmp eq i32 %4796, 1
  %4798 = select i1 %4797, float 1.000000e+00, float 0.000000e+00
  %4799 = fsub fast float %4791, %133
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = select i1 %4795, float %4800, float 1.000000e+00
  %4802 = fmul fast float %4801, %4798
  %4803 = icmp eq i32 %4796, 3
  %4804 = select i1 %4803, float 1.000000e+00, float %4802
  %4805 = call float @dx.op.binary.f32(i32 35, float %4369, float %4804)  ; FMax(a,b)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fcmp fast une float %4806, 0.000000e+00
  %4808 = fsub fast float -0.000000e+00, %151
  %4809 = fsub fast float -0.000000e+00, %152
  %4810 = fsub fast float -0.000000e+00, %153
  br i1 %4807, label %4811, label %4973

; <label>:4811                                    ; preds = %4790
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = fmul fast float %4806, 2.500000e+00
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4815 = fmul fast float %4806, 0x4013FFFFE0000000
  %4816 = fadd fast float %4815, 0xBFFFFFFFE0000000
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = fmul fast float %4806, 0x4004000020000000
  %4819 = fadd fast float %4818, 0xBFF8000040000000
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4822 = fmul fast float %4395, 1.000000e+01
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = fmul fast float %4823, 2.000000e+00
  %4825 = fsub fast float 3.000000e+00, %4824
  %4826 = fmul fast float %4823, %4823
  %4827 = fmul fast float %4826, %4825
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = fsub fast float 0x3FE3333340000000, %4416
  %4830 = fmul fast float %4829, 0x400AAAAAA0000000
  %4831 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4832 = fmul fast float %4828, %4831
  %4833 = fmul fast float %4428, 0x3FEA2B8620000000
  %4834 = fmul fast float %4429, 0x3FEA2B8620000000
  %4835 = fmul fast float %4430, 0x3FEA2B8620000000
  %4836 = fadd fast float %4833, 0x3FC81DFBA0000000
  %4837 = fmul fast float %4836, %4428
  %4838 = fadd fast float %4837, 0x3F910E6020000000
  %4839 = fadd fast float %4834, 0x3FC81DFBA0000000
  %4840 = fmul fast float %4839, %4429
  %4841 = fadd fast float %4840, 0x3F910E6020000000
  %4842 = fadd fast float %4835, 0x3FC81DFBA0000000
  %4843 = fmul fast float %4842, %4430
  %4844 = fadd fast float %4843, 0x3F910E6020000000
  %4845 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = fsub fast float %4845, %4428
  %4849 = fsub fast float %4846, %4429
  %4850 = fsub fast float %4847, %4430
  %4851 = fmul fast float %4848, %4821
  %4852 = fmul fast float %4851, %4832
  %4853 = fmul fast float %4849, %4821
  %4854 = fmul fast float %4853, %4832
  %4855 = fmul fast float %4850, %4821
  %4856 = fmul fast float %4855, %4832
  %4857 = fadd fast float %4852, %4428
  %4858 = fadd fast float %4854, %4429
  %4859 = fadd fast float %4856, %4430
  %4860 = fmul fast float %4366, %4366
  %4861 = fmul fast float %4860, %4860
  %4862 = fadd fast float %4817, 1.000000e+00
  %4863 = fsub fast float %4862, %4832
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fsub fast float 1.000000e+00, %4861
  %4868 = call float @dx.op.binary.f32(i32 36, float %4864, float %4867)  ; FMin(a,b)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4870 = call float @dx.op.binary.f32(i32 35, float %4868, float %4869)  ; FMax(a,b)
  %4871 = fadd fast float %4866, 0xBFE4CCCCC0000000
  %4872 = fmul fast float %4871, 0x4006DB6DA0000000
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = fmul fast float %4873, 2.000000e+00
  %4875 = fsub fast float 3.000000e+00, %4874
  %4876 = bitcast float %4413 to i32
  %4877 = ashr i32 %4876, 1
  %4878 = add nsw i32 %4877, 532487669
  %4879 = bitcast i32 %4878 to float
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = bitcast float %4880 to i32
  %4882 = sub nsw i32 2129859010, %4881
  %4883 = bitcast i32 %4882 to float
  %4884 = fmul fast float %4883, 2.000000e+00
  %4885 = bitcast float %4414 to i32
  %4886 = ashr i32 %4885, 1
  %4887 = add nsw i32 %4886, 532487669
  %4888 = bitcast i32 %4887 to float
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = fmul fast float %4892, 2.000000e+00
  %4894 = bitcast float %4415 to i32
  %4895 = ashr i32 %4894, 1
  %4896 = add nsw i32 %4895, 532487669
  %4897 = bitcast i32 %4896 to float
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = fmul fast float %4901, 2.000000e+00
  %4903 = fsub fast float 0x4002A9FBE0000000, %4884
  %4904 = fadd fast float %4884, 0x3FD54FDF00000000
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = fmul fast float %4907, %4903
  %4909 = fmul fast float %4908, %4908
  %4910 = fsub fast float 0x4002A9FBE0000000, %4893
  %4911 = fadd fast float %4893, 0x3FD54FDF00000000
  %4912 = bitcast float %4911 to i32
  %4913 = sub nsw i32 2129859010, %4912
  %4914 = bitcast i32 %4913 to float
  %4915 = fmul fast float %4914, %4910
  %4916 = fmul fast float %4915, %4915
  %4917 = fsub fast float 0x4002A9FBE0000000, %4902
  %4918 = fadd fast float %4902, 0x3FD54FDF00000000
  %4919 = bitcast float %4918 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = bitcast i32 %4920 to float
  %4922 = fmul fast float %4921, %4917
  %4923 = fmul fast float %4922, %4922
  %4924 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4909)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4916)  ; FMax(a,b)
  %4926 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4923)  ; FMax(a,b)
  %4927 = fsub fast float 1.000000e+00, %4812
  %4928 = fadd fast float %4927, %4828
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fsub fast float 1.000000e+00, %4804
  %4931 = fmul fast float %4870, %4930
  %4932 = fmul fast float %4873, %4873
  %4933 = fmul fast float %4932, %4931
  %4934 = fmul fast float %4933, %4875
  %4935 = fmul fast float %4930, 0xBFE99999A0000000
  %4936 = fmul fast float %4935, %4821
  %4937 = fmul fast float %4936, %4832
  %4938 = fadd fast float %4937, 1.000000e+00
  %4939 = fadd fast float %4416, -1.000000e+00
  %4940 = fmul fast float %4938, %4939
  %4941 = fadd fast float %4940, 1.000000e+00
  %4942 = fsub fast float %4924, %4413
  %4943 = fsub fast float %4925, %4414
  %4944 = fsub fast float %4926, %4415
  %4945 = fmul fast float %4934, %4942
  %4946 = fmul fast float %4934, %4943
  %4947 = fmul fast float %4934, %4944
  %4948 = fadd fast float %4945, %4413
  %4949 = fadd fast float %4946, %4414
  %4950 = fadd fast float %4947, %4415
  %4951 = fsub fast float %75, %4360
  %4952 = fsub fast float %76, %4361
  %4953 = fsub fast float %77, %4362
  %4954 = fmul fast float %4934, %4951
  %4955 = fmul fast float %4934, %4952
  %4956 = fmul fast float %4934, %4953
  %4957 = fadd fast float %4954, %4360
  %4958 = fadd fast float %4955, %4361
  %4959 = fadd fast float %4956, %4362
  %4960 = fmul fast float %4934, %4929
  %4961 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = fmul fast float %4960, %4962
  %4964 = fadd fast float %4963, %4961
  %4965 = fsub fast float 1.000000e+00, %4366
  %4966 = fmul fast float %4934, %4965
  %4967 = fadd fast float %4966, %4366
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4957, float %4958, float %4959, float %4957, float %4958, float %4959)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 25, float %4968)  ; Rsqrt(value)
  %4970 = fmul fast float %4957, %4969
  %4971 = fmul fast float %4958, %4969
  %4972 = fmul fast float %4959, %4969
  br label %4973

; <label>:4973                                    ; preds = %4811, %4790
  %4974 = phi float [ %4857, %4811 ], [ %4428, %4790 ]
  %4975 = phi float [ %4858, %4811 ], [ %4429, %4790 ]
  %4976 = phi float [ %4859, %4811 ], [ %4430, %4790 ]
  %4977 = phi float [ %4948, %4811 ], [ %4413, %4790 ]
  %4978 = phi float [ %4949, %4811 ], [ %4414, %4790 ]
  %4979 = phi float [ %4950, %4811 ], [ %4415, %4790 ]
  %4980 = phi float [ %4970, %4811 ], [ %4360, %4790 ]
  %4981 = phi float [ %4971, %4811 ], [ %4361, %4790 ]
  %4982 = phi float [ %4972, %4811 ], [ %4362, %4790 ]
  %4983 = phi float [ %4964, %4811 ], [ %4416, %4790 ]
  %4984 = phi float [ %4967, %4811 ], [ %4366, %4790 ]
  %4985 = select i1 %205, float 0.000000e+00, float %4979
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4981, float %4982, float %4808, float %4809, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4988 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = fmul fast float %4988, 2.000000e+00
  %4990 = fmul fast float %4989, %4980
  %4991 = fmul fast float %4989, %4981
  %4992 = fmul fast float %4989, %4982
  %4993 = fsub fast float %151, %4990
  %4994 = fsub fast float %152, %4991
  %4995 = fsub fast float %153, %4992
  %4996 = call float @dx.op.binary.f32(i32 36, float %4984, float 1.000000e+00)  ; FMin(a,b)
  %4997 = fsub fast float 1.000000e+00, %4984
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = fsub fast float 1.000000e+00, %45
  %5001 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = call float @dx.op.binary.f32(i32 35, float %5001, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5003 = fdiv fast float %5000, %5002
  %5004 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4981, float %4982, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fmul fast float %5005, 5.000000e-01
  %5007 = fadd fast float %5006, 5.000000e-01
  %5008 = fmul fast float %5007, %45
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4981, float %4982, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fmul fast float %5010, %5003
  %5012 = fadd fast float %5008, %5011
  %5013 = fsub fast float 5.000000e-01, %5006
  %5014 = fmul fast float %5013, %4974
  %5015 = fmul fast float %5013, %4975
  %5016 = fmul fast float %5013, %4976
  %5017 = fadd fast float %5012, %5014
  %5018 = fadd fast float %5012, %5015
  %5019 = fadd fast float %5012, %5016
  %5020 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fmul fast float %5021, 5.000000e-01
  %5023 = fadd fast float %5022, 5.000000e-01
  %5024 = fmul fast float %5023, %45
  %5025 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = fmul fast float %5026, %5003
  %5028 = fadd fast float %5024, %5027
  %5029 = fsub fast float 5.000000e-01, %5022
  %5030 = fmul fast float %5029, %4974
  %5031 = fmul fast float %5029, %4975
  %5032 = fmul fast float %5029, %4976
  %5033 = fadd fast float %5028, %5030
  %5034 = fadd fast float %5028, %5031
  %5035 = fadd fast float %5028, %5032
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 0
  %5038 = call float @dx.op.binary.f32(i32 36, float %4974, float %5037)  ; FMin(a,b)
  %5039 = fsub fast float 1.000000e+00, %4996
  %5040 = fmul fast float %5038, %5039
  %5041 = fsub fast float 1.000000e+00, %5040
  %5042 = bitcast float %5041 to i32
  %5043 = sub nsw i32 2129859010, %5042
  %5044 = bitcast i32 %5043 to float
  %5045 = call float @dx.op.binary.f32(i32 36, float %4975, float %5037)  ; FMin(a,b)
  %5046 = fmul fast float %5045, %5039
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = bitcast float %5047 to i32
  %5049 = sub nsw i32 2129859010, %5048
  %5050 = bitcast i32 %5049 to float
  %5051 = call float @dx.op.binary.f32(i32 36, float %4976, float %5037)  ; FMin(a,b)
  %5052 = fmul fast float %5051, %5039
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %4996, %46
  %5058 = fmul fast float %5057, %5017
  %5059 = fmul fast float %5058, %5044
  %5060 = fmul fast float %4996, %47
  %5061 = fmul fast float %5060, %5018
  %5062 = fmul fast float %5061, %5050
  %5063 = fmul fast float %4996, %48
  %5064 = fmul fast float %5063, %5019
  %5065 = fmul fast float %5064, %5056
  %5066 = call float @dx.op.binary.f32(i32 36, float %4977, float %5037)  ; FMin(a,b)
  %5067 = fmul fast float %5066, %5039
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = bitcast float %5068 to i32
  %5070 = sub nsw i32 2129859010, %5069
  %5071 = bitcast i32 %5070 to float
  %5072 = call float @dx.op.binary.f32(i32 36, float %4978, float %5037)  ; FMin(a,b)
  %5073 = fmul fast float %5072, %5039
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = bitcast float %5074 to i32
  %5076 = sub nsw i32 2129859010, %5075
  %5077 = bitcast i32 %5076 to float
  %5078 = call float @dx.op.binary.f32(i32 36, float %4985, float %5037)  ; FMin(a,b)
  %5079 = fmul fast float %5078, %5039
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = bitcast float %5080 to i32
  %5082 = sub nsw i32 2129859010, %5081
  %5083 = bitcast i32 %5082 to float
  %5084 = fmul fast float %5057, %5033
  %5085 = fmul fast float %5084, %5071
  %5086 = fmul fast float %5060, %5034
  %5087 = fmul fast float %5086, %5077
  %5088 = fmul fast float %5063, %5035
  %5089 = fmul fast float %5088, %5083
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5062, float %5065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = select i1 %205, float 0.000000e+00, float %5059
  %5092 = select i1 %205, float %5090, float %5062
  %5093 = select i1 %205, float 0.000000e+00, float %5065
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5087, float %5089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = select i1 %205, float 0.000000e+00, float %5085
  %5096 = select i1 %205, float %5094, float %5087
  %5097 = select i1 %205, float 0.000000e+00, float %5089
  %5098 = fmul fast float %4987, 9.843750e-01
  %5099 = fmul fast float %4983, 9.843750e-01
  %5100 = fadd fast float %5098, 7.812500e-03
  %5101 = fadd fast float %5099, 7.812500e-03
  %5102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5100, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 3
  %5105 = fmul fast float %5103, %4977
  %5106 = fmul fast float %5103, %4978
  %5107 = fmul fast float %5103, %4985
  %5108 = fadd fast float %5105, %5104
  %5109 = fadd fast float %5106, %5104
  %5110 = fadd fast float %5107, %5104
  %5111 = fcmp fast ogt float %4367, 0.000000e+00
  br i1 %5111, label %5112, label %5138

; <label>:5112                                    ; preds = %4973
  %5113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4367, float %4987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 1
  %5116 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5117 = fadd fast float %5114, -5.000000e-01
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fadd fast float %5116, -5.000000e-01
  %5120 = fsub fast float 1.000000e+00, %4977
  %5121 = fsub fast float 1.000000e+00, %4978
  %5122 = fsub fast float 1.000000e+00, %4985
  %5123 = fmul fast float %4977, 4.000000e+00
  %5124 = fmul fast float %5123, %5120
  %5125 = fmul fast float %5124, %5117
  %5126 = fmul fast float %4978, 4.000000e+00
  %5127 = fmul fast float %5126, %5121
  %5128 = fmul fast float %5127, %5118
  %5129 = fmul fast float %4985, 4.000000e+00
  %5130 = fmul fast float %5129, %5122
  %5131 = fmul fast float %5130, %5119
  %5132 = fadd fast float %5125, %5108
  %5133 = fadd fast float %5128, %5109
  %5134 = fadd fast float %5131, %5110
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  br label %5138

; <label>:5138                                    ; preds = %5112, %4973
  %5139 = phi float [ %5135, %5112 ], [ %5108, %4973 ]
  %5140 = phi float [ %5136, %5112 ], [ %5109, %4973 ]
  %5141 = phi float [ %5137, %5112 ], [ %5110, %4973 ]
  %5142 = call float @dx.op.binary.f32(i32 35, float %5140, float %5141)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5139, float %5142)  ; FMax(a,b)
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5144, %5091
  %5146 = fmul fast float %5144, %5092
  %5147 = fmul fast float %5144, %5093
  %5148 = call float @dx.op.dot3.f32(i32 55, float %4974, float %4975, float %4976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = fcmp fast ogt float %5148, 0x3E7FF19E20000000
  %5150 = fdiv fast float 1.000000e+00, %5148
  %5151 = select i1 %5149, float %5150, float 0.000000e+00
  %5152 = fmul fast float %5151, %4974
  %5153 = fmul fast float %5151, %4975
  %5154 = fmul fast float %5151, %4976
  %5155 = fadd fast float %5152, -1.000000e+00
  %5156 = fadd fast float %5153, -1.000000e+00
  %5157 = fadd fast float %5154, -1.000000e+00
  %5158 = fmul fast float %5155, 5.000000e-01
  %5159 = fmul fast float %5156, 5.000000e-01
  %5160 = fmul fast float %5157, 5.000000e-01
  %5161 = fadd fast float %5158, 1.000000e+00
  %5162 = fadd fast float %5159, 1.000000e+00
  %5163 = fadd fast float %5160, 1.000000e+00
  %5164 = fmul fast float %5139, %5095
  %5165 = fmul fast float %5140, %5096
  %5166 = fmul fast float %5141, %5097
  %5167 = fsub fast float 1.000000e+00, %4987
  %5168 = bitcast float %5167 to i32
  %5169 = sitofp i32 %5168 to float
  %5170 = fmul fast float %5169, 5.000000e+00
  %5171 = fadd fast float %5170, 0xC1EFBF8940000000
  %5172 = fptosi float %5171 to i32
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %5173, %4368
  %5175 = fmul fast float %5091, %5174
  %5176 = fmul fast float %5175, %5144
  %5177 = fmul fast float %5176, %5161
  %5178 = fmul fast float %5092, %5174
  %5179 = fmul fast float %5178, %5144
  %5180 = fmul fast float %5179, %5162
  %5181 = fmul fast float %5093, %5174
  %5182 = fmul fast float %5181, %5144
  %5183 = fmul fast float %5182, %5163
  %5184 = fmul fast float %5145, %4394
  %5185 = fmul fast float %5146, %4394
  %5186 = fmul fast float %5147, %4394
  %5187 = fadd fast float %5164, %4357
  %5188 = fadd fast float %5187, %5177
  %5189 = fmul fast float %5188, %4394
  %5190 = fadd fast float %5165, %4358
  %5191 = fadd fast float %5190, %5180
  %5192 = fmul fast float %5191, %4394
  %5193 = fadd fast float %5166, %4359
  %5194 = fadd fast float %5193, %5183
  %5195 = fmul fast float %5194, %4394
  %5196 = bitcast i32 %4999 to float
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5199 = fcmp fast oeq float %5198, 0.000000e+00
  br i1 %5199, label %5427, label %5200

; <label>:5200                                    ; preds = %5138
  %5201 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5202 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5203 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = select i1 %205, float %5209, float %5205
  %5213 = select i1 %205, float %5211, float %5206
  %5214 = select i1 %205, float %5210, float %5207
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5217 = fcmp fast une float %5216, 0.000000e+00
  br i1 %5217, label %5218, label %5235

; <label>:5218                                    ; preds = %5200
  %5219 = fptoui float %68 to i32
  %5220 = fptoui float %69 to i32
  %5221 = lshr i32 %5219, 4
  %5222 = lshr i32 %5220, 4
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = fptoui float %5224 to i32
  %5226 = add i32 %5225, 15
  %5227 = lshr i32 %5226, 4
  %5228 = mul i32 %5227, %5222
  %5229 = add i32 %5228, %5221
  %5230 = shl i32 %5229, 3
  %5231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.i32 %5231, 0
  %5233 = and i32 %5232, -268435456
  %5234 = icmp eq i32 %5233, -1342177280
  br i1 %5234, label %5245, label %5235

; <label>:5235                                    ; preds = %5218, %5200
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 2
  %5238 = extractvalue %dx.types.CBufRet.f32 %5236, 3
  %5239 = fmul fast float %5237, %68
  %5240 = fmul fast float %5238, %69
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5239, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  br label %5245

; <label>:5245                                    ; preds = %5235, %5218
  %5246 = phi float [ %5242, %5235 ], [ 0.000000e+00, %5218 ]
  %5247 = phi float [ %5243, %5235 ], [ 0.000000e+00, %5218 ]
  %5248 = phi float [ %5244, %5235 ], [ 0.000000e+00, %5218 ]
  %5249 = call float @dx.op.binary.f32(i32 36, float %5247, float %5248)  ; FMin(a,b)
  %5250 = call float @dx.op.binary.f32(i32 36, float %5246, float %5249)  ; FMin(a,b)
  %5251 = fcmp fast ogt float %5250, 0.000000e+00
  br i1 %5251, label %5252, label %5427, !dx.controlflow.hints !72

; <label>:5252                                    ; preds = %5245
  %5253 = fmul fast float %5246, %5212
  %5254 = fmul fast float %5247, %5213
  %5255 = fmul fast float %5248, %5214
  %5256 = fsub fast float %5201, %151
  %5257 = fsub fast float %5202, %152
  %5258 = fsub fast float %5203, %153
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 25, float %5259)  ; Rsqrt(value)
  %5261 = fmul fast float %5260, %5256
  %5262 = fmul fast float %5260, %5257
  %5263 = fmul fast float %5260, %5258
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5267 = fmul fast float %5266, %5266
  %5268 = fmul fast float %5267, %5196
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %5269, %5266
  %5271 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4981, float %4982, float %5261, float %5262, float %5263)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = fmul fast float %5271, %5271
  %5273 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5274 = fsub fast float 1.000000e+00, %4983
  %5275 = call float @dx.op.binary.f32(i32 35, float %5274, float 0x3F847AE140000000)  ; FMax(a,b)
  %5276 = fmul fast float %5275, %5275
  %5277 = fmul fast float %5276, %5276
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = fmul fast float %4987, %4987
  %5280 = fmul fast float %5279, %5278
  %5281 = fadd fast float %5280, %5277
  %5282 = bitcast float %5281 to i32
  %5283 = ashr i32 %5282, 1
  %5284 = add nsw i32 %5283, 532487669
  %5285 = bitcast i32 %5284 to float
  %5286 = fadd fast float %5285, %4987
  %5287 = fmul fast float %5277, %5272
  %5288 = fsub fast float 1.000000e+00, %5272
  %5289 = fadd fast float %5288, %5287
  %5290 = fmul fast float %5273, %5273
  %5291 = fmul fast float %5290, %5278
  %5292 = fadd fast float %5291, %5277
  %5293 = bitcast float %5292 to i32
  %5294 = ashr i32 %5293, 1
  %5295 = add nsw i32 %5294, 532487669
  %5296 = bitcast i32 %5295 to float
  %5297 = fadd fast float %5296, %5273
  %5298 = fmul fast float %5289, %5289
  %5299 = fmul fast float %5298, %5286
  %5300 = fmul fast float %5299, %5297
  %5301 = fdiv fast float 0x3FF0A00000000000, %5300
  %5302 = fmul fast float %5301, %5277
  %5303 = call float @dx.op.unary.f32(i32 6, float %5265)  ; FAbs(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = bitcast float %5304 to i32
  %5306 = sitofp i32 %5305 to float
  %5307 = fmul fast float %5306, 5.000000e+00
  %5308 = fadd fast float %5307, 0xC1EFBF8940000000
  %5309 = fptosi float %5308 to i32
  %5310 = bitcast i32 %5309 to float
  %5311 = fsub fast float 1.000000e+00, %4977
  %5312 = fsub fast float 1.000000e+00, %4978
  %5313 = fsub fast float 1.000000e+00, %4985
  %5314 = fmul fast float %5310, %5311
  %5315 = fmul fast float %5310, %5312
  %5316 = fmul fast float %5310, %5313
  %5317 = fadd fast float %5314, %4977
  %5318 = fadd fast float %5315, %4978
  %5319 = fadd fast float %5316, %4985
  br i1 %5111, label %5320, label %5343

; <label>:5320                                    ; preds = %5252
  %5321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4367, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5322 = extractvalue %dx.types.ResRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.ResRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.ResRet.f32 %5321, 2
  %5325 = fadd fast float %5322, -5.000000e-01
  %5326 = fadd fast float %5323, -5.000000e-01
  %5327 = fadd fast float %5324, -5.000000e-01
  %5328 = fmul fast float %4977, 4.000000e+00
  %5329 = fmul fast float %5328, %5311
  %5330 = fmul fast float %5329, %5325
  %5331 = fmul fast float %4978, 4.000000e+00
  %5332 = fmul fast float %5331, %5312
  %5333 = fmul fast float %5332, %5326
  %5334 = fmul fast float %4985, 4.000000e+00
  %5335 = fmul fast float %5334, %5313
  %5336 = fmul fast float %5335, %5327
  %5337 = fadd fast float %5330, %5317
  %5338 = fadd fast float %5333, %5318
  %5339 = fadd fast float %5336, %5319
  %5340 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5341 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  br label %5343

; <label>:5343                                    ; preds = %5320, %5252
  %5344 = phi float [ %5340, %5320 ], [ %5317, %5252 ]
  %5345 = phi float [ %5341, %5320 ], [ %5318, %5252 ]
  %5346 = phi float [ %5342, %5320 ], [ %5319, %5252 ]
  %5347 = fmul fast float %5264, 9.843750e-01
  %5348 = fadd fast float %5347, 7.812500e-03
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5348, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5352 = fmul fast float %5350, %4977
  %5353 = fmul fast float %5350, %4978
  %5354 = fmul fast float %5350, %4985
  %5355 = fadd fast float %5352, %5351
  %5356 = fadd fast float %5353, %5351
  %5357 = fadd fast float %5354, %5351
  br i1 %5111, label %5358, label %5381

; <label>:5358                                    ; preds = %5343
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4367, float %5264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = fadd fast float %5360, -5.000000e-01
  %5364 = fadd fast float %5361, -5.000000e-01
  %5365 = fadd fast float %5362, -5.000000e-01
  %5366 = fmul fast float %4977, 4.000000e+00
  %5367 = fmul fast float %5366, %5311
  %5368 = fmul fast float %5367, %5363
  %5369 = fmul fast float %4978, 4.000000e+00
  %5370 = fmul fast float %5369, %5312
  %5371 = fmul fast float %5370, %5364
  %5372 = fmul fast float %4985, 4.000000e+00
  %5373 = fmul fast float %5372, %5313
  %5374 = fmul fast float %5373, %5365
  %5375 = fadd fast float %5368, %5355
  %5376 = fadd fast float %5371, %5356
  %5377 = fadd fast float %5374, %5357
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  br label %5381

; <label>:5381                                    ; preds = %5358, %5343
  %5382 = phi float [ %5378, %5358 ], [ %5355, %5343 ]
  %5383 = phi float [ %5379, %5358 ], [ %5356, %5343 ]
  %5384 = phi float [ %5380, %5358 ], [ %5357, %5343 ]
  %5385 = call float @dx.op.binary.f32(i32 35, float %5383, float %5384)  ; FMax(a,b)
  %5386 = call float @dx.op.binary.f32(i32 35, float %5382, float %5385)  ; FMax(a,b)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5344, %5302
  %5389 = fmul fast float %5345, %5302
  %5390 = fmul fast float %5346, %5302
  %5391 = fsub fast float 1.000000e+00, %5265
  %5392 = bitcast float %5391 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 5.000000e+00
  %5395 = fadd fast float %5394, 0xC1EFBF8940000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5397, %4368
  %5399 = fmul fast float %5387, %5398
  %5400 = fmul fast float %5399, %5161
  %5401 = fmul fast float %5399, %5162
  %5402 = fmul fast float %5399, %5163
  %5403 = fadd fast float %5400, %5388
  %5404 = fadd fast float %5401, %5389
  %5405 = fadd fast float %5402, %5390
  %5406 = fmul fast float %5270, %5253
  %5407 = fmul fast float %5406, %5387
  %5408 = fmul fast float %5270, %5254
  %5409 = fmul fast float %5408, %5387
  %5410 = fmul fast float %5270, %5255
  %5411 = fmul fast float %5410, %5387
  %5412 = fmul fast float %5406, %5403
  %5413 = fmul fast float %5408, %5404
  %5414 = fmul fast float %5410, %5405
  %5415 = fadd fast float %5407, %5145
  %5416 = fmul fast float %5415, %4394
  %5417 = fadd fast float %5409, %5146
  %5418 = fmul fast float %5417, %4394
  %5419 = fadd fast float %5411, %5147
  %5420 = fmul fast float %5419, %4394
  %5421 = fadd fast float %5412, %5188
  %5422 = fmul fast float %5421, %4394
  %5423 = fadd fast float %5413, %5191
  %5424 = fmul fast float %5423, %4394
  %5425 = fadd fast float %5414, %5194
  %5426 = fmul fast float %5425, %4394
  br label %5427

; <label>:5427                                    ; preds = %5381, %5245, %5138
  %5428 = phi float [ %5189, %5138 ], [ %5189, %5245 ], [ %5422, %5381 ]
  %5429 = phi float [ %5192, %5138 ], [ %5192, %5245 ], [ %5424, %5381 ]
  %5430 = phi float [ %5195, %5138 ], [ %5195, %5245 ], [ %5426, %5381 ]
  %5431 = phi float [ %5184, %5138 ], [ %5184, %5245 ], [ %5416, %5381 ]
  %5432 = phi float [ %5185, %5138 ], [ %5185, %5245 ], [ %5418, %5381 ]
  %5433 = phi float [ %5186, %5138 ], [ %5186, %5245 ], [ %5420, %5381 ]
  %5434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.i32 %5434, 0
  %5436 = icmp eq i32 %5435, 0
  br i1 %5436, label %5871, label %5437

; <label>:5437                                    ; preds = %5427
  %5438 = fptoui float %68 to i32
  %5439 = fptoui float %69 to i32
  %5440 = lshr i32 %5438, 4
  %5441 = lshr i32 %5439, 4
  %5442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.i32 %5442, 0
  %5444 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5441, i32 %5443, i32 %5440)  ; UMad(a,b,c)
  %5445 = add nsw i32 %5435, -1
  %5446 = call i32 @dx.op.binary.i32(i32 37, i32 %5445, i32 0)  ; IMax(a,b)
  %5447 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5448 = fptoui float %5447 to i32
  %5449 = lshr i32 %5448, 5
  %5450 = call i32 @dx.op.binary.i32(i32 40, i32 %5449, i32 8191)  ; UMin(a,b)
  %5451 = shl i32 %5450, 2
  %5452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.i32 %5452, 0
  %5454 = lshr i32 %5453, 16
  %5455 = and i32 %5453, 65535
  %5456 = lshr i32 %5453, 21
  %5457 = lshr i32 %5455, 5
  %5458 = call i32 @dx.op.binary.i32(i32 40, i32 %5457, i32 %5446)  ; UMin(a,b)
  %5459 = icmp ugt i32 %5456, %5458
  br i1 %5459, label %5871, label %5460

; <label>:5460                                    ; preds = %5437
  br label %5461

; <label>:5461                                    ; preds = %5861, %5460
  %5462 = phi i32 [ %5868, %5861 ], [ %5456, %5460 ]
  %5463 = phi float [ %5862, %5861 ], [ %5428, %5460 ]
  %5464 = phi float [ %5863, %5861 ], [ %5429, %5460 ]
  %5465 = phi float [ %5864, %5861 ], [ %5430, %5460 ]
  %5466 = phi float [ %5865, %5861 ], [ %5431, %5460 ]
  %5467 = phi float [ %5866, %5861 ], [ %5432, %5460 ]
  %5468 = phi float [ %5867, %5861 ], [ %5433, %5460 ]
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 0
  %5471 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5444, i32 %5470, i32 %5462)  ; UMad(a,b,c)
  %5472 = shl i32 %5471, 2
  %5473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.i32 %5473, 0
  %5475 = shl i32 %5462, 5
  %5476 = sub nsw i32 %5454, %5475
  %5477 = call i32 @dx.op.binary.i32(i32 37, i32 %5476, i32 0)  ; IMax(a,b)
  %5478 = call i32 @dx.op.binary.i32(i32 38, i32 %5477, i32 31)  ; IMin(a,b)
  %5479 = sub nsw i32 1, %5454
  %5480 = add nsw i32 %5479, %5455
  %5481 = call i32 @dx.op.binary.i32(i32 37, i32 %5480, i32 0)  ; IMax(a,b)
  %5482 = call i32 @dx.op.binary.i32(i32 38, i32 %5481, i32 32)  ; IMin(a,b)
  %5483 = and i32 %5482, 31
  %5484 = shl i32 -1, %5483
  %5485 = xor i32 %5484, -1
  %5486 = and i32 %5478, 31
  %5487 = shl i32 %5485, %5486
  %5488 = icmp eq i32 %5482, 32
  %5489 = select i1 %5488, i32 -1, i32 %5487
  %5490 = and i32 %5489, %5474
  %5491 = icmp eq i32 %5490, 0
  br i1 %5491, label %5861, label %5492

; <label>:5492                                    ; preds = %5461
  br label %5493

; <label>:5493                                    ; preds = %5573, %5492
  %5494 = phi i32 [ %5505, %5573 ], [ %5490, %5492 ]
  %5495 = phi float [ %5574, %5573 ], [ %5463, %5492 ]
  %5496 = phi float [ %5575, %5573 ], [ %5464, %5492 ]
  %5497 = phi float [ %5576, %5573 ], [ %5465, %5492 ]
  %5498 = phi float [ %5577, %5573 ], [ %5466, %5492 ]
  %5499 = phi float [ %5578, %5573 ], [ %5467, %5492 ]
  %5500 = phi float [ %5579, %5573 ], [ %5468, %5492 ]
  %5501 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5494)  ; FirstbitLo(value)
  %5502 = add i32 %5501, %5475
  %5503 = and i32 %5501, 31
  %5504 = shl i32 1, %5503
  %5505 = xor i32 %5504, %5494
  %5506 = mul i32 %5502, 112
  %5507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = extractvalue %dx.types.ResRet.f32 %5507, 2
  %5511 = or i32 %5506, 12
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = add i32 %5506, 44
  %5515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5514, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 0
  %5517 = add i32 %5506, 48
  %5518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5517, i32 undef)  ; BufferLoad(srv,index,wot)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = add i32 %5506, 80
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = select i1 %205, float %5524, float %5508
  %5528 = select i1 %205, float %5526, float %5509
  %5529 = select i1 %205, float %5525, float %5510
  %5530 = fsub fast float %5519, %131
  %5531 = fsub fast float %5520, %132
  %5532 = fsub fast float %5521, %133
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5532, float %5530, float %5531, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.unary.f32(i32 24, float %5533)  ; Sqrt(value)
  %5535 = fdiv fast float 1.000000e+00, %5534
  %5536 = fmul fast float %5535, %5530
  %5537 = fmul fast float %5535, %5531
  %5538 = fmul fast float %5535, %5532
  %5539 = fadd fast float %5534, %5513
  %5540 = fdiv fast float 1.000000e+00, %5539
  %5541 = fmul float %5516, %5540
  %5542 = fmul float %5541, %5541
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = and i32 %5504, %5490
  %5545 = icmp eq i32 %5544, 0
  br i1 %5545, label %5568, label %5546, !dx.controlflow.hints !73

; <label>:5546                                    ; preds = %5493
  %5547 = lshr i32 %5438, 5
  %5548 = lshr i32 %5439, 5
  %5549 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5547, i32 %5548, i32 %5502, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5550 = extractvalue %dx.types.ResRet.i32 %5549, 0
  %5551 = and i32 %5550, 3
  %5552 = icmp eq i32 %5551, 0
  %5553 = select i1 %5552, float 1.000000e+00, float 0.000000e+00
  %5554 = icmp eq i32 %5551, 3
  br i1 %5554, label %5555, label %5568

; <label>:5555                                    ; preds = %5546
  %5556 = lshr i32 %5550, 10
  %5557 = and i32 %5556, 8160
  %5558 = and i32 %5439, 31
  %5559 = or i32 %5557, %5558
  %5560 = lshr i32 %5550, 1
  %5561 = and i32 %5560, 16352
  %5562 = and i32 %5438, 31
  %5563 = or i32 %5561, %5562
  %5564 = lshr i32 %5550, 23
  %5565 = and i32 %5564, 255
  %5566 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5563, i32 %5559, i32 %5565, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 0
  br label %5568

; <label>:5568                                    ; preds = %5555, %5546, %5493
  %5569 = phi float [ %5567, %5555 ], [ %5553, %5546 ], [ 0.000000e+00, %5493 ]
  %5570 = call float @dx.op.binary.f32(i32 36, float %5569, float %5569)  ; FMin(a,b)
  %5571 = call float @dx.op.binary.f32(i32 36, float %5569, float %5570)  ; FMin(a,b)
  %5572 = fcmp fast ogt float %5571, 0.000000e+00
  br i1 %5572, label %5581, label %5573, !dx.controlflow.hints !74

; <label>:5573                                    ; preds = %5817, %5568
  %5574 = phi float [ %5495, %5568 ], [ %5857, %5817 ]
  %5575 = phi float [ %5496, %5568 ], [ %5858, %5817 ]
  %5576 = phi float [ %5497, %5568 ], [ %5859, %5817 ]
  %5577 = phi float [ %5498, %5568 ], [ %5851, %5817 ]
  %5578 = phi float [ %5499, %5568 ], [ %5852, %5817 ]
  %5579 = phi float [ %5500, %5568 ], [ %5853, %5817 ]
  %5580 = icmp eq i32 %5494, %5504
  br i1 %5580, label %5860, label %5493

; <label>:5581                                    ; preds = %5568
  %5582 = fmul fast float %5569, %5527
  %5583 = fmul fast float %5569, %5528
  %5584 = fmul fast float %5569, %5529
  %5585 = fsub fast float %5521, %4791
  %5586 = fcmp fast ogt float %5585, 0.000000e+00
  %5587 = fsub fast float %133, %4791
  %5588 = fcmp fast ogt float %5587, 0.000000e+00
  %5589 = xor i1 %5588, %5586
  %5590 = fsub fast float %4791, %5521
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = fadd fast float %5591, %5521
  %5593 = select i1 %5589, float %5521, float %5592
  %5594 = fsub fast float %5593, %133
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5594, float %5530, float %5531, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 25, float %5595)  ; Rsqrt(value)
  %5597 = fmul fast float %5596, %5530
  %5598 = fmul fast float %5596, %5531
  %5599 = fmul fast float %5596, %5594
  %5600 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fdiv fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5602, %5600
  %5604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5587, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fcmp fast ogt float %5604, 0.000000e+00
  %5606 = fcmp fast olt float %5604, 0.000000e+00
  %5607 = zext i1 %5605 to i32
  %5608 = zext i1 %5606 to i32
  %5609 = sub nsw i32 %5607, %5608
  %5610 = sitofp i32 %5609 to float
  %5611 = fsub fast float %5593, %4791
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5611, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fcmp fast ogt float %5612, 0.000000e+00
  %5614 = fcmp fast olt float %5612, 0.000000e+00
  %5615 = zext i1 %5613 to i32
  %5616 = zext i1 %5614 to i32
  %5617 = sub nsw i32 %5615, %5616
  %5618 = sitofp i32 %5617 to float
  %5619 = fcmp fast une float %5610, %5618
  br i1 %5619, label %5620, label %5630

; <label>:5620                                    ; preds = %5581
  %5621 = fmul fast float %5603, %5599
  %5622 = fmul fast float %5603, %5598
  %5623 = fmul fast float %5603, %5597
  %5624 = fmul fast float %5623, %5623
  %5625 = fmul fast float %5622, %5622
  %5626 = fadd fast float %5624, %5625
  %5627 = fmul fast float %5621, %5621
  %5628 = fadd fast float %5626, %5627
  %5629 = call float @dx.op.unary.f32(i32 24, float %5628)  ; Sqrt(value)
  br label %5642

; <label>:5630                                    ; preds = %5581
  %5631 = icmp slt i32 %5609, 0
  br i1 %5631, label %5632, label %5642

; <label>:5632                                    ; preds = %5630
  %5633 = fsub fast float %131, %5519
  %5634 = fsub fast float %132, %5520
  %5635 = fsub fast float %133, %5593
  %5636 = fmul fast float %5633, %5633
  %5637 = fmul fast float %5634, %5634
  %5638 = fadd fast float %5636, %5637
  %5639 = fmul fast float %5635, %5635
  %5640 = fadd fast float %5638, %5639
  %5641 = call float @dx.op.unary.f32(i32 24, float %5640)  ; Sqrt(value)
  br label %5642

; <label>:5642                                    ; preds = %5632, %5630, %5620
  %5643 = phi float [ %5629, %5620 ], [ %5641, %5632 ], [ 0.000000e+00, %5630 ]
  %5644 = and i1 %5588, %5586
  %5645 = fsub fast float -0.000000e+00, %5643
  %5646 = select i1 %5644, float -0.000000e+00, float %5645
  %5647 = fmul fast float %4792, 0x3FF7154760000000
  %5648 = fmul fast float %5647, %5646
  %5649 = fmul fast float %4793, 0x3FF7154760000000
  %5650 = fmul fast float %5649, %5646
  %5651 = fmul fast float %4794, 0x3FF7154760000000
  %5652 = fmul fast float %5651, %5646
  %5653 = call float @dx.op.unary.f32(i32 21, float %5648)  ; Exp(value)
  %5654 = call float @dx.op.unary.f32(i32 21, float %5650)  ; Exp(value)
  %5655 = call float @dx.op.unary.f32(i32 21, float %5652)  ; Exp(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5657 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5659 = fmul fast float %5582, %5656
  %5660 = fmul fast float %5583, %5657
  %5661 = fmul fast float %5584, %5658
  %5662 = fsub fast float %5536, %151
  %5663 = fsub fast float %5537, %152
  %5664 = fsub fast float %5538, %153
  %5665 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = call float @dx.op.unary.f32(i32 25, float %5665)  ; Rsqrt(value)
  %5667 = fmul fast float %5666, %5662
  %5668 = fmul fast float %5666, %5663
  %5669 = fmul fast float %5666, %5664
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5537, float %5538, float %4980, float %4981, float %4982)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5673 = fmul fast float %5672, %5543
  %5674 = fmul fast float %5672, %5672
  %5675 = fmul fast float %5674, %5196
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %5673, %5676
  %5678 = bitcast float %5533 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = sub nsw i32 1597463007, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = fmul fast float %5681, %5530
  %5683 = fmul fast float %5681, %5531
  %5684 = fmul fast float %5681, %5532
  %5685 = fsub fast float %5682, %151
  %5686 = fsub fast float %5683, %152
  %5687 = fsub fast float %5684, %153
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5685, float %5686, float %5687, float %5685, float %5686, float %5687)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 25, float %5688)  ; Rsqrt(value)
  %5690 = fmul fast float %5685, %5689
  %5691 = fmul fast float %5686, %5689
  %5692 = fmul fast float %5687, %5689
  %5693 = call float @dx.op.dot3.f32(i32 55, float %4980, float %4981, float %4982, float %5690, float %5691, float %5692)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = fmul fast float %5693, %5693
  %5695 = call float @dx.op.unary.f32(i32 6, float %5670)  ; FAbs(value)
  %5696 = fsub fast float 1.000000e+00, %4983
  %5697 = call float @dx.op.binary.f32(i32 35, float %5696, float 0x3F847AE140000000)  ; FMax(a,b)
  %5698 = fmul fast float %5697, %5697
  %5699 = fmul fast float %5698, %5698
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = fmul fast float %4987, %4987
  %5702 = fmul fast float %5701, %5700
  %5703 = fadd fast float %5702, %5699
  %5704 = bitcast float %5703 to i32
  %5705 = ashr i32 %5704, 1
  %5706 = add nsw i32 %5705, 532487669
  %5707 = bitcast i32 %5706 to float
  %5708 = fadd fast float %5707, %4987
  %5709 = fmul fast float %5699, %5694
  %5710 = fsub fast float 1.000000e+00, %5694
  %5711 = fadd fast float %5710, %5709
  %5712 = fmul fast float %5695, %5695
  %5713 = fmul fast float %5712, %5700
  %5714 = fadd fast float %5713, %5699
  %5715 = bitcast float %5714 to i32
  %5716 = ashr i32 %5715, 1
  %5717 = add nsw i32 %5716, 532487669
  %5718 = bitcast i32 %5717 to float
  %5719 = fadd fast float %5718, %5695
  %5720 = fmul fast float %5711, %5711
  %5721 = fmul fast float %5720, %5708
  %5722 = fmul fast float %5721, %5719
  %5723 = fdiv fast float 1.000000e+00, %5722
  %5724 = bitcast float %5699 to i32
  %5725 = sitofp i32 %5724 to float
  %5726 = fmul fast float %5725, 0x3FE7F73180000000
  %5727 = fadd fast float %5726, 0x41AFE27C40000000
  %5728 = fptosi float %5727 to i32
  %5729 = bitcast i32 %5728 to float
  %5730 = fmul fast float %5516, 0x3FD80E9D60000000
  %5731 = fmul fast float %5730, %5681
  %5732 = fadd fast float %5729, %5731
  %5733 = bitcast float %5732 to i32
  %5734 = sub nsw i32 2129859010, %5733
  %5735 = bitcast i32 %5734 to float
  %5736 = fmul fast float %5699, %5723
  %5737 = fmul fast float %5736, %5729
  %5738 = fmul fast float %5737, %5735
  %5739 = call float @dx.op.unary.f32(i32 6, float %5671)  ; FAbs(value)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = bitcast float %5740 to i32
  %5742 = sitofp i32 %5741 to float
  %5743 = fmul fast float %5742, 5.000000e+00
  %5744 = fadd fast float %5743, 0xC1EFBF8940000000
  %5745 = fptosi float %5744 to i32
  %5746 = bitcast i32 %5745 to float
  %5747 = fsub fast float 1.000000e+00, %4977
  %5748 = fsub fast float 1.000000e+00, %4978
  %5749 = fsub fast float 1.000000e+00, %4985
  %5750 = fmul fast float %5746, %5747
  %5751 = fmul fast float %5746, %5748
  %5752 = fmul fast float %5746, %5749
  %5753 = fadd fast float %5750, %4977
  %5754 = fadd fast float %5751, %4978
  %5755 = fadd fast float %5752, %4985
  br i1 %5111, label %5756, label %5779

; <label>:5756                                    ; preds = %5642
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4367, float %5739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = fadd fast float %5758, -5.000000e-01
  %5762 = fadd fast float %5759, -5.000000e-01
  %5763 = fadd fast float %5760, -5.000000e-01
  %5764 = fmul fast float %4977, 4.000000e+00
  %5765 = fmul fast float %5764, %5747
  %5766 = fmul fast float %5765, %5761
  %5767 = fmul fast float %4978, 4.000000e+00
  %5768 = fmul fast float %5767, %5748
  %5769 = fmul fast float %5768, %5762
  %5770 = fmul fast float %4985, 4.000000e+00
  %5771 = fmul fast float %5770, %5749
  %5772 = fmul fast float %5771, %5763
  %5773 = fadd fast float %5766, %5753
  %5774 = fadd fast float %5769, %5754
  %5775 = fadd fast float %5772, %5755
  %5776 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5777 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  br label %5779

; <label>:5779                                    ; preds = %5756, %5642
  %5780 = phi float [ %5776, %5756 ], [ %5753, %5642 ]
  %5781 = phi float [ %5777, %5756 ], [ %5754, %5642 ]
  %5782 = phi float [ %5778, %5756 ], [ %5755, %5642 ]
  %5783 = fmul fast float %5670, 9.843750e-01
  %5784 = fadd fast float %5783, 7.812500e-03
  %5785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5784, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 2
  %5787 = extractvalue %dx.types.ResRet.f32 %5785, 3
  %5788 = fmul fast float %5786, %4977
  %5789 = fmul fast float %5786, %4978
  %5790 = fmul fast float %5786, %4985
  %5791 = fadd fast float %5788, %5787
  %5792 = fadd fast float %5789, %5787
  %5793 = fadd fast float %5790, %5787
  br i1 %5111, label %5794, label %5817

; <label>:5794                                    ; preds = %5779
  %5795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4367, float %5670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5796 = extractvalue %dx.types.ResRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.ResRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.ResRet.f32 %5795, 2
  %5799 = fadd fast float %5796, -5.000000e-01
  %5800 = fadd fast float %5797, -5.000000e-01
  %5801 = fadd fast float %5798, -5.000000e-01
  %5802 = fmul fast float %4977, 4.000000e+00
  %5803 = fmul fast float %5802, %5747
  %5804 = fmul fast float %5803, %5799
  %5805 = fmul fast float %4978, 4.000000e+00
  %5806 = fmul fast float %5805, %5748
  %5807 = fmul fast float %5806, %5800
  %5808 = fmul fast float %4985, 4.000000e+00
  %5809 = fmul fast float %5808, %5749
  %5810 = fmul fast float %5809, %5801
  %5811 = fadd fast float %5804, %5791
  %5812 = fadd fast float %5807, %5792
  %5813 = fadd fast float %5810, %5793
  %5814 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5815 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5816 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  br label %5817

; <label>:5817                                    ; preds = %5794, %5779
  %5818 = phi float [ %5814, %5794 ], [ %5791, %5779 ]
  %5819 = phi float [ %5815, %5794 ], [ %5792, %5779 ]
  %5820 = phi float [ %5816, %5794 ], [ %5793, %5779 ]
  %5821 = call float @dx.op.binary.f32(i32 35, float %5819, float %5820)  ; FMax(a,b)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5818, float %5821)  ; FMax(a,b)
  %5823 = fsub fast float 1.000000e+00, %5822
  %5824 = fmul fast float %5780, %5738
  %5825 = fmul fast float %5781, %5738
  %5826 = fmul fast float %5782, %5738
  %5827 = fsub fast float 1.000000e+00, %5671
  %5828 = bitcast float %5827 to i32
  %5829 = sitofp i32 %5828 to float
  %5830 = fmul fast float %5829, 5.000000e+00
  %5831 = fadd fast float %5830, 0xC1EFBF8940000000
  %5832 = fptosi float %5831 to i32
  %5833 = bitcast i32 %5832 to float
  %5834 = fmul fast float %5833, %4368
  %5835 = fmul fast float %5823, %5834
  %5836 = fmul fast float %5835, %5161
  %5837 = fmul fast float %5835, %5162
  %5838 = fmul fast float %5835, %5163
  %5839 = fadd fast float %5836, %5824
  %5840 = fadd fast float %5837, %5825
  %5841 = fadd fast float %5838, %5826
  %5842 = fmul fast float %5659, %4394
  %5843 = fmul fast float %5842, %5677
  %5844 = fmul fast float %5843, %5823
  %5845 = fmul fast float %5660, %4394
  %5846 = fmul fast float %5845, %5677
  %5847 = fmul fast float %5846, %5823
  %5848 = fmul fast float %5661, %4394
  %5849 = fmul fast float %5848, %5677
  %5850 = fmul fast float %5849, %5823
  %5851 = fadd fast float %5844, %5498
  %5852 = fadd fast float %5847, %5499
  %5853 = fadd fast float %5850, %5500
  %5854 = fmul fast float %5843, %5839
  %5855 = fmul fast float %5846, %5840
  %5856 = fmul fast float %5849, %5841
  %5857 = fadd fast float %5854, %5495
  %5858 = fadd fast float %5855, %5496
  %5859 = fadd fast float %5856, %5497
  br label %5573

; <label>:5860                                    ; preds = %5573
  br label %5861

; <label>:5861                                    ; preds = %5860, %5461
  %5862 = phi float [ %5463, %5461 ], [ %5574, %5860 ]
  %5863 = phi float [ %5464, %5461 ], [ %5575, %5860 ]
  %5864 = phi float [ %5465, %5461 ], [ %5576, %5860 ]
  %5865 = phi float [ %5466, %5461 ], [ %5577, %5860 ]
  %5866 = phi float [ %5467, %5461 ], [ %5578, %5860 ]
  %5867 = phi float [ %5468, %5461 ], [ %5579, %5860 ]
  %5868 = add i32 %5462, 1
  %5869 = icmp ugt i32 %5868, %5458
  br i1 %5869, label %5870, label %5461

; <label>:5870                                    ; preds = %5861
  br label %5871

; <label>:5871                                    ; preds = %5870, %5437, %5427
  %5872 = phi float [ %5428, %5427 ], [ %5428, %5437 ], [ %5862, %5870 ]
  %5873 = phi float [ %5429, %5427 ], [ %5429, %5437 ], [ %5863, %5870 ]
  %5874 = phi float [ %5430, %5427 ], [ %5430, %5437 ], [ %5864, %5870 ]
  %5875 = phi float [ %5431, %5427 ], [ %5431, %5437 ], [ %5865, %5870 ]
  %5876 = phi float [ %5432, %5427 ], [ %5432, %5437 ], [ %5866, %5870 ]
  %5877 = phi float [ %5433, %5427 ], [ %5433, %5437 ], [ %5867, %5870 ]
  %5878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5879 = extractvalue %dx.types.ResRet.i32 %5878, 3
  %5880 = bitcast i32 %5879 to float
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fmul fast float %5881, %165
  %5883 = fadd fast float %5882, %5880
  %5884 = call float @dx.op.unary.f32(i32 24, float %4974)  ; Sqrt(value)
  %5885 = call float @dx.op.unary.f32(i32 24, float %4975)  ; Sqrt(value)
  %5886 = call float @dx.op.unary.f32(i32 24, float %4976)  ; Sqrt(value)
  %5887 = fmul fast float %5884, %5875
  %5888 = fmul fast float %5885, %5876
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  br i1 %205, label %5891, label %5920

; <label>:5891                                    ; preds = %5871
  %5892 = fadd fast float %5877, %4370
  %5893 = fmul fast float %5892, %4372
  %5894 = fsub fast float 1.000000e+00, %4372
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5898 = fmul fast float %5897, %5895
  %5899 = fadd fast float %5898, %5893
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = fmul fast float %5901, %5167
  %5903 = fsub fast float %5899, %5902
  %5904 = fadd fast float %5888, %5887
  %5905 = fmul fast float %5890, %5904
  %5906 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5907 = fsub fast float %5903, %5906
  %5908 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5909 = fmul fast float %5907, %5908
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = fsub fast float %5910, %5912
  %5914 = fmul fast float %5913, 1.000000e+01
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = fsub fast float %4371, %5883
  %5917 = fmul fast float %5915, %5916
  %5918 = fadd fast float %5917, %5883
  %5919 = fmul fast float %5918, %5910
  br label %5936

; <label>:5920                                    ; preds = %5871
  %5921 = fmul fast float %5886, %5877
  %5922 = fmul fast float %5890, %5887
  %5923 = fmul fast float %5890, %5888
  %5924 = fmul fast float %5921, %5890
  %5925 = add i32 %33, 356
  %5926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.i32 %5926, 0
  %5928 = and i32 %5927, 32
  %5929 = icmp eq i32 %5928, 0
  br i1 %5929, label %5936, label %5930

; <label>:5930                                    ; preds = %5920
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = fmul fast float %5932, 0x3FE99999A0000000
  %5934 = fadd fast float %5932, %5922
  %5935 = fadd fast float %5933, %5924
  br label %5936

; <label>:5936                                    ; preds = %5930, %5920, %5891
  %5937 = phi float [ %5905, %5891 ], [ %5934, %5930 ], [ %5922, %5920 ]
  %5938 = phi float [ %5919, %5891 ], [ %5923, %5930 ], [ %5923, %5920 ]
  %5939 = phi float [ %5918, %5891 ], [ %5935, %5930 ], [ %5924, %5920 ]
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = fmul fast float %5941, %5873
  %5943 = fmul fast float %5941, %5874
  %5944 = fadd fast float %5873, %5872
  %5945 = select i1 %205, float %5944, float %5872
  %5946 = fmul float %5945, %5941
  %5947 = select i1 %205, float 0.000000e+00, float %5942
  %5948 = select i1 %205, float 0.000000e+00, float %5943
  %5949 = fmul fast float %5937, %5884
  %5950 = fmul fast float %5938, %5885
  %5951 = fmul fast float %5939, %5886
  %5952 = fadd fast float %5946, %5949
  %5953 = fadd fast float %5947, %5950
  %5954 = fadd fast float %5948, %5951
  %5955 = select i1 %205, float %5938, float %5953
  %5956 = select i1 %205, float %5939, float %5954
  %5957 = call float @dx.op.binary.f32(i32 36, float %5952, float 3.225500e+04)  ; FMin(a,b)
  %5958 = call float @dx.op.binary.f32(i32 36, float %5955, float 3.225500e+04)  ; FMin(a,b)
  %5959 = call float @dx.op.binary.f32(i32 36, float %5956, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5957)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5958)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5959)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

