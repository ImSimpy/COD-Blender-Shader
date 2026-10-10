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
; shader hash: 48a19fb673d4f98ee247b0524b9100e3
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
  %546 = add i32 %33, 424
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
  %569 = add i32 %33, 504
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
  %767 = add i32 %33, 440
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
  %851 = add i32 %33, 456
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
  br i1 %378, label %1755, label %914

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
  br i1 %923, label %1755, label %924

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
  %1143 = add i32 %33, 492
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
  %1195 = add i32 %33, 476
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
  br i1 %1212, label %1755, label %1213

; <label>:1213                                    ; preds = %1210
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 16
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1416, label %1218

; <label>:1218                                    ; preds = %1213
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %33, 428
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
  %1244 = add i32 %33, 508
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
  %1442 = add i32 %33, 444
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
  %1526 = add i32 %33, 460
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
  %1562 = add i32 %33, 112
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = lshr i32 %1564, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = fmul fast float %1569, %1570
  %1572 = fadd fast float %1571, %1566
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  br i1 %915, label %1575, label %1583

; <label>:1575                                    ; preds = %1558
  %1576 = fsub fast float 1.000000e+00, %1211
  %1577 = fmul fast float %1576, %903
  %1578 = fmul fast float %1576, %904
  %1579 = fmul fast float %1576, %905
  %1580 = fmul fast float %1576, %906
  %1581 = fmul fast float %1576, %907
  %1582 = fmul fast float %1576, %908
  br label %1583

; <label>:1583                                    ; preds = %1575, %1558
  %1584 = phi float [ %1577, %1575 ], [ %903, %1558 ]
  %1585 = phi float [ %1578, %1575 ], [ %904, %1558 ]
  %1586 = phi float [ %1579, %1575 ], [ %905, %1558 ]
  %1587 = phi float [ %1580, %1575 ], [ %906, %1558 ]
  %1588 = phi float [ %1581, %1575 ], [ %907, %1558 ]
  %1589 = phi float [ %1582, %1575 ], [ %908, %1558 ]
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 3
  %1593 = icmp eq i32 %1592, 3
  br i1 %1593, label %1672, label %1594

; <label>:1594                                    ; preds = %1583
  %1595 = and i32 %1591, 16
  %1596 = icmp ne i32 %1595, 0
  %1597 = select i1 %1596, float %1211, float 0.000000e+00
  %1598 = icmp eq i32 %1592, 0
  br i1 %1598, label %1599, label %1627

; <label>:1599                                    ; preds = %1594
  %1600 = and i32 %1591, 64
  %1601 = icmp ne i32 %1600, 0
  %1602 = select i1 %1601, float %1211, float 0.000000e+00
  %1603 = fsub fast float %1431, %1584
  %1604 = fsub fast float %1432, %1585
  %1605 = fsub fast float %1433, %1586
  %1606 = fmul fast float %1597, %1603
  %1607 = fmul fast float %1597, %1604
  %1608 = fmul fast float %1597, %1605
  %1609 = fadd fast float %1606, %1584
  %1610 = fadd fast float %1607, %1585
  %1611 = fadd fast float %1608, %1586
  %1612 = fsub fast float %1417, %909
  %1613 = fmul fast float %1597, %1612
  %1614 = fadd fast float %1613, %909
  %1615 = fsub fast float %1559, %1587
  %1616 = fsub fast float %1560, %1588
  %1617 = fsub fast float %1561, %1589
  %1618 = fmul fast float %1602, %1615
  %1619 = fmul fast float %1602, %1616
  %1620 = fmul fast float %1602, %1617
  %1621 = fadd fast float %1618, %1587
  %1622 = fadd fast float %1619, %1588
  %1623 = fadd fast float %1620, %1589
  %1624 = fsub fast float %1574, %913
  %1625 = fmul fast float %1597, %1624
  %1626 = fadd fast float %1625, %913
  br label %1672

; <label>:1627                                    ; preds = %1594
  %1628 = icmp eq i32 %1592, 1
  br i1 %1628, label %1629, label %1642

; <label>:1629                                    ; preds = %1627
  %1630 = fadd fast float %1431, -1.000000e+00
  %1631 = fadd fast float %1432, -1.000000e+00
  %1632 = fadd fast float %1433, -1.000000e+00
  %1633 = fmul fast float %1597, %1630
  %1634 = fmul fast float %1597, %1631
  %1635 = fmul fast float %1597, %1632
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fadd fast float %1634, 1.000000e+00
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fmul fast float %1636, %1584
  %1640 = fmul fast float %1637, %1585
  %1641 = fmul fast float %1638, %1586
  br label %1672

; <label>:1642                                    ; preds = %1627
  %1643 = icmp eq i32 %1592, 2
  br i1 %1643, label %1644, label %1672

; <label>:1644                                    ; preds = %1642
  %1645 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1646 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1647 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1648 = fadd fast float %1645, -5.000000e-01
  %1649 = fadd fast float %1646, -5.000000e-01
  %1650 = fadd fast float %1647, -5.000000e-01
  %1651 = fmul fast float %1648, %1597
  %1652 = fmul fast float %1649, %1597
  %1653 = fmul fast float %1650, %1597
  %1654 = fadd fast float %1651, 5.000000e-01
  %1655 = fadd fast float %1652, 5.000000e-01
  %1656 = fadd fast float %1653, 5.000000e-01
  %1657 = fmul fast float %1654, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1584
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1584
  %1662 = fmul fast float %1655, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1585
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1585
  %1667 = fmul fast float %1656, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1668, %1586
  %1670 = fadd fast float %1669, %1667
  %1671 = fmul fast float %1670, %1586
  br label %1672

; <label>:1672                                    ; preds = %1644, %1642, %1629, %1599, %1583
  %1673 = phi float [ %1584, %1583 ], [ %1661, %1644 ], [ %1584, %1642 ], [ %1639, %1629 ], [ %1609, %1599 ]
  %1674 = phi float [ %1585, %1583 ], [ %1666, %1644 ], [ %1585, %1642 ], [ %1640, %1629 ], [ %1610, %1599 ]
  %1675 = phi float [ %1586, %1583 ], [ %1671, %1644 ], [ %1586, %1642 ], [ %1641, %1629 ], [ %1611, %1599 ]
  %1676 = phi float [ %1587, %1583 ], [ %1587, %1644 ], [ %1587, %1642 ], [ %1587, %1629 ], [ %1621, %1599 ]
  %1677 = phi float [ %1588, %1583 ], [ %1588, %1644 ], [ %1588, %1642 ], [ %1588, %1629 ], [ %1622, %1599 ]
  %1678 = phi float [ %1589, %1583 ], [ %1589, %1644 ], [ %1589, %1642 ], [ %1589, %1629 ], [ %1623, %1599 ]
  %1679 = phi float [ %909, %1583 ], [ %909, %1644 ], [ %909, %1642 ], [ %909, %1629 ], [ %1614, %1599 ]
  %1680 = phi float [ %913, %1583 ], [ %913, %1644 ], [ %913, %1642 ], [ %913, %1629 ], [ %1626, %1599 ]
  %1681 = and i32 %1591, 12
  %1682 = icmp eq i32 %1681, 12
  br i1 %1682, label %1755, label %1683

; <label>:1683                                    ; preds = %1672
  %1684 = and i32 %1591, 2097184
  %1685 = icmp eq i32 %1684, 2097184
  %1686 = select i1 %1685, float %1211, float 0.000000e+00
  %1687 = and i32 %1591, 4194336
  %1688 = icmp eq i32 %1687, 4194336
  %1689 = select i1 %1688, float %1211, float 0.000000e+00
  %1690 = and i32 %1591, 8388640
  %1691 = icmp eq i32 %1690, 8388640
  %1692 = select i1 %1691, float %1211, float 0.000000e+00
  %1693 = icmp eq i32 %1681, 0
  br i1 %1693, label %1694, label %1707

; <label>:1694                                    ; preds = %1683
  %1695 = fsub fast float %1512, %901
  %1696 = fsub fast float %1513, %902
  %1697 = fmul fast float %1686, %1695
  %1698 = fmul fast float %1686, %1696
  %1699 = fadd fast float %1697, %901
  %1700 = fadd fast float %1698, %902
  %1701 = fsub fast float %1514, %912
  %1702 = fmul fast float %1689, %1701
  %1703 = fadd fast float %1702, %912
  %1704 = fsub fast float %1511, %911
  %1705 = fmul fast float %1692, %1704
  %1706 = fadd fast float %1705, %911
  br label %1755

; <label>:1707                                    ; preds = %1683
  %1708 = icmp eq i32 %1681, 4
  br i1 %1708, label %1709, label %1741

; <label>:1709                                    ; preds = %1707
  %1710 = fmul fast float %1686, %1512
  %1711 = fmul fast float %1686, %1513
  %1712 = fadd fast float %1710, %901
  %1713 = fadd fast float %1711, %902
  %1714 = call float @dx.op.binary.f32(i32 36, float %912, float %1514)  ; FMin(a,b)
  %1715 = fsub fast float %1714, %912
  %1716 = fmul fast float %1715, %1689
  %1717 = fadd fast float %1716, %912
  %1718 = fadd fast float %1511, %911
  %1719 = fmul fast float %1718, 0x3FF337FAE0000000
  %1720 = fmul fast float %911, %911
  %1721 = fmul fast float %1511, %1511
  %1722 = fadd fast float %1721, %1720
  %1723 = fmul fast float %1722, 0x3FE5152B00000000
  %1724 = fmul fast float %911, 0xBFCC1F85E0000000
  %1725 = fmul fast float %1724, %1511
  %1726 = fadd fast float %1725, 0xBFE1363700000000
  %1727 = fadd fast float %1726, %1719
  %1728 = fsub fast float %1727, %1723
  %1729 = fmul fast float %1718, 0x3FBA6F0D00000000
  %1730 = fmul fast float %1722, 0x3FD0432880000000
  %1731 = fmul fast float %911, 0xBFEF110800000000
  %1732 = fmul fast float %1731, %1511
  %1733 = fadd fast float %1732, 1.000000e+00
  %1734 = fsub fast float %1733, %1729
  %1735 = fadd fast float %1734, %1730
  %1736 = fdiv fast float %1728, %1735
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fsub fast float %1737, %911
  %1739 = fmul fast float %1738, %1692
  %1740 = fadd fast float %1739, %911
  br label %1755

; <label>:1741                                    ; preds = %1707
  %1742 = icmp eq i32 %1681, 8
  br i1 %1742, label %1743, label %1755

; <label>:1743                                    ; preds = %1741
  %1744 = fmul fast float %1686, %1512
  %1745 = fmul fast float %1686, %1513
  %1746 = fadd fast float %1744, %901
  %1747 = fadd fast float %1745, %902
  %1748 = call float @dx.op.binary.f32(i32 36, float %912, float %1514)  ; FMin(a,b)
  %1749 = fsub fast float %1748, %912
  %1750 = fmul fast float %1749, %1689
  %1751 = fadd fast float %1750, %912
  %1752 = fsub fast float %1511, %911
  %1753 = fmul fast float %1692, %1752
  %1754 = fadd fast float %1753, %911
  br label %1755

; <label>:1755                                    ; preds = %1743, %1741, %1709, %1694, %1672, %1210, %914, %900
  %1756 = phi float [ %901, %1672 ], [ %901, %1210 ], [ %901, %900 ], [ %1746, %1743 ], [ %901, %1741 ], [ %1712, %1709 ], [ %1699, %1694 ], [ %901, %914 ]
  %1757 = phi float [ %902, %1672 ], [ %902, %1210 ], [ %902, %900 ], [ %1747, %1743 ], [ %902, %1741 ], [ %1713, %1709 ], [ %1700, %1694 ], [ %902, %914 ]
  %1758 = phi float [ %1673, %1672 ], [ %903, %1210 ], [ %903, %900 ], [ %1673, %1743 ], [ %1673, %1741 ], [ %1673, %1709 ], [ %1673, %1694 ], [ %903, %914 ]
  %1759 = phi float [ %1674, %1672 ], [ %904, %1210 ], [ %904, %900 ], [ %1674, %1743 ], [ %1674, %1741 ], [ %1674, %1709 ], [ %1674, %1694 ], [ %904, %914 ]
  %1760 = phi float [ %1675, %1672 ], [ %905, %1210 ], [ %905, %900 ], [ %1675, %1743 ], [ %1675, %1741 ], [ %1675, %1709 ], [ %1675, %1694 ], [ %905, %914 ]
  %1761 = phi float [ %1676, %1672 ], [ %906, %1210 ], [ %906, %900 ], [ %1676, %1743 ], [ %1676, %1741 ], [ %1676, %1709 ], [ %1676, %1694 ], [ %906, %914 ]
  %1762 = phi float [ %1677, %1672 ], [ %907, %1210 ], [ %907, %900 ], [ %1677, %1743 ], [ %1677, %1741 ], [ %1677, %1709 ], [ %1677, %1694 ], [ %907, %914 ]
  %1763 = phi float [ %1678, %1672 ], [ %908, %1210 ], [ %908, %900 ], [ %1678, %1743 ], [ %1678, %1741 ], [ %1678, %1709 ], [ %1678, %1694 ], [ %908, %914 ]
  %1764 = phi float [ %1679, %1672 ], [ %909, %1210 ], [ %909, %900 ], [ %1679, %1743 ], [ %1679, %1741 ], [ %1679, %1709 ], [ %1679, %1694 ], [ %909, %914 ]
  %1765 = phi float [ %911, %1672 ], [ %911, %1210 ], [ %911, %900 ], [ %1754, %1743 ], [ %911, %1741 ], [ %1740, %1709 ], [ %1706, %1694 ], [ %911, %914 ]
  %1766 = phi float [ %912, %1672 ], [ %912, %1210 ], [ %912, %900 ], [ %1751, %1743 ], [ %912, %1741 ], [ %1717, %1709 ], [ %1703, %1694 ], [ %912, %914 ]
  %1767 = phi float [ %1680, %1672 ], [ %913, %1210 ], [ %913, %900 ], [ %1680, %1743 ], [ %1680, %1741 ], [ %1680, %1709 ], [ %1680, %1694 ], [ %913, %914 ]
  br i1 %380, label %2609, label %1768

; <label>:1768                                    ; preds = %1755
  %1769 = icmp ult i32 %433, 3
  %1770 = add i32 %33, 56
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = add i32 %33, 60
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = or i32 %1775, %1772
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %2609, label %1778

; <label>:1778                                    ; preds = %1768
  %1779 = and i32 %1772, 262144
  %1780 = icmp ne i32 %1779, 0
  %1781 = select i1 %1780, float %36, float 1.000000e+00
  %1782 = select i1 %1780, float %37, float 0.000000e+00
  %1783 = select i1 %1780, float %38, float 0.000000e+00
  %1784 = select i1 %1780, float %39, float 1.000000e+00
  %1785 = select i1 %1780, float %40, float %56
  %1786 = select i1 %1780, float %41, float %57
  %1787 = add i32 %33, 316
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 16
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = fmul fast float %1791, 0x3F50624DE0000000
  %1793 = add i32 %33, 120
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = lshr i32 %1795, 16
  %1797 = and i32 %1796, 255
  %1798 = lshr i32 %1795, 24
  %1799 = add i32 %33, 324
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = lshr i32 %1801, 16
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = add i32 %33, 64
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = lshr i32 %1808, 22
  %1810 = shl nuw nsw i32 %1809, 5
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = shl i32 %1808, 4
  %1813 = and i32 %1812, 32752
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %1808, 7
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 3
  %1820 = fmul fast float %1819, 1.000000e+03
  %1821 = fmul fast float %330, %1820
  %1822 = call float @dx.op.unary.f32(i32 22, float %1821)  ; Frc(value)
  %1823 = fadd fast float %1822, %320
  %1824 = fmul fast float %331, %1820
  %1825 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1826 = fadd fast float %1825, %322
  %1827 = fmul fast float %1792, %1820
  %1828 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1829 = fmul fast float %1828, 0x401921FB60000000
  %1830 = fadd fast float %1829, %1811
  %1831 = call float @dx.op.unary.f32(i32 13, float %1830)  ; Sin(value)
  %1832 = call float @dx.op.unary.f32(i32 12, float %1830)  ; Cos(value)
  %1833 = fsub fast float -0.000000e+00, %1831
  %1834 = fadd fast float %1785, -5.000000e-01
  %1835 = fadd fast float %1786, -5.000000e-01
  %1836 = fmul fast float %1803, %1834
  %1837 = fmul fast float %1805, %1835
  %1838 = fadd fast float %1836, 5.000000e-01
  %1839 = fadd fast float %1837, 5.000000e-01
  %1840 = fmul fast float %1814, %1838
  %1841 = fmul fast float %1817, %1839
  %1842 = fmul fast float %1832, %1840
  %1843 = call float @dx.op.tertiary.f32(i32 46, float %1833, float %1841, float %1842)  ; FMad(a,b,c)
  %1844 = fmul fast float %1831, %1840
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1832, float %1841, float %1844)  ; FMad(a,b,c)
  %1846 = fadd fast float %1823, %1843
  %1847 = fadd fast float %1826, %1845
  %1848 = icmp ugt i32 %1797, 1
  %1849 = icmp ugt i32 %1795, 33554431
  %1850 = or i1 %1849, %1848
  br i1 %1850, label %1851, label %1876

; <label>:1851                                    ; preds = %1778
  %1852 = add i32 %33, 260
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = lshr i32 %1854, 16
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = fmul fast float %1819, %1856
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = mul nuw nsw i32 %1797, %1798
  %1860 = uitofp i32 %1859 to float
  %1861 = fmul fast float %1858, %1860
  %1862 = call float @dx.op.unary.f32(i32 27, float %1861)  ; Round_ni(value)
  %1863 = fptoui float %1862 to i32
  %1864 = urem i32 %1863, %1797
  %1865 = udiv i32 %1863, %1798
  %1866 = call float @dx.op.unary.f32(i32 22, float %1846)  ; Frc(value)
  %1867 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1868 = uitofp i32 %1864 to float
  %1869 = uitofp i32 %1865 to float
  %1870 = fadd fast float %1866, %1868
  %1871 = fadd fast float %1867, %1869
  %1872 = uitofp i32 %1797 to float
  %1873 = uitofp i32 %1798 to float
  %1874 = fdiv fast float %1870, %1872
  %1875 = fdiv fast float %1871, %1873
  br label %1876

; <label>:1876                                    ; preds = %1851, %1778
  %1877 = phi float [ %1874, %1851 ], [ %1846, %1778 ]
  %1878 = phi float [ %1875, %1851 ], [ %1847, %1778 ]
  %1879 = and i32 %1772, 16777216
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1990, label %1881

; <label>:1881                                    ; preds = %1876
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = fadd fast float %1883, %131
  %1887 = fadd fast float %1884, %132
  %1888 = fadd fast float %1885, %133
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = icmp eq i32 %34, 65535
  br i1 %1892, label %1987, label %1893

; <label>:1893                                    ; preds = %1881
  %1894 = lshr i32 %34, 1
  %1895 = shl i32 %1894, 2
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %34, 1
  %1899 = icmp ne i32 %1898, 0
  %1900 = lshr i32 %1897, 16
  %1901 = and i32 %1897, 65535
  %1902 = select i1 %1899, i32 %1900, i32 %1901
  %1903 = icmp eq i32 %1902, 65535
  br i1 %1903, label %1983, label %1904

; <label>:1904                                    ; preds = %1893
  %1905 = mul nuw nsw i32 %1902, 40
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = add nuw nsw i32 %1905, 12
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = add nuw nsw i32 %1905, 24
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = add nuw nsw i32 %1905, 36
  %1921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = fsub fast float %1886, %1907
  %1924 = fsub fast float %1887, %1908
  %1925 = fsub fast float %1888, %1909
  %1926 = fmul fast float %1922, %1923
  %1927 = fmul fast float %1922, %1924
  %1928 = fmul fast float %1922, %1925
  %1929 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1930 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1931 = call float @dx.op.unary.f32(i32 27, float %1928)  ; Round_ni(value)
  %1932 = fadd fast float %1929, 5.000000e-01
  %1933 = fadd fast float %1930, 5.000000e-01
  %1934 = fadd fast float %1931, 5.000000e-01
  %1935 = fmul fast float %1932, %1912
  %1936 = fmul fast float %1933, %1913
  %1937 = fmul fast float %1934, %1914
  %1938 = shl i32 %34, 2
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1944 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1945 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1942, %dx.types.Handle %30, float %1943, float %1944, float %1945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.ResRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.ResRet.f32 %1946, 2
  %1950 = fmul fast float %1947, 1.023000e+03
  %1951 = fmul fast float %1948, 1.023000e+03
  %1952 = fmul fast float %1949, 1.023000e+03
  %1953 = fadd fast float %1950, 5.000000e-01
  %1954 = fadd fast float %1951, 5.000000e-01
  %1955 = fadd fast float %1952, 5.000000e-01
  %1956 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1957 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1958 = call float @dx.op.unary.f32(i32 27, float %1955)  ; Round_ni(value)
  %1959 = fsub fast float %1926, %1929
  %1960 = fsub fast float %1927, %1930
  %1961 = fsub fast float %1928, %1931
  %1962 = fmul fast float %1959, 7.500000e-01
  %1963 = fmul fast float %1960, 7.500000e-01
  %1964 = fmul fast float %1961, 7.500000e-01
  %1965 = fadd fast float %1929, 1.250000e-01
  %1966 = fadd fast float %1965, %1962
  %1967 = fadd fast float %1966, %1956
  %1968 = fadd fast float %1930, 1.250000e-01
  %1969 = fadd fast float %1968, %1963
  %1970 = fadd fast float %1969, %1957
  %1971 = fadd fast float %1931, 1.250000e-01
  %1972 = fadd fast float %1971, %1964
  %1973 = fadd fast float %1972, %1958
  %1974 = fmul fast float %1967, %1917
  %1975 = fmul fast float %1970, %1918
  %1976 = fmul fast float %1973, %1919
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = add i32 %1978, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1980, %dx.types.Handle %28, float %1974, float %1975, float %1976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  br label %1983

; <label>:1983                                    ; preds = %1904, %1893
  %1984 = phi float [ %1982, %1904 ], [ -1.000000e+00, %1893 ]
  %1985 = fadd fast float %1984, %1891
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  br label %1987

; <label>:1987                                    ; preds = %1983, %1881
  %1988 = phi float [ %1986, %1983 ], [ %1891, %1881 ]
  %1989 = fmul fast float %1988, %429
  br label %1990

; <label>:1990                                    ; preds = %1987, %1876
  %1991 = phi float [ %1989, %1987 ], [ %429, %1876 ]
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = and i32 %1993, 256
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2042, label %1996

; <label>:1996                                    ; preds = %1990
  %1997 = add i32 %33, 496
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %1999, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2001, %dx.types.Handle %65, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = add i32 %33, 132
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = shl i32 %2006, 4
  %2008 = and i32 %2007, 32752
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = lshr i32 %2006, 7
  %2011 = and i32 %2010, 32752
  %2012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2011)  ; LegacyF16ToF32(value)
  %2013 = fsub fast float 1.000000e+00, %1991
  %2014 = call float @dx.op.binary.f32(i32 35, float %2013, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2015 = bitcast float %1991 to i32
  %2016 = sitofp i32 %2015 to float
  %2017 = fadd fast float %2016, 0xC1CFBF8940000000
  %2018 = fmul fast float %2012, %2017
  %2019 = fadd fast float %2018, 0x41CFBF8940000000
  %2020 = fptosi float %2019 to i32
  %2021 = bitcast i32 %2020 to float
  %2022 = bitcast float %2014 to i32
  %2023 = sitofp i32 %2022 to float
  %2024 = fadd fast float %2023, 0xC1CFBF8940000000
  %2025 = fmul fast float %2024, %2012
  %2026 = fadd fast float %2025, 0x41CFBF8940000000
  %2027 = fptosi float %2026 to i32
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %2021, %2009
  %2030 = fmul fast float %2028, %2009
  %2031 = fsub fast float %2014, %2029
  %2032 = fadd fast float %2030, %2014
  %2033 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2035 = fsub fast float %2003, %2033
  %2036 = fsub fast float %2034, %2033
  %2037 = bitcast float %2036 to i32
  %2038 = sub nsw i32 2129859010, %2037
  %2039 = bitcast i32 %2038 to float
  %2040 = fmul fast float %2039, %2035
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  br label %2042

; <label>:2042                                    ; preds = %1996, %1990
  %2043 = phi float [ %2041, %1996 ], [ %1991, %1990 ]
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 128
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2064, label %2048

; <label>:2048                                    ; preds = %2042
  %2049 = add i32 %33, 480
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = add i32 %2051, 0
  %2053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2053, %dx.types.Handle %65, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 524288
  %2059 = icmp ne i32 %2058, 0
  %2060 = fcmp fast ogt float %2055, 0x3FE0101020000000
  %2061 = select i1 %2060, float 1.000000e+00, float 0.000000e+00
  %2062 = select i1 %2059, float %2061, float %2055
  %2063 = fmul fast float %2062, %2043
  br label %2064

; <label>:2064                                    ; preds = %2048, %2042
  %2065 = phi float [ %2063, %2048 ], [ %2043, %2042 ]
  %2066 = fcmp fast ult float %2065, 0x3F70101020000000
  br i1 %2066, label %2609, label %2067

; <label>:2067                                    ; preds = %2064
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 16
  %2071 = icmp eq i32 %2070, 0
  br i1 %2071, label %2270, label %2072

; <label>:2072                                    ; preds = %2067
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = add i32 %33, 432
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %2077, 0
  %2079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2079, %dx.types.Handle %64, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = extractvalue %dx.types.ResRet.f32 %2080, 3
  %2085 = and i32 %2074, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = lshr i32 %2074, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2084, %2086
  %2091 = fadd fast float %2090, %2089
  %2092 = fmul fast float %2091, 0x3F70101000000000
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 512
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2105, label %2097

; <label>:2097                                    ; preds = %2072
  %2098 = add i32 %33, 512
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %2100, 0
  %2102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2102, %dx.types.Handle %65, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  br label %2105

; <label>:2105                                    ; preds = %2097, %2072
  %2106 = phi float [ %2104, %2097 ], [ 1.000000e+00, %2072 ]
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 33554432
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2217, label %2111

; <label>:2111                                    ; preds = %2105
  %2112 = add i32 %33, 256
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = and i32 %2114, 65535
  %2116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2115)  ; LegacyF16ToF32(value)
  %2117 = lshr i32 %2114, 16
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = add i32 %33, 260
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 65535
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = lshr i32 %2125, 24
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = and i32 %2125, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2125, 8
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = lshr i32 %2125, 16
  %2137 = and i32 %2136, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = add i32 %33, 252
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = lshr i32 %2142, 24
  %2144 = uitofp i32 %2143 to float
  %2145 = fmul fast float %2144, 0x3F70101020000000
  %2146 = and i32 %2142, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = lshr i32 %2142, 8
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = fmul fast float %2151, 0x3F70101020000000
  %2153 = lshr i32 %2142, 16
  %2154 = and i32 %2153, 255
  %2155 = uitofp i32 %2154 to float
  %2156 = fmul fast float %2155, 0x3F70101020000000
  %2157 = bitcast float %2081 to i32
  %2158 = ashr i32 %2157, 1
  %2159 = sub nsw i32 1597463174, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2081, 5.000000e-01
  %2162 = fmul fast float %2160, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float 1.500000e+00, %2163
  %2165 = fmul fast float %2160, %2081
  %2166 = fmul fast float %2165, %2164
  %2167 = bitcast float %2082 to i32
  %2168 = ashr i32 %2167, 1
  %2169 = sub nsw i32 1597463174, %2168
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2082, 5.000000e-01
  %2172 = fmul fast float %2170, %2170
  %2173 = fmul fast float %2172, %2171
  %2174 = fsub fast float 1.500000e+00, %2173
  %2175 = fmul fast float %2170, %2082
  %2176 = fmul fast float %2175, %2174
  %2177 = bitcast float %2083 to i32
  %2178 = ashr i32 %2177, 1
  %2179 = sub nsw i32 1597463174, %2178
  %2180 = bitcast i32 %2179 to float
  %2181 = fmul fast float %2083, 5.000000e-01
  %2182 = fmul fast float %2180, %2180
  %2183 = fmul fast float %2182, %2181
  %2184 = fsub fast float 1.500000e+00, %2183
  %2185 = fmul fast float %2180, %2083
  %2186 = fmul fast float %2185, %2184
  %2187 = fsub fast float %2166, %2148
  %2188 = fsub fast float %2176, %2152
  %2189 = fsub fast float %2186, %2156
  %2190 = fmul fast float %2187, %2116
  %2191 = fmul fast float %2188, %2118
  %2192 = fmul fast float %2189, %2123
  %2193 = fadd fast float %2190, %2131
  %2194 = fadd fast float %2191, %2135
  %2195 = fadd fast float %2192, %2139
  %2196 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2197 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  %2198 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2199 = fmul fast float %2196, %2196
  %2200 = fmul fast float %2197, %2197
  %2201 = fmul fast float %2198, %2198
  %2202 = fsub fast float %2199, %2081
  %2203 = fsub fast float %2200, %2082
  %2204 = fsub fast float %2201, %2083
  %2205 = fmul fast float %2202, %2106
  %2206 = fmul fast float %2203, %2106
  %2207 = fmul fast float %2204, %2106
  %2208 = fadd fast float %2205, %2081
  %2209 = fadd fast float %2206, %2082
  %2210 = fadd fast float %2207, %2083
  %2211 = fadd fast float %2128, %2092
  %2212 = fsub fast float %2211, %2145
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fsub fast float %2213, %2092
  %2215 = fmul fast float %2214, %2106
  %2216 = fadd fast float %2215, %2092
  br label %2270

; <label>:2217                                    ; preds = %2105
  %2218 = and i32 %2108, 134217728
  %2219 = icmp eq i32 %2218, 0
  br i1 %2219, label %2254, label %2220

; <label>:2220                                    ; preds = %2217
  %2221 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2222 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2223 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2224 = fadd fast float %2221, -5.000000e-01
  %2225 = fadd fast float %2222, -5.000000e-01
  %2226 = fadd fast float %2223, -5.000000e-01
  %2227 = fmul fast float %2224, %2106
  %2228 = fmul fast float %2225, %2106
  %2229 = fmul fast float %2226, %2106
  %2230 = fadd fast float %2227, 5.000000e-01
  %2231 = fadd fast float %2228, 5.000000e-01
  %2232 = fadd fast float %2229, 5.000000e-01
  %2233 = call float @dx.op.unary.f32(i32 24, float %2081)  ; Sqrt(value)
  %2234 = call float @dx.op.unary.f32(i32 24, float %2082)  ; Sqrt(value)
  %2235 = call float @dx.op.unary.f32(i32 24, float %2083)  ; Sqrt(value)
  %2236 = fmul fast float %2230, 2.000000e+00
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2237, %2233
  %2239 = fadd fast float %2238, %2236
  %2240 = fmul fast float %2239, %2233
  %2241 = fmul fast float %2231, 2.000000e+00
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2242, %2234
  %2244 = fadd fast float %2243, %2241
  %2245 = fmul fast float %2244, %2234
  %2246 = fmul fast float %2232, 2.000000e+00
  %2247 = fsub fast float 1.000000e+00, %2246
  %2248 = fmul fast float %2247, %2235
  %2249 = fadd fast float %2248, %2246
  %2250 = fmul fast float %2249, %2235
  %2251 = fmul fast float %2240, %2240
  %2252 = fmul fast float %2245, %2245
  %2253 = fmul fast float %2250, %2250
  br label %2270

; <label>:2254                                    ; preds = %2217
  %2255 = fmul fast float %307, %307
  %2256 = fmul fast float %311, %311
  %2257 = fmul fast float %315, %315
  %2258 = fadd fast float %2255, -1.000000e+00
  %2259 = fadd fast float %2256, -1.000000e+00
  %2260 = fadd fast float %2257, -1.000000e+00
  %2261 = fmul fast float %2106, %2258
  %2262 = fmul fast float %2106, %2259
  %2263 = fmul fast float %2106, %2260
  %2264 = fadd fast float %2261, 1.000000e+00
  %2265 = fadd fast float %2262, 1.000000e+00
  %2266 = fadd fast float %2263, 1.000000e+00
  %2267 = fmul fast float %2264, %2081
  %2268 = fmul fast float %2265, %2082
  %2269 = fmul fast float %2266, %2083
  br label %2270

; <label>:2270                                    ; preds = %2254, %2220, %2111, %2067
  %2271 = phi float [ %2216, %2111 ], [ %2092, %2220 ], [ %2092, %2254 ], [ 0x3FA23C0BE0000000, %2067 ]
  %2272 = phi float [ %2208, %2111 ], [ %2251, %2220 ], [ %2267, %2254 ], [ 1.000000e+00, %2067 ]
  %2273 = phi float [ %2209, %2111 ], [ %2252, %2220 ], [ %2268, %2254 ], [ 1.000000e+00, %2067 ]
  %2274 = phi float [ %2210, %2111 ], [ %2253, %2220 ], [ %2269, %2254 ], [ 1.000000e+00, %2067 ]
  %2275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.i32 %2275, 1
  %2277 = and i32 %2276, 1
  %2278 = icmp ne i32 %2277, 0
  %2279 = add i32 %33, 356
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 32
  %2283 = icmp ne i32 %2282, 0
  %2284 = and i1 %2278, %2283
  %2285 = select i1 %2284, float 1.000000e+00, float %2272
  %2286 = select i1 %2284, float 0x3FD3333340000000, float %2273
  %2287 = select i1 %2284, float 0x3FD3333340000000, float %2274
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 32
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2364, label %2292

; <label>:2292                                    ; preds = %2270
  %2293 = add i32 %33, 124
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = add i32 %33, 448
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = add i32 %2298, 0
  %2300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2300, %dx.types.Handle %64, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.ResRet.f32 %2301, 1
  %2304 = extractvalue %dx.types.ResRet.f32 %2301, 2
  %2305 = extractvalue %dx.types.ResRet.f32 %2301, 3
  %2306 = and i32 %2295, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = lshr i32 %2295, 8
  %2309 = and i32 %2308, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = lshr i32 %2295, 16
  %2312 = and i32 %2311, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2313, 0x3F70101000000000
  %2315 = fmul fast float %2302, %2307
  %2316 = fadd fast float %2315, %2310
  %2317 = fmul fast float %2316, 0x3F70101000000000
  %2318 = fadd fast float %2303, -5.000000e-01
  %2319 = fadd fast float %2305, -5.000000e-01
  %2320 = fmul fast float %2318, %2314
  %2321 = fmul fast float %2319, %2314
  %2322 = fadd fast float %2320, 5.000000e-01
  %2323 = fadd fast float %2321, 5.000000e-01
  %2324 = fmul fast float %2322, 2.000000e+00
  %2325 = fadd fast float %2324, -1.000000e+00
  %2326 = fmul fast float %2323, 2.000000e+00
  %2327 = fadd fast float %2326, -1.000000e+00
  %2328 = fadd fast float %2325, %2327
  %2329 = fmul fast float %2328, 5.000000e-01
  %2330 = fsub fast float %2325, %2327
  %2331 = fmul fast float %2330, 5.000000e-01
  %2332 = call float @dx.op.unary.f32(i32 6, float %2329)  ; FAbs(value)
  %2333 = fsub fast float 1.000000e+00, %2332
  %2334 = call float @dx.op.unary.f32(i32 6, float %2331)  ; FAbs(value)
  %2335 = fsub fast float %2333, %2334
  %2336 = call float @dx.op.dot3.f32(i32 55, float %2329, float %2331, float %2335, float %2329, float %2331, float %2335)  ; Dot3(ax,ay,az,bx,by,bz)
  %2337 = call float @dx.op.unary.f32(i32 25, float %2336)  ; Rsqrt(value)
  %2338 = fmul fast float %2329, %2337
  %2339 = fmul fast float %2331, %2337
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 67108864
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2360, label %2344

; <label>:2344                                    ; preds = %2292
  %2345 = add i32 %33, 312
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 65535
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 65535
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = lshr i32 %2347, 16
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = fsub fast float %2317, %2355
  %2357 = fmul fast float %2356, %2349
  %2358 = fadd fast float %2357, %2353
  %2359 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  br label %2360

; <label>:2360                                    ; preds = %2344, %2292
  %2361 = phi float [ %2359, %2344 ], [ %2317, %2292 ]
  %2362 = call float @dx.op.dot2.f32(i32 54, float %2338, float %2339, float %1781, float %1782)  ; Dot2(ax,ay,bx,by)
  %2363 = call float @dx.op.dot2.f32(i32 54, float %2338, float %2339, float %1783, float %1784)  ; Dot2(ax,ay,bx,by)
  br label %2364

; <label>:2364                                    ; preds = %2360, %2270
  %2365 = phi float [ %2361, %2360 ], [ 0x3FD6666660000000, %2270 ]
  %2366 = phi float [ %2362, %2360 ], [ 0.000000e+00, %2270 ]
  %2367 = phi float [ %2363, %2360 ], [ 0.000000e+00, %2270 ]
  %2368 = phi float [ %2304, %2360 ], [ 1.000000e+00, %2270 ]
  %2369 = add i32 %33, 192
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = lshr i32 %2371, 22
  %2373 = shl nuw nsw i32 %2372, 5
  %2374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2373)  ; LegacyF16ToF32(value)
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 64
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2412, label %2379

; <label>:2379                                    ; preds = %2364
  %2380 = add i32 %33, 464
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = add i32 %2382, 0
  %2384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 131072
  %2388 = icmp eq i32 %2387, 0
  %2389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2384, %dx.types.Handle %64, float %1877, float %1878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.ResRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.ResRet.f32 %2389, 2
  %2393 = fmul fast float %2390, %295
  %2394 = fmul fast float %2391, %298
  %2395 = fmul fast float %2392, %301
  br i1 %2388, label %2402, label %2396

; <label>:2396                                    ; preds = %2379
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = fmul fast float %2398, %2393
  %2400 = fmul fast float %2398, %2394
  %2401 = fmul fast float %2398, %2395
  br label %2402

; <label>:2402                                    ; preds = %2396, %2379
  %2403 = phi float [ %2399, %2396 ], [ %2393, %2379 ]
  %2404 = phi float [ %2400, %2396 ], [ %2394, %2379 ]
  %2405 = phi float [ %2401, %2396 ], [ %2395, %2379 ]
  %2406 = fmul fast float %2403, %2374
  %2407 = select i1 %205, float %2406, float %2403
  %2408 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2404, float %2405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2409 = select i1 %205, float 0.000000e+00, float %2403
  %2410 = select i1 %205, float %2408, float %2404
  %2411 = select i1 %205, float 0.000000e+00, float %2405
  br label %2412

; <label>:2412                                    ; preds = %2402, %2364
  %2413 = phi float [ %2409, %2402 ], [ 0.000000e+00, %2364 ]
  %2414 = phi float [ %2410, %2402 ], [ 0.000000e+00, %2364 ]
  %2415 = phi float [ %2411, %2402 ], [ 0.000000e+00, %2364 ]
  %2416 = add i32 %33, 128
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2418, 8
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = call float @dx.op.dot3.f32(i32 55, float %2285, float %2286, float %2287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2425 = fmul fast float %2423, %2424
  %2426 = fadd fast float %2425, %2420
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  br i1 %1769, label %2429, label %2437

; <label>:2429                                    ; preds = %2412
  %2430 = fsub fast float 1.000000e+00, %2065
  %2431 = fmul fast float %2430, %1758
  %2432 = fmul fast float %2430, %1759
  %2433 = fmul fast float %2430, %1760
  %2434 = fmul fast float %2430, %1761
  %2435 = fmul fast float %2430, %1762
  %2436 = fmul fast float %2430, %1763
  br label %2437

; <label>:2437                                    ; preds = %2429, %2412
  %2438 = phi float [ %2431, %2429 ], [ %1758, %2412 ]
  %2439 = phi float [ %2432, %2429 ], [ %1759, %2412 ]
  %2440 = phi float [ %2433, %2429 ], [ %1760, %2412 ]
  %2441 = phi float [ %2434, %2429 ], [ %1761, %2412 ]
  %2442 = phi float [ %2435, %2429 ], [ %1762, %2412 ]
  %2443 = phi float [ %2436, %2429 ], [ %1763, %2412 ]
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 3
  %2447 = icmp eq i32 %2446, 3
  br i1 %2447, label %2526, label %2448

; <label>:2448                                    ; preds = %2437
  %2449 = and i32 %2445, 16
  %2450 = icmp ne i32 %2449, 0
  %2451 = select i1 %2450, float %2065, float 0.000000e+00
  %2452 = icmp eq i32 %2446, 0
  br i1 %2452, label %2453, label %2481

; <label>:2453                                    ; preds = %2448
  %2454 = and i32 %2445, 64
  %2455 = icmp ne i32 %2454, 0
  %2456 = select i1 %2455, float %2065, float 0.000000e+00
  %2457 = fsub fast float %2285, %2438
  %2458 = fsub fast float %2286, %2439
  %2459 = fsub fast float %2287, %2440
  %2460 = fmul fast float %2451, %2457
  %2461 = fmul fast float %2451, %2458
  %2462 = fmul fast float %2451, %2459
  %2463 = fadd fast float %2460, %2438
  %2464 = fadd fast float %2461, %2439
  %2465 = fadd fast float %2462, %2440
  %2466 = fsub fast float %2271, %1764
  %2467 = fmul fast float %2451, %2466
  %2468 = fadd fast float %2467, %1764
  %2469 = fsub fast float %2413, %2441
  %2470 = fsub fast float %2414, %2442
  %2471 = fsub fast float %2415, %2443
  %2472 = fmul fast float %2456, %2469
  %2473 = fmul fast float %2456, %2470
  %2474 = fmul fast float %2456, %2471
  %2475 = fadd fast float %2472, %2441
  %2476 = fadd fast float %2473, %2442
  %2477 = fadd fast float %2474, %2443
  %2478 = fsub fast float %2428, %1767
  %2479 = fmul fast float %2451, %2478
  %2480 = fadd fast float %2479, %1767
  br label %2526

; <label>:2481                                    ; preds = %2448
  %2482 = icmp eq i32 %2446, 1
  br i1 %2482, label %2483, label %2496

; <label>:2483                                    ; preds = %2481
  %2484 = fadd fast float %2285, -1.000000e+00
  %2485 = fadd fast float %2286, -1.000000e+00
  %2486 = fadd fast float %2287, -1.000000e+00
  %2487 = fmul fast float %2451, %2484
  %2488 = fmul fast float %2451, %2485
  %2489 = fmul fast float %2451, %2486
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fadd fast float %2488, 1.000000e+00
  %2492 = fadd fast float %2489, 1.000000e+00
  %2493 = fmul fast float %2490, %2438
  %2494 = fmul fast float %2491, %2439
  %2495 = fmul fast float %2492, %2440
  br label %2526

; <label>:2496                                    ; preds = %2481
  %2497 = icmp eq i32 %2446, 2
  br i1 %2497, label %2498, label %2526

; <label>:2498                                    ; preds = %2496
  %2499 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2500 = call float @dx.op.unary.f32(i32 24, float %2286)  ; Sqrt(value)
  %2501 = call float @dx.op.unary.f32(i32 24, float %2287)  ; Sqrt(value)
  %2502 = fadd fast float %2499, -5.000000e-01
  %2503 = fadd fast float %2500, -5.000000e-01
  %2504 = fadd fast float %2501, -5.000000e-01
  %2505 = fmul fast float %2502, %2451
  %2506 = fmul fast float %2503, %2451
  %2507 = fmul fast float %2504, %2451
  %2508 = fadd fast float %2505, 5.000000e-01
  %2509 = fadd fast float %2506, 5.000000e-01
  %2510 = fadd fast float %2507, 5.000000e-01
  %2511 = fmul fast float %2508, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2438
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2438
  %2516 = fmul fast float %2509, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2439
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2439
  %2521 = fmul fast float %2510, 2.000000e+00
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2522, %2440
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2524, %2440
  br label %2526

; <label>:2526                                    ; preds = %2498, %2496, %2483, %2453, %2437
  %2527 = phi float [ %2438, %2437 ], [ %2515, %2498 ], [ %2438, %2496 ], [ %2493, %2483 ], [ %2463, %2453 ]
  %2528 = phi float [ %2439, %2437 ], [ %2520, %2498 ], [ %2439, %2496 ], [ %2494, %2483 ], [ %2464, %2453 ]
  %2529 = phi float [ %2440, %2437 ], [ %2525, %2498 ], [ %2440, %2496 ], [ %2495, %2483 ], [ %2465, %2453 ]
  %2530 = phi float [ %2441, %2437 ], [ %2441, %2498 ], [ %2441, %2496 ], [ %2441, %2483 ], [ %2475, %2453 ]
  %2531 = phi float [ %2442, %2437 ], [ %2442, %2498 ], [ %2442, %2496 ], [ %2442, %2483 ], [ %2476, %2453 ]
  %2532 = phi float [ %2443, %2437 ], [ %2443, %2498 ], [ %2443, %2496 ], [ %2443, %2483 ], [ %2477, %2453 ]
  %2533 = phi float [ %1764, %2437 ], [ %1764, %2498 ], [ %1764, %2496 ], [ %1764, %2483 ], [ %2468, %2453 ]
  %2534 = phi float [ %1767, %2437 ], [ %1767, %2498 ], [ %1767, %2496 ], [ %1767, %2483 ], [ %2480, %2453 ]
  %2535 = and i32 %2445, 12
  %2536 = icmp eq i32 %2535, 12
  br i1 %2536, label %2609, label %2537

; <label>:2537                                    ; preds = %2526
  %2538 = and i32 %2445, 2097184
  %2539 = icmp eq i32 %2538, 2097184
  %2540 = select i1 %2539, float %2065, float 0.000000e+00
  %2541 = and i32 %2445, 4194336
  %2542 = icmp eq i32 %2541, 4194336
  %2543 = select i1 %2542, float %2065, float 0.000000e+00
  %2544 = and i32 %2445, 8388640
  %2545 = icmp eq i32 %2544, 8388640
  %2546 = select i1 %2545, float %2065, float 0.000000e+00
  %2547 = icmp eq i32 %2535, 0
  br i1 %2547, label %2548, label %2561

; <label>:2548                                    ; preds = %2537
  %2549 = fsub fast float %2366, %1756
  %2550 = fsub fast float %2367, %1757
  %2551 = fmul fast float %2540, %2549
  %2552 = fmul fast float %2540, %2550
  %2553 = fadd fast float %2551, %1756
  %2554 = fadd fast float %2552, %1757
  %2555 = fsub fast float %2368, %1766
  %2556 = fmul fast float %2543, %2555
  %2557 = fadd fast float %2556, %1766
  %2558 = fsub fast float %2365, %1765
  %2559 = fmul fast float %2546, %2558
  %2560 = fadd fast float %2559, %1765
  br label %2609

; <label>:2561                                    ; preds = %2537
  %2562 = icmp eq i32 %2535, 4
  br i1 %2562, label %2563, label %2595

; <label>:2563                                    ; preds = %2561
  %2564 = fmul fast float %2540, %2366
  %2565 = fmul fast float %2540, %2367
  %2566 = fadd fast float %2564, %1756
  %2567 = fadd fast float %2565, %1757
  %2568 = call float @dx.op.binary.f32(i32 36, float %1766, float %2368)  ; FMin(a,b)
  %2569 = fsub fast float %2568, %1766
  %2570 = fmul fast float %2569, %2543
  %2571 = fadd fast float %2570, %1766
  %2572 = fadd fast float %2365, %1765
  %2573 = fmul fast float %2572, 0x3FF337FAE0000000
  %2574 = fmul fast float %1765, %1765
  %2575 = fmul fast float %2365, %2365
  %2576 = fadd fast float %2575, %2574
  %2577 = fmul fast float %2576, 0x3FE5152B00000000
  %2578 = fmul fast float %1765, 0xBFCC1F85E0000000
  %2579 = fmul fast float %2578, %2365
  %2580 = fadd fast float %2579, 0xBFE1363700000000
  %2581 = fadd fast float %2580, %2573
  %2582 = fsub fast float %2581, %2577
  %2583 = fmul fast float %2572, 0x3FBA6F0D00000000
  %2584 = fmul fast float %2576, 0x3FD0432880000000
  %2585 = fmul fast float %1765, 0xBFEF110800000000
  %2586 = fmul fast float %2585, %2365
  %2587 = fadd fast float %2586, 1.000000e+00
  %2588 = fsub fast float %2587, %2583
  %2589 = fadd fast float %2588, %2584
  %2590 = fdiv fast float %2582, %2589
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fsub fast float %2591, %1765
  %2593 = fmul fast float %2592, %2546
  %2594 = fadd fast float %2593, %1765
  br label %2609

; <label>:2595                                    ; preds = %2561
  %2596 = icmp eq i32 %2535, 8
  br i1 %2596, label %2597, label %2609

; <label>:2597                                    ; preds = %2595
  %2598 = fmul fast float %2540, %2366
  %2599 = fmul fast float %2540, %2367
  %2600 = fadd fast float %2598, %1756
  %2601 = fadd fast float %2599, %1757
  %2602 = call float @dx.op.binary.f32(i32 36, float %1766, float %2368)  ; FMin(a,b)
  %2603 = fsub fast float %2602, %1766
  %2604 = fmul fast float %2603, %2543
  %2605 = fadd fast float %2604, %1766
  %2606 = fsub fast float %2365, %1765
  %2607 = fmul fast float %2546, %2606
  %2608 = fadd fast float %2607, %1765
  br label %2609

; <label>:2609                                    ; preds = %2597, %2595, %2563, %2548, %2526, %2064, %1768, %1755
  %2610 = phi float [ %1756, %2526 ], [ %1756, %2064 ], [ %1756, %1755 ], [ %2600, %2597 ], [ %1756, %2595 ], [ %2566, %2563 ], [ %2553, %2548 ], [ %1756, %1768 ]
  %2611 = phi float [ %1757, %2526 ], [ %1757, %2064 ], [ %1757, %1755 ], [ %2601, %2597 ], [ %1757, %2595 ], [ %2567, %2563 ], [ %2554, %2548 ], [ %1757, %1768 ]
  %2612 = phi float [ %2527, %2526 ], [ %1758, %2064 ], [ %1758, %1755 ], [ %2527, %2597 ], [ %2527, %2595 ], [ %2527, %2563 ], [ %2527, %2548 ], [ %1758, %1768 ]
  %2613 = phi float [ %2528, %2526 ], [ %1759, %2064 ], [ %1759, %1755 ], [ %2528, %2597 ], [ %2528, %2595 ], [ %2528, %2563 ], [ %2528, %2548 ], [ %1759, %1768 ]
  %2614 = phi float [ %2529, %2526 ], [ %1760, %2064 ], [ %1760, %1755 ], [ %2529, %2597 ], [ %2529, %2595 ], [ %2529, %2563 ], [ %2529, %2548 ], [ %1760, %1768 ]
  %2615 = phi float [ %2530, %2526 ], [ %1761, %2064 ], [ %1761, %1755 ], [ %2530, %2597 ], [ %2530, %2595 ], [ %2530, %2563 ], [ %2530, %2548 ], [ %1761, %1768 ]
  %2616 = phi float [ %2531, %2526 ], [ %1762, %2064 ], [ %1762, %1755 ], [ %2531, %2597 ], [ %2531, %2595 ], [ %2531, %2563 ], [ %2531, %2548 ], [ %1762, %1768 ]
  %2617 = phi float [ %2532, %2526 ], [ %1763, %2064 ], [ %1763, %1755 ], [ %2532, %2597 ], [ %2532, %2595 ], [ %2532, %2563 ], [ %2532, %2548 ], [ %1763, %1768 ]
  %2618 = phi float [ %2533, %2526 ], [ %1764, %2064 ], [ %1764, %1755 ], [ %2533, %2597 ], [ %2533, %2595 ], [ %2533, %2563 ], [ %2533, %2548 ], [ %1764, %1768 ]
  %2619 = phi float [ %1765, %2526 ], [ %1765, %2064 ], [ %1765, %1755 ], [ %2608, %2597 ], [ %1765, %2595 ], [ %2594, %2563 ], [ %2560, %2548 ], [ %1765, %1768 ]
  %2620 = phi float [ %1766, %2526 ], [ %1766, %2064 ], [ %1766, %1755 ], [ %2605, %2597 ], [ %1766, %2595 ], [ %2571, %2563 ], [ %2557, %2548 ], [ %1766, %1768 ]
  %2621 = phi float [ %2534, %2526 ], [ %1767, %2064 ], [ %1767, %1755 ], [ %2534, %2597 ], [ %2534, %2595 ], [ %2534, %2563 ], [ %2534, %2548 ], [ %1767, %1768 ]
  br i1 %382, label %3463, label %2622

; <label>:2622                                    ; preds = %2609
  %2623 = icmp ult i32 %433, 4
  %2624 = add i32 %33, 72
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %33, 76
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = or i32 %2629, %2626
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %3463, label %2632

; <label>:2632                                    ; preds = %2622
  %2633 = and i32 %2626, 262144
  %2634 = icmp ne i32 %2633, 0
  %2635 = select i1 %2634, float %36, float 1.000000e+00
  %2636 = select i1 %2634, float %37, float 0.000000e+00
  %2637 = select i1 %2634, float %38, float 0.000000e+00
  %2638 = select i1 %2634, float %39, float 1.000000e+00
  %2639 = select i1 %2634, float %40, float %56
  %2640 = select i1 %2634, float %41, float %57
  %2641 = add i32 %33, 332
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 16
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = fmul fast float %2645, 0x3F50624DE0000000
  %2647 = add i32 %33, 136
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = lshr i32 %2649, 16
  %2651 = and i32 %2650, 255
  %2652 = lshr i32 %2649, 24
  %2653 = add i32 %33, 340
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 65535
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = lshr i32 %2655, 16
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = add i32 %33, 80
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 22
  %2664 = shl nuw nsw i32 %2663, 5
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = shl i32 %2662, 4
  %2667 = and i32 %2666, 32752
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = lshr i32 %2662, 7
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 3
  %2674 = fmul fast float %2673, 1.000000e+03
  %2675 = fmul fast float %372, %2674
  %2676 = call float @dx.op.unary.f32(i32 22, float %2675)  ; Frc(value)
  %2677 = fadd fast float %2676, %362
  %2678 = fmul fast float %373, %2674
  %2679 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2680 = fadd fast float %2679, %364
  %2681 = fmul fast float %2646, %2674
  %2682 = call float @dx.op.unary.f32(i32 22, float %2681)  ; Frc(value)
  %2683 = fmul fast float %2682, 0x401921FB60000000
  %2684 = fadd fast float %2683, %2665
  %2685 = call float @dx.op.unary.f32(i32 13, float %2684)  ; Sin(value)
  %2686 = call float @dx.op.unary.f32(i32 12, float %2684)  ; Cos(value)
  %2687 = fsub fast float -0.000000e+00, %2685
  %2688 = fadd fast float %2639, -5.000000e-01
  %2689 = fadd fast float %2640, -5.000000e-01
  %2690 = fmul fast float %2657, %2688
  %2691 = fmul fast float %2659, %2689
  %2692 = fadd fast float %2690, 5.000000e-01
  %2693 = fadd fast float %2691, 5.000000e-01
  %2694 = fmul fast float %2668, %2692
  %2695 = fmul fast float %2671, %2693
  %2696 = fmul fast float %2686, %2694
  %2697 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2695, float %2696)  ; FMad(a,b,c)
  %2698 = fmul fast float %2685, %2694
  %2699 = call float @dx.op.tertiary.f32(i32 46, float %2686, float %2695, float %2698)  ; FMad(a,b,c)
  %2700 = fadd fast float %2677, %2697
  %2701 = fadd fast float %2680, %2699
  %2702 = icmp ugt i32 %2651, 1
  %2703 = icmp ugt i32 %2649, 33554431
  %2704 = or i1 %2703, %2702
  br i1 %2704, label %2705, label %2730

; <label>:2705                                    ; preds = %2632
  %2706 = add i32 %33, 276
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = lshr i32 %2708, 16
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = fmul fast float %2673, %2710
  %2712 = call float @dx.op.unary.f32(i32 22, float %2711)  ; Frc(value)
  %2713 = mul nuw nsw i32 %2651, %2652
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2712, %2714
  %2716 = call float @dx.op.unary.f32(i32 27, float %2715)  ; Round_ni(value)
  %2717 = fptoui float %2716 to i32
  %2718 = urem i32 %2717, %2651
  %2719 = udiv i32 %2717, %2652
  %2720 = call float @dx.op.unary.f32(i32 22, float %2700)  ; Frc(value)
  %2721 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2722 = uitofp i32 %2718 to float
  %2723 = uitofp i32 %2719 to float
  %2724 = fadd fast float %2720, %2722
  %2725 = fadd fast float %2721, %2723
  %2726 = uitofp i32 %2651 to float
  %2727 = uitofp i32 %2652 to float
  %2728 = fdiv fast float %2724, %2726
  %2729 = fdiv fast float %2725, %2727
  br label %2730

; <label>:2730                                    ; preds = %2705, %2632
  %2731 = phi float [ %2728, %2705 ], [ %2700, %2632 ]
  %2732 = phi float [ %2729, %2705 ], [ %2701, %2632 ]
  %2733 = and i32 %2626, 16777216
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2844, label %2735

; <label>:2735                                    ; preds = %2730
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2740 = fadd fast float %2737, %131
  %2741 = fadd fast float %2738, %132
  %2742 = fadd fast float %2739, %133
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = icmp eq i32 %34, 65535
  br i1 %2746, label %2841, label %2747

; <label>:2747                                    ; preds = %2735
  %2748 = lshr i32 %34, 1
  %2749 = shl i32 %2748, 2
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %34, 1
  %2753 = icmp ne i32 %2752, 0
  %2754 = lshr i32 %2751, 16
  %2755 = and i32 %2751, 65535
  %2756 = select i1 %2753, i32 %2754, i32 %2755
  %2757 = icmp eq i32 %2756, 65535
  br i1 %2757, label %2837, label %2758

; <label>:2758                                    ; preds = %2747
  %2759 = mul nuw nsw i32 %2756, 40
  %2760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = add nuw nsw i32 %2759, 12
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = extractvalue %dx.types.ResRet.f32 %2765, 2
  %2769 = add nuw nsw i32 %2759, 24
  %2770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2774 = add nuw nsw i32 %2759, 36
  %2775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  %2777 = fsub fast float %2740, %2761
  %2778 = fsub fast float %2741, %2762
  %2779 = fsub fast float %2742, %2763
  %2780 = fmul fast float %2776, %2777
  %2781 = fmul fast float %2776, %2778
  %2782 = fmul fast float %2776, %2779
  %2783 = call float @dx.op.unary.f32(i32 27, float %2780)  ; Round_ni(value)
  %2784 = call float @dx.op.unary.f32(i32 27, float %2781)  ; Round_ni(value)
  %2785 = call float @dx.op.unary.f32(i32 27, float %2782)  ; Round_ni(value)
  %2786 = fadd fast float %2783, 5.000000e-01
  %2787 = fadd fast float %2784, 5.000000e-01
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = fmul fast float %2786, %2766
  %2790 = fmul fast float %2787, %2767
  %2791 = fmul fast float %2788, %2768
  %2792 = shl i32 %34, 2
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = add i32 %2794, 0
  %2796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2797 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2798 = call float @dx.op.unary.f32(i32 22, float %2790)  ; Frc(value)
  %2799 = call float @dx.op.unary.f32(i32 22, float %2791)  ; Frc(value)
  %2800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2796, %dx.types.Handle %30, float %2797, float %2798, float %2799, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.ResRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.ResRet.f32 %2800, 2
  %2804 = fmul fast float %2801, 1.023000e+03
  %2805 = fmul fast float %2802, 1.023000e+03
  %2806 = fmul fast float %2803, 1.023000e+03
  %2807 = fadd fast float %2804, 5.000000e-01
  %2808 = fadd fast float %2805, 5.000000e-01
  %2809 = fadd fast float %2806, 5.000000e-01
  %2810 = call float @dx.op.unary.f32(i32 27, float %2807)  ; Round_ni(value)
  %2811 = call float @dx.op.unary.f32(i32 27, float %2808)  ; Round_ni(value)
  %2812 = call float @dx.op.unary.f32(i32 27, float %2809)  ; Round_ni(value)
  %2813 = fsub fast float %2780, %2783
  %2814 = fsub fast float %2781, %2784
  %2815 = fsub fast float %2782, %2785
  %2816 = fmul fast float %2813, 7.500000e-01
  %2817 = fmul fast float %2814, 7.500000e-01
  %2818 = fmul fast float %2815, 7.500000e-01
  %2819 = fadd fast float %2783, 1.250000e-01
  %2820 = fadd fast float %2819, %2816
  %2821 = fadd fast float %2820, %2810
  %2822 = fadd fast float %2784, 1.250000e-01
  %2823 = fadd fast float %2822, %2817
  %2824 = fadd fast float %2823, %2811
  %2825 = fadd fast float %2785, 1.250000e-01
  %2826 = fadd fast float %2825, %2818
  %2827 = fadd fast float %2826, %2812
  %2828 = fmul fast float %2821, %2771
  %2829 = fmul fast float %2824, %2772
  %2830 = fmul fast float %2827, %2773
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %2832, 0
  %2834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2834, %dx.types.Handle %28, float %2828, float %2829, float %2830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  br label %2837

; <label>:2837                                    ; preds = %2758, %2747
  %2838 = phi float [ %2836, %2758 ], [ -1.000000e+00, %2747 ]
  %2839 = fadd fast float %2838, %2745
  %2840 = call float @dx.op.unary.f32(i32 7, float %2839)  ; Saturate(value)
  br label %2841

; <label>:2841                                    ; preds = %2837, %2735
  %2842 = phi float [ %2840, %2837 ], [ %2745, %2735 ]
  %2843 = fmul fast float %2842, %428
  br label %2844

; <label>:2844                                    ; preds = %2841, %2730
  %2845 = phi float [ %2843, %2841 ], [ %428, %2730 ]
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = and i32 %2847, 256
  %2849 = icmp eq i32 %2848, 0
  br i1 %2849, label %2896, label %2850

; <label>:2850                                    ; preds = %2844
  %2851 = add i32 %33, 500
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = add i32 %2853, 0
  %2855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2855, %dx.types.Handle %65, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = add i32 %33, 148
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = shl i32 %2860, 4
  %2862 = and i32 %2861, 32752
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = lshr i32 %2860, 7
  %2865 = and i32 %2864, 32752
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = fsub fast float 1.000000e+00, %2845
  %2868 = call float @dx.op.binary.f32(i32 35, float %2867, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2869 = bitcast float %2845 to i32
  %2870 = sitofp i32 %2869 to float
  %2871 = fadd fast float %2870, 0xC1CFBF8940000000
  %2872 = fmul fast float %2866, %2871
  %2873 = fadd fast float %2872, 0x41CFBF8940000000
  %2874 = fptosi float %2873 to i32
  %2875 = bitcast i32 %2874 to float
  %2876 = bitcast float %2868 to i32
  %2877 = sitofp i32 %2876 to float
  %2878 = fadd fast float %2877, 0xC1CFBF8940000000
  %2879 = fmul fast float %2878, %2866
  %2880 = fadd fast float %2879, 0x41CFBF8940000000
  %2881 = fptosi float %2880 to i32
  %2882 = bitcast i32 %2881 to float
  %2883 = fmul fast float %2875, %2863
  %2884 = fmul fast float %2882, %2863
  %2885 = fsub fast float %2868, %2883
  %2886 = fadd fast float %2884, %2868
  %2887 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2888 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  %2889 = fsub fast float %2857, %2887
  %2890 = fsub fast float %2888, %2887
  %2891 = bitcast float %2890 to i32
  %2892 = sub nsw i32 2129859010, %2891
  %2893 = bitcast i32 %2892 to float
  %2894 = fmul fast float %2893, %2889
  %2895 = call float @dx.op.unary.f32(i32 7, float %2894)  ; Saturate(value)
  br label %2896

; <label>:2896                                    ; preds = %2850, %2844
  %2897 = phi float [ %2895, %2850 ], [ %2845, %2844 ]
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 128
  %2901 = icmp eq i32 %2900, 0
  br i1 %2901, label %2918, label %2902

; <label>:2902                                    ; preds = %2896
  %2903 = add i32 %33, 484
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %2905, 0
  %2907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2907, %dx.types.Handle %65, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2909 = extractvalue %dx.types.ResRet.f32 %2908, 0
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 524288
  %2913 = icmp ne i32 %2912, 0
  %2914 = fcmp fast ogt float %2909, 0x3FE0101020000000
  %2915 = select i1 %2914, float 1.000000e+00, float 0.000000e+00
  %2916 = select i1 %2913, float %2915, float %2909
  %2917 = fmul fast float %2916, %2897
  br label %2918

; <label>:2918                                    ; preds = %2902, %2896
  %2919 = phi float [ %2917, %2902 ], [ %2897, %2896 ]
  %2920 = fcmp fast ult float %2919, 0x3F70101020000000
  br i1 %2920, label %3463, label %2921

; <label>:2921                                    ; preds = %2918
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 16
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %3124, label %2926

; <label>:2926                                    ; preds = %2921
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %33, 436
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %64, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = extractvalue %dx.types.ResRet.f32 %2934, 1
  %2937 = extractvalue %dx.types.ResRet.f32 %2934, 2
  %2938 = extractvalue %dx.types.ResRet.f32 %2934, 3
  %2939 = and i32 %2928, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = lshr i32 %2928, 8
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2938, %2940
  %2945 = fadd fast float %2944, %2943
  %2946 = fmul fast float %2945, 0x3F70101000000000
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 512
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %2959, label %2951

; <label>:2951                                    ; preds = %2926
  %2952 = add i32 %33, 516
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = add i32 %2954, 0
  %2956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2956, %dx.types.Handle %65, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  br label %2959

; <label>:2959                                    ; preds = %2951, %2926
  %2960 = phi float [ %2958, %2951 ], [ 1.000000e+00, %2926 ]
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 33554432
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %3071, label %2965

; <label>:2965                                    ; preds = %2959
  %2966 = add i32 %33, 272
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = and i32 %2968, 65535
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = lshr i32 %2968, 16
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = add i32 %33, 276
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 65535
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = lshr i32 %2979, 24
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = and i32 %2979, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2979, 8
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = lshr i32 %2979, 16
  %2991 = and i32 %2990, 255
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = add i32 %33, 268
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 24
  %2998 = uitofp i32 %2997 to float
  %2999 = fmul fast float %2998, 0x3F70101020000000
  %3000 = and i32 %2996, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = lshr i32 %2996, 8
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = lshr i32 %2996, 16
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = bitcast float %2935 to i32
  %3012 = ashr i32 %3011, 1
  %3013 = sub nsw i32 1597463174, %3012
  %3014 = bitcast i32 %3013 to float
  %3015 = fmul fast float %2935, 5.000000e-01
  %3016 = fmul fast float %3014, %3014
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float 1.500000e+00, %3017
  %3019 = fmul fast float %3014, %2935
  %3020 = fmul fast float %3019, %3018
  %3021 = bitcast float %2936 to i32
  %3022 = ashr i32 %3021, 1
  %3023 = sub nsw i32 1597463174, %3022
  %3024 = bitcast i32 %3023 to float
  %3025 = fmul fast float %2936, 5.000000e-01
  %3026 = fmul fast float %3024, %3024
  %3027 = fmul fast float %3026, %3025
  %3028 = fsub fast float 1.500000e+00, %3027
  %3029 = fmul fast float %3024, %2936
  %3030 = fmul fast float %3029, %3028
  %3031 = bitcast float %2937 to i32
  %3032 = ashr i32 %3031, 1
  %3033 = sub nsw i32 1597463174, %3032
  %3034 = bitcast i32 %3033 to float
  %3035 = fmul fast float %2937, 5.000000e-01
  %3036 = fmul fast float %3034, %3034
  %3037 = fmul fast float %3036, %3035
  %3038 = fsub fast float 1.500000e+00, %3037
  %3039 = fmul fast float %3034, %2937
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float %3020, %3002
  %3042 = fsub fast float %3030, %3006
  %3043 = fsub fast float %3040, %3010
  %3044 = fmul fast float %3041, %2970
  %3045 = fmul fast float %3042, %2972
  %3046 = fmul fast float %3043, %2977
  %3047 = fadd fast float %3044, %2985
  %3048 = fadd fast float %3045, %2989
  %3049 = fadd fast float %3046, %2993
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3052 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3053 = fmul fast float %3050, %3050
  %3054 = fmul fast float %3051, %3051
  %3055 = fmul fast float %3052, %3052
  %3056 = fsub fast float %3053, %2935
  %3057 = fsub fast float %3054, %2936
  %3058 = fsub fast float %3055, %2937
  %3059 = fmul fast float %3056, %2960
  %3060 = fmul fast float %3057, %2960
  %3061 = fmul fast float %3058, %2960
  %3062 = fadd fast float %3059, %2935
  %3063 = fadd fast float %3060, %2936
  %3064 = fadd fast float %3061, %2937
  %3065 = fadd fast float %2982, %2946
  %3066 = fsub fast float %3065, %2999
  %3067 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3068 = fsub fast float %3067, %2946
  %3069 = fmul fast float %3068, %2960
  %3070 = fadd fast float %3069, %2946
  br label %3124

; <label>:3071                                    ; preds = %2959
  %3072 = and i32 %2962, 134217728
  %3073 = icmp eq i32 %3072, 0
  br i1 %3073, label %3108, label %3074

; <label>:3074                                    ; preds = %3071
  %3075 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3076 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %3077 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %3078 = fadd fast float %3075, -5.000000e-01
  %3079 = fadd fast float %3076, -5.000000e-01
  %3080 = fadd fast float %3077, -5.000000e-01
  %3081 = fmul fast float %3078, %2960
  %3082 = fmul fast float %3079, %2960
  %3083 = fmul fast float %3080, %2960
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %3088 = call float @dx.op.unary.f32(i32 24, float %2936)  ; Sqrt(value)
  %3089 = call float @dx.op.unary.f32(i32 24, float %2937)  ; Sqrt(value)
  %3090 = fmul fast float %3084, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3087
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3087
  %3095 = fmul fast float %3085, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3088
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3088
  %3100 = fmul fast float %3086, 2.000000e+00
  %3101 = fsub fast float 1.000000e+00, %3100
  %3102 = fmul fast float %3101, %3089
  %3103 = fadd fast float %3102, %3100
  %3104 = fmul fast float %3103, %3089
  %3105 = fmul fast float %3094, %3094
  %3106 = fmul fast float %3099, %3099
  %3107 = fmul fast float %3104, %3104
  br label %3124

; <label>:3108                                    ; preds = %3071
  %3109 = fmul fast float %349, %349
  %3110 = fmul fast float %353, %353
  %3111 = fmul fast float %357, %357
  %3112 = fadd fast float %3109, -1.000000e+00
  %3113 = fadd fast float %3110, -1.000000e+00
  %3114 = fadd fast float %3111, -1.000000e+00
  %3115 = fmul fast float %2960, %3112
  %3116 = fmul fast float %2960, %3113
  %3117 = fmul fast float %2960, %3114
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fadd fast float %3117, 1.000000e+00
  %3121 = fmul fast float %3118, %2935
  %3122 = fmul fast float %3119, %2936
  %3123 = fmul fast float %3120, %2937
  br label %3124

; <label>:3124                                    ; preds = %3108, %3074, %2965, %2921
  %3125 = phi float [ %3070, %2965 ], [ %2946, %3074 ], [ %2946, %3108 ], [ 0x3FA23C0BE0000000, %2921 ]
  %3126 = phi float [ %3062, %2965 ], [ %3105, %3074 ], [ %3121, %3108 ], [ 1.000000e+00, %2921 ]
  %3127 = phi float [ %3063, %2965 ], [ %3106, %3074 ], [ %3122, %3108 ], [ 1.000000e+00, %2921 ]
  %3128 = phi float [ %3064, %2965 ], [ %3107, %3074 ], [ %3123, %3108 ], [ 1.000000e+00, %2921 ]
  %3129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.i32 %3129, 1
  %3131 = and i32 %3130, 1
  %3132 = icmp ne i32 %3131, 0
  %3133 = add i32 %33, 356
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 32
  %3137 = icmp ne i32 %3136, 0
  %3138 = and i1 %3132, %3137
  %3139 = select i1 %3138, float 1.000000e+00, float %3126
  %3140 = select i1 %3138, float 0x3FD3333340000000, float %3127
  %3141 = select i1 %3138, float 0x3FD3333340000000, float %3128
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 32
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3218, label %3146

; <label>:3146                                    ; preds = %3124
  %3147 = add i32 %33, 140
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %33, 452
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3152, 0
  %3154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3154, %dx.types.Handle %64, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = extractvalue %dx.types.ResRet.f32 %3155, 3
  %3160 = and i32 %3149, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = lshr i32 %3149, 8
  %3163 = and i32 %3162, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3149, 16
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101000000000
  %3169 = fmul fast float %3156, %3161
  %3170 = fadd fast float %3169, %3164
  %3171 = fmul fast float %3170, 0x3F70101000000000
  %3172 = fadd fast float %3157, -5.000000e-01
  %3173 = fadd fast float %3159, -5.000000e-01
  %3174 = fmul fast float %3172, %3168
  %3175 = fmul fast float %3173, %3168
  %3176 = fadd fast float %3174, 5.000000e-01
  %3177 = fadd fast float %3175, 5.000000e-01
  %3178 = fmul fast float %3176, 2.000000e+00
  %3179 = fadd fast float %3178, -1.000000e+00
  %3180 = fmul fast float %3177, 2.000000e+00
  %3181 = fadd fast float %3180, -1.000000e+00
  %3182 = fadd fast float %3179, %3181
  %3183 = fmul fast float %3182, 5.000000e-01
  %3184 = fsub fast float %3179, %3181
  %3185 = fmul fast float %3184, 5.000000e-01
  %3186 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = call float @dx.op.unary.f32(i32 6, float %3185)  ; FAbs(value)
  %3189 = fsub fast float %3187, %3188
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3183, float %3185, float %3189, float %3183, float %3185, float %3189)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = call float @dx.op.unary.f32(i32 25, float %3190)  ; Rsqrt(value)
  %3192 = fmul fast float %3183, %3191
  %3193 = fmul fast float %3185, %3191
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 67108864
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3214, label %3198

; <label>:3198                                    ; preds = %3146
  %3199 = add i32 %33, 328
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = and i32 %3205, 65535
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = lshr i32 %3201, 16
  %3209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3208)  ; LegacyF16ToF32(value)
  %3210 = fsub fast float %3171, %3209
  %3211 = fmul fast float %3210, %3203
  %3212 = fadd fast float %3211, %3207
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  br label %3214

; <label>:3214                                    ; preds = %3198, %3146
  %3215 = phi float [ %3213, %3198 ], [ %3171, %3146 ]
  %3216 = call float @dx.op.dot2.f32(i32 54, float %3192, float %3193, float %2635, float %2636)  ; Dot2(ax,ay,bx,by)
  %3217 = call float @dx.op.dot2.f32(i32 54, float %3192, float %3193, float %2637, float %2638)  ; Dot2(ax,ay,bx,by)
  br label %3218

; <label>:3218                                    ; preds = %3214, %3124
  %3219 = phi float [ %3215, %3214 ], [ 0x3FD6666660000000, %3124 ]
  %3220 = phi float [ %3216, %3214 ], [ 0.000000e+00, %3124 ]
  %3221 = phi float [ %3217, %3214 ], [ 0.000000e+00, %3124 ]
  %3222 = phi float [ %3158, %3214 ], [ 1.000000e+00, %3124 ]
  %3223 = add i32 %33, 208
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = lshr i32 %3225, 22
  %3227 = shl nuw nsw i32 %3226, 5
  %3228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3227)  ; LegacyF16ToF32(value)
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 64
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3266, label %3233

; <label>:3233                                    ; preds = %3218
  %3234 = add i32 %33, 468
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = add i32 %3236, 0
  %3238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 131072
  %3242 = icmp eq i32 %3241, 0
  %3243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3238, %dx.types.Handle %64, float %2731, float %2732, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3244 = extractvalue %dx.types.ResRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.ResRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.ResRet.f32 %3243, 2
  %3247 = fmul fast float %3244, %337
  %3248 = fmul fast float %3245, %340
  %3249 = fmul fast float %3246, %343
  br i1 %3242, label %3256, label %3250

; <label>:3250                                    ; preds = %3233
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = fmul fast float %3252, %3247
  %3254 = fmul fast float %3252, %3248
  %3255 = fmul fast float %3252, %3249
  br label %3256

; <label>:3256                                    ; preds = %3250, %3233
  %3257 = phi float [ %3253, %3250 ], [ %3247, %3233 ]
  %3258 = phi float [ %3254, %3250 ], [ %3248, %3233 ]
  %3259 = phi float [ %3255, %3250 ], [ %3249, %3233 ]
  %3260 = fmul fast float %3257, %3228
  %3261 = select i1 %205, float %3260, float %3257
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3258, float %3259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = select i1 %205, float 0.000000e+00, float %3257
  %3264 = select i1 %205, float %3262, float %3258
  %3265 = select i1 %205, float 0.000000e+00, float %3259
  br label %3266

; <label>:3266                                    ; preds = %3256, %3218
  %3267 = phi float [ %3263, %3256 ], [ 0.000000e+00, %3218 ]
  %3268 = phi float [ %3264, %3256 ], [ 0.000000e+00, %3218 ]
  %3269 = phi float [ %3265, %3256 ], [ 0.000000e+00, %3218 ]
  %3270 = add i32 %33, 144
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 255
  %3274 = uitofp i32 %3273 to float
  %3275 = lshr i32 %3272, 8
  %3276 = and i32 %3275, 255
  %3277 = uitofp i32 %3276 to float
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3140, float %3141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fmul fast float %3277, %3278
  %3280 = fadd fast float %3279, %3274
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  br i1 %2623, label %3283, label %3291

; <label>:3283                                    ; preds = %3266
  %3284 = fsub fast float 1.000000e+00, %2919
  %3285 = fmul fast float %3284, %2612
  %3286 = fmul fast float %3284, %2613
  %3287 = fmul fast float %3284, %2614
  %3288 = fmul fast float %3284, %2615
  %3289 = fmul fast float %3284, %2616
  %3290 = fmul fast float %3284, %2617
  br label %3291

; <label>:3291                                    ; preds = %3283, %3266
  %3292 = phi float [ %3285, %3283 ], [ %2612, %3266 ]
  %3293 = phi float [ %3286, %3283 ], [ %2613, %3266 ]
  %3294 = phi float [ %3287, %3283 ], [ %2614, %3266 ]
  %3295 = phi float [ %3288, %3283 ], [ %2615, %3266 ]
  %3296 = phi float [ %3289, %3283 ], [ %2616, %3266 ]
  %3297 = phi float [ %3290, %3283 ], [ %2617, %3266 ]
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 3
  %3301 = icmp eq i32 %3300, 3
  br i1 %3301, label %3380, label %3302

; <label>:3302                                    ; preds = %3291
  %3303 = and i32 %3299, 16
  %3304 = icmp ne i32 %3303, 0
  %3305 = select i1 %3304, float %2919, float 0.000000e+00
  %3306 = icmp eq i32 %3300, 0
  br i1 %3306, label %3307, label %3335

; <label>:3307                                    ; preds = %3302
  %3308 = and i32 %3299, 64
  %3309 = icmp ne i32 %3308, 0
  %3310 = select i1 %3309, float %2919, float 0.000000e+00
  %3311 = fsub fast float %3139, %3292
  %3312 = fsub fast float %3140, %3293
  %3313 = fsub fast float %3141, %3294
  %3314 = fmul fast float %3305, %3311
  %3315 = fmul fast float %3305, %3312
  %3316 = fmul fast float %3305, %3313
  %3317 = fadd fast float %3314, %3292
  %3318 = fadd fast float %3315, %3293
  %3319 = fadd fast float %3316, %3294
  %3320 = fsub fast float %3125, %2618
  %3321 = fmul fast float %3305, %3320
  %3322 = fadd fast float %3321, %2618
  %3323 = fsub fast float %3267, %3295
  %3324 = fsub fast float %3268, %3296
  %3325 = fsub fast float %3269, %3297
  %3326 = fmul fast float %3310, %3323
  %3327 = fmul fast float %3310, %3324
  %3328 = fmul fast float %3310, %3325
  %3329 = fadd fast float %3326, %3295
  %3330 = fadd fast float %3327, %3296
  %3331 = fadd fast float %3328, %3297
  %3332 = fsub fast float %3282, %2621
  %3333 = fmul fast float %3305, %3332
  %3334 = fadd fast float %3333, %2621
  br label %3380

; <label>:3335                                    ; preds = %3302
  %3336 = icmp eq i32 %3300, 1
  br i1 %3336, label %3337, label %3350

; <label>:3337                                    ; preds = %3335
  %3338 = fadd fast float %3139, -1.000000e+00
  %3339 = fadd fast float %3140, -1.000000e+00
  %3340 = fadd fast float %3141, -1.000000e+00
  %3341 = fmul fast float %3305, %3338
  %3342 = fmul fast float %3305, %3339
  %3343 = fmul fast float %3305, %3340
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fadd fast float %3342, 1.000000e+00
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fmul fast float %3344, %3292
  %3348 = fmul fast float %3345, %3293
  %3349 = fmul fast float %3346, %3294
  br label %3380

; <label>:3350                                    ; preds = %3335
  %3351 = icmp eq i32 %3300, 2
  br i1 %3351, label %3352, label %3380

; <label>:3352                                    ; preds = %3350
  %3353 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3354 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3356 = fadd fast float %3353, -5.000000e-01
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fmul fast float %3356, %3305
  %3360 = fmul fast float %3357, %3305
  %3361 = fmul fast float %3358, %3305
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = fmul fast float %3362, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3292
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3292
  %3370 = fmul fast float %3363, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3293
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3293
  %3375 = fmul fast float %3364, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3294
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3294
  br label %3380

; <label>:3380                                    ; preds = %3352, %3350, %3337, %3307, %3291
  %3381 = phi float [ %3292, %3291 ], [ %3369, %3352 ], [ %3292, %3350 ], [ %3347, %3337 ], [ %3317, %3307 ]
  %3382 = phi float [ %3293, %3291 ], [ %3374, %3352 ], [ %3293, %3350 ], [ %3348, %3337 ], [ %3318, %3307 ]
  %3383 = phi float [ %3294, %3291 ], [ %3379, %3352 ], [ %3294, %3350 ], [ %3349, %3337 ], [ %3319, %3307 ]
  %3384 = phi float [ %3295, %3291 ], [ %3295, %3352 ], [ %3295, %3350 ], [ %3295, %3337 ], [ %3329, %3307 ]
  %3385 = phi float [ %3296, %3291 ], [ %3296, %3352 ], [ %3296, %3350 ], [ %3296, %3337 ], [ %3330, %3307 ]
  %3386 = phi float [ %3297, %3291 ], [ %3297, %3352 ], [ %3297, %3350 ], [ %3297, %3337 ], [ %3331, %3307 ]
  %3387 = phi float [ %2618, %3291 ], [ %2618, %3352 ], [ %2618, %3350 ], [ %2618, %3337 ], [ %3322, %3307 ]
  %3388 = phi float [ %2621, %3291 ], [ %2621, %3352 ], [ %2621, %3350 ], [ %2621, %3337 ], [ %3334, %3307 ]
  %3389 = and i32 %3299, 12
  %3390 = icmp eq i32 %3389, 12
  br i1 %3390, label %3463, label %3391

; <label>:3391                                    ; preds = %3380
  %3392 = and i32 %3299, 2097184
  %3393 = icmp eq i32 %3392, 2097184
  %3394 = select i1 %3393, float %2919, float 0.000000e+00
  %3395 = and i32 %3299, 4194336
  %3396 = icmp eq i32 %3395, 4194336
  %3397 = select i1 %3396, float %2919, float 0.000000e+00
  %3398 = and i32 %3299, 8388640
  %3399 = icmp eq i32 %3398, 8388640
  %3400 = select i1 %3399, float %2919, float 0.000000e+00
  %3401 = icmp eq i32 %3389, 0
  br i1 %3401, label %3402, label %3415

; <label>:3402                                    ; preds = %3391
  %3403 = fsub fast float %3220, %2610
  %3404 = fsub fast float %3221, %2611
  %3405 = fmul fast float %3394, %3403
  %3406 = fmul fast float %3394, %3404
  %3407 = fadd fast float %3405, %2610
  %3408 = fadd fast float %3406, %2611
  %3409 = fsub fast float %3222, %2620
  %3410 = fmul fast float %3397, %3409
  %3411 = fadd fast float %3410, %2620
  %3412 = fsub fast float %3219, %2619
  %3413 = fmul fast float %3400, %3412
  %3414 = fadd fast float %3413, %2619
  br label %3463

; <label>:3415                                    ; preds = %3391
  %3416 = icmp eq i32 %3389, 4
  br i1 %3416, label %3417, label %3449

; <label>:3417                                    ; preds = %3415
  %3418 = fmul fast float %3394, %3220
  %3419 = fmul fast float %3394, %3221
  %3420 = fadd fast float %3418, %2610
  %3421 = fadd fast float %3419, %2611
  %3422 = call float @dx.op.binary.f32(i32 36, float %2620, float %3222)  ; FMin(a,b)
  %3423 = fsub fast float %3422, %2620
  %3424 = fmul fast float %3423, %3397
  %3425 = fadd fast float %3424, %2620
  %3426 = fadd fast float %3219, %2619
  %3427 = fmul fast float %3426, 0x3FF337FAE0000000
  %3428 = fmul fast float %2619, %2619
  %3429 = fmul fast float %3219, %3219
  %3430 = fadd fast float %3429, %3428
  %3431 = fmul fast float %3430, 0x3FE5152B00000000
  %3432 = fmul fast float %2619, 0xBFCC1F85E0000000
  %3433 = fmul fast float %3432, %3219
  %3434 = fadd fast float %3433, 0xBFE1363700000000
  %3435 = fadd fast float %3434, %3427
  %3436 = fsub fast float %3435, %3431
  %3437 = fmul fast float %3426, 0x3FBA6F0D00000000
  %3438 = fmul fast float %3430, 0x3FD0432880000000
  %3439 = fmul fast float %2619, 0xBFEF110800000000
  %3440 = fmul fast float %3439, %3219
  %3441 = fadd fast float %3440, 1.000000e+00
  %3442 = fsub fast float %3441, %3437
  %3443 = fadd fast float %3442, %3438
  %3444 = fdiv fast float %3436, %3443
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fsub fast float %3445, %2619
  %3447 = fmul fast float %3446, %3400
  %3448 = fadd fast float %3447, %2619
  br label %3463

; <label>:3449                                    ; preds = %3415
  %3450 = icmp eq i32 %3389, 8
  br i1 %3450, label %3451, label %3463

; <label>:3451                                    ; preds = %3449
  %3452 = fmul fast float %3394, %3220
  %3453 = fmul fast float %3394, %3221
  %3454 = fadd fast float %3452, %2610
  %3455 = fadd fast float %3453, %2611
  %3456 = call float @dx.op.binary.f32(i32 36, float %2620, float %3222)  ; FMin(a,b)
  %3457 = fsub fast float %3456, %2620
  %3458 = fmul fast float %3457, %3397
  %3459 = fadd fast float %3458, %2620
  %3460 = fsub fast float %3219, %2619
  %3461 = fmul fast float %3400, %3460
  %3462 = fadd fast float %3461, %2619
  br label %3463

; <label>:3463                                    ; preds = %3451, %3449, %3417, %3402, %3380, %2918, %2622, %2609
  %3464 = phi float [ %2610, %3380 ], [ %2610, %2918 ], [ %2610, %2609 ], [ %2610, %2622 ], [ %3407, %3402 ], [ %3420, %3417 ], [ %2610, %3449 ], [ %3454, %3451 ]
  %3465 = phi float [ %2611, %3380 ], [ %2611, %2918 ], [ %2611, %2609 ], [ %2611, %2622 ], [ %3408, %3402 ], [ %3421, %3417 ], [ %2611, %3449 ], [ %3455, %3451 ]
  %3466 = phi float [ %3381, %3380 ], [ %2612, %2918 ], [ %2612, %2609 ], [ %2612, %2622 ], [ %3381, %3402 ], [ %3381, %3417 ], [ %3381, %3449 ], [ %3381, %3451 ]
  %3467 = phi float [ %3382, %3380 ], [ %2613, %2918 ], [ %2613, %2609 ], [ %2613, %2622 ], [ %3382, %3402 ], [ %3382, %3417 ], [ %3382, %3449 ], [ %3382, %3451 ]
  %3468 = phi float [ %3383, %3380 ], [ %2614, %2918 ], [ %2614, %2609 ], [ %2614, %2622 ], [ %3383, %3402 ], [ %3383, %3417 ], [ %3383, %3449 ], [ %3383, %3451 ]
  %3469 = phi float [ %3384, %3380 ], [ %2615, %2918 ], [ %2615, %2609 ], [ %2615, %2622 ], [ %3384, %3402 ], [ %3384, %3417 ], [ %3384, %3449 ], [ %3384, %3451 ]
  %3470 = phi float [ %3385, %3380 ], [ %2616, %2918 ], [ %2616, %2609 ], [ %2616, %2622 ], [ %3385, %3402 ], [ %3385, %3417 ], [ %3385, %3449 ], [ %3385, %3451 ]
  %3471 = phi float [ %3386, %3380 ], [ %2617, %2918 ], [ %2617, %2609 ], [ %2617, %2622 ], [ %3386, %3402 ], [ %3386, %3417 ], [ %3386, %3449 ], [ %3386, %3451 ]
  %3472 = phi float [ %3387, %3380 ], [ %2618, %2918 ], [ %2618, %2609 ], [ %2618, %2622 ], [ %3387, %3402 ], [ %3387, %3417 ], [ %3387, %3449 ], [ %3387, %3451 ]
  %3473 = phi float [ %2619, %3380 ], [ %2619, %2918 ], [ %2619, %2609 ], [ %2619, %2622 ], [ %3414, %3402 ], [ %3448, %3417 ], [ %2619, %3449 ], [ %3462, %3451 ]
  %3474 = phi float [ %2620, %3380 ], [ %2620, %2918 ], [ %2620, %2609 ], [ %2620, %2622 ], [ %3411, %3402 ], [ %3425, %3417 ], [ %2620, %3449 ], [ %3459, %3451 ]
  %3475 = phi float [ %3388, %3380 ], [ %2621, %2918 ], [ %2621, %2609 ], [ %2621, %2622 ], [ %3388, %3402 ], [ %3388, %3417 ], [ %3388, %3449 ], [ %3388, %3451 ]
  %3476 = add i32 %33, 408
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = bitcast i32 %3478 to float
  %3480 = fcmp fast oge float %3479, 0.000000e+00
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 0
  %3483 = select i1 %3480, float %3479, float %3482
  %3484 = call float @dx.op.dot2.f32(i32 54, float %3464, float %3465, float %3464, float %3465)  ; Dot2(ax,ay,bx,by)
  %3485 = fmul fast float %3484, 0x3FE3333340000000
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3465, float %3486, float %3464, float %3465, float %3486)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call float @dx.op.unary.f32(i32 25, float %3487)  ; Rsqrt(value)
  %3489 = fmul fast float %3488, %3464
  %3490 = fmul fast float %3488, %3465
  %3491 = fmul fast float %3486, %3488
  %3492 = fmul fast float %3491, %75
  %3493 = fmul fast float %3491, %76
  %3494 = fmul fast float %3491, %77
  %3495 = fmul fast float %3489, %49
  %3496 = fmul fast float %3489, %50
  %3497 = fmul fast float %3489, %51
  %3498 = fadd fast float %3492, %3495
  %3499 = fadd fast float %3493, %3496
  %3500 = fadd fast float %3494, %3497
  %3501 = fmul fast float %87, %3490
  %3502 = fmul fast float %88, %3490
  %3503 = fmul fast float %89, %3490
  %3504 = fadd fast float %3498, %3501
  %3505 = fadd fast float %3499, %3502
  %3506 = fadd fast float %3500, %3503
  %3507 = call float @dx.op.dot3.f32(i32 55, float %3504, float %3505, float %3506, float %3504, float %3505, float %3506)  ; Dot3(ax,ay,az,bx,by,bz)
  %3508 = call float @dx.op.unary.f32(i32 25, float %3507)  ; Rsqrt(value)
  %3509 = fmul fast float %3504, %3508
  %3510 = fmul fast float %3505, %3508
  %3511 = fmul fast float %3506, %3508
  %3512 = and i32 %35, 1
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3514, label %4026

; <label>:3514                                    ; preds = %3463
  %3515 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3516 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3517 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3518 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3519 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3520 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3521 = fadd fast float %3515, %131
  %3522 = fadd fast float %3516, %132
  %3523 = fadd fast float %3517, %133
  %3524 = fadd fast float %3518, %131
  %3525 = fadd fast float %3519, %132
  %3526 = fadd fast float %3520, %133
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3530 = extractvalue %dx.types.CBufRet.f32 %3527, 2
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %3533 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3534 = fmul fast float %3528, %68
  %3535 = fmul fast float %3534, %3532
  %3536 = fmul fast float %3529, %69
  %3537 = fmul fast float %3536, %3533
  %3538 = fptoui float %3535 to i32
  %3539 = fptoui float %3537 to i32
  %3540 = fadd fast float %3528, -1.000000e+00
  %3541 = fadd fast float %3529, -1.000000e+00
  %3542 = fptoui float %3540 to i32
  %3543 = fptoui float %3541 to i32
  %3544 = call i32 @dx.op.binary.i32(i32 40, i32 %3538, i32 %3542)  ; UMin(a,b)
  %3545 = call i32 @dx.op.binary.i32(i32 40, i32 %3539, i32 %3543)  ; UMin(a,b)
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 2
  %3548 = extractvalue %dx.types.CBufRet.f32 %3546, 3
  %3549 = fmul fast float %3547, %63
  %3550 = fsub fast float %3549, %3548
  %3551 = fadd fast float %3530, -1.000000e+00
  %3552 = call float @dx.op.binary.f32(i32 36, float %3550, float %3551)  ; FMin(a,b)
  %3553 = fptoui float %3552 to i32
  %3554 = fptoui float %3528 to i32
  %3555 = fptoui float %3529 to i32
  %3556 = mul i32 %3553, %3555
  %3557 = add i32 %3556, %3545
  %3558 = mul i32 %3557, %3554
  %3559 = add i32 %3558, %3544
  %3560 = shl i32 %3559, 2
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = and i32 %3562, 1023
  %3564 = lshr i32 %3562, 10
  %3565 = icmp eq i32 %3563, 0
  br i1 %3565, label %3994, label %3566

; <label>:3566                                    ; preds = %3514
  %3567 = and i32 %3562, 1023
  br label %3568

; <label>:3568                                    ; preds = %3695, %3566
  %3569 = phi i32 [ %3645, %3695 ], [ 0, %3566 ]
  %3570 = phi float [ %3696, %3695 ], [ 0.000000e+00, %3566 ]
  %3571 = phi float [ %3697, %3695 ], [ %910, %3566 ]
  %3572 = phi float [ %3698, %3695 ], [ %3483, %3566 ]
  %3573 = phi float [ %3699, %3695 ], [ %3475, %3566 ]
  %3574 = phi float [ %3700, %3695 ], [ 0.000000e+00, %3566 ]
  %3575 = phi float [ %3701, %3695 ], [ 0.000000e+00, %3566 ]
  %3576 = phi float [ %3702, %3695 ], [ %3469, %3566 ]
  %3577 = phi float [ %3703, %3695 ], [ %3470, %3566 ]
  %3578 = phi float [ %3704, %3695 ], [ %3471, %3566 ]
  %3579 = phi float [ %3705, %3695 ], [ %3509, %3566 ]
  %3580 = phi float [ %3706, %3695 ], [ %3510, %3566 ]
  %3581 = phi float [ %3707, %3695 ], [ %3511, %3566 ]
  %3582 = phi float [ %3708, %3695 ], [ %3474, %3566 ]
  %3583 = phi float [ %3709, %3695 ], [ %3473, %3566 ]
  %3584 = phi float [ %3710, %3695 ], [ 0.000000e+00, %3566 ]
  %3585 = phi float [ %3711, %3695 ], [ %3472, %3566 ]
  %3586 = phi float [ %3712, %3695 ], [ %3466, %3566 ]
  %3587 = phi float [ %3713, %3695 ], [ %3467, %3566 ]
  %3588 = phi float [ %3714, %3695 ], [ %3468, %3566 ]
  %3589 = add nuw nsw i32 %3569, %3564
  %3590 = shl i32 %3589, 2
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = shl i32 %3592, 8
  %3594 = or i32 %3593, 48
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3600 = or i32 %3593, 64
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.i32 %3601, 1
  %3604 = or i32 %3593, 80
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3608 = or i32 %3593, 96
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = or i32 %3593, 112
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3617 = or i32 %3593, 128
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3593, 144
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = or i32 %3593, 160
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = or i32 %3593, 192
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = or i32 %3593, 208
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = or i32 %3593, 248
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = add nuw nsw i32 %3569, 1
  %3646 = bitcast float %3599 to i32
  %3647 = and i32 %3646, 512
  %3648 = icmp eq i32 %3647, 0
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = or i32 %3593, 16
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3657, float %3658, float %3659, float %3660, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = or i32 %3593, 32
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.ResRet.f32 %3663, 3
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3664, float %3665, float %3666, float %3667, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.unary.f32(i32 27, float %3654)  ; Round_ni(value)
  %3670 = call float @dx.op.unary.f32(i32 6, float %3669)  ; FAbs(value)
  %3671 = call float @dx.op.unary.f32(i32 27, float %3661)  ; Round_ni(value)
  %3672 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3673 = call float @dx.op.unary.f32(i32 6, float %3668)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 27, float %3673)  ; Round_ni(value)
  %3675 = fadd fast float %3672, %3670
  %3676 = fadd fast float %3675, %3674
  %3677 = fcmp fast oeq float %3676, 0.000000e+00
  %3678 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3521, float %3522, float %3523, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3679 = call float @dx.op.dot4.f32(i32 56, float %3657, float %3658, float %3659, float %3660, float %3521, float %3522, float %3523, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3680 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3681 = call float @dx.op.dot4.f32(i32 56, float %3657, float %3658, float %3659, float %3660, float %3524, float %3525, float %3526, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3682 = fsub fast float %3678, %3654
  %3683 = fsub fast float %3680, %3654
  %3684 = fsub fast float %3679, %3661
  %3685 = fsub fast float %3681, %3661
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 2
  %3689 = fadd fast float %3688, %3686
  %3690 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3692 = fcmp fast ogt float %3690, %3691
  %3693 = and i1 %3677, %3692
  %3694 = and i1 %3648, %3693
  br i1 %3694, label %3716, label %3695

; <label>:3695                                    ; preds = %3980, %3797, %3716, %3568
  %3696 = phi float [ %3570, %3716 ], [ %3800, %3797 ], [ %3800, %3980 ], [ %3570, %3568 ]
  %3697 = phi float [ %3571, %3716 ], [ %3571, %3797 ], [ %3955, %3980 ], [ %3571, %3568 ]
  %3698 = phi float [ %3572, %3716 ], [ %3572, %3797 ], [ %3954, %3980 ], [ %3572, %3568 ]
  %3699 = phi float [ %3573, %3716 ], [ %3573, %3797 ], [ %3952, %3980 ], [ %3573, %3568 ]
  %3700 = phi float [ %3574, %3716 ], [ %3574, %3797 ], [ %3924, %3980 ], [ %3574, %3568 ]
  %3701 = phi float [ %3575, %3716 ], [ %3575, %3797 ], [ %3922, %3980 ], [ %3575, %3568 ]
  %3702 = phi float [ %3576, %3716 ], [ %3576, %3797 ], [ %3990, %3980 ], [ %3576, %3568 ]
  %3703 = phi float [ %3577, %3716 ], [ %3577, %3797 ], [ %3991, %3980 ], [ %3577, %3568 ]
  %3704 = phi float [ %3578, %3716 ], [ %3578, %3797 ], [ %3992, %3980 ], [ %3578, %3568 ]
  %3705 = phi float [ %3579, %3716 ], [ %3579, %3797 ], [ %3903, %3980 ], [ %3579, %3568 ]
  %3706 = phi float [ %3580, %3716 ], [ %3580, %3797 ], [ %3904, %3980 ], [ %3580, %3568 ]
  %3707 = phi float [ %3581, %3716 ], [ %3581, %3797 ], [ %3905, %3980 ], [ %3581, %3568 ]
  %3708 = phi float [ %3582, %3716 ], [ %3582, %3797 ], [ %3932, %3980 ], [ %3582, %3568 ]
  %3709 = phi float [ %3583, %3716 ], [ %3583, %3797 ], [ %3929, %3980 ], [ %3583, %3568 ]
  %3710 = phi float [ %3584, %3716 ], [ %3584, %3797 ], [ %3926, %3980 ], [ %3584, %3568 ]
  %3711 = phi float [ %3585, %3716 ], [ %3585, %3797 ], [ %3920, %3980 ], [ %3585, %3568 ]
  %3712 = phi float [ %3586, %3716 ], [ %3586, %3797 ], [ %3915, %3980 ], [ %3586, %3568 ]
  %3713 = phi float [ %3587, %3716 ], [ %3587, %3797 ], [ %3916, %3980 ], [ %3587, %3568 ]
  %3714 = phi float [ %3588, %3716 ], [ %3588, %3797 ], [ %3917, %3980 ], [ %3588, %3568 ]
  %3715 = icmp eq i32 %3645, %3567
  br i1 %3715, label %3993, label %3568

; <label>:3716                                    ; preds = %3568
  %3717 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3718 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3720 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3721 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3722 = extractvalue %dx.types.ResRet.i32 %3601, 3
  %3723 = extractvalue %dx.types.ResRet.i32 %3601, 2
  %3724 = add i32 %3722, 0
  %3725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3724, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3727 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3725, %dx.types.Handle %3726, float %3654, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float %3682, float %3684, float undef, float %3683, float %3685, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = fmul fast float %3728, %3721
  %3730 = fadd fast float %3729, %3720
  %3731 = call float @dx.op.unary.f32(i32 7, float %3730)  ; Saturate(value)
  %3732 = fmul fast float %3654, %3610
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3661, float %3732)  ; FMad(a,b,c)
  %3734 = fadd fast float %3733, %3719
  %3735 = fmul fast float %3654, %3612
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3661, float %3735)  ; FMad(a,b,c)
  %3737 = fadd fast float %3736, %3718
  %3738 = fmul fast float %3682, %3610
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3684, float %3738)  ; FMad(a,b,c)
  %3740 = fmul fast float %3682, %3612
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3684, float %3740)  ; FMad(a,b,c)
  %3742 = fmul fast float %3683, %3610
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3685, float %3742)  ; FMad(a,b,c)
  %3744 = fmul fast float %3683, %3612
  %3745 = call float @dx.op.tertiary.f32(i32 46, float %3613, float %3685, float %3744)  ; FMad(a,b,c)
  %3746 = add i32 %3723, 0
  %3747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3746, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3748 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3747, %dx.types.Handle %3726, float %3734, float %3737, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3743, float %3745, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = and i32 %3646, 1024
  %3751 = icmp ne i32 %3750, 0
  %3752 = fcmp fast ogt float %3749, 0x3FE0101020000000
  %3753 = uitofp i1 %3752 to float
  %3754 = select i1 %3751, float %3753, float %3749
  %3755 = and i32 %3646, 8192
  %3756 = icmp ne i32 %3755, 0
  %3757 = select i1 %3756, float %3717, float 1.000000e+00
  %3758 = fmul fast float %3654, 2.000000e+00
  %3759 = fadd fast float %3758, -1.000000e+00
  %3760 = call float @dx.op.unary.f32(i32 6, float %3759)  ; FAbs(value)
  %3761 = fmul fast float %3760, %3643
  %3762 = fsub fast float %3761, %3643
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = fmul fast float %3661, 2.000000e+00
  %3765 = fadd fast float %3764, -1.000000e+00
  %3766 = call float @dx.op.unary.f32(i32 6, float %3765)  ; FAbs(value)
  %3767 = fmul fast float %3766, %3644
  %3768 = fsub fast float %3767, %3644
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fmul fast float %3673, %3606
  %3771 = fsub fast float %3770, %3606
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3731, %3757
  %3774 = fmul fast float %3773, %3728
  %3775 = fmul fast float %3774, %3763
  %3776 = fmul fast float %3775, %3754
  %3777 = fmul fast float %3776, %3769
  %3778 = fmul fast float %3777, %3772
  %3779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3780 = extractvalue %dx.types.CBufRet.f32 %3779, 1
  %3781 = extractvalue %dx.types.CBufRet.f32 %3779, 0
  %3782 = fsub fast float %3690, %3781
  %3783 = fmul fast float %3782, %3780
  %3784 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3785 = fmul fast float %3778, %3607
  %3786 = fadd fast float %3778, %3607
  %3787 = fmul fast float %3786, %3616
  %3788 = fsub fast float %3787, %3616
  %3789 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3790 = and i32 %3646, 128
  %3791 = icmp ne i32 %3790, 0
  %3792 = select i1 %3791, float %3789, float %3785
  %3793 = fmul fast float %3792, %3784
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = fcmp fast ugt float %3793, %3795
  br i1 %3796, label %3797, label %3695

; <label>:3797                                    ; preds = %3716
  %3798 = select i1 %3756, float %3793, float 0.000000e+00
  %3799 = fadd fast float %3798, %3570
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  br i1 %3756, label %3695, label %3801

; <label>:3801                                    ; preds = %3797
  %3802 = and i32 %3646, 4
  %3803 = and i32 %3646, 8
  %3804 = add i32 %3602, 0
  %3805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3804, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3807 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3805, %dx.types.Handle %3806, float %3734, float %3737, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3743, float %3745, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3811 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3812 = bitcast float %3628 to i32
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = lshr i32 %3812, 8
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = fmul fast float %3811, %3814
  %3819 = fadd fast float %3818, %3817
  %3820 = fmul fast float %3819, 0x3F70101000000000
  %3821 = add i32 %3603, 0
  %3822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3821, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3823 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3822, %dx.types.Handle %3806, float %3734, float %3737, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3743, float %3745, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = bitcast float %3622 to i32
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = lshr i32 %3828, 8
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = lshr i32 %3828, 16
  %3835 = and i32 %3834, 255
  %3836 = uitofp i32 %3835 to float
  %3837 = fmul fast float %3836, 0x3F70101000000000
  %3838 = fmul fast float %3824, %3830
  %3839 = fadd fast float %3838, %3833
  %3840 = fmul fast float %3839, 0x3F70101000000000
  %3841 = fadd fast float %3825, -5.000000e-01
  %3842 = fadd fast float %3827, -5.000000e-01
  %3843 = fmul fast float %3841, %3837
  %3844 = fmul fast float %3842, %3837
  %3845 = fadd fast float %3843, 5.000000e-01
  %3846 = fadd fast float %3844, 5.000000e-01
  %3847 = fmul fast float %3808, %3631
  %3848 = fmul fast float %3809, %3632
  %3849 = fmul fast float %3810, %3633
  %3850 = fmul fast float %3845, 2.000000e+00
  %3851 = fadd fast float %3850, -1.000000e+00
  %3852 = fmul fast float %3846, 2.000000e+00
  %3853 = fadd fast float %3852, -1.000000e+00
  %3854 = fadd fast float %3851, %3853
  %3855 = fmul fast float %3854, 5.000000e-01
  %3856 = fsub fast float %3851, %3853
  %3857 = fmul fast float %3856, 5.000000e-01
  %3858 = call float @dx.op.unary.f32(i32 6, float %3855)  ; FAbs(value)
  %3859 = fsub fast float 1.000000e+00, %3858
  %3860 = call float @dx.op.unary.f32(i32 6, float %3857)  ; FAbs(value)
  %3861 = fsub fast float %3859, %3860
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3857, float %3861, float %3855, float %3857, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = call float @dx.op.unary.f32(i32 25, float %3862)  ; Rsqrt(value)
  %3864 = fmul fast float %3855, %3863
  %3865 = fmul fast float %3857, %3863
  %3866 = fmul fast float %3863, %3861
  %3867 = fmul fast float %3866, %3596
  %3868 = fmul fast float %3866, %3597
  %3869 = fmul fast float %3866, %3598
  %3870 = fmul fast float %3864, %3619
  %3871 = fmul fast float %3864, %3620
  %3872 = fmul fast float %3864, %3621
  %3873 = fadd fast float %3870, %3867
  %3874 = fadd fast float %3871, %3868
  %3875 = fadd fast float %3872, %3869
  %3876 = fmul fast float %3865, %3625
  %3877 = fmul fast float %3865, %3626
  %3878 = fmul fast float %3865, %3627
  %3879 = fadd fast float %3873, %3876
  %3880 = fadd fast float %3874, %3877
  %3881 = fadd fast float %3875, %3878
  %3882 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float %3879, float %3880, float %3881)  ; Dot3(ax,ay,az,bx,by,bz)
  %3883 = call float @dx.op.unary.f32(i32 25, float %3882)  ; Rsqrt(value)
  %3884 = fmul fast float %3879, %3883
  %3885 = fmul fast float %3880, %3883
  %3886 = fmul fast float %3881, %3883
  %3887 = icmp ne i32 %3803, 0
  %3888 = select i1 %3887, float 1.000000e+00, float 0.000000e+00
  %3889 = fmul fast float %3793, %3888
  %3890 = and i32 %3646, 1
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3892, label %3896

; <label>:3892                                    ; preds = %3801
  %3893 = fsub fast float %3884, %3579
  %3894 = fsub fast float %3885, %3580
  %3895 = fsub fast float %3886, %3581
  br label %3896

; <label>:3896                                    ; preds = %3892, %3801
  %3897 = phi float [ %3893, %3892 ], [ %3884, %3801 ]
  %3898 = phi float [ %3894, %3892 ], [ %3885, %3801 ]
  %3899 = phi float [ %3895, %3892 ], [ %3886, %3801 ]
  %3900 = fmul float %3899, %3889
  %3901 = fmul float %3898, %3889
  %3902 = fmul float %3897, %3889
  %3903 = fadd fast float %3902, %3579
  %3904 = fadd fast float %3901, %3580
  %3905 = fadd fast float %3900, %3581
  %3906 = icmp ne i32 %3802, 0
  %3907 = select i1 %3906, float 1.000000e+00, float 0.000000e+00
  %3908 = fmul fast float %3793, %3907
  %3909 = fsub fast float %3847, %3586
  %3910 = fsub fast float %3848, %3587
  %3911 = fsub fast float %3849, %3588
  %3912 = fmul fast float %3909, %3908
  %3913 = fmul fast float %3910, %3908
  %3914 = fmul fast float %3911, %3908
  %3915 = fadd fast float %3912, %3586
  %3916 = fadd fast float %3913, %3587
  %3917 = fadd fast float %3914, %3588
  %3918 = fsub fast float %3820, %3585
  %3919 = fmul fast float %3918, %3908
  %3920 = fadd fast float %3919, %3585
  %3921 = fmul fast float %3908, %3575
  %3922 = fsub fast float %3575, %3921
  %3923 = fmul fast float %3908, %3574
  %3924 = fsub fast float %3574, %3923
  %3925 = fadd fast float %3793, %3584
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = fsub fast float %3840, %3583
  %3928 = fmul fast float %3927, %3889
  %3929 = fadd fast float %3928, %3583
  %3930 = fsub fast float %3826, %3582
  %3931 = fmul fast float %3930, %3889
  %3932 = fadd fast float %3931, %3582
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3848, float %3849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = fmul fast float %3936, %3933
  %3938 = fadd fast float %3937, %3935
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = bitcast float %3634 to i32
  %3941 = and i32 %3940, 65535
  %3942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3941)  ; LegacyF16ToF32(value)
  %3943 = lshr i32 %3940, 16
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = fcmp fast oge float %3942, 0.000000e+00
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = select i1 %3945, float %3942, float %3947
  %3949 = fadd fast float %3948, %3944
  %3950 = fsub fast float %3939, %3573
  %3951 = fmul fast float %3950, %3793
  %3952 = fadd fast float %3951, %3573
  %3953 = fmul fast float %3949, %3793
  %3954 = call float @dx.op.binary.f32(i32 35, float %3572, float %3953)  ; FMax(a,b)
  %3955 = call float @dx.op.binary.f32(i32 35, float %3571, float %3793)  ; FMax(a,b)
  %3956 = and i32 %3646, 16
  %3957 = icmp eq i32 %3956, 0
  br i1 %3957, label %3980, label %3958

; <label>:3958                                    ; preds = %3896
  %3959 = bitcast float %3640 to i32
  %3960 = add i32 %3637, 0
  %3961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3961, %dx.types.Handle %3806, float %3734, float %3737, float undef, float undef, i32 0, i32 0, i32 undef, float %3739, float %3741, float undef, float %3743, float %3745, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3962, 2
  %3966 = and i32 %3959, 65535
  %3967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3966)  ; LegacyF16ToF32(value)
  %3968 = fmul fast float %3963, %3631
  %3969 = fmul fast float %3964, %3632
  %3970 = fmul fast float %3965, %3633
  %3971 = and i32 %3646, 16384
  %3972 = icmp ne i32 %3971, 0
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = select i1 %3972, float %3974, float 1.000000e+00
  %3976 = fmul fast float %3975, %3967
  %3977 = fmul fast float %3968, %3976
  %3978 = fmul fast float %3969, %3976
  %3979 = fmul fast float %3970, %3976
  br label %3980

; <label>:3980                                    ; preds = %3958, %3896
  %3981 = phi float [ %3977, %3958 ], [ 0.000000e+00, %3896 ]
  %3982 = phi float [ %3978, %3958 ], [ 0.000000e+00, %3896 ]
  %3983 = phi float [ %3979, %3958 ], [ 0.000000e+00, %3896 ]
  %3984 = fsub fast float %3981, %3576
  %3985 = fsub fast float %3982, %3577
  %3986 = fsub fast float %3983, %3578
  %3987 = fmul fast float %3984, %3793
  %3988 = fmul fast float %3985, %3793
  %3989 = fmul fast float %3986, %3793
  %3990 = fadd fast float %3987, %3576
  %3991 = fadd fast float %3988, %3577
  %3992 = fadd fast float %3989, %3578
  br label %3695

; <label>:3993                                    ; preds = %3695
  br label %3994

; <label>:3994                                    ; preds = %3993, %3514
  %3995 = phi float [ 0.000000e+00, %3514 ], [ %3696, %3993 ]
  %3996 = phi float [ %910, %3514 ], [ %3697, %3993 ]
  %3997 = phi float [ %3483, %3514 ], [ %3698, %3993 ]
  %3998 = phi float [ %3475, %3514 ], [ %3699, %3993 ]
  %3999 = phi float [ 0.000000e+00, %3514 ], [ %3700, %3993 ]
  %4000 = phi float [ 0.000000e+00, %3514 ], [ %3701, %3993 ]
  %4001 = phi float [ %3469, %3514 ], [ %3702, %3993 ]
  %4002 = phi float [ %3470, %3514 ], [ %3703, %3993 ]
  %4003 = phi float [ %3471, %3514 ], [ %3704, %3993 ]
  %4004 = phi float [ %3509, %3514 ], [ %3705, %3993 ]
  %4005 = phi float [ %3510, %3514 ], [ %3706, %3993 ]
  %4006 = phi float [ %3511, %3514 ], [ %3707, %3993 ]
  %4007 = phi float [ %3474, %3514 ], [ %3708, %3993 ]
  %4008 = phi float [ %3473, %3514 ], [ %3709, %3993 ]
  %4009 = phi float [ 0.000000e+00, %3514 ], [ %3710, %3993 ]
  %4010 = phi float [ %3472, %3514 ], [ %3711, %3993 ]
  %4011 = phi float [ %3466, %3514 ], [ %3712, %3993 ]
  %4012 = phi float [ %3467, %3514 ], [ %3713, %3993 ]
  %4013 = phi float [ %3468, %3514 ], [ %3714, %3993 ]
  %4014 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %4004, float %4005, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4015 = call float @dx.op.unary.f32(i32 25, float %4014)  ; Rsqrt(value)
  %4016 = fmul fast float %4015, %4004
  %4017 = fmul fast float %4015, %4005
  %4018 = fmul fast float %4015, %4006
  %4019 = fadd fast float %4009, %910
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float %4016, float %4017, float %4018)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call float @dx.op.unary.f32(i32 25, float %4021)  ; Rsqrt(value)
  %4023 = fmul fast float %4022, %4016
  %4024 = fmul fast float %4022, %4017
  %4025 = fmul fast float %4022, %4018
  br label %4026

; <label>:4026                                    ; preds = %3994, %3463
  %4027 = phi float [ %4023, %3994 ], [ %3509, %3463 ]
  %4028 = phi float [ %4024, %3994 ], [ %3510, %3463 ]
  %4029 = phi float [ %4025, %3994 ], [ %3511, %3463 ]
  %4030 = phi float [ %4011, %3994 ], [ %3466, %3463 ]
  %4031 = phi float [ %4012, %3994 ], [ %3467, %3463 ]
  %4032 = phi float [ %4013, %3994 ], [ %3468, %3463 ]
  %4033 = phi float [ %4001, %3994 ], [ %3469, %3463 ]
  %4034 = phi float [ %4002, %3994 ], [ %3470, %3463 ]
  %4035 = phi float [ %4003, %3994 ], [ %3471, %3463 ]
  %4036 = phi float [ %4010, %3994 ], [ %3472, %3463 ]
  %4037 = phi float [ %4020, %3994 ], [ %910, %3463 ]
  %4038 = phi float [ %4008, %3994 ], [ %3473, %3463 ]
  %4039 = phi float [ %4007, %3994 ], [ %3474, %3463 ]
  %4040 = phi float [ %4000, %3994 ], [ 0.000000e+00, %3463 ]
  %4041 = phi float [ %3999, %3994 ], [ 0.000000e+00, %3463 ]
  %4042 = phi float [ %3995, %3994 ], [ 0.000000e+00, %3463 ]
  %4043 = phi float [ %3997, %3994 ], [ %3483, %3463 ]
  %4044 = phi float [ %3996, %3994 ], [ %910, %3463 ]
  %4045 = phi float [ %3998, %3994 ], [ %3475, %3463 ]
  %4046 = add i32 %33, 392
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.i32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.i32 %4047, 2
  %4051 = extractvalue %dx.types.ResRet.i32 %4047, 3
  %4052 = bitcast i32 %4048 to float
  %4053 = bitcast i32 %4049 to float
  %4054 = bitcast i32 %4050 to float
  %4055 = bitcast i32 %4051 to float
  %4056 = fsub fast float %4030, %4052
  %4057 = fsub fast float %4031, %4053
  %4058 = fsub fast float %4032, %4054
  %4059 = fmul fast float %4056, %165
  %4060 = fmul fast float %4057, %165
  %4061 = fmul fast float %4058, %165
  %4062 = fadd fast float %4059, %4052
  %4063 = fadd fast float %4060, %4053
  %4064 = fadd fast float %4061, %4054
  %4065 = fsub fast float %4037, %4055
  %4066 = fmul fast float %4065, %165
  %4067 = fadd fast float %4066, %4055
  %4068 = fadd fast float %4036, 0xBFB99999A0000000
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = fmul fast float %4069, 0x3FF1C71C80000000
  %4071 = call float @dx.op.binary.f32(i32 36, float %4036, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4072 = fsub fast float 1.000000e+00, %4070
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %4062, %4073
  %4075 = fmul fast float %4063, %4073
  %4076 = fmul fast float %4064, %4073
  %4077 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4078 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4079 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4080 = fmul fast float %4062, %4070
  %4081 = fmul fast float %4063, %4070
  %4082 = fmul fast float %4064, %4070
  %4083 = fadd fast float %4080, %4071
  %4084 = fadd fast float %4081, %4071
  %4085 = fadd fast float %4082, %4071
  %4086 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4087 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4088 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4089 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.i32 %4090, 3
  %4092 = and i32 %4091, 8
  %4093 = icmp ne i32 %4092, 0
  %4094 = call float @dx.op.binary.f32(i32 35, float %4077, float %4062)  ; FMax(a,b)
  %4095 = call float @dx.op.binary.f32(i32 35, float %4078, float %4062)  ; FMax(a,b)
  %4096 = call float @dx.op.binary.f32(i32 35, float %4079, float %4062)  ; FMax(a,b)
  %4097 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4098 = select i1 %205, float %4062, float %4077
  %4099 = select i1 %205, float %4097, float %4078
  %4100 = select i1 %205, float 1.000000e+00, float %4079
  %4101 = select i1 %4093, float %4094, float %4098
  %4102 = select i1 %4093, float %4095, float %4099
  %4103 = select i1 %4093, float %4096, float %4100
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.CBufRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4108 = fadd fast float %4105, %131
  %4109 = fadd fast float %4106, %132
  %4110 = fadd fast float %4107, %133
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4114 = fsub fast float %4108, %4112
  %4115 = fsub fast float %4109, %4113
  %4116 = fmul fast float %4114, %4114
  %4117 = fmul fast float %4115, %4115
  %4118 = fadd fast float %4116, %4117
  %4119 = call float @dx.op.unary.f32(i32 24, float %4118)  ; Sqrt(value)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4121 = fcmp fast olt float %4119, %4120
  br i1 %4121, label %4122, label %4189

; <label>:4122                                    ; preds = %4026
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4130 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4127, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4133 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4134 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4135 = fadd fast float %4132, %4108
  %4136 = fadd fast float %4133, %4109
  %4137 = fadd fast float %4134, %4110
  %4138 = fmul fast float %4135, %4124
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4126, float %4138)  ; FMad(a,b,c)
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4128, float %4139)  ; FMad(a,b,c)
  %4141 = fmul fast float %4135, %4129
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4130, float %4141)  ; FMad(a,b,c)
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4131, float %4142)  ; FMad(a,b,c)
  %4144 = fsub fast float %4140, %4132
  %4145 = fsub fast float %4143, %4133
  %4146 = fsub fast float %4144, %4112
  %4147 = fadd fast float %4146, %4120
  %4148 = fsub fast float %4145, %4113
  %4149 = fadd fast float %4148, %4120
  %4150 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4151 = fmul fast float %4147, %4150
  %4152 = fmul fast float %4149, %4150
  %4153 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4155 = fsub fast float 1.000000e+00, %4153
  %4156 = fsub fast float 1.000000e+00, %4154
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4155, float %4156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = fcmp fast ugt float %4158, 0.000000e+00
  br i1 %4159, label %4160, label %4463

; <label>:4160                                    ; preds = %4122
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 2
  %4163 = fmul fast float %4162, %4158
  %4164 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4165 = fadd fast float %4164, %4163
  %4166 = extractvalue %dx.types.CBufRet.f32 %4127, 2
  %4167 = fadd fast float %4165, %4134
  %4168 = fmul fast float %4140, %4128
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4143, float %4131, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4166, float %4169)  ; FMad(a,b,c)
  %4171 = fsub fast float %4170, %4134
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 2
  %4174 = fsub fast float %4171, %4173
  %4175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4155, float %4156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4155, float %4156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = fadd fast float %4180, %4176
  %4184 = fmul fast float %4183, 0x3F847AE140000000
  %4185 = fadd fast float %4181, %4177
  %4186 = fmul fast float %4185, 0x3F847AE140000000
  %4187 = fadd fast float %4182, %4178
  %4188 = fmul fast float %4187, 0x3F847AE140000000
  br label %4463

; <label>:4189                                    ; preds = %4026
  %4190 = and i32 %181, 1
  %4191 = icmp eq i32 %4190, 0
  br i1 %4191, label %4463, label %4192

; <label>:4192                                    ; preds = %4189
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4203 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4204 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4205 = fadd fast float %4202, %4108
  %4206 = fadd fast float %4203, %4109
  %4207 = fadd fast float %4204, %4110
  %4208 = fmul fast float %4205, %4194
  %4209 = call float @dx.op.tertiary.f32(i32 46, float %4206, float %4196, float %4208)  ; FMad(a,b,c)
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4198, float %4209)  ; FMad(a,b,c)
  %4211 = fmul fast float %4205, %4199
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4206, float %4200, float %4211)  ; FMad(a,b,c)
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4201, float %4212)  ; FMad(a,b,c)
  %4214 = fsub fast float %4210, %4202
  %4215 = fsub fast float %4213, %4203
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 3
  %4223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.i32 %4223, 0
  %4225 = extractvalue %dx.types.CBufRet.i32 %4223, 1
  %4226 = udiv i32 %4225, %4224
  %4227 = fsub fast float %4214, %4217
  %4228 = fsub fast float %4215, %4218
  %4229 = call float @dx.op.binary.f32(i32 35, float %4227, float 0.000000e+00)  ; FMax(a,b)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4228, float 0.000000e+00)  ; FMax(a,b)
  %4231 = call float @dx.op.binary.f32(i32 36, float %4229, float %4219)  ; FMin(a,b)
  %4232 = call float @dx.op.binary.f32(i32 36, float %4230, float %4220)  ; FMin(a,b)
  %4233 = add i32 %4224, -1
  %4234 = add i32 %4226, -1
  %4235 = fmul fast float %4231, %4222
  %4236 = fmul fast float %4232, %4222
  %4237 = fptoui float %4235 to i32
  %4238 = fptoui float %4236 to i32
  %4239 = call i32 @dx.op.binary.i32(i32 40, i32 %4237, i32 %4233)  ; UMin(a,b)
  %4240 = call i32 @dx.op.binary.i32(i32 40, i32 %4238, i32 %4234)  ; UMin(a,b)
  %4241 = mul i32 %4240, %4224
  %4242 = add i32 %4241, %4239
  %4243 = shl i32 %4242, 2
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = icmp eq i32 %4245, -1
  br i1 %4246, label %4463, label %4247

; <label>:4247                                    ; preds = %4192
  %4248 = mul i32 %4245, 148
  %4249 = add i32 %4248, 4
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4248, 8
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4248, 36
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4248, 60
  %4259 = add i32 %4248, 92
  %4260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.i32 %4260, 0
  %4262 = add i32 %4248, 116
  %4263 = fsub fast float %4214, %4251
  %4264 = fsub fast float %4215, %4254
  %4265 = fmul fast float %4222, %4263
  %4266 = fmul fast float %4222, %4264
  %4267 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4269 = fsub fast float 1.000000e+00, %4268
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 2
  %4272 = call float @dx.op.unary.f32(i32 83, float %4267)  ; DerivCoarseX(value)
  %4273 = call float @dx.op.unary.f32(i32 83, float %4269)  ; DerivCoarseX(value)
  %4274 = call float @dx.op.unary.f32(i32 84, float %4267)  ; DerivCoarseY(value)
  %4275 = call float @dx.op.unary.f32(i32 84, float %4269)  ; DerivCoarseY(value)
  %4276 = fmul fast float %4272, %4271
  %4277 = fmul fast float %4273, %4271
  %4278 = fmul fast float %4274, %4271
  %4279 = fmul fast float %4275, %4271
  %4280 = call float @dx.op.dot2.f32(i32 54, float %4278, float %4279, float %4278, float %4279)  ; Dot2(ax,ay,bx,by)
  %4281 = call float @dx.op.dot2.f32(i32 54, float %4276, float %4277, float %4276, float %4277)  ; Dot2(ax,ay,bx,by)
  %4282 = call float @dx.op.binary.f32(i32 35, float %4281, float %4280)  ; FMax(a,b)
  %4283 = call float @dx.op.unary.f32(i32 23, float %4282)  ; Log(value)
  %4284 = fmul fast float %4283, 5.000000e-01
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4287 = fadd fast float %4286, %4284
  %4288 = call float @dx.op.binary.f32(i32 35, float %4287, float 0.000000e+00)  ; FMax(a,b)
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4291 = fadd fast float %4290, %4288
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = fadd fast float %4291, %4293
  %4295 = add i32 %4261, 0
  %4296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4296, i32 0)  ; GetDimensions(handle,mipLevel)
  %4298 = extractvalue %dx.types.Dimensions %4297, 0
  %4299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4298)  ; FirstbitLo(value)
  %4300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.i32 %4300, 1
  %4302 = sub nsw i32 %4301, %4299
  %4303 = sitofp i32 %4302 to float
  %4304 = fsub fast float %4294, %4303
  %4305 = call float @dx.op.binary.f32(i32 35, float %4304, float 0.000000e+00)  ; FMax(a,b)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4296, %dx.types.Handle %27, float %4267, float %4269, float %4257, float undef, i32 0, i32 0, i32 undef, float %4305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = fcmp ule float %4307, 0x3FE0101020000000
  %4309 = extractvalue %dx.types.CBufRet.i32 %4300, 0
  %4310 = and i32 %4309, 128
  %4311 = icmp ne i32 %4310, 0
  %4312 = and i1 %4308, %4311
  br i1 %4312, label %4463, label %4313

; <label>:4313                                    ; preds = %4247
  %4314 = add i32 %4248, 20
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = add i32 %4248, 24
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = add i32 %4248, 40
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = add i32 %4248, 96
  %4324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.i32 %4324, 0
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 2
  %4328 = fmul fast float %4327, %4267
  %4329 = fmul fast float %4327, %4269
  %4330 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4331 = fadd fast float %4328, %4330
  %4332 = fadd fast float %4329, %4330
  %4333 = add i32 %4325, 0
  %4334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4333, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4334, i32 0)  ; GetDimensions(handle,mipLevel)
  %4336 = extractvalue %dx.types.Dimensions %4335, 0
  %4337 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4336)  ; FirstbitLo(value)
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 1
  %4340 = sub nsw i32 %4339, %4337
  %4341 = sitofp i32 %4340 to float
  %4342 = fsub fast float %4291, %4341
  %4343 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4334, %dx.types.Handle %27, float %4331, float %4332, float %4322, float undef, i32 0, i32 0, i32 undef, float %4343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4316
  %4347 = fadd fast float %4346, %4319
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4356 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4357 = fadd fast float %4353, %4214
  %4358 = fadd fast float %4355, %4215
  %4359 = fadd fast float %4347, %4356
  %4360 = fmul fast float %4357, %4349
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4350, float %4360)  ; FMad(a,b,c)
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4351, float %4361)  ; FMad(a,b,c)
  %4363 = fsub fast float %4362, %4356
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4366 = fsub fast float %4363, %4365
  %4367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.i32 %4367, 0
  %4369 = call i32 @dx.op.binary.i32(i32 40, i32 %4245, i32 %4368)  ; UMin(a,b)
  %4370 = mul i32 %4369, 36
  %4371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.i32 %4371, 0
  %4373 = add i32 %4370, 4
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 0
  %4376 = fmul fast float %4375, %4267
  %4377 = fmul fast float %4375, %4269
  %4378 = extractvalue %dx.types.CBufRet.f32 %4374, 1
  %4379 = fadd fast float %4376, %4378
  %4380 = fadd fast float %4377, %4378
  %4381 = icmp eq i32 %4372, 0
  br i1 %4381, label %4450, label %4382

; <label>:4382                                    ; preds = %4313
  br label %4383

; <label>:4383                                    ; preds = %4440, %4382
  %4384 = phi float [ %4441, %4440 ], [ 0.000000e+00, %4382 ]
  %4385 = phi float [ %4442, %4440 ], [ 0.000000e+00, %4382 ]
  %4386 = phi float [ %4443, %4440 ], [ 0.000000e+00, %4382 ]
  %4387 = phi float [ %4444, %4440 ], [ 0.000000e+00, %4382 ]
  %4388 = phi float [ %4445, %4440 ], [ 0.000000e+00, %4382 ]
  %4389 = phi float [ %4446, %4440 ], [ 0.000000e+00, %4382 ]
  %4390 = phi i32 [ %4447, %4440 ], [ 0, %4382 ]
  %4391 = shl i32 %4390, 2
  %4392 = add i32 %4258, %4391
  %4393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = add i32 %4262, %4391
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = add i32 %4397, 0
  %4399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4400 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4399, i32 0)  ; GetDimensions(handle,mipLevel)
  %4401 = extractvalue %dx.types.Dimensions %4400, 0
  %4402 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4401)  ; FirstbitLo(value)
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 1
  %4405 = sub nsw i32 %4404, %4402
  %4406 = sitofp i32 %4405 to float
  %4407 = fsub fast float %4291, %4406
  %4408 = call float @dx.op.binary.f32(i32 35, float %4407, float 0.000000e+00)  ; FMax(a,b)
  %4409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4399, %dx.types.Handle %27, float %4379, float %4380, float %4394, float undef, i32 0, i32 0, i32 undef, float %4408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = fcmp fast ogt float %4410, 0.000000e+00
  br i1 %4411, label %4412, label %4440

; <label>:4412                                    ; preds = %4383
  %4413 = add i32 %4373, %4391
  %4414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4413, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.i32 %4414, 0
  %4416 = and i32 %4415, 32767
  %4417 = mul nuw nsw i32 %4416, 928
  %4418 = add nuw nsw i32 %4417, 48
  %4419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4418, i32 undef)  ; BufferLoad(srv,index,wot)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.ResRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.ResRet.f32 %4419, 2
  %4423 = add nuw nsw i32 %4417, 60
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = fmul fast float %4420, %4410
  %4429 = fmul fast float %4421, %4410
  %4430 = fmul fast float %4422, %4410
  %4431 = fadd fast float %4428, %4384
  %4432 = fadd fast float %4429, %4385
  %4433 = fadd fast float %4430, %4386
  %4434 = fmul fast float %4425, %4410
  %4435 = fmul fast float %4426, %4410
  %4436 = fmul fast float %4427, %4410
  %4437 = fadd fast float %4434, %4387
  %4438 = fadd fast float %4435, %4388
  %4439 = fadd fast float %4436, %4389
  br label %4440

; <label>:4440                                    ; preds = %4412, %4383
  %4441 = phi float [ %4431, %4412 ], [ %4384, %4383 ]
  %4442 = phi float [ %4432, %4412 ], [ %4385, %4383 ]
  %4443 = phi float [ %4433, %4412 ], [ %4386, %4383 ]
  %4444 = phi float [ %4437, %4412 ], [ %4387, %4383 ]
  %4445 = phi float [ %4438, %4412 ], [ %4388, %4383 ]
  %4446 = phi float [ %4439, %4412 ], [ %4389, %4383 ]
  %4447 = add nuw i32 %4390, 1
  %4448 = icmp eq i32 %4447, %4372
  br i1 %4448, label %4449, label %4383

; <label>:4449                                    ; preds = %4440
  br label %4450

; <label>:4450                                    ; preds = %4449, %4313
  %4451 = phi float [ 0.000000e+00, %4313 ], [ %4441, %4449 ]
  %4452 = phi float [ 0.000000e+00, %4313 ], [ %4442, %4449 ]
  %4453 = phi float [ 0.000000e+00, %4313 ], [ %4443, %4449 ]
  %4454 = phi float [ 0.000000e+00, %4313 ], [ %4444, %4449 ]
  %4455 = phi float [ 0.000000e+00, %4313 ], [ %4445, %4449 ]
  %4456 = phi float [ 0.000000e+00, %4313 ], [ %4446, %4449 ]
  %4457 = fadd fast float %4454, %4451
  %4458 = fmul fast float %4457, 0x3F847AE140000000
  %4459 = fadd fast float %4455, %4452
  %4460 = fmul fast float %4459, 0x3F847AE140000000
  %4461 = fadd fast float %4456, %4453
  %4462 = fmul fast float %4461, 0x3F847AE140000000
  br label %4463

; <label>:4463                                    ; preds = %4450, %4247, %4192, %4189, %4160, %4122
  %4464 = phi float [ %4174, %4160 ], [ -1.310720e+05, %4122 ], [ %4366, %4450 ], [ -1.310720e+05, %4192 ], [ -1.310720e+05, %4247 ], [ -1.310720e+05, %4189 ]
  %4465 = phi float [ %4184, %4160 ], [ 0.000000e+00, %4122 ], [ %4458, %4450 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4247 ], [ 0.000000e+00, %4189 ]
  %4466 = phi float [ %4186, %4160 ], [ 0.000000e+00, %4122 ], [ %4460, %4450 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4247 ], [ 0.000000e+00, %4189 ]
  %4467 = phi float [ %4188, %4160 ], [ 0.000000e+00, %4122 ], [ %4462, %4450 ], [ 0.000000e+00, %4192 ], [ 0.000000e+00, %4247 ], [ 0.000000e+00, %4189 ]
  %4468 = phi i1 [ true, %4160 ], [ false, %4122 ], [ true, %4450 ], [ false, %4192 ], [ false, %4247 ], [ false, %4189 ]
  %4469 = and i32 %181, 3
  %4470 = icmp eq i32 %4469, 1
  %4471 = select i1 %4470, float 1.000000e+00, float 0.000000e+00
  %4472 = fsub fast float %4464, %133
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = select i1 %4468, float %4473, float 1.000000e+00
  %4475 = fmul fast float %4474, %4471
  %4476 = icmp eq i32 %4469, 3
  %4477 = select i1 %4476, float 1.000000e+00, float %4475
  %4478 = call float @dx.op.binary.f32(i32 35, float %4042, float %4477)  ; FMax(a,b)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fcmp fast une float %4479, 0.000000e+00
  %4481 = fsub fast float -0.000000e+00, %151
  %4482 = fsub fast float -0.000000e+00, %152
  %4483 = fsub fast float -0.000000e+00, %153
  br i1 %4480, label %4484, label %4646

; <label>:4484                                    ; preds = %4463
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4482, float %4483, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = fmul fast float %4479, 2.500000e+00
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4479, 0x4013FFFFE0000000
  %4489 = fadd fast float %4488, 0xBFFFFFFFE0000000
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4479, 0x4004000020000000
  %4492 = fadd fast float %4491, 0xBFF8000040000000
  %4493 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4495 = fmul fast float %4068, 1.000000e+01
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 2.000000e+00
  %4498 = fsub fast float 3.000000e+00, %4497
  %4499 = fmul fast float %4496, %4496
  %4500 = fmul fast float %4499, %4498
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = fsub fast float 0x3FE3333340000000, %4089
  %4503 = fmul fast float %4502, 0x400AAAAAA0000000
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fmul fast float %4501, %4504
  %4506 = fmul fast float %4101, 0x3FEA2B8620000000
  %4507 = fmul fast float %4102, 0x3FEA2B8620000000
  %4508 = fmul fast float %4103, 0x3FEA2B8620000000
  %4509 = fadd fast float %4506, 0x3FC81DFBA0000000
  %4510 = fmul fast float %4509, %4101
  %4511 = fadd fast float %4510, 0x3F910E6020000000
  %4512 = fadd fast float %4507, 0x3FC81DFBA0000000
  %4513 = fmul fast float %4512, %4102
  %4514 = fadd fast float %4513, 0x3F910E6020000000
  %4515 = fadd fast float %4508, 0x3FC81DFBA0000000
  %4516 = fmul fast float %4515, %4103
  %4517 = fadd fast float %4516, 0x3F910E6020000000
  %4518 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = fsub fast float %4518, %4101
  %4522 = fsub fast float %4519, %4102
  %4523 = fsub fast float %4520, %4103
  %4524 = fmul fast float %4521, %4494
  %4525 = fmul fast float %4524, %4505
  %4526 = fmul fast float %4522, %4494
  %4527 = fmul fast float %4526, %4505
  %4528 = fmul fast float %4523, %4494
  %4529 = fmul fast float %4528, %4505
  %4530 = fadd fast float %4525, %4101
  %4531 = fadd fast float %4527, %4102
  %4532 = fadd fast float %4529, %4103
  %4533 = fmul fast float %4039, %4039
  %4534 = fmul fast float %4533, %4533
  %4535 = fadd fast float %4490, 1.000000e+00
  %4536 = fsub fast float %4535, %4505
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fsub fast float 1.000000e+00, %4534
  %4541 = call float @dx.op.binary.f32(i32 36, float %4537, float %4540)  ; FMin(a,b)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4543 = call float @dx.op.binary.f32(i32 35, float %4541, float %4542)  ; FMax(a,b)
  %4544 = fadd fast float %4539, 0xBFE4CCCCC0000000
  %4545 = fmul fast float %4544, 0x4006DB6DA0000000
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = fmul fast float %4546, 2.000000e+00
  %4548 = fsub fast float 3.000000e+00, %4547
  %4549 = bitcast float %4086 to i32
  %4550 = ashr i32 %4549, 1
  %4551 = add nsw i32 %4550, 532487669
  %4552 = bitcast i32 %4551 to float
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, 2.000000e+00
  %4558 = bitcast float %4087 to i32
  %4559 = ashr i32 %4558, 1
  %4560 = add nsw i32 %4559, 532487669
  %4561 = bitcast i32 %4560 to float
  %4562 = fsub fast float 1.000000e+00, %4561
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, 2.000000e+00
  %4567 = bitcast float %4088 to i32
  %4568 = ashr i32 %4567, 1
  %4569 = add nsw i32 %4568, 532487669
  %4570 = bitcast i32 %4569 to float
  %4571 = fsub fast float 1.000000e+00, %4570
  %4572 = bitcast float %4571 to i32
  %4573 = sub nsw i32 2129859010, %4572
  %4574 = bitcast i32 %4573 to float
  %4575 = fmul fast float %4574, 2.000000e+00
  %4576 = fsub fast float 0x4002A9FBE0000000, %4557
  %4577 = fadd fast float %4557, 0x3FD54FDF00000000
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, %4576
  %4582 = fmul fast float %4581, %4581
  %4583 = fsub fast float 0x4002A9FBE0000000, %4566
  %4584 = fadd fast float %4566, 0x3FD54FDF00000000
  %4585 = bitcast float %4584 to i32
  %4586 = sub nsw i32 2129859010, %4585
  %4587 = bitcast i32 %4586 to float
  %4588 = fmul fast float %4587, %4583
  %4589 = fmul fast float %4588, %4588
  %4590 = fsub fast float 0x4002A9FBE0000000, %4575
  %4591 = fadd fast float %4575, 0x3FD54FDF00000000
  %4592 = bitcast float %4591 to i32
  %4593 = sub nsw i32 2129859010, %4592
  %4594 = bitcast i32 %4593 to float
  %4595 = fmul fast float %4594, %4590
  %4596 = fmul fast float %4595, %4595
  %4597 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4582)  ; FMax(a,b)
  %4598 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4589)  ; FMax(a,b)
  %4599 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4596)  ; FMax(a,b)
  %4600 = fsub fast float 1.000000e+00, %4485
  %4601 = fadd fast float %4600, %4501
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fsub fast float 1.000000e+00, %4477
  %4604 = fmul fast float %4543, %4603
  %4605 = fmul fast float %4546, %4546
  %4606 = fmul fast float %4605, %4604
  %4607 = fmul fast float %4606, %4548
  %4608 = fmul fast float %4603, 0xBFE99999A0000000
  %4609 = fmul fast float %4608, %4494
  %4610 = fmul fast float %4609, %4505
  %4611 = fadd fast float %4610, 1.000000e+00
  %4612 = fadd fast float %4089, -1.000000e+00
  %4613 = fmul fast float %4611, %4612
  %4614 = fadd fast float %4613, 1.000000e+00
  %4615 = fsub fast float %4597, %4086
  %4616 = fsub fast float %4598, %4087
  %4617 = fsub fast float %4599, %4088
  %4618 = fmul fast float %4607, %4615
  %4619 = fmul fast float %4607, %4616
  %4620 = fmul fast float %4607, %4617
  %4621 = fadd fast float %4618, %4086
  %4622 = fadd fast float %4619, %4087
  %4623 = fadd fast float %4620, %4088
  %4624 = fsub fast float %75, %4027
  %4625 = fsub fast float %76, %4028
  %4626 = fsub fast float %77, %4029
  %4627 = fmul fast float %4607, %4624
  %4628 = fmul fast float %4607, %4625
  %4629 = fmul fast float %4607, %4626
  %4630 = fadd fast float %4627, %4027
  %4631 = fadd fast float %4628, %4028
  %4632 = fadd fast float %4629, %4029
  %4633 = fmul fast float %4607, %4602
  %4634 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4635 = fsub fast float 1.000000e+00, %4634
  %4636 = fmul fast float %4633, %4635
  %4637 = fadd fast float %4636, %4634
  %4638 = fsub fast float 1.000000e+00, %4039
  %4639 = fmul fast float %4607, %4638
  %4640 = fadd fast float %4639, %4039
  %4641 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4631, float %4632, float %4630, float %4631, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 25, float %4641)  ; Rsqrt(value)
  %4643 = fmul fast float %4630, %4642
  %4644 = fmul fast float %4631, %4642
  %4645 = fmul fast float %4632, %4642
  br label %4646

; <label>:4646                                    ; preds = %4484, %4463
  %4647 = phi float [ %4621, %4484 ], [ %4086, %4463 ]
  %4648 = phi float [ %4622, %4484 ], [ %4087, %4463 ]
  %4649 = phi float [ %4623, %4484 ], [ %4088, %4463 ]
  %4650 = phi float [ %4643, %4484 ], [ %4027, %4463 ]
  %4651 = phi float [ %4644, %4484 ], [ %4028, %4463 ]
  %4652 = phi float [ %4645, %4484 ], [ %4029, %4463 ]
  %4653 = phi float [ %4530, %4484 ], [ %4101, %4463 ]
  %4654 = phi float [ %4531, %4484 ], [ %4102, %4463 ]
  %4655 = phi float [ %4532, %4484 ], [ %4103, %4463 ]
  %4656 = phi float [ %4637, %4484 ], [ %4089, %4463 ]
  %4657 = phi float [ %4640, %4484 ], [ %4039, %4463 ]
  %4658 = select i1 %205, float 0.000000e+00, float %4649
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = fmul fast float %4661, 2.000000e+00
  %4663 = fmul fast float %4662, %4650
  %4664 = fmul fast float %4662, %4651
  %4665 = fmul fast float %4662, %4652
  %4666 = fsub fast float %151, %4663
  %4667 = fsub fast float %152, %4664
  %4668 = fsub fast float %153, %4665
  %4669 = call float @dx.op.binary.f32(i32 36, float %4657, float 1.000000e+00)  ; FMin(a,b)
  %4670 = fsub fast float 1.000000e+00, %4657
  %4671 = bitcast float %4670 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = fsub fast float 1.000000e+00, %45
  %4674 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.binary.f32(i32 35, float %4674, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4676 = fdiv fast float %4673, %4675
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4678, 5.000000e-01
  %4680 = fadd fast float %4679, 5.000000e-01
  %4681 = fmul fast float %4680, %45
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fmul fast float %4683, %4676
  %4685 = fadd fast float %4681, %4684
  %4686 = fsub fast float 5.000000e-01, %4679
  %4687 = fmul fast float %4686, %4653
  %4688 = fmul fast float %4686, %4654
  %4689 = fmul fast float %4686, %4655
  %4690 = fadd fast float %4685, %4687
  %4691 = fadd fast float %4685, %4688
  %4692 = fadd fast float %4685, %4689
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4694, 5.000000e-01
  %4696 = fadd fast float %4695, 5.000000e-01
  %4697 = fmul fast float %4696, %45
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4699, %4676
  %4701 = fadd fast float %4697, %4700
  %4702 = fsub fast float 5.000000e-01, %4695
  %4703 = fmul fast float %4702, %4653
  %4704 = fmul fast float %4702, %4654
  %4705 = fmul fast float %4702, %4655
  %4706 = fadd fast float %4701, %4703
  %4707 = fadd fast float %4701, %4704
  %4708 = fadd fast float %4701, %4705
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = call float @dx.op.binary.f32(i32 36, float %4653, float %4710)  ; FMin(a,b)
  %4712 = fsub fast float 1.000000e+00, %4669
  %4713 = fmul fast float %4711, %4712
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = call float @dx.op.binary.f32(i32 36, float %4654, float %4710)  ; FMin(a,b)
  %4719 = fmul fast float %4718, %4712
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = call float @dx.op.binary.f32(i32 36, float %4655, float %4710)  ; FMin(a,b)
  %4725 = fmul fast float %4724, %4712
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = bitcast float %4726 to i32
  %4728 = sub nsw i32 2129859010, %4727
  %4729 = bitcast i32 %4728 to float
  %4730 = fmul fast float %4669, %46
  %4731 = fmul fast float %4730, %4690
  %4732 = fmul fast float %4731, %4717
  %4733 = fmul fast float %4669, %47
  %4734 = fmul fast float %4733, %4691
  %4735 = fmul fast float %4734, %4723
  %4736 = fmul fast float %4669, %48
  %4737 = fmul fast float %4736, %4692
  %4738 = fmul fast float %4737, %4729
  %4739 = call float @dx.op.binary.f32(i32 36, float %4647, float %4710)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4712
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.binary.f32(i32 36, float %4648, float %4710)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4712
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = call float @dx.op.binary.f32(i32 36, float %4658, float %4710)  ; FMin(a,b)
  %4752 = fmul fast float %4751, %4712
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = bitcast float %4753 to i32
  %4755 = sub nsw i32 2129859010, %4754
  %4756 = bitcast i32 %4755 to float
  %4757 = fmul fast float %4730, %4706
  %4758 = fmul fast float %4757, %4744
  %4759 = fmul fast float %4733, %4707
  %4760 = fmul fast float %4759, %4750
  %4761 = fmul fast float %4736, %4708
  %4762 = fmul fast float %4761, %4756
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4735, float %4738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = select i1 %205, float 0.000000e+00, float %4732
  %4765 = select i1 %205, float %4763, float %4735
  %4766 = select i1 %205, float 0.000000e+00, float %4738
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4760, float %4762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = select i1 %205, float 0.000000e+00, float %4758
  %4769 = select i1 %205, float %4767, float %4760
  %4770 = select i1 %205, float 0.000000e+00, float %4762
  %4771 = fmul fast float %4660, 9.843750e-01
  %4772 = fmul fast float %4656, 9.843750e-01
  %4773 = fadd fast float %4771, 7.812500e-03
  %4774 = fadd fast float %4772, 7.812500e-03
  %4775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4773, float %4774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 3
  %4778 = fmul fast float %4776, %4647
  %4779 = fmul fast float %4776, %4648
  %4780 = fmul fast float %4776, %4658
  %4781 = fadd fast float %4778, %4777
  %4782 = fadd fast float %4779, %4777
  %4783 = fadd fast float %4780, %4777
  %4784 = fcmp fast ogt float %4040, 0.000000e+00
  br i1 %4784, label %4785, label %4811

; <label>:4785                                    ; preds = %4646
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4040, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = fadd fast float %4787, -5.000000e-01
  %4791 = fadd fast float %4788, -5.000000e-01
  %4792 = fadd fast float %4789, -5.000000e-01
  %4793 = fsub fast float 1.000000e+00, %4647
  %4794 = fsub fast float 1.000000e+00, %4648
  %4795 = fsub fast float 1.000000e+00, %4658
  %4796 = fmul fast float %4647, 4.000000e+00
  %4797 = fmul fast float %4796, %4793
  %4798 = fmul fast float %4797, %4790
  %4799 = fmul fast float %4648, 4.000000e+00
  %4800 = fmul fast float %4799, %4794
  %4801 = fmul fast float %4800, %4791
  %4802 = fmul fast float %4658, 4.000000e+00
  %4803 = fmul fast float %4802, %4795
  %4804 = fmul fast float %4803, %4792
  %4805 = fadd fast float %4798, %4781
  %4806 = fadd fast float %4801, %4782
  %4807 = fadd fast float %4804, %4783
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  br label %4811

; <label>:4811                                    ; preds = %4785, %4646
  %4812 = phi float [ %4808, %4785 ], [ %4781, %4646 ]
  %4813 = phi float [ %4809, %4785 ], [ %4782, %4646 ]
  %4814 = phi float [ %4810, %4785 ], [ %4783, %4646 ]
  %4815 = call float @dx.op.binary.f32(i32 35, float %4813, float %4814)  ; FMax(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4812, float %4815)  ; FMax(a,b)
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = fmul fast float %4817, %4764
  %4819 = fmul fast float %4817, %4765
  %4820 = fmul fast float %4817, %4766
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4654, float %4655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = fcmp fast ogt float %4821, 0x3E7FF19E20000000
  %4823 = fdiv fast float 1.000000e+00, %4821
  %4824 = select i1 %4822, float %4823, float 0.000000e+00
  %4825 = fmul fast float %4824, %4653
  %4826 = fmul fast float %4824, %4654
  %4827 = fmul fast float %4824, %4655
  %4828 = fadd fast float %4825, -1.000000e+00
  %4829 = fadd fast float %4826, -1.000000e+00
  %4830 = fadd fast float %4827, -1.000000e+00
  %4831 = fmul fast float %4828, 5.000000e-01
  %4832 = fmul fast float %4829, 5.000000e-01
  %4833 = fmul fast float %4830, 5.000000e-01
  %4834 = fadd fast float %4831, 1.000000e+00
  %4835 = fadd fast float %4832, 1.000000e+00
  %4836 = fadd fast float %4833, 1.000000e+00
  %4837 = fmul fast float %4812, %4768
  %4838 = fmul fast float %4813, %4769
  %4839 = fmul fast float %4814, %4770
  %4840 = fsub fast float 1.000000e+00, %4660
  %4841 = bitcast float %4840 to i32
  %4842 = sitofp i32 %4841 to float
  %4843 = fmul fast float %4842, 5.000000e+00
  %4844 = fadd fast float %4843, 0xC1EFBF8940000000
  %4845 = fptosi float %4844 to i32
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, %4041
  %4848 = fmul fast float %4764, %4847
  %4849 = fmul fast float %4848, %4817
  %4850 = fmul fast float %4849, %4834
  %4851 = fmul fast float %4765, %4847
  %4852 = fmul fast float %4851, %4817
  %4853 = fmul fast float %4852, %4835
  %4854 = fmul fast float %4766, %4847
  %4855 = fmul fast float %4854, %4817
  %4856 = fmul fast float %4855, %4836
  %4857 = fmul fast float %4818, %4067
  %4858 = fmul fast float %4819, %4067
  %4859 = fmul fast float %4820, %4067
  %4860 = fadd fast float %4837, %4033
  %4861 = fadd fast float %4860, %4850
  %4862 = fmul fast float %4861, %4067
  %4863 = fadd fast float %4838, %4034
  %4864 = fadd fast float %4863, %4853
  %4865 = fmul fast float %4864, %4067
  %4866 = fadd fast float %4839, %4035
  %4867 = fadd fast float %4866, %4856
  %4868 = fmul fast float %4867, %4067
  %4869 = bitcast i32 %4672 to float
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4872 = fcmp fast oeq float %4871, 0.000000e+00
  br i1 %4872, label %5100, label %4873

; <label>:4873                                    ; preds = %4811
  %4874 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4875 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4876 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = select i1 %205, float %4882, float %4878
  %4886 = select i1 %205, float %4884, float %4879
  %4887 = select i1 %205, float %4883, float %4880
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4890 = fcmp fast une float %4889, 0.000000e+00
  br i1 %4890, label %4891, label %4908

; <label>:4891                                    ; preds = %4873
  %4892 = fptoui float %68 to i32
  %4893 = fptoui float %69 to i32
  %4894 = lshr i32 %4892, 4
  %4895 = lshr i32 %4893, 4
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = fptoui float %4897 to i32
  %4899 = add i32 %4898, 15
  %4900 = lshr i32 %4899, 4
  %4901 = mul i32 %4900, %4895
  %4902 = add i32 %4901, %4894
  %4903 = shl i32 %4902, 3
  %4904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.i32 %4904, 0
  %4906 = and i32 %4905, -268435456
  %4907 = icmp eq i32 %4906, -1342177280
  br i1 %4907, label %4918, label %4908

; <label>:4908                                    ; preds = %4891, %4873
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4912 = fmul fast float %4910, %68
  %4913 = fmul fast float %4911, %69
  %4914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4912, float %4913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.ResRet.f32 %4914, 2
  br label %4918

; <label>:4918                                    ; preds = %4908, %4891
  %4919 = phi float [ %4915, %4908 ], [ 0.000000e+00, %4891 ]
  %4920 = phi float [ %4916, %4908 ], [ 0.000000e+00, %4891 ]
  %4921 = phi float [ %4917, %4908 ], [ 0.000000e+00, %4891 ]
  %4922 = call float @dx.op.binary.f32(i32 36, float %4920, float %4921)  ; FMin(a,b)
  %4923 = call float @dx.op.binary.f32(i32 36, float %4919, float %4922)  ; FMin(a,b)
  %4924 = fcmp fast ogt float %4923, 0.000000e+00
  br i1 %4924, label %4925, label %5100, !dx.controlflow.hints !72

; <label>:4925                                    ; preds = %4918
  %4926 = fmul fast float %4919, %4885
  %4927 = fmul fast float %4920, %4886
  %4928 = fmul fast float %4921, %4887
  %4929 = fsub fast float %4874, %151
  %4930 = fsub fast float %4875, %152
  %4931 = fsub fast float %4876, %153
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %4929, float %4930, float %4931)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 25, float %4932)  ; Rsqrt(value)
  %4934 = fmul fast float %4933, %4929
  %4935 = fmul fast float %4933, %4930
  %4936 = fmul fast float %4933, %4931
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4482, float %4483, float %4934, float %4935, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4940 = fmul fast float %4939, %4939
  %4941 = fmul fast float %4940, %4869
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, %4939
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float %4934, float %4935, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = fmul fast float %4944, %4944
  %4946 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4947 = fsub fast float 1.000000e+00, %4656
  %4948 = call float @dx.op.binary.f32(i32 35, float %4947, float 0x3F847AE140000000)  ; FMax(a,b)
  %4949 = fmul fast float %4948, %4948
  %4950 = fmul fast float %4949, %4949
  %4951 = fsub fast float 1.000000e+00, %4950
  %4952 = fmul fast float %4660, %4660
  %4953 = fmul fast float %4952, %4951
  %4954 = fadd fast float %4953, %4950
  %4955 = bitcast float %4954 to i32
  %4956 = ashr i32 %4955, 1
  %4957 = add nsw i32 %4956, 532487669
  %4958 = bitcast i32 %4957 to float
  %4959 = fadd fast float %4958, %4660
  %4960 = fmul fast float %4950, %4945
  %4961 = fsub fast float 1.000000e+00, %4945
  %4962 = fadd fast float %4961, %4960
  %4963 = fmul fast float %4946, %4946
  %4964 = fmul fast float %4963, %4951
  %4965 = fadd fast float %4964, %4950
  %4966 = bitcast float %4965 to i32
  %4967 = ashr i32 %4966, 1
  %4968 = add nsw i32 %4967, 532487669
  %4969 = bitcast i32 %4968 to float
  %4970 = fadd fast float %4969, %4946
  %4971 = fmul fast float %4962, %4962
  %4972 = fmul fast float %4971, %4959
  %4973 = fmul fast float %4972, %4970
  %4974 = fdiv fast float 0x3FF0A00000000000, %4973
  %4975 = fmul fast float %4974, %4950
  %4976 = call float @dx.op.unary.f32(i32 6, float %4938)  ; FAbs(value)
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sitofp i32 %4978 to float
  %4980 = fmul fast float %4979, 5.000000e+00
  %4981 = fadd fast float %4980, 0xC1EFBF8940000000
  %4982 = fptosi float %4981 to i32
  %4983 = bitcast i32 %4982 to float
  %4984 = fsub fast float 1.000000e+00, %4647
  %4985 = fsub fast float 1.000000e+00, %4648
  %4986 = fsub fast float 1.000000e+00, %4658
  %4987 = fmul fast float %4983, %4984
  %4988 = fmul fast float %4983, %4985
  %4989 = fmul fast float %4983, %4986
  %4990 = fadd fast float %4987, %4647
  %4991 = fadd fast float %4988, %4648
  %4992 = fadd fast float %4989, %4658
  br i1 %4784, label %4993, label %5016

; <label>:4993                                    ; preds = %4925
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4040, float %4976, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.ResRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.ResRet.f32 %4994, 2
  %4998 = fadd fast float %4995, -5.000000e-01
  %4999 = fadd fast float %4996, -5.000000e-01
  %5000 = fadd fast float %4997, -5.000000e-01
  %5001 = fmul fast float %4647, 4.000000e+00
  %5002 = fmul fast float %5001, %4984
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %4648, 4.000000e+00
  %5005 = fmul fast float %5004, %4985
  %5006 = fmul fast float %5005, %4999
  %5007 = fmul fast float %4658, 4.000000e+00
  %5008 = fmul fast float %5007, %4986
  %5009 = fmul fast float %5008, %5000
  %5010 = fadd fast float %5003, %4990
  %5011 = fadd fast float %5006, %4991
  %5012 = fadd fast float %5009, %4992
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5015 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  br label %5016

; <label>:5016                                    ; preds = %4993, %4925
  %5017 = phi float [ %5013, %4993 ], [ %4990, %4925 ]
  %5018 = phi float [ %5014, %4993 ], [ %4991, %4925 ]
  %5019 = phi float [ %5015, %4993 ], [ %4992, %4925 ]
  %5020 = fmul fast float %4937, 9.843750e-01
  %5021 = fadd fast float %5020, 7.812500e-03
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5021, float %4774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 2
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 3
  %5025 = fmul fast float %5023, %4647
  %5026 = fmul fast float %5023, %4648
  %5027 = fmul fast float %5023, %4658
  %5028 = fadd fast float %5025, %5024
  %5029 = fadd fast float %5026, %5024
  %5030 = fadd fast float %5027, %5024
  br i1 %4784, label %5031, label %5054

; <label>:5031                                    ; preds = %5016
  %5032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4040, float %4937, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.ResRet.f32 %5032, 1
  %5035 = extractvalue %dx.types.ResRet.f32 %5032, 2
  %5036 = fadd fast float %5033, -5.000000e-01
  %5037 = fadd fast float %5034, -5.000000e-01
  %5038 = fadd fast float %5035, -5.000000e-01
  %5039 = fmul fast float %4647, 4.000000e+00
  %5040 = fmul fast float %5039, %4984
  %5041 = fmul fast float %5040, %5036
  %5042 = fmul fast float %4648, 4.000000e+00
  %5043 = fmul fast float %5042, %4985
  %5044 = fmul fast float %5043, %5037
  %5045 = fmul fast float %4658, 4.000000e+00
  %5046 = fmul fast float %5045, %4986
  %5047 = fmul fast float %5046, %5038
  %5048 = fadd fast float %5041, %5028
  %5049 = fadd fast float %5044, %5029
  %5050 = fadd fast float %5047, %5030
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  br label %5054

; <label>:5054                                    ; preds = %5031, %5016
  %5055 = phi float [ %5051, %5031 ], [ %5028, %5016 ]
  %5056 = phi float [ %5052, %5031 ], [ %5029, %5016 ]
  %5057 = phi float [ %5053, %5031 ], [ %5030, %5016 ]
  %5058 = call float @dx.op.binary.f32(i32 35, float %5056, float %5057)  ; FMax(a,b)
  %5059 = call float @dx.op.binary.f32(i32 35, float %5055, float %5058)  ; FMax(a,b)
  %5060 = fsub fast float 1.000000e+00, %5059
  %5061 = fmul fast float %5017, %4975
  %5062 = fmul fast float %5018, %4975
  %5063 = fmul fast float %5019, %4975
  %5064 = fsub fast float 1.000000e+00, %4938
  %5065 = bitcast float %5064 to i32
  %5066 = sitofp i32 %5065 to float
  %5067 = fmul fast float %5066, 5.000000e+00
  %5068 = fadd fast float %5067, 0xC1EFBF8940000000
  %5069 = fptosi float %5068 to i32
  %5070 = bitcast i32 %5069 to float
  %5071 = fmul fast float %5070, %4041
  %5072 = fmul fast float %5060, %5071
  %5073 = fmul fast float %5072, %4834
  %5074 = fmul fast float %5072, %4835
  %5075 = fmul fast float %5072, %4836
  %5076 = fadd fast float %5073, %5061
  %5077 = fadd fast float %5074, %5062
  %5078 = fadd fast float %5075, %5063
  %5079 = fmul fast float %4943, %4926
  %5080 = fmul fast float %5079, %5060
  %5081 = fmul fast float %4943, %4927
  %5082 = fmul fast float %5081, %5060
  %5083 = fmul fast float %4943, %4928
  %5084 = fmul fast float %5083, %5060
  %5085 = fmul fast float %5079, %5076
  %5086 = fmul fast float %5081, %5077
  %5087 = fmul fast float %5083, %5078
  %5088 = fadd fast float %5080, %4818
  %5089 = fmul fast float %5088, %4067
  %5090 = fadd fast float %5082, %4819
  %5091 = fmul fast float %5090, %4067
  %5092 = fadd fast float %5084, %4820
  %5093 = fmul fast float %5092, %4067
  %5094 = fadd fast float %5085, %4861
  %5095 = fmul fast float %5094, %4067
  %5096 = fadd fast float %5086, %4864
  %5097 = fmul fast float %5096, %4067
  %5098 = fadd fast float %5087, %4867
  %5099 = fmul fast float %5098, %4067
  br label %5100

; <label>:5100                                    ; preds = %5054, %4918, %4811
  %5101 = phi float [ %4862, %4811 ], [ %4862, %4918 ], [ %5095, %5054 ]
  %5102 = phi float [ %4865, %4811 ], [ %4865, %4918 ], [ %5097, %5054 ]
  %5103 = phi float [ %4868, %4811 ], [ %4868, %4918 ], [ %5099, %5054 ]
  %5104 = phi float [ %4857, %4811 ], [ %4857, %4918 ], [ %5089, %5054 ]
  %5105 = phi float [ %4858, %4811 ], [ %4858, %4918 ], [ %5091, %5054 ]
  %5106 = phi float [ %4859, %4811 ], [ %4859, %4918 ], [ %5093, %5054 ]
  %5107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.i32 %5107, 0
  %5109 = icmp eq i32 %5108, 0
  br i1 %5109, label %5544, label %5110

; <label>:5110                                    ; preds = %5100
  %5111 = fptoui float %68 to i32
  %5112 = fptoui float %69 to i32
  %5113 = lshr i32 %5111, 4
  %5114 = lshr i32 %5112, 4
  %5115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.i32 %5115, 0
  %5117 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5114, i32 %5116, i32 %5113)  ; UMad(a,b,c)
  %5118 = add nsw i32 %5108, -1
  %5119 = call i32 @dx.op.binary.i32(i32 37, i32 %5118, i32 0)  ; IMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5121 = fptoui float %5120 to i32
  %5122 = lshr i32 %5121, 5
  %5123 = call i32 @dx.op.binary.i32(i32 40, i32 %5122, i32 8191)  ; UMin(a,b)
  %5124 = shl i32 %5123, 2
  %5125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5124, i32 undef)  ; BufferLoad(srv,index,wot)
  %5126 = extractvalue %dx.types.ResRet.i32 %5125, 0
  %5127 = lshr i32 %5126, 16
  %5128 = and i32 %5126, 65535
  %5129 = lshr i32 %5126, 21
  %5130 = lshr i32 %5128, 5
  %5131 = call i32 @dx.op.binary.i32(i32 40, i32 %5130, i32 %5119)  ; UMin(a,b)
  %5132 = icmp ugt i32 %5129, %5131
  br i1 %5132, label %5544, label %5133

; <label>:5133                                    ; preds = %5110
  br label %5134

; <label>:5134                                    ; preds = %5534, %5133
  %5135 = phi i32 [ %5541, %5534 ], [ %5129, %5133 ]
  %5136 = phi float [ %5535, %5534 ], [ %5101, %5133 ]
  %5137 = phi float [ %5536, %5534 ], [ %5102, %5133 ]
  %5138 = phi float [ %5537, %5534 ], [ %5103, %5133 ]
  %5139 = phi float [ %5538, %5534 ], [ %5104, %5133 ]
  %5140 = phi float [ %5539, %5534 ], [ %5105, %5133 ]
  %5141 = phi float [ %5540, %5534 ], [ %5106, %5133 ]
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 0
  %5144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5117, i32 %5143, i32 %5135)  ; UMad(a,b,c)
  %5145 = shl i32 %5144, 2
  %5146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.i32 %5146, 0
  %5148 = shl i32 %5135, 5
  %5149 = sub nsw i32 %5127, %5148
  %5150 = call i32 @dx.op.binary.i32(i32 37, i32 %5149, i32 0)  ; IMax(a,b)
  %5151 = call i32 @dx.op.binary.i32(i32 38, i32 %5150, i32 31)  ; IMin(a,b)
  %5152 = sub nsw i32 1, %5127
  %5153 = add nsw i32 %5152, %5128
  %5154 = call i32 @dx.op.binary.i32(i32 37, i32 %5153, i32 0)  ; IMax(a,b)
  %5155 = call i32 @dx.op.binary.i32(i32 38, i32 %5154, i32 32)  ; IMin(a,b)
  %5156 = and i32 %5155, 31
  %5157 = shl i32 -1, %5156
  %5158 = xor i32 %5157, -1
  %5159 = and i32 %5151, 31
  %5160 = shl i32 %5158, %5159
  %5161 = icmp eq i32 %5155, 32
  %5162 = select i1 %5161, i32 -1, i32 %5160
  %5163 = and i32 %5162, %5147
  %5164 = icmp eq i32 %5163, 0
  br i1 %5164, label %5534, label %5165

; <label>:5165                                    ; preds = %5134
  br label %5166

; <label>:5166                                    ; preds = %5246, %5165
  %5167 = phi i32 [ %5178, %5246 ], [ %5163, %5165 ]
  %5168 = phi float [ %5247, %5246 ], [ %5136, %5165 ]
  %5169 = phi float [ %5248, %5246 ], [ %5137, %5165 ]
  %5170 = phi float [ %5249, %5246 ], [ %5138, %5165 ]
  %5171 = phi float [ %5250, %5246 ], [ %5139, %5165 ]
  %5172 = phi float [ %5251, %5246 ], [ %5140, %5165 ]
  %5173 = phi float [ %5252, %5246 ], [ %5141, %5165 ]
  %5174 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5167)  ; FirstbitLo(value)
  %5175 = add i32 %5174, %5148
  %5176 = and i32 %5174, 31
  %5177 = shl i32 1, %5176
  %5178 = xor i32 %5177, %5167
  %5179 = mul i32 %5175, 112
  %5180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5184 = or i32 %5179, 12
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = add i32 %5179, 44
  %5188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5187, i32 undef)  ; BufferLoad(srv,index,wot)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = add i32 %5179, 48
  %5191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5190, i32 undef)  ; BufferLoad(srv,index,wot)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.ResRet.f32 %5191, 1
  %5194 = extractvalue %dx.types.ResRet.f32 %5191, 2
  %5195 = add i32 %5179, 80
  %5196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5195, i32 undef)  ; BufferLoad(srv,index,wot)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = select i1 %205, float %5197, float %5181
  %5201 = select i1 %205, float %5199, float %5182
  %5202 = select i1 %205, float %5198, float %5183
  %5203 = fsub fast float %5192, %131
  %5204 = fsub fast float %5193, %132
  %5205 = fsub fast float %5194, %133
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = call float @dx.op.unary.f32(i32 24, float %5206)  ; Sqrt(value)
  %5208 = fdiv fast float 1.000000e+00, %5207
  %5209 = fmul fast float %5208, %5203
  %5210 = fmul fast float %5208, %5204
  %5211 = fmul fast float %5208, %5205
  %5212 = fadd fast float %5207, %5186
  %5213 = fdiv fast float 1.000000e+00, %5212
  %5214 = fmul float %5189, %5213
  %5215 = fmul float %5214, %5214
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = and i32 %5177, %5163
  %5218 = icmp eq i32 %5217, 0
  br i1 %5218, label %5241, label %5219, !dx.controlflow.hints !73

; <label>:5219                                    ; preds = %5166
  %5220 = lshr i32 %5111, 5
  %5221 = lshr i32 %5112, 5
  %5222 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5220, i32 %5221, i32 %5175, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5223 = extractvalue %dx.types.ResRet.i32 %5222, 0
  %5224 = and i32 %5223, 3
  %5225 = icmp eq i32 %5224, 0
  %5226 = select i1 %5225, float 1.000000e+00, float 0.000000e+00
  %5227 = icmp eq i32 %5224, 3
  br i1 %5227, label %5228, label %5241

; <label>:5228                                    ; preds = %5219
  %5229 = lshr i32 %5223, 10
  %5230 = and i32 %5229, 8160
  %5231 = and i32 %5112, 31
  %5232 = or i32 %5230, %5231
  %5233 = lshr i32 %5223, 1
  %5234 = and i32 %5233, 16352
  %5235 = and i32 %5111, 31
  %5236 = or i32 %5234, %5235
  %5237 = lshr i32 %5223, 23
  %5238 = and i32 %5237, 255
  %5239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5236, i32 %5232, i32 %5238, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  br label %5241

; <label>:5241                                    ; preds = %5228, %5219, %5166
  %5242 = phi float [ %5240, %5228 ], [ %5226, %5219 ], [ 0.000000e+00, %5166 ]
  %5243 = call float @dx.op.binary.f32(i32 36, float %5242, float %5242)  ; FMin(a,b)
  %5244 = call float @dx.op.binary.f32(i32 36, float %5242, float %5243)  ; FMin(a,b)
  %5245 = fcmp fast ogt float %5244, 0.000000e+00
  br i1 %5245, label %5254, label %5246, !dx.controlflow.hints !74

; <label>:5246                                    ; preds = %5490, %5241
  %5247 = phi float [ %5168, %5241 ], [ %5530, %5490 ]
  %5248 = phi float [ %5169, %5241 ], [ %5531, %5490 ]
  %5249 = phi float [ %5170, %5241 ], [ %5532, %5490 ]
  %5250 = phi float [ %5171, %5241 ], [ %5524, %5490 ]
  %5251 = phi float [ %5172, %5241 ], [ %5525, %5490 ]
  %5252 = phi float [ %5173, %5241 ], [ %5526, %5490 ]
  %5253 = icmp eq i32 %5167, %5177
  br i1 %5253, label %5533, label %5166

; <label>:5254                                    ; preds = %5241
  %5255 = fmul fast float %5242, %5200
  %5256 = fmul fast float %5242, %5201
  %5257 = fmul fast float %5242, %5202
  %5258 = fsub fast float %5194, %4464
  %5259 = fcmp fast ogt float %5258, 0.000000e+00
  %5260 = fsub fast float %133, %4464
  %5261 = fcmp fast ogt float %5260, 0.000000e+00
  %5262 = xor i1 %5261, %5259
  %5263 = fsub fast float %4464, %5194
  %5264 = fmul fast float %5263, 2.000000e+00
  %5265 = fadd fast float %5264, %5194
  %5266 = select i1 %5262, float %5194, float %5265
  %5267 = fsub fast float %5266, %133
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5267, float %5203, float %5204, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call float @dx.op.unary.f32(i32 25, float %5268)  ; Rsqrt(value)
  %5270 = fmul fast float %5269, %5203
  %5271 = fmul fast float %5269, %5204
  %5272 = fmul fast float %5269, %5267
  %5273 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5270, float %5271, float %5272)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fdiv fast float 1.000000e+00, %5274
  %5276 = fmul fast float %5275, %5273
  %5277 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5260, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fcmp fast ogt float %5277, 0.000000e+00
  %5279 = fcmp fast olt float %5277, 0.000000e+00
  %5280 = zext i1 %5278 to i32
  %5281 = zext i1 %5279 to i32
  %5282 = sub nsw i32 %5280, %5281
  %5283 = sitofp i32 %5282 to float
  %5284 = fsub fast float %5266, %4464
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5284, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = fcmp fast ogt float %5285, 0.000000e+00
  %5287 = fcmp fast olt float %5285, 0.000000e+00
  %5288 = zext i1 %5286 to i32
  %5289 = zext i1 %5287 to i32
  %5290 = sub nsw i32 %5288, %5289
  %5291 = sitofp i32 %5290 to float
  %5292 = fcmp fast une float %5283, %5291
  br i1 %5292, label %5293, label %5303

; <label>:5293                                    ; preds = %5254
  %5294 = fmul fast float %5276, %5272
  %5295 = fmul fast float %5276, %5271
  %5296 = fmul fast float %5276, %5270
  %5297 = fmul fast float %5296, %5296
  %5298 = fmul fast float %5295, %5295
  %5299 = fadd fast float %5297, %5298
  %5300 = fmul fast float %5294, %5294
  %5301 = fadd fast float %5299, %5300
  %5302 = call float @dx.op.unary.f32(i32 24, float %5301)  ; Sqrt(value)
  br label %5315

; <label>:5303                                    ; preds = %5254
  %5304 = icmp slt i32 %5282, 0
  br i1 %5304, label %5305, label %5315

; <label>:5305                                    ; preds = %5303
  %5306 = fsub fast float %131, %5192
  %5307 = fsub fast float %132, %5193
  %5308 = fsub fast float %133, %5266
  %5309 = fmul fast float %5306, %5306
  %5310 = fmul fast float %5307, %5307
  %5311 = fadd fast float %5309, %5310
  %5312 = fmul fast float %5308, %5308
  %5313 = fadd fast float %5311, %5312
  %5314 = call float @dx.op.unary.f32(i32 24, float %5313)  ; Sqrt(value)
  br label %5315

; <label>:5315                                    ; preds = %5305, %5303, %5293
  %5316 = phi float [ %5302, %5293 ], [ %5314, %5305 ], [ 0.000000e+00, %5303 ]
  %5317 = and i1 %5261, %5259
  %5318 = fsub fast float -0.000000e+00, %5316
  %5319 = select i1 %5317, float -0.000000e+00, float %5318
  %5320 = fmul fast float %4465, 0x3FF7154760000000
  %5321 = fmul fast float %5320, %5319
  %5322 = fmul fast float %4466, 0x3FF7154760000000
  %5323 = fmul fast float %5322, %5319
  %5324 = fmul fast float %4467, 0x3FF7154760000000
  %5325 = fmul fast float %5324, %5319
  %5326 = call float @dx.op.unary.f32(i32 21, float %5321)  ; Exp(value)
  %5327 = call float @dx.op.unary.f32(i32 21, float %5323)  ; Exp(value)
  %5328 = call float @dx.op.unary.f32(i32 21, float %5325)  ; Exp(value)
  %5329 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5332 = fmul fast float %5255, %5329
  %5333 = fmul fast float %5256, %5330
  %5334 = fmul fast float %5257, %5331
  %5335 = fsub fast float %5209, %151
  %5336 = fsub fast float %5210, %152
  %5337 = fsub fast float %5211, %153
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5336, float %5337, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.unary.f32(i32 25, float %5338)  ; Rsqrt(value)
  %5340 = fmul fast float %5339, %5335
  %5341 = fmul fast float %5339, %5336
  %5342 = fmul fast float %5339, %5337
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5210, float %5211, float %4650, float %4651, float %4652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4482, float %4483, float %5340, float %5341, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5346 = fmul fast float %5345, %5216
  %5347 = fmul fast float %5345, %5345
  %5348 = fmul fast float %5347, %4869
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fmul fast float %5346, %5349
  %5351 = bitcast float %5206 to i32
  %5352 = ashr i32 %5351, 1
  %5353 = sub nsw i32 1597463007, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, %5203
  %5356 = fmul fast float %5354, %5204
  %5357 = fmul fast float %5354, %5205
  %5358 = fsub fast float %5355, %151
  %5359 = fsub fast float %5356, %152
  %5360 = fsub fast float %5357, %153
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5358, float %5359, float %5360, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.unary.f32(i32 25, float %5361)  ; Rsqrt(value)
  %5363 = fmul fast float %5358, %5362
  %5364 = fmul fast float %5359, %5362
  %5365 = fmul fast float %5360, %5362
  %5366 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float %5363, float %5364, float %5365)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fmul fast float %5366, %5366
  %5368 = call float @dx.op.unary.f32(i32 6, float %5343)  ; FAbs(value)
  %5369 = fsub fast float 1.000000e+00, %4656
  %5370 = call float @dx.op.binary.f32(i32 35, float %5369, float 0x3F847AE140000000)  ; FMax(a,b)
  %5371 = fmul fast float %5370, %5370
  %5372 = fmul fast float %5371, %5371
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %4660, %4660
  %5375 = fmul fast float %5374, %5373
  %5376 = fadd fast float %5375, %5372
  %5377 = bitcast float %5376 to i32
  %5378 = ashr i32 %5377, 1
  %5379 = add nsw i32 %5378, 532487669
  %5380 = bitcast i32 %5379 to float
  %5381 = fadd fast float %5380, %4660
  %5382 = fmul fast float %5372, %5367
  %5383 = fsub fast float 1.000000e+00, %5367
  %5384 = fadd fast float %5383, %5382
  %5385 = fmul fast float %5368, %5368
  %5386 = fmul fast float %5385, %5373
  %5387 = fadd fast float %5386, %5372
  %5388 = bitcast float %5387 to i32
  %5389 = ashr i32 %5388, 1
  %5390 = add nsw i32 %5389, 532487669
  %5391 = bitcast i32 %5390 to float
  %5392 = fadd fast float %5391, %5368
  %5393 = fmul fast float %5384, %5384
  %5394 = fmul fast float %5393, %5381
  %5395 = fmul fast float %5394, %5392
  %5396 = fdiv fast float 1.000000e+00, %5395
  %5397 = bitcast float %5372 to i32
  %5398 = sitofp i32 %5397 to float
  %5399 = fmul fast float %5398, 0x3FE7F73180000000
  %5400 = fadd fast float %5399, 0x41AFE27C40000000
  %5401 = fptosi float %5400 to i32
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5189, 0x3FD80E9D60000000
  %5404 = fmul fast float %5403, %5354
  %5405 = fadd fast float %5402, %5404
  %5406 = bitcast float %5405 to i32
  %5407 = sub nsw i32 2129859010, %5406
  %5408 = bitcast i32 %5407 to float
  %5409 = fmul fast float %5372, %5396
  %5410 = fmul fast float %5409, %5402
  %5411 = fmul fast float %5410, %5408
  %5412 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = bitcast float %5413 to i32
  %5415 = sitofp i32 %5414 to float
  %5416 = fmul fast float %5415, 5.000000e+00
  %5417 = fadd fast float %5416, 0xC1EFBF8940000000
  %5418 = fptosi float %5417 to i32
  %5419 = bitcast i32 %5418 to float
  %5420 = fsub fast float 1.000000e+00, %4647
  %5421 = fsub fast float 1.000000e+00, %4648
  %5422 = fsub fast float 1.000000e+00, %4658
  %5423 = fmul fast float %5419, %5420
  %5424 = fmul fast float %5419, %5421
  %5425 = fmul fast float %5419, %5422
  %5426 = fadd fast float %5423, %4647
  %5427 = fadd fast float %5424, %4648
  %5428 = fadd fast float %5425, %4658
  br i1 %4784, label %5429, label %5452

; <label>:5429                                    ; preds = %5315
  %5430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4040, float %5412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = fadd fast float %5431, -5.000000e-01
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fadd fast float %5433, -5.000000e-01
  %5437 = fmul fast float %4647, 4.000000e+00
  %5438 = fmul fast float %5437, %5420
  %5439 = fmul fast float %5438, %5434
  %5440 = fmul fast float %4648, 4.000000e+00
  %5441 = fmul fast float %5440, %5421
  %5442 = fmul fast float %5441, %5435
  %5443 = fmul fast float %4658, 4.000000e+00
  %5444 = fmul fast float %5443, %5422
  %5445 = fmul fast float %5444, %5436
  %5446 = fadd fast float %5439, %5426
  %5447 = fadd fast float %5442, %5427
  %5448 = fadd fast float %5445, %5428
  %5449 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  br label %5452

; <label>:5452                                    ; preds = %5429, %5315
  %5453 = phi float [ %5449, %5429 ], [ %5426, %5315 ]
  %5454 = phi float [ %5450, %5429 ], [ %5427, %5315 ]
  %5455 = phi float [ %5451, %5429 ], [ %5428, %5315 ]
  %5456 = fmul fast float %5343, 9.843750e-01
  %5457 = fadd fast float %5456, 7.812500e-03
  %5458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5457, float %4774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 2
  %5460 = extractvalue %dx.types.ResRet.f32 %5458, 3
  %5461 = fmul fast float %5459, %4647
  %5462 = fmul fast float %5459, %4648
  %5463 = fmul fast float %5459, %4658
  %5464 = fadd fast float %5461, %5460
  %5465 = fadd fast float %5462, %5460
  %5466 = fadd fast float %5463, %5460
  br i1 %4784, label %5467, label %5490

; <label>:5467                                    ; preds = %5452
  %5468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4040, float %5343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5469 = extractvalue %dx.types.ResRet.f32 %5468, 0
  %5470 = extractvalue %dx.types.ResRet.f32 %5468, 1
  %5471 = extractvalue %dx.types.ResRet.f32 %5468, 2
  %5472 = fadd fast float %5469, -5.000000e-01
  %5473 = fadd fast float %5470, -5.000000e-01
  %5474 = fadd fast float %5471, -5.000000e-01
  %5475 = fmul fast float %4647, 4.000000e+00
  %5476 = fmul fast float %5475, %5420
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %4648, 4.000000e+00
  %5479 = fmul fast float %5478, %5421
  %5480 = fmul fast float %5479, %5473
  %5481 = fmul fast float %4658, 4.000000e+00
  %5482 = fmul fast float %5481, %5422
  %5483 = fmul fast float %5482, %5474
  %5484 = fadd fast float %5477, %5464
  %5485 = fadd fast float %5480, %5465
  %5486 = fadd fast float %5483, %5466
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  br label %5490

; <label>:5490                                    ; preds = %5467, %5452
  %5491 = phi float [ %5487, %5467 ], [ %5464, %5452 ]
  %5492 = phi float [ %5488, %5467 ], [ %5465, %5452 ]
  %5493 = phi float [ %5489, %5467 ], [ %5466, %5452 ]
  %5494 = call float @dx.op.binary.f32(i32 35, float %5492, float %5493)  ; FMax(a,b)
  %5495 = call float @dx.op.binary.f32(i32 35, float %5491, float %5494)  ; FMax(a,b)
  %5496 = fsub fast float 1.000000e+00, %5495
  %5497 = fmul fast float %5453, %5411
  %5498 = fmul fast float %5454, %5411
  %5499 = fmul fast float %5455, %5411
  %5500 = fsub fast float 1.000000e+00, %5344
  %5501 = bitcast float %5500 to i32
  %5502 = sitofp i32 %5501 to float
  %5503 = fmul fast float %5502, 5.000000e+00
  %5504 = fadd fast float %5503, 0xC1EFBF8940000000
  %5505 = fptosi float %5504 to i32
  %5506 = bitcast i32 %5505 to float
  %5507 = fmul fast float %5506, %4041
  %5508 = fmul fast float %5496, %5507
  %5509 = fmul fast float %5508, %4834
  %5510 = fmul fast float %5508, %4835
  %5511 = fmul fast float %5508, %4836
  %5512 = fadd fast float %5509, %5497
  %5513 = fadd fast float %5510, %5498
  %5514 = fadd fast float %5511, %5499
  %5515 = fmul fast float %5332, %4067
  %5516 = fmul fast float %5515, %5350
  %5517 = fmul fast float %5516, %5496
  %5518 = fmul fast float %5333, %4067
  %5519 = fmul fast float %5518, %5350
  %5520 = fmul fast float %5519, %5496
  %5521 = fmul fast float %5334, %4067
  %5522 = fmul fast float %5521, %5350
  %5523 = fmul fast float %5522, %5496
  %5524 = fadd fast float %5517, %5171
  %5525 = fadd fast float %5520, %5172
  %5526 = fadd fast float %5523, %5173
  %5527 = fmul fast float %5516, %5512
  %5528 = fmul fast float %5519, %5513
  %5529 = fmul fast float %5522, %5514
  %5530 = fadd fast float %5527, %5168
  %5531 = fadd fast float %5528, %5169
  %5532 = fadd fast float %5529, %5170
  br label %5246

; <label>:5533                                    ; preds = %5246
  br label %5534

; <label>:5534                                    ; preds = %5533, %5134
  %5535 = phi float [ %5136, %5134 ], [ %5247, %5533 ]
  %5536 = phi float [ %5137, %5134 ], [ %5248, %5533 ]
  %5537 = phi float [ %5138, %5134 ], [ %5249, %5533 ]
  %5538 = phi float [ %5139, %5134 ], [ %5250, %5533 ]
  %5539 = phi float [ %5140, %5134 ], [ %5251, %5533 ]
  %5540 = phi float [ %5141, %5134 ], [ %5252, %5533 ]
  %5541 = add i32 %5135, 1
  %5542 = icmp ugt i32 %5541, %5131
  br i1 %5542, label %5543, label %5134

; <label>:5543                                    ; preds = %5534
  br label %5544

; <label>:5544                                    ; preds = %5543, %5110, %5100
  %5545 = phi float [ %5101, %5100 ], [ %5101, %5110 ], [ %5535, %5543 ]
  %5546 = phi float [ %5102, %5100 ], [ %5102, %5110 ], [ %5536, %5543 ]
  %5547 = phi float [ %5103, %5100 ], [ %5103, %5110 ], [ %5537, %5543 ]
  %5548 = phi float [ %5104, %5100 ], [ %5104, %5110 ], [ %5538, %5543 ]
  %5549 = phi float [ %5105, %5100 ], [ %5105, %5110 ], [ %5539, %5543 ]
  %5550 = phi float [ %5106, %5100 ], [ %5106, %5110 ], [ %5540, %5543 ]
  %5551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.i32 %5551, 3
  %5553 = bitcast i32 %5552 to float
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5554, %165
  %5556 = fadd fast float %5555, %5553
  %5557 = call float @dx.op.unary.f32(i32 24, float %4653)  ; Sqrt(value)
  %5558 = call float @dx.op.unary.f32(i32 24, float %4654)  ; Sqrt(value)
  %5559 = call float @dx.op.unary.f32(i32 24, float %4655)  ; Sqrt(value)
  %5560 = fmul fast float %5557, %5548
  %5561 = fmul fast float %5558, %5549
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  br i1 %205, label %5564, label %5593

; <label>:5564                                    ; preds = %5544
  %5565 = fadd fast float %5550, %4043
  %5566 = fmul fast float %5565, %4045
  %5567 = fsub fast float 1.000000e+00, %4045
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 3
  %5571 = fmul fast float %5570, %5568
  %5572 = fadd fast float %5571, %5566
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = fmul fast float %5574, %4840
  %5576 = fsub fast float %5572, %5575
  %5577 = fadd fast float %5561, %5560
  %5578 = fmul fast float %5563, %5577
  %5579 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5580 = fsub fast float %5576, %5579
  %5581 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5582 = fmul fast float %5580, %5581
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = fsub fast float %5583, %5585
  %5587 = fmul fast float %5586, 1.000000e+01
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fsub fast float %4044, %5556
  %5590 = fmul fast float %5588, %5589
  %5591 = fadd fast float %5590, %5556
  %5592 = fmul fast float %5591, %5583
  br label %5609

; <label>:5593                                    ; preds = %5544
  %5594 = fmul fast float %5559, %5550
  %5595 = fmul fast float %5563, %5560
  %5596 = fmul fast float %5563, %5561
  %5597 = fmul fast float %5594, %5563
  %5598 = add i32 %33, 356
  %5599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5598, i32 undef)  ; BufferLoad(srv,index,wot)
  %5600 = extractvalue %dx.types.ResRet.i32 %5599, 0
  %5601 = and i32 %5600, 32
  %5602 = icmp eq i32 %5601, 0
  br i1 %5602, label %5609, label %5603

; <label>:5603                                    ; preds = %5593
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = fmul fast float %5605, 0x3FE99999A0000000
  %5607 = fadd fast float %5605, %5595
  %5608 = fadd fast float %5606, %5597
  br label %5609

; <label>:5609                                    ; preds = %5603, %5593, %5564
  %5610 = phi float [ %5578, %5564 ], [ %5607, %5603 ], [ %5595, %5593 ]
  %5611 = phi float [ %5592, %5564 ], [ %5596, %5603 ], [ %5596, %5593 ]
  %5612 = phi float [ %5591, %5564 ], [ %5608, %5603 ], [ %5597, %5593 ]
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = fmul fast float %5614, %5546
  %5616 = fmul fast float %5614, %5547
  %5617 = fadd fast float %5546, %5545
  %5618 = select i1 %205, float %5617, float %5545
  %5619 = fmul float %5618, %5614
  %5620 = select i1 %205, float 0.000000e+00, float %5615
  %5621 = select i1 %205, float 0.000000e+00, float %5616
  %5622 = fmul fast float %5610, %5557
  %5623 = fmul fast float %5611, %5558
  %5624 = fmul fast float %5612, %5559
  %5625 = fadd fast float %5619, %5622
  %5626 = fadd fast float %5620, %5623
  %5627 = fadd fast float %5621, %5624
  %5628 = select i1 %205, float %5611, float %5626
  %5629 = select i1 %205, float %5612, float %5627
  %5630 = call float @dx.op.binary.f32(i32 36, float %5625, float 3.225500e+04)  ; FMin(a,b)
  %5631 = call float @dx.op.binary.f32(i32 36, float %5628, float 3.225500e+04)  ; FMin(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5629, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5631)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5632)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

