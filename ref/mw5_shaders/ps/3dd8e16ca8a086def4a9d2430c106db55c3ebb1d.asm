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
; AMBIENT_COLOR            0   xyz         5     NONE   float       
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float       
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
; shader hash: 9c20c5323f73d1f9cc931a0121993206
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %54
  %62 = fmul fast float %60, %55
  %63 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = bitcast float %63 to i32
  %65 = ashr i32 %64, 1
  %66 = sub nsw i32 1597250115, %65
  %67 = bitcast i32 %66 to float
  %68 = fmul fast float %67, %46
  %69 = fmul fast float %67, %47
  %70 = fmul fast float %67, %48
  %71 = fmul fast float %47, %44
  %72 = fmul fast float %48, %43
  %73 = fsub fast float %71, %72
  %74 = fmul fast float %48, %42
  %75 = fmul fast float %46, %44
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %46, %43
  %78 = fmul fast float %47, %42
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %73, %45
  %81 = fmul fast float %76, %45
  %82 = fmul fast float %79, %45
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %61, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %62, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %56
  %117 = fmul fast float %113, %56
  %118 = fmul fast float %115, %56
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, %61
  %123 = fmul fast float %121, %62
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %125, 114688
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %127, float %122, float 0.000000e+00
  %129 = select i1 %127, float %123, float 0.000000e+00
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fmul fast float %131, 2.550000e+02
  %133 = fptoui float %132 to i32
  %134 = select i1 %127, i32 %133, i32 0
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = and i32 %137, 3
  %139 = icmp ne i32 %138, 0
  %140 = and i32 %137, 4
  %141 = icmp ne i32 %140, 0
  %142 = and i1 %139, %141
  br i1 %142, label %143, label %154

; <label>:143                                     ; preds = %0
  %144 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %145 = fmul fast float %144, %62
  %146 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %147 = fmul fast float %146, %61
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %147, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fsub fast float 1.000000e+00, %149
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = fcmp fast olt float %150, %152
  br label %157

; <label>:154                                     ; preds = %0
  %155 = icmp eq i32 %140, 0
  %156 = and i1 %139, %155
  br label %157

; <label>:157                                     ; preds = %154, %143
  %158 = phi i1 [ %153, %143 ], [ %156, %154 ]
  %159 = add i32 %33, 156
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = shl i32 %161, 4
  %163 = and i32 %162, 32752
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = lshr i32 %161, 7
  %166 = and i32 %165, 32752
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = lshr i32 %161, 22
  %169 = shl nuw nsw i32 %168, 5
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = add i32 %33, 216
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = and i32 %173, 255
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F70101020000000
  %177 = lshr i32 %173, 8
  %178 = and i32 %177, 255
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F70101020000000
  %181 = lshr i32 %173, 16
  %182 = and i32 %181, 255
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F70101020000000
  %185 = add i32 %33, 36
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 65535
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = lshr i32 %187, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = add i32 %33, 288
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = and i32 %194, 65535
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = lshr i32 %194, 16
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = fmul fast float %196, 0x3F50624DE0000000
  %200 = fmul fast float %198, 0x3F50624DE0000000
  %201 = add i32 %33, 172
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %203, 7
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %203, 22
  %211 = shl nuw nsw i32 %210, 5
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = add i32 %33, 232
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = add i32 %33, 52
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %33, 304
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %33, 188
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %33, 248
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %33, 68
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %33, 320
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %33, 204
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %33, 264
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %33, 84
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %33, 336
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %33, 348
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 32
  %331 = icmp eq i32 %330, 0
  %332 = and i32 %329, 64
  %333 = icmp eq i32 %332, 0
  %334 = and i32 %329, 128
  %335 = icmp eq i32 %334, 0
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 2
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %353, label %340

; <label>:340                                     ; preds = %157
  %341 = add i32 %33, 488
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = add i32 %343, 0
  %345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %345, %dx.types.Handle %58, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = extractvalue %dx.types.ResRet.f32 %346, 1
  %349 = extractvalue %dx.types.ResRet.f32 %346, 2
  %350 = fmul fast float %347, %51
  %351 = fmul fast float %348, %52
  %352 = fmul fast float %349, %53
  br label %353

; <label>:353                                     ; preds = %340, %157
  %354 = phi float [ %53, %157 ], [ %352, %340 ]
  %355 = phi float [ %52, %157 ], [ %351, %340 ]
  %356 = phi float [ %51, %157 ], [ %350, %340 ]
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 2
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %380, label %361

; <label>:361                                     ; preds = %353
  %362 = add i32 %33, 44
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 1
  %366 = icmp ne i32 %365, 0
  %367 = select i1 %366, float %356, float 1.000000e+00
  %368 = add i32 %33, 60
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %355, float 1.000000e+00
  %374 = add i32 %33, 76
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %354, float 1.000000e+00
  br label %380

; <label>:380                                     ; preds = %361, %353
  %381 = phi float [ %354, %353 ], [ %379, %361 ]
  %382 = phi float [ %355, %353 ], [ %373, %361 ]
  %383 = phi float [ %356, %353 ], [ %367, %361 ]
  %384 = lshr i32 %358, 20
  %385 = and i32 %384, 3
  %386 = add nuw nsw i32 %385, 1
  %387 = add i32 %33, 24
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %33, 28
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = or i32 %392, %389
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %853, label %395

; <label>:395                                     ; preds = %380
  %396 = and i32 %389, 262144
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %397, float %36, float 1.000000e+00
  %399 = select i1 %397, float %37, float 0.000000e+00
  %400 = select i1 %397, float %38, float 0.000000e+00
  %401 = select i1 %397, float %39, float 1.000000e+00
  %402 = select i1 %397, float %40, float %49
  %403 = select i1 %397, float %41, float %50
  %404 = add i32 %33, 284
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = lshr i32 %406, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %408, 0x3F50624DE0000000
  %410 = add i32 %33, 88
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = lshr i32 %412, 16
  %414 = and i32 %413, 255
  %415 = lshr i32 %412, 24
  %416 = add i32 %33, 292
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %33, 32
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 22
  %427 = shl nuw nsw i32 %426, 5
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = shl i32 %425, 4
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %425, 7
  %433 = and i32 %432, 32752
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = fmul fast float %436, 1.000000e+03
  %438 = fmul fast float %199, %437
  %439 = call float @dx.op.unary.f32(i32 22, float %438)  ; Frc(value)
  %440 = fadd fast float %439, %189
  %441 = fmul fast float %200, %437
  %442 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %443 = fadd fast float %442, %191
  %444 = fmul fast float %409, %437
  %445 = call float @dx.op.unary.f32(i32 22, float %444)  ; Frc(value)
  %446 = fmul fast float %445, 0x401921FB60000000
  %447 = fadd fast float %446, %428
  %448 = call float @dx.op.unary.f32(i32 13, float %447)  ; Sin(value)
  %449 = call float @dx.op.unary.f32(i32 12, float %447)  ; Cos(value)
  %450 = fsub fast float -0.000000e+00, %448
  %451 = fadd fast float %402, -5.000000e-01
  %452 = fadd fast float %403, -5.000000e-01
  %453 = fmul fast float %420, %451
  %454 = fmul fast float %422, %452
  %455 = fadd fast float %453, 5.000000e-01
  %456 = fadd fast float %454, 5.000000e-01
  %457 = fmul fast float %431, %455
  %458 = fmul fast float %434, %456
  %459 = fmul fast float %449, %457
  %460 = call float @dx.op.tertiary.f32(i32 46, float %450, float %458, float %459)  ; FMad(a,b,c)
  %461 = fmul fast float %448, %457
  %462 = call float @dx.op.tertiary.f32(i32 46, float %449, float %458, float %461)  ; FMad(a,b,c)
  %463 = fadd fast float %440, %460
  %464 = fadd fast float %443, %462
  %465 = icmp ugt i32 %414, 1
  %466 = icmp ugt i32 %412, 33554431
  %467 = or i1 %466, %465
  br i1 %467, label %468, label %493

; <label>:468                                     ; preds = %395
  %469 = add i32 %33, 228
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = lshr i32 %471, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = fmul fast float %436, %473
  %475 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %476 = mul nuw nsw i32 %414, %415
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %475, %477
  %479 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %480 = fptoui float %479 to i32
  %481 = urem i32 %480, %414
  %482 = udiv i32 %480, %415
  %483 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %484 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %485 = uitofp i32 %481 to float
  %486 = uitofp i32 %482 to float
  %487 = fadd fast float %483, %485
  %488 = fadd fast float %484, %486
  %489 = uitofp i32 %414 to float
  %490 = uitofp i32 %415 to float
  %491 = fdiv fast float %487, %489
  %492 = fdiv fast float %488, %490
  br label %493

; <label>:493                                     ; preds = %468, %395
  %494 = phi float [ %491, %468 ], [ %463, %395 ]
  %495 = phi float [ %492, %468 ], [ %464, %395 ]
  %496 = and i32 %389, 16
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %694, label %498

; <label>:498                                     ; preds = %493
  %499 = add i32 %33, 376
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = add i32 %501, 0
  %503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %503, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = extractvalue %dx.types.ResRet.f32 %504, 3
  %509 = and i32 %412, 255
  %510 = uitofp i32 %509 to float
  %511 = lshr i32 %412, 8
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %508, %510
  %515 = fadd fast float %514, %513
  %516 = fmul fast float %515, 0x3F70101000000000
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 512
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %529, label %521

; <label>:521                                     ; preds = %498
  %522 = add i32 %33, 456
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %524, 0
  %526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %526, %dx.types.Handle %58, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  br label %529

; <label>:529                                     ; preds = %521, %498
  %530 = phi float [ %528, %521 ], [ 1.000000e+00, %498 ]
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 33554432
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %641, label %535

; <label>:535                                     ; preds = %529
  %536 = add i32 %33, 224
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 65535
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %538, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = add i32 %33, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 65535
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 24
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = and i32 %549, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %549, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %549, 16
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = add i32 %33, 220
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 24
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = and i32 %566, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %566, 8
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %566, 16
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = bitcast float %505 to i32
  %582 = ashr i32 %581, 1
  %583 = sub nsw i32 1597463174, %582
  %584 = bitcast i32 %583 to float
  %585 = fmul fast float %505, 5.000000e-01
  %586 = fmul fast float %584, %584
  %587 = fmul fast float %586, %585
  %588 = fsub fast float 1.500000e+00, %587
  %589 = fmul fast float %584, %505
  %590 = fmul fast float %589, %588
  %591 = bitcast float %506 to i32
  %592 = ashr i32 %591, 1
  %593 = sub nsw i32 1597463174, %592
  %594 = bitcast i32 %593 to float
  %595 = fmul fast float %506, 5.000000e-01
  %596 = fmul fast float %594, %594
  %597 = fmul fast float %596, %595
  %598 = fsub fast float 1.500000e+00, %597
  %599 = fmul fast float %594, %506
  %600 = fmul fast float %599, %598
  %601 = bitcast float %507 to i32
  %602 = ashr i32 %601, 1
  %603 = sub nsw i32 1597463174, %602
  %604 = bitcast i32 %603 to float
  %605 = fmul fast float %507, 5.000000e-01
  %606 = fmul fast float %604, %604
  %607 = fmul fast float %606, %605
  %608 = fsub fast float 1.500000e+00, %607
  %609 = fmul fast float %604, %507
  %610 = fmul fast float %609, %608
  %611 = fsub fast float %590, %572
  %612 = fsub fast float %600, %576
  %613 = fsub fast float %610, %580
  %614 = fmul fast float %611, %540
  %615 = fmul fast float %612, %542
  %616 = fmul fast float %613, %547
  %617 = fadd fast float %614, %555
  %618 = fadd fast float %615, %559
  %619 = fadd fast float %616, %563
  %620 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %621 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %622 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %623 = fmul fast float %620, %620
  %624 = fmul fast float %621, %621
  %625 = fmul fast float %622, %622
  %626 = fsub fast float %623, %505
  %627 = fsub fast float %624, %506
  %628 = fsub fast float %625, %507
  %629 = fmul fast float %626, %530
  %630 = fmul fast float %627, %530
  %631 = fmul fast float %628, %530
  %632 = fadd fast float %629, %505
  %633 = fadd fast float %630, %506
  %634 = fadd fast float %631, %507
  %635 = fadd fast float %552, %516
  %636 = fsub fast float %635, %569
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = fsub fast float %637, %516
  %639 = fmul fast float %638, %530
  %640 = fadd fast float %639, %516
  br label %694

; <label>:641                                     ; preds = %529
  %642 = and i32 %532, 134217728
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %678, label %644

; <label>:644                                     ; preds = %641
  %645 = call float @dx.op.unary.f32(i32 24, float %176)  ; Sqrt(value)
  %646 = call float @dx.op.unary.f32(i32 24, float %180)  ; Sqrt(value)
  %647 = call float @dx.op.unary.f32(i32 24, float %184)  ; Sqrt(value)
  %648 = fadd fast float %645, -5.000000e-01
  %649 = fadd fast float %646, -5.000000e-01
  %650 = fadd fast float %647, -5.000000e-01
  %651 = fmul fast float %648, %530
  %652 = fmul fast float %649, %530
  %653 = fmul fast float %650, %530
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %660 = fmul fast float %654, 2.000000e+00
  %661 = fsub fast float 1.000000e+00, %660
  %662 = fmul fast float %661, %657
  %663 = fadd fast float %662, %660
  %664 = fmul fast float %663, %657
  %665 = fmul fast float %655, 2.000000e+00
  %666 = fsub fast float 1.000000e+00, %665
  %667 = fmul fast float %666, %658
  %668 = fadd fast float %667, %665
  %669 = fmul fast float %668, %658
  %670 = fmul fast float %656, 2.000000e+00
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %671, %659
  %673 = fadd fast float %672, %670
  %674 = fmul fast float %673, %659
  %675 = fmul fast float %664, %664
  %676 = fmul fast float %669, %669
  %677 = fmul fast float %674, %674
  br label %694

; <label>:678                                     ; preds = %641
  %679 = fmul fast float %176, %176
  %680 = fmul fast float %180, %180
  %681 = fmul fast float %184, %184
  %682 = fadd fast float %679, -1.000000e+00
  %683 = fadd fast float %680, -1.000000e+00
  %684 = fadd fast float %681, -1.000000e+00
  %685 = fmul fast float %530, %682
  %686 = fmul fast float %530, %683
  %687 = fmul fast float %530, %684
  %688 = fadd fast float %685, 1.000000e+00
  %689 = fadd fast float %686, 1.000000e+00
  %690 = fadd fast float %687, 1.000000e+00
  %691 = fmul fast float %688, %505
  %692 = fmul fast float %689, %506
  %693 = fmul fast float %690, %507
  br label %694

; <label>:694                                     ; preds = %678, %644, %535, %493
  %695 = phi float [ %640, %535 ], [ %516, %644 ], [ %516, %678 ], [ 0x3FA23C0BE0000000, %493 ]
  %696 = phi float [ %632, %535 ], [ %675, %644 ], [ %691, %678 ], [ 1.000000e+00, %493 ]
  %697 = phi float [ %633, %535 ], [ %676, %644 ], [ %692, %678 ], [ 1.000000e+00, %493 ]
  %698 = phi float [ %634, %535 ], [ %677, %644 ], [ %693, %678 ], [ 1.000000e+00, %493 ]
  %699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.i32 %699, 1
  %701 = and i32 %700, 1
  %702 = icmp ne i32 %701, 0
  %703 = add i32 %33, 356
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = and i32 %705, 32
  %707 = icmp ne i32 %706, 0
  %708 = and i1 %702, %707
  %709 = select i1 %708, float 1.000000e+00, float %696
  %710 = select i1 %708, float 0x3FD3333340000000, float %697
  %711 = select i1 %708, float 0x3FD3333340000000, float %698
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 32
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %788, label %716

; <label>:716                                     ; preds = %694
  %717 = add i32 %33, 92
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = add i32 %33, 392
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = extractvalue %dx.types.ResRet.f32 %725, 1
  %728 = extractvalue %dx.types.ResRet.f32 %725, 2
  %729 = extractvalue %dx.types.ResRet.f32 %725, 3
  %730 = and i32 %719, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %719, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = lshr i32 %719, 16
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101000000000
  %739 = fmul fast float %726, %731
  %740 = fadd fast float %739, %734
  %741 = fmul fast float %740, 0x3F70101000000000
  %742 = fadd fast float %727, -5.000000e-01
  %743 = fadd fast float %729, -5.000000e-01
  %744 = fmul fast float %742, %738
  %745 = fmul fast float %743, %738
  %746 = fadd fast float %744, 5.000000e-01
  %747 = fadd fast float %745, 5.000000e-01
  %748 = fmul fast float %746, 2.000000e+00
  %749 = fadd fast float %748, -1.000000e+00
  %750 = fmul fast float %747, 2.000000e+00
  %751 = fadd fast float %750, -1.000000e+00
  %752 = fadd fast float %749, %751
  %753 = fmul fast float %752, 5.000000e-01
  %754 = fsub fast float %749, %751
  %755 = fmul fast float %754, 5.000000e-01
  %756 = call float @dx.op.unary.f32(i32 6, float %753)  ; FAbs(value)
  %757 = fsub fast float 1.000000e+00, %756
  %758 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %759 = fsub fast float %757, %758
  %760 = call float @dx.op.dot3.f32(i32 55, float %753, float %755, float %759, float %753, float %755, float %759)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.unary.f32(i32 25, float %760)  ; Rsqrt(value)
  %762 = fmul fast float %753, %761
  %763 = fmul fast float %755, %761
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 67108864
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %784, label %768

; <label>:768                                     ; preds = %716
  %769 = add i32 %33, 280
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 65535
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = lshr i32 %771, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fsub fast float %741, %779
  %781 = fmul fast float %780, %773
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  br label %784

; <label>:784                                     ; preds = %768, %716
  %785 = phi float [ %783, %768 ], [ %741, %716 ]
  %786 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %398, float %399)  ; Dot2(ax,ay,bx,by)
  %787 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %400, float %401)  ; Dot2(ax,ay,bx,by)
  br label %788

; <label>:788                                     ; preds = %784, %694
  %789 = phi float [ %785, %784 ], [ 0x3FD6666660000000, %694 ]
  %790 = phi float [ %786, %784 ], [ 0.000000e+00, %694 ]
  %791 = phi float [ %787, %784 ], [ 0.000000e+00, %694 ]
  %792 = phi float [ %728, %784 ], [ 1.000000e+00, %694 ]
  %793 = add i32 %33, 160
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = lshr i32 %795, 22
  %797 = shl nuw nsw i32 %796, 5
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = and i32 %800, 64
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %836, label %803

; <label>:803                                     ; preds = %788
  %804 = add i32 %33, 408
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %806, 0
  %808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 131072
  %812 = icmp eq i32 %811, 0
  %813 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %808, %dx.types.Handle %57, float %494, float %495, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = fmul fast float %814, %164
  %818 = fmul fast float %815, %167
  %819 = fmul fast float %816, %170
  br i1 %812, label %826, label %820

; <label>:820                                     ; preds = %803
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = fmul fast float %822, %817
  %824 = fmul fast float %822, %818
  %825 = fmul fast float %822, %819
  br label %826

; <label>:826                                     ; preds = %820, %803
  %827 = phi float [ %823, %820 ], [ %817, %803 ]
  %828 = phi float [ %824, %820 ], [ %818, %803 ]
  %829 = phi float [ %825, %820 ], [ %819, %803 ]
  %830 = fmul fast float %827, %798
  %831 = select i1 %158, float %830, float %827
  %832 = call float @dx.op.dot3.f32(i32 55, float %831, float %828, float %829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = select i1 %158, float 0.000000e+00, float %827
  %834 = select i1 %158, float %832, float %828
  %835 = select i1 %158, float 0.000000e+00, float %829
  br label %836

; <label>:836                                     ; preds = %826, %788
  %837 = phi float [ %833, %826 ], [ 0.000000e+00, %788 ]
  %838 = phi float [ %834, %826 ], [ 0.000000e+00, %788 ]
  %839 = phi float [ %835, %826 ], [ 0.000000e+00, %788 ]
  %840 = add i32 %33, 96
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = lshr i32 %842, 8
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = call float @dx.op.dot3.f32(i32 55, float %709, float %710, float %711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = fmul fast float %847, %848
  %850 = fadd fast float %849, %844
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  br label %853

; <label>:853                                     ; preds = %836, %380
  %854 = phi float [ 0.000000e+00, %380 ], [ %790, %836 ]
  %855 = phi float [ 0.000000e+00, %380 ], [ %791, %836 ]
  %856 = phi float [ 0.000000e+00, %380 ], [ %709, %836 ]
  %857 = phi float [ 0.000000e+00, %380 ], [ %710, %836 ]
  %858 = phi float [ 0.000000e+00, %380 ], [ %711, %836 ]
  %859 = phi float [ 0.000000e+00, %380 ], [ %837, %836 ]
  %860 = phi float [ 0.000000e+00, %380 ], [ %838, %836 ]
  %861 = phi float [ 0.000000e+00, %380 ], [ %839, %836 ]
  %862 = phi float [ 0.000000e+00, %380 ], [ %695, %836 ]
  %863 = phi float [ 0.000000e+00, %380 ], [ 1.000000e+00, %836 ]
  %864 = phi float [ 0.000000e+00, %380 ], [ %789, %836 ]
  %865 = phi float [ 0.000000e+00, %380 ], [ %792, %836 ]
  %866 = phi float [ 0.000000e+00, %380 ], [ %852, %836 ]
  br i1 %331, label %1708, label %867

; <label>:867                                     ; preds = %853
  %868 = icmp ult i32 %386, 2
  %869 = add i32 %33, 40
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %33, 44
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = or i32 %874, %871
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1708, label %877

; <label>:877                                     ; preds = %867
  %878 = and i32 %871, 262144
  %879 = icmp ne i32 %878, 0
  %880 = select i1 %879, float %36, float 1.000000e+00
  %881 = select i1 %879, float %37, float 0.000000e+00
  %882 = select i1 %879, float %38, float 0.000000e+00
  %883 = select i1 %879, float %39, float 1.000000e+00
  %884 = select i1 %879, float %40, float %49
  %885 = select i1 %879, float %41, float %50
  %886 = add i32 %33, 300
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 16
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = fmul fast float %890, 0x3F50624DE0000000
  %892 = add i32 %33, 104
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 16
  %896 = and i32 %895, 255
  %897 = lshr i32 %894, 24
  %898 = add i32 %33, 308
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = lshr i32 %900, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = add i32 %33, 48
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 22
  %909 = shl nuw nsw i32 %908, 5
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = shl i32 %907, 4
  %912 = and i32 %911, 32752
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %907, 7
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %919 = fmul fast float %918, 1.000000e+03
  %920 = fmul fast float %241, %919
  %921 = call float @dx.op.unary.f32(i32 22, float %920)  ; Frc(value)
  %922 = fadd fast float %921, %231
  %923 = fmul fast float %242, %919
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = fadd fast float %924, %233
  %926 = fmul fast float %891, %919
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fmul fast float %927, 0x401921FB60000000
  %929 = fadd fast float %928, %910
  %930 = call float @dx.op.unary.f32(i32 13, float %929)  ; Sin(value)
  %931 = call float @dx.op.unary.f32(i32 12, float %929)  ; Cos(value)
  %932 = fsub fast float -0.000000e+00, %930
  %933 = fadd fast float %884, -5.000000e-01
  %934 = fadd fast float %885, -5.000000e-01
  %935 = fmul fast float %902, %933
  %936 = fmul fast float %904, %934
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %913, %937
  %940 = fmul fast float %916, %938
  %941 = fmul fast float %931, %939
  %942 = call float @dx.op.tertiary.f32(i32 46, float %932, float %940, float %941)  ; FMad(a,b,c)
  %943 = fmul fast float %930, %939
  %944 = call float @dx.op.tertiary.f32(i32 46, float %931, float %940, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %922, %942
  %946 = fadd fast float %925, %944
  %947 = icmp ugt i32 %896, 1
  %948 = icmp ugt i32 %894, 33554431
  %949 = or i1 %948, %947
  br i1 %949, label %950, label %975

; <label>:950                                     ; preds = %877
  %951 = add i32 %33, 244
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 16
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = fmul fast float %918, %955
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = mul nuw nsw i32 %896, %897
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %957, %959
  %961 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %962 = fptoui float %961 to i32
  %963 = urem i32 %962, %896
  %964 = udiv i32 %962, %897
  %965 = call float @dx.op.unary.f32(i32 22, float %945)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 22, float %946)  ; Frc(value)
  %967 = uitofp i32 %963 to float
  %968 = uitofp i32 %964 to float
  %969 = fadd fast float %965, %967
  %970 = fadd fast float %966, %968
  %971 = uitofp i32 %896 to float
  %972 = uitofp i32 %897 to float
  %973 = fdiv fast float %969, %971
  %974 = fdiv fast float %970, %972
  br label %975

; <label>:975                                     ; preds = %950, %877
  %976 = phi float [ %973, %950 ], [ %945, %877 ]
  %977 = phi float [ %974, %950 ], [ %946, %877 ]
  %978 = and i32 %871, 16777216
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1089, label %980

; <label>:980                                     ; preds = %975
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = fadd fast float %982, %116
  %986 = fadd fast float %983, %117
  %987 = fadd fast float %984, %118
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = icmp eq i32 %34, 65535
  br i1 %991, label %1086, label %992

; <label>:992                                     ; preds = %980
  %993 = lshr i32 %34, 1
  %994 = shl i32 %993, 2
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %34, 1
  %998 = icmp ne i32 %997, 0
  %999 = lshr i32 %996, 16
  %1000 = and i32 %996, 65535
  %1001 = select i1 %998, i32 %999, i32 %1000
  %1002 = icmp eq i32 %1001, 65535
  br i1 %1002, label %1082, label %1003

; <label>:1003                                    ; preds = %992
  %1004 = mul nuw nsw i32 %1001, 40
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = add nuw nsw i32 %1004, 12
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = add nuw nsw i32 %1004, 24
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = add nuw nsw i32 %1004, 36
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = fsub fast float %985, %1006
  %1023 = fsub fast float %986, %1007
  %1024 = fsub fast float %987, %1008
  %1025 = fmul fast float %1021, %1022
  %1026 = fmul fast float %1021, %1023
  %1027 = fmul fast float %1021, %1024
  %1028 = call float @dx.op.unary.f32(i32 27, float %1025)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1030 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1031 = fadd fast float %1028, 5.000000e-01
  %1032 = fadd fast float %1029, 5.000000e-01
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = fmul fast float %1031, %1011
  %1035 = fmul fast float %1032, %1012
  %1036 = fmul fast float %1033, %1013
  %1037 = shl i32 %34, 2
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1043 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1044 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1041, %dx.types.Handle %30, float %1042, float %1043, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = fmul fast float %1046, 1.023000e+03
  %1050 = fmul fast float %1047, 1.023000e+03
  %1051 = fmul fast float %1048, 1.023000e+03
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = fsub fast float %1025, %1028
  %1059 = fsub fast float %1026, %1029
  %1060 = fsub fast float %1027, %1030
  %1061 = fmul fast float %1058, 7.500000e-01
  %1062 = fmul fast float %1059, 7.500000e-01
  %1063 = fmul fast float %1060, 7.500000e-01
  %1064 = fadd fast float %1028, 1.250000e-01
  %1065 = fadd fast float %1064, %1061
  %1066 = fadd fast float %1065, %1055
  %1067 = fadd fast float %1029, 1.250000e-01
  %1068 = fadd fast float %1067, %1062
  %1069 = fadd fast float %1068, %1056
  %1070 = fadd fast float %1030, 1.250000e-01
  %1071 = fadd fast float %1070, %1063
  %1072 = fadd fast float %1071, %1057
  %1073 = fmul fast float %1066, %1016
  %1074 = fmul fast float %1069, %1017
  %1075 = fmul fast float %1072, %1018
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1079, %dx.types.Handle %28, float %1073, float %1074, float %1075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  br label %1082

; <label>:1082                                    ; preds = %1003, %992
  %1083 = phi float [ %1081, %1003 ], [ -1.000000e+00, %992 ]
  %1084 = fadd fast float %1083, %990
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  br label %1086

; <label>:1086                                    ; preds = %1082, %980
  %1087 = phi float [ %1085, %1082 ], [ %990, %980 ]
  %1088 = fmul fast float %1087, %383
  br label %1089

; <label>:1089                                    ; preds = %1086, %975
  %1090 = phi float [ %1088, %1086 ], [ %383, %975 ]
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 256
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1141, label %1095

; <label>:1095                                    ; preds = %1089
  %1096 = add i32 %33, 444
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %1098, 0
  %1100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1100, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = add i32 %33, 116
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = shl i32 %1105, 4
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1105, 7
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fsub fast float 1.000000e+00, %1090
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1114 = bitcast float %1090 to i32
  %1115 = sitofp i32 %1114 to float
  %1116 = fadd fast float %1115, 0xC1CFBF8940000000
  %1117 = fmul fast float %1111, %1116
  %1118 = fadd fast float %1117, 0x41CFBF8940000000
  %1119 = fptosi float %1118 to i32
  %1120 = bitcast i32 %1119 to float
  %1121 = bitcast float %1113 to i32
  %1122 = sitofp i32 %1121 to float
  %1123 = fadd fast float %1122, 0xC1CFBF8940000000
  %1124 = fmul fast float %1123, %1111
  %1125 = fadd fast float %1124, 0x41CFBF8940000000
  %1126 = fptosi float %1125 to i32
  %1127 = bitcast i32 %1126 to float
  %1128 = fmul fast float %1120, %1108
  %1129 = fmul fast float %1127, %1108
  %1130 = fsub fast float %1113, %1128
  %1131 = fadd fast float %1129, %1113
  %1132 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1133 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1134 = fsub fast float %1102, %1132
  %1135 = fsub fast float %1133, %1132
  %1136 = bitcast float %1135 to i32
  %1137 = sub nsw i32 2129859010, %1136
  %1138 = bitcast i32 %1137 to float
  %1139 = fmul fast float %1138, %1134
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  br label %1141

; <label>:1141                                    ; preds = %1095, %1089
  %1142 = phi float [ %1140, %1095 ], [ %1090, %1089 ]
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 128
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1163, label %1147

; <label>:1147                                    ; preds = %1141
  %1148 = add i32 %33, 428
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1152, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 524288
  %1158 = icmp ne i32 %1157, 0
  %1159 = fcmp fast ogt float %1154, 0x3FE0101020000000
  %1160 = select i1 %1159, float 1.000000e+00, float 0.000000e+00
  %1161 = select i1 %1158, float %1160, float %1154
  %1162 = fmul fast float %1161, %1142
  br label %1163

; <label>:1163                                    ; preds = %1147, %1141
  %1164 = phi float [ %1162, %1147 ], [ %1142, %1141 ]
  %1165 = fcmp fast ult float %1164, 0x3F70101020000000
  br i1 %1165, label %1708, label %1166

; <label>:1166                                    ; preds = %1163
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 16
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1369, label %1171

; <label>:1171                                    ; preds = %1166
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %33, 380
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1184 = and i32 %1173, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = lshr i32 %1173, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1183, %1185
  %1190 = fadd fast float %1189, %1188
  %1191 = fmul fast float %1190, 0x3F70101000000000
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 512
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1204, label %1196

; <label>:1196                                    ; preds = %1171
  %1197 = add i32 %33, 460
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %1199, 0
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1201, %dx.types.Handle %58, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  br label %1204

; <label>:1204                                    ; preds = %1196, %1171
  %1205 = phi float [ %1203, %1196 ], [ 1.000000e+00, %1171 ]
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 33554432
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1316, label %1210

; <label>:1210                                    ; preds = %1204
  %1211 = add i32 %33, 240
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 65535
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1213, 16
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = add i32 %33, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 65535
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 24
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = and i32 %1224, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1224, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1224, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = add i32 %33, 236
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 24
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = and i32 %1241, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1241, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1241, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = bitcast float %1180 to i32
  %1257 = ashr i32 %1256, 1
  %1258 = sub nsw i32 1597463174, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1180, 5.000000e-01
  %1261 = fmul fast float %1259, %1259
  %1262 = fmul fast float %1261, %1260
  %1263 = fsub fast float 1.500000e+00, %1262
  %1264 = fmul fast float %1259, %1180
  %1265 = fmul fast float %1264, %1263
  %1266 = bitcast float %1181 to i32
  %1267 = ashr i32 %1266, 1
  %1268 = sub nsw i32 1597463174, %1267
  %1269 = bitcast i32 %1268 to float
  %1270 = fmul fast float %1181, 5.000000e-01
  %1271 = fmul fast float %1269, %1269
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float 1.500000e+00, %1272
  %1274 = fmul fast float %1269, %1181
  %1275 = fmul fast float %1274, %1273
  %1276 = bitcast float %1182 to i32
  %1277 = ashr i32 %1276, 1
  %1278 = sub nsw i32 1597463174, %1277
  %1279 = bitcast i32 %1278 to float
  %1280 = fmul fast float %1182, 5.000000e-01
  %1281 = fmul fast float %1279, %1279
  %1282 = fmul fast float %1281, %1280
  %1283 = fsub fast float 1.500000e+00, %1282
  %1284 = fmul fast float %1279, %1182
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float %1265, %1247
  %1287 = fsub fast float %1275, %1251
  %1288 = fsub fast float %1285, %1255
  %1289 = fmul fast float %1286, %1215
  %1290 = fmul fast float %1287, %1217
  %1291 = fmul fast float %1288, %1222
  %1292 = fadd fast float %1289, %1230
  %1293 = fadd fast float %1290, %1234
  %1294 = fadd fast float %1291, %1238
  %1295 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1297 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1298 = fmul fast float %1295, %1295
  %1299 = fmul fast float %1296, %1296
  %1300 = fmul fast float %1297, %1297
  %1301 = fsub fast float %1298, %1180
  %1302 = fsub fast float %1299, %1181
  %1303 = fsub fast float %1300, %1182
  %1304 = fmul fast float %1301, %1205
  %1305 = fmul fast float %1302, %1205
  %1306 = fmul fast float %1303, %1205
  %1307 = fadd fast float %1304, %1180
  %1308 = fadd fast float %1305, %1181
  %1309 = fadd fast float %1306, %1182
  %1310 = fadd fast float %1227, %1191
  %1311 = fsub fast float %1310, %1244
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fsub fast float %1312, %1191
  %1314 = fmul fast float %1313, %1205
  %1315 = fadd fast float %1314, %1191
  br label %1369

; <label>:1316                                    ; preds = %1204
  %1317 = and i32 %1207, 134217728
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1353, label %1319

; <label>:1319                                    ; preds = %1316
  %1320 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %1323 = fadd fast float %1320, -5.000000e-01
  %1324 = fadd fast float %1321, -5.000000e-01
  %1325 = fadd fast float %1322, -5.000000e-01
  %1326 = fmul fast float %1323, %1205
  %1327 = fmul fast float %1324, %1205
  %1328 = fmul fast float %1325, %1205
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = call float @dx.op.unary.f32(i32 24, float %1180)  ; Sqrt(value)
  %1333 = call float @dx.op.unary.f32(i32 24, float %1181)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1335 = fmul fast float %1329, 2.000000e+00
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1332
  %1338 = fadd fast float %1337, %1335
  %1339 = fmul fast float %1338, %1332
  %1340 = fmul fast float %1330, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1333
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1333
  %1345 = fmul fast float %1331, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1334
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1334
  %1350 = fmul fast float %1339, %1339
  %1351 = fmul fast float %1344, %1344
  %1352 = fmul fast float %1349, %1349
  br label %1369

; <label>:1353                                    ; preds = %1316
  %1354 = fmul fast float %218, %218
  %1355 = fmul fast float %222, %222
  %1356 = fmul fast float %226, %226
  %1357 = fadd fast float %1354, -1.000000e+00
  %1358 = fadd fast float %1355, -1.000000e+00
  %1359 = fadd fast float %1356, -1.000000e+00
  %1360 = fmul fast float %1205, %1357
  %1361 = fmul fast float %1205, %1358
  %1362 = fmul fast float %1205, %1359
  %1363 = fadd fast float %1360, 1.000000e+00
  %1364 = fadd fast float %1361, 1.000000e+00
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fmul fast float %1363, %1180
  %1367 = fmul fast float %1364, %1181
  %1368 = fmul fast float %1365, %1182
  br label %1369

; <label>:1369                                    ; preds = %1353, %1319, %1210, %1166
  %1370 = phi float [ %1315, %1210 ], [ %1191, %1319 ], [ %1191, %1353 ], [ 0x3FA23C0BE0000000, %1166 ]
  %1371 = phi float [ %1307, %1210 ], [ %1350, %1319 ], [ %1366, %1353 ], [ 1.000000e+00, %1166 ]
  %1372 = phi float [ %1308, %1210 ], [ %1351, %1319 ], [ %1367, %1353 ], [ 1.000000e+00, %1166 ]
  %1373 = phi float [ %1309, %1210 ], [ %1352, %1319 ], [ %1368, %1353 ], [ 1.000000e+00, %1166 ]
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 1
  %1376 = and i32 %1375, 1
  %1377 = icmp ne i32 %1376, 0
  %1378 = add i32 %33, 356
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 32
  %1382 = icmp ne i32 %1381, 0
  %1383 = and i1 %1377, %1382
  %1384 = select i1 %1383, float 1.000000e+00, float %1371
  %1385 = select i1 %1383, float 0x3FD3333340000000, float %1372
  %1386 = select i1 %1383, float 0x3FD3333340000000, float %1373
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 32
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1463, label %1391

; <label>:1391                                    ; preds = %1369
  %1392 = add i32 %33, 108
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %33, 396
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.ResRet.f32 %1400, 3
  %1405 = and i32 %1394, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = lshr i32 %1394, 8
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1394, 16
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101000000000
  %1414 = fmul fast float %1401, %1406
  %1415 = fadd fast float %1414, %1409
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fadd fast float %1402, -5.000000e-01
  %1418 = fadd fast float %1404, -5.000000e-01
  %1419 = fmul fast float %1417, %1413
  %1420 = fmul fast float %1418, %1413
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fmul fast float %1421, 2.000000e+00
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fadd fast float %1425, -1.000000e+00
  %1427 = fadd fast float %1424, %1426
  %1428 = fmul fast float %1427, 5.000000e-01
  %1429 = fsub fast float %1424, %1426
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1434 = fsub fast float %1432, %1433
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1430, float %1434, float %1428, float %1430, float %1434)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call float @dx.op.unary.f32(i32 25, float %1435)  ; Rsqrt(value)
  %1437 = fmul fast float %1428, %1436
  %1438 = fmul fast float %1430, %1436
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 67108864
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1459, label %1443

; <label>:1443                                    ; preds = %1391
  %1444 = add i32 %33, 296
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 65535
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 65535
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = lshr i32 %1446, 16
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = fsub fast float %1416, %1454
  %1456 = fmul fast float %1455, %1448
  %1457 = fadd fast float %1456, %1452
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  br label %1459

; <label>:1459                                    ; preds = %1443, %1391
  %1460 = phi float [ %1458, %1443 ], [ %1416, %1391 ]
  %1461 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %880, float %881)  ; Dot2(ax,ay,bx,by)
  %1462 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %882, float %883)  ; Dot2(ax,ay,bx,by)
  br label %1463

; <label>:1463                                    ; preds = %1459, %1369
  %1464 = phi float [ %1460, %1459 ], [ 0x3FD6666660000000, %1369 ]
  %1465 = phi float [ %1461, %1459 ], [ 0.000000e+00, %1369 ]
  %1466 = phi float [ %1462, %1459 ], [ 0.000000e+00, %1369 ]
  %1467 = phi float [ %1403, %1459 ], [ 1.000000e+00, %1369 ]
  %1468 = add i32 %33, 176
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 22
  %1472 = shl nuw nsw i32 %1471, 5
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 64
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1511, label %1478

; <label>:1478                                    ; preds = %1463
  %1479 = add i32 %33, 412
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 131072
  %1487 = icmp eq i32 %1486, 0
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %57, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  %1492 = fmul fast float %1489, %206
  %1493 = fmul fast float %1490, %209
  %1494 = fmul fast float %1491, %212
  br i1 %1487, label %1501, label %1495

; <label>:1495                                    ; preds = %1478
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = fmul fast float %1497, %1492
  %1499 = fmul fast float %1497, %1493
  %1500 = fmul fast float %1497, %1494
  br label %1501

; <label>:1501                                    ; preds = %1495, %1478
  %1502 = phi float [ %1498, %1495 ], [ %1492, %1478 ]
  %1503 = phi float [ %1499, %1495 ], [ %1493, %1478 ]
  %1504 = phi float [ %1500, %1495 ], [ %1494, %1478 ]
  %1505 = fmul fast float %1502, %1473
  %1506 = select i1 %158, float %1505, float %1502
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1503, float %1504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = select i1 %158, float 0.000000e+00, float %1502
  %1509 = select i1 %158, float %1507, float %1503
  %1510 = select i1 %158, float 0.000000e+00, float %1504
  br label %1511

; <label>:1511                                    ; preds = %1501, %1463
  %1512 = phi float [ %1508, %1501 ], [ 0.000000e+00, %1463 ]
  %1513 = phi float [ %1509, %1501 ], [ 0.000000e+00, %1463 ]
  %1514 = phi float [ %1510, %1501 ], [ 0.000000e+00, %1463 ]
  %1515 = add i32 %33, 112
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = lshr i32 %1517, 8
  %1521 = and i32 %1520, 255
  %1522 = uitofp i32 %1521 to float
  %1523 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1524 = fmul fast float %1522, %1523
  %1525 = fadd fast float %1524, %1519
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br i1 %868, label %1528, label %1536

; <label>:1528                                    ; preds = %1511
  %1529 = fsub fast float 1.000000e+00, %1164
  %1530 = fmul fast float %1529, %856
  %1531 = fmul fast float %1529, %857
  %1532 = fmul fast float %1529, %858
  %1533 = fmul fast float %1529, %859
  %1534 = fmul fast float %1529, %860
  %1535 = fmul fast float %1529, %861
  br label %1536

; <label>:1536                                    ; preds = %1528, %1511
  %1537 = phi float [ %1530, %1528 ], [ %856, %1511 ]
  %1538 = phi float [ %1531, %1528 ], [ %857, %1511 ]
  %1539 = phi float [ %1532, %1528 ], [ %858, %1511 ]
  %1540 = phi float [ %1533, %1528 ], [ %859, %1511 ]
  %1541 = phi float [ %1534, %1528 ], [ %860, %1511 ]
  %1542 = phi float [ %1535, %1528 ], [ %861, %1511 ]
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 3
  %1546 = icmp eq i32 %1545, 3
  br i1 %1546, label %1625, label %1547

; <label>:1547                                    ; preds = %1536
  %1548 = and i32 %1544, 16
  %1549 = icmp ne i32 %1548, 0
  %1550 = select i1 %1549, float %1164, float 0.000000e+00
  %1551 = icmp eq i32 %1545, 0
  br i1 %1551, label %1552, label %1580

; <label>:1552                                    ; preds = %1547
  %1553 = and i32 %1544, 64
  %1554 = icmp ne i32 %1553, 0
  %1555 = select i1 %1554, float %1164, float 0.000000e+00
  %1556 = fsub fast float %1384, %1537
  %1557 = fsub fast float %1385, %1538
  %1558 = fsub fast float %1386, %1539
  %1559 = fmul fast float %1550, %1556
  %1560 = fmul fast float %1550, %1557
  %1561 = fmul fast float %1550, %1558
  %1562 = fadd fast float %1559, %1537
  %1563 = fadd fast float %1560, %1538
  %1564 = fadd fast float %1561, %1539
  %1565 = fsub fast float %1370, %862
  %1566 = fmul fast float %1550, %1565
  %1567 = fadd fast float %1566, %862
  %1568 = fsub fast float %1512, %1540
  %1569 = fsub fast float %1513, %1541
  %1570 = fsub fast float %1514, %1542
  %1571 = fmul fast float %1555, %1568
  %1572 = fmul fast float %1555, %1569
  %1573 = fmul fast float %1555, %1570
  %1574 = fadd fast float %1571, %1540
  %1575 = fadd fast float %1572, %1541
  %1576 = fadd fast float %1573, %1542
  %1577 = fsub fast float %1527, %866
  %1578 = fmul fast float %1550, %1577
  %1579 = fadd fast float %1578, %866
  br label %1625

; <label>:1580                                    ; preds = %1547
  %1581 = icmp eq i32 %1545, 1
  br i1 %1581, label %1582, label %1595

; <label>:1582                                    ; preds = %1580
  %1583 = fadd fast float %1384, -1.000000e+00
  %1584 = fadd fast float %1385, -1.000000e+00
  %1585 = fadd fast float %1386, -1.000000e+00
  %1586 = fmul fast float %1550, %1583
  %1587 = fmul fast float %1550, %1584
  %1588 = fmul fast float %1550, %1585
  %1589 = fadd fast float %1586, 1.000000e+00
  %1590 = fadd fast float %1587, 1.000000e+00
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fmul fast float %1589, %1537
  %1593 = fmul fast float %1590, %1538
  %1594 = fmul fast float %1591, %1539
  br label %1625

; <label>:1595                                    ; preds = %1580
  %1596 = icmp eq i32 %1545, 2
  br i1 %1596, label %1597, label %1625

; <label>:1597                                    ; preds = %1595
  %1598 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fmul fast float %1601, %1550
  %1605 = fmul fast float %1602, %1550
  %1606 = fmul fast float %1603, %1550
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = fmul fast float %1607, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1537
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1537
  %1615 = fmul fast float %1608, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1538
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1538
  %1620 = fmul fast float %1609, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1539
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1539
  br label %1625

; <label>:1625                                    ; preds = %1597, %1595, %1582, %1552, %1536
  %1626 = phi float [ %1537, %1536 ], [ %1614, %1597 ], [ %1537, %1595 ], [ %1592, %1582 ], [ %1562, %1552 ]
  %1627 = phi float [ %1538, %1536 ], [ %1619, %1597 ], [ %1538, %1595 ], [ %1593, %1582 ], [ %1563, %1552 ]
  %1628 = phi float [ %1539, %1536 ], [ %1624, %1597 ], [ %1539, %1595 ], [ %1594, %1582 ], [ %1564, %1552 ]
  %1629 = phi float [ %1540, %1536 ], [ %1540, %1597 ], [ %1540, %1595 ], [ %1540, %1582 ], [ %1574, %1552 ]
  %1630 = phi float [ %1541, %1536 ], [ %1541, %1597 ], [ %1541, %1595 ], [ %1541, %1582 ], [ %1575, %1552 ]
  %1631 = phi float [ %1542, %1536 ], [ %1542, %1597 ], [ %1542, %1595 ], [ %1542, %1582 ], [ %1576, %1552 ]
  %1632 = phi float [ %862, %1536 ], [ %862, %1597 ], [ %862, %1595 ], [ %862, %1582 ], [ %1567, %1552 ]
  %1633 = phi float [ %866, %1536 ], [ %866, %1597 ], [ %866, %1595 ], [ %866, %1582 ], [ %1579, %1552 ]
  %1634 = and i32 %1544, 12
  %1635 = icmp eq i32 %1634, 12
  br i1 %1635, label %1708, label %1636

; <label>:1636                                    ; preds = %1625
  %1637 = and i32 %1544, 2097184
  %1638 = icmp eq i32 %1637, 2097184
  %1639 = select i1 %1638, float %1164, float 0.000000e+00
  %1640 = and i32 %1544, 4194336
  %1641 = icmp eq i32 %1640, 4194336
  %1642 = select i1 %1641, float %1164, float 0.000000e+00
  %1643 = and i32 %1544, 8388640
  %1644 = icmp eq i32 %1643, 8388640
  %1645 = select i1 %1644, float %1164, float 0.000000e+00
  %1646 = icmp eq i32 %1634, 0
  br i1 %1646, label %1647, label %1660

; <label>:1647                                    ; preds = %1636
  %1648 = fsub fast float %1465, %854
  %1649 = fsub fast float %1466, %855
  %1650 = fmul fast float %1639, %1648
  %1651 = fmul fast float %1639, %1649
  %1652 = fadd fast float %1650, %854
  %1653 = fadd fast float %1651, %855
  %1654 = fsub fast float %1467, %865
  %1655 = fmul fast float %1642, %1654
  %1656 = fadd fast float %1655, %865
  %1657 = fsub fast float %1464, %864
  %1658 = fmul fast float %1645, %1657
  %1659 = fadd fast float %1658, %864
  br label %1708

; <label>:1660                                    ; preds = %1636
  %1661 = icmp eq i32 %1634, 4
  br i1 %1661, label %1662, label %1694

; <label>:1662                                    ; preds = %1660
  %1663 = fmul fast float %1639, %1465
  %1664 = fmul fast float %1639, %1466
  %1665 = fadd fast float %1663, %854
  %1666 = fadd fast float %1664, %855
  %1667 = call float @dx.op.binary.f32(i32 36, float %865, float %1467)  ; FMin(a,b)
  %1668 = fsub fast float %1667, %865
  %1669 = fmul fast float %1668, %1642
  %1670 = fadd fast float %1669, %865
  %1671 = fadd fast float %1464, %864
  %1672 = fmul fast float %1671, 0x3FF337FAE0000000
  %1673 = fmul fast float %864, %864
  %1674 = fmul fast float %1464, %1464
  %1675 = fadd fast float %1674, %1673
  %1676 = fmul fast float %1675, 0x3FE5152B00000000
  %1677 = fmul fast float %864, 0xBFCC1F85E0000000
  %1678 = fmul fast float %1677, %1464
  %1679 = fadd fast float %1678, 0xBFE1363700000000
  %1680 = fadd fast float %1679, %1672
  %1681 = fsub fast float %1680, %1676
  %1682 = fmul fast float %1671, 0x3FBA6F0D00000000
  %1683 = fmul fast float %1675, 0x3FD0432880000000
  %1684 = fmul fast float %864, 0xBFEF110800000000
  %1685 = fmul fast float %1684, %1464
  %1686 = fadd fast float %1685, 1.000000e+00
  %1687 = fsub fast float %1686, %1682
  %1688 = fadd fast float %1687, %1683
  %1689 = fdiv fast float %1681, %1688
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = fsub fast float %1690, %864
  %1692 = fmul fast float %1691, %1645
  %1693 = fadd fast float %1692, %864
  br label %1708

; <label>:1694                                    ; preds = %1660
  %1695 = icmp eq i32 %1634, 8
  br i1 %1695, label %1696, label %1708

; <label>:1696                                    ; preds = %1694
  %1697 = fmul fast float %1639, %1465
  %1698 = fmul fast float %1639, %1466
  %1699 = fadd fast float %1697, %854
  %1700 = fadd fast float %1698, %855
  %1701 = call float @dx.op.binary.f32(i32 36, float %865, float %1467)  ; FMin(a,b)
  %1702 = fsub fast float %1701, %865
  %1703 = fmul fast float %1702, %1642
  %1704 = fadd fast float %1703, %865
  %1705 = fsub fast float %1464, %864
  %1706 = fmul fast float %1645, %1705
  %1707 = fadd fast float %1706, %864
  br label %1708

; <label>:1708                                    ; preds = %1696, %1694, %1662, %1647, %1625, %1163, %867, %853
  %1709 = phi float [ %854, %1625 ], [ %854, %1163 ], [ %854, %853 ], [ %1699, %1696 ], [ %854, %1694 ], [ %1665, %1662 ], [ %1652, %1647 ], [ %854, %867 ]
  %1710 = phi float [ %855, %1625 ], [ %855, %1163 ], [ %855, %853 ], [ %1700, %1696 ], [ %855, %1694 ], [ %1666, %1662 ], [ %1653, %1647 ], [ %855, %867 ]
  %1711 = phi float [ %1626, %1625 ], [ %856, %1163 ], [ %856, %853 ], [ %1626, %1696 ], [ %1626, %1694 ], [ %1626, %1662 ], [ %1626, %1647 ], [ %856, %867 ]
  %1712 = phi float [ %1627, %1625 ], [ %857, %1163 ], [ %857, %853 ], [ %1627, %1696 ], [ %1627, %1694 ], [ %1627, %1662 ], [ %1627, %1647 ], [ %857, %867 ]
  %1713 = phi float [ %1628, %1625 ], [ %858, %1163 ], [ %858, %853 ], [ %1628, %1696 ], [ %1628, %1694 ], [ %1628, %1662 ], [ %1628, %1647 ], [ %858, %867 ]
  %1714 = phi float [ %1629, %1625 ], [ %859, %1163 ], [ %859, %853 ], [ %1629, %1696 ], [ %1629, %1694 ], [ %1629, %1662 ], [ %1629, %1647 ], [ %859, %867 ]
  %1715 = phi float [ %1630, %1625 ], [ %860, %1163 ], [ %860, %853 ], [ %1630, %1696 ], [ %1630, %1694 ], [ %1630, %1662 ], [ %1630, %1647 ], [ %860, %867 ]
  %1716 = phi float [ %1631, %1625 ], [ %861, %1163 ], [ %861, %853 ], [ %1631, %1696 ], [ %1631, %1694 ], [ %1631, %1662 ], [ %1631, %1647 ], [ %861, %867 ]
  %1717 = phi float [ %1632, %1625 ], [ %862, %1163 ], [ %862, %853 ], [ %1632, %1696 ], [ %1632, %1694 ], [ %1632, %1662 ], [ %1632, %1647 ], [ %862, %867 ]
  %1718 = phi float [ %864, %1625 ], [ %864, %1163 ], [ %864, %853 ], [ %1707, %1696 ], [ %864, %1694 ], [ %1693, %1662 ], [ %1659, %1647 ], [ %864, %867 ]
  %1719 = phi float [ %865, %1625 ], [ %865, %1163 ], [ %865, %853 ], [ %1704, %1696 ], [ %865, %1694 ], [ %1670, %1662 ], [ %1656, %1647 ], [ %865, %867 ]
  %1720 = phi float [ %1633, %1625 ], [ %866, %1163 ], [ %866, %853 ], [ %1633, %1696 ], [ %1633, %1694 ], [ %1633, %1662 ], [ %1633, %1647 ], [ %866, %867 ]
  br i1 %333, label %2562, label %1721

; <label>:1721                                    ; preds = %1708
  %1722 = icmp ult i32 %386, 3
  %1723 = add i32 %33, 56
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = add i32 %33, 60
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = or i32 %1728, %1725
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %2562, label %1731

; <label>:1731                                    ; preds = %1721
  %1732 = and i32 %1725, 262144
  %1733 = icmp ne i32 %1732, 0
  %1734 = select i1 %1733, float %36, float 1.000000e+00
  %1735 = select i1 %1733, float %37, float 0.000000e+00
  %1736 = select i1 %1733, float %38, float 0.000000e+00
  %1737 = select i1 %1733, float %39, float 1.000000e+00
  %1738 = select i1 %1733, float %40, float %49
  %1739 = select i1 %1733, float %41, float %50
  %1740 = add i32 %33, 316
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = lshr i32 %1742, 16
  %1744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1743)  ; LegacyF16ToF32(value)
  %1745 = fmul fast float %1744, 0x3F50624DE0000000
  %1746 = add i32 %33, 120
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 16
  %1750 = and i32 %1749, 255
  %1751 = lshr i32 %1748, 24
  %1752 = add i32 %33, 324
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 65535
  %1756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1755)  ; LegacyF16ToF32(value)
  %1757 = lshr i32 %1754, 16
  %1758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1757)  ; LegacyF16ToF32(value)
  %1759 = add i32 %33, 64
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 22
  %1763 = shl nuw nsw i32 %1762, 5
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = shl i32 %1761, 4
  %1766 = and i32 %1765, 32752
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = lshr i32 %1761, 7
  %1769 = and i32 %1768, 32752
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 3
  %1773 = fmul fast float %1772, 1.000000e+03
  %1774 = fmul fast float %283, %1773
  %1775 = call float @dx.op.unary.f32(i32 22, float %1774)  ; Frc(value)
  %1776 = fadd fast float %1775, %273
  %1777 = fmul fast float %284, %1773
  %1778 = call float @dx.op.unary.f32(i32 22, float %1777)  ; Frc(value)
  %1779 = fadd fast float %1778, %275
  %1780 = fmul fast float %1745, %1773
  %1781 = call float @dx.op.unary.f32(i32 22, float %1780)  ; Frc(value)
  %1782 = fmul fast float %1781, 0x401921FB60000000
  %1783 = fadd fast float %1782, %1764
  %1784 = call float @dx.op.unary.f32(i32 13, float %1783)  ; Sin(value)
  %1785 = call float @dx.op.unary.f32(i32 12, float %1783)  ; Cos(value)
  %1786 = fsub fast float -0.000000e+00, %1784
  %1787 = fadd fast float %1738, -5.000000e-01
  %1788 = fadd fast float %1739, -5.000000e-01
  %1789 = fmul fast float %1756, %1787
  %1790 = fmul fast float %1758, %1788
  %1791 = fadd fast float %1789, 5.000000e-01
  %1792 = fadd fast float %1790, 5.000000e-01
  %1793 = fmul fast float %1767, %1791
  %1794 = fmul fast float %1770, %1792
  %1795 = fmul fast float %1785, %1793
  %1796 = call float @dx.op.tertiary.f32(i32 46, float %1786, float %1794, float %1795)  ; FMad(a,b,c)
  %1797 = fmul fast float %1784, %1793
  %1798 = call float @dx.op.tertiary.f32(i32 46, float %1785, float %1794, float %1797)  ; FMad(a,b,c)
  %1799 = fadd fast float %1776, %1796
  %1800 = fadd fast float %1779, %1798
  %1801 = icmp ugt i32 %1750, 1
  %1802 = icmp ugt i32 %1748, 33554431
  %1803 = or i1 %1802, %1801
  br i1 %1803, label %1804, label %1829

; <label>:1804                                    ; preds = %1731
  %1805 = add i32 %33, 260
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = lshr i32 %1807, 16
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = fmul fast float %1772, %1809
  %1811 = call float @dx.op.unary.f32(i32 22, float %1810)  ; Frc(value)
  %1812 = mul nuw nsw i32 %1750, %1751
  %1813 = uitofp i32 %1812 to float
  %1814 = fmul fast float %1811, %1813
  %1815 = call float @dx.op.unary.f32(i32 27, float %1814)  ; Round_ni(value)
  %1816 = fptoui float %1815 to i32
  %1817 = urem i32 %1816, %1750
  %1818 = udiv i32 %1816, %1751
  %1819 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1820 = call float @dx.op.unary.f32(i32 22, float %1800)  ; Frc(value)
  %1821 = uitofp i32 %1817 to float
  %1822 = uitofp i32 %1818 to float
  %1823 = fadd fast float %1819, %1821
  %1824 = fadd fast float %1820, %1822
  %1825 = uitofp i32 %1750 to float
  %1826 = uitofp i32 %1751 to float
  %1827 = fdiv fast float %1823, %1825
  %1828 = fdiv fast float %1824, %1826
  br label %1829

; <label>:1829                                    ; preds = %1804, %1731
  %1830 = phi float [ %1827, %1804 ], [ %1799, %1731 ]
  %1831 = phi float [ %1828, %1804 ], [ %1800, %1731 ]
  %1832 = and i32 %1725, 16777216
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1943, label %1834

; <label>:1834                                    ; preds = %1829
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1839 = fadd fast float %1836, %116
  %1840 = fadd fast float %1837, %117
  %1841 = fadd fast float %1838, %118
  %1842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.f32 %1842, 0
  %1844 = call float @dx.op.unary.f32(i32 7, float %1843)  ; Saturate(value)
  %1845 = icmp eq i32 %34, 65535
  br i1 %1845, label %1940, label %1846

; <label>:1846                                    ; preds = %1834
  %1847 = lshr i32 %34, 1
  %1848 = shl i32 %1847, 2
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %34, 1
  %1852 = icmp ne i32 %1851, 0
  %1853 = lshr i32 %1850, 16
  %1854 = and i32 %1850, 65535
  %1855 = select i1 %1852, i32 %1853, i32 %1854
  %1856 = icmp eq i32 %1855, 65535
  br i1 %1856, label %1936, label %1857

; <label>:1857                                    ; preds = %1846
  %1858 = mul nuw nsw i32 %1855, 40
  %1859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.ResRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.ResRet.f32 %1859, 2
  %1863 = add nuw nsw i32 %1858, 12
  %1864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = add nuw nsw i32 %1858, 24
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = add nuw nsw i32 %1858, 36
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = fsub fast float %1839, %1860
  %1877 = fsub fast float %1840, %1861
  %1878 = fsub fast float %1841, %1862
  %1879 = fmul fast float %1875, %1876
  %1880 = fmul fast float %1875, %1877
  %1881 = fmul fast float %1875, %1878
  %1882 = call float @dx.op.unary.f32(i32 27, float %1879)  ; Round_ni(value)
  %1883 = call float @dx.op.unary.f32(i32 27, float %1880)  ; Round_ni(value)
  %1884 = call float @dx.op.unary.f32(i32 27, float %1881)  ; Round_ni(value)
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fmul fast float %1885, %1865
  %1889 = fmul fast float %1886, %1866
  %1890 = fmul fast float %1887, %1867
  %1891 = shl i32 %34, 2
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = add i32 %1893, 0
  %1895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1896 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1897 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1898 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1895, %dx.types.Handle %30, float %1896, float %1897, float %1898, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1900 = extractvalue %dx.types.ResRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.ResRet.f32 %1899, 1
  %1902 = extractvalue %dx.types.ResRet.f32 %1899, 2
  %1903 = fmul fast float %1900, 1.023000e+03
  %1904 = fmul fast float %1901, 1.023000e+03
  %1905 = fmul fast float %1902, 1.023000e+03
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fadd fast float %1904, 5.000000e-01
  %1908 = fadd fast float %1905, 5.000000e-01
  %1909 = call float @dx.op.unary.f32(i32 27, float %1906)  ; Round_ni(value)
  %1910 = call float @dx.op.unary.f32(i32 27, float %1907)  ; Round_ni(value)
  %1911 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1912 = fsub fast float %1879, %1882
  %1913 = fsub fast float %1880, %1883
  %1914 = fsub fast float %1881, %1884
  %1915 = fmul fast float %1912, 7.500000e-01
  %1916 = fmul fast float %1913, 7.500000e-01
  %1917 = fmul fast float %1914, 7.500000e-01
  %1918 = fadd fast float %1882, 1.250000e-01
  %1919 = fadd fast float %1918, %1915
  %1920 = fadd fast float %1919, %1909
  %1921 = fadd fast float %1883, 1.250000e-01
  %1922 = fadd fast float %1921, %1916
  %1923 = fadd fast float %1922, %1910
  %1924 = fadd fast float %1884, 1.250000e-01
  %1925 = fadd fast float %1924, %1917
  %1926 = fadd fast float %1925, %1911
  %1927 = fmul fast float %1920, %1870
  %1928 = fmul fast float %1923, %1871
  %1929 = fmul fast float %1926, %1872
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1933, %dx.types.Handle %28, float %1927, float %1928, float %1929, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  br label %1936

; <label>:1936                                    ; preds = %1857, %1846
  %1937 = phi float [ %1935, %1857 ], [ -1.000000e+00, %1846 ]
  %1938 = fadd fast float %1937, %1844
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  br label %1940

; <label>:1940                                    ; preds = %1936, %1834
  %1941 = phi float [ %1939, %1936 ], [ %1844, %1834 ]
  %1942 = fmul fast float %1941, %382
  br label %1943

; <label>:1943                                    ; preds = %1940, %1829
  %1944 = phi float [ %1942, %1940 ], [ %382, %1829 ]
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 256
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1995, label %1949

; <label>:1949                                    ; preds = %1943
  %1950 = add i32 %33, 448
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = add i32 %1952, 0
  %1954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1954, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = add i32 %33, 132
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = shl i32 %1959, 4
  %1961 = and i32 %1960, 32752
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = lshr i32 %1959, 7
  %1964 = and i32 %1963, 32752
  %1965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1964)  ; LegacyF16ToF32(value)
  %1966 = fsub fast float 1.000000e+00, %1944
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1968 = bitcast float %1944 to i32
  %1969 = sitofp i32 %1968 to float
  %1970 = fadd fast float %1969, 0xC1CFBF8940000000
  %1971 = fmul fast float %1965, %1970
  %1972 = fadd fast float %1971, 0x41CFBF8940000000
  %1973 = fptosi float %1972 to i32
  %1974 = bitcast i32 %1973 to float
  %1975 = bitcast float %1967 to i32
  %1976 = sitofp i32 %1975 to float
  %1977 = fadd fast float %1976, 0xC1CFBF8940000000
  %1978 = fmul fast float %1977, %1965
  %1979 = fadd fast float %1978, 0x41CFBF8940000000
  %1980 = fptosi float %1979 to i32
  %1981 = bitcast i32 %1980 to float
  %1982 = fmul fast float %1974, %1962
  %1983 = fmul fast float %1981, %1962
  %1984 = fsub fast float %1967, %1982
  %1985 = fadd fast float %1983, %1967
  %1986 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1987 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1988 = fsub fast float %1956, %1986
  %1989 = fsub fast float %1987, %1986
  %1990 = bitcast float %1989 to i32
  %1991 = sub nsw i32 2129859010, %1990
  %1992 = bitcast i32 %1991 to float
  %1993 = fmul fast float %1992, %1988
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  br label %1995

; <label>:1995                                    ; preds = %1949, %1943
  %1996 = phi float [ %1994, %1949 ], [ %1944, %1943 ]
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = and i32 %1998, 128
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2017, label %2001

; <label>:2001                                    ; preds = %1995
  %2002 = add i32 %33, 432
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %2004, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2006, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 524288
  %2012 = icmp ne i32 %2011, 0
  %2013 = fcmp fast ogt float %2008, 0x3FE0101020000000
  %2014 = select i1 %2013, float 1.000000e+00, float 0.000000e+00
  %2015 = select i1 %2012, float %2014, float %2008
  %2016 = fmul fast float %2015, %1996
  br label %2017

; <label>:2017                                    ; preds = %2001, %1995
  %2018 = phi float [ %2016, %2001 ], [ %1996, %1995 ]
  %2019 = fcmp fast ult float %2018, 0x3F70101020000000
  br i1 %2019, label %2562, label %2020

; <label>:2020                                    ; preds = %2017
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 16
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2223, label %2025

; <label>:2025                                    ; preds = %2020
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = add i32 %33, 384
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = add i32 %2030, 0
  %2032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2032, %dx.types.Handle %57, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2037 = extractvalue %dx.types.ResRet.f32 %2033, 3
  %2038 = and i32 %2027, 255
  %2039 = uitofp i32 %2038 to float
  %2040 = lshr i32 %2027, 8
  %2041 = and i32 %2040, 255
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %2037, %2039
  %2044 = fadd fast float %2043, %2042
  %2045 = fmul fast float %2044, 0x3F70101000000000
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 512
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2058, label %2050

; <label>:2050                                    ; preds = %2025
  %2051 = add i32 %33, 464
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = add i32 %2053, 0
  %2055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2055, %dx.types.Handle %58, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  br label %2058

; <label>:2058                                    ; preds = %2050, %2025
  %2059 = phi float [ %2057, %2050 ], [ 1.000000e+00, %2025 ]
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 33554432
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2170, label %2064

; <label>:2064                                    ; preds = %2058
  %2065 = add i32 %33, 256
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 65535
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = lshr i32 %2067, 16
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = add i32 %33, 260
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = and i32 %2074, 65535
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = lshr i32 %2078, 24
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = and i32 %2078, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2083, 0x3F70101020000000
  %2085 = lshr i32 %2078, 8
  %2086 = and i32 %2085, 255
  %2087 = uitofp i32 %2086 to float
  %2088 = fmul fast float %2087, 0x3F70101020000000
  %2089 = lshr i32 %2078, 16
  %2090 = and i32 %2089, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2091, 0x3F70101020000000
  %2093 = add i32 %33, 252
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = lshr i32 %2095, 24
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = and i32 %2095, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = lshr i32 %2095, 8
  %2103 = and i32 %2102, 255
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101020000000
  %2106 = lshr i32 %2095, 16
  %2107 = and i32 %2106, 255
  %2108 = uitofp i32 %2107 to float
  %2109 = fmul fast float %2108, 0x3F70101020000000
  %2110 = bitcast float %2034 to i32
  %2111 = ashr i32 %2110, 1
  %2112 = sub nsw i32 1597463174, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2034, 5.000000e-01
  %2115 = fmul fast float %2113, %2113
  %2116 = fmul fast float %2115, %2114
  %2117 = fsub fast float 1.500000e+00, %2116
  %2118 = fmul fast float %2113, %2034
  %2119 = fmul fast float %2118, %2117
  %2120 = bitcast float %2035 to i32
  %2121 = ashr i32 %2120, 1
  %2122 = sub nsw i32 1597463174, %2121
  %2123 = bitcast i32 %2122 to float
  %2124 = fmul fast float %2035, 5.000000e-01
  %2125 = fmul fast float %2123, %2123
  %2126 = fmul fast float %2125, %2124
  %2127 = fsub fast float 1.500000e+00, %2126
  %2128 = fmul fast float %2123, %2035
  %2129 = fmul fast float %2128, %2127
  %2130 = bitcast float %2036 to i32
  %2131 = ashr i32 %2130, 1
  %2132 = sub nsw i32 1597463174, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2036, 5.000000e-01
  %2135 = fmul fast float %2133, %2133
  %2136 = fmul fast float %2135, %2134
  %2137 = fsub fast float 1.500000e+00, %2136
  %2138 = fmul fast float %2133, %2036
  %2139 = fmul fast float %2138, %2137
  %2140 = fsub fast float %2119, %2101
  %2141 = fsub fast float %2129, %2105
  %2142 = fsub fast float %2139, %2109
  %2143 = fmul fast float %2140, %2069
  %2144 = fmul fast float %2141, %2071
  %2145 = fmul fast float %2142, %2076
  %2146 = fadd fast float %2143, %2084
  %2147 = fadd fast float %2144, %2088
  %2148 = fadd fast float %2145, %2092
  %2149 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2152 = fmul fast float %2149, %2149
  %2153 = fmul fast float %2150, %2150
  %2154 = fmul fast float %2151, %2151
  %2155 = fsub fast float %2152, %2034
  %2156 = fsub fast float %2153, %2035
  %2157 = fsub fast float %2154, %2036
  %2158 = fmul fast float %2155, %2059
  %2159 = fmul fast float %2156, %2059
  %2160 = fmul fast float %2157, %2059
  %2161 = fadd fast float %2158, %2034
  %2162 = fadd fast float %2159, %2035
  %2163 = fadd fast float %2160, %2036
  %2164 = fadd fast float %2081, %2045
  %2165 = fsub fast float %2164, %2098
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = fsub fast float %2166, %2045
  %2168 = fmul fast float %2167, %2059
  %2169 = fadd fast float %2168, %2045
  br label %2223

; <label>:2170                                    ; preds = %2058
  %2171 = and i32 %2061, 134217728
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2207, label %2173

; <label>:2173                                    ; preds = %2170
  %2174 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %2175 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %2176 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %2177 = fadd fast float %2174, -5.000000e-01
  %2178 = fadd fast float %2175, -5.000000e-01
  %2179 = fadd fast float %2176, -5.000000e-01
  %2180 = fmul fast float %2177, %2059
  %2181 = fmul fast float %2178, %2059
  %2182 = fmul fast float %2179, %2059
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = call float @dx.op.unary.f32(i32 24, float %2034)  ; Sqrt(value)
  %2187 = call float @dx.op.unary.f32(i32 24, float %2035)  ; Sqrt(value)
  %2188 = call float @dx.op.unary.f32(i32 24, float %2036)  ; Sqrt(value)
  %2189 = fmul fast float %2183, 2.000000e+00
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = fmul fast float %2190, %2186
  %2192 = fadd fast float %2191, %2189
  %2193 = fmul fast float %2192, %2186
  %2194 = fmul fast float %2184, 2.000000e+00
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = fmul fast float %2195, %2187
  %2197 = fadd fast float %2196, %2194
  %2198 = fmul fast float %2197, %2187
  %2199 = fmul fast float %2185, 2.000000e+00
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2200, %2188
  %2202 = fadd fast float %2201, %2199
  %2203 = fmul fast float %2202, %2188
  %2204 = fmul fast float %2193, %2193
  %2205 = fmul fast float %2198, %2198
  %2206 = fmul fast float %2203, %2203
  br label %2223

; <label>:2207                                    ; preds = %2170
  %2208 = fmul fast float %260, %260
  %2209 = fmul fast float %264, %264
  %2210 = fmul fast float %268, %268
  %2211 = fadd fast float %2208, -1.000000e+00
  %2212 = fadd fast float %2209, -1.000000e+00
  %2213 = fadd fast float %2210, -1.000000e+00
  %2214 = fmul fast float %2059, %2211
  %2215 = fmul fast float %2059, %2212
  %2216 = fmul fast float %2059, %2213
  %2217 = fadd fast float %2214, 1.000000e+00
  %2218 = fadd fast float %2215, 1.000000e+00
  %2219 = fadd fast float %2216, 1.000000e+00
  %2220 = fmul fast float %2217, %2034
  %2221 = fmul fast float %2218, %2035
  %2222 = fmul fast float %2219, %2036
  br label %2223

; <label>:2223                                    ; preds = %2207, %2173, %2064, %2020
  %2224 = phi float [ %2169, %2064 ], [ %2045, %2173 ], [ %2045, %2207 ], [ 0x3FA23C0BE0000000, %2020 ]
  %2225 = phi float [ %2161, %2064 ], [ %2204, %2173 ], [ %2220, %2207 ], [ 1.000000e+00, %2020 ]
  %2226 = phi float [ %2162, %2064 ], [ %2205, %2173 ], [ %2221, %2207 ], [ 1.000000e+00, %2020 ]
  %2227 = phi float [ %2163, %2064 ], [ %2206, %2173 ], [ %2222, %2207 ], [ 1.000000e+00, %2020 ]
  %2228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2229 = extractvalue %dx.types.CBufRet.i32 %2228, 1
  %2230 = and i32 %2229, 1
  %2231 = icmp ne i32 %2230, 0
  %2232 = add i32 %33, 356
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 32
  %2236 = icmp ne i32 %2235, 0
  %2237 = and i1 %2231, %2236
  %2238 = select i1 %2237, float 1.000000e+00, float %2225
  %2239 = select i1 %2237, float 0x3FD3333340000000, float %2226
  %2240 = select i1 %2237, float 0x3FD3333340000000, float %2227
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = and i32 %2242, 32
  %2244 = icmp eq i32 %2243, 0
  br i1 %2244, label %2317, label %2245

; <label>:2245                                    ; preds = %2223
  %2246 = add i32 %33, 124
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = add i32 %33, 400
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %57, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2255 = extractvalue %dx.types.ResRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.ResRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.ResRet.f32 %2254, 2
  %2258 = extractvalue %dx.types.ResRet.f32 %2254, 3
  %2259 = and i32 %2248, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = lshr i32 %2248, 8
  %2262 = and i32 %2261, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = lshr i32 %2248, 16
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101000000000
  %2268 = fmul fast float %2255, %2260
  %2269 = fadd fast float %2268, %2263
  %2270 = fmul fast float %2269, 0x3F70101000000000
  %2271 = fadd fast float %2256, -5.000000e-01
  %2272 = fadd fast float %2258, -5.000000e-01
  %2273 = fmul fast float %2271, %2267
  %2274 = fmul fast float %2272, %2267
  %2275 = fadd fast float %2273, 5.000000e-01
  %2276 = fadd fast float %2274, 5.000000e-01
  %2277 = fmul fast float %2275, 2.000000e+00
  %2278 = fadd fast float %2277, -1.000000e+00
  %2279 = fmul fast float %2276, 2.000000e+00
  %2280 = fadd fast float %2279, -1.000000e+00
  %2281 = fadd fast float %2278, %2280
  %2282 = fmul fast float %2281, 5.000000e-01
  %2283 = fsub fast float %2278, %2280
  %2284 = fmul fast float %2283, 5.000000e-01
  %2285 = call float @dx.op.unary.f32(i32 6, float %2282)  ; FAbs(value)
  %2286 = fsub fast float 1.000000e+00, %2285
  %2287 = call float @dx.op.unary.f32(i32 6, float %2284)  ; FAbs(value)
  %2288 = fsub fast float %2286, %2287
  %2289 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2284, float %2288, float %2282, float %2284, float %2288)  ; Dot3(ax,ay,az,bx,by,bz)
  %2290 = call float @dx.op.unary.f32(i32 25, float %2289)  ; Rsqrt(value)
  %2291 = fmul fast float %2282, %2290
  %2292 = fmul fast float %2284, %2290
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 67108864
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2313, label %2297

; <label>:2297                                    ; preds = %2245
  %2298 = add i32 %33, 312
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 65535
  %2302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2301)  ; LegacyF16ToF32(value)
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 65535
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = lshr i32 %2300, 16
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = fsub fast float %2270, %2308
  %2310 = fmul fast float %2309, %2302
  %2311 = fadd fast float %2310, %2306
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  br label %2313

; <label>:2313                                    ; preds = %2297, %2245
  %2314 = phi float [ %2312, %2297 ], [ %2270, %2245 ]
  %2315 = call float @dx.op.dot2.f32(i32 54, float %2291, float %2292, float %1734, float %1735)  ; Dot2(ax,ay,bx,by)
  %2316 = call float @dx.op.dot2.f32(i32 54, float %2291, float %2292, float %1736, float %1737)  ; Dot2(ax,ay,bx,by)
  br label %2317

; <label>:2317                                    ; preds = %2313, %2223
  %2318 = phi float [ %2314, %2313 ], [ 0x3FD6666660000000, %2223 ]
  %2319 = phi float [ %2315, %2313 ], [ 0.000000e+00, %2223 ]
  %2320 = phi float [ %2316, %2313 ], [ 0.000000e+00, %2223 ]
  %2321 = phi float [ %2257, %2313 ], [ 1.000000e+00, %2223 ]
  %2322 = add i32 %33, 192
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = lshr i32 %2324, 22
  %2326 = shl nuw nsw i32 %2325, 5
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 64
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2365, label %2332

; <label>:2332                                    ; preds = %2317
  %2333 = add i32 %33, 416
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = add i32 %2335, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 131072
  %2341 = icmp eq i32 %2340, 0
  %2342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2337, %dx.types.Handle %57, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = fmul fast float %2343, %248
  %2347 = fmul fast float %2344, %251
  %2348 = fmul fast float %2345, %254
  br i1 %2341, label %2355, label %2349

; <label>:2349                                    ; preds = %2332
  %2350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.f32 %2350, 0
  %2352 = fmul fast float %2351, %2346
  %2353 = fmul fast float %2351, %2347
  %2354 = fmul fast float %2351, %2348
  br label %2355

; <label>:2355                                    ; preds = %2349, %2332
  %2356 = phi float [ %2352, %2349 ], [ %2346, %2332 ]
  %2357 = phi float [ %2353, %2349 ], [ %2347, %2332 ]
  %2358 = phi float [ %2354, %2349 ], [ %2348, %2332 ]
  %2359 = fmul fast float %2356, %2327
  %2360 = select i1 %158, float %2359, float %2356
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2357, float %2358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = select i1 %158, float 0.000000e+00, float %2356
  %2363 = select i1 %158, float %2361, float %2357
  %2364 = select i1 %158, float 0.000000e+00, float %2358
  br label %2365

; <label>:2365                                    ; preds = %2355, %2317
  %2366 = phi float [ %2362, %2355 ], [ 0.000000e+00, %2317 ]
  %2367 = phi float [ %2363, %2355 ], [ 0.000000e+00, %2317 ]
  %2368 = phi float [ %2364, %2355 ], [ 0.000000e+00, %2317 ]
  %2369 = add i32 %33, 128
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = lshr i32 %2371, 8
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2238, float %2239, float %2240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = fmul fast float %2376, %2377
  %2379 = fadd fast float %2378, %2373
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  br i1 %1722, label %2382, label %2390

; <label>:2382                                    ; preds = %2365
  %2383 = fsub fast float 1.000000e+00, %2018
  %2384 = fmul fast float %2383, %1711
  %2385 = fmul fast float %2383, %1712
  %2386 = fmul fast float %2383, %1713
  %2387 = fmul fast float %2383, %1714
  %2388 = fmul fast float %2383, %1715
  %2389 = fmul fast float %2383, %1716
  br label %2390

; <label>:2390                                    ; preds = %2382, %2365
  %2391 = phi float [ %2384, %2382 ], [ %1711, %2365 ]
  %2392 = phi float [ %2385, %2382 ], [ %1712, %2365 ]
  %2393 = phi float [ %2386, %2382 ], [ %1713, %2365 ]
  %2394 = phi float [ %2387, %2382 ], [ %1714, %2365 ]
  %2395 = phi float [ %2388, %2382 ], [ %1715, %2365 ]
  %2396 = phi float [ %2389, %2382 ], [ %1716, %2365 ]
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = and i32 %2398, 3
  %2400 = icmp eq i32 %2399, 3
  br i1 %2400, label %2479, label %2401

; <label>:2401                                    ; preds = %2390
  %2402 = and i32 %2398, 16
  %2403 = icmp ne i32 %2402, 0
  %2404 = select i1 %2403, float %2018, float 0.000000e+00
  %2405 = icmp eq i32 %2399, 0
  br i1 %2405, label %2406, label %2434

; <label>:2406                                    ; preds = %2401
  %2407 = and i32 %2398, 64
  %2408 = icmp ne i32 %2407, 0
  %2409 = select i1 %2408, float %2018, float 0.000000e+00
  %2410 = fsub fast float %2238, %2391
  %2411 = fsub fast float %2239, %2392
  %2412 = fsub fast float %2240, %2393
  %2413 = fmul fast float %2404, %2410
  %2414 = fmul fast float %2404, %2411
  %2415 = fmul fast float %2404, %2412
  %2416 = fadd fast float %2413, %2391
  %2417 = fadd fast float %2414, %2392
  %2418 = fadd fast float %2415, %2393
  %2419 = fsub fast float %2224, %1717
  %2420 = fmul fast float %2404, %2419
  %2421 = fadd fast float %2420, %1717
  %2422 = fsub fast float %2366, %2394
  %2423 = fsub fast float %2367, %2395
  %2424 = fsub fast float %2368, %2396
  %2425 = fmul fast float %2409, %2422
  %2426 = fmul fast float %2409, %2423
  %2427 = fmul fast float %2409, %2424
  %2428 = fadd fast float %2425, %2394
  %2429 = fadd fast float %2426, %2395
  %2430 = fadd fast float %2427, %2396
  %2431 = fsub fast float %2381, %1720
  %2432 = fmul fast float %2404, %2431
  %2433 = fadd fast float %2432, %1720
  br label %2479

; <label>:2434                                    ; preds = %2401
  %2435 = icmp eq i32 %2399, 1
  br i1 %2435, label %2436, label %2449

; <label>:2436                                    ; preds = %2434
  %2437 = fadd fast float %2238, -1.000000e+00
  %2438 = fadd fast float %2239, -1.000000e+00
  %2439 = fadd fast float %2240, -1.000000e+00
  %2440 = fmul fast float %2404, %2437
  %2441 = fmul fast float %2404, %2438
  %2442 = fmul fast float %2404, %2439
  %2443 = fadd fast float %2440, 1.000000e+00
  %2444 = fadd fast float %2441, 1.000000e+00
  %2445 = fadd fast float %2442, 1.000000e+00
  %2446 = fmul fast float %2443, %2391
  %2447 = fmul fast float %2444, %2392
  %2448 = fmul fast float %2445, %2393
  br label %2479

; <label>:2449                                    ; preds = %2434
  %2450 = icmp eq i32 %2399, 2
  br i1 %2450, label %2451, label %2479

; <label>:2451                                    ; preds = %2449
  %2452 = call float @dx.op.unary.f32(i32 24, float %2238)  ; Sqrt(value)
  %2453 = call float @dx.op.unary.f32(i32 24, float %2239)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fmul fast float %2455, %2404
  %2459 = fmul fast float %2456, %2404
  %2460 = fmul fast float %2457, %2404
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fmul fast float %2461, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2391
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2391
  %2469 = fmul fast float %2462, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2392
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2392
  %2474 = fmul fast float %2463, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2393
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2393
  br label %2479

; <label>:2479                                    ; preds = %2451, %2449, %2436, %2406, %2390
  %2480 = phi float [ %2391, %2390 ], [ %2468, %2451 ], [ %2391, %2449 ], [ %2446, %2436 ], [ %2416, %2406 ]
  %2481 = phi float [ %2392, %2390 ], [ %2473, %2451 ], [ %2392, %2449 ], [ %2447, %2436 ], [ %2417, %2406 ]
  %2482 = phi float [ %2393, %2390 ], [ %2478, %2451 ], [ %2393, %2449 ], [ %2448, %2436 ], [ %2418, %2406 ]
  %2483 = phi float [ %2394, %2390 ], [ %2394, %2451 ], [ %2394, %2449 ], [ %2394, %2436 ], [ %2428, %2406 ]
  %2484 = phi float [ %2395, %2390 ], [ %2395, %2451 ], [ %2395, %2449 ], [ %2395, %2436 ], [ %2429, %2406 ]
  %2485 = phi float [ %2396, %2390 ], [ %2396, %2451 ], [ %2396, %2449 ], [ %2396, %2436 ], [ %2430, %2406 ]
  %2486 = phi float [ %1717, %2390 ], [ %1717, %2451 ], [ %1717, %2449 ], [ %1717, %2436 ], [ %2421, %2406 ]
  %2487 = phi float [ %1720, %2390 ], [ %1720, %2451 ], [ %1720, %2449 ], [ %1720, %2436 ], [ %2433, %2406 ]
  %2488 = and i32 %2398, 12
  %2489 = icmp eq i32 %2488, 12
  br i1 %2489, label %2562, label %2490

; <label>:2490                                    ; preds = %2479
  %2491 = and i32 %2398, 2097184
  %2492 = icmp eq i32 %2491, 2097184
  %2493 = select i1 %2492, float %2018, float 0.000000e+00
  %2494 = and i32 %2398, 4194336
  %2495 = icmp eq i32 %2494, 4194336
  %2496 = select i1 %2495, float %2018, float 0.000000e+00
  %2497 = and i32 %2398, 8388640
  %2498 = icmp eq i32 %2497, 8388640
  %2499 = select i1 %2498, float %2018, float 0.000000e+00
  %2500 = icmp eq i32 %2488, 0
  br i1 %2500, label %2501, label %2514

; <label>:2501                                    ; preds = %2490
  %2502 = fsub fast float %2319, %1709
  %2503 = fsub fast float %2320, %1710
  %2504 = fmul fast float %2493, %2502
  %2505 = fmul fast float %2493, %2503
  %2506 = fadd fast float %2504, %1709
  %2507 = fadd fast float %2505, %1710
  %2508 = fsub fast float %2321, %1719
  %2509 = fmul fast float %2496, %2508
  %2510 = fadd fast float %2509, %1719
  %2511 = fsub fast float %2318, %1718
  %2512 = fmul fast float %2499, %2511
  %2513 = fadd fast float %2512, %1718
  br label %2562

; <label>:2514                                    ; preds = %2490
  %2515 = icmp eq i32 %2488, 4
  br i1 %2515, label %2516, label %2548

; <label>:2516                                    ; preds = %2514
  %2517 = fmul fast float %2493, %2319
  %2518 = fmul fast float %2493, %2320
  %2519 = fadd fast float %2517, %1709
  %2520 = fadd fast float %2518, %1710
  %2521 = call float @dx.op.binary.f32(i32 36, float %1719, float %2321)  ; FMin(a,b)
  %2522 = fsub fast float %2521, %1719
  %2523 = fmul fast float %2522, %2496
  %2524 = fadd fast float %2523, %1719
  %2525 = fadd fast float %2318, %1718
  %2526 = fmul fast float %2525, 0x3FF337FAE0000000
  %2527 = fmul fast float %1718, %1718
  %2528 = fmul fast float %2318, %2318
  %2529 = fadd fast float %2528, %2527
  %2530 = fmul fast float %2529, 0x3FE5152B00000000
  %2531 = fmul fast float %1718, 0xBFCC1F85E0000000
  %2532 = fmul fast float %2531, %2318
  %2533 = fadd fast float %2532, 0xBFE1363700000000
  %2534 = fadd fast float %2533, %2526
  %2535 = fsub fast float %2534, %2530
  %2536 = fmul fast float %2525, 0x3FBA6F0D00000000
  %2537 = fmul fast float %2529, 0x3FD0432880000000
  %2538 = fmul fast float %1718, 0xBFEF110800000000
  %2539 = fmul fast float %2538, %2318
  %2540 = fadd fast float %2539, 1.000000e+00
  %2541 = fsub fast float %2540, %2536
  %2542 = fadd fast float %2541, %2537
  %2543 = fdiv fast float %2535, %2542
  %2544 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2545 = fsub fast float %2544, %1718
  %2546 = fmul fast float %2545, %2499
  %2547 = fadd fast float %2546, %1718
  br label %2562

; <label>:2548                                    ; preds = %2514
  %2549 = icmp eq i32 %2488, 8
  br i1 %2549, label %2550, label %2562

; <label>:2550                                    ; preds = %2548
  %2551 = fmul fast float %2493, %2319
  %2552 = fmul fast float %2493, %2320
  %2553 = fadd fast float %2551, %1709
  %2554 = fadd fast float %2552, %1710
  %2555 = call float @dx.op.binary.f32(i32 36, float %1719, float %2321)  ; FMin(a,b)
  %2556 = fsub fast float %2555, %1719
  %2557 = fmul fast float %2556, %2496
  %2558 = fadd fast float %2557, %1719
  %2559 = fsub fast float %2318, %1718
  %2560 = fmul fast float %2499, %2559
  %2561 = fadd fast float %2560, %1718
  br label %2562

; <label>:2562                                    ; preds = %2550, %2548, %2516, %2501, %2479, %2017, %1721, %1708
  %2563 = phi float [ %1709, %2479 ], [ %1709, %2017 ], [ %1709, %1708 ], [ %2553, %2550 ], [ %1709, %2548 ], [ %2519, %2516 ], [ %2506, %2501 ], [ %1709, %1721 ]
  %2564 = phi float [ %1710, %2479 ], [ %1710, %2017 ], [ %1710, %1708 ], [ %2554, %2550 ], [ %1710, %2548 ], [ %2520, %2516 ], [ %2507, %2501 ], [ %1710, %1721 ]
  %2565 = phi float [ %2480, %2479 ], [ %1711, %2017 ], [ %1711, %1708 ], [ %2480, %2550 ], [ %2480, %2548 ], [ %2480, %2516 ], [ %2480, %2501 ], [ %1711, %1721 ]
  %2566 = phi float [ %2481, %2479 ], [ %1712, %2017 ], [ %1712, %1708 ], [ %2481, %2550 ], [ %2481, %2548 ], [ %2481, %2516 ], [ %2481, %2501 ], [ %1712, %1721 ]
  %2567 = phi float [ %2482, %2479 ], [ %1713, %2017 ], [ %1713, %1708 ], [ %2482, %2550 ], [ %2482, %2548 ], [ %2482, %2516 ], [ %2482, %2501 ], [ %1713, %1721 ]
  %2568 = phi float [ %2483, %2479 ], [ %1714, %2017 ], [ %1714, %1708 ], [ %2483, %2550 ], [ %2483, %2548 ], [ %2483, %2516 ], [ %2483, %2501 ], [ %1714, %1721 ]
  %2569 = phi float [ %2484, %2479 ], [ %1715, %2017 ], [ %1715, %1708 ], [ %2484, %2550 ], [ %2484, %2548 ], [ %2484, %2516 ], [ %2484, %2501 ], [ %1715, %1721 ]
  %2570 = phi float [ %2485, %2479 ], [ %1716, %2017 ], [ %1716, %1708 ], [ %2485, %2550 ], [ %2485, %2548 ], [ %2485, %2516 ], [ %2485, %2501 ], [ %1716, %1721 ]
  %2571 = phi float [ %2486, %2479 ], [ %1717, %2017 ], [ %1717, %1708 ], [ %2486, %2550 ], [ %2486, %2548 ], [ %2486, %2516 ], [ %2486, %2501 ], [ %1717, %1721 ]
  %2572 = phi float [ %1718, %2479 ], [ %1718, %2017 ], [ %1718, %1708 ], [ %2561, %2550 ], [ %1718, %2548 ], [ %2547, %2516 ], [ %2513, %2501 ], [ %1718, %1721 ]
  %2573 = phi float [ %1719, %2479 ], [ %1719, %2017 ], [ %1719, %1708 ], [ %2558, %2550 ], [ %1719, %2548 ], [ %2524, %2516 ], [ %2510, %2501 ], [ %1719, %1721 ]
  %2574 = phi float [ %2487, %2479 ], [ %1720, %2017 ], [ %1720, %1708 ], [ %2487, %2550 ], [ %2487, %2548 ], [ %2487, %2516 ], [ %2487, %2501 ], [ %1720, %1721 ]
  br i1 %335, label %3416, label %2575

; <label>:2575                                    ; preds = %2562
  %2576 = icmp ult i32 %386, 4
  %2577 = add i32 %33, 72
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = add i32 %33, 76
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = or i32 %2582, %2579
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %3416, label %2585

; <label>:2585                                    ; preds = %2575
  %2586 = and i32 %2579, 262144
  %2587 = icmp ne i32 %2586, 0
  %2588 = select i1 %2587, float %36, float 1.000000e+00
  %2589 = select i1 %2587, float %37, float 0.000000e+00
  %2590 = select i1 %2587, float %38, float 0.000000e+00
  %2591 = select i1 %2587, float %39, float 1.000000e+00
  %2592 = select i1 %2587, float %40, float %49
  %2593 = select i1 %2587, float %41, float %50
  %2594 = add i32 %33, 332
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = lshr i32 %2596, 16
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = fmul fast float %2598, 0x3F50624DE0000000
  %2600 = add i32 %33, 136
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 16
  %2604 = and i32 %2603, 255
  %2605 = lshr i32 %2602, 24
  %2606 = add i32 %33, 340
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 65535
  %2610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2609)  ; LegacyF16ToF32(value)
  %2611 = lshr i32 %2608, 16
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = add i32 %33, 80
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 22
  %2617 = shl nuw nsw i32 %2616, 5
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = shl i32 %2615, 4
  %2620 = and i32 %2619, 32752
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = lshr i32 %2615, 7
  %2623 = and i32 %2622, 32752
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2627 = fmul fast float %2626, 1.000000e+03
  %2628 = fmul fast float %325, %2627
  %2629 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2630 = fadd fast float %2629, %315
  %2631 = fmul fast float %326, %2627
  %2632 = call float @dx.op.unary.f32(i32 22, float %2631)  ; Frc(value)
  %2633 = fadd fast float %2632, %317
  %2634 = fmul fast float %2599, %2627
  %2635 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2636 = fmul fast float %2635, 0x401921FB60000000
  %2637 = fadd fast float %2636, %2618
  %2638 = call float @dx.op.unary.f32(i32 13, float %2637)  ; Sin(value)
  %2639 = call float @dx.op.unary.f32(i32 12, float %2637)  ; Cos(value)
  %2640 = fsub fast float -0.000000e+00, %2638
  %2641 = fadd fast float %2592, -5.000000e-01
  %2642 = fadd fast float %2593, -5.000000e-01
  %2643 = fmul fast float %2610, %2641
  %2644 = fmul fast float %2612, %2642
  %2645 = fadd fast float %2643, 5.000000e-01
  %2646 = fadd fast float %2644, 5.000000e-01
  %2647 = fmul fast float %2621, %2645
  %2648 = fmul fast float %2624, %2646
  %2649 = fmul fast float %2639, %2647
  %2650 = call float @dx.op.tertiary.f32(i32 46, float %2640, float %2648, float %2649)  ; FMad(a,b,c)
  %2651 = fmul fast float %2638, %2647
  %2652 = call float @dx.op.tertiary.f32(i32 46, float %2639, float %2648, float %2651)  ; FMad(a,b,c)
  %2653 = fadd fast float %2630, %2650
  %2654 = fadd fast float %2633, %2652
  %2655 = icmp ugt i32 %2604, 1
  %2656 = icmp ugt i32 %2602, 33554431
  %2657 = or i1 %2656, %2655
  br i1 %2657, label %2658, label %2683

; <label>:2658                                    ; preds = %2585
  %2659 = add i32 %33, 276
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = lshr i32 %2661, 16
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = fmul fast float %2626, %2663
  %2665 = call float @dx.op.unary.f32(i32 22, float %2664)  ; Frc(value)
  %2666 = mul nuw nsw i32 %2604, %2605
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2665, %2667
  %2669 = call float @dx.op.unary.f32(i32 27, float %2668)  ; Round_ni(value)
  %2670 = fptoui float %2669 to i32
  %2671 = urem i32 %2670, %2604
  %2672 = udiv i32 %2670, %2605
  %2673 = call float @dx.op.unary.f32(i32 22, float %2653)  ; Frc(value)
  %2674 = call float @dx.op.unary.f32(i32 22, float %2654)  ; Frc(value)
  %2675 = uitofp i32 %2671 to float
  %2676 = uitofp i32 %2672 to float
  %2677 = fadd fast float %2673, %2675
  %2678 = fadd fast float %2674, %2676
  %2679 = uitofp i32 %2604 to float
  %2680 = uitofp i32 %2605 to float
  %2681 = fdiv fast float %2677, %2679
  %2682 = fdiv fast float %2678, %2680
  br label %2683

; <label>:2683                                    ; preds = %2658, %2585
  %2684 = phi float [ %2681, %2658 ], [ %2653, %2585 ]
  %2685 = phi float [ %2682, %2658 ], [ %2654, %2585 ]
  %2686 = and i32 %2579, 16777216
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2797, label %2688

; <label>:2688                                    ; preds = %2683
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2693 = fadd fast float %2690, %116
  %2694 = fadd fast float %2691, %117
  %2695 = fadd fast float %2692, %118
  %2696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2696, 0
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = icmp eq i32 %34, 65535
  br i1 %2699, label %2794, label %2700

; <label>:2700                                    ; preds = %2688
  %2701 = lshr i32 %34, 1
  %2702 = shl i32 %2701, 2
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %34, 1
  %2706 = icmp ne i32 %2705, 0
  %2707 = lshr i32 %2704, 16
  %2708 = and i32 %2704, 65535
  %2709 = select i1 %2706, i32 %2707, i32 %2708
  %2710 = icmp eq i32 %2709, 65535
  br i1 %2710, label %2790, label %2711

; <label>:2711                                    ; preds = %2700
  %2712 = mul nuw nsw i32 %2709, 40
  %2713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.ResRet.f32 %2713, 2
  %2717 = add nuw nsw i32 %2712, 12
  %2718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = extractvalue %dx.types.ResRet.f32 %2718, 1
  %2721 = extractvalue %dx.types.ResRet.f32 %2718, 2
  %2722 = add nuw nsw i32 %2712, 24
  %2723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.ResRet.f32 %2723, 1
  %2726 = extractvalue %dx.types.ResRet.f32 %2723, 2
  %2727 = add nuw nsw i32 %2712, 36
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = fsub fast float %2693, %2714
  %2731 = fsub fast float %2694, %2715
  %2732 = fsub fast float %2695, %2716
  %2733 = fmul fast float %2729, %2730
  %2734 = fmul fast float %2729, %2731
  %2735 = fmul fast float %2729, %2732
  %2736 = call float @dx.op.unary.f32(i32 27, float %2733)  ; Round_ni(value)
  %2737 = call float @dx.op.unary.f32(i32 27, float %2734)  ; Round_ni(value)
  %2738 = call float @dx.op.unary.f32(i32 27, float %2735)  ; Round_ni(value)
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fmul fast float %2739, %2719
  %2743 = fmul fast float %2740, %2720
  %2744 = fmul fast float %2741, %2721
  %2745 = shl i32 %34, 2
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = add i32 %2747, 0
  %2749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2750 = call float @dx.op.unary.f32(i32 22, float %2742)  ; Frc(value)
  %2751 = call float @dx.op.unary.f32(i32 22, float %2743)  ; Frc(value)
  %2752 = call float @dx.op.unary.f32(i32 22, float %2744)  ; Frc(value)
  %2753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2749, %dx.types.Handle %30, float %2750, float %2751, float %2752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2754 = extractvalue %dx.types.ResRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.ResRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.ResRet.f32 %2753, 2
  %2757 = fmul fast float %2754, 1.023000e+03
  %2758 = fmul fast float %2755, 1.023000e+03
  %2759 = fmul fast float %2756, 1.023000e+03
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = call float @dx.op.unary.f32(i32 27, float %2760)  ; Round_ni(value)
  %2764 = call float @dx.op.unary.f32(i32 27, float %2761)  ; Round_ni(value)
  %2765 = call float @dx.op.unary.f32(i32 27, float %2762)  ; Round_ni(value)
  %2766 = fsub fast float %2733, %2736
  %2767 = fsub fast float %2734, %2737
  %2768 = fsub fast float %2735, %2738
  %2769 = fmul fast float %2766, 7.500000e-01
  %2770 = fmul fast float %2767, 7.500000e-01
  %2771 = fmul fast float %2768, 7.500000e-01
  %2772 = fadd fast float %2736, 1.250000e-01
  %2773 = fadd fast float %2772, %2769
  %2774 = fadd fast float %2773, %2763
  %2775 = fadd fast float %2737, 1.250000e-01
  %2776 = fadd fast float %2775, %2770
  %2777 = fadd fast float %2776, %2764
  %2778 = fadd fast float %2738, 1.250000e-01
  %2779 = fadd fast float %2778, %2771
  %2780 = fadd fast float %2779, %2765
  %2781 = fmul fast float %2774, %2724
  %2782 = fmul fast float %2777, %2725
  %2783 = fmul fast float %2780, %2726
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = add i32 %2785, 0
  %2787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2787, %dx.types.Handle %28, float %2781, float %2782, float %2783, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  br label %2790

; <label>:2790                                    ; preds = %2711, %2700
  %2791 = phi float [ %2789, %2711 ], [ -1.000000e+00, %2700 ]
  %2792 = fadd fast float %2791, %2698
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  br label %2794

; <label>:2794                                    ; preds = %2790, %2688
  %2795 = phi float [ %2793, %2790 ], [ %2698, %2688 ]
  %2796 = fmul fast float %2795, %381
  br label %2797

; <label>:2797                                    ; preds = %2794, %2683
  %2798 = phi float [ %2796, %2794 ], [ %381, %2683 ]
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, 256
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2849, label %2803

; <label>:2803                                    ; preds = %2797
  %2804 = add i32 %33, 452
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = add i32 %2806, 0
  %2808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2808, %dx.types.Handle %58, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = add i32 %33, 148
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = shl i32 %2813, 4
  %2815 = and i32 %2814, 32752
  %2816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2815)  ; LegacyF16ToF32(value)
  %2817 = lshr i32 %2813, 7
  %2818 = and i32 %2817, 32752
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = fsub fast float 1.000000e+00, %2798
  %2821 = call float @dx.op.binary.f32(i32 35, float %2820, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2822 = bitcast float %2798 to i32
  %2823 = sitofp i32 %2822 to float
  %2824 = fadd fast float %2823, 0xC1CFBF8940000000
  %2825 = fmul fast float %2819, %2824
  %2826 = fadd fast float %2825, 0x41CFBF8940000000
  %2827 = fptosi float %2826 to i32
  %2828 = bitcast i32 %2827 to float
  %2829 = bitcast float %2821 to i32
  %2830 = sitofp i32 %2829 to float
  %2831 = fadd fast float %2830, 0xC1CFBF8940000000
  %2832 = fmul fast float %2831, %2819
  %2833 = fadd fast float %2832, 0x41CFBF8940000000
  %2834 = fptosi float %2833 to i32
  %2835 = bitcast i32 %2834 to float
  %2836 = fmul fast float %2828, %2816
  %2837 = fmul fast float %2835, %2816
  %2838 = fsub fast float %2821, %2836
  %2839 = fadd fast float %2837, %2821
  %2840 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2841 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  %2842 = fsub fast float %2810, %2840
  %2843 = fsub fast float %2841, %2840
  %2844 = bitcast float %2843 to i32
  %2845 = sub nsw i32 2129859010, %2844
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2846, %2842
  %2848 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  br label %2849

; <label>:2849                                    ; preds = %2803, %2797
  %2850 = phi float [ %2848, %2803 ], [ %2798, %2797 ]
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 128
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2871, label %2855

; <label>:2855                                    ; preds = %2849
  %2856 = add i32 %33, 436
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %2858, 0
  %2860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2860, %dx.types.Handle %58, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 524288
  %2866 = icmp ne i32 %2865, 0
  %2867 = fcmp fast ogt float %2862, 0x3FE0101020000000
  %2868 = select i1 %2867, float 1.000000e+00, float 0.000000e+00
  %2869 = select i1 %2866, float %2868, float %2862
  %2870 = fmul fast float %2869, %2850
  br label %2871

; <label>:2871                                    ; preds = %2855, %2849
  %2872 = phi float [ %2870, %2855 ], [ %2850, %2849 ]
  %2873 = fcmp fast ult float %2872, 0x3F70101020000000
  br i1 %2873, label %3416, label %2874

; <label>:2874                                    ; preds = %2871
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 16
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %3077, label %2879

; <label>:2879                                    ; preds = %2874
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = add i32 %33, 388
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = add i32 %2884, 0
  %2886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2886, %dx.types.Handle %57, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.ResRet.f32 %2887, 2
  %2891 = extractvalue %dx.types.ResRet.f32 %2887, 3
  %2892 = and i32 %2881, 255
  %2893 = uitofp i32 %2892 to float
  %2894 = lshr i32 %2881, 8
  %2895 = and i32 %2894, 255
  %2896 = uitofp i32 %2895 to float
  %2897 = fmul fast float %2891, %2893
  %2898 = fadd fast float %2897, %2896
  %2899 = fmul fast float %2898, 0x3F70101000000000
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = and i32 %2901, 512
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %2912, label %2904

; <label>:2904                                    ; preds = %2879
  %2905 = add i32 %33, 468
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = add i32 %2907, 0
  %2909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2909, %dx.types.Handle %58, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2911 = extractvalue %dx.types.ResRet.f32 %2910, 0
  br label %2912

; <label>:2912                                    ; preds = %2904, %2879
  %2913 = phi float [ %2911, %2904 ], [ 1.000000e+00, %2879 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 33554432
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %3024, label %2918

; <label>:2918                                    ; preds = %2912
  %2919 = add i32 %33, 272
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 65535
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = lshr i32 %2921, 16
  %2925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2924)  ; LegacyF16ToF32(value)
  %2926 = add i32 %33, 276
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 65535
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = lshr i32 %2932, 24
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2934, 0x3F70101020000000
  %2936 = and i32 %2932, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2937, 0x3F70101020000000
  %2939 = lshr i32 %2932, 8
  %2940 = and i32 %2939, 255
  %2941 = uitofp i32 %2940 to float
  %2942 = fmul fast float %2941, 0x3F70101020000000
  %2943 = lshr i32 %2932, 16
  %2944 = and i32 %2943, 255
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2945, 0x3F70101020000000
  %2947 = add i32 %33, 268
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 24
  %2951 = uitofp i32 %2950 to float
  %2952 = fmul fast float %2951, 0x3F70101020000000
  %2953 = and i32 %2949, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = lshr i32 %2949, 8
  %2957 = and i32 %2956, 255
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = lshr i32 %2949, 16
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = bitcast float %2888 to i32
  %2965 = ashr i32 %2964, 1
  %2966 = sub nsw i32 1597463174, %2965
  %2967 = bitcast i32 %2966 to float
  %2968 = fmul fast float %2888, 5.000000e-01
  %2969 = fmul fast float %2967, %2967
  %2970 = fmul fast float %2969, %2968
  %2971 = fsub fast float 1.500000e+00, %2970
  %2972 = fmul fast float %2967, %2888
  %2973 = fmul fast float %2972, %2971
  %2974 = bitcast float %2889 to i32
  %2975 = ashr i32 %2974, 1
  %2976 = sub nsw i32 1597463174, %2975
  %2977 = bitcast i32 %2976 to float
  %2978 = fmul fast float %2889, 5.000000e-01
  %2979 = fmul fast float %2977, %2977
  %2980 = fmul fast float %2979, %2978
  %2981 = fsub fast float 1.500000e+00, %2980
  %2982 = fmul fast float %2977, %2889
  %2983 = fmul fast float %2982, %2981
  %2984 = bitcast float %2890 to i32
  %2985 = ashr i32 %2984, 1
  %2986 = sub nsw i32 1597463174, %2985
  %2987 = bitcast i32 %2986 to float
  %2988 = fmul fast float %2890, 5.000000e-01
  %2989 = fmul fast float %2987, %2987
  %2990 = fmul fast float %2989, %2988
  %2991 = fsub fast float 1.500000e+00, %2990
  %2992 = fmul fast float %2987, %2890
  %2993 = fmul fast float %2992, %2991
  %2994 = fsub fast float %2973, %2955
  %2995 = fsub fast float %2983, %2959
  %2996 = fsub fast float %2993, %2963
  %2997 = fmul fast float %2994, %2923
  %2998 = fmul fast float %2995, %2925
  %2999 = fmul fast float %2996, %2930
  %3000 = fadd fast float %2997, %2938
  %3001 = fadd fast float %2998, %2942
  %3002 = fadd fast float %2999, %2946
  %3003 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  %3004 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3005 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3006 = fmul fast float %3003, %3003
  %3007 = fmul fast float %3004, %3004
  %3008 = fmul fast float %3005, %3005
  %3009 = fsub fast float %3006, %2888
  %3010 = fsub fast float %3007, %2889
  %3011 = fsub fast float %3008, %2890
  %3012 = fmul fast float %3009, %2913
  %3013 = fmul fast float %3010, %2913
  %3014 = fmul fast float %3011, %2913
  %3015 = fadd fast float %3012, %2888
  %3016 = fadd fast float %3013, %2889
  %3017 = fadd fast float %3014, %2890
  %3018 = fadd fast float %2935, %2899
  %3019 = fsub fast float %3018, %2952
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3021 = fsub fast float %3020, %2899
  %3022 = fmul fast float %3021, %2913
  %3023 = fadd fast float %3022, %2899
  br label %3077

; <label>:3024                                    ; preds = %2912
  %3025 = and i32 %2915, 134217728
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3061, label %3027

; <label>:3027                                    ; preds = %3024
  %3028 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %3029 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %3030 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %3031 = fadd fast float %3028, -5.000000e-01
  %3032 = fadd fast float %3029, -5.000000e-01
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fmul fast float %3031, %2913
  %3035 = fmul fast float %3032, %2913
  %3036 = fmul fast float %3033, %2913
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = call float @dx.op.unary.f32(i32 24, float %2888)  ; Sqrt(value)
  %3041 = call float @dx.op.unary.f32(i32 24, float %2889)  ; Sqrt(value)
  %3042 = call float @dx.op.unary.f32(i32 24, float %2890)  ; Sqrt(value)
  %3043 = fmul fast float %3037, 2.000000e+00
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = fmul fast float %3044, %3040
  %3046 = fadd fast float %3045, %3043
  %3047 = fmul fast float %3046, %3040
  %3048 = fmul fast float %3038, 2.000000e+00
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = fmul fast float %3049, %3041
  %3051 = fadd fast float %3050, %3048
  %3052 = fmul fast float %3051, %3041
  %3053 = fmul fast float %3039, 2.000000e+00
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = fmul fast float %3054, %3042
  %3056 = fadd fast float %3055, %3053
  %3057 = fmul fast float %3056, %3042
  %3058 = fmul fast float %3047, %3047
  %3059 = fmul fast float %3052, %3052
  %3060 = fmul fast float %3057, %3057
  br label %3077

; <label>:3061                                    ; preds = %3024
  %3062 = fmul fast float %302, %302
  %3063 = fmul fast float %306, %306
  %3064 = fmul fast float %310, %310
  %3065 = fadd fast float %3062, -1.000000e+00
  %3066 = fadd fast float %3063, -1.000000e+00
  %3067 = fadd fast float %3064, -1.000000e+00
  %3068 = fmul fast float %2913, %3065
  %3069 = fmul fast float %2913, %3066
  %3070 = fmul fast float %2913, %3067
  %3071 = fadd fast float %3068, 1.000000e+00
  %3072 = fadd fast float %3069, 1.000000e+00
  %3073 = fadd fast float %3070, 1.000000e+00
  %3074 = fmul fast float %3071, %2888
  %3075 = fmul fast float %3072, %2889
  %3076 = fmul fast float %3073, %2890
  br label %3077

; <label>:3077                                    ; preds = %3061, %3027, %2918, %2874
  %3078 = phi float [ %3023, %2918 ], [ %2899, %3027 ], [ %2899, %3061 ], [ 0x3FA23C0BE0000000, %2874 ]
  %3079 = phi float [ %3015, %2918 ], [ %3058, %3027 ], [ %3074, %3061 ], [ 1.000000e+00, %2874 ]
  %3080 = phi float [ %3016, %2918 ], [ %3059, %3027 ], [ %3075, %3061 ], [ 1.000000e+00, %2874 ]
  %3081 = phi float [ %3017, %2918 ], [ %3060, %3027 ], [ %3076, %3061 ], [ 1.000000e+00, %2874 ]
  %3082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.i32 %3082, 1
  %3084 = and i32 %3083, 1
  %3085 = icmp ne i32 %3084, 0
  %3086 = add i32 %33, 356
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, 32
  %3090 = icmp ne i32 %3089, 0
  %3091 = and i1 %3085, %3090
  %3092 = select i1 %3091, float 1.000000e+00, float %3079
  %3093 = select i1 %3091, float 0x3FD3333340000000, float %3080
  %3094 = select i1 %3091, float 0x3FD3333340000000, float %3081
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 32
  %3098 = icmp eq i32 %3097, 0
  br i1 %3098, label %3171, label %3099

; <label>:3099                                    ; preds = %3077
  %3100 = add i32 %33, 140
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = add i32 %33, 404
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %3105, 0
  %3107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3107, %dx.types.Handle %57, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.ResRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.ResRet.f32 %3108, 2
  %3112 = extractvalue %dx.types.ResRet.f32 %3108, 3
  %3113 = and i32 %3102, 255
  %3114 = uitofp i32 %3113 to float
  %3115 = lshr i32 %3102, 8
  %3116 = and i32 %3115, 255
  %3117 = uitofp i32 %3116 to float
  %3118 = lshr i32 %3102, 16
  %3119 = and i32 %3118, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = fmul fast float %3120, 0x3F70101000000000
  %3122 = fmul fast float %3109, %3114
  %3123 = fadd fast float %3122, %3117
  %3124 = fmul fast float %3123, 0x3F70101000000000
  %3125 = fadd fast float %3110, -5.000000e-01
  %3126 = fadd fast float %3112, -5.000000e-01
  %3127 = fmul fast float %3125, %3121
  %3128 = fmul fast float %3126, %3121
  %3129 = fadd fast float %3127, 5.000000e-01
  %3130 = fadd fast float %3128, 5.000000e-01
  %3131 = fmul fast float %3129, 2.000000e+00
  %3132 = fadd fast float %3131, -1.000000e+00
  %3133 = fmul fast float %3130, 2.000000e+00
  %3134 = fadd fast float %3133, -1.000000e+00
  %3135 = fadd fast float %3132, %3134
  %3136 = fmul fast float %3135, 5.000000e-01
  %3137 = fsub fast float %3132, %3134
  %3138 = fmul fast float %3137, 5.000000e-01
  %3139 = call float @dx.op.unary.f32(i32 6, float %3136)  ; FAbs(value)
  %3140 = fsub fast float 1.000000e+00, %3139
  %3141 = call float @dx.op.unary.f32(i32 6, float %3138)  ; FAbs(value)
  %3142 = fsub fast float %3140, %3141
  %3143 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3138, float %3142, float %3136, float %3138, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = call float @dx.op.unary.f32(i32 25, float %3143)  ; Rsqrt(value)
  %3145 = fmul fast float %3136, %3144
  %3146 = fmul fast float %3138, %3144
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 67108864
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3167, label %3151

; <label>:3151                                    ; preds = %3099
  %3152 = add i32 %33, 328
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 65535
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 65535
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = lshr i32 %3154, 16
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = fsub fast float %3124, %3162
  %3164 = fmul fast float %3163, %3156
  %3165 = fadd fast float %3164, %3160
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  br label %3167

; <label>:3167                                    ; preds = %3151, %3099
  %3168 = phi float [ %3166, %3151 ], [ %3124, %3099 ]
  %3169 = call float @dx.op.dot2.f32(i32 54, float %3145, float %3146, float %2588, float %2589)  ; Dot2(ax,ay,bx,by)
  %3170 = call float @dx.op.dot2.f32(i32 54, float %3145, float %3146, float %2590, float %2591)  ; Dot2(ax,ay,bx,by)
  br label %3171

; <label>:3171                                    ; preds = %3167, %3077
  %3172 = phi float [ %3168, %3167 ], [ 0x3FD6666660000000, %3077 ]
  %3173 = phi float [ %3169, %3167 ], [ 0.000000e+00, %3077 ]
  %3174 = phi float [ %3170, %3167 ], [ 0.000000e+00, %3077 ]
  %3175 = phi float [ %3111, %3167 ], [ 1.000000e+00, %3077 ]
  %3176 = add i32 %33, 208
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = lshr i32 %3178, 22
  %3180 = shl nuw nsw i32 %3179, 5
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 64
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3219, label %3186

; <label>:3186                                    ; preds = %3171
  %3187 = add i32 %33, 420
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = add i32 %3189, 0
  %3191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 131072
  %3195 = icmp eq i32 %3194, 0
  %3196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3191, %dx.types.Handle %57, float %2684, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.ResRet.f32 %3196, 1
  %3199 = extractvalue %dx.types.ResRet.f32 %3196, 2
  %3200 = fmul fast float %3197, %290
  %3201 = fmul fast float %3198, %293
  %3202 = fmul fast float %3199, %296
  br i1 %3195, label %3209, label %3203

; <label>:3203                                    ; preds = %3186
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = fmul fast float %3205, %3200
  %3207 = fmul fast float %3205, %3201
  %3208 = fmul fast float %3205, %3202
  br label %3209

; <label>:3209                                    ; preds = %3203, %3186
  %3210 = phi float [ %3206, %3203 ], [ %3200, %3186 ]
  %3211 = phi float [ %3207, %3203 ], [ %3201, %3186 ]
  %3212 = phi float [ %3208, %3203 ], [ %3202, %3186 ]
  %3213 = fmul fast float %3210, %3181
  %3214 = select i1 %158, float %3213, float %3210
  %3215 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3211, float %3212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3216 = select i1 %158, float 0.000000e+00, float %3210
  %3217 = select i1 %158, float %3215, float %3211
  %3218 = select i1 %158, float 0.000000e+00, float %3212
  br label %3219

; <label>:3219                                    ; preds = %3209, %3171
  %3220 = phi float [ %3216, %3209 ], [ 0.000000e+00, %3171 ]
  %3221 = phi float [ %3217, %3209 ], [ 0.000000e+00, %3171 ]
  %3222 = phi float [ %3218, %3209 ], [ 0.000000e+00, %3171 ]
  %3223 = add i32 %33, 144
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = lshr i32 %3225, 8
  %3229 = and i32 %3228, 255
  %3230 = uitofp i32 %3229 to float
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3092, float %3093, float %3094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = fmul fast float %3230, %3231
  %3233 = fadd fast float %3232, %3227
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  br i1 %2576, label %3236, label %3244

; <label>:3236                                    ; preds = %3219
  %3237 = fsub fast float 1.000000e+00, %2872
  %3238 = fmul fast float %3237, %2565
  %3239 = fmul fast float %3237, %2566
  %3240 = fmul fast float %3237, %2567
  %3241 = fmul fast float %3237, %2568
  %3242 = fmul fast float %3237, %2569
  %3243 = fmul fast float %3237, %2570
  br label %3244

; <label>:3244                                    ; preds = %3236, %3219
  %3245 = phi float [ %3238, %3236 ], [ %2565, %3219 ]
  %3246 = phi float [ %3239, %3236 ], [ %2566, %3219 ]
  %3247 = phi float [ %3240, %3236 ], [ %2567, %3219 ]
  %3248 = phi float [ %3241, %3236 ], [ %2568, %3219 ]
  %3249 = phi float [ %3242, %3236 ], [ %2569, %3219 ]
  %3250 = phi float [ %3243, %3236 ], [ %2570, %3219 ]
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = and i32 %3252, 3
  %3254 = icmp eq i32 %3253, 3
  br i1 %3254, label %3333, label %3255

; <label>:3255                                    ; preds = %3244
  %3256 = and i32 %3252, 16
  %3257 = icmp ne i32 %3256, 0
  %3258 = select i1 %3257, float %2872, float 0.000000e+00
  %3259 = icmp eq i32 %3253, 0
  br i1 %3259, label %3260, label %3288

; <label>:3260                                    ; preds = %3255
  %3261 = and i32 %3252, 64
  %3262 = icmp ne i32 %3261, 0
  %3263 = select i1 %3262, float %2872, float 0.000000e+00
  %3264 = fsub fast float %3092, %3245
  %3265 = fsub fast float %3093, %3246
  %3266 = fsub fast float %3094, %3247
  %3267 = fmul fast float %3258, %3264
  %3268 = fmul fast float %3258, %3265
  %3269 = fmul fast float %3258, %3266
  %3270 = fadd fast float %3267, %3245
  %3271 = fadd fast float %3268, %3246
  %3272 = fadd fast float %3269, %3247
  %3273 = fsub fast float %3078, %2571
  %3274 = fmul fast float %3258, %3273
  %3275 = fadd fast float %3274, %2571
  %3276 = fsub fast float %3220, %3248
  %3277 = fsub fast float %3221, %3249
  %3278 = fsub fast float %3222, %3250
  %3279 = fmul fast float %3263, %3276
  %3280 = fmul fast float %3263, %3277
  %3281 = fmul fast float %3263, %3278
  %3282 = fadd fast float %3279, %3248
  %3283 = fadd fast float %3280, %3249
  %3284 = fadd fast float %3281, %3250
  %3285 = fsub fast float %3235, %2574
  %3286 = fmul fast float %3258, %3285
  %3287 = fadd fast float %3286, %2574
  br label %3333

; <label>:3288                                    ; preds = %3255
  %3289 = icmp eq i32 %3253, 1
  br i1 %3289, label %3290, label %3303

; <label>:3290                                    ; preds = %3288
  %3291 = fadd fast float %3092, -1.000000e+00
  %3292 = fadd fast float %3093, -1.000000e+00
  %3293 = fadd fast float %3094, -1.000000e+00
  %3294 = fmul fast float %3258, %3291
  %3295 = fmul fast float %3258, %3292
  %3296 = fmul fast float %3258, %3293
  %3297 = fadd fast float %3294, 1.000000e+00
  %3298 = fadd fast float %3295, 1.000000e+00
  %3299 = fadd fast float %3296, 1.000000e+00
  %3300 = fmul fast float %3297, %3245
  %3301 = fmul fast float %3298, %3246
  %3302 = fmul fast float %3299, %3247
  br label %3333

; <label>:3303                                    ; preds = %3288
  %3304 = icmp eq i32 %3253, 2
  br i1 %3304, label %3305, label %3333

; <label>:3305                                    ; preds = %3303
  %3306 = call float @dx.op.unary.f32(i32 24, float %3092)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %3093)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %3094)  ; Sqrt(value)
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fmul fast float %3309, %3258
  %3313 = fmul fast float %3310, %3258
  %3314 = fmul fast float %3311, %3258
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fmul fast float %3315, 2.000000e+00
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = fmul fast float %3319, %3245
  %3321 = fadd fast float %3320, %3318
  %3322 = fmul fast float %3321, %3245
  %3323 = fmul fast float %3316, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3246
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3246
  %3328 = fmul fast float %3317, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3247
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3247
  br label %3333

; <label>:3333                                    ; preds = %3305, %3303, %3290, %3260, %3244
  %3334 = phi float [ %3245, %3244 ], [ %3322, %3305 ], [ %3245, %3303 ], [ %3300, %3290 ], [ %3270, %3260 ]
  %3335 = phi float [ %3246, %3244 ], [ %3327, %3305 ], [ %3246, %3303 ], [ %3301, %3290 ], [ %3271, %3260 ]
  %3336 = phi float [ %3247, %3244 ], [ %3332, %3305 ], [ %3247, %3303 ], [ %3302, %3290 ], [ %3272, %3260 ]
  %3337 = phi float [ %3248, %3244 ], [ %3248, %3305 ], [ %3248, %3303 ], [ %3248, %3290 ], [ %3282, %3260 ]
  %3338 = phi float [ %3249, %3244 ], [ %3249, %3305 ], [ %3249, %3303 ], [ %3249, %3290 ], [ %3283, %3260 ]
  %3339 = phi float [ %3250, %3244 ], [ %3250, %3305 ], [ %3250, %3303 ], [ %3250, %3290 ], [ %3284, %3260 ]
  %3340 = phi float [ %2571, %3244 ], [ %2571, %3305 ], [ %2571, %3303 ], [ %2571, %3290 ], [ %3275, %3260 ]
  %3341 = phi float [ %2574, %3244 ], [ %2574, %3305 ], [ %2574, %3303 ], [ %2574, %3290 ], [ %3287, %3260 ]
  %3342 = and i32 %3252, 12
  %3343 = icmp eq i32 %3342, 12
  br i1 %3343, label %3416, label %3344

; <label>:3344                                    ; preds = %3333
  %3345 = and i32 %3252, 2097184
  %3346 = icmp eq i32 %3345, 2097184
  %3347 = select i1 %3346, float %2872, float 0.000000e+00
  %3348 = and i32 %3252, 4194336
  %3349 = icmp eq i32 %3348, 4194336
  %3350 = select i1 %3349, float %2872, float 0.000000e+00
  %3351 = and i32 %3252, 8388640
  %3352 = icmp eq i32 %3351, 8388640
  %3353 = select i1 %3352, float %2872, float 0.000000e+00
  %3354 = icmp eq i32 %3342, 0
  br i1 %3354, label %3355, label %3368

; <label>:3355                                    ; preds = %3344
  %3356 = fsub fast float %3173, %2563
  %3357 = fsub fast float %3174, %2564
  %3358 = fmul fast float %3347, %3356
  %3359 = fmul fast float %3347, %3357
  %3360 = fadd fast float %3358, %2563
  %3361 = fadd fast float %3359, %2564
  %3362 = fsub fast float %3175, %2573
  %3363 = fmul fast float %3350, %3362
  %3364 = fadd fast float %3363, %2573
  %3365 = fsub fast float %3172, %2572
  %3366 = fmul fast float %3353, %3365
  %3367 = fadd fast float %3366, %2572
  br label %3416

; <label>:3368                                    ; preds = %3344
  %3369 = icmp eq i32 %3342, 4
  br i1 %3369, label %3370, label %3402

; <label>:3370                                    ; preds = %3368
  %3371 = fmul fast float %3347, %3173
  %3372 = fmul fast float %3347, %3174
  %3373 = fadd fast float %3371, %2563
  %3374 = fadd fast float %3372, %2564
  %3375 = call float @dx.op.binary.f32(i32 36, float %2573, float %3175)  ; FMin(a,b)
  %3376 = fsub fast float %3375, %2573
  %3377 = fmul fast float %3376, %3350
  %3378 = fadd fast float %3377, %2573
  %3379 = fadd fast float %3172, %2572
  %3380 = fmul fast float %3379, 0x3FF337FAE0000000
  %3381 = fmul fast float %2572, %2572
  %3382 = fmul fast float %3172, %3172
  %3383 = fadd fast float %3382, %3381
  %3384 = fmul fast float %3383, 0x3FE5152B00000000
  %3385 = fmul fast float %2572, 0xBFCC1F85E0000000
  %3386 = fmul fast float %3385, %3172
  %3387 = fadd fast float %3386, 0xBFE1363700000000
  %3388 = fadd fast float %3387, %3380
  %3389 = fsub fast float %3388, %3384
  %3390 = fmul fast float %3379, 0x3FBA6F0D00000000
  %3391 = fmul fast float %3383, 0x3FD0432880000000
  %3392 = fmul fast float %2572, 0xBFEF110800000000
  %3393 = fmul fast float %3392, %3172
  %3394 = fadd fast float %3393, 1.000000e+00
  %3395 = fsub fast float %3394, %3390
  %3396 = fadd fast float %3395, %3391
  %3397 = fdiv fast float %3389, %3396
  %3398 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3399 = fsub fast float %3398, %2572
  %3400 = fmul fast float %3399, %3353
  %3401 = fadd fast float %3400, %2572
  br label %3416

; <label>:3402                                    ; preds = %3368
  %3403 = icmp eq i32 %3342, 8
  br i1 %3403, label %3404, label %3416

; <label>:3404                                    ; preds = %3402
  %3405 = fmul fast float %3347, %3173
  %3406 = fmul fast float %3347, %3174
  %3407 = fadd fast float %3405, %2563
  %3408 = fadd fast float %3406, %2564
  %3409 = call float @dx.op.binary.f32(i32 36, float %2573, float %3175)  ; FMin(a,b)
  %3410 = fsub fast float %3409, %2573
  %3411 = fmul fast float %3410, %3350
  %3412 = fadd fast float %3411, %2573
  %3413 = fsub fast float %3172, %2572
  %3414 = fmul fast float %3353, %3413
  %3415 = fadd fast float %3414, %2572
  br label %3416

; <label>:3416                                    ; preds = %3404, %3402, %3370, %3355, %3333, %2871, %2575, %2562
  %3417 = phi float [ %2563, %3333 ], [ %2563, %2871 ], [ %2563, %2562 ], [ %2563, %2575 ], [ %3360, %3355 ], [ %3373, %3370 ], [ %2563, %3402 ], [ %3407, %3404 ]
  %3418 = phi float [ %2564, %3333 ], [ %2564, %2871 ], [ %2564, %2562 ], [ %2564, %2575 ], [ %3361, %3355 ], [ %3374, %3370 ], [ %2564, %3402 ], [ %3408, %3404 ]
  %3419 = phi float [ %3334, %3333 ], [ %2565, %2871 ], [ %2565, %2562 ], [ %2565, %2575 ], [ %3334, %3355 ], [ %3334, %3370 ], [ %3334, %3402 ], [ %3334, %3404 ]
  %3420 = phi float [ %3335, %3333 ], [ %2566, %2871 ], [ %2566, %2562 ], [ %2566, %2575 ], [ %3335, %3355 ], [ %3335, %3370 ], [ %3335, %3402 ], [ %3335, %3404 ]
  %3421 = phi float [ %3336, %3333 ], [ %2567, %2871 ], [ %2567, %2562 ], [ %2567, %2575 ], [ %3336, %3355 ], [ %3336, %3370 ], [ %3336, %3402 ], [ %3336, %3404 ]
  %3422 = phi float [ %3337, %3333 ], [ %2568, %2871 ], [ %2568, %2562 ], [ %2568, %2575 ], [ %3337, %3355 ], [ %3337, %3370 ], [ %3337, %3402 ], [ %3337, %3404 ]
  %3423 = phi float [ %3338, %3333 ], [ %2569, %2871 ], [ %2569, %2562 ], [ %2569, %2575 ], [ %3338, %3355 ], [ %3338, %3370 ], [ %3338, %3402 ], [ %3338, %3404 ]
  %3424 = phi float [ %3339, %3333 ], [ %2570, %2871 ], [ %2570, %2562 ], [ %2570, %2575 ], [ %3339, %3355 ], [ %3339, %3370 ], [ %3339, %3402 ], [ %3339, %3404 ]
  %3425 = phi float [ %3340, %3333 ], [ %2571, %2871 ], [ %2571, %2562 ], [ %2571, %2575 ], [ %3340, %3355 ], [ %3340, %3370 ], [ %3340, %3402 ], [ %3340, %3404 ]
  %3426 = phi float [ %2572, %3333 ], [ %2572, %2871 ], [ %2572, %2562 ], [ %2572, %2575 ], [ %3367, %3355 ], [ %3401, %3370 ], [ %2572, %3402 ], [ %3415, %3404 ]
  %3427 = phi float [ %2573, %3333 ], [ %2573, %2871 ], [ %2573, %2562 ], [ %2573, %2575 ], [ %3364, %3355 ], [ %3378, %3370 ], [ %2573, %3402 ], [ %3412, %3404 ]
  %3428 = phi float [ %3341, %3333 ], [ %2574, %2871 ], [ %2574, %2562 ], [ %2574, %2575 ], [ %3341, %3355 ], [ %3341, %3370 ], [ %3341, %3402 ], [ %3341, %3404 ]
  %3429 = add i32 %33, 360
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = bitcast i32 %3431 to float
  %3433 = fcmp fast oge float %3432, 0.000000e+00
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = select i1 %3433, float %3432, float %3435
  %3437 = call float @dx.op.dot2.f32(i32 54, float %3417, float %3418, float %3417, float %3418)  ; Dot2(ax,ay,bx,by)
  %3438 = fmul fast float %3437, 0x3FE3333340000000
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.dot3.f32(i32 55, float %3417, float %3418, float %3439, float %3417, float %3418, float %3439)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = call float @dx.op.unary.f32(i32 25, float %3440)  ; Rsqrt(value)
  %3442 = fmul fast float %3441, %3417
  %3443 = fmul fast float %3441, %3418
  %3444 = fmul fast float %3439, %3441
  %3445 = fmul fast float %3444, %68
  %3446 = fmul fast float %3444, %69
  %3447 = fmul fast float %3444, %70
  %3448 = fmul fast float %3442, %42
  %3449 = fmul fast float %3442, %43
  %3450 = fmul fast float %3442, %44
  %3451 = fadd fast float %3445, %3448
  %3452 = fadd fast float %3446, %3449
  %3453 = fadd fast float %3447, %3450
  %3454 = fmul fast float %80, %3443
  %3455 = fmul fast float %81, %3443
  %3456 = fmul fast float %82, %3443
  %3457 = fadd fast float %3451, %3454
  %3458 = fadd fast float %3452, %3455
  %3459 = fadd fast float %3453, %3456
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3457, float %3458, float %3459, float %3457, float %3458, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = call float @dx.op.unary.f32(i32 25, float %3460)  ; Rsqrt(value)
  %3462 = fmul fast float %3457, %3461
  %3463 = fmul fast float %3458, %3461
  %3464 = fmul fast float %3459, %3461
  %3465 = and i32 %35, 1
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3467, label %3975

; <label>:3467                                    ; preds = %3416
  %3468 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %3469 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %3470 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %3471 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %3472 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %3473 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %3474 = fadd fast float %3468, %116
  %3475 = fadd fast float %3469, %117
  %3476 = fadd fast float %3470, %118
  %3477 = fadd fast float %3471, %116
  %3478 = fadd fast float %3472, %117
  %3479 = fadd fast float %3473, %118
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3487 = fmul fast float %3481, %61
  %3488 = fmul fast float %3487, %3485
  %3489 = fmul fast float %3482, %62
  %3490 = fmul fast float %3489, %3486
  %3491 = fptoui float %3488 to i32
  %3492 = fptoui float %3490 to i32
  %3493 = fadd fast float %3481, -1.000000e+00
  %3494 = fadd fast float %3482, -1.000000e+00
  %3495 = fptoui float %3493 to i32
  %3496 = fptoui float %3494 to i32
  %3497 = call i32 @dx.op.binary.i32(i32 40, i32 %3491, i32 %3495)  ; UMin(a,b)
  %3498 = call i32 @dx.op.binary.i32(i32 40, i32 %3492, i32 %3496)  ; UMin(a,b)
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3501 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3502 = fmul fast float %3500, %56
  %3503 = fsub fast float %3502, %3501
  %3504 = fadd fast float %3483, -1.000000e+00
  %3505 = call float @dx.op.binary.f32(i32 36, float %3503, float %3504)  ; FMin(a,b)
  %3506 = fptoui float %3505 to i32
  %3507 = fptoui float %3481 to i32
  %3508 = fptoui float %3482 to i32
  %3509 = mul i32 %3506, %3508
  %3510 = add i32 %3509, %3498
  %3511 = mul i32 %3510, %3507
  %3512 = add i32 %3511, %3497
  %3513 = shl i32 %3512, 2
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 1023
  %3517 = lshr i32 %3515, 10
  %3518 = icmp eq i32 %3516, 0
  br i1 %3518, label %3944, label %3519

; <label>:3519                                    ; preds = %3467
  %3520 = and i32 %3515, 1023
  br label %3521

; <label>:3521                                    ; preds = %3647, %3519
  %3522 = phi i32 [ %3597, %3647 ], [ 0, %3519 ]
  %3523 = phi float [ %3648, %3647 ], [ 0.000000e+00, %3519 ]
  %3524 = phi float [ %3649, %3647 ], [ %3436, %3519 ]
  %3525 = phi float [ %3650, %3647 ], [ %3428, %3519 ]
  %3526 = phi float [ %3651, %3647 ], [ 0.000000e+00, %3519 ]
  %3527 = phi float [ %3652, %3647 ], [ 0.000000e+00, %3519 ]
  %3528 = phi float [ %3653, %3647 ], [ %3422, %3519 ]
  %3529 = phi float [ %3654, %3647 ], [ %3423, %3519 ]
  %3530 = phi float [ %3655, %3647 ], [ %3424, %3519 ]
  %3531 = phi float [ %3656, %3647 ], [ %3462, %3519 ]
  %3532 = phi float [ %3657, %3647 ], [ %3463, %3519 ]
  %3533 = phi float [ %3658, %3647 ], [ %3464, %3519 ]
  %3534 = phi float [ %3659, %3647 ], [ %3427, %3519 ]
  %3535 = phi float [ %3660, %3647 ], [ %3426, %3519 ]
  %3536 = phi float [ %3661, %3647 ], [ 0.000000e+00, %3519 ]
  %3537 = phi float [ %3662, %3647 ], [ %3425, %3519 ]
  %3538 = phi float [ %3663, %3647 ], [ %3419, %3519 ]
  %3539 = phi float [ %3664, %3647 ], [ %3420, %3519 ]
  %3540 = phi float [ %3665, %3647 ], [ %3421, %3519 ]
  %3541 = add nuw nsw i32 %3522, %3517
  %3542 = shl i32 %3541, 2
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = shl i32 %3544, 8
  %3546 = or i32 %3545, 48
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = extractvalue %dx.types.ResRet.f32 %3547, 3
  %3552 = or i32 %3545, 64
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.i32 %3553, 1
  %3556 = or i32 %3545, 80
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 2
  %3559 = extractvalue %dx.types.ResRet.f32 %3557, 3
  %3560 = or i32 %3545, 96
  %3561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  %3563 = extractvalue %dx.types.ResRet.f32 %3561, 1
  %3564 = extractvalue %dx.types.ResRet.f32 %3561, 2
  %3565 = extractvalue %dx.types.ResRet.f32 %3561, 3
  %3566 = or i32 %3545, 112
  %3567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 2
  %3569 = or i32 %3545, 128
  %3570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.ResRet.f32 %3570, 3
  %3575 = or i32 %3545, 144
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3581 = or i32 %3545, 160
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = or i32 %3545, 192
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = or i32 %3545, 208
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = or i32 %3545, 248
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = add nuw nsw i32 %3522, 1
  %3598 = bitcast float %3551 to i32
  %3599 = and i32 %3598, 512
  %3600 = icmp eq i32 %3599, 0
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.ResRet.f32 %3601, 3
  %3606 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3607 = or i32 %3545, 16
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3614 = or i32 %3545, 32
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = call float @dx.op.dot4.f32(i32 56, float %3616, float %3617, float %3618, float %3619, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3621 = call float @dx.op.unary.f32(i32 27, float %3606)  ; Round_ni(value)
  %3622 = call float @dx.op.unary.f32(i32 6, float %3621)  ; FAbs(value)
  %3623 = call float @dx.op.unary.f32(i32 27, float %3613)  ; Round_ni(value)
  %3624 = call float @dx.op.unary.f32(i32 6, float %3623)  ; FAbs(value)
  %3625 = call float @dx.op.unary.f32(i32 6, float %3620)  ; FAbs(value)
  %3626 = call float @dx.op.unary.f32(i32 27, float %3625)  ; Round_ni(value)
  %3627 = fadd fast float %3624, %3622
  %3628 = fadd fast float %3627, %3626
  %3629 = fcmp fast oeq float %3628, 0.000000e+00
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %3474, float %3475, float %3476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %3474, float %3475, float %3476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3632 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %3477, float %3478, float %3479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %3477, float %3478, float %3479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = fsub fast float %3630, %3606
  %3635 = fsub fast float %3632, %3606
  %3636 = fsub fast float %3631, %3613
  %3637 = fsub fast float %3633, %3613
  %3638 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3641 = fadd fast float %3640, %3638
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3644 = fcmp fast ogt float %3642, %3643
  %3645 = and i1 %3629, %3644
  %3646 = and i1 %3600, %3645
  br i1 %3646, label %3667, label %3647

; <label>:3647                                    ; preds = %3930, %3748, %3667, %3521
  %3648 = phi float [ %3523, %3667 ], [ %3751, %3748 ], [ %3751, %3930 ], [ %3523, %3521 ]
  %3649 = phi float [ %3524, %3667 ], [ %3524, %3748 ], [ %3905, %3930 ], [ %3524, %3521 ]
  %3650 = phi float [ %3525, %3667 ], [ %3525, %3748 ], [ %3903, %3930 ], [ %3525, %3521 ]
  %3651 = phi float [ %3526, %3667 ], [ %3526, %3748 ], [ %3875, %3930 ], [ %3526, %3521 ]
  %3652 = phi float [ %3527, %3667 ], [ %3527, %3748 ], [ %3873, %3930 ], [ %3527, %3521 ]
  %3653 = phi float [ %3528, %3667 ], [ %3528, %3748 ], [ %3940, %3930 ], [ %3528, %3521 ]
  %3654 = phi float [ %3529, %3667 ], [ %3529, %3748 ], [ %3941, %3930 ], [ %3529, %3521 ]
  %3655 = phi float [ %3530, %3667 ], [ %3530, %3748 ], [ %3942, %3930 ], [ %3530, %3521 ]
  %3656 = phi float [ %3531, %3667 ], [ %3531, %3748 ], [ %3854, %3930 ], [ %3531, %3521 ]
  %3657 = phi float [ %3532, %3667 ], [ %3532, %3748 ], [ %3855, %3930 ], [ %3532, %3521 ]
  %3658 = phi float [ %3533, %3667 ], [ %3533, %3748 ], [ %3856, %3930 ], [ %3533, %3521 ]
  %3659 = phi float [ %3534, %3667 ], [ %3534, %3748 ], [ %3883, %3930 ], [ %3534, %3521 ]
  %3660 = phi float [ %3535, %3667 ], [ %3535, %3748 ], [ %3880, %3930 ], [ %3535, %3521 ]
  %3661 = phi float [ %3536, %3667 ], [ %3536, %3748 ], [ %3877, %3930 ], [ %3536, %3521 ]
  %3662 = phi float [ %3537, %3667 ], [ %3537, %3748 ], [ %3871, %3930 ], [ %3537, %3521 ]
  %3663 = phi float [ %3538, %3667 ], [ %3538, %3748 ], [ %3866, %3930 ], [ %3538, %3521 ]
  %3664 = phi float [ %3539, %3667 ], [ %3539, %3748 ], [ %3867, %3930 ], [ %3539, %3521 ]
  %3665 = phi float [ %3540, %3667 ], [ %3540, %3748 ], [ %3868, %3930 ], [ %3540, %3521 ]
  %3666 = icmp eq i32 %3597, %3520
  br i1 %3666, label %3943, label %3521

; <label>:3667                                    ; preds = %3521
  %3668 = extractvalue %dx.types.ResRet.f32 %3567, 3
  %3669 = extractvalue %dx.types.ResRet.f32 %3567, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3557, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3673 = extractvalue %dx.types.ResRet.i32 %3553, 3
  %3674 = extractvalue %dx.types.ResRet.i32 %3553, 2
  %3675 = add i32 %3673, 0
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3676, %dx.types.Handle %3677, float %3606, float %3613, float undef, float undef, i32 0, i32 0, i32 undef, float %3634, float %3636, float undef, float %3635, float %3637, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = fmul fast float %3679, %3672
  %3681 = fadd fast float %3680, %3671
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fmul fast float %3606, %3562
  %3684 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3613, float %3683)  ; FMad(a,b,c)
  %3685 = fadd fast float %3684, %3670
  %3686 = fmul fast float %3606, %3564
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3613, float %3686)  ; FMad(a,b,c)
  %3688 = fadd fast float %3687, %3669
  %3689 = fmul fast float %3634, %3562
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3636, float %3689)  ; FMad(a,b,c)
  %3691 = fmul fast float %3634, %3564
  %3692 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3636, float %3691)  ; FMad(a,b,c)
  %3693 = fmul fast float %3635, %3562
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3637, float %3693)  ; FMad(a,b,c)
  %3695 = fmul fast float %3635, %3564
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3637, float %3695)  ; FMad(a,b,c)
  %3697 = add i32 %3674, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3698, %dx.types.Handle %3677, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = and i32 %3598, 1024
  %3702 = icmp ne i32 %3701, 0
  %3703 = fcmp fast ogt float %3700, 0x3FE0101020000000
  %3704 = uitofp i1 %3703 to float
  %3705 = select i1 %3702, float %3704, float %3700
  %3706 = and i32 %3598, 8192
  %3707 = icmp ne i32 %3706, 0
  %3708 = select i1 %3707, float %3668, float 1.000000e+00
  %3709 = fmul fast float %3606, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = call float @dx.op.unary.f32(i32 6, float %3710)  ; FAbs(value)
  %3712 = fmul fast float %3711, %3595
  %3713 = fsub fast float %3712, %3595
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3613, 2.000000e+00
  %3716 = fadd fast float %3715, -1.000000e+00
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = fmul fast float %3717, %3596
  %3719 = fsub fast float %3718, %3596
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fmul fast float %3625, %3558
  %3722 = fsub fast float %3721, %3558
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3682, %3708
  %3725 = fmul fast float %3724, %3679
  %3726 = fmul fast float %3725, %3714
  %3727 = fmul fast float %3726, %3705
  %3728 = fmul fast float %3727, %3720
  %3729 = fmul fast float %3728, %3723
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3732 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3733 = fsub fast float %3642, %3732
  %3734 = fmul fast float %3733, %3731
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3729, %3559
  %3737 = fadd fast float %3729, %3559
  %3738 = fmul fast float %3737, %3568
  %3739 = fsub fast float %3738, %3568
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = and i32 %3598, 128
  %3742 = icmp ne i32 %3741, 0
  %3743 = select i1 %3742, float %3740, float %3736
  %3744 = fmul fast float %3743, %3735
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = fcmp fast ugt float %3744, %3746
  br i1 %3747, label %3748, label %3647

; <label>:3748                                    ; preds = %3667
  %3749 = select i1 %3707, float %3744, float 0.000000e+00
  %3750 = fadd fast float %3749, %3523
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  br i1 %3707, label %3647, label %3752

; <label>:3752                                    ; preds = %3748
  %3753 = and i32 %3598, 4
  %3754 = and i32 %3598, 8
  %3755 = add i32 %3554, 0
  %3756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3756, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = bitcast float %3580 to i32
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = lshr i32 %3763, 8
  %3767 = and i32 %3766, 255
  %3768 = uitofp i32 %3767 to float
  %3769 = fmul fast float %3762, %3765
  %3770 = fadd fast float %3769, %3768
  %3771 = fmul fast float %3770, 0x3F70101000000000
  %3772 = add i32 %3555, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = bitcast float %3574 to i32
  %3780 = and i32 %3779, 255
  %3781 = uitofp i32 %3780 to float
  %3782 = lshr i32 %3779, 8
  %3783 = and i32 %3782, 255
  %3784 = uitofp i32 %3783 to float
  %3785 = lshr i32 %3779, 16
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = fmul fast float %3787, 0x3F70101000000000
  %3789 = fmul fast float %3775, %3781
  %3790 = fadd fast float %3789, %3784
  %3791 = fmul fast float %3790, 0x3F70101000000000
  %3792 = fadd fast float %3776, -5.000000e-01
  %3793 = fadd fast float %3778, -5.000000e-01
  %3794 = fmul fast float %3792, %3788
  %3795 = fmul fast float %3793, %3788
  %3796 = fadd fast float %3794, 5.000000e-01
  %3797 = fadd fast float %3795, 5.000000e-01
  %3798 = fmul fast float %3759, %3583
  %3799 = fmul fast float %3760, %3584
  %3800 = fmul fast float %3761, %3585
  %3801 = fmul fast float %3796, 2.000000e+00
  %3802 = fadd fast float %3801, -1.000000e+00
  %3803 = fmul fast float %3797, 2.000000e+00
  %3804 = fadd fast float %3803, -1.000000e+00
  %3805 = fadd fast float %3802, %3804
  %3806 = fmul fast float %3805, 5.000000e-01
  %3807 = fsub fast float %3802, %3804
  %3808 = fmul fast float %3807, 5.000000e-01
  %3809 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3812 = fsub fast float %3810, %3811
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3808, float %3812, float %3806, float %3808, float %3812)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call float @dx.op.unary.f32(i32 25, float %3813)  ; Rsqrt(value)
  %3815 = fmul fast float %3806, %3814
  %3816 = fmul fast float %3808, %3814
  %3817 = fmul fast float %3814, %3812
  %3818 = fmul fast float %3817, %3548
  %3819 = fmul fast float %3817, %3549
  %3820 = fmul fast float %3817, %3550
  %3821 = fmul fast float %3815, %3571
  %3822 = fmul fast float %3815, %3572
  %3823 = fmul fast float %3815, %3573
  %3824 = fadd fast float %3821, %3818
  %3825 = fadd fast float %3822, %3819
  %3826 = fadd fast float %3823, %3820
  %3827 = fmul fast float %3816, %3577
  %3828 = fmul fast float %3816, %3578
  %3829 = fmul fast float %3816, %3579
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = fadd fast float %3826, %3829
  %3833 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3832, float %3830, float %3831, float %3832)  ; Dot3(ax,ay,az,bx,by,bz)
  %3834 = call float @dx.op.unary.f32(i32 25, float %3833)  ; Rsqrt(value)
  %3835 = fmul fast float %3830, %3834
  %3836 = fmul fast float %3831, %3834
  %3837 = fmul fast float %3832, %3834
  %3838 = icmp ne i32 %3754, 0
  %3839 = select i1 %3838, float 1.000000e+00, float 0.000000e+00
  %3840 = fmul fast float %3744, %3839
  %3841 = and i32 %3598, 1
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3843, label %3847

; <label>:3843                                    ; preds = %3752
  %3844 = fsub fast float %3835, %3531
  %3845 = fsub fast float %3836, %3532
  %3846 = fsub fast float %3837, %3533
  br label %3847

; <label>:3847                                    ; preds = %3843, %3752
  %3848 = phi float [ %3844, %3843 ], [ %3835, %3752 ]
  %3849 = phi float [ %3845, %3843 ], [ %3836, %3752 ]
  %3850 = phi float [ %3846, %3843 ], [ %3837, %3752 ]
  %3851 = fmul float %3850, %3840
  %3852 = fmul float %3849, %3840
  %3853 = fmul float %3848, %3840
  %3854 = fadd fast float %3853, %3531
  %3855 = fadd fast float %3852, %3532
  %3856 = fadd fast float %3851, %3533
  %3857 = icmp ne i32 %3753, 0
  %3858 = select i1 %3857, float 1.000000e+00, float 0.000000e+00
  %3859 = fmul fast float %3744, %3858
  %3860 = fsub fast float %3798, %3538
  %3861 = fsub fast float %3799, %3539
  %3862 = fsub fast float %3800, %3540
  %3863 = fmul fast float %3860, %3859
  %3864 = fmul fast float %3861, %3859
  %3865 = fmul fast float %3862, %3859
  %3866 = fadd fast float %3863, %3538
  %3867 = fadd fast float %3864, %3539
  %3868 = fadd fast float %3865, %3540
  %3869 = fsub fast float %3771, %3537
  %3870 = fmul fast float %3869, %3859
  %3871 = fadd fast float %3870, %3537
  %3872 = fmul fast float %3859, %3527
  %3873 = fsub fast float %3527, %3872
  %3874 = fmul fast float %3859, %3526
  %3875 = fsub fast float %3526, %3874
  %3876 = fadd fast float %3744, %3536
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = fsub fast float %3791, %3535
  %3879 = fmul fast float %3878, %3840
  %3880 = fadd fast float %3879, %3535
  %3881 = fsub fast float %3777, %3534
  %3882 = fmul fast float %3881, %3840
  %3883 = fadd fast float %3882, %3534
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = fmul fast float %3887, %3884
  %3889 = fadd fast float %3888, %3886
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = bitcast float %3586 to i32
  %3892 = and i32 %3891, 65535
  %3893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3892)  ; LegacyF16ToF32(value)
  %3894 = lshr i32 %3891, 16
  %3895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3894)  ; LegacyF16ToF32(value)
  %3896 = fcmp fast oge float %3893, 0.000000e+00
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = select i1 %3896, float %3893, float %3898
  %3900 = fadd fast float %3899, %3895
  %3901 = fsub fast float %3890, %3525
  %3902 = fmul fast float %3901, %3744
  %3903 = fadd fast float %3902, %3525
  %3904 = fmul fast float %3900, %3744
  %3905 = call float @dx.op.binary.f32(i32 35, float %3524, float %3904)  ; FMax(a,b)
  %3906 = and i32 %3598, 16
  %3907 = icmp eq i32 %3906, 0
  br i1 %3907, label %3930, label %3908

; <label>:3908                                    ; preds = %3847
  %3909 = bitcast float %3592 to i32
  %3910 = add i32 %3589, 0
  %3911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3912 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3911, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = and i32 %3909, 65535
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = fmul fast float %3913, %3583
  %3919 = fmul fast float %3914, %3584
  %3920 = fmul fast float %3915, %3585
  %3921 = and i32 %3598, 16384
  %3922 = icmp ne i32 %3921, 0
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = select i1 %3922, float %3924, float 1.000000e+00
  %3926 = fmul fast float %3925, %3917
  %3927 = fmul fast float %3918, %3926
  %3928 = fmul fast float %3919, %3926
  %3929 = fmul fast float %3920, %3926
  br label %3930

; <label>:3930                                    ; preds = %3908, %3847
  %3931 = phi float [ %3927, %3908 ], [ 0.000000e+00, %3847 ]
  %3932 = phi float [ %3928, %3908 ], [ 0.000000e+00, %3847 ]
  %3933 = phi float [ %3929, %3908 ], [ 0.000000e+00, %3847 ]
  %3934 = fsub fast float %3931, %3528
  %3935 = fsub fast float %3932, %3529
  %3936 = fsub fast float %3933, %3530
  %3937 = fmul fast float %3934, %3744
  %3938 = fmul fast float %3935, %3744
  %3939 = fmul fast float %3936, %3744
  %3940 = fadd fast float %3937, %3528
  %3941 = fadd fast float %3938, %3529
  %3942 = fadd fast float %3939, %3530
  br label %3647

; <label>:3943                                    ; preds = %3647
  br label %3944

; <label>:3944                                    ; preds = %3943, %3467
  %3945 = phi float [ 0.000000e+00, %3467 ], [ %3648, %3943 ]
  %3946 = phi float [ %3436, %3467 ], [ %3649, %3943 ]
  %3947 = phi float [ %3428, %3467 ], [ %3650, %3943 ]
  %3948 = phi float [ 0.000000e+00, %3467 ], [ %3651, %3943 ]
  %3949 = phi float [ 0.000000e+00, %3467 ], [ %3652, %3943 ]
  %3950 = phi float [ %3422, %3467 ], [ %3653, %3943 ]
  %3951 = phi float [ %3423, %3467 ], [ %3654, %3943 ]
  %3952 = phi float [ %3424, %3467 ], [ %3655, %3943 ]
  %3953 = phi float [ %3462, %3467 ], [ %3656, %3943 ]
  %3954 = phi float [ %3463, %3467 ], [ %3657, %3943 ]
  %3955 = phi float [ %3464, %3467 ], [ %3658, %3943 ]
  %3956 = phi float [ %3427, %3467 ], [ %3659, %3943 ]
  %3957 = phi float [ %3426, %3467 ], [ %3660, %3943 ]
  %3958 = phi float [ 0.000000e+00, %3467 ], [ %3661, %3943 ]
  %3959 = phi float [ %3425, %3467 ], [ %3662, %3943 ]
  %3960 = phi float [ %3419, %3467 ], [ %3663, %3943 ]
  %3961 = phi float [ %3420, %3467 ], [ %3664, %3943 ]
  %3962 = phi float [ %3421, %3467 ], [ %3665, %3943 ]
  %3963 = call float @dx.op.dot3.f32(i32 55, float %3953, float %3954, float %3955, float %3953, float %3954, float %3955)  ; Dot3(ax,ay,az,bx,by,bz)
  %3964 = call float @dx.op.unary.f32(i32 25, float %3963)  ; Rsqrt(value)
  %3965 = fmul fast float %3964, %3953
  %3966 = fmul fast float %3964, %3954
  %3967 = fmul fast float %3964, %3955
  %3968 = fadd fast float %3958, %863
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3966, float %3967, float %3965, float %3966, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = call float @dx.op.unary.f32(i32 25, float %3970)  ; Rsqrt(value)
  %3972 = fmul fast float %3971, %3965
  %3973 = fmul fast float %3971, %3966
  %3974 = fmul fast float %3971, %3967
  br label %3975

; <label>:3975                                    ; preds = %3944, %3416
  %3976 = phi float [ %3972, %3944 ], [ %3462, %3416 ]
  %3977 = phi float [ %3973, %3944 ], [ %3463, %3416 ]
  %3978 = phi float [ %3974, %3944 ], [ %3464, %3416 ]
  %3979 = phi float [ %3960, %3944 ], [ %3419, %3416 ]
  %3980 = phi float [ %3961, %3944 ], [ %3420, %3416 ]
  %3981 = phi float [ %3962, %3944 ], [ %3421, %3416 ]
  %3982 = phi float [ %3950, %3944 ], [ %3422, %3416 ]
  %3983 = phi float [ %3951, %3944 ], [ %3423, %3416 ]
  %3984 = phi float [ %3952, %3944 ], [ %3424, %3416 ]
  %3985 = phi float [ %3959, %3944 ], [ %3425, %3416 ]
  %3986 = phi float [ %3969, %3944 ], [ %863, %3416 ]
  %3987 = phi float [ %3957, %3944 ], [ %3426, %3416 ]
  %3988 = phi float [ %3956, %3944 ], [ %3427, %3416 ]
  %3989 = phi float [ %3949, %3944 ], [ 0.000000e+00, %3416 ]
  %3990 = phi float [ %3948, %3944 ], [ 0.000000e+00, %3416 ]
  %3991 = phi float [ %3945, %3944 ], [ 0.000000e+00, %3416 ]
  %3992 = phi float [ %3946, %3944 ], [ %3436, %3416 ]
  %3993 = phi float [ %3947, %3944 ], [ %3428, %3416 ]
  %3994 = fadd fast float %3985, 0xBFB99999A0000000
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3995, 0x3FF1C71C80000000
  %3997 = call float @dx.op.binary.f32(i32 36, float %3985, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3998 = fsub fast float 1.000000e+00, %3996
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = fmul fast float %3999, %3979
  %4001 = fmul fast float %3999, %3980
  %4002 = fmul fast float %3999, %3981
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4005 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4006 = fmul fast float %3996, %3979
  %4007 = fmul fast float %3996, %3980
  %4008 = fmul fast float %3996, %3981
  %4009 = fadd fast float %4006, %3997
  %4010 = fadd fast float %4007, %3997
  %4011 = fadd fast float %4008, %3997
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4015 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %4016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.i32 %4016, 3
  %4018 = and i32 %4017, 8
  %4019 = icmp ne i32 %4018, 0
  %4020 = call float @dx.op.binary.f32(i32 35, float %4003, float %3979)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 35, float %4004, float %3979)  ; FMax(a,b)
  %4022 = call float @dx.op.binary.f32(i32 35, float %4005, float %3979)  ; FMax(a,b)
  %4023 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4024 = select i1 %158, float %3979, float %4003
  %4025 = select i1 %158, float %4023, float %4004
  %4026 = select i1 %158, float 1.000000e+00, float %4005
  %4027 = select i1 %4019, float %4020, float %4024
  %4028 = select i1 %4019, float %4021, float %4025
  %4029 = select i1 %4019, float %4022, float %4026
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.CBufRet.f32 %4030, 2
  %4034 = fadd fast float %4031, %116
  %4035 = fadd fast float %4032, %117
  %4036 = fadd fast float %4033, %118
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = fsub fast float %4034, %4038
  %4041 = fsub fast float %4035, %4039
  %4042 = fmul fast float %4040, %4040
  %4043 = fmul fast float %4041, %4041
  %4044 = fadd fast float %4042, %4043
  %4045 = call float @dx.op.unary.f32(i32 24, float %4044)  ; Sqrt(value)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4047 = fcmp fast olt float %4045, %4046
  br i1 %4047, label %4048, label %4115

; <label>:4048                                    ; preds = %3975
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4056 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4060 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4061 = fadd fast float %4058, %4034
  %4062 = fadd fast float %4059, %4035
  %4063 = fadd fast float %4060, %4036
  %4064 = fmul fast float %4061, %4050
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4052, float %4064)  ; FMad(a,b,c)
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4054, float %4065)  ; FMad(a,b,c)
  %4067 = fmul fast float %4061, %4055
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4057, float %4068)  ; FMad(a,b,c)
  %4070 = fsub fast float %4066, %4058
  %4071 = fsub fast float %4069, %4059
  %4072 = fsub fast float %4070, %4038
  %4073 = fadd fast float %4072, %4046
  %4074 = fsub fast float %4071, %4039
  %4075 = fadd fast float %4074, %4046
  %4076 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4077 = fmul fast float %4073, %4076
  %4078 = fmul fast float %4075, %4076
  %4079 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4080 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4081 = fsub fast float 1.000000e+00, %4079
  %4082 = fsub fast float 1.000000e+00, %4080
  %4083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = fcmp fast ugt float %4084, 0.000000e+00
  br i1 %4085, label %4086, label %4389

; <label>:4086                                    ; preds = %4048
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = fmul fast float %4088, %4084
  %4090 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4091 = fadd fast float %4090, %4089
  %4092 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4093 = fadd fast float %4091, %4060
  %4094 = fmul fast float %4066, %4054
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4069, float %4057, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4092, float %4095)  ; FMad(a,b,c)
  %4097 = fsub fast float %4096, %4060
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = fsub fast float %4097, %4099
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = fadd fast float %4106, %4102
  %4110 = fmul fast float %4109, 0x3F847AE140000000
  %4111 = fadd fast float %4107, %4103
  %4112 = fmul fast float %4111, 0x3F847AE140000000
  %4113 = fadd fast float %4108, %4104
  %4114 = fmul fast float %4113, 0x3F847AE140000000
  br label %4389

; <label>:4115                                    ; preds = %3975
  %4116 = and i32 %134, 1
  %4117 = icmp eq i32 %4116, 0
  br i1 %4117, label %4389, label %4118

; <label>:4118                                    ; preds = %4115
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4129 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4130 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4131 = fadd fast float %4128, %4034
  %4132 = fadd fast float %4129, %4035
  %4133 = fadd fast float %4130, %4036
  %4134 = fmul fast float %4131, %4120
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4122, float %4134)  ; FMad(a,b,c)
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4124, float %4135)  ; FMad(a,b,c)
  %4137 = fmul fast float %4131, %4125
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4126, float %4137)  ; FMad(a,b,c)
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4127, float %4138)  ; FMad(a,b,c)
  %4140 = fsub fast float %4136, %4128
  %4141 = fsub fast float %4139, %4129
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4146 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.i32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.i32 %4149, 1
  %4152 = udiv i32 %4151, %4150
  %4153 = fsub fast float %4140, %4143
  %4154 = fsub fast float %4141, %4144
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4157 = call float @dx.op.binary.f32(i32 36, float %4155, float %4145)  ; FMin(a,b)
  %4158 = call float @dx.op.binary.f32(i32 36, float %4156, float %4146)  ; FMin(a,b)
  %4159 = add i32 %4150, -1
  %4160 = add i32 %4152, -1
  %4161 = fmul fast float %4157, %4148
  %4162 = fmul fast float %4158, %4148
  %4163 = fptoui float %4161 to i32
  %4164 = fptoui float %4162 to i32
  %4165 = call i32 @dx.op.binary.i32(i32 40, i32 %4163, i32 %4159)  ; UMin(a,b)
  %4166 = call i32 @dx.op.binary.i32(i32 40, i32 %4164, i32 %4160)  ; UMin(a,b)
  %4167 = mul i32 %4166, %4150
  %4168 = add i32 %4167, %4165
  %4169 = shl i32 %4168, 2
  %4170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.i32 %4170, 0
  %4172 = icmp eq i32 %4171, -1
  br i1 %4172, label %4389, label %4173

; <label>:4173                                    ; preds = %4118
  %4174 = mul i32 %4171, 148
  %4175 = add i32 %4174, 4
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = add i32 %4174, 8
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = add i32 %4174, 36
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = add i32 %4174, 60
  %4185 = add i32 %4174, 92
  %4186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.i32 %4186, 0
  %4188 = add i32 %4174, 116
  %4189 = fsub fast float %4140, %4177
  %4190 = fsub fast float %4141, %4180
  %4191 = fmul fast float %4148, %4189
  %4192 = fmul fast float %4148, %4190
  %4193 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4194 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4195 = fsub fast float 1.000000e+00, %4194
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4198 = call float @dx.op.unary.f32(i32 83, float %4193)  ; DerivCoarseX(value)
  %4199 = call float @dx.op.unary.f32(i32 83, float %4195)  ; DerivCoarseX(value)
  %4200 = call float @dx.op.unary.f32(i32 84, float %4193)  ; DerivCoarseY(value)
  %4201 = call float @dx.op.unary.f32(i32 84, float %4195)  ; DerivCoarseY(value)
  %4202 = fmul fast float %4198, %4197
  %4203 = fmul fast float %4199, %4197
  %4204 = fmul fast float %4200, %4197
  %4205 = fmul fast float %4201, %4197
  %4206 = call float @dx.op.dot2.f32(i32 54, float %4204, float %4205, float %4204, float %4205)  ; Dot2(ax,ay,bx,by)
  %4207 = call float @dx.op.dot2.f32(i32 54, float %4202, float %4203, float %4202, float %4203)  ; Dot2(ax,ay,bx,by)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4207, float %4206)  ; FMax(a,b)
  %4209 = call float @dx.op.unary.f32(i32 23, float %4208)  ; Log(value)
  %4210 = fmul fast float %4209, 5.000000e-01
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4213 = fadd fast float %4212, %4210
  %4214 = call float @dx.op.binary.f32(i32 35, float %4213, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4217 = fadd fast float %4216, %4214
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4220 = fadd fast float %4217, %4219
  %4221 = add i32 %4187, 0
  %4222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4221, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4222, i32 0)  ; GetDimensions(handle,mipLevel)
  %4224 = extractvalue %dx.types.Dimensions %4223, 0
  %4225 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4224)  ; FirstbitLo(value)
  %4226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.i32 %4226, 1
  %4228 = sub nsw i32 %4227, %4225
  %4229 = sitofp i32 %4228 to float
  %4230 = fsub fast float %4220, %4229
  %4231 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4222, %dx.types.Handle %27, float %4193, float %4195, float %4183, float undef, i32 0, i32 0, i32 undef, float %4231)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = fcmp ule float %4233, 0x3FE0101020000000
  %4235 = extractvalue %dx.types.CBufRet.i32 %4226, 0
  %4236 = and i32 %4235, 128
  %4237 = icmp ne i32 %4236, 0
  %4238 = and i1 %4234, %4237
  br i1 %4238, label %4389, label %4239

; <label>:4239                                    ; preds = %4173
  %4240 = add i32 %4174, 20
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = add i32 %4174, 24
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = add i32 %4174, 40
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = add i32 %4174, 96
  %4250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.i32 %4250, 0
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4254 = fmul fast float %4253, %4193
  %4255 = fmul fast float %4253, %4195
  %4256 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4257 = fadd fast float %4254, %4256
  %4258 = fadd fast float %4255, %4256
  %4259 = add i32 %4251, 0
  %4260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4260, i32 0)  ; GetDimensions(handle,mipLevel)
  %4262 = extractvalue %dx.types.Dimensions %4261, 0
  %4263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4262)  ; FirstbitLo(value)
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 1
  %4266 = sub nsw i32 %4265, %4263
  %4267 = sitofp i32 %4266 to float
  %4268 = fsub fast float %4217, %4267
  %4269 = call float @dx.op.binary.f32(i32 35, float %4268, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4260, %dx.types.Handle %27, float %4257, float %4258, float %4248, float undef, i32 0, i32 0, i32 undef, float %4269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = fmul fast float %4271, %4242
  %4273 = fadd fast float %4272, %4245
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.CBufRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4282 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4283 = fadd fast float %4279, %4140
  %4284 = fadd fast float %4281, %4141
  %4285 = fadd fast float %4273, %4282
  %4286 = fmul fast float %4283, %4275
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4276, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4277, float %4287)  ; FMad(a,b,c)
  %4289 = fsub fast float %4288, %4282
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4292 = fsub fast float %4289, %4291
  %4293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.i32 %4293, 0
  %4295 = call i32 @dx.op.binary.i32(i32 40, i32 %4171, i32 %4294)  ; UMin(a,b)
  %4296 = mul i32 %4295, 36
  %4297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.i32 %4297, 0
  %4299 = add i32 %4296, 4
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = fmul fast float %4301, %4193
  %4303 = fmul fast float %4301, %4195
  %4304 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4305 = fadd fast float %4302, %4304
  %4306 = fadd fast float %4303, %4304
  %4307 = icmp eq i32 %4298, 0
  br i1 %4307, label %4376, label %4308

; <label>:4308                                    ; preds = %4239
  br label %4309

; <label>:4309                                    ; preds = %4366, %4308
  %4310 = phi float [ %4367, %4366 ], [ 0.000000e+00, %4308 ]
  %4311 = phi float [ %4368, %4366 ], [ 0.000000e+00, %4308 ]
  %4312 = phi float [ %4369, %4366 ], [ 0.000000e+00, %4308 ]
  %4313 = phi float [ %4370, %4366 ], [ 0.000000e+00, %4308 ]
  %4314 = phi float [ %4371, %4366 ], [ 0.000000e+00, %4308 ]
  %4315 = phi float [ %4372, %4366 ], [ 0.000000e+00, %4308 ]
  %4316 = phi i32 [ %4373, %4366 ], [ 0, %4308 ]
  %4317 = shl i32 %4316, 2
  %4318 = add i32 %4184, %4317
  %4319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = add i32 %4188, %4317
  %4322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = add i32 %4323, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4325, i32 0)  ; GetDimensions(handle,mipLevel)
  %4327 = extractvalue %dx.types.Dimensions %4326, 0
  %4328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4327)  ; FirstbitLo(value)
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4331 = sub nsw i32 %4330, %4328
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4217, %4332
  %4334 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4325, %dx.types.Handle %27, float %4305, float %4306, float %4320, float undef, i32 0, i32 0, i32 undef, float %4334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = fcmp fast ogt float %4336, 0.000000e+00
  br i1 %4337, label %4338, label %4366

; <label>:4338                                    ; preds = %4309
  %4339 = add i32 %4299, %4317
  %4340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.i32 %4340, 0
  %4342 = and i32 %4341, 32767
  %4343 = mul nuw nsw i32 %4342, 928
  %4344 = add nuw nsw i32 %4343, 48
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = add nuw nsw i32 %4343, 60
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = fmul fast float %4346, %4336
  %4355 = fmul fast float %4347, %4336
  %4356 = fmul fast float %4348, %4336
  %4357 = fadd fast float %4354, %4310
  %4358 = fadd fast float %4355, %4311
  %4359 = fadd fast float %4356, %4312
  %4360 = fmul fast float %4351, %4336
  %4361 = fmul fast float %4352, %4336
  %4362 = fmul fast float %4353, %4336
  %4363 = fadd fast float %4360, %4313
  %4364 = fadd fast float %4361, %4314
  %4365 = fadd fast float %4362, %4315
  br label %4366

; <label>:4366                                    ; preds = %4338, %4309
  %4367 = phi float [ %4357, %4338 ], [ %4310, %4309 ]
  %4368 = phi float [ %4358, %4338 ], [ %4311, %4309 ]
  %4369 = phi float [ %4359, %4338 ], [ %4312, %4309 ]
  %4370 = phi float [ %4363, %4338 ], [ %4313, %4309 ]
  %4371 = phi float [ %4364, %4338 ], [ %4314, %4309 ]
  %4372 = phi float [ %4365, %4338 ], [ %4315, %4309 ]
  %4373 = add nuw i32 %4316, 1
  %4374 = icmp eq i32 %4373, %4298
  br i1 %4374, label %4375, label %4309

; <label>:4375                                    ; preds = %4366
  br label %4376

; <label>:4376                                    ; preds = %4375, %4239
  %4377 = phi float [ 0.000000e+00, %4239 ], [ %4367, %4375 ]
  %4378 = phi float [ 0.000000e+00, %4239 ], [ %4368, %4375 ]
  %4379 = phi float [ 0.000000e+00, %4239 ], [ %4369, %4375 ]
  %4380 = phi float [ 0.000000e+00, %4239 ], [ %4370, %4375 ]
  %4381 = phi float [ 0.000000e+00, %4239 ], [ %4371, %4375 ]
  %4382 = phi float [ 0.000000e+00, %4239 ], [ %4372, %4375 ]
  %4383 = fadd fast float %4380, %4377
  %4384 = fmul fast float %4383, 0x3F847AE140000000
  %4385 = fadd fast float %4381, %4378
  %4386 = fmul fast float %4385, 0x3F847AE140000000
  %4387 = fadd fast float %4382, %4379
  %4388 = fmul fast float %4387, 0x3F847AE140000000
  br label %4389

; <label>:4389                                    ; preds = %4376, %4173, %4118, %4115, %4086, %4048
  %4390 = phi float [ %4100, %4086 ], [ -1.310720e+05, %4048 ], [ %4292, %4376 ], [ -1.310720e+05, %4118 ], [ -1.310720e+05, %4173 ], [ -1.310720e+05, %4115 ]
  %4391 = phi float [ %4110, %4086 ], [ 0.000000e+00, %4048 ], [ %4384, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4392 = phi float [ %4112, %4086 ], [ 0.000000e+00, %4048 ], [ %4386, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4393 = phi float [ %4114, %4086 ], [ 0.000000e+00, %4048 ], [ %4388, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4394 = phi i1 [ true, %4086 ], [ false, %4048 ], [ true, %4376 ], [ false, %4118 ], [ false, %4173 ], [ false, %4115 ]
  %4395 = and i32 %134, 3
  %4396 = icmp eq i32 %4395, 1
  %4397 = select i1 %4396, float 1.000000e+00, float 0.000000e+00
  %4398 = fsub fast float %4390, %118
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = select i1 %4394, float %4399, float 1.000000e+00
  %4401 = fmul fast float %4400, %4397
  %4402 = icmp eq i32 %4395, 3
  %4403 = select i1 %4402, float 1.000000e+00, float %4401
  %4404 = call float @dx.op.binary.f32(i32 35, float %3991, float %4403)  ; FMax(a,b)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4406 = fcmp fast une float %4405, 0.000000e+00
  %4407 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  br i1 %4406, label %4416, label %4409

; <label>:4409                                    ; preds = %4389
  %4410 = fmul fast float %4408, %116
  %4411 = fmul fast float %4408, %117
  %4412 = fmul fast float %4408, %118
  %4413 = fsub fast float -0.000000e+00, %4410
  %4414 = fsub fast float -0.000000e+00, %4411
  %4415 = fsub fast float -0.000000e+00, %4412
  br label %4584

; <label>:4416                                    ; preds = %4389
  %4417 = fmul fast float %116, %4408
  %4418 = fsub fast float -0.000000e+00, %4417
  %4419 = fmul fast float %117, %4408
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = fmul fast float %118, %4408
  %4422 = fsub fast float -0.000000e+00, %4421
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4420, float %4422, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = fmul fast float %4405, 2.500000e+00
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4405, 0x4013FFFFE0000000
  %4427 = fadd fast float %4426, 0xBFFFFFFFE0000000
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4405, 0x4004000020000000
  %4430 = fadd fast float %4429, 0xBFF8000040000000
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4433 = fmul fast float %3994, 1.000000e+01
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, 2.000000e+00
  %4436 = fsub fast float 3.000000e+00, %4435
  %4437 = fmul fast float %4434, %4434
  %4438 = fmul fast float %4437, %4436
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = fsub fast float 0x3FE3333340000000, %4015
  %4441 = fmul fast float %4440, 0x400AAAAAA0000000
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4439, %4442
  %4444 = fmul fast float %4027, 0x3FEA2B8620000000
  %4445 = fmul fast float %4028, 0x3FEA2B8620000000
  %4446 = fmul fast float %4029, 0x3FEA2B8620000000
  %4447 = fadd fast float %4444, 0x3FC81DFBA0000000
  %4448 = fmul fast float %4447, %4027
  %4449 = fadd fast float %4448, 0x3F910E6020000000
  %4450 = fadd fast float %4445, 0x3FC81DFBA0000000
  %4451 = fmul fast float %4450, %4028
  %4452 = fadd fast float %4451, 0x3F910E6020000000
  %4453 = fadd fast float %4446, 0x3FC81DFBA0000000
  %4454 = fmul fast float %4453, %4029
  %4455 = fadd fast float %4454, 0x3F910E6020000000
  %4456 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = fsub fast float %4456, %4027
  %4460 = fsub fast float %4457, %4028
  %4461 = fsub fast float %4458, %4029
  %4462 = fmul fast float %4459, %4432
  %4463 = fmul fast float %4462, %4443
  %4464 = fmul fast float %4460, %4432
  %4465 = fmul fast float %4464, %4443
  %4466 = fmul fast float %4461, %4432
  %4467 = fmul fast float %4466, %4443
  %4468 = fadd fast float %4463, %4027
  %4469 = fadd fast float %4465, %4028
  %4470 = fadd fast float %4467, %4029
  %4471 = fmul fast float %3988, %3988
  %4472 = fmul fast float %4471, %4471
  %4473 = fadd fast float %4428, 1.000000e+00
  %4474 = fsub fast float %4473, %4443
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fsub fast float 1.000000e+00, %4472
  %4479 = call float @dx.op.binary.f32(i32 36, float %4475, float %4478)  ; FMin(a,b)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4479, float %4480)  ; FMax(a,b)
  %4482 = fadd fast float %4477, 0xBFE4CCCCC0000000
  %4483 = fmul fast float %4482, 0x4006DB6DA0000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4484, 2.000000e+00
  %4486 = fsub fast float 3.000000e+00, %4485
  %4487 = bitcast float %4012 to i32
  %4488 = ashr i32 %4487, 1
  %4489 = add nsw i32 %4488, 532487669
  %4490 = bitcast i32 %4489 to float
  %4491 = fsub fast float 1.000000e+00, %4490
  %4492 = bitcast float %4491 to i32
  %4493 = sub nsw i32 2129859010, %4492
  %4494 = bitcast i32 %4493 to float
  %4495 = fmul fast float %4494, 2.000000e+00
  %4496 = bitcast float %4013 to i32
  %4497 = ashr i32 %4496, 1
  %4498 = add nsw i32 %4497, 532487669
  %4499 = bitcast i32 %4498 to float
  %4500 = fsub fast float 1.000000e+00, %4499
  %4501 = bitcast float %4500 to i32
  %4502 = sub nsw i32 2129859010, %4501
  %4503 = bitcast i32 %4502 to float
  %4504 = fmul fast float %4503, 2.000000e+00
  %4505 = bitcast float %4014 to i32
  %4506 = ashr i32 %4505, 1
  %4507 = add nsw i32 %4506, 532487669
  %4508 = bitcast i32 %4507 to float
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = bitcast float %4509 to i32
  %4511 = sub nsw i32 2129859010, %4510
  %4512 = bitcast i32 %4511 to float
  %4513 = fmul fast float %4512, 2.000000e+00
  %4514 = fsub fast float 0x4002A9FBE0000000, %4495
  %4515 = fadd fast float %4495, 0x3FD54FDF00000000
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, %4514
  %4520 = fmul fast float %4519, %4519
  %4521 = fsub fast float 0x4002A9FBE0000000, %4504
  %4522 = fadd fast float %4504, 0x3FD54FDF00000000
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %4526, %4526
  %4528 = fsub fast float 0x4002A9FBE0000000, %4513
  %4529 = fadd fast float %4513, 0x3FD54FDF00000000
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, %4528
  %4534 = fmul fast float %4533, %4533
  %4535 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4520)  ; FMax(a,b)
  %4536 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4527)  ; FMax(a,b)
  %4537 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4534)  ; FMax(a,b)
  %4538 = fsub fast float 1.000000e+00, %4423
  %4539 = fadd fast float %4538, %4439
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4403
  %4542 = fmul fast float %4481, %4541
  %4543 = fmul fast float %4484, %4484
  %4544 = fmul fast float %4543, %4542
  %4545 = fmul fast float %4544, %4486
  %4546 = fmul fast float %4541, 0xBFE99999A0000000
  %4547 = fmul fast float %4546, %4432
  %4548 = fmul fast float %4547, %4443
  %4549 = fadd fast float %4548, 1.000000e+00
  %4550 = fadd fast float %4015, -1.000000e+00
  %4551 = fmul fast float %4549, %4550
  %4552 = fadd fast float %4551, 1.000000e+00
  %4553 = fsub fast float %4535, %4012
  %4554 = fsub fast float %4536, %4013
  %4555 = fsub fast float %4537, %4014
  %4556 = fmul fast float %4545, %4553
  %4557 = fmul fast float %4545, %4554
  %4558 = fmul fast float %4545, %4555
  %4559 = fadd fast float %4556, %4012
  %4560 = fadd fast float %4557, %4013
  %4561 = fadd fast float %4558, %4014
  %4562 = fsub fast float %68, %3976
  %4563 = fsub fast float %69, %3977
  %4564 = fsub fast float %70, %3978
  %4565 = fmul fast float %4545, %4562
  %4566 = fmul fast float %4545, %4563
  %4567 = fmul fast float %4545, %4564
  %4568 = fadd fast float %4565, %3976
  %4569 = fadd fast float %4566, %3977
  %4570 = fadd fast float %4567, %3978
  %4571 = fmul fast float %4545, %4540
  %4572 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4573 = fsub fast float 1.000000e+00, %4572
  %4574 = fmul fast float %4571, %4573
  %4575 = fadd fast float %4574, %4572
  %4576 = fsub fast float 1.000000e+00, %3988
  %4577 = fmul fast float %4545, %4576
  %4578 = fadd fast float %4577, %3988
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = call float @dx.op.unary.f32(i32 25, float %4579)  ; Rsqrt(value)
  %4581 = fmul fast float %4568, %4580
  %4582 = fmul fast float %4569, %4580
  %4583 = fmul fast float %4570, %4580
  br label %4584

; <label>:4584                                    ; preds = %4416, %4409
  %4585 = phi float [ %4415, %4409 ], [ %4422, %4416 ]
  %4586 = phi float [ %4414, %4409 ], [ %4420, %4416 ]
  %4587 = phi float [ %4413, %4409 ], [ %4418, %4416 ]
  %4588 = phi float [ %4412, %4409 ], [ %4421, %4416 ]
  %4589 = phi float [ %4411, %4409 ], [ %4419, %4416 ]
  %4590 = phi float [ %4410, %4409 ], [ %4417, %4416 ]
  %4591 = phi float [ %4027, %4409 ], [ %4468, %4416 ]
  %4592 = phi float [ %4028, %4409 ], [ %4469, %4416 ]
  %4593 = phi float [ %4029, %4409 ], [ %4470, %4416 ]
  %4594 = phi float [ %3976, %4409 ], [ %4581, %4416 ]
  %4595 = phi float [ %3977, %4409 ], [ %4582, %4416 ]
  %4596 = phi float [ %3978, %4409 ], [ %4583, %4416 ]
  %4597 = phi float [ %4012, %4409 ], [ %4559, %4416 ]
  %4598 = phi float [ %4013, %4409 ], [ %4560, %4416 ]
  %4599 = phi float [ %4014, %4409 ], [ %4561, %4416 ]
  %4600 = phi float [ %4015, %4409 ], [ %4575, %4416 ]
  %4601 = phi float [ %3988, %4409 ], [ %4578, %4416 ]
  %4602 = select i1 %158, float 0.000000e+00, float %4599
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float %4587, float %4586, float %4585)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fsub fast float 1.000000e+00, %4601
  %4606 = bitcast float %4605 to i32
  %4607 = sub nsw i32 2129859010, %4606
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %3986, %3982
  %4610 = fmul fast float %3986, %3983
  %4611 = fmul fast float %3986, %3984
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = fcmp fast oeq float %4613, 0.000000e+00
  br i1 %4614, label %4861, label %4615

; <label>:4615                                    ; preds = %4584
  %4616 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = select i1 %158, float %4624, float %4620
  %4628 = select i1 %158, float %4626, float %4621
  %4629 = select i1 %158, float %4625, float %4622
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4632 = fcmp fast une float %4631, 0.000000e+00
  br i1 %4632, label %4633, label %4650

; <label>:4633                                    ; preds = %4615
  %4634 = fptoui float %61 to i32
  %4635 = fptoui float %62 to i32
  %4636 = lshr i32 %4634, 4
  %4637 = lshr i32 %4635, 4
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fptoui float %4639 to i32
  %4641 = add i32 %4640, 15
  %4642 = lshr i32 %4641, 4
  %4643 = mul i32 %4642, %4637
  %4644 = add i32 %4643, %4636
  %4645 = shl i32 %4644, 3
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = and i32 %4647, -268435456
  %4649 = icmp eq i32 %4648, -1342177280
  br i1 %4649, label %4660, label %4650

; <label>:4650                                    ; preds = %4633, %4615
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 2
  %4653 = extractvalue %dx.types.CBufRet.f32 %4651, 3
  %4654 = fmul fast float %4652, %61
  %4655 = fmul fast float %4653, %62
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4654, float %4655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  br label %4660

; <label>:4660                                    ; preds = %4650, %4633
  %4661 = phi float [ %4657, %4650 ], [ 0.000000e+00, %4633 ]
  %4662 = phi float [ %4658, %4650 ], [ 0.000000e+00, %4633 ]
  %4663 = phi float [ %4659, %4650 ], [ 0.000000e+00, %4633 ]
  %4664 = call float @dx.op.binary.f32(i32 36, float %4662, float %4663)  ; FMin(a,b)
  %4665 = call float @dx.op.binary.f32(i32 36, float %4661, float %4664)  ; FMin(a,b)
  %4666 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %4666, label %4667, label %4861, !dx.controlflow.hints !72

; <label>:4667                                    ; preds = %4660
  %4668 = fmul fast float %4661, %4627
  %4669 = fmul fast float %4662, %4628
  %4670 = fmul fast float %4663, %4629
  %4671 = fsub fast float %4616, %4590
  %4672 = fsub fast float %4617, %4589
  %4673 = fsub fast float %4618, %4588
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4675, %4672
  %4678 = fmul fast float %4675, %4673
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4594, float %4595, float %4596)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4586, float %4585, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4682 = fmul fast float %4681, %4681
  %4683 = fmul fast float %4682, %4608
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, %4681
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, %4686
  %4688 = call float @dx.op.unary.f32(i32 6, float %4679)  ; FAbs(value)
  %4689 = fsub fast float 1.000000e+00, %4600
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F847AE140000000)  ; FMax(a,b)
  %4691 = fmul fast float %4690, %4690
  %4692 = fmul fast float %4691, %4691
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = fmul fast float %4604, %4604
  %4695 = fmul fast float %4694, %4693
  %4696 = fadd fast float %4695, %4692
  %4697 = bitcast float %4696 to i32
  %4698 = ashr i32 %4697, 1
  %4699 = add nsw i32 %4698, 532487669
  %4700 = bitcast i32 %4699 to float
  %4701 = fadd fast float %4700, %4604
  %4702 = fmul fast float %4692, %4687
  %4703 = fsub fast float 1.000000e+00, %4687
  %4704 = fadd fast float %4703, %4702
  %4705 = fmul fast float %4688, %4688
  %4706 = fmul fast float %4705, %4693
  %4707 = fadd fast float %4706, %4692
  %4708 = bitcast float %4707 to i32
  %4709 = ashr i32 %4708, 1
  %4710 = add nsw i32 %4709, 532487669
  %4711 = bitcast i32 %4710 to float
  %4712 = fadd fast float %4711, %4688
  %4713 = fmul fast float %4704, %4704
  %4714 = fmul fast float %4713, %4701
  %4715 = fmul fast float %4714, %4712
  %4716 = fdiv fast float 0x3FF0A00000000000, %4715
  %4717 = fmul fast float %4716, %4692
  %4718 = call float @dx.op.unary.f32(i32 6, float %4680)  ; FAbs(value)
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sitofp i32 %4720 to float
  %4722 = fmul fast float %4721, 5.000000e+00
  %4723 = fadd fast float %4722, 0xC1EFBF8940000000
  %4724 = fptosi float %4723 to i32
  %4725 = bitcast i32 %4724 to float
  %4726 = fsub fast float 1.000000e+00, %4597
  %4727 = fsub fast float 1.000000e+00, %4598
  %4728 = fsub fast float 1.000000e+00, %4602
  %4729 = fmul fast float %4725, %4726
  %4730 = fmul fast float %4725, %4727
  %4731 = fmul fast float %4725, %4728
  %4732 = fadd fast float %4729, %4597
  %4733 = fadd fast float %4730, %4598
  %4734 = fadd fast float %4731, %4602
  %4735 = fcmp fast ogt float %3989, 0.000000e+00
  br i1 %4735, label %4736, label %4759

; <label>:4736                                    ; preds = %4667
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = fadd fast float %4738, -5.000000e-01
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fadd fast float %4740, -5.000000e-01
  %4744 = fmul fast float %4597, 4.000000e+00
  %4745 = fmul fast float %4744, %4726
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %4598, 4.000000e+00
  %4748 = fmul fast float %4747, %4727
  %4749 = fmul fast float %4748, %4742
  %4750 = fmul fast float %4602, 4.000000e+00
  %4751 = fmul fast float %4750, %4728
  %4752 = fmul fast float %4751, %4743
  %4753 = fadd fast float %4746, %4732
  %4754 = fadd fast float %4749, %4733
  %4755 = fadd fast float %4752, %4734
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  br label %4759

; <label>:4759                                    ; preds = %4736, %4667
  %4760 = phi float [ %4756, %4736 ], [ %4732, %4667 ]
  %4761 = phi float [ %4757, %4736 ], [ %4733, %4667 ]
  %4762 = phi float [ %4758, %4736 ], [ %4734, %4667 ]
  %4763 = fmul fast float %4679, 9.843750e-01
  %4764 = fmul fast float %4600, 9.843750e-01
  %4765 = fadd fast float %4763, 7.812500e-03
  %4766 = fadd fast float %4764, 7.812500e-03
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4765, float %4766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4770 = fmul fast float %4768, %4597
  %4771 = fmul fast float %4768, %4598
  %4772 = fmul fast float %4768, %4602
  %4773 = fadd fast float %4770, %4769
  %4774 = fadd fast float %4771, %4769
  %4775 = fadd fast float %4772, %4769
  br i1 %4735, label %4776, label %4799

; <label>:4776                                    ; preds = %4759
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %4679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = fadd fast float %4778, -5.000000e-01
  %4782 = fadd fast float %4779, -5.000000e-01
  %4783 = fadd fast float %4780, -5.000000e-01
  %4784 = fmul fast float %4597, 4.000000e+00
  %4785 = fmul fast float %4784, %4726
  %4786 = fmul fast float %4785, %4781
  %4787 = fmul fast float %4598, 4.000000e+00
  %4788 = fmul fast float %4787, %4727
  %4789 = fmul fast float %4788, %4782
  %4790 = fmul fast float %4602, 4.000000e+00
  %4791 = fmul fast float %4790, %4728
  %4792 = fmul fast float %4791, %4783
  %4793 = fadd fast float %4786, %4773
  %4794 = fadd fast float %4789, %4774
  %4795 = fadd fast float %4792, %4775
  %4796 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  br label %4799

; <label>:4799                                    ; preds = %4776, %4759
  %4800 = phi float [ %4796, %4776 ], [ %4773, %4759 ]
  %4801 = phi float [ %4797, %4776 ], [ %4774, %4759 ]
  %4802 = phi float [ %4798, %4776 ], [ %4775, %4759 ]
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float %4802)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4800, float %4803)  ; FMax(a,b)
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4760, %4717
  %4807 = fmul fast float %4761, %4717
  %4808 = fmul fast float %4762, %4717
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = fcmp fast ogt float %4809, 0x3E7FF19E20000000
  %4811 = fdiv fast float 1.000000e+00, %4809
  %4812 = select i1 %4810, float %4811, float 0.000000e+00
  %4813 = fmul fast float %4812, %4591
  %4814 = fmul fast float %4812, %4592
  %4815 = fmul fast float %4812, %4593
  %4816 = fadd fast float %4813, -1.000000e+00
  %4817 = fadd fast float %4814, -1.000000e+00
  %4818 = fadd fast float %4815, -1.000000e+00
  %4819 = fmul fast float %4816, 5.000000e-01
  %4820 = fmul fast float %4817, 5.000000e-01
  %4821 = fmul fast float %4818, 5.000000e-01
  %4822 = fadd fast float %4819, 1.000000e+00
  %4823 = fadd fast float %4820, 1.000000e+00
  %4824 = fadd fast float %4821, 1.000000e+00
  %4825 = fsub fast float 1.000000e+00, %4680
  %4826 = bitcast float %4825 to i32
  %4827 = sitofp i32 %4826 to float
  %4828 = fmul fast float %4827, 5.000000e+00
  %4829 = fadd fast float %4828, 0xC1EFBF8940000000
  %4830 = fptosi float %4829 to i32
  %4831 = bitcast i32 %4830 to float
  %4832 = fmul fast float %4831, %3990
  %4833 = fmul fast float %4805, %4832
  %4834 = fmul fast float %4833, %4822
  %4835 = fmul fast float %4833, %4823
  %4836 = fmul fast float %4833, %4824
  %4837 = fadd fast float %4834, %4806
  %4838 = fadd fast float %4835, %4807
  %4839 = fadd fast float %4836, %4808
  %4840 = fmul fast float %4685, %4668
  %4841 = fmul fast float %4840, %4837
  %4842 = fmul fast float %4685, %4669
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4685, %4670
  %4845 = fmul fast float %4844, %4839
  %4846 = fmul fast float %4668, %3986
  %4847 = fmul fast float %4846, %4685
  %4848 = fmul fast float %4847, %4805
  %4849 = fmul fast float %4669, %3986
  %4850 = fmul fast float %4849, %4685
  %4851 = fmul fast float %4850, %4805
  %4852 = fmul fast float %4670, %3986
  %4853 = fmul fast float %4852, %4685
  %4854 = fmul fast float %4853, %4805
  %4855 = fadd fast float %4841, %3982
  %4856 = fmul fast float %4855, %3986
  %4857 = fadd fast float %4843, %3983
  %4858 = fmul fast float %4857, %3986
  %4859 = fadd fast float %4845, %3984
  %4860 = fmul fast float %4859, %3986
  br label %4861

; <label>:4861                                    ; preds = %4799, %4660, %4584
  %4862 = phi float [ %4609, %4584 ], [ %4609, %4660 ], [ %4856, %4799 ]
  %4863 = phi float [ %4610, %4584 ], [ %4610, %4660 ], [ %4858, %4799 ]
  %4864 = phi float [ %4611, %4584 ], [ %4611, %4660 ], [ %4860, %4799 ]
  %4865 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4848, %4799 ]
  %4866 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4851, %4799 ]
  %4867 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4854, %4799 ]
  %4868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.i32 %4868, 0
  %4870 = icmp eq i32 %4869, 0
  br i1 %4870, label %5324, label %4871

; <label>:4871                                    ; preds = %4861
  %4872 = fptoui float %61 to i32
  %4873 = fptoui float %62 to i32
  %4874 = lshr i32 %4872, 4
  %4875 = lshr i32 %4873, 4
  %4876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.i32 %4876, 0
  %4878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4875, i32 %4877, i32 %4874)  ; UMad(a,b,c)
  %4879 = add nsw i32 %4869, -1
  %4880 = call i32 @dx.op.binary.i32(i32 37, i32 %4879, i32 0)  ; IMax(a,b)
  %4881 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %4882 = fptoui float %4881 to i32
  %4883 = lshr i32 %4882, 5
  %4884 = call i32 @dx.op.binary.i32(i32 40, i32 %4883, i32 8191)  ; UMin(a,b)
  %4885 = shl i32 %4884, 2
  %4886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4885, i32 undef)  ; BufferLoad(srv,index,wot)
  %4887 = extractvalue %dx.types.ResRet.i32 %4886, 0
  %4888 = lshr i32 %4887, 16
  %4889 = and i32 %4887, 65535
  %4890 = lshr i32 %4887, 21
  %4891 = lshr i32 %4889, 5
  %4892 = call i32 @dx.op.binary.i32(i32 40, i32 %4891, i32 %4880)  ; UMin(a,b)
  %4893 = icmp ugt i32 %4890, %4892
  br i1 %4893, label %5324, label %4894

; <label>:4894                                    ; preds = %4871
  br label %4895

; <label>:4895                                    ; preds = %5314, %4894
  %4896 = phi i32 [ %5321, %5314 ], [ %4890, %4894 ]
  %4897 = phi float [ %5315, %5314 ], [ %4862, %4894 ]
  %4898 = phi float [ %5316, %5314 ], [ %4863, %4894 ]
  %4899 = phi float [ %5317, %5314 ], [ %4864, %4894 ]
  %4900 = phi float [ %5318, %5314 ], [ %4865, %4894 ]
  %4901 = phi float [ %5319, %5314 ], [ %4866, %4894 ]
  %4902 = phi float [ %5320, %5314 ], [ %4867, %4894 ]
  %4903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.i32 %4903, 0
  %4905 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4878, i32 %4904, i32 %4896)  ; UMad(a,b,c)
  %4906 = shl i32 %4905, 2
  %4907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.i32 %4907, 0
  %4909 = shl i32 %4896, 5
  %4910 = sub nsw i32 %4888, %4909
  %4911 = call i32 @dx.op.binary.i32(i32 37, i32 %4910, i32 0)  ; IMax(a,b)
  %4912 = call i32 @dx.op.binary.i32(i32 38, i32 %4911, i32 31)  ; IMin(a,b)
  %4913 = sub nsw i32 1, %4888
  %4914 = add nsw i32 %4913, %4889
  %4915 = call i32 @dx.op.binary.i32(i32 37, i32 %4914, i32 0)  ; IMax(a,b)
  %4916 = call i32 @dx.op.binary.i32(i32 38, i32 %4915, i32 32)  ; IMin(a,b)
  %4917 = and i32 %4916, 31
  %4918 = shl i32 -1, %4917
  %4919 = xor i32 %4918, -1
  %4920 = and i32 %4912, 31
  %4921 = shl i32 %4919, %4920
  %4922 = icmp eq i32 %4916, 32
  %4923 = select i1 %4922, i32 -1, i32 %4921
  %4924 = and i32 %4923, %4908
  %4925 = icmp eq i32 %4924, 0
  br i1 %4925, label %5314, label %4926

; <label>:4926                                    ; preds = %4895
  br label %4927

; <label>:4927                                    ; preds = %5007, %4926
  %4928 = phi i32 [ %4939, %5007 ], [ %4924, %4926 ]
  %4929 = phi float [ %5008, %5007 ], [ %4897, %4926 ]
  %4930 = phi float [ %5009, %5007 ], [ %4898, %4926 ]
  %4931 = phi float [ %5010, %5007 ], [ %4899, %4926 ]
  %4932 = phi float [ %5011, %5007 ], [ %4900, %4926 ]
  %4933 = phi float [ %5012, %5007 ], [ %4901, %4926 ]
  %4934 = phi float [ %5013, %5007 ], [ %4902, %4926 ]
  %4935 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4928)  ; FirstbitLo(value)
  %4936 = add i32 %4935, %4909
  %4937 = and i32 %4935, 31
  %4938 = shl i32 1, %4937
  %4939 = xor i32 %4938, %4928
  %4940 = mul i32 %4936, 112
  %4941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4940, i32 undef)  ; BufferLoad(srv,index,wot)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = or i32 %4940, 12
  %4946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = add i32 %4940, 44
  %4949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4948, i32 undef)  ; BufferLoad(srv,index,wot)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = add i32 %4940, 48
  %4952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4951, i32 undef)  ; BufferLoad(srv,index,wot)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.ResRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.ResRet.f32 %4952, 2
  %4956 = add i32 %4940, 80
  %4957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4956, i32 undef)  ; BufferLoad(srv,index,wot)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4957, 2
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = select i1 %158, float %4958, float %4942
  %4962 = select i1 %158, float %4960, float %4943
  %4963 = select i1 %158, float %4959, float %4944
  %4964 = fsub fast float %4953, %116
  %4965 = fsub fast float %4954, %117
  %4966 = fsub fast float %4955, %118
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %4964, float %4965, float %4966)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 24, float %4967)  ; Sqrt(value)
  %4969 = fdiv fast float 1.000000e+00, %4968
  %4970 = fmul fast float %4969, %4964
  %4971 = fmul fast float %4969, %4965
  %4972 = fmul fast float %4969, %4966
  %4973 = fadd fast float %4968, %4947
  %4974 = fdiv fast float 1.000000e+00, %4973
  %4975 = fmul float %4950, %4974
  %4976 = fmul float %4975, %4975
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = and i32 %4938, %4924
  %4979 = icmp eq i32 %4978, 0
  br i1 %4979, label %5002, label %4980, !dx.controlflow.hints !73

; <label>:4980                                    ; preds = %4927
  %4981 = lshr i32 %4872, 5
  %4982 = lshr i32 %4873, 5
  %4983 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %4981, i32 %4982, i32 %4936, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4984 = extractvalue %dx.types.ResRet.i32 %4983, 0
  %4985 = and i32 %4984, 3
  %4986 = icmp eq i32 %4985, 0
  %4987 = select i1 %4986, float 1.000000e+00, float 0.000000e+00
  %4988 = icmp eq i32 %4985, 3
  br i1 %4988, label %4989, label %5002

; <label>:4989                                    ; preds = %4980
  %4990 = lshr i32 %4984, 10
  %4991 = and i32 %4990, 8160
  %4992 = and i32 %4873, 31
  %4993 = or i32 %4991, %4992
  %4994 = lshr i32 %4984, 1
  %4995 = and i32 %4994, 16352
  %4996 = and i32 %4872, 31
  %4997 = or i32 %4995, %4996
  %4998 = lshr i32 %4984, 23
  %4999 = and i32 %4998, 255
  %5000 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %4997, i32 %4993, i32 %4999, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  br label %5002

; <label>:5002                                    ; preds = %4989, %4980, %4927
  %5003 = phi float [ %5001, %4989 ], [ %4987, %4980 ], [ 0.000000e+00, %4927 ]
  %5004 = call float @dx.op.binary.f32(i32 36, float %5003, float %5003)  ; FMin(a,b)
  %5005 = call float @dx.op.binary.f32(i32 36, float %5003, float %5004)  ; FMin(a,b)
  %5006 = fcmp fast ogt float %5005, 0.000000e+00
  br i1 %5006, label %5015, label %5007, !dx.controlflow.hints !74

; <label>:5007                                    ; preds = %5254, %5002
  %5008 = phi float [ %4929, %5002 ], [ %5310, %5254 ]
  %5009 = phi float [ %4930, %5002 ], [ %5311, %5254 ]
  %5010 = phi float [ %4931, %5002 ], [ %5312, %5254 ]
  %5011 = phi float [ %4932, %5002 ], [ %5304, %5254 ]
  %5012 = phi float [ %4933, %5002 ], [ %5305, %5254 ]
  %5013 = phi float [ %4934, %5002 ], [ %5306, %5254 ]
  %5014 = icmp eq i32 %4928, %4938
  br i1 %5014, label %5313, label %4927

; <label>:5015                                    ; preds = %5002
  %5016 = fmul fast float %5003, %4961
  %5017 = fmul fast float %5003, %4962
  %5018 = fmul fast float %5003, %4963
  %5019 = fsub fast float %4955, %4390
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fsub fast float %118, %4390
  %5022 = fcmp fast ogt float %5021, 0.000000e+00
  %5023 = xor i1 %5022, %5020
  %5024 = fsub fast float %4390, %4955
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = fadd fast float %5025, %4955
  %5027 = select i1 %5023, float %4955, float %5026
  %5028 = fsub fast float %5027, %118
  %5029 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %5028, float %4964, float %4965, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5030, %4964
  %5032 = fmul fast float %5030, %4965
  %5033 = fmul fast float %5030, %5028
  %5034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fdiv fast float 1.000000e+00, %5035
  %5037 = fmul fast float %5036, %5034
  %5038 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5021, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  %5040 = fcmp fast olt float %5038, 0.000000e+00
  %5041 = zext i1 %5039 to i32
  %5042 = zext i1 %5040 to i32
  %5043 = sub nsw i32 %5041, %5042
  %5044 = sitofp i32 %5043 to float
  %5045 = fsub fast float %5027, %4390
  %5046 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %5045, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  %5048 = fcmp fast olt float %5046, 0.000000e+00
  %5049 = zext i1 %5047 to i32
  %5050 = zext i1 %5048 to i32
  %5051 = sub nsw i32 %5049, %5050
  %5052 = sitofp i32 %5051 to float
  %5053 = fcmp fast une float %5044, %5052
  br i1 %5053, label %5054, label %5064

; <label>:5054                                    ; preds = %5015
  %5055 = fmul fast float %5037, %5033
  %5056 = fmul fast float %5037, %5032
  %5057 = fmul fast float %5037, %5031
  %5058 = fmul fast float %5057, %5057
  %5059 = fmul fast float %5056, %5056
  %5060 = fadd fast float %5058, %5059
  %5061 = fmul fast float %5055, %5055
  %5062 = fadd fast float %5060, %5061
  %5063 = call float @dx.op.unary.f32(i32 24, float %5062)  ; Sqrt(value)
  br label %5076

; <label>:5064                                    ; preds = %5015
  %5065 = icmp slt i32 %5043, 0
  br i1 %5065, label %5066, label %5076

; <label>:5066                                    ; preds = %5064
  %5067 = fsub fast float %116, %4953
  %5068 = fsub fast float %117, %4954
  %5069 = fsub fast float %118, %5027
  %5070 = fmul fast float %5067, %5067
  %5071 = fmul fast float %5068, %5068
  %5072 = fadd fast float %5070, %5071
  %5073 = fmul fast float %5069, %5069
  %5074 = fadd fast float %5072, %5073
  %5075 = call float @dx.op.unary.f32(i32 24, float %5074)  ; Sqrt(value)
  br label %5076

; <label>:5076                                    ; preds = %5066, %5064, %5054
  %5077 = phi float [ %5063, %5054 ], [ %5075, %5066 ], [ 0.000000e+00, %5064 ]
  %5078 = and i1 %5022, %5020
  %5079 = fsub fast float -0.000000e+00, %5077
  %5080 = select i1 %5078, float -0.000000e+00, float %5079
  %5081 = fmul fast float %4391, 0x3FF7154760000000
  %5082 = fmul fast float %5081, %5080
  %5083 = fmul fast float %4392, 0x3FF7154760000000
  %5084 = fmul fast float %5083, %5080
  %5085 = fmul fast float %4393, 0x3FF7154760000000
  %5086 = fmul fast float %5085, %5080
  %5087 = call float @dx.op.unary.f32(i32 21, float %5082)  ; Exp(value)
  %5088 = call float @dx.op.unary.f32(i32 21, float %5084)  ; Exp(value)
  %5089 = call float @dx.op.unary.f32(i32 21, float %5086)  ; Exp(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = fmul fast float %5016, %5090
  %5094 = fmul fast float %5017, %5091
  %5095 = fmul fast float %5018, %5092
  %5096 = fsub fast float %4970, %4590
  %5097 = fsub fast float %4971, %4589
  %5098 = fsub fast float %4972, %4588
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5100, %5096
  %5102 = fmul fast float %5100, %5097
  %5103 = fmul fast float %5100, %5098
  %5104 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %4594, float %4595, float %4596)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4586, float %4585, float %5101, float %5102, float %5103)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5107 = fmul fast float %5106, %4977
  %5108 = fmul fast float %5106, %5106
  %5109 = fmul fast float %5108, %4608
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5107, %5110
  %5112 = bitcast float %4967 to i32
  %5113 = ashr i32 %5112, 1
  %5114 = sub nsw i32 1597463007, %5113
  %5115 = bitcast i32 %5114 to float
  %5116 = fmul fast float %5115, %4964
  %5117 = fmul fast float %5115, %4965
  %5118 = fmul fast float %5115, %4966
  %5119 = fsub fast float %5116, %4590
  %5120 = fsub fast float %5117, %4589
  %5121 = fsub fast float %5118, %4588
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float %5119, float %5120, float %5121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.unary.f32(i32 25, float %5122)  ; Rsqrt(value)
  %5124 = fmul fast float %5119, %5123
  %5125 = fmul fast float %5120, %5123
  %5126 = fmul fast float %5121, %5123
  %5127 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float %5124, float %5125, float %5126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fmul fast float %5127, %5127
  %5129 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5130 = fsub fast float 1.000000e+00, %4600
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float 0x3F847AE140000000)  ; FMax(a,b)
  %5132 = fmul fast float %5131, %5131
  %5133 = fmul fast float %5132, %5132
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = fmul fast float %4604, %4604
  %5136 = fmul fast float %5135, %5134
  %5137 = fadd fast float %5136, %5133
  %5138 = bitcast float %5137 to i32
  %5139 = ashr i32 %5138, 1
  %5140 = add nsw i32 %5139, 532487669
  %5141 = bitcast i32 %5140 to float
  %5142 = fadd fast float %5141, %4604
  %5143 = fmul fast float %5133, %5128
  %5144 = fsub fast float 1.000000e+00, %5128
  %5145 = fadd fast float %5144, %5143
  %5146 = fmul fast float %5129, %5129
  %5147 = fmul fast float %5146, %5134
  %5148 = fadd fast float %5147, %5133
  %5149 = bitcast float %5148 to i32
  %5150 = ashr i32 %5149, 1
  %5151 = add nsw i32 %5150, 532487669
  %5152 = bitcast i32 %5151 to float
  %5153 = fadd fast float %5152, %5129
  %5154 = fmul fast float %5145, %5145
  %5155 = fmul fast float %5154, %5142
  %5156 = fmul fast float %5155, %5153
  %5157 = fdiv fast float 1.000000e+00, %5156
  %5158 = bitcast float %5133 to i32
  %5159 = sitofp i32 %5158 to float
  %5160 = fmul fast float %5159, 0x3FE7F73180000000
  %5161 = fadd fast float %5160, 0x41AFE27C40000000
  %5162 = fptosi float %5161 to i32
  %5163 = bitcast i32 %5162 to float
  %5164 = fmul fast float %4950, 0x3FD80E9D60000000
  %5165 = fmul fast float %5164, %5115
  %5166 = fadd fast float %5163, %5165
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5133, %5157
  %5171 = fmul fast float %5170, %5163
  %5172 = fmul fast float %5171, %5169
  %5173 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = bitcast float %5174 to i32
  %5176 = sitofp i32 %5175 to float
  %5177 = fmul fast float %5176, 5.000000e+00
  %5178 = fadd fast float %5177, 0xC1EFBF8940000000
  %5179 = fptosi float %5178 to i32
  %5180 = bitcast i32 %5179 to float
  %5181 = fsub fast float 1.000000e+00, %4597
  %5182 = fsub fast float 1.000000e+00, %4598
  %5183 = fsub fast float 1.000000e+00, %4602
  %5184 = fmul fast float %5180, %5181
  %5185 = fmul fast float %5180, %5182
  %5186 = fmul fast float %5180, %5183
  %5187 = fadd fast float %5184, %4597
  %5188 = fadd fast float %5185, %4598
  %5189 = fadd fast float %5186, %4602
  %5190 = fcmp fast ogt float %3989, 0.000000e+00
  br i1 %5190, label %5191, label %5214

; <label>:5191                                    ; preds = %5076
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %5173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.ResRet.f32 %5192, 2
  %5196 = fadd fast float %5193, -5.000000e-01
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fadd fast float %5195, -5.000000e-01
  %5199 = fmul fast float %4597, 4.000000e+00
  %5200 = fmul fast float %5199, %5181
  %5201 = fmul fast float %5200, %5196
  %5202 = fmul fast float %4598, 4.000000e+00
  %5203 = fmul fast float %5202, %5182
  %5204 = fmul fast float %5203, %5197
  %5205 = fmul fast float %4602, 4.000000e+00
  %5206 = fmul fast float %5205, %5183
  %5207 = fmul fast float %5206, %5198
  %5208 = fadd fast float %5201, %5187
  %5209 = fadd fast float %5204, %5188
  %5210 = fadd fast float %5207, %5189
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  br label %5214

; <label>:5214                                    ; preds = %5191, %5076
  %5215 = phi float [ %5211, %5191 ], [ %5187, %5076 ]
  %5216 = phi float [ %5212, %5191 ], [ %5188, %5076 ]
  %5217 = phi float [ %5213, %5191 ], [ %5189, %5076 ]
  %5218 = fmul fast float %5104, 9.843750e-01
  %5219 = fmul fast float %4600, 9.843750e-01
  %5220 = fadd fast float %5218, 7.812500e-03
  %5221 = fadd fast float %5219, 7.812500e-03
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 3
  %5225 = fmul fast float %5223, %4597
  %5226 = fmul fast float %5223, %4598
  %5227 = fmul fast float %5223, %4602
  %5228 = fadd fast float %5225, %5224
  %5229 = fadd fast float %5226, %5224
  %5230 = fadd fast float %5227, %5224
  br i1 %5190, label %5231, label %5254

; <label>:5231                                    ; preds = %5214
  %5232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %5104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = fadd fast float %5233, -5.000000e-01
  %5237 = fadd fast float %5234, -5.000000e-01
  %5238 = fadd fast float %5235, -5.000000e-01
  %5239 = fmul fast float %4597, 4.000000e+00
  %5240 = fmul fast float %5239, %5181
  %5241 = fmul fast float %5240, %5236
  %5242 = fmul fast float %4598, 4.000000e+00
  %5243 = fmul fast float %5242, %5182
  %5244 = fmul fast float %5243, %5237
  %5245 = fmul fast float %4602, 4.000000e+00
  %5246 = fmul fast float %5245, %5183
  %5247 = fmul fast float %5246, %5238
  %5248 = fadd fast float %5241, %5228
  %5249 = fadd fast float %5244, %5229
  %5250 = fadd fast float %5247, %5230
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  br label %5254

; <label>:5254                                    ; preds = %5231, %5214
  %5255 = phi float [ %5251, %5231 ], [ %5228, %5214 ]
  %5256 = phi float [ %5252, %5231 ], [ %5229, %5214 ]
  %5257 = phi float [ %5253, %5231 ], [ %5230, %5214 ]
  %5258 = call float @dx.op.binary.f32(i32 35, float %5256, float %5257)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 35, float %5255, float %5258)  ; FMax(a,b)
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5215, %5172
  %5262 = fmul fast float %5216, %5172
  %5263 = fmul fast float %5217, %5172
  %5264 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = fcmp fast ogt float %5264, 0x3E7FF19E20000000
  %5266 = fdiv fast float 1.000000e+00, %5264
  %5267 = select i1 %5265, float %5266, float 0.000000e+00
  %5268 = fmul fast float %5267, %4591
  %5269 = fmul fast float %5267, %4592
  %5270 = fmul fast float %5267, %4593
  %5271 = fadd fast float %5268, -1.000000e+00
  %5272 = fadd fast float %5269, -1.000000e+00
  %5273 = fadd fast float %5270, -1.000000e+00
  %5274 = fmul fast float %5271, 5.000000e-01
  %5275 = fmul fast float %5272, 5.000000e-01
  %5276 = fmul fast float %5273, 5.000000e-01
  %5277 = fadd fast float %5274, 1.000000e+00
  %5278 = fadd fast float %5275, 1.000000e+00
  %5279 = fadd fast float %5276, 1.000000e+00
  %5280 = fsub fast float 1.000000e+00, %5105
  %5281 = bitcast float %5280 to i32
  %5282 = sitofp i32 %5281 to float
  %5283 = fmul fast float %5282, 5.000000e+00
  %5284 = fadd fast float %5283, 0xC1EFBF8940000000
  %5285 = fptosi float %5284 to i32
  %5286 = bitcast i32 %5285 to float
  %5287 = fmul fast float %5286, %3990
  %5288 = fmul fast float %5260, %5287
  %5289 = fmul fast float %5288, %5277
  %5290 = fmul fast float %5288, %5278
  %5291 = fmul fast float %5288, %5279
  %5292 = fadd fast float %5289, %5261
  %5293 = fadd fast float %5290, %5262
  %5294 = fadd fast float %5291, %5263
  %5295 = fmul fast float %5093, %3986
  %5296 = fmul fast float %5295, %5111
  %5297 = fmul fast float %5296, %5260
  %5298 = fmul fast float %5094, %3986
  %5299 = fmul fast float %5298, %5111
  %5300 = fmul fast float %5299, %5260
  %5301 = fmul fast float %5095, %3986
  %5302 = fmul fast float %5301, %5111
  %5303 = fmul fast float %5302, %5260
  %5304 = fadd fast float %5297, %4932
  %5305 = fadd fast float %5300, %4933
  %5306 = fadd fast float %5303, %4934
  %5307 = fmul fast float %5296, %5292
  %5308 = fmul fast float %5299, %5293
  %5309 = fmul fast float %5302, %5294
  %5310 = fadd fast float %5307, %4929
  %5311 = fadd fast float %5308, %4930
  %5312 = fadd fast float %5309, %4931
  br label %5007

; <label>:5313                                    ; preds = %5007
  br label %5314

; <label>:5314                                    ; preds = %5313, %4895
  %5315 = phi float [ %4897, %4895 ], [ %5008, %5313 ]
  %5316 = phi float [ %4898, %4895 ], [ %5009, %5313 ]
  %5317 = phi float [ %4899, %4895 ], [ %5010, %5313 ]
  %5318 = phi float [ %4900, %4895 ], [ %5011, %5313 ]
  %5319 = phi float [ %4901, %4895 ], [ %5012, %5313 ]
  %5320 = phi float [ %4902, %4895 ], [ %5013, %5313 ]
  %5321 = add i32 %4896, 1
  %5322 = icmp ugt i32 %5321, %4892
  br i1 %5322, label %5323, label %4895

; <label>:5323                                    ; preds = %5314
  br label %5324

; <label>:5324                                    ; preds = %5323, %4871, %4861
  %5325 = phi float [ %4862, %4861 ], [ %4862, %4871 ], [ %5315, %5323 ]
  %5326 = phi float [ %4863, %4861 ], [ %4863, %4871 ], [ %5316, %5323 ]
  %5327 = phi float [ %4864, %4861 ], [ %4864, %4871 ], [ %5317, %5323 ]
  %5328 = phi float [ %4865, %4861 ], [ %4865, %4871 ], [ %5318, %5323 ]
  %5329 = phi float [ %4866, %4861 ], [ %4866, %4871 ], [ %5319, %5323 ]
  %5330 = phi float [ %4867, %4861 ], [ %4867, %4871 ], [ %5320, %5323 ]
  %5331 = call float @dx.op.unary.f32(i32 24, float %4591)  ; Sqrt(value)
  %5332 = call float @dx.op.unary.f32(i32 24, float %4592)  ; Sqrt(value)
  %5333 = call float @dx.op.unary.f32(i32 24, float %4593)  ; Sqrt(value)
  %5334 = fmul fast float %5331, %5328
  %5335 = fmul fast float %5332, %5329
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  br i1 %158, label %5338, label %5359

; <label>:5338                                    ; preds = %5324
  %5339 = fadd fast float %5330, %3992
  %5340 = fmul fast float %5339, %3993
  %5341 = fsub fast float 1.000000e+00, %3993
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5345 = fmul fast float %5344, %5342
  %5346 = fadd fast float %5345, %5340
  %5347 = fsub fast float 1.000000e+00, %4604
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = fmul fast float %5349, %5347
  %5351 = fsub fast float %5346, %5350
  %5352 = fadd fast float %5335, %5334
  %5353 = fmul fast float %5337, %5352
  %5354 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5355 = fsub fast float %5351, %5354
  %5356 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5357 = fmul fast float %5355, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  br label %5375

; <label>:5359                                    ; preds = %5324
  %5360 = fmul fast float %5333, %5330
  %5361 = fmul fast float %5337, %5334
  %5362 = fmul fast float %5337, %5335
  %5363 = fmul fast float %5360, %5337
  %5364 = add i32 %33, 356
  %5365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.i32 %5365, 0
  %5367 = and i32 %5366, 32
  %5368 = icmp eq i32 %5367, 0
  br i1 %5368, label %5375, label %5369

; <label>:5369                                    ; preds = %5359
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = fmul fast float %5371, 0x3FE99999A0000000
  %5373 = fadd fast float %5371, %5361
  %5374 = fadd fast float %5372, %5363
  br label %5375

; <label>:5375                                    ; preds = %5369, %5359, %5338
  %5376 = phi float [ %5353, %5338 ], [ %5373, %5369 ], [ %5361, %5359 ]
  %5377 = phi float [ %5358, %5338 ], [ %5362, %5369 ], [ %5362, %5359 ]
  %5378 = phi float [ 1.000000e+00, %5338 ], [ %5374, %5369 ], [ %5363, %5359 ]
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = fmul fast float %5380, %5326
  %5382 = fmul fast float %5380, %5327
  %5383 = fadd fast float %5326, %5325
  %5384 = select i1 %158, float %5383, float %5325
  %5385 = fmul float %5384, %5380
  %5386 = select i1 %158, float 0.000000e+00, float %5381
  %5387 = select i1 %158, float 0.000000e+00, float %5382
  %5388 = fmul fast float %5376, %5331
  %5389 = fmul fast float %5377, %5332
  %5390 = fmul fast float %5378, %5333
  %5391 = fadd fast float %5385, %5388
  %5392 = fadd fast float %5386, %5389
  %5393 = fadd fast float %5387, %5390
  %5394 = select i1 %158, float %5377, float %5392
  %5395 = select i1 %158, float %5378, float %5393
  %5396 = call float @dx.op.binary.f32(i32 36, float %5391, float 3.225500e+04)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5394, float 3.225500e+04)  ; FMin(a,b)
  %5398 = call float @dx.op.binary.f32(i32 36, float %5395, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
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
!62 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !52, i8 2, i32 1, i8 3, i32 5, i8 0, null}
!63 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
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

