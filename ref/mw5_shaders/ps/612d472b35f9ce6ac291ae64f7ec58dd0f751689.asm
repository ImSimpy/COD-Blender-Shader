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
; shader hash: 27438066993935c9f04630ab5e978c76
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
  %342 = add i32 %33, 364
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
  %356 = add i32 %33, 524
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
  br i1 %409, label %906, label %410

; <label>:410                                     ; preds = %395
  %411 = and i32 %404, 262144
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %36, float 1.000000e+00
  %414 = select i1 %412, float %37, float 0.000000e+00
  %415 = select i1 %412, float %38, float 0.000000e+00
  %416 = select i1 %412, float %39, float 1.000000e+00
  %417 = select i1 %412, float %40, float %56
  %418 = select i1 %412, float %41, float %57
  %419 = add i32 %33, 392
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = add i32 %33, 376
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = extractvalue %dx.types.ResRet.i32 %423, 1
  %426 = extractvalue %dx.types.ResRet.i32 %423, 2
  %427 = extractvalue %dx.types.ResRet.i32 %423, 3
  %428 = bitcast i32 %424 to float
  %429 = bitcast i32 %425 to float
  %430 = bitcast i32 %426 to float
  %431 = bitcast i32 %427 to float
  %432 = add i32 %33, 488
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %434, 0
  %436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %437 = bitcast i32 %421 to float
  %438 = fmul fast float %430, %417
  %439 = fmul fast float %431, %418
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = fmul fast float %441, %428
  %443 = fmul fast float %441, %429
  %444 = fadd fast float %442, %438
  %445 = fadd fast float %443, %439
  %446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %436, %dx.types.Handle %65, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = fmul fast float %447, 2.000000e+00
  %450 = fmul fast float %448, 2.000000e+00
  %451 = fadd fast float %449, -1.000000e+00
  %452 = fadd fast float %450, -1.000000e+00
  %453 = fmul fast float %451, %437
  %454 = fmul fast float %452, %437
  %455 = add i32 %33, 284
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = lshr i32 %457, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = fmul fast float %459, 0x3F50624DE0000000
  %461 = add i32 %33, 88
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = lshr i32 %463, 16
  %465 = and i32 %464, 255
  %466 = lshr i32 %463, 24
  %467 = add i32 %33, 292
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = add i32 %33, 32
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 22
  %478 = shl nuw nsw i32 %477, 5
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = shl i32 %476, 4
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %476, 7
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = fmul fast float %441, 1.000000e+03
  %487 = fmul fast float %214, %486
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fadd fast float %488, %204
  %490 = fmul fast float %215, %486
  %491 = call float @dx.op.unary.f32(i32 22, float %490)  ; Frc(value)
  %492 = fadd fast float %491, %206
  %493 = fmul fast float %460, %486
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = fmul fast float %494, 0x401921FB60000000
  %496 = fadd fast float %495, %479
  %497 = call float @dx.op.unary.f32(i32 13, float %496)  ; Sin(value)
  %498 = call float @dx.op.unary.f32(i32 12, float %496)  ; Cos(value)
  %499 = fsub fast float -0.000000e+00, %497
  %500 = fadd fast float %417, -5.000000e-01
  %501 = fadd fast float %500, %453
  %502 = fadd fast float %418, -5.000000e-01
  %503 = fadd fast float %502, %454
  %504 = fmul fast float %471, %501
  %505 = fmul fast float %473, %503
  %506 = fadd fast float %504, 5.000000e-01
  %507 = fadd fast float %505, 5.000000e-01
  %508 = fmul fast float %482, %506
  %509 = fmul fast float %485, %507
  %510 = fmul fast float %498, %508
  %511 = call float @dx.op.tertiary.f32(i32 46, float %499, float %509, float %510)  ; FMad(a,b,c)
  %512 = fmul fast float %497, %508
  %513 = call float @dx.op.tertiary.f32(i32 46, float %498, float %509, float %512)  ; FMad(a,b,c)
  %514 = fadd fast float %489, %511
  %515 = fadd fast float %492, %513
  %516 = icmp ugt i32 %465, 1
  %517 = icmp ugt i32 %463, 33554431
  %518 = or i1 %517, %516
  br i1 %518, label %519, label %544

; <label>:519                                     ; preds = %410
  %520 = add i32 %33, 228
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = fmul fast float %441, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = mul nuw nsw i32 %465, %466
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %526, %528
  %530 = call float @dx.op.unary.f32(i32 27, float %529)  ; Round_ni(value)
  %531 = fptoui float %530 to i32
  %532 = urem i32 %531, %465
  %533 = udiv i32 %531, %466
  %534 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %535 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %536 = uitofp i32 %532 to float
  %537 = uitofp i32 %533 to float
  %538 = fadd fast float %534, %536
  %539 = fadd fast float %535, %537
  %540 = uitofp i32 %465 to float
  %541 = uitofp i32 %466 to float
  %542 = fdiv fast float %538, %540
  %543 = fdiv fast float %539, %541
  br label %544

; <label>:544                                     ; preds = %519, %410
  %545 = phi float [ %542, %519 ], [ %514, %410 ]
  %546 = phi float [ %543, %519 ], [ %515, %410 ]
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 16
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %747, label %551

; <label>:551                                     ; preds = %544
  %552 = add i32 %33, 408
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = add i32 %554, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %64, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = extractvalue %dx.types.ResRet.f32 %557, 1
  %560 = extractvalue %dx.types.ResRet.f32 %557, 2
  %561 = extractvalue %dx.types.ResRet.f32 %557, 3
  %562 = and i32 %463, 255
  %563 = uitofp i32 %562 to float
  %564 = lshr i32 %463, 8
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %561, %563
  %568 = fadd fast float %567, %566
  %569 = fmul fast float %568, 0x3F70101000000000
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 512
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %582, label %574

; <label>:574                                     ; preds = %551
  %575 = add i32 %33, 492
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add i32 %577, 0
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %579, %dx.types.Handle %65, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  br label %582

; <label>:582                                     ; preds = %574, %551
  %583 = phi float [ %581, %574 ], [ 1.000000e+00, %551 ]
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 33554432
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %694, label %588

; <label>:588                                     ; preds = %582
  %589 = add i32 %33, 224
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 65535
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = lshr i32 %591, 16
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = add i32 %33, 228
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 65535
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = lshr i32 %602, 24
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = and i32 %602, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = lshr i32 %602, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = lshr i32 %602, 16
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = add i32 %33, 220
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = bitcast float %558 to i32
  %635 = ashr i32 %634, 1
  %636 = sub nsw i32 1597463174, %635
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %558, 5.000000e-01
  %639 = fmul fast float %637, %637
  %640 = fmul fast float %639, %638
  %641 = fsub fast float 1.500000e+00, %640
  %642 = fmul fast float %637, %558
  %643 = fmul fast float %642, %641
  %644 = bitcast float %559 to i32
  %645 = ashr i32 %644, 1
  %646 = sub nsw i32 1597463174, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %559, 5.000000e-01
  %649 = fmul fast float %647, %647
  %650 = fmul fast float %649, %648
  %651 = fsub fast float 1.500000e+00, %650
  %652 = fmul fast float %647, %559
  %653 = fmul fast float %652, %651
  %654 = bitcast float %560 to i32
  %655 = ashr i32 %654, 1
  %656 = sub nsw i32 1597463174, %655
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %560, 5.000000e-01
  %659 = fmul fast float %657, %657
  %660 = fmul fast float %659, %658
  %661 = fsub fast float 1.500000e+00, %660
  %662 = fmul fast float %657, %560
  %663 = fmul fast float %662, %661
  %664 = fsub fast float %643, %625
  %665 = fsub fast float %653, %629
  %666 = fsub fast float %663, %633
  %667 = fmul fast float %664, %593
  %668 = fmul fast float %665, %595
  %669 = fmul fast float %666, %600
  %670 = fadd fast float %667, %608
  %671 = fadd fast float %668, %612
  %672 = fadd fast float %669, %616
  %673 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %675 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %676 = fmul fast float %673, %673
  %677 = fmul fast float %674, %674
  %678 = fmul fast float %675, %675
  %679 = fsub fast float %676, %558
  %680 = fsub fast float %677, %559
  %681 = fsub fast float %678, %560
  %682 = fmul fast float %679, %583
  %683 = fmul fast float %680, %583
  %684 = fmul fast float %681, %583
  %685 = fadd fast float %682, %558
  %686 = fadd fast float %683, %559
  %687 = fadd fast float %684, %560
  %688 = fadd fast float %605, %569
  %689 = fsub fast float %688, %622
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %691 = fsub fast float %690, %569
  %692 = fmul fast float %691, %583
  %693 = fadd fast float %692, %569
  br label %747

; <label>:694                                     ; preds = %582
  %695 = and i32 %585, 134217728
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %731, label %697

; <label>:697                                     ; preds = %694
  %698 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %701 = fadd fast float %698, -5.000000e-01
  %702 = fadd fast float %699, -5.000000e-01
  %703 = fadd fast float %700, -5.000000e-01
  %704 = fmul fast float %701, %583
  %705 = fmul fast float %702, %583
  %706 = fmul fast float %703, %583
  %707 = fadd fast float %704, 5.000000e-01
  %708 = fadd fast float %705, 5.000000e-01
  %709 = fadd fast float %706, 5.000000e-01
  %710 = call float @dx.op.unary.f32(i32 24, float %558)  ; Sqrt(value)
  %711 = call float @dx.op.unary.f32(i32 24, float %559)  ; Sqrt(value)
  %712 = call float @dx.op.unary.f32(i32 24, float %560)  ; Sqrt(value)
  %713 = fmul fast float %707, 2.000000e+00
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %714, %710
  %716 = fadd fast float %715, %713
  %717 = fmul fast float %716, %710
  %718 = fmul fast float %708, 2.000000e+00
  %719 = fsub fast float 1.000000e+00, %718
  %720 = fmul fast float %719, %711
  %721 = fadd fast float %720, %718
  %722 = fmul fast float %721, %711
  %723 = fmul fast float %709, 2.000000e+00
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fmul fast float %724, %712
  %726 = fadd fast float %725, %723
  %727 = fmul fast float %726, %712
  %728 = fmul fast float %717, %717
  %729 = fmul fast float %722, %722
  %730 = fmul fast float %727, %727
  br label %747

; <label>:731                                     ; preds = %694
  %732 = fmul fast float %191, %191
  %733 = fmul fast float %195, %195
  %734 = fmul fast float %199, %199
  %735 = fadd fast float %732, -1.000000e+00
  %736 = fadd fast float %733, -1.000000e+00
  %737 = fadd fast float %734, -1.000000e+00
  %738 = fmul fast float %583, %735
  %739 = fmul fast float %583, %736
  %740 = fmul fast float %583, %737
  %741 = fadd fast float %738, 1.000000e+00
  %742 = fadd fast float %739, 1.000000e+00
  %743 = fadd fast float %740, 1.000000e+00
  %744 = fmul fast float %741, %558
  %745 = fmul fast float %742, %559
  %746 = fmul fast float %743, %560
  br label %747

; <label>:747                                     ; preds = %731, %697, %588, %544
  %748 = phi float [ %693, %588 ], [ %569, %697 ], [ %569, %731 ], [ 0x3FA23C0BE0000000, %544 ]
  %749 = phi float [ %685, %588 ], [ %728, %697 ], [ %744, %731 ], [ 1.000000e+00, %544 ]
  %750 = phi float [ %686, %588 ], [ %729, %697 ], [ %745, %731 ], [ 1.000000e+00, %544 ]
  %751 = phi float [ %687, %588 ], [ %730, %697 ], [ %746, %731 ], [ 1.000000e+00, %544 ]
  %752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.i32 %752, 1
  %754 = and i32 %753, 1
  %755 = icmp ne i32 %754, 0
  %756 = add i32 %33, 372
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 32
  %760 = icmp ne i32 %759, 0
  %761 = and i1 %755, %760
  %762 = select i1 %761, float 1.000000e+00, float %749
  %763 = select i1 %761, float 0x3FD3333340000000, float %750
  %764 = select i1 %761, float 0x3FD3333340000000, float %751
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 32
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %841, label %769

; <label>:769                                     ; preds = %747
  %770 = add i32 %33, 92
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = add i32 %33, 424
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %775, 0
  %777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %777, %dx.types.Handle %64, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = extractvalue %dx.types.ResRet.f32 %778, 3
  %783 = and i32 %772, 255
  %784 = uitofp i32 %783 to float
  %785 = lshr i32 %772, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = lshr i32 %772, 16
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = fmul fast float %779, %784
  %793 = fadd fast float %792, %787
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = fadd fast float %780, -5.000000e-01
  %796 = fadd fast float %782, -5.000000e-01
  %797 = fmul fast float %795, %791
  %798 = fmul fast float %796, %791
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fadd fast float %798, 5.000000e-01
  %801 = fmul fast float %799, 2.000000e+00
  %802 = fadd fast float %801, -1.000000e+00
  %803 = fmul fast float %800, 2.000000e+00
  %804 = fadd fast float %803, -1.000000e+00
  %805 = fadd fast float %802, %804
  %806 = fmul fast float %805, 5.000000e-01
  %807 = fsub fast float %802, %804
  %808 = fmul fast float %807, 5.000000e-01
  %809 = call float @dx.op.unary.f32(i32 6, float %806)  ; FAbs(value)
  %810 = fsub fast float 1.000000e+00, %809
  %811 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %812 = fsub fast float %810, %811
  %813 = call float @dx.op.dot3.f32(i32 55, float %806, float %808, float %812, float %806, float %808, float %812)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = call float @dx.op.unary.f32(i32 25, float %813)  ; Rsqrt(value)
  %815 = fmul fast float %806, %814
  %816 = fmul fast float %808, %814
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 67108864
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %837, label %821

; <label>:821                                     ; preds = %769
  %822 = add i32 %33, 280
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 65535
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = lshr i32 %824, 16
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = fsub fast float %794, %832
  %834 = fmul fast float %833, %826
  %835 = fadd fast float %834, %830
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  br label %837

; <label>:837                                     ; preds = %821, %769
  %838 = phi float [ %836, %821 ], [ %794, %769 ]
  %839 = call float @dx.op.dot2.f32(i32 54, float %815, float %816, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %840 = call float @dx.op.dot2.f32(i32 54, float %815, float %816, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  br label %841

; <label>:841                                     ; preds = %837, %747
  %842 = phi float [ %838, %837 ], [ 0x3FD6666660000000, %747 ]
  %843 = phi float [ %839, %837 ], [ 0.000000e+00, %747 ]
  %844 = phi float [ %840, %837 ], [ 0.000000e+00, %747 ]
  %845 = phi float [ %781, %837 ], [ 1.000000e+00, %747 ]
  %846 = add i32 %33, 160
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = lshr i32 %848, 22
  %850 = shl nuw nsw i32 %849, 5
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 64
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %889, label %856

; <label>:856                                     ; preds = %841
  %857 = add i32 %33, 440
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 131072
  %865 = icmp eq i32 %864, 0
  %866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %64, float %545, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = fmul fast float %867, %179
  %871 = fmul fast float %868, %182
  %872 = fmul fast float %869, %185
  br i1 %865, label %879, label %873

; <label>:873                                     ; preds = %856
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = fmul fast float %875, %870
  %877 = fmul fast float %875, %871
  %878 = fmul fast float %875, %872
  br label %879

; <label>:879                                     ; preds = %873, %856
  %880 = phi float [ %876, %873 ], [ %870, %856 ]
  %881 = phi float [ %877, %873 ], [ %871, %856 ]
  %882 = phi float [ %878, %873 ], [ %872, %856 ]
  %883 = fmul fast float %880, %851
  %884 = select i1 %173, float %883, float %880
  %885 = call float @dx.op.dot3.f32(i32 55, float %884, float %881, float %882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = select i1 %173, float 0.000000e+00, float %880
  %887 = select i1 %173, float %885, float %881
  %888 = select i1 %173, float 0.000000e+00, float %882
  br label %889

; <label>:889                                     ; preds = %879, %841
  %890 = phi float [ %886, %879 ], [ 0.000000e+00, %841 ]
  %891 = phi float [ %887, %879 ], [ 0.000000e+00, %841 ]
  %892 = phi float [ %888, %879 ], [ 0.000000e+00, %841 ]
  %893 = add i32 %33, 96
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = lshr i32 %895, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = call float @dx.op.dot3.f32(i32 55, float %762, float %763, float %764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = fmul fast float %900, %901
  %903 = fadd fast float %902, %897
  %904 = fmul fast float %903, 0x3F70101020000000
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  br label %906

; <label>:906                                     ; preds = %889, %395
  %907 = phi float [ 0.000000e+00, %395 ], [ %843, %889 ]
  %908 = phi float [ 0.000000e+00, %395 ], [ %844, %889 ]
  %909 = phi float [ 0.000000e+00, %395 ], [ %762, %889 ]
  %910 = phi float [ 0.000000e+00, %395 ], [ %763, %889 ]
  %911 = phi float [ 0.000000e+00, %395 ], [ %764, %889 ]
  %912 = phi float [ 0.000000e+00, %395 ], [ %890, %889 ]
  %913 = phi float [ 0.000000e+00, %395 ], [ %891, %889 ]
  %914 = phi float [ 0.000000e+00, %395 ], [ %892, %889 ]
  %915 = phi float [ 0.000000e+00, %395 ], [ %748, %889 ]
  %916 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %889 ]
  %917 = phi float [ 0.000000e+00, %395 ], [ %842, %889 ]
  %918 = phi float [ 0.000000e+00, %395 ], [ %845, %889 ]
  %919 = phi float [ 0.000000e+00, %395 ], [ %905, %889 ]
  br i1 %346, label %1799, label %920

; <label>:920                                     ; preds = %906
  %921 = icmp ult i32 %401, 2
  %922 = add i32 %33, 40
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = add i32 %33, 44
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = or i32 %927, %924
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1799, label %930

; <label>:930                                     ; preds = %920
  %931 = and i32 %924, 262144
  %932 = icmp ne i32 %931, 0
  %933 = select i1 %932, float %36, float 1.000000e+00
  %934 = select i1 %932, float %37, float 0.000000e+00
  %935 = select i1 %932, float %38, float 0.000000e+00
  %936 = select i1 %932, float %39, float 1.000000e+00
  %937 = select i1 %932, float %40, float %56
  %938 = select i1 %932, float %41, float %57
  %939 = add i32 %33, 392
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 1
  %942 = add i32 %33, 376
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = extractvalue %dx.types.ResRet.i32 %943, 1
  %946 = extractvalue %dx.types.ResRet.i32 %943, 2
  %947 = extractvalue %dx.types.ResRet.i32 %943, 3
  %948 = bitcast i32 %944 to float
  %949 = bitcast i32 %945 to float
  %950 = bitcast i32 %946 to float
  %951 = bitcast i32 %947 to float
  %952 = add i32 %33, 488
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = add i32 %954, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = bitcast i32 %941 to float
  %958 = fmul fast float %950, %937
  %959 = fmul fast float %951, %938
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %962 = fmul fast float %961, %948
  %963 = fmul fast float %961, %949
  %964 = fadd fast float %962, %958
  %965 = fadd fast float %963, %959
  %966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %956, %dx.types.Handle %65, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = fmul fast float %967, 2.000000e+00
  %970 = fmul fast float %968, 2.000000e+00
  %971 = fadd fast float %969, -1.000000e+00
  %972 = fadd fast float %970, -1.000000e+00
  %973 = fmul fast float %971, %957
  %974 = fmul fast float %972, %957
  %975 = add i32 %33, 300
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fmul fast float %979, 0x3F50624DE0000000
  %981 = add i32 %33, 104
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = lshr i32 %983, 16
  %985 = and i32 %984, 255
  %986 = lshr i32 %983, 24
  %987 = add i32 %33, 308
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %989, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = add i32 %33, 48
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 22
  %998 = shl nuw nsw i32 %997, 5
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = shl i32 %996, 4
  %1001 = and i32 %1000, 32752
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = lshr i32 %996, 7
  %1004 = and i32 %1003, 32752
  %1005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1004)  ; LegacyF16ToF32(value)
  %1006 = fmul fast float %961, 1.000000e+03
  %1007 = fmul fast float %256, %1006
  %1008 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1009 = fadd fast float %1008, %246
  %1010 = fmul fast float %257, %1006
  %1011 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1012 = fadd fast float %1011, %248
  %1013 = fmul fast float %980, %1006
  %1014 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1015 = fmul fast float %1014, 0x401921FB60000000
  %1016 = fadd fast float %1015, %999
  %1017 = call float @dx.op.unary.f32(i32 13, float %1016)  ; Sin(value)
  %1018 = call float @dx.op.unary.f32(i32 12, float %1016)  ; Cos(value)
  %1019 = fsub fast float -0.000000e+00, %1017
  %1020 = fadd fast float %937, -5.000000e-01
  %1021 = fadd fast float %1020, %973
  %1022 = fadd fast float %938, -5.000000e-01
  %1023 = fadd fast float %1022, %974
  %1024 = fmul fast float %991, %1021
  %1025 = fmul fast float %993, %1023
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fmul fast float %1002, %1026
  %1029 = fmul fast float %1005, %1027
  %1030 = fmul fast float %1018, %1028
  %1031 = call float @dx.op.tertiary.f32(i32 46, float %1019, float %1029, float %1030)  ; FMad(a,b,c)
  %1032 = fmul fast float %1017, %1028
  %1033 = call float @dx.op.tertiary.f32(i32 46, float %1018, float %1029, float %1032)  ; FMad(a,b,c)
  %1034 = fadd fast float %1009, %1031
  %1035 = fadd fast float %1012, %1033
  %1036 = icmp ugt i32 %985, 1
  %1037 = icmp ugt i32 %983, 33554431
  %1038 = or i1 %1037, %1036
  br i1 %1038, label %1039, label %1064

; <label>:1039                                    ; preds = %930
  %1040 = add i32 %33, 244
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = lshr i32 %1042, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fmul fast float %961, %1044
  %1046 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1047 = mul nuw nsw i32 %985, %986
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1046, %1048
  %1050 = call float @dx.op.unary.f32(i32 27, float %1049)  ; Round_ni(value)
  %1051 = fptoui float %1050 to i32
  %1052 = urem i32 %1051, %985
  %1053 = udiv i32 %1051, %986
  %1054 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1056 = uitofp i32 %1052 to float
  %1057 = uitofp i32 %1053 to float
  %1058 = fadd fast float %1054, %1056
  %1059 = fadd fast float %1055, %1057
  %1060 = uitofp i32 %985 to float
  %1061 = uitofp i32 %986 to float
  %1062 = fdiv fast float %1058, %1060
  %1063 = fdiv fast float %1059, %1061
  br label %1064

; <label>:1064                                    ; preds = %1039, %930
  %1065 = phi float [ %1062, %1039 ], [ %1034, %930 ]
  %1066 = phi float [ %1063, %1039 ], [ %1035, %930 ]
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 16777216
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1180, label %1071

; <label>:1071                                    ; preds = %1064
  %1072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1073 = extractvalue %dx.types.CBufRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.CBufRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.CBufRet.f32 %1072, 2
  %1076 = fadd fast float %1073, %131
  %1077 = fadd fast float %1074, %132
  %1078 = fadd fast float %1075, %133
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = icmp eq i32 %34, 65535
  br i1 %1082, label %1177, label %1083

; <label>:1083                                    ; preds = %1071
  %1084 = lshr i32 %34, 1
  %1085 = shl i32 %1084, 2
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %34, 1
  %1089 = icmp ne i32 %1088, 0
  %1090 = lshr i32 %1087, 16
  %1091 = and i32 %1087, 65535
  %1092 = select i1 %1089, i32 %1090, i32 %1091
  %1093 = icmp eq i32 %1092, 65535
  br i1 %1093, label %1173, label %1094

; <label>:1094                                    ; preds = %1083
  %1095 = mul nuw nsw i32 %1092, 40
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = add nuw nsw i32 %1095, 12
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = add nuw nsw i32 %1095, 24
  %1106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = add nuw nsw i32 %1095, 36
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = fsub fast float %1076, %1097
  %1114 = fsub fast float %1077, %1098
  %1115 = fsub fast float %1078, %1099
  %1116 = fmul fast float %1112, %1113
  %1117 = fmul fast float %1112, %1114
  %1118 = fmul fast float %1112, %1115
  %1119 = call float @dx.op.unary.f32(i32 27, float %1116)  ; Round_ni(value)
  %1120 = call float @dx.op.unary.f32(i32 27, float %1117)  ; Round_ni(value)
  %1121 = call float @dx.op.unary.f32(i32 27, float %1118)  ; Round_ni(value)
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fmul fast float %1122, %1102
  %1126 = fmul fast float %1123, %1103
  %1127 = fmul fast float %1124, %1104
  %1128 = shl i32 %34, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = add i32 %1130, 0
  %1132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1133 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1134 = call float @dx.op.unary.f32(i32 22, float %1126)  ; Frc(value)
  %1135 = call float @dx.op.unary.f32(i32 22, float %1127)  ; Frc(value)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1132, %dx.types.Handle %30, float %1133, float %1134, float %1135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1140 = fmul fast float %1137, 1.023000e+03
  %1141 = fmul fast float %1138, 1.023000e+03
  %1142 = fmul fast float %1139, 1.023000e+03
  %1143 = fadd fast float %1140, 5.000000e-01
  %1144 = fadd fast float %1141, 5.000000e-01
  %1145 = fadd fast float %1142, 5.000000e-01
  %1146 = call float @dx.op.unary.f32(i32 27, float %1143)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1149 = fsub fast float %1116, %1119
  %1150 = fsub fast float %1117, %1120
  %1151 = fsub fast float %1118, %1121
  %1152 = fmul fast float %1149, 7.500000e-01
  %1153 = fmul fast float %1150, 7.500000e-01
  %1154 = fmul fast float %1151, 7.500000e-01
  %1155 = fadd fast float %1119, 1.250000e-01
  %1156 = fadd fast float %1155, %1152
  %1157 = fadd fast float %1156, %1146
  %1158 = fadd fast float %1120, 1.250000e-01
  %1159 = fadd fast float %1158, %1153
  %1160 = fadd fast float %1159, %1147
  %1161 = fadd fast float %1121, 1.250000e-01
  %1162 = fadd fast float %1161, %1154
  %1163 = fadd fast float %1162, %1148
  %1164 = fmul fast float %1157, %1107
  %1165 = fmul fast float %1160, %1108
  %1166 = fmul fast float %1163, %1109
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1170, %dx.types.Handle %28, float %1164, float %1165, float %1166, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  br label %1173

; <label>:1173                                    ; preds = %1094, %1083
  %1174 = phi float [ %1172, %1094 ], [ -1.000000e+00, %1083 ]
  %1175 = fadd fast float %1174, %1081
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  br label %1177

; <label>:1177                                    ; preds = %1173, %1071
  %1178 = phi float [ %1176, %1173 ], [ %1081, %1071 ]
  %1179 = fmul fast float %1178, %398
  br label %1180

; <label>:1180                                    ; preds = %1177, %1064
  %1181 = phi float [ %1179, %1177 ], [ %398, %1064 ]
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 256
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1232, label %1186

; <label>:1186                                    ; preds = %1180
  %1187 = add i32 %33, 476
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %65, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = add i32 %33, 116
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = shl i32 %1196, 4
  %1198 = and i32 %1197, 32752
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = lshr i32 %1196, 7
  %1201 = and i32 %1200, 32752
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = fsub fast float 1.000000e+00, %1181
  %1204 = call float @dx.op.binary.f32(i32 35, float %1203, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1205 = bitcast float %1181 to i32
  %1206 = sitofp i32 %1205 to float
  %1207 = fadd fast float %1206, 0xC1CFBF8940000000
  %1208 = fmul fast float %1202, %1207
  %1209 = fadd fast float %1208, 0x41CFBF8940000000
  %1210 = fptosi float %1209 to i32
  %1211 = bitcast i32 %1210 to float
  %1212 = bitcast float %1204 to i32
  %1213 = sitofp i32 %1212 to float
  %1214 = fadd fast float %1213, 0xC1CFBF8940000000
  %1215 = fmul fast float %1214, %1202
  %1216 = fadd fast float %1215, 0x41CFBF8940000000
  %1217 = fptosi float %1216 to i32
  %1218 = bitcast i32 %1217 to float
  %1219 = fmul fast float %1211, %1199
  %1220 = fmul fast float %1218, %1199
  %1221 = fsub fast float %1204, %1219
  %1222 = fadd fast float %1220, %1204
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1225 = fsub fast float %1193, %1223
  %1226 = fsub fast float %1224, %1223
  %1227 = bitcast float %1226 to i32
  %1228 = sub nsw i32 2129859010, %1227
  %1229 = bitcast i32 %1228 to float
  %1230 = fmul fast float %1229, %1225
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  br label %1232

; <label>:1232                                    ; preds = %1186, %1180
  %1233 = phi float [ %1231, %1186 ], [ %1181, %1180 ]
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 128
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1254, label %1238

; <label>:1238                                    ; preds = %1232
  %1239 = add i32 %33, 460
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = add i32 %1241, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1243, %dx.types.Handle %65, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = and i32 %1247, 524288
  %1249 = icmp ne i32 %1248, 0
  %1250 = fcmp fast ogt float %1245, 0x3FE0101020000000
  %1251 = select i1 %1250, float 1.000000e+00, float 0.000000e+00
  %1252 = select i1 %1249, float %1251, float %1245
  %1253 = fmul fast float %1252, %1233
  br label %1254

; <label>:1254                                    ; preds = %1238, %1232
  %1255 = phi float [ %1253, %1238 ], [ %1233, %1232 ]
  %1256 = fcmp fast ult float %1255, 0x3F70101020000000
  br i1 %1256, label %1799, label %1257

; <label>:1257                                    ; preds = %1254
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 16
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1460, label %1262

; <label>:1262                                    ; preds = %1257
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %33, 412
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %1267, 0
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1269, %dx.types.Handle %64, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = and i32 %1264, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = lshr i32 %1264, 8
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1274, %1276
  %1281 = fadd fast float %1280, %1279
  %1282 = fmul fast float %1281, 0x3F70101000000000
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 512
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1295, label %1287

; <label>:1287                                    ; preds = %1262
  %1288 = add i32 %33, 496
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %65, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  br label %1295

; <label>:1295                                    ; preds = %1287, %1262
  %1296 = phi float [ %1294, %1287 ], [ 1.000000e+00, %1262 ]
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = and i32 %1298, 33554432
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1407, label %1301

; <label>:1301                                    ; preds = %1295
  %1302 = add i32 %33, 240
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 65535
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = lshr i32 %1304, 16
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = add i32 %33, 244
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 65535
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 24
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = and i32 %1315, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1315, 8
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = lshr i32 %1315, 16
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = add i32 %33, 236
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = lshr i32 %1332, 24
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = and i32 %1332, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101020000000
  %1339 = lshr i32 %1332, 8
  %1340 = and i32 %1339, 255
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = lshr i32 %1332, 16
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = bitcast float %1271 to i32
  %1348 = ashr i32 %1347, 1
  %1349 = sub nsw i32 1597463174, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1271, 5.000000e-01
  %1352 = fmul fast float %1350, %1350
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float 1.500000e+00, %1353
  %1355 = fmul fast float %1350, %1271
  %1356 = fmul fast float %1355, %1354
  %1357 = bitcast float %1272 to i32
  %1358 = ashr i32 %1357, 1
  %1359 = sub nsw i32 1597463174, %1358
  %1360 = bitcast i32 %1359 to float
  %1361 = fmul fast float %1272, 5.000000e-01
  %1362 = fmul fast float %1360, %1360
  %1363 = fmul fast float %1362, %1361
  %1364 = fsub fast float 1.500000e+00, %1363
  %1365 = fmul fast float %1360, %1272
  %1366 = fmul fast float %1365, %1364
  %1367 = bitcast float %1273 to i32
  %1368 = ashr i32 %1367, 1
  %1369 = sub nsw i32 1597463174, %1368
  %1370 = bitcast i32 %1369 to float
  %1371 = fmul fast float %1273, 5.000000e-01
  %1372 = fmul fast float %1370, %1370
  %1373 = fmul fast float %1372, %1371
  %1374 = fsub fast float 1.500000e+00, %1373
  %1375 = fmul fast float %1370, %1273
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float %1356, %1338
  %1378 = fsub fast float %1366, %1342
  %1379 = fsub fast float %1376, %1346
  %1380 = fmul fast float %1377, %1306
  %1381 = fmul fast float %1378, %1308
  %1382 = fmul fast float %1379, %1313
  %1383 = fadd fast float %1380, %1321
  %1384 = fadd fast float %1381, %1325
  %1385 = fadd fast float %1382, %1329
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fmul fast float %1388, %1388
  %1392 = fsub fast float %1389, %1271
  %1393 = fsub fast float %1390, %1272
  %1394 = fsub fast float %1391, %1273
  %1395 = fmul fast float %1392, %1296
  %1396 = fmul fast float %1393, %1296
  %1397 = fmul fast float %1394, %1296
  %1398 = fadd fast float %1395, %1271
  %1399 = fadd fast float %1396, %1272
  %1400 = fadd fast float %1397, %1273
  %1401 = fadd fast float %1318, %1282
  %1402 = fsub fast float %1401, %1335
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fsub fast float %1403, %1282
  %1405 = fmul fast float %1404, %1296
  %1406 = fadd fast float %1405, %1282
  br label %1460

; <label>:1407                                    ; preds = %1295
  %1408 = and i32 %1298, 134217728
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1444, label %1410

; <label>:1410                                    ; preds = %1407
  %1411 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1412 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1413 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1414 = fadd fast float %1411, -5.000000e-01
  %1415 = fadd fast float %1412, -5.000000e-01
  %1416 = fadd fast float %1413, -5.000000e-01
  %1417 = fmul fast float %1414, %1296
  %1418 = fmul fast float %1415, %1296
  %1419 = fmul fast float %1416, %1296
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1424 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1425 = call float @dx.op.unary.f32(i32 24, float %1273)  ; Sqrt(value)
  %1426 = fmul fast float %1420, 2.000000e+00
  %1427 = fsub fast float 1.000000e+00, %1426
  %1428 = fmul fast float %1427, %1423
  %1429 = fadd fast float %1428, %1426
  %1430 = fmul fast float %1429, %1423
  %1431 = fmul fast float %1421, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1432, %1424
  %1434 = fadd fast float %1433, %1431
  %1435 = fmul fast float %1434, %1424
  %1436 = fmul fast float %1422, 2.000000e+00
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = fmul fast float %1437, %1425
  %1439 = fadd fast float %1438, %1436
  %1440 = fmul fast float %1439, %1425
  %1441 = fmul fast float %1430, %1430
  %1442 = fmul fast float %1435, %1435
  %1443 = fmul fast float %1440, %1440
  br label %1460

; <label>:1444                                    ; preds = %1407
  %1445 = fmul fast float %233, %233
  %1446 = fmul fast float %237, %237
  %1447 = fmul fast float %241, %241
  %1448 = fadd fast float %1445, -1.000000e+00
  %1449 = fadd fast float %1446, -1.000000e+00
  %1450 = fadd fast float %1447, -1.000000e+00
  %1451 = fmul fast float %1296, %1448
  %1452 = fmul fast float %1296, %1449
  %1453 = fmul fast float %1296, %1450
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fadd fast float %1453, 1.000000e+00
  %1457 = fmul fast float %1454, %1271
  %1458 = fmul fast float %1455, %1272
  %1459 = fmul fast float %1456, %1273
  br label %1460

; <label>:1460                                    ; preds = %1444, %1410, %1301, %1257
  %1461 = phi float [ %1406, %1301 ], [ %1282, %1410 ], [ %1282, %1444 ], [ 0x3FA23C0BE0000000, %1257 ]
  %1462 = phi float [ %1398, %1301 ], [ %1441, %1410 ], [ %1457, %1444 ], [ 1.000000e+00, %1257 ]
  %1463 = phi float [ %1399, %1301 ], [ %1442, %1410 ], [ %1458, %1444 ], [ 1.000000e+00, %1257 ]
  %1464 = phi float [ %1400, %1301 ], [ %1443, %1410 ], [ %1459, %1444 ], [ 1.000000e+00, %1257 ]
  %1465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.i32 %1465, 1
  %1467 = and i32 %1466, 1
  %1468 = icmp ne i32 %1467, 0
  %1469 = add i32 %33, 372
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 32
  %1473 = icmp ne i32 %1472, 0
  %1474 = and i1 %1468, %1473
  %1475 = select i1 %1474, float 1.000000e+00, float %1462
  %1476 = select i1 %1474, float 0x3FD3333340000000, float %1463
  %1477 = select i1 %1474, float 0x3FD3333340000000, float %1464
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 32
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1554, label %1482

; <label>:1482                                    ; preds = %1460
  %1483 = add i32 %33, 108
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = add i32 %33, 428
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = add i32 %1488, 0
  %1490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1490, %dx.types.Handle %64, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = extractvalue %dx.types.ResRet.f32 %1491, 3
  %1496 = and i32 %1485, 255
  %1497 = uitofp i32 %1496 to float
  %1498 = lshr i32 %1485, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = lshr i32 %1485, 16
  %1502 = and i32 %1501, 255
  %1503 = uitofp i32 %1502 to float
  %1504 = fmul fast float %1503, 0x3F70101000000000
  %1505 = fmul fast float %1492, %1497
  %1506 = fadd fast float %1505, %1500
  %1507 = fmul fast float %1506, 0x3F70101000000000
  %1508 = fadd fast float %1493, -5.000000e-01
  %1509 = fadd fast float %1495, -5.000000e-01
  %1510 = fmul fast float %1508, %1504
  %1511 = fmul fast float %1509, %1504
  %1512 = fadd fast float %1510, 5.000000e-01
  %1513 = fadd fast float %1511, 5.000000e-01
  %1514 = fmul fast float %1512, 2.000000e+00
  %1515 = fadd fast float %1514, -1.000000e+00
  %1516 = fmul fast float %1513, 2.000000e+00
  %1517 = fadd fast float %1516, -1.000000e+00
  %1518 = fadd fast float %1515, %1517
  %1519 = fmul fast float %1518, 5.000000e-01
  %1520 = fsub fast float %1515, %1517
  %1521 = fmul fast float %1520, 5.000000e-01
  %1522 = call float @dx.op.unary.f32(i32 6, float %1519)  ; FAbs(value)
  %1523 = fsub fast float 1.000000e+00, %1522
  %1524 = call float @dx.op.unary.f32(i32 6, float %1521)  ; FAbs(value)
  %1525 = fsub fast float %1523, %1524
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1519, float %1521, float %1525, float %1519, float %1521, float %1525)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = call float @dx.op.unary.f32(i32 25, float %1526)  ; Rsqrt(value)
  %1528 = fmul fast float %1519, %1527
  %1529 = fmul fast float %1521, %1527
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 67108864
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1550, label %1534

; <label>:1534                                    ; preds = %1482
  %1535 = add i32 %33, 296
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 65535
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = lshr i32 %1537, 16
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = fsub fast float %1507, %1545
  %1547 = fmul fast float %1546, %1539
  %1548 = fadd fast float %1547, %1543
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  br label %1550

; <label>:1550                                    ; preds = %1534, %1482
  %1551 = phi float [ %1549, %1534 ], [ %1507, %1482 ]
  %1552 = call float @dx.op.dot2.f32(i32 54, float %1528, float %1529, float %933, float %934)  ; Dot2(ax,ay,bx,by)
  %1553 = call float @dx.op.dot2.f32(i32 54, float %1528, float %1529, float %935, float %936)  ; Dot2(ax,ay,bx,by)
  br label %1554

; <label>:1554                                    ; preds = %1550, %1460
  %1555 = phi float [ %1551, %1550 ], [ 0x3FD6666660000000, %1460 ]
  %1556 = phi float [ %1552, %1550 ], [ 0.000000e+00, %1460 ]
  %1557 = phi float [ %1553, %1550 ], [ 0.000000e+00, %1460 ]
  %1558 = phi float [ %1494, %1550 ], [ 1.000000e+00, %1460 ]
  %1559 = add i32 %33, 176
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = lshr i32 %1561, 22
  %1563 = shl nuw nsw i32 %1562, 5
  %1564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1563)  ; LegacyF16ToF32(value)
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 64
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1602, label %1569

; <label>:1569                                    ; preds = %1554
  %1570 = add i32 %33, 444
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = add i32 %1572, 0
  %1574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 131072
  %1578 = icmp eq i32 %1577, 0
  %1579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1574, %dx.types.Handle %64, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1580 = extractvalue %dx.types.ResRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.ResRet.f32 %1579, 1
  %1582 = extractvalue %dx.types.ResRet.f32 %1579, 2
  %1583 = fmul fast float %1580, %221
  %1584 = fmul fast float %1581, %224
  %1585 = fmul fast float %1582, %227
  br i1 %1578, label %1592, label %1586

; <label>:1586                                    ; preds = %1569
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 0
  %1589 = fmul fast float %1588, %1583
  %1590 = fmul fast float %1588, %1584
  %1591 = fmul fast float %1588, %1585
  br label %1592

; <label>:1592                                    ; preds = %1586, %1569
  %1593 = phi float [ %1589, %1586 ], [ %1583, %1569 ]
  %1594 = phi float [ %1590, %1586 ], [ %1584, %1569 ]
  %1595 = phi float [ %1591, %1586 ], [ %1585, %1569 ]
  %1596 = fmul fast float %1593, %1564
  %1597 = select i1 %173, float %1596, float %1593
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1594, float %1595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = select i1 %173, float 0.000000e+00, float %1593
  %1600 = select i1 %173, float %1598, float %1594
  %1601 = select i1 %173, float 0.000000e+00, float %1595
  br label %1602

; <label>:1602                                    ; preds = %1592, %1554
  %1603 = phi float [ %1599, %1592 ], [ 0.000000e+00, %1554 ]
  %1604 = phi float [ %1600, %1592 ], [ 0.000000e+00, %1554 ]
  %1605 = phi float [ %1601, %1592 ], [ 0.000000e+00, %1554 ]
  %1606 = add i32 %33, 112
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = lshr i32 %1608, 8
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1615 = fmul fast float %1613, %1614
  %1616 = fadd fast float %1615, %1610
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  br i1 %921, label %1619, label %1627

; <label>:1619                                    ; preds = %1602
  %1620 = fsub fast float 1.000000e+00, %1255
  %1621 = fmul fast float %1620, %909
  %1622 = fmul fast float %1620, %910
  %1623 = fmul fast float %1620, %911
  %1624 = fmul fast float %1620, %912
  %1625 = fmul fast float %1620, %913
  %1626 = fmul fast float %1620, %914
  br label %1627

; <label>:1627                                    ; preds = %1619, %1602
  %1628 = phi float [ %1621, %1619 ], [ %909, %1602 ]
  %1629 = phi float [ %1622, %1619 ], [ %910, %1602 ]
  %1630 = phi float [ %1623, %1619 ], [ %911, %1602 ]
  %1631 = phi float [ %1624, %1619 ], [ %912, %1602 ]
  %1632 = phi float [ %1625, %1619 ], [ %913, %1602 ]
  %1633 = phi float [ %1626, %1619 ], [ %914, %1602 ]
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = and i32 %1635, 3
  %1637 = icmp eq i32 %1636, 3
  br i1 %1637, label %1716, label %1638

; <label>:1638                                    ; preds = %1627
  %1639 = and i32 %1635, 16
  %1640 = icmp ne i32 %1639, 0
  %1641 = select i1 %1640, float %1255, float 0.000000e+00
  %1642 = icmp eq i32 %1636, 0
  br i1 %1642, label %1643, label %1671

; <label>:1643                                    ; preds = %1638
  %1644 = and i32 %1635, 64
  %1645 = icmp ne i32 %1644, 0
  %1646 = select i1 %1645, float %1255, float 0.000000e+00
  %1647 = fsub fast float %1475, %1628
  %1648 = fsub fast float %1476, %1629
  %1649 = fsub fast float %1477, %1630
  %1650 = fmul fast float %1641, %1647
  %1651 = fmul fast float %1641, %1648
  %1652 = fmul fast float %1641, %1649
  %1653 = fadd fast float %1650, %1628
  %1654 = fadd fast float %1651, %1629
  %1655 = fadd fast float %1652, %1630
  %1656 = fsub fast float %1461, %915
  %1657 = fmul fast float %1641, %1656
  %1658 = fadd fast float %1657, %915
  %1659 = fsub fast float %1603, %1631
  %1660 = fsub fast float %1604, %1632
  %1661 = fsub fast float %1605, %1633
  %1662 = fmul fast float %1646, %1659
  %1663 = fmul fast float %1646, %1660
  %1664 = fmul fast float %1646, %1661
  %1665 = fadd fast float %1662, %1631
  %1666 = fadd fast float %1663, %1632
  %1667 = fadd fast float %1664, %1633
  %1668 = fsub fast float %1618, %919
  %1669 = fmul fast float %1641, %1668
  %1670 = fadd fast float %1669, %919
  br label %1716

; <label>:1671                                    ; preds = %1638
  %1672 = icmp eq i32 %1636, 1
  br i1 %1672, label %1673, label %1686

; <label>:1673                                    ; preds = %1671
  %1674 = fadd fast float %1475, -1.000000e+00
  %1675 = fadd fast float %1476, -1.000000e+00
  %1676 = fadd fast float %1477, -1.000000e+00
  %1677 = fmul fast float %1641, %1674
  %1678 = fmul fast float %1641, %1675
  %1679 = fmul fast float %1641, %1676
  %1680 = fadd fast float %1677, 1.000000e+00
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fadd fast float %1679, 1.000000e+00
  %1683 = fmul fast float %1680, %1628
  %1684 = fmul fast float %1681, %1629
  %1685 = fmul fast float %1682, %1630
  br label %1716

; <label>:1686                                    ; preds = %1671
  %1687 = icmp eq i32 %1636, 2
  br i1 %1687, label %1688, label %1716

; <label>:1688                                    ; preds = %1686
  %1689 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1690 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %1477)  ; Sqrt(value)
  %1692 = fadd fast float %1689, -5.000000e-01
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fadd fast float %1691, -5.000000e-01
  %1695 = fmul fast float %1692, %1641
  %1696 = fmul fast float %1693, %1641
  %1697 = fmul fast float %1694, %1641
  %1698 = fadd fast float %1695, 5.000000e-01
  %1699 = fadd fast float %1696, 5.000000e-01
  %1700 = fadd fast float %1697, 5.000000e-01
  %1701 = fmul fast float %1698, 2.000000e+00
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = fmul fast float %1702, %1628
  %1704 = fadd fast float %1703, %1701
  %1705 = fmul fast float %1704, %1628
  %1706 = fmul fast float %1699, 2.000000e+00
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = fmul fast float %1707, %1629
  %1709 = fadd fast float %1708, %1706
  %1710 = fmul fast float %1709, %1629
  %1711 = fmul fast float %1700, 2.000000e+00
  %1712 = fsub fast float 1.000000e+00, %1711
  %1713 = fmul fast float %1712, %1630
  %1714 = fadd fast float %1713, %1711
  %1715 = fmul fast float %1714, %1630
  br label %1716

; <label>:1716                                    ; preds = %1688, %1686, %1673, %1643, %1627
  %1717 = phi float [ %1628, %1627 ], [ %1705, %1688 ], [ %1628, %1686 ], [ %1683, %1673 ], [ %1653, %1643 ]
  %1718 = phi float [ %1629, %1627 ], [ %1710, %1688 ], [ %1629, %1686 ], [ %1684, %1673 ], [ %1654, %1643 ]
  %1719 = phi float [ %1630, %1627 ], [ %1715, %1688 ], [ %1630, %1686 ], [ %1685, %1673 ], [ %1655, %1643 ]
  %1720 = phi float [ %1631, %1627 ], [ %1631, %1688 ], [ %1631, %1686 ], [ %1631, %1673 ], [ %1665, %1643 ]
  %1721 = phi float [ %1632, %1627 ], [ %1632, %1688 ], [ %1632, %1686 ], [ %1632, %1673 ], [ %1666, %1643 ]
  %1722 = phi float [ %1633, %1627 ], [ %1633, %1688 ], [ %1633, %1686 ], [ %1633, %1673 ], [ %1667, %1643 ]
  %1723 = phi float [ %915, %1627 ], [ %915, %1688 ], [ %915, %1686 ], [ %915, %1673 ], [ %1658, %1643 ]
  %1724 = phi float [ %919, %1627 ], [ %919, %1688 ], [ %919, %1686 ], [ %919, %1673 ], [ %1670, %1643 ]
  %1725 = and i32 %1635, 12
  %1726 = icmp eq i32 %1725, 12
  br i1 %1726, label %1799, label %1727

; <label>:1727                                    ; preds = %1716
  %1728 = and i32 %1635, 2097184
  %1729 = icmp eq i32 %1728, 2097184
  %1730 = select i1 %1729, float %1255, float 0.000000e+00
  %1731 = and i32 %1635, 4194336
  %1732 = icmp eq i32 %1731, 4194336
  %1733 = select i1 %1732, float %1255, float 0.000000e+00
  %1734 = and i32 %1635, 8388640
  %1735 = icmp eq i32 %1734, 8388640
  %1736 = select i1 %1735, float %1255, float 0.000000e+00
  %1737 = icmp eq i32 %1725, 0
  br i1 %1737, label %1738, label %1751

; <label>:1738                                    ; preds = %1727
  %1739 = fsub fast float %1556, %907
  %1740 = fsub fast float %1557, %908
  %1741 = fmul fast float %1730, %1739
  %1742 = fmul fast float %1730, %1740
  %1743 = fadd fast float %1741, %907
  %1744 = fadd fast float %1742, %908
  %1745 = fsub fast float %1558, %918
  %1746 = fmul fast float %1733, %1745
  %1747 = fadd fast float %1746, %918
  %1748 = fsub fast float %1555, %917
  %1749 = fmul fast float %1736, %1748
  %1750 = fadd fast float %1749, %917
  br label %1799

; <label>:1751                                    ; preds = %1727
  %1752 = icmp eq i32 %1725, 4
  br i1 %1752, label %1753, label %1785

; <label>:1753                                    ; preds = %1751
  %1754 = fmul fast float %1730, %1556
  %1755 = fmul fast float %1730, %1557
  %1756 = fadd fast float %1754, %907
  %1757 = fadd fast float %1755, %908
  %1758 = call float @dx.op.binary.f32(i32 36, float %918, float %1558)  ; FMin(a,b)
  %1759 = fsub fast float %1758, %918
  %1760 = fmul fast float %1759, %1733
  %1761 = fadd fast float %1760, %918
  %1762 = fadd fast float %1555, %917
  %1763 = fmul fast float %1762, 0x3FF337FAE0000000
  %1764 = fmul fast float %917, %917
  %1765 = fmul fast float %1555, %1555
  %1766 = fadd fast float %1765, %1764
  %1767 = fmul fast float %1766, 0x3FE5152B00000000
  %1768 = fmul fast float %917, 0xBFCC1F85E0000000
  %1769 = fmul fast float %1768, %1555
  %1770 = fadd fast float %1769, 0xBFE1363700000000
  %1771 = fadd fast float %1770, %1763
  %1772 = fsub fast float %1771, %1767
  %1773 = fmul fast float %1762, 0x3FBA6F0D00000000
  %1774 = fmul fast float %1766, 0x3FD0432880000000
  %1775 = fmul fast float %917, 0xBFEF110800000000
  %1776 = fmul fast float %1775, %1555
  %1777 = fadd fast float %1776, 1.000000e+00
  %1778 = fsub fast float %1777, %1773
  %1779 = fadd fast float %1778, %1774
  %1780 = fdiv fast float %1772, %1779
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1782 = fsub fast float %1781, %917
  %1783 = fmul fast float %1782, %1736
  %1784 = fadd fast float %1783, %917
  br label %1799

; <label>:1785                                    ; preds = %1751
  %1786 = icmp eq i32 %1725, 8
  br i1 %1786, label %1787, label %1799

; <label>:1787                                    ; preds = %1785
  %1788 = fmul fast float %1730, %1556
  %1789 = fmul fast float %1730, %1557
  %1790 = fadd fast float %1788, %907
  %1791 = fadd fast float %1789, %908
  %1792 = call float @dx.op.binary.f32(i32 36, float %918, float %1558)  ; FMin(a,b)
  %1793 = fsub fast float %1792, %918
  %1794 = fmul fast float %1793, %1733
  %1795 = fadd fast float %1794, %918
  %1796 = fsub fast float %1555, %917
  %1797 = fmul fast float %1736, %1796
  %1798 = fadd fast float %1797, %917
  br label %1799

; <label>:1799                                    ; preds = %1787, %1785, %1753, %1738, %1716, %1254, %920, %906
  %1800 = phi float [ %907, %1716 ], [ %907, %1254 ], [ %907, %906 ], [ %1790, %1787 ], [ %907, %1785 ], [ %1756, %1753 ], [ %1743, %1738 ], [ %907, %920 ]
  %1801 = phi float [ %908, %1716 ], [ %908, %1254 ], [ %908, %906 ], [ %1791, %1787 ], [ %908, %1785 ], [ %1757, %1753 ], [ %1744, %1738 ], [ %908, %920 ]
  %1802 = phi float [ %1717, %1716 ], [ %909, %1254 ], [ %909, %906 ], [ %1717, %1787 ], [ %1717, %1785 ], [ %1717, %1753 ], [ %1717, %1738 ], [ %909, %920 ]
  %1803 = phi float [ %1718, %1716 ], [ %910, %1254 ], [ %910, %906 ], [ %1718, %1787 ], [ %1718, %1785 ], [ %1718, %1753 ], [ %1718, %1738 ], [ %910, %920 ]
  %1804 = phi float [ %1719, %1716 ], [ %911, %1254 ], [ %911, %906 ], [ %1719, %1787 ], [ %1719, %1785 ], [ %1719, %1753 ], [ %1719, %1738 ], [ %911, %920 ]
  %1805 = phi float [ %1720, %1716 ], [ %912, %1254 ], [ %912, %906 ], [ %1720, %1787 ], [ %1720, %1785 ], [ %1720, %1753 ], [ %1720, %1738 ], [ %912, %920 ]
  %1806 = phi float [ %1721, %1716 ], [ %913, %1254 ], [ %913, %906 ], [ %1721, %1787 ], [ %1721, %1785 ], [ %1721, %1753 ], [ %1721, %1738 ], [ %913, %920 ]
  %1807 = phi float [ %1722, %1716 ], [ %914, %1254 ], [ %914, %906 ], [ %1722, %1787 ], [ %1722, %1785 ], [ %1722, %1753 ], [ %1722, %1738 ], [ %914, %920 ]
  %1808 = phi float [ %1723, %1716 ], [ %915, %1254 ], [ %915, %906 ], [ %1723, %1787 ], [ %1723, %1785 ], [ %1723, %1753 ], [ %1723, %1738 ], [ %915, %920 ]
  %1809 = phi float [ %917, %1716 ], [ %917, %1254 ], [ %917, %906 ], [ %1798, %1787 ], [ %917, %1785 ], [ %1784, %1753 ], [ %1750, %1738 ], [ %917, %920 ]
  %1810 = phi float [ %918, %1716 ], [ %918, %1254 ], [ %918, %906 ], [ %1795, %1787 ], [ %918, %1785 ], [ %1761, %1753 ], [ %1747, %1738 ], [ %918, %920 ]
  %1811 = phi float [ %1724, %1716 ], [ %919, %1254 ], [ %919, %906 ], [ %1724, %1787 ], [ %1724, %1785 ], [ %1724, %1753 ], [ %1724, %1738 ], [ %919, %920 ]
  br i1 %348, label %2691, label %1812

; <label>:1812                                    ; preds = %1799
  %1813 = icmp ult i32 %401, 3
  %1814 = add i32 %33, 56
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = add i32 %33, 60
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = or i32 %1819, %1816
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %2691, label %1822

; <label>:1822                                    ; preds = %1812
  %1823 = and i32 %1816, 262144
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %36, float 1.000000e+00
  %1826 = select i1 %1824, float %37, float 0.000000e+00
  %1827 = select i1 %1824, float %38, float 0.000000e+00
  %1828 = select i1 %1824, float %39, float 1.000000e+00
  %1829 = select i1 %1824, float %40, float %56
  %1830 = select i1 %1824, float %41, float %57
  %1831 = add i32 %33, 392
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 2
  %1834 = add i32 %33, 376
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = extractvalue %dx.types.ResRet.i32 %1835, 1
  %1838 = extractvalue %dx.types.ResRet.i32 %1835, 2
  %1839 = extractvalue %dx.types.ResRet.i32 %1835, 3
  %1840 = bitcast i32 %1836 to float
  %1841 = bitcast i32 %1837 to float
  %1842 = bitcast i32 %1838 to float
  %1843 = bitcast i32 %1839 to float
  %1844 = add i32 %33, 488
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = add i32 %1846, 0
  %1848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1849 = bitcast i32 %1833 to float
  %1850 = fmul fast float %1842, %1829
  %1851 = fmul fast float %1843, %1830
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1854 = fmul fast float %1853, %1840
  %1855 = fmul fast float %1853, %1841
  %1856 = fadd fast float %1854, %1850
  %1857 = fadd fast float %1855, %1851
  %1858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1848, %dx.types.Handle %65, float %1856, float %1857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = extractvalue %dx.types.ResRet.f32 %1858, 1
  %1861 = fmul fast float %1859, 2.000000e+00
  %1862 = fmul fast float %1860, 2.000000e+00
  %1863 = fadd fast float %1861, -1.000000e+00
  %1864 = fadd fast float %1862, -1.000000e+00
  %1865 = fmul fast float %1863, %1849
  %1866 = fmul fast float %1864, %1849
  %1867 = add i32 %33, 316
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = lshr i32 %1869, 16
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = fmul fast float %1871, 0x3F50624DE0000000
  %1873 = add i32 %33, 120
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = lshr i32 %1875, 16
  %1877 = and i32 %1876, 255
  %1878 = lshr i32 %1875, 24
  %1879 = add i32 %33, 324
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 65535
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = lshr i32 %1881, 16
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = add i32 %33, 64
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = lshr i32 %1888, 22
  %1890 = shl nuw nsw i32 %1889, 5
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = shl i32 %1888, 4
  %1893 = and i32 %1892, 32752
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = lshr i32 %1888, 7
  %1896 = and i32 %1895, 32752
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = fmul fast float %1853, 1.000000e+03
  %1899 = fmul fast float %298, %1898
  %1900 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1901 = fadd fast float %1900, %288
  %1902 = fmul fast float %299, %1898
  %1903 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1904 = fadd fast float %1903, %290
  %1905 = fmul fast float %1872, %1898
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = fmul fast float %1906, 0x401921FB60000000
  %1908 = fadd fast float %1907, %1891
  %1909 = call float @dx.op.unary.f32(i32 13, float %1908)  ; Sin(value)
  %1910 = call float @dx.op.unary.f32(i32 12, float %1908)  ; Cos(value)
  %1911 = fsub fast float -0.000000e+00, %1909
  %1912 = fadd fast float %1829, -5.000000e-01
  %1913 = fadd fast float %1912, %1865
  %1914 = fadd fast float %1830, -5.000000e-01
  %1915 = fadd fast float %1914, %1866
  %1916 = fmul fast float %1883, %1913
  %1917 = fmul fast float %1885, %1915
  %1918 = fadd fast float %1916, 5.000000e-01
  %1919 = fadd fast float %1917, 5.000000e-01
  %1920 = fmul fast float %1894, %1918
  %1921 = fmul fast float %1897, %1919
  %1922 = fmul fast float %1910, %1920
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1921, float %1922)  ; FMad(a,b,c)
  %1924 = fmul fast float %1909, %1920
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1921, float %1924)  ; FMad(a,b,c)
  %1926 = fadd fast float %1901, %1923
  %1927 = fadd fast float %1904, %1925
  %1928 = icmp ugt i32 %1877, 1
  %1929 = icmp ugt i32 %1875, 33554431
  %1930 = or i1 %1929, %1928
  br i1 %1930, label %1931, label %1956

; <label>:1931                                    ; preds = %1822
  %1932 = add i32 %33, 260
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = lshr i32 %1934, 16
  %1936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1935)  ; LegacyF16ToF32(value)
  %1937 = fmul fast float %1853, %1936
  %1938 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1939 = mul nuw nsw i32 %1877, %1878
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1938, %1940
  %1942 = call float @dx.op.unary.f32(i32 27, float %1941)  ; Round_ni(value)
  %1943 = fptoui float %1942 to i32
  %1944 = urem i32 %1943, %1877
  %1945 = udiv i32 %1943, %1878
  %1946 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1947 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1948 = uitofp i32 %1944 to float
  %1949 = uitofp i32 %1945 to float
  %1950 = fadd fast float %1946, %1948
  %1951 = fadd fast float %1947, %1949
  %1952 = uitofp i32 %1877 to float
  %1953 = uitofp i32 %1878 to float
  %1954 = fdiv fast float %1950, %1952
  %1955 = fdiv fast float %1951, %1953
  br label %1956

; <label>:1956                                    ; preds = %1931, %1822
  %1957 = phi float [ %1954, %1931 ], [ %1926, %1822 ]
  %1958 = phi float [ %1955, %1931 ], [ %1927, %1822 ]
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 16777216
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %2072, label %1963

; <label>:1963                                    ; preds = %1956
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 0
  %1966 = extractvalue %dx.types.CBufRet.f32 %1964, 1
  %1967 = extractvalue %dx.types.CBufRet.f32 %1964, 2
  %1968 = fadd fast float %1965, %131
  %1969 = fadd fast float %1966, %132
  %1970 = fadd fast float %1967, %133
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = icmp eq i32 %34, 65535
  br i1 %1974, label %2069, label %1975

; <label>:1975                                    ; preds = %1963
  %1976 = lshr i32 %34, 1
  %1977 = shl i32 %1976, 2
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %34, 1
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
  %2020 = shl i32 %34, 2
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
  %2071 = fmul fast float %2070, %397
  br label %2072

; <label>:2072                                    ; preds = %2069, %1956
  %2073 = phi float [ %2071, %2069 ], [ %397, %1956 ]
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 256
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2124, label %2078

; <label>:2078                                    ; preds = %2072
  %2079 = add i32 %33, 480
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = add i32 %2081, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2083, %dx.types.Handle %65, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = add i32 %33, 132
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
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = and i32 %2127, 128
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2146, label %2130

; <label>:2130                                    ; preds = %2124
  %2131 = add i32 %33, 464
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = add i32 %2133, 0
  %2135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2135, %dx.types.Handle %65, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %2148, label %2691, label %2149

; <label>:2149                                    ; preds = %2146
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = and i32 %2151, 16
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2352, label %2154

; <label>:2154                                    ; preds = %2149
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %33, 416
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %2159, 0
  %2161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2161, %dx.types.Handle %64, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 512
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2187, label %2179

; <label>:2179                                    ; preds = %2154
  %2180 = add i32 %33, 500
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2182, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2184, %dx.types.Handle %65, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  br label %2187

; <label>:2187                                    ; preds = %2179, %2154
  %2188 = phi float [ %2186, %2179 ], [ 1.000000e+00, %2154 ]
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 33554432
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2299, label %2193

; <label>:2193                                    ; preds = %2187
  %2194 = add i32 %33, 256
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 65535
  %2198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2197)  ; LegacyF16ToF32(value)
  %2199 = lshr i32 %2196, 16
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = add i32 %33, 260
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 65535
  %2205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2204)  ; LegacyF16ToF32(value)
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2222 = add i32 %33, 252
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
  %2303 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2304 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2305 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
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
  %2337 = fmul fast float %275, %275
  %2338 = fmul fast float %279, %279
  %2339 = fmul fast float %283, %283
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
  %2361 = add i32 %33, 372
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 32
  %2365 = icmp ne i32 %2364, 0
  %2366 = and i1 %2360, %2365
  %2367 = select i1 %2366, float 1.000000e+00, float %2354
  %2368 = select i1 %2366, float 0x3FD3333340000000, float %2355
  %2369 = select i1 %2366, float 0x3FD3333340000000, float %2356
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 32
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2446, label %2374

; <label>:2374                                    ; preds = %2352
  %2375 = add i32 %33, 124
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %33, 432
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = add i32 %2380, 0
  %2382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2382, %dx.types.Handle %64, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 67108864
  %2425 = icmp eq i32 %2424, 0
  br i1 %2425, label %2442, label %2426

; <label>:2426                                    ; preds = %2374
  %2427 = add i32 %33, 312
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 65535
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2444 = call float @dx.op.dot2.f32(i32 54, float %2420, float %2421, float %1825, float %1826)  ; Dot2(ax,ay,bx,by)
  %2445 = call float @dx.op.dot2.f32(i32 54, float %2420, float %2421, float %1827, float %1828)  ; Dot2(ax,ay,bx,by)
  br label %2446

; <label>:2446                                    ; preds = %2442, %2352
  %2447 = phi float [ %2443, %2442 ], [ 0x3FD6666660000000, %2352 ]
  %2448 = phi float [ %2444, %2442 ], [ 0.000000e+00, %2352 ]
  %2449 = phi float [ %2445, %2442 ], [ 0.000000e+00, %2352 ]
  %2450 = phi float [ %2386, %2442 ], [ 1.000000e+00, %2352 ]
  %2451 = add i32 %33, 192
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = lshr i32 %2453, 22
  %2455 = shl nuw nsw i32 %2454, 5
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 64
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2494, label %2461

; <label>:2461                                    ; preds = %2446
  %2462 = add i32 %33, 448
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = add i32 %2464, 0
  %2466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 131072
  %2470 = icmp eq i32 %2469, 0
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2466, %dx.types.Handle %64, float %1957, float %1958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = extractvalue %dx.types.ResRet.f32 %2471, 1
  %2474 = extractvalue %dx.types.ResRet.f32 %2471, 2
  %2475 = fmul fast float %2472, %263
  %2476 = fmul fast float %2473, %266
  %2477 = fmul fast float %2474, %269
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
  %2489 = select i1 %173, float %2488, float %2485
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2489, float %2486, float %2487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = select i1 %173, float 0.000000e+00, float %2485
  %2492 = select i1 %173, float %2490, float %2486
  %2493 = select i1 %173, float 0.000000e+00, float %2487
  br label %2494

; <label>:2494                                    ; preds = %2484, %2446
  %2495 = phi float [ %2491, %2484 ], [ 0.000000e+00, %2446 ]
  %2496 = phi float [ %2492, %2484 ], [ 0.000000e+00, %2446 ]
  %2497 = phi float [ %2493, %2484 ], [ 0.000000e+00, %2446 ]
  %2498 = add i32 %33, 128
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = lshr i32 %2500, 8
  %2504 = and i32 %2503, 255
  %2505 = uitofp i32 %2504 to float
  %2506 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2507 = fmul fast float %2505, %2506
  %2508 = fadd fast float %2507, %2502
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  br i1 %1813, label %2511, label %2519

; <label>:2511                                    ; preds = %2494
  %2512 = fsub fast float 1.000000e+00, %2147
  %2513 = fmul fast float %2512, %1802
  %2514 = fmul fast float %2512, %1803
  %2515 = fmul fast float %2512, %1804
  %2516 = fmul fast float %2512, %1805
  %2517 = fmul fast float %2512, %1806
  %2518 = fmul fast float %2512, %1807
  br label %2519

; <label>:2519                                    ; preds = %2511, %2494
  %2520 = phi float [ %2513, %2511 ], [ %1802, %2494 ]
  %2521 = phi float [ %2514, %2511 ], [ %1803, %2494 ]
  %2522 = phi float [ %2515, %2511 ], [ %1804, %2494 ]
  %2523 = phi float [ %2516, %2511 ], [ %1805, %2494 ]
  %2524 = phi float [ %2517, %2511 ], [ %1806, %2494 ]
  %2525 = phi float [ %2518, %2511 ], [ %1807, %2494 ]
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 3
  %2529 = icmp eq i32 %2528, 3
  br i1 %2529, label %2608, label %2530

; <label>:2530                                    ; preds = %2519
  %2531 = and i32 %2527, 16
  %2532 = icmp ne i32 %2531, 0
  %2533 = select i1 %2532, float %2147, float 0.000000e+00
  %2534 = icmp eq i32 %2528, 0
  br i1 %2534, label %2535, label %2563

; <label>:2535                                    ; preds = %2530
  %2536 = and i32 %2527, 64
  %2537 = icmp ne i32 %2536, 0
  %2538 = select i1 %2537, float %2147, float 0.000000e+00
  %2539 = fsub fast float %2367, %2520
  %2540 = fsub fast float %2368, %2521
  %2541 = fsub fast float %2369, %2522
  %2542 = fmul fast float %2533, %2539
  %2543 = fmul fast float %2533, %2540
  %2544 = fmul fast float %2533, %2541
  %2545 = fadd fast float %2542, %2520
  %2546 = fadd fast float %2543, %2521
  %2547 = fadd fast float %2544, %2522
  %2548 = fsub fast float %2353, %1808
  %2549 = fmul fast float %2533, %2548
  %2550 = fadd fast float %2549, %1808
  %2551 = fsub fast float %2495, %2523
  %2552 = fsub fast float %2496, %2524
  %2553 = fsub fast float %2497, %2525
  %2554 = fmul fast float %2538, %2551
  %2555 = fmul fast float %2538, %2552
  %2556 = fmul fast float %2538, %2553
  %2557 = fadd fast float %2554, %2523
  %2558 = fadd fast float %2555, %2524
  %2559 = fadd fast float %2556, %2525
  %2560 = fsub fast float %2510, %1811
  %2561 = fmul fast float %2533, %2560
  %2562 = fadd fast float %2561, %1811
  br label %2608

; <label>:2563                                    ; preds = %2530
  %2564 = icmp eq i32 %2528, 1
  br i1 %2564, label %2565, label %2578

; <label>:2565                                    ; preds = %2563
  %2566 = fadd fast float %2367, -1.000000e+00
  %2567 = fadd fast float %2368, -1.000000e+00
  %2568 = fadd fast float %2369, -1.000000e+00
  %2569 = fmul fast float %2533, %2566
  %2570 = fmul fast float %2533, %2567
  %2571 = fmul fast float %2533, %2568
  %2572 = fadd fast float %2569, 1.000000e+00
  %2573 = fadd fast float %2570, 1.000000e+00
  %2574 = fadd fast float %2571, 1.000000e+00
  %2575 = fmul fast float %2572, %2520
  %2576 = fmul fast float %2573, %2521
  %2577 = fmul fast float %2574, %2522
  br label %2608

; <label>:2578                                    ; preds = %2563
  %2579 = icmp eq i32 %2528, 2
  br i1 %2579, label %2580, label %2608

; <label>:2580                                    ; preds = %2578
  %2581 = call float @dx.op.unary.f32(i32 24, float %2367)  ; Sqrt(value)
  %2582 = call float @dx.op.unary.f32(i32 24, float %2368)  ; Sqrt(value)
  %2583 = call float @dx.op.unary.f32(i32 24, float %2369)  ; Sqrt(value)
  %2584 = fadd fast float %2581, -5.000000e-01
  %2585 = fadd fast float %2582, -5.000000e-01
  %2586 = fadd fast float %2583, -5.000000e-01
  %2587 = fmul fast float %2584, %2533
  %2588 = fmul fast float %2585, %2533
  %2589 = fmul fast float %2586, %2533
  %2590 = fadd fast float %2587, 5.000000e-01
  %2591 = fadd fast float %2588, 5.000000e-01
  %2592 = fadd fast float %2589, 5.000000e-01
  %2593 = fmul fast float %2590, 2.000000e+00
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = fmul fast float %2594, %2520
  %2596 = fadd fast float %2595, %2593
  %2597 = fmul fast float %2596, %2520
  %2598 = fmul fast float %2591, 2.000000e+00
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2599, %2521
  %2601 = fadd fast float %2600, %2598
  %2602 = fmul fast float %2601, %2521
  %2603 = fmul fast float %2592, 2.000000e+00
  %2604 = fsub fast float 1.000000e+00, %2603
  %2605 = fmul fast float %2604, %2522
  %2606 = fadd fast float %2605, %2603
  %2607 = fmul fast float %2606, %2522
  br label %2608

; <label>:2608                                    ; preds = %2580, %2578, %2565, %2535, %2519
  %2609 = phi float [ %2520, %2519 ], [ %2597, %2580 ], [ %2520, %2578 ], [ %2575, %2565 ], [ %2545, %2535 ]
  %2610 = phi float [ %2521, %2519 ], [ %2602, %2580 ], [ %2521, %2578 ], [ %2576, %2565 ], [ %2546, %2535 ]
  %2611 = phi float [ %2522, %2519 ], [ %2607, %2580 ], [ %2522, %2578 ], [ %2577, %2565 ], [ %2547, %2535 ]
  %2612 = phi float [ %2523, %2519 ], [ %2523, %2580 ], [ %2523, %2578 ], [ %2523, %2565 ], [ %2557, %2535 ]
  %2613 = phi float [ %2524, %2519 ], [ %2524, %2580 ], [ %2524, %2578 ], [ %2524, %2565 ], [ %2558, %2535 ]
  %2614 = phi float [ %2525, %2519 ], [ %2525, %2580 ], [ %2525, %2578 ], [ %2525, %2565 ], [ %2559, %2535 ]
  %2615 = phi float [ %1808, %2519 ], [ %1808, %2580 ], [ %1808, %2578 ], [ %1808, %2565 ], [ %2550, %2535 ]
  %2616 = phi float [ %1811, %2519 ], [ %1811, %2580 ], [ %1811, %2578 ], [ %1811, %2565 ], [ %2562, %2535 ]
  %2617 = and i32 %2527, 12
  %2618 = icmp eq i32 %2617, 12
  br i1 %2618, label %2691, label %2619

; <label>:2619                                    ; preds = %2608
  %2620 = and i32 %2527, 2097184
  %2621 = icmp eq i32 %2620, 2097184
  %2622 = select i1 %2621, float %2147, float 0.000000e+00
  %2623 = and i32 %2527, 4194336
  %2624 = icmp eq i32 %2623, 4194336
  %2625 = select i1 %2624, float %2147, float 0.000000e+00
  %2626 = and i32 %2527, 8388640
  %2627 = icmp eq i32 %2626, 8388640
  %2628 = select i1 %2627, float %2147, float 0.000000e+00
  %2629 = icmp eq i32 %2617, 0
  br i1 %2629, label %2630, label %2643

; <label>:2630                                    ; preds = %2619
  %2631 = fsub fast float %2448, %1800
  %2632 = fsub fast float %2449, %1801
  %2633 = fmul fast float %2622, %2631
  %2634 = fmul fast float %2622, %2632
  %2635 = fadd fast float %2633, %1800
  %2636 = fadd fast float %2634, %1801
  %2637 = fsub fast float %2450, %1810
  %2638 = fmul fast float %2625, %2637
  %2639 = fadd fast float %2638, %1810
  %2640 = fsub fast float %2447, %1809
  %2641 = fmul fast float %2628, %2640
  %2642 = fadd fast float %2641, %1809
  br label %2691

; <label>:2643                                    ; preds = %2619
  %2644 = icmp eq i32 %2617, 4
  br i1 %2644, label %2645, label %2677

; <label>:2645                                    ; preds = %2643
  %2646 = fmul fast float %2622, %2448
  %2647 = fmul fast float %2622, %2449
  %2648 = fadd fast float %2646, %1800
  %2649 = fadd fast float %2647, %1801
  %2650 = call float @dx.op.binary.f32(i32 36, float %1810, float %2450)  ; FMin(a,b)
  %2651 = fsub fast float %2650, %1810
  %2652 = fmul fast float %2651, %2625
  %2653 = fadd fast float %2652, %1810
  %2654 = fadd fast float %2447, %1809
  %2655 = fmul fast float %2654, 0x3FF337FAE0000000
  %2656 = fmul fast float %1809, %1809
  %2657 = fmul fast float %2447, %2447
  %2658 = fadd fast float %2657, %2656
  %2659 = fmul fast float %2658, 0x3FE5152B00000000
  %2660 = fmul fast float %1809, 0xBFCC1F85E0000000
  %2661 = fmul fast float %2660, %2447
  %2662 = fadd fast float %2661, 0xBFE1363700000000
  %2663 = fadd fast float %2662, %2655
  %2664 = fsub fast float %2663, %2659
  %2665 = fmul fast float %2654, 0x3FBA6F0D00000000
  %2666 = fmul fast float %2658, 0x3FD0432880000000
  %2667 = fmul fast float %1809, 0xBFEF110800000000
  %2668 = fmul fast float %2667, %2447
  %2669 = fadd fast float %2668, 1.000000e+00
  %2670 = fsub fast float %2669, %2665
  %2671 = fadd fast float %2670, %2666
  %2672 = fdiv fast float %2664, %2671
  %2673 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2674 = fsub fast float %2673, %1809
  %2675 = fmul fast float %2674, %2628
  %2676 = fadd fast float %2675, %1809
  br label %2691

; <label>:2677                                    ; preds = %2643
  %2678 = icmp eq i32 %2617, 8
  br i1 %2678, label %2679, label %2691

; <label>:2679                                    ; preds = %2677
  %2680 = fmul fast float %2622, %2448
  %2681 = fmul fast float %2622, %2449
  %2682 = fadd fast float %2680, %1800
  %2683 = fadd fast float %2681, %1801
  %2684 = call float @dx.op.binary.f32(i32 36, float %1810, float %2450)  ; FMin(a,b)
  %2685 = fsub fast float %2684, %1810
  %2686 = fmul fast float %2685, %2625
  %2687 = fadd fast float %2686, %1810
  %2688 = fsub fast float %2447, %1809
  %2689 = fmul fast float %2628, %2688
  %2690 = fadd fast float %2689, %1809
  br label %2691

; <label>:2691                                    ; preds = %2679, %2677, %2645, %2630, %2608, %2146, %1812, %1799
  %2692 = phi float [ %1800, %2608 ], [ %1800, %2146 ], [ %1800, %1799 ], [ %2682, %2679 ], [ %1800, %2677 ], [ %2648, %2645 ], [ %2635, %2630 ], [ %1800, %1812 ]
  %2693 = phi float [ %1801, %2608 ], [ %1801, %2146 ], [ %1801, %1799 ], [ %2683, %2679 ], [ %1801, %2677 ], [ %2649, %2645 ], [ %2636, %2630 ], [ %1801, %1812 ]
  %2694 = phi float [ %2609, %2608 ], [ %1802, %2146 ], [ %1802, %1799 ], [ %2609, %2679 ], [ %2609, %2677 ], [ %2609, %2645 ], [ %2609, %2630 ], [ %1802, %1812 ]
  %2695 = phi float [ %2610, %2608 ], [ %1803, %2146 ], [ %1803, %1799 ], [ %2610, %2679 ], [ %2610, %2677 ], [ %2610, %2645 ], [ %2610, %2630 ], [ %1803, %1812 ]
  %2696 = phi float [ %2611, %2608 ], [ %1804, %2146 ], [ %1804, %1799 ], [ %2611, %2679 ], [ %2611, %2677 ], [ %2611, %2645 ], [ %2611, %2630 ], [ %1804, %1812 ]
  %2697 = phi float [ %2612, %2608 ], [ %1805, %2146 ], [ %1805, %1799 ], [ %2612, %2679 ], [ %2612, %2677 ], [ %2612, %2645 ], [ %2612, %2630 ], [ %1805, %1812 ]
  %2698 = phi float [ %2613, %2608 ], [ %1806, %2146 ], [ %1806, %1799 ], [ %2613, %2679 ], [ %2613, %2677 ], [ %2613, %2645 ], [ %2613, %2630 ], [ %1806, %1812 ]
  %2699 = phi float [ %2614, %2608 ], [ %1807, %2146 ], [ %1807, %1799 ], [ %2614, %2679 ], [ %2614, %2677 ], [ %2614, %2645 ], [ %2614, %2630 ], [ %1807, %1812 ]
  %2700 = phi float [ %2615, %2608 ], [ %1808, %2146 ], [ %1808, %1799 ], [ %2615, %2679 ], [ %2615, %2677 ], [ %2615, %2645 ], [ %2615, %2630 ], [ %1808, %1812 ]
  %2701 = phi float [ %1809, %2608 ], [ %1809, %2146 ], [ %1809, %1799 ], [ %2690, %2679 ], [ %1809, %2677 ], [ %2676, %2645 ], [ %2642, %2630 ], [ %1809, %1812 ]
  %2702 = phi float [ %1810, %2608 ], [ %1810, %2146 ], [ %1810, %1799 ], [ %2687, %2679 ], [ %1810, %2677 ], [ %2653, %2645 ], [ %2639, %2630 ], [ %1810, %1812 ]
  %2703 = phi float [ %2616, %2608 ], [ %1811, %2146 ], [ %1811, %1799 ], [ %2616, %2679 ], [ %2616, %2677 ], [ %2616, %2645 ], [ %2616, %2630 ], [ %1811, %1812 ]
  br i1 %350, label %3583, label %2704

; <label>:2704                                    ; preds = %2691
  %2705 = icmp ult i32 %401, 4
  %2706 = add i32 %33, 72
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = add i32 %33, 76
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = or i32 %2711, %2708
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %3583, label %2714

; <label>:2714                                    ; preds = %2704
  %2715 = and i32 %2708, 262144
  %2716 = icmp ne i32 %2715, 0
  %2717 = select i1 %2716, float %36, float 1.000000e+00
  %2718 = select i1 %2716, float %37, float 0.000000e+00
  %2719 = select i1 %2716, float %38, float 0.000000e+00
  %2720 = select i1 %2716, float %39, float 1.000000e+00
  %2721 = select i1 %2716, float %40, float %56
  %2722 = select i1 %2716, float %41, float %57
  %2723 = add i32 %33, 392
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 3
  %2726 = add i32 %33, 376
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.i32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.i32 %2727, 2
  %2731 = extractvalue %dx.types.ResRet.i32 %2727, 3
  %2732 = bitcast i32 %2728 to float
  %2733 = bitcast i32 %2729 to float
  %2734 = bitcast i32 %2730 to float
  %2735 = bitcast i32 %2731 to float
  %2736 = add i32 %33, 488
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = add i32 %2738, 0
  %2740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2741 = bitcast i32 %2725 to float
  %2742 = fmul fast float %2734, %2721
  %2743 = fmul fast float %2735, %2722
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 3
  %2746 = fmul fast float %2745, %2732
  %2747 = fmul fast float %2745, %2733
  %2748 = fadd fast float %2746, %2742
  %2749 = fadd fast float %2747, %2743
  %2750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2740, %dx.types.Handle %65, float %2748, float %2749, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = fmul fast float %2751, 2.000000e+00
  %2754 = fmul fast float %2752, 2.000000e+00
  %2755 = fadd fast float %2753, -1.000000e+00
  %2756 = fadd fast float %2754, -1.000000e+00
  %2757 = fmul fast float %2755, %2741
  %2758 = fmul fast float %2756, %2741
  %2759 = add i32 %33, 332
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = lshr i32 %2761, 16
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = fmul fast float %2763, 0x3F50624DE0000000
  %2765 = add i32 %33, 136
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = lshr i32 %2767, 16
  %2769 = and i32 %2768, 255
  %2770 = lshr i32 %2767, 24
  %2771 = add i32 %33, 340
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 65535
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = lshr i32 %2773, 16
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = add i32 %33, 80
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = lshr i32 %2780, 22
  %2782 = shl nuw nsw i32 %2781, 5
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = shl i32 %2780, 4
  %2785 = and i32 %2784, 32752
  %2786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2785)  ; LegacyF16ToF32(value)
  %2787 = lshr i32 %2780, 7
  %2788 = and i32 %2787, 32752
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = fmul fast float %2745, 1.000000e+03
  %2791 = fmul fast float %340, %2790
  %2792 = call float @dx.op.unary.f32(i32 22, float %2791)  ; Frc(value)
  %2793 = fadd fast float %2792, %330
  %2794 = fmul fast float %341, %2790
  %2795 = call float @dx.op.unary.f32(i32 22, float %2794)  ; Frc(value)
  %2796 = fadd fast float %2795, %332
  %2797 = fmul fast float %2764, %2790
  %2798 = call float @dx.op.unary.f32(i32 22, float %2797)  ; Frc(value)
  %2799 = fmul fast float %2798, 0x401921FB60000000
  %2800 = fadd fast float %2799, %2783
  %2801 = call float @dx.op.unary.f32(i32 13, float %2800)  ; Sin(value)
  %2802 = call float @dx.op.unary.f32(i32 12, float %2800)  ; Cos(value)
  %2803 = fsub fast float -0.000000e+00, %2801
  %2804 = fadd fast float %2721, -5.000000e-01
  %2805 = fadd fast float %2804, %2757
  %2806 = fadd fast float %2722, -5.000000e-01
  %2807 = fadd fast float %2806, %2758
  %2808 = fmul fast float %2775, %2805
  %2809 = fmul fast float %2777, %2807
  %2810 = fadd fast float %2808, 5.000000e-01
  %2811 = fadd fast float %2809, 5.000000e-01
  %2812 = fmul fast float %2786, %2810
  %2813 = fmul fast float %2789, %2811
  %2814 = fmul fast float %2802, %2812
  %2815 = call float @dx.op.tertiary.f32(i32 46, float %2803, float %2813, float %2814)  ; FMad(a,b,c)
  %2816 = fmul fast float %2801, %2812
  %2817 = call float @dx.op.tertiary.f32(i32 46, float %2802, float %2813, float %2816)  ; FMad(a,b,c)
  %2818 = fadd fast float %2793, %2815
  %2819 = fadd fast float %2796, %2817
  %2820 = icmp ugt i32 %2769, 1
  %2821 = icmp ugt i32 %2767, 33554431
  %2822 = or i1 %2821, %2820
  br i1 %2822, label %2823, label %2848

; <label>:2823                                    ; preds = %2714
  %2824 = add i32 %33, 276
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = fmul fast float %2745, %2828
  %2830 = call float @dx.op.unary.f32(i32 22, float %2829)  ; Frc(value)
  %2831 = mul nuw nsw i32 %2769, %2770
  %2832 = uitofp i32 %2831 to float
  %2833 = fmul fast float %2830, %2832
  %2834 = call float @dx.op.unary.f32(i32 27, float %2833)  ; Round_ni(value)
  %2835 = fptoui float %2834 to i32
  %2836 = urem i32 %2835, %2769
  %2837 = udiv i32 %2835, %2770
  %2838 = call float @dx.op.unary.f32(i32 22, float %2818)  ; Frc(value)
  %2839 = call float @dx.op.unary.f32(i32 22, float %2819)  ; Frc(value)
  %2840 = uitofp i32 %2836 to float
  %2841 = uitofp i32 %2837 to float
  %2842 = fadd fast float %2838, %2840
  %2843 = fadd fast float %2839, %2841
  %2844 = uitofp i32 %2769 to float
  %2845 = uitofp i32 %2770 to float
  %2846 = fdiv fast float %2842, %2844
  %2847 = fdiv fast float %2843, %2845
  br label %2848

; <label>:2848                                    ; preds = %2823, %2714
  %2849 = phi float [ %2846, %2823 ], [ %2818, %2714 ]
  %2850 = phi float [ %2847, %2823 ], [ %2819, %2714 ]
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 16777216
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2964, label %2855

; <label>:2855                                    ; preds = %2848
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.CBufRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.CBufRet.f32 %2856, 2
  %2860 = fadd fast float %2857, %131
  %2861 = fadd fast float %2858, %132
  %2862 = fadd fast float %2859, %133
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = icmp eq i32 %34, 65535
  br i1 %2866, label %2961, label %2867

; <label>:2867                                    ; preds = %2855
  %2868 = lshr i32 %34, 1
  %2869 = shl i32 %2868, 2
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %34, 1
  %2873 = icmp ne i32 %2872, 0
  %2874 = lshr i32 %2871, 16
  %2875 = and i32 %2871, 65535
  %2876 = select i1 %2873, i32 %2874, i32 %2875
  %2877 = icmp eq i32 %2876, 65535
  br i1 %2877, label %2957, label %2878

; <label>:2878                                    ; preds = %2867
  %2879 = mul nuw nsw i32 %2876, 40
  %2880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = add nuw nsw i32 %2879, 12
  %2885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = add nuw nsw i32 %2879, 24
  %2890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = add nuw nsw i32 %2879, 36
  %2895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.f32 %2895, 0
  %2897 = fsub fast float %2860, %2881
  %2898 = fsub fast float %2861, %2882
  %2899 = fsub fast float %2862, %2883
  %2900 = fmul fast float %2896, %2897
  %2901 = fmul fast float %2896, %2898
  %2902 = fmul fast float %2896, %2899
  %2903 = call float @dx.op.unary.f32(i32 27, float %2900)  ; Round_ni(value)
  %2904 = call float @dx.op.unary.f32(i32 27, float %2901)  ; Round_ni(value)
  %2905 = call float @dx.op.unary.f32(i32 27, float %2902)  ; Round_ni(value)
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = fadd fast float %2904, 5.000000e-01
  %2908 = fadd fast float %2905, 5.000000e-01
  %2909 = fmul fast float %2906, %2886
  %2910 = fmul fast float %2907, %2887
  %2911 = fmul fast float %2908, %2888
  %2912 = shl i32 %34, 2
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = add i32 %2914, 0
  %2916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2917 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2918 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2919 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2916, %dx.types.Handle %30, float %2917, float %2918, float %2919, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = fmul fast float %2921, 1.023000e+03
  %2925 = fmul fast float %2922, 1.023000e+03
  %2926 = fmul fast float %2923, 1.023000e+03
  %2927 = fadd fast float %2924, 5.000000e-01
  %2928 = fadd fast float %2925, 5.000000e-01
  %2929 = fadd fast float %2926, 5.000000e-01
  %2930 = call float @dx.op.unary.f32(i32 27, float %2927)  ; Round_ni(value)
  %2931 = call float @dx.op.unary.f32(i32 27, float %2928)  ; Round_ni(value)
  %2932 = call float @dx.op.unary.f32(i32 27, float %2929)  ; Round_ni(value)
  %2933 = fsub fast float %2900, %2903
  %2934 = fsub fast float %2901, %2904
  %2935 = fsub fast float %2902, %2905
  %2936 = fmul fast float %2933, 7.500000e-01
  %2937 = fmul fast float %2934, 7.500000e-01
  %2938 = fmul fast float %2935, 7.500000e-01
  %2939 = fadd fast float %2903, 1.250000e-01
  %2940 = fadd fast float %2939, %2936
  %2941 = fadd fast float %2940, %2930
  %2942 = fadd fast float %2904, 1.250000e-01
  %2943 = fadd fast float %2942, %2937
  %2944 = fadd fast float %2943, %2931
  %2945 = fadd fast float %2905, 1.250000e-01
  %2946 = fadd fast float %2945, %2938
  %2947 = fadd fast float %2946, %2932
  %2948 = fmul fast float %2941, %2891
  %2949 = fmul fast float %2944, %2892
  %2950 = fmul fast float %2947, %2893
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2954, %dx.types.Handle %28, float %2948, float %2949, float %2950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  br label %2957

; <label>:2957                                    ; preds = %2878, %2867
  %2958 = phi float [ %2956, %2878 ], [ -1.000000e+00, %2867 ]
  %2959 = fadd fast float %2958, %2865
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  br label %2961

; <label>:2961                                    ; preds = %2957, %2855
  %2962 = phi float [ %2960, %2957 ], [ %2865, %2855 ]
  %2963 = fmul fast float %2962, %396
  br label %2964

; <label>:2964                                    ; preds = %2961, %2848
  %2965 = phi float [ %2963, %2961 ], [ %396, %2848 ]
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 256
  %2969 = icmp eq i32 %2968, 0
  br i1 %2969, label %3016, label %2970

; <label>:2970                                    ; preds = %2964
  %2971 = add i32 %33, 484
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %2973, 0
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2975, %dx.types.Handle %65, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = add i32 %33, 148
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = shl i32 %2980, 4
  %2982 = and i32 %2981, 32752
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = lshr i32 %2980, 7
  %2985 = and i32 %2984, 32752
  %2986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2985)  ; LegacyF16ToF32(value)
  %2987 = fsub fast float 1.000000e+00, %2965
  %2988 = call float @dx.op.binary.f32(i32 35, float %2987, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2989 = bitcast float %2965 to i32
  %2990 = sitofp i32 %2989 to float
  %2991 = fadd fast float %2990, 0xC1CFBF8940000000
  %2992 = fmul fast float %2986, %2991
  %2993 = fadd fast float %2992, 0x41CFBF8940000000
  %2994 = fptosi float %2993 to i32
  %2995 = bitcast i32 %2994 to float
  %2996 = bitcast float %2988 to i32
  %2997 = sitofp i32 %2996 to float
  %2998 = fadd fast float %2997, 0xC1CFBF8940000000
  %2999 = fmul fast float %2998, %2986
  %3000 = fadd fast float %2999, 0x41CFBF8940000000
  %3001 = fptosi float %3000 to i32
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2995, %2983
  %3004 = fmul fast float %3002, %2983
  %3005 = fsub fast float %2988, %3003
  %3006 = fadd fast float %3004, %2988
  %3007 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3008 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3009 = fsub fast float %2977, %3007
  %3010 = fsub fast float %3008, %3007
  %3011 = bitcast float %3010 to i32
  %3012 = sub nsw i32 2129859010, %3011
  %3013 = bitcast i32 %3012 to float
  %3014 = fmul fast float %3013, %3009
  %3015 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  br label %3016

; <label>:3016                                    ; preds = %2970, %2964
  %3017 = phi float [ %3015, %2970 ], [ %2965, %2964 ]
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 128
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3038, label %3022

; <label>:3022                                    ; preds = %3016
  %3023 = add i32 %33, 468
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3027, %dx.types.Handle %65, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = and i32 %3031, 524288
  %3033 = icmp ne i32 %3032, 0
  %3034 = fcmp fast ogt float %3029, 0x3FE0101020000000
  %3035 = select i1 %3034, float 1.000000e+00, float 0.000000e+00
  %3036 = select i1 %3033, float %3035, float %3029
  %3037 = fmul fast float %3036, %3017
  br label %3038

; <label>:3038                                    ; preds = %3022, %3016
  %3039 = phi float [ %3037, %3022 ], [ %3017, %3016 ]
  %3040 = fcmp fast ult float %3039, 0x3F70101020000000
  br i1 %3040, label %3583, label %3041

; <label>:3041                                    ; preds = %3038
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 16
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3244, label %3046

; <label>:3046                                    ; preds = %3041
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %33, 420
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %64, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = extractvalue %dx.types.ResRet.f32 %3054, 3
  %3059 = and i32 %3048, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = lshr i32 %3048, 8
  %3062 = and i32 %3061, 255
  %3063 = uitofp i32 %3062 to float
  %3064 = fmul fast float %3058, %3060
  %3065 = fadd fast float %3064, %3063
  %3066 = fmul fast float %3065, 0x3F70101000000000
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 512
  %3070 = icmp eq i32 %3069, 0
  br i1 %3070, label %3079, label %3071

; <label>:3071                                    ; preds = %3046
  %3072 = add i32 %33, 504
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %3074, 0
  %3076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3076, %dx.types.Handle %65, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3078 = extractvalue %dx.types.ResRet.f32 %3077, 0
  br label %3079

; <label>:3079                                    ; preds = %3071, %3046
  %3080 = phi float [ %3078, %3071 ], [ 1.000000e+00, %3046 ]
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 33554432
  %3084 = icmp eq i32 %3083, 0
  br i1 %3084, label %3191, label %3085

; <label>:3085                                    ; preds = %3079
  %3086 = add i32 %33, 272
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, 65535
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = lshr i32 %3088, 16
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = add i32 %33, 276
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = and i32 %3095, 65535
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = lshr i32 %3099, 24
  %3101 = uitofp i32 %3100 to float
  %3102 = fmul fast float %3101, 0x3F70101020000000
  %3103 = and i32 %3099, 255
  %3104 = uitofp i32 %3103 to float
  %3105 = fmul fast float %3104, 0x3F70101020000000
  %3106 = lshr i32 %3099, 8
  %3107 = and i32 %3106, 255
  %3108 = uitofp i32 %3107 to float
  %3109 = fmul fast float %3108, 0x3F70101020000000
  %3110 = lshr i32 %3099, 16
  %3111 = and i32 %3110, 255
  %3112 = uitofp i32 %3111 to float
  %3113 = fmul fast float %3112, 0x3F70101020000000
  %3114 = add i32 %33, 268
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = lshr i32 %3116, 24
  %3118 = uitofp i32 %3117 to float
  %3119 = fmul fast float %3118, 0x3F70101020000000
  %3120 = and i32 %3116, 255
  %3121 = uitofp i32 %3120 to float
  %3122 = fmul fast float %3121, 0x3F70101020000000
  %3123 = lshr i32 %3116, 8
  %3124 = and i32 %3123, 255
  %3125 = uitofp i32 %3124 to float
  %3126 = fmul fast float %3125, 0x3F70101020000000
  %3127 = lshr i32 %3116, 16
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = fmul fast float %3129, 0x3F70101020000000
  %3131 = bitcast float %3055 to i32
  %3132 = ashr i32 %3131, 1
  %3133 = sub nsw i32 1597463174, %3132
  %3134 = bitcast i32 %3133 to float
  %3135 = fmul fast float %3055, 5.000000e-01
  %3136 = fmul fast float %3134, %3134
  %3137 = fmul fast float %3136, %3135
  %3138 = fsub fast float 1.500000e+00, %3137
  %3139 = fmul fast float %3134, %3055
  %3140 = fmul fast float %3139, %3138
  %3141 = bitcast float %3056 to i32
  %3142 = ashr i32 %3141, 1
  %3143 = sub nsw i32 1597463174, %3142
  %3144 = bitcast i32 %3143 to float
  %3145 = fmul fast float %3056, 5.000000e-01
  %3146 = fmul fast float %3144, %3144
  %3147 = fmul fast float %3146, %3145
  %3148 = fsub fast float 1.500000e+00, %3147
  %3149 = fmul fast float %3144, %3056
  %3150 = fmul fast float %3149, %3148
  %3151 = bitcast float %3057 to i32
  %3152 = ashr i32 %3151, 1
  %3153 = sub nsw i32 1597463174, %3152
  %3154 = bitcast i32 %3153 to float
  %3155 = fmul fast float %3057, 5.000000e-01
  %3156 = fmul fast float %3154, %3154
  %3157 = fmul fast float %3156, %3155
  %3158 = fsub fast float 1.500000e+00, %3157
  %3159 = fmul fast float %3154, %3057
  %3160 = fmul fast float %3159, %3158
  %3161 = fsub fast float %3140, %3122
  %3162 = fsub fast float %3150, %3126
  %3163 = fsub fast float %3160, %3130
  %3164 = fmul fast float %3161, %3090
  %3165 = fmul fast float %3162, %3092
  %3166 = fmul fast float %3163, %3097
  %3167 = fadd fast float %3164, %3105
  %3168 = fadd fast float %3165, %3109
  %3169 = fadd fast float %3166, %3113
  %3170 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3171 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  %3172 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  %3173 = fmul fast float %3170, %3170
  %3174 = fmul fast float %3171, %3171
  %3175 = fmul fast float %3172, %3172
  %3176 = fsub fast float %3173, %3055
  %3177 = fsub fast float %3174, %3056
  %3178 = fsub fast float %3175, %3057
  %3179 = fmul fast float %3176, %3080
  %3180 = fmul fast float %3177, %3080
  %3181 = fmul fast float %3178, %3080
  %3182 = fadd fast float %3179, %3055
  %3183 = fadd fast float %3180, %3056
  %3184 = fadd fast float %3181, %3057
  %3185 = fadd fast float %3102, %3066
  %3186 = fsub fast float %3185, %3119
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3188 = fsub fast float %3187, %3066
  %3189 = fmul fast float %3188, %3080
  %3190 = fadd fast float %3189, %3066
  br label %3244

; <label>:3191                                    ; preds = %3079
  %3192 = and i32 %3082, 134217728
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3228, label %3194

; <label>:3194                                    ; preds = %3191
  %3195 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3196 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3197 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3198 = fadd fast float %3195, -5.000000e-01
  %3199 = fadd fast float %3196, -5.000000e-01
  %3200 = fadd fast float %3197, -5.000000e-01
  %3201 = fmul fast float %3198, %3080
  %3202 = fmul fast float %3199, %3080
  %3203 = fmul fast float %3200, %3080
  %3204 = fadd fast float %3201, 5.000000e-01
  %3205 = fadd fast float %3202, 5.000000e-01
  %3206 = fadd fast float %3203, 5.000000e-01
  %3207 = call float @dx.op.unary.f32(i32 24, float %3055)  ; Sqrt(value)
  %3208 = call float @dx.op.unary.f32(i32 24, float %3056)  ; Sqrt(value)
  %3209 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3210 = fmul fast float %3204, 2.000000e+00
  %3211 = fsub fast float 1.000000e+00, %3210
  %3212 = fmul fast float %3211, %3207
  %3213 = fadd fast float %3212, %3210
  %3214 = fmul fast float %3213, %3207
  %3215 = fmul fast float %3205, 2.000000e+00
  %3216 = fsub fast float 1.000000e+00, %3215
  %3217 = fmul fast float %3216, %3208
  %3218 = fadd fast float %3217, %3215
  %3219 = fmul fast float %3218, %3208
  %3220 = fmul fast float %3206, 2.000000e+00
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = fmul fast float %3221, %3209
  %3223 = fadd fast float %3222, %3220
  %3224 = fmul fast float %3223, %3209
  %3225 = fmul fast float %3214, %3214
  %3226 = fmul fast float %3219, %3219
  %3227 = fmul fast float %3224, %3224
  br label %3244

; <label>:3228                                    ; preds = %3191
  %3229 = fmul fast float %317, %317
  %3230 = fmul fast float %321, %321
  %3231 = fmul fast float %325, %325
  %3232 = fadd fast float %3229, -1.000000e+00
  %3233 = fadd fast float %3230, -1.000000e+00
  %3234 = fadd fast float %3231, -1.000000e+00
  %3235 = fmul fast float %3080, %3232
  %3236 = fmul fast float %3080, %3233
  %3237 = fmul fast float %3080, %3234
  %3238 = fadd fast float %3235, 1.000000e+00
  %3239 = fadd fast float %3236, 1.000000e+00
  %3240 = fadd fast float %3237, 1.000000e+00
  %3241 = fmul fast float %3238, %3055
  %3242 = fmul fast float %3239, %3056
  %3243 = fmul fast float %3240, %3057
  br label %3244

; <label>:3244                                    ; preds = %3228, %3194, %3085, %3041
  %3245 = phi float [ %3190, %3085 ], [ %3066, %3194 ], [ %3066, %3228 ], [ 0x3FA23C0BE0000000, %3041 ]
  %3246 = phi float [ %3182, %3085 ], [ %3225, %3194 ], [ %3241, %3228 ], [ 1.000000e+00, %3041 ]
  %3247 = phi float [ %3183, %3085 ], [ %3226, %3194 ], [ %3242, %3228 ], [ 1.000000e+00, %3041 ]
  %3248 = phi float [ %3184, %3085 ], [ %3227, %3194 ], [ %3243, %3228 ], [ 1.000000e+00, %3041 ]
  %3249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.i32 %3249, 1
  %3251 = and i32 %3250, 1
  %3252 = icmp ne i32 %3251, 0
  %3253 = add i32 %33, 372
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 32
  %3257 = icmp ne i32 %3256, 0
  %3258 = and i1 %3252, %3257
  %3259 = select i1 %3258, float 1.000000e+00, float %3246
  %3260 = select i1 %3258, float 0x3FD3333340000000, float %3247
  %3261 = select i1 %3258, float 0x3FD3333340000000, float %3248
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 32
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3338, label %3266

; <label>:3266                                    ; preds = %3244
  %3267 = add i32 %33, 140
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = add i32 %33, 436
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %3272, 0
  %3274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3274, %dx.types.Handle %64, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.ResRet.f32 %3275, 2
  %3279 = extractvalue %dx.types.ResRet.f32 %3275, 3
  %3280 = and i32 %3269, 255
  %3281 = uitofp i32 %3280 to float
  %3282 = lshr i32 %3269, 8
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = lshr i32 %3269, 16
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = fmul fast float %3287, 0x3F70101000000000
  %3289 = fmul fast float %3276, %3281
  %3290 = fadd fast float %3289, %3284
  %3291 = fmul fast float %3290, 0x3F70101000000000
  %3292 = fadd fast float %3277, -5.000000e-01
  %3293 = fadd fast float %3279, -5.000000e-01
  %3294 = fmul fast float %3292, %3288
  %3295 = fmul fast float %3293, %3288
  %3296 = fadd fast float %3294, 5.000000e-01
  %3297 = fadd fast float %3295, 5.000000e-01
  %3298 = fmul fast float %3296, 2.000000e+00
  %3299 = fadd fast float %3298, -1.000000e+00
  %3300 = fmul fast float %3297, 2.000000e+00
  %3301 = fadd fast float %3300, -1.000000e+00
  %3302 = fadd fast float %3299, %3301
  %3303 = fmul fast float %3302, 5.000000e-01
  %3304 = fsub fast float %3299, %3301
  %3305 = fmul fast float %3304, 5.000000e-01
  %3306 = call float @dx.op.unary.f32(i32 6, float %3303)  ; FAbs(value)
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = call float @dx.op.unary.f32(i32 6, float %3305)  ; FAbs(value)
  %3309 = fsub fast float %3307, %3308
  %3310 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3305, float %3309, float %3303, float %3305, float %3309)  ; Dot3(ax,ay,az,bx,by,bz)
  %3311 = call float @dx.op.unary.f32(i32 25, float %3310)  ; Rsqrt(value)
  %3312 = fmul fast float %3303, %3311
  %3313 = fmul fast float %3305, %3311
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 67108864
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3334, label %3318

; <label>:3318                                    ; preds = %3266
  %3319 = add i32 %33, 328
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 65535
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = and i32 %3325, 65535
  %3327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3326)  ; LegacyF16ToF32(value)
  %3328 = lshr i32 %3321, 16
  %3329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3328)  ; LegacyF16ToF32(value)
  %3330 = fsub fast float %3291, %3329
  %3331 = fmul fast float %3330, %3323
  %3332 = fadd fast float %3331, %3327
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  br label %3334

; <label>:3334                                    ; preds = %3318, %3266
  %3335 = phi float [ %3333, %3318 ], [ %3291, %3266 ]
  %3336 = call float @dx.op.dot2.f32(i32 54, float %3312, float %3313, float %2717, float %2718)  ; Dot2(ax,ay,bx,by)
  %3337 = call float @dx.op.dot2.f32(i32 54, float %3312, float %3313, float %2719, float %2720)  ; Dot2(ax,ay,bx,by)
  br label %3338

; <label>:3338                                    ; preds = %3334, %3244
  %3339 = phi float [ %3335, %3334 ], [ 0x3FD6666660000000, %3244 ]
  %3340 = phi float [ %3336, %3334 ], [ 0.000000e+00, %3244 ]
  %3341 = phi float [ %3337, %3334 ], [ 0.000000e+00, %3244 ]
  %3342 = phi float [ %3278, %3334 ], [ 1.000000e+00, %3244 ]
  %3343 = add i32 %33, 208
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = lshr i32 %3345, 22
  %3347 = shl nuw nsw i32 %3346, 5
  %3348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3347)  ; LegacyF16ToF32(value)
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = and i32 %3350, 64
  %3352 = icmp eq i32 %3351, 0
  br i1 %3352, label %3386, label %3353

; <label>:3353                                    ; preds = %3338
  %3354 = add i32 %33, 452
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = add i32 %3356, 0
  %3358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3360 = extractvalue %dx.types.ResRet.i32 %3359, 0
  %3361 = and i32 %3360, 131072
  %3362 = icmp eq i32 %3361, 0
  %3363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3358, %dx.types.Handle %64, float %2849, float %2850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = fmul fast float %3364, %305
  %3368 = fmul fast float %3365, %308
  %3369 = fmul fast float %3366, %311
  br i1 %3362, label %3376, label %3370

; <label>:3370                                    ; preds = %3353
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 0
  %3373 = fmul fast float %3372, %3367
  %3374 = fmul fast float %3372, %3368
  %3375 = fmul fast float %3372, %3369
  br label %3376

; <label>:3376                                    ; preds = %3370, %3353
  %3377 = phi float [ %3373, %3370 ], [ %3367, %3353 ]
  %3378 = phi float [ %3374, %3370 ], [ %3368, %3353 ]
  %3379 = phi float [ %3375, %3370 ], [ %3369, %3353 ]
  %3380 = fmul fast float %3377, %3348
  %3381 = select i1 %173, float %3380, float %3377
  %3382 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3378, float %3379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3383 = select i1 %173, float 0.000000e+00, float %3377
  %3384 = select i1 %173, float %3382, float %3378
  %3385 = select i1 %173, float 0.000000e+00, float %3379
  br label %3386

; <label>:3386                                    ; preds = %3376, %3338
  %3387 = phi float [ %3383, %3376 ], [ 0.000000e+00, %3338 ]
  %3388 = phi float [ %3384, %3376 ], [ 0.000000e+00, %3338 ]
  %3389 = phi float [ %3385, %3376 ], [ 0.000000e+00, %3338 ]
  %3390 = add i32 %33, 144
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = lshr i32 %3392, 8
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = call float @dx.op.dot3.f32(i32 55, float %3259, float %3260, float %3261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = fmul fast float %3397, %3398
  %3400 = fadd fast float %3399, %3394
  %3401 = fmul fast float %3400, 0x3F70101020000000
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  br i1 %2705, label %3403, label %3411

; <label>:3403                                    ; preds = %3386
  %3404 = fsub fast float 1.000000e+00, %3039
  %3405 = fmul fast float %3404, %2694
  %3406 = fmul fast float %3404, %2695
  %3407 = fmul fast float %3404, %2696
  %3408 = fmul fast float %3404, %2697
  %3409 = fmul fast float %3404, %2698
  %3410 = fmul fast float %3404, %2699
  br label %3411

; <label>:3411                                    ; preds = %3403, %3386
  %3412 = phi float [ %3405, %3403 ], [ %2694, %3386 ]
  %3413 = phi float [ %3406, %3403 ], [ %2695, %3386 ]
  %3414 = phi float [ %3407, %3403 ], [ %2696, %3386 ]
  %3415 = phi float [ %3408, %3403 ], [ %2697, %3386 ]
  %3416 = phi float [ %3409, %3403 ], [ %2698, %3386 ]
  %3417 = phi float [ %3410, %3403 ], [ %2699, %3386 ]
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 3
  %3421 = icmp eq i32 %3420, 3
  br i1 %3421, label %3500, label %3422

; <label>:3422                                    ; preds = %3411
  %3423 = and i32 %3419, 16
  %3424 = icmp ne i32 %3423, 0
  %3425 = select i1 %3424, float %3039, float 0.000000e+00
  %3426 = icmp eq i32 %3420, 0
  br i1 %3426, label %3427, label %3455

; <label>:3427                                    ; preds = %3422
  %3428 = and i32 %3419, 64
  %3429 = icmp ne i32 %3428, 0
  %3430 = select i1 %3429, float %3039, float 0.000000e+00
  %3431 = fsub fast float %3259, %3412
  %3432 = fsub fast float %3260, %3413
  %3433 = fsub fast float %3261, %3414
  %3434 = fmul fast float %3425, %3431
  %3435 = fmul fast float %3425, %3432
  %3436 = fmul fast float %3425, %3433
  %3437 = fadd fast float %3434, %3412
  %3438 = fadd fast float %3435, %3413
  %3439 = fadd fast float %3436, %3414
  %3440 = fsub fast float %3245, %2700
  %3441 = fmul fast float %3425, %3440
  %3442 = fadd fast float %3441, %2700
  %3443 = fsub fast float %3387, %3415
  %3444 = fsub fast float %3388, %3416
  %3445 = fsub fast float %3389, %3417
  %3446 = fmul fast float %3430, %3443
  %3447 = fmul fast float %3430, %3444
  %3448 = fmul fast float %3430, %3445
  %3449 = fadd fast float %3446, %3415
  %3450 = fadd fast float %3447, %3416
  %3451 = fadd fast float %3448, %3417
  %3452 = fsub fast float %3402, %2703
  %3453 = fmul fast float %3425, %3452
  %3454 = fadd fast float %3453, %2703
  br label %3500

; <label>:3455                                    ; preds = %3422
  %3456 = icmp eq i32 %3420, 1
  br i1 %3456, label %3457, label %3470

; <label>:3457                                    ; preds = %3455
  %3458 = fadd fast float %3259, -1.000000e+00
  %3459 = fadd fast float %3260, -1.000000e+00
  %3460 = fadd fast float %3261, -1.000000e+00
  %3461 = fmul fast float %3425, %3458
  %3462 = fmul fast float %3425, %3459
  %3463 = fmul fast float %3425, %3460
  %3464 = fadd fast float %3461, 1.000000e+00
  %3465 = fadd fast float %3462, 1.000000e+00
  %3466 = fadd fast float %3463, 1.000000e+00
  %3467 = fmul fast float %3464, %3412
  %3468 = fmul fast float %3465, %3413
  %3469 = fmul fast float %3466, %3414
  br label %3500

; <label>:3470                                    ; preds = %3455
  %3471 = icmp eq i32 %3420, 2
  br i1 %3471, label %3472, label %3500

; <label>:3472                                    ; preds = %3470
  %3473 = call float @dx.op.unary.f32(i32 24, float %3259)  ; Sqrt(value)
  %3474 = call float @dx.op.unary.f32(i32 24, float %3260)  ; Sqrt(value)
  %3475 = call float @dx.op.unary.f32(i32 24, float %3261)  ; Sqrt(value)
  %3476 = fadd fast float %3473, -5.000000e-01
  %3477 = fadd fast float %3474, -5.000000e-01
  %3478 = fadd fast float %3475, -5.000000e-01
  %3479 = fmul fast float %3476, %3425
  %3480 = fmul fast float %3477, %3425
  %3481 = fmul fast float %3478, %3425
  %3482 = fadd fast float %3479, 5.000000e-01
  %3483 = fadd fast float %3480, 5.000000e-01
  %3484 = fadd fast float %3481, 5.000000e-01
  %3485 = fmul fast float %3482, 2.000000e+00
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = fmul fast float %3486, %3412
  %3488 = fadd fast float %3487, %3485
  %3489 = fmul fast float %3488, %3412
  %3490 = fmul fast float %3483, 2.000000e+00
  %3491 = fsub fast float 1.000000e+00, %3490
  %3492 = fmul fast float %3491, %3413
  %3493 = fadd fast float %3492, %3490
  %3494 = fmul fast float %3493, %3413
  %3495 = fmul fast float %3484, 2.000000e+00
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = fmul fast float %3496, %3414
  %3498 = fadd fast float %3497, %3495
  %3499 = fmul fast float %3498, %3414
  br label %3500

; <label>:3500                                    ; preds = %3472, %3470, %3457, %3427, %3411
  %3501 = phi float [ %3412, %3411 ], [ %3489, %3472 ], [ %3412, %3470 ], [ %3467, %3457 ], [ %3437, %3427 ]
  %3502 = phi float [ %3413, %3411 ], [ %3494, %3472 ], [ %3413, %3470 ], [ %3468, %3457 ], [ %3438, %3427 ]
  %3503 = phi float [ %3414, %3411 ], [ %3499, %3472 ], [ %3414, %3470 ], [ %3469, %3457 ], [ %3439, %3427 ]
  %3504 = phi float [ %3415, %3411 ], [ %3415, %3472 ], [ %3415, %3470 ], [ %3415, %3457 ], [ %3449, %3427 ]
  %3505 = phi float [ %3416, %3411 ], [ %3416, %3472 ], [ %3416, %3470 ], [ %3416, %3457 ], [ %3450, %3427 ]
  %3506 = phi float [ %3417, %3411 ], [ %3417, %3472 ], [ %3417, %3470 ], [ %3417, %3457 ], [ %3451, %3427 ]
  %3507 = phi float [ %2700, %3411 ], [ %2700, %3472 ], [ %2700, %3470 ], [ %2700, %3457 ], [ %3442, %3427 ]
  %3508 = phi float [ %2703, %3411 ], [ %2703, %3472 ], [ %2703, %3470 ], [ %2703, %3457 ], [ %3454, %3427 ]
  %3509 = and i32 %3419, 12
  %3510 = icmp eq i32 %3509, 12
  br i1 %3510, label %3583, label %3511

; <label>:3511                                    ; preds = %3500
  %3512 = and i32 %3419, 2097184
  %3513 = icmp eq i32 %3512, 2097184
  %3514 = select i1 %3513, float %3039, float 0.000000e+00
  %3515 = and i32 %3419, 4194336
  %3516 = icmp eq i32 %3515, 4194336
  %3517 = select i1 %3516, float %3039, float 0.000000e+00
  %3518 = and i32 %3419, 8388640
  %3519 = icmp eq i32 %3518, 8388640
  %3520 = select i1 %3519, float %3039, float 0.000000e+00
  %3521 = icmp eq i32 %3509, 0
  br i1 %3521, label %3522, label %3535

; <label>:3522                                    ; preds = %3511
  %3523 = fsub fast float %3340, %2692
  %3524 = fsub fast float %3341, %2693
  %3525 = fmul fast float %3514, %3523
  %3526 = fmul fast float %3514, %3524
  %3527 = fadd fast float %3525, %2692
  %3528 = fadd fast float %3526, %2693
  %3529 = fsub fast float %3342, %2702
  %3530 = fmul fast float %3517, %3529
  %3531 = fadd fast float %3530, %2702
  %3532 = fsub fast float %3339, %2701
  %3533 = fmul fast float %3520, %3532
  %3534 = fadd fast float %3533, %2701
  br label %3583

; <label>:3535                                    ; preds = %3511
  %3536 = icmp eq i32 %3509, 4
  br i1 %3536, label %3537, label %3569

; <label>:3537                                    ; preds = %3535
  %3538 = fmul fast float %3514, %3340
  %3539 = fmul fast float %3514, %3341
  %3540 = fadd fast float %3538, %2692
  %3541 = fadd fast float %3539, %2693
  %3542 = call float @dx.op.binary.f32(i32 36, float %2702, float %3342)  ; FMin(a,b)
  %3543 = fsub fast float %3542, %2702
  %3544 = fmul fast float %3543, %3517
  %3545 = fadd fast float %3544, %2702
  %3546 = fadd fast float %3339, %2701
  %3547 = fmul fast float %3546, 0x3FF337FAE0000000
  %3548 = fmul fast float %2701, %2701
  %3549 = fmul fast float %3339, %3339
  %3550 = fadd fast float %3549, %3548
  %3551 = fmul fast float %3550, 0x3FE5152B00000000
  %3552 = fmul fast float %2701, 0xBFCC1F85E0000000
  %3553 = fmul fast float %3552, %3339
  %3554 = fadd fast float %3553, 0xBFE1363700000000
  %3555 = fadd fast float %3554, %3547
  %3556 = fsub fast float %3555, %3551
  %3557 = fmul fast float %3546, 0x3FBA6F0D00000000
  %3558 = fmul fast float %3550, 0x3FD0432880000000
  %3559 = fmul fast float %2701, 0xBFEF110800000000
  %3560 = fmul fast float %3559, %3339
  %3561 = fadd fast float %3560, 1.000000e+00
  %3562 = fsub fast float %3561, %3557
  %3563 = fadd fast float %3562, %3558
  %3564 = fdiv fast float %3556, %3563
  %3565 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3566 = fsub fast float %3565, %2701
  %3567 = fmul fast float %3566, %3520
  %3568 = fadd fast float %3567, %2701
  br label %3583

; <label>:3569                                    ; preds = %3535
  %3570 = icmp eq i32 %3509, 8
  br i1 %3570, label %3571, label %3583

; <label>:3571                                    ; preds = %3569
  %3572 = fmul fast float %3514, %3340
  %3573 = fmul fast float %3514, %3341
  %3574 = fadd fast float %3572, %2692
  %3575 = fadd fast float %3573, %2693
  %3576 = call float @dx.op.binary.f32(i32 36, float %2702, float %3342)  ; FMin(a,b)
  %3577 = fsub fast float %3576, %2702
  %3578 = fmul fast float %3577, %3517
  %3579 = fadd fast float %3578, %2702
  %3580 = fsub fast float %3339, %2701
  %3581 = fmul fast float %3520, %3580
  %3582 = fadd fast float %3581, %2701
  br label %3583

; <label>:3583                                    ; preds = %3571, %3569, %3537, %3522, %3500, %3038, %2704, %2691
  %3584 = phi float [ %2692, %3500 ], [ %2692, %3038 ], [ %2692, %2691 ], [ %2692, %2704 ], [ %3527, %3522 ], [ %3540, %3537 ], [ %2692, %3569 ], [ %3574, %3571 ]
  %3585 = phi float [ %2693, %3500 ], [ %2693, %3038 ], [ %2693, %2691 ], [ %2693, %2704 ], [ %3528, %3522 ], [ %3541, %3537 ], [ %2693, %3569 ], [ %3575, %3571 ]
  %3586 = phi float [ %3501, %3500 ], [ %2694, %3038 ], [ %2694, %2691 ], [ %2694, %2704 ], [ %3501, %3522 ], [ %3501, %3537 ], [ %3501, %3569 ], [ %3501, %3571 ]
  %3587 = phi float [ %3502, %3500 ], [ %2695, %3038 ], [ %2695, %2691 ], [ %2695, %2704 ], [ %3502, %3522 ], [ %3502, %3537 ], [ %3502, %3569 ], [ %3502, %3571 ]
  %3588 = phi float [ %3503, %3500 ], [ %2696, %3038 ], [ %2696, %2691 ], [ %2696, %2704 ], [ %3503, %3522 ], [ %3503, %3537 ], [ %3503, %3569 ], [ %3503, %3571 ]
  %3589 = phi float [ %3504, %3500 ], [ %2697, %3038 ], [ %2697, %2691 ], [ %2697, %2704 ], [ %3504, %3522 ], [ %3504, %3537 ], [ %3504, %3569 ], [ %3504, %3571 ]
  %3590 = phi float [ %3505, %3500 ], [ %2698, %3038 ], [ %2698, %2691 ], [ %2698, %2704 ], [ %3505, %3522 ], [ %3505, %3537 ], [ %3505, %3569 ], [ %3505, %3571 ]
  %3591 = phi float [ %3506, %3500 ], [ %2699, %3038 ], [ %2699, %2691 ], [ %2699, %2704 ], [ %3506, %3522 ], [ %3506, %3537 ], [ %3506, %3569 ], [ %3506, %3571 ]
  %3592 = phi float [ %3507, %3500 ], [ %2700, %3038 ], [ %2700, %2691 ], [ %2700, %2704 ], [ %3507, %3522 ], [ %3507, %3537 ], [ %3507, %3569 ], [ %3507, %3571 ]
  %3593 = phi float [ %2701, %3500 ], [ %2701, %3038 ], [ %2701, %2691 ], [ %2701, %2704 ], [ %3534, %3522 ], [ %3568, %3537 ], [ %2701, %3569 ], [ %3582, %3571 ]
  %3594 = phi float [ %2702, %3500 ], [ %2702, %3038 ], [ %2702, %2691 ], [ %2702, %2704 ], [ %3531, %3522 ], [ %3545, %3537 ], [ %2702, %3569 ], [ %3579, %3571 ]
  %3595 = phi float [ %3508, %3500 ], [ %2703, %3038 ], [ %2703, %2691 ], [ %2703, %2704 ], [ %3508, %3522 ], [ %3508, %3537 ], [ %3508, %3569 ], [ %3508, %3571 ]
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = fmul fast float %3599, %3589
  %3601 = fmul fast float %3599, %3590
  %3602 = fmul fast float %3599, %3591
  %3603 = call float @dx.op.dot2.f32(i32 54, float %3584, float %3585, float %3584, float %3585)  ; Dot2(ax,ay,bx,by)
  %3604 = fmul fast float %3603, 0x3FE3333340000000
  %3605 = fsub fast float 1.000000e+00, %3604
  %3606 = call float @dx.op.dot3.f32(i32 55, float %3584, float %3585, float %3605, float %3584, float %3585, float %3605)  ; Dot3(ax,ay,az,bx,by,bz)
  %3607 = call float @dx.op.unary.f32(i32 25, float %3606)  ; Rsqrt(value)
  %3608 = fmul fast float %3607, %3584
  %3609 = fmul fast float %3607, %3585
  %3610 = fmul fast float %3605, %3607
  %3611 = fmul fast float %3610, %75
  %3612 = fmul fast float %3610, %76
  %3613 = fmul fast float %3610, %77
  %3614 = fmul fast float %3608, %49
  %3615 = fmul fast float %3608, %50
  %3616 = fmul fast float %3608, %51
  %3617 = fadd fast float %3611, %3614
  %3618 = fadd fast float %3612, %3615
  %3619 = fadd fast float %3613, %3616
  %3620 = fmul fast float %87, %3609
  %3621 = fmul fast float %88, %3609
  %3622 = fmul fast float %89, %3609
  %3623 = fadd fast float %3617, %3620
  %3624 = fadd fast float %3618, %3621
  %3625 = fadd fast float %3619, %3622
  %3626 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3627 = call float @dx.op.unary.f32(i32 25, float %3626)  ; Rsqrt(value)
  %3628 = fmul fast float %3623, %3627
  %3629 = fmul fast float %3624, %3627
  %3630 = fmul fast float %3625, %3627
  %3631 = and i32 %35, 1
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3633, label %4141

; <label>:3633                                    ; preds = %3583
  %3634 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3635 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3636 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3637 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3638 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3639 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3640 = fadd fast float %3634, %131
  %3641 = fadd fast float %3635, %132
  %3642 = fadd fast float %3636, %133
  %3643 = fadd fast float %3637, %131
  %3644 = fadd fast float %3638, %132
  %3645 = fadd fast float %3639, %133
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.CBufRet.f32 %3646, 1
  %3649 = extractvalue %dx.types.CBufRet.f32 %3646, 2
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 2
  %3652 = extractvalue %dx.types.CBufRet.f32 %3650, 3
  %3653 = fmul fast float %3647, %68
  %3654 = fmul fast float %3653, %3651
  %3655 = fmul fast float %3648, %69
  %3656 = fmul fast float %3655, %3652
  %3657 = fptoui float %3654 to i32
  %3658 = fptoui float %3656 to i32
  %3659 = fadd fast float %3647, -1.000000e+00
  %3660 = fadd fast float %3648, -1.000000e+00
  %3661 = fptoui float %3659 to i32
  %3662 = fptoui float %3660 to i32
  %3663 = call i32 @dx.op.binary.i32(i32 40, i32 %3657, i32 %3661)  ; UMin(a,b)
  %3664 = call i32 @dx.op.binary.i32(i32 40, i32 %3658, i32 %3662)  ; UMin(a,b)
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 3
  %3668 = fmul fast float %3666, %63
  %3669 = fsub fast float %3668, %3667
  %3670 = fadd fast float %3649, -1.000000e+00
  %3671 = call float @dx.op.binary.f32(i32 36, float %3669, float %3670)  ; FMin(a,b)
  %3672 = fptoui float %3671 to i32
  %3673 = fptoui float %3647 to i32
  %3674 = fptoui float %3648 to i32
  %3675 = mul i32 %3672, %3674
  %3676 = add i32 %3675, %3664
  %3677 = mul i32 %3676, %3673
  %3678 = add i32 %3677, %3663
  %3679 = shl i32 %3678, 2
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = and i32 %3681, 1023
  %3683 = lshr i32 %3681, 10
  %3684 = icmp eq i32 %3682, 0
  br i1 %3684, label %4110, label %3685

; <label>:3685                                    ; preds = %3633
  %3686 = and i32 %3681, 1023
  br label %3687

; <label>:3687                                    ; preds = %3813, %3685
  %3688 = phi i32 [ %3763, %3813 ], [ 0, %3685 ]
  %3689 = phi float [ %3814, %3813 ], [ 0.000000e+00, %3685 ]
  %3690 = phi float [ %3815, %3813 ], [ %3597, %3685 ]
  %3691 = phi float [ %3816, %3813 ], [ %3595, %3685 ]
  %3692 = phi float [ %3817, %3813 ], [ 0.000000e+00, %3685 ]
  %3693 = phi float [ %3818, %3813 ], [ 0.000000e+00, %3685 ]
  %3694 = phi float [ %3819, %3813 ], [ %3600, %3685 ]
  %3695 = phi float [ %3820, %3813 ], [ %3601, %3685 ]
  %3696 = phi float [ %3821, %3813 ], [ %3602, %3685 ]
  %3697 = phi float [ %3822, %3813 ], [ %3628, %3685 ]
  %3698 = phi float [ %3823, %3813 ], [ %3629, %3685 ]
  %3699 = phi float [ %3824, %3813 ], [ %3630, %3685 ]
  %3700 = phi float [ %3825, %3813 ], [ %3594, %3685 ]
  %3701 = phi float [ %3826, %3813 ], [ %3593, %3685 ]
  %3702 = phi float [ %3827, %3813 ], [ 0.000000e+00, %3685 ]
  %3703 = phi float [ %3828, %3813 ], [ %3592, %3685 ]
  %3704 = phi float [ %3829, %3813 ], [ %3586, %3685 ]
  %3705 = phi float [ %3830, %3813 ], [ %3587, %3685 ]
  %3706 = phi float [ %3831, %3813 ], [ %3588, %3685 ]
  %3707 = add nuw nsw i32 %3688, %3683
  %3708 = shl i32 %3707, 2
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = shl i32 %3710, 8
  %3712 = or i32 %3711, 48
  %3713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.ResRet.f32 %3713, 3
  %3718 = or i32 %3711, 64
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.i32 %3719, 1
  %3722 = or i32 %3711, 80
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 3
  %3726 = or i32 %3711, 96
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.ResRet.f32 %3727, 3
  %3732 = or i32 %3711, 112
  %3733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3735 = or i32 %3711, 128
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = or i32 %3711, 144
  %3742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3747 = or i32 %3711, 160
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.ResRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.ResRet.f32 %3748, 2
  %3752 = extractvalue %dx.types.ResRet.f32 %3748, 3
  %3753 = or i32 %3711, 192
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = or i32 %3711, 208
  %3757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = or i32 %3711, 248
  %3760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.ResRet.f32 %3760, 1
  %3763 = add nuw nsw i32 %3688, 1
  %3764 = bitcast float %3717 to i32
  %3765 = and i32 %3764, 512
  %3766 = icmp eq i32 %3765, 0
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3772 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3773 = or i32 %3711, 16
  %3774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = call float @dx.op.dot4.f32(i32 56, float %3775, float %3776, float %3777, float %3778, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3780 = or i32 %3711, 32
  %3781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = call float @dx.op.dot4.f32(i32 56, float %3782, float %3783, float %3784, float %3785, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3787 = call float @dx.op.unary.f32(i32 27, float %3772)  ; Round_ni(value)
  %3788 = call float @dx.op.unary.f32(i32 6, float %3787)  ; FAbs(value)
  %3789 = call float @dx.op.unary.f32(i32 27, float %3779)  ; Round_ni(value)
  %3790 = call float @dx.op.unary.f32(i32 6, float %3789)  ; FAbs(value)
  %3791 = call float @dx.op.unary.f32(i32 6, float %3786)  ; FAbs(value)
  %3792 = call float @dx.op.unary.f32(i32 27, float %3791)  ; Round_ni(value)
  %3793 = fadd fast float %3790, %3788
  %3794 = fadd fast float %3793, %3792
  %3795 = fcmp fast oeq float %3794, 0.000000e+00
  %3796 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %3640, float %3641, float %3642, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3797 = call float @dx.op.dot4.f32(i32 56, float %3775, float %3776, float %3777, float %3778, float %3640, float %3641, float %3642, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3798 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %3643, float %3644, float %3645, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3799 = call float @dx.op.dot4.f32(i32 56, float %3775, float %3776, float %3777, float %3778, float %3643, float %3644, float %3645, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3800 = fsub fast float %3796, %3772
  %3801 = fsub fast float %3798, %3772
  %3802 = fsub fast float %3797, %3779
  %3803 = fsub fast float %3799, %3779
  %3804 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3715, float %3716, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3806 = extractvalue %dx.types.CBufRet.f32 %3805, 2
  %3807 = fadd fast float %3806, %3804
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3805, 0
  %3810 = fcmp fast ogt float %3808, %3809
  %3811 = and i1 %3795, %3810
  %3812 = and i1 %3766, %3811
  br i1 %3812, label %3833, label %3813

; <label>:3813                                    ; preds = %4096, %3914, %3833, %3687
  %3814 = phi float [ %3689, %3833 ], [ %3917, %3914 ], [ %3917, %4096 ], [ %3689, %3687 ]
  %3815 = phi float [ %3690, %3833 ], [ %3690, %3914 ], [ %4071, %4096 ], [ %3690, %3687 ]
  %3816 = phi float [ %3691, %3833 ], [ %3691, %3914 ], [ %4069, %4096 ], [ %3691, %3687 ]
  %3817 = phi float [ %3692, %3833 ], [ %3692, %3914 ], [ %4041, %4096 ], [ %3692, %3687 ]
  %3818 = phi float [ %3693, %3833 ], [ %3693, %3914 ], [ %4039, %4096 ], [ %3693, %3687 ]
  %3819 = phi float [ %3694, %3833 ], [ %3694, %3914 ], [ %4106, %4096 ], [ %3694, %3687 ]
  %3820 = phi float [ %3695, %3833 ], [ %3695, %3914 ], [ %4107, %4096 ], [ %3695, %3687 ]
  %3821 = phi float [ %3696, %3833 ], [ %3696, %3914 ], [ %4108, %4096 ], [ %3696, %3687 ]
  %3822 = phi float [ %3697, %3833 ], [ %3697, %3914 ], [ %4020, %4096 ], [ %3697, %3687 ]
  %3823 = phi float [ %3698, %3833 ], [ %3698, %3914 ], [ %4021, %4096 ], [ %3698, %3687 ]
  %3824 = phi float [ %3699, %3833 ], [ %3699, %3914 ], [ %4022, %4096 ], [ %3699, %3687 ]
  %3825 = phi float [ %3700, %3833 ], [ %3700, %3914 ], [ %4049, %4096 ], [ %3700, %3687 ]
  %3826 = phi float [ %3701, %3833 ], [ %3701, %3914 ], [ %4046, %4096 ], [ %3701, %3687 ]
  %3827 = phi float [ %3702, %3833 ], [ %3702, %3914 ], [ %4043, %4096 ], [ %3702, %3687 ]
  %3828 = phi float [ %3703, %3833 ], [ %3703, %3914 ], [ %4037, %4096 ], [ %3703, %3687 ]
  %3829 = phi float [ %3704, %3833 ], [ %3704, %3914 ], [ %4032, %4096 ], [ %3704, %3687 ]
  %3830 = phi float [ %3705, %3833 ], [ %3705, %3914 ], [ %4033, %4096 ], [ %3705, %3687 ]
  %3831 = phi float [ %3706, %3833 ], [ %3706, %3914 ], [ %4034, %4096 ], [ %3706, %3687 ]
  %3832 = icmp eq i32 %3763, %3686
  br i1 %3832, label %4109, label %3687

; <label>:3833                                    ; preds = %3687
  %3834 = extractvalue %dx.types.ResRet.f32 %3733, 3
  %3835 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3839 = extractvalue %dx.types.ResRet.i32 %3719, 3
  %3840 = extractvalue %dx.types.ResRet.i32 %3719, 2
  %3841 = add i32 %3839, 0
  %3842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3841, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3844 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3842, %dx.types.Handle %3843, float %3772, float %3779, float undef, float undef, i32 0, i32 0, i32 undef, float %3800, float %3802, float undef, float %3801, float %3803, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = fmul fast float %3845, %3838
  %3847 = fadd fast float %3846, %3837
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = fmul fast float %3772, %3728
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3729, float %3779, float %3849)  ; FMad(a,b,c)
  %3851 = fadd fast float %3850, %3836
  %3852 = fmul fast float %3772, %3730
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3731, float %3779, float %3852)  ; FMad(a,b,c)
  %3854 = fadd fast float %3853, %3835
  %3855 = fmul fast float %3800, %3728
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3729, float %3802, float %3855)  ; FMad(a,b,c)
  %3857 = fmul fast float %3800, %3730
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3731, float %3802, float %3857)  ; FMad(a,b,c)
  %3859 = fmul fast float %3801, %3728
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3729, float %3803, float %3859)  ; FMad(a,b,c)
  %3861 = fmul fast float %3801, %3730
  %3862 = call float @dx.op.tertiary.f32(i32 46, float %3731, float %3803, float %3861)  ; FMad(a,b,c)
  %3863 = add i32 %3840, 0
  %3864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3863, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3864, %dx.types.Handle %3843, float %3851, float %3854, float undef, float undef, i32 0, i32 0, i32 undef, float %3856, float %3858, float undef, float %3860, float %3862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = and i32 %3764, 1024
  %3868 = icmp ne i32 %3867, 0
  %3869 = fcmp fast ogt float %3866, 0x3FE0101020000000
  %3870 = uitofp i1 %3869 to float
  %3871 = select i1 %3868, float %3870, float %3866
  %3872 = and i32 %3764, 8192
  %3873 = icmp ne i32 %3872, 0
  %3874 = select i1 %3873, float %3834, float 1.000000e+00
  %3875 = fmul fast float %3772, 2.000000e+00
  %3876 = fadd fast float %3875, -1.000000e+00
  %3877 = call float @dx.op.unary.f32(i32 6, float %3876)  ; FAbs(value)
  %3878 = fmul fast float %3877, %3761
  %3879 = fsub fast float %3878, %3761
  %3880 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3881 = fmul fast float %3779, 2.000000e+00
  %3882 = fadd fast float %3881, -1.000000e+00
  %3883 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3884 = fmul fast float %3883, %3762
  %3885 = fsub fast float %3884, %3762
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = fmul fast float %3791, %3724
  %3888 = fsub fast float %3887, %3724
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = fmul fast float %3848, %3874
  %3891 = fmul fast float %3890, %3845
  %3892 = fmul fast float %3891, %3880
  %3893 = fmul fast float %3892, %3871
  %3894 = fmul fast float %3893, %3886
  %3895 = fmul fast float %3894, %3889
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3898 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3899 = fsub fast float %3808, %3898
  %3900 = fmul fast float %3899, %3897
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fmul fast float %3895, %3725
  %3903 = fadd fast float %3895, %3725
  %3904 = fmul fast float %3903, %3734
  %3905 = fsub fast float %3904, %3734
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = and i32 %3764, 128
  %3908 = icmp ne i32 %3907, 0
  %3909 = select i1 %3908, float %3906, float %3902
  %3910 = fmul fast float %3909, %3901
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = fcmp fast ugt float %3910, %3912
  br i1 %3913, label %3914, label %3813

; <label>:3914                                    ; preds = %3833
  %3915 = select i1 %3873, float %3910, float 0.000000e+00
  %3916 = fadd fast float %3915, %3689
  %3917 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  br i1 %3873, label %3813, label %3918

; <label>:3918                                    ; preds = %3914
  %3919 = and i32 %3764, 4
  %3920 = and i32 %3764, 8
  %3921 = add i32 %3720, 0
  %3922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3921, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3922, %dx.types.Handle %3923, float %3851, float %3854, float undef, float undef, i32 0, i32 0, i32 undef, float %3856, float %3858, float undef, float %3860, float %3862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3929 = bitcast float %3746 to i32
  %3930 = and i32 %3929, 255
  %3931 = uitofp i32 %3930 to float
  %3932 = lshr i32 %3929, 8
  %3933 = and i32 %3932, 255
  %3934 = uitofp i32 %3933 to float
  %3935 = fmul fast float %3928, %3931
  %3936 = fadd fast float %3935, %3934
  %3937 = fmul fast float %3936, 0x3F70101000000000
  %3938 = add i32 %3721, 0
  %3939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3938, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3940 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3939, %dx.types.Handle %3923, float %3851, float %3854, float undef, float undef, i32 0, i32 0, i32 undef, float %3856, float %3858, float undef, float %3860, float %3862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3945 = bitcast float %3740 to i32
  %3946 = and i32 %3945, 255
  %3947 = uitofp i32 %3946 to float
  %3948 = lshr i32 %3945, 8
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = lshr i32 %3945, 16
  %3952 = and i32 %3951, 255
  %3953 = uitofp i32 %3952 to float
  %3954 = fmul fast float %3953, 0x3F70101000000000
  %3955 = fmul fast float %3941, %3947
  %3956 = fadd fast float %3955, %3950
  %3957 = fmul fast float %3956, 0x3F70101000000000
  %3958 = fadd fast float %3942, -5.000000e-01
  %3959 = fadd fast float %3944, -5.000000e-01
  %3960 = fmul fast float %3958, %3954
  %3961 = fmul fast float %3959, %3954
  %3962 = fadd fast float %3960, 5.000000e-01
  %3963 = fadd fast float %3961, 5.000000e-01
  %3964 = fmul fast float %3925, %3749
  %3965 = fmul fast float %3926, %3750
  %3966 = fmul fast float %3927, %3751
  %3967 = fmul fast float %3962, 2.000000e+00
  %3968 = fadd fast float %3967, -1.000000e+00
  %3969 = fmul fast float %3963, 2.000000e+00
  %3970 = fadd fast float %3969, -1.000000e+00
  %3971 = fadd fast float %3968, %3970
  %3972 = fmul fast float %3971, 5.000000e-01
  %3973 = fsub fast float %3968, %3970
  %3974 = fmul fast float %3973, 5.000000e-01
  %3975 = call float @dx.op.unary.f32(i32 6, float %3972)  ; FAbs(value)
  %3976 = fsub fast float 1.000000e+00, %3975
  %3977 = call float @dx.op.unary.f32(i32 6, float %3974)  ; FAbs(value)
  %3978 = fsub fast float %3976, %3977
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3972, float %3974, float %3978, float %3972, float %3974, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = call float @dx.op.unary.f32(i32 25, float %3979)  ; Rsqrt(value)
  %3981 = fmul fast float %3972, %3980
  %3982 = fmul fast float %3974, %3980
  %3983 = fmul fast float %3980, %3978
  %3984 = fmul fast float %3983, %3714
  %3985 = fmul fast float %3983, %3715
  %3986 = fmul fast float %3983, %3716
  %3987 = fmul fast float %3981, %3737
  %3988 = fmul fast float %3981, %3738
  %3989 = fmul fast float %3981, %3739
  %3990 = fadd fast float %3987, %3984
  %3991 = fadd fast float %3988, %3985
  %3992 = fadd fast float %3989, %3986
  %3993 = fmul fast float %3982, %3743
  %3994 = fmul fast float %3982, %3744
  %3995 = fmul fast float %3982, %3745
  %3996 = fadd fast float %3990, %3993
  %3997 = fadd fast float %3991, %3994
  %3998 = fadd fast float %3992, %3995
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %3996, float %3997, float %3998)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = call float @dx.op.unary.f32(i32 25, float %3999)  ; Rsqrt(value)
  %4001 = fmul fast float %3996, %4000
  %4002 = fmul fast float %3997, %4000
  %4003 = fmul fast float %3998, %4000
  %4004 = icmp ne i32 %3920, 0
  %4005 = select i1 %4004, float 1.000000e+00, float 0.000000e+00
  %4006 = fmul fast float %3910, %4005
  %4007 = and i32 %3764, 1
  %4008 = icmp eq i32 %4007, 0
  br i1 %4008, label %4009, label %4013

; <label>:4009                                    ; preds = %3918
  %4010 = fsub fast float %4001, %3697
  %4011 = fsub fast float %4002, %3698
  %4012 = fsub fast float %4003, %3699
  br label %4013

; <label>:4013                                    ; preds = %4009, %3918
  %4014 = phi float [ %4010, %4009 ], [ %4001, %3918 ]
  %4015 = phi float [ %4011, %4009 ], [ %4002, %3918 ]
  %4016 = phi float [ %4012, %4009 ], [ %4003, %3918 ]
  %4017 = fmul float %4016, %4006
  %4018 = fmul float %4015, %4006
  %4019 = fmul float %4014, %4006
  %4020 = fadd fast float %4019, %3697
  %4021 = fadd fast float %4018, %3698
  %4022 = fadd fast float %4017, %3699
  %4023 = icmp ne i32 %3919, 0
  %4024 = select i1 %4023, float 1.000000e+00, float 0.000000e+00
  %4025 = fmul fast float %3910, %4024
  %4026 = fsub fast float %3964, %3704
  %4027 = fsub fast float %3965, %3705
  %4028 = fsub fast float %3966, %3706
  %4029 = fmul fast float %4026, %4025
  %4030 = fmul fast float %4027, %4025
  %4031 = fmul fast float %4028, %4025
  %4032 = fadd fast float %4029, %3704
  %4033 = fadd fast float %4030, %3705
  %4034 = fadd fast float %4031, %3706
  %4035 = fsub fast float %3937, %3703
  %4036 = fmul fast float %4035, %4025
  %4037 = fadd fast float %4036, %3703
  %4038 = fmul fast float %4025, %3693
  %4039 = fsub fast float %3693, %4038
  %4040 = fmul fast float %4025, %3692
  %4041 = fsub fast float %3692, %4040
  %4042 = fadd fast float %3910, %3702
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fsub fast float %3957, %3701
  %4045 = fmul fast float %4044, %4006
  %4046 = fadd fast float %4045, %3701
  %4047 = fsub fast float %3943, %3700
  %4048 = fmul fast float %4047, %4006
  %4049 = fadd fast float %4048, %3700
  %4050 = call float @dx.op.dot3.f32(i32 55, float %3964, float %3965, float %3966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = fmul fast float %4053, %4050
  %4055 = fadd fast float %4054, %4052
  %4056 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4057 = bitcast float %3752 to i32
  %4058 = and i32 %4057, 65535
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = lshr i32 %4057, 16
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = fcmp fast oge float %4059, 0.000000e+00
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = select i1 %4062, float %4059, float %4064
  %4066 = fadd fast float %4065, %4061
  %4067 = fsub fast float %4056, %3691
  %4068 = fmul fast float %4067, %3910
  %4069 = fadd fast float %4068, %3691
  %4070 = fmul fast float %4066, %3910
  %4071 = call float @dx.op.binary.f32(i32 35, float %3690, float %4070)  ; FMax(a,b)
  %4072 = and i32 %3764, 16
  %4073 = icmp eq i32 %4072, 0
  br i1 %4073, label %4096, label %4074

; <label>:4074                                    ; preds = %4013
  %4075 = bitcast float %3758 to i32
  %4076 = add i32 %3755, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4077, %dx.types.Handle %3923, float %3851, float %3854, float undef, float undef, i32 0, i32 0, i32 undef, float %3856, float %3858, float undef, float %3860, float %3862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4082 = and i32 %4075, 65535
  %4083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4082)  ; LegacyF16ToF32(value)
  %4084 = fmul fast float %4079, %3749
  %4085 = fmul fast float %4080, %3750
  %4086 = fmul fast float %4081, %3751
  %4087 = and i32 %3764, 16384
  %4088 = icmp ne i32 %4087, 0
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = select i1 %4088, float %4090, float 1.000000e+00
  %4092 = fmul fast float %4091, %4083
  %4093 = fmul fast float %4084, %4092
  %4094 = fmul fast float %4085, %4092
  %4095 = fmul fast float %4086, %4092
  br label %4096

; <label>:4096                                    ; preds = %4074, %4013
  %4097 = phi float [ %4093, %4074 ], [ 0.000000e+00, %4013 ]
  %4098 = phi float [ %4094, %4074 ], [ 0.000000e+00, %4013 ]
  %4099 = phi float [ %4095, %4074 ], [ 0.000000e+00, %4013 ]
  %4100 = fsub fast float %4097, %3694
  %4101 = fsub fast float %4098, %3695
  %4102 = fsub fast float %4099, %3696
  %4103 = fmul fast float %4100, %3910
  %4104 = fmul fast float %4101, %3910
  %4105 = fmul fast float %4102, %3910
  %4106 = fadd fast float %4103, %3694
  %4107 = fadd fast float %4104, %3695
  %4108 = fadd fast float %4105, %3696
  br label %3813

; <label>:4109                                    ; preds = %3813
  br label %4110

; <label>:4110                                    ; preds = %4109, %3633
  %4111 = phi float [ 0.000000e+00, %3633 ], [ %3814, %4109 ]
  %4112 = phi float [ %3597, %3633 ], [ %3815, %4109 ]
  %4113 = phi float [ %3595, %3633 ], [ %3816, %4109 ]
  %4114 = phi float [ 0.000000e+00, %3633 ], [ %3817, %4109 ]
  %4115 = phi float [ 0.000000e+00, %3633 ], [ %3818, %4109 ]
  %4116 = phi float [ %3600, %3633 ], [ %3819, %4109 ]
  %4117 = phi float [ %3601, %3633 ], [ %3820, %4109 ]
  %4118 = phi float [ %3602, %3633 ], [ %3821, %4109 ]
  %4119 = phi float [ %3628, %3633 ], [ %3822, %4109 ]
  %4120 = phi float [ %3629, %3633 ], [ %3823, %4109 ]
  %4121 = phi float [ %3630, %3633 ], [ %3824, %4109 ]
  %4122 = phi float [ %3594, %3633 ], [ %3825, %4109 ]
  %4123 = phi float [ %3593, %3633 ], [ %3826, %4109 ]
  %4124 = phi float [ 0.000000e+00, %3633 ], [ %3827, %4109 ]
  %4125 = phi float [ %3592, %3633 ], [ %3828, %4109 ]
  %4126 = phi float [ %3586, %3633 ], [ %3829, %4109 ]
  %4127 = phi float [ %3587, %3633 ], [ %3830, %4109 ]
  %4128 = phi float [ %3588, %3633 ], [ %3831, %4109 ]
  %4129 = call float @dx.op.dot3.f32(i32 55, float %4119, float %4120, float %4121, float %4119, float %4120, float %4121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = call float @dx.op.unary.f32(i32 25, float %4129)  ; Rsqrt(value)
  %4131 = fmul fast float %4130, %4119
  %4132 = fmul fast float %4130, %4120
  %4133 = fmul fast float %4130, %4121
  %4134 = fadd fast float %4124, %916
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4131, float %4132, float %4133, float %4131, float %4132, float %4133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = call float @dx.op.unary.f32(i32 25, float %4136)  ; Rsqrt(value)
  %4138 = fmul fast float %4137, %4131
  %4139 = fmul fast float %4137, %4132
  %4140 = fmul fast float %4137, %4133
  br label %4141

; <label>:4141                                    ; preds = %4110, %3583
  %4142 = phi float [ %4138, %4110 ], [ %3628, %3583 ]
  %4143 = phi float [ %4139, %4110 ], [ %3629, %3583 ]
  %4144 = phi float [ %4140, %4110 ], [ %3630, %3583 ]
  %4145 = phi float [ %4126, %4110 ], [ %3586, %3583 ]
  %4146 = phi float [ %4127, %4110 ], [ %3587, %3583 ]
  %4147 = phi float [ %4128, %4110 ], [ %3588, %3583 ]
  %4148 = phi float [ %4116, %4110 ], [ %3600, %3583 ]
  %4149 = phi float [ %4117, %4110 ], [ %3601, %3583 ]
  %4150 = phi float [ %4118, %4110 ], [ %3602, %3583 ]
  %4151 = phi float [ %4125, %4110 ], [ %3592, %3583 ]
  %4152 = phi float [ %4135, %4110 ], [ %916, %3583 ]
  %4153 = phi float [ %4123, %4110 ], [ %3593, %3583 ]
  %4154 = phi float [ %4122, %4110 ], [ %3594, %3583 ]
  %4155 = phi float [ %4115, %4110 ], [ 0.000000e+00, %3583 ]
  %4156 = phi float [ %4114, %4110 ], [ 0.000000e+00, %3583 ]
  %4157 = phi float [ %4111, %4110 ], [ 0.000000e+00, %3583 ]
  %4158 = phi float [ %4112, %4110 ], [ %3597, %3583 ]
  %4159 = phi float [ %4113, %4110 ], [ %3595, %3583 ]
  %4160 = fadd fast float %4151, 0xBFB99999A0000000
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4161, 0x3FF1C71C80000000
  %4163 = call float @dx.op.binary.f32(i32 36, float %4151, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4164 = fsub fast float 1.000000e+00, %4162
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = fmul fast float %4165, %4145
  %4167 = fmul fast float %4165, %4146
  %4168 = fmul fast float %4165, %4147
  %4169 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4170 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = fmul fast float %4162, %4145
  %4173 = fmul fast float %4162, %4146
  %4174 = fmul fast float %4162, %4147
  %4175 = fadd fast float %4172, %4163
  %4176 = fadd fast float %4173, %4163
  %4177 = fadd fast float %4174, %4163
  %4178 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.i32 %4182, 3
  %4184 = and i32 %4183, 8
  %4185 = icmp ne i32 %4184, 0
  %4186 = call float @dx.op.binary.f32(i32 35, float %4169, float %4145)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4170, float %4145)  ; FMax(a,b)
  %4188 = call float @dx.op.binary.f32(i32 35, float %4171, float %4145)  ; FMax(a,b)
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4169, float %4170, float %4171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = select i1 %173, float %4145, float %4169
  %4191 = select i1 %173, float %4189, float %4170
  %4192 = select i1 %173, float 1.000000e+00, float %4171
  %4193 = select i1 %4185, float %4186, float %4190
  %4194 = select i1 %4185, float %4187, float %4191
  %4195 = select i1 %4185, float %4188, float %4192
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4200 = fadd fast float %4197, %131
  %4201 = fadd fast float %4198, %132
  %4202 = fadd fast float %4199, %133
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.CBufRet.f32 %4203, 1
  %4206 = fsub fast float %4200, %4204
  %4207 = fsub fast float %4201, %4205
  %4208 = fmul fast float %4206, %4206
  %4209 = fmul fast float %4207, %4207
  %4210 = fadd fast float %4208, %4209
  %4211 = call float @dx.op.unary.f32(i32 24, float %4210)  ; Sqrt(value)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4203, 2
  %4213 = fcmp fast olt float %4211, %4212
  br i1 %4213, label %4214, label %4281

; <label>:4214                                    ; preds = %4141
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4225 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4226 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4227 = fadd fast float %4224, %4200
  %4228 = fadd fast float %4225, %4201
  %4229 = fadd fast float %4226, %4202
  %4230 = fmul fast float %4227, %4216
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4218, float %4230)  ; FMad(a,b,c)
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4220, float %4231)  ; FMad(a,b,c)
  %4233 = fmul fast float %4227, %4221
  %4234 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4222, float %4233)  ; FMad(a,b,c)
  %4235 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4223, float %4234)  ; FMad(a,b,c)
  %4236 = fsub fast float %4232, %4224
  %4237 = fsub fast float %4235, %4225
  %4238 = fsub fast float %4236, %4204
  %4239 = fadd fast float %4238, %4212
  %4240 = fsub fast float %4237, %4205
  %4241 = fadd fast float %4240, %4212
  %4242 = extractvalue %dx.types.CBufRet.f32 %4203, 3
  %4243 = fmul fast float %4239, %4242
  %4244 = fmul fast float %4241, %4242
  %4245 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4247 = fsub fast float 1.000000e+00, %4245
  %4248 = fsub fast float 1.000000e+00, %4246
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4247, float %4248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fcmp fast ugt float %4250, 0.000000e+00
  br i1 %4251, label %4252, label %4555

; <label>:4252                                    ; preds = %4214
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 2
  %4255 = fmul fast float %4254, %4250
  %4256 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4257 = fadd fast float %4256, %4255
  %4258 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4259 = fadd fast float %4257, %4226
  %4260 = fmul fast float %4232, %4220
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4235, float %4223, float %4260)  ; FMad(a,b,c)
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4259, float %4258, float %4261)  ; FMad(a,b,c)
  %4263 = fsub fast float %4262, %4226
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = fsub fast float %4263, %4265
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4247, float %4248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4247, float %4248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.ResRet.f32 %4271, 1
  %4274 = extractvalue %dx.types.ResRet.f32 %4271, 2
  %4275 = fadd fast float %4272, %4268
  %4276 = fmul fast float %4275, 0x3F847AE140000000
  %4277 = fadd fast float %4273, %4269
  %4278 = fmul fast float %4277, 0x3F847AE140000000
  %4279 = fadd fast float %4274, %4270
  %4280 = fmul fast float %4279, 0x3F847AE140000000
  br label %4555

; <label>:4281                                    ; preds = %4141
  %4282 = and i32 %149, 1
  %4283 = icmp eq i32 %4282, 0
  br i1 %4283, label %4555, label %4284

; <label>:4284                                    ; preds = %4281
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4293 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4295 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4296 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4297 = fadd fast float %4294, %4200
  %4298 = fadd fast float %4295, %4201
  %4299 = fadd fast float %4296, %4202
  %4300 = fmul fast float %4297, %4286
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4288, float %4300)  ; FMad(a,b,c)
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4290, float %4301)  ; FMad(a,b,c)
  %4303 = fmul fast float %4297, %4291
  %4304 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4292, float %4303)  ; FMad(a,b,c)
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4293, float %4304)  ; FMad(a,b,c)
  %4306 = fsub fast float %4302, %4294
  %4307 = fsub fast float %4305, %4295
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4312 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.i32 %4315, 1
  %4318 = udiv i32 %4317, %4316
  %4319 = fsub fast float %4306, %4309
  %4320 = fsub fast float %4307, %4310
  %4321 = call float @dx.op.binary.f32(i32 35, float %4319, float 0.000000e+00)  ; FMax(a,b)
  %4322 = call float @dx.op.binary.f32(i32 35, float %4320, float 0.000000e+00)  ; FMax(a,b)
  %4323 = call float @dx.op.binary.f32(i32 36, float %4321, float %4311)  ; FMin(a,b)
  %4324 = call float @dx.op.binary.f32(i32 36, float %4322, float %4312)  ; FMin(a,b)
  %4325 = add i32 %4316, -1
  %4326 = add i32 %4318, -1
  %4327 = fmul fast float %4323, %4314
  %4328 = fmul fast float %4324, %4314
  %4329 = fptoui float %4327 to i32
  %4330 = fptoui float %4328 to i32
  %4331 = call i32 @dx.op.binary.i32(i32 40, i32 %4329, i32 %4325)  ; UMin(a,b)
  %4332 = call i32 @dx.op.binary.i32(i32 40, i32 %4330, i32 %4326)  ; UMin(a,b)
  %4333 = mul i32 %4332, %4316
  %4334 = add i32 %4333, %4331
  %4335 = shl i32 %4334, 2
  %4336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.i32 %4336, 0
  %4338 = icmp eq i32 %4337, -1
  br i1 %4338, label %4555, label %4339

; <label>:4339                                    ; preds = %4284
  %4340 = mul i32 %4337, 148
  %4341 = add i32 %4340, 4
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = add i32 %4340, 8
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4340, 36
  %4348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = add i32 %4340, 60
  %4351 = add i32 %4340, 92
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = add i32 %4340, 116
  %4355 = fsub fast float %4306, %4343
  %4356 = fsub fast float %4307, %4346
  %4357 = fmul fast float %4314, %4355
  %4358 = fmul fast float %4314, %4356
  %4359 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4364 = call float @dx.op.unary.f32(i32 83, float %4359)  ; DerivCoarseX(value)
  %4365 = call float @dx.op.unary.f32(i32 83, float %4361)  ; DerivCoarseX(value)
  %4366 = call float @dx.op.unary.f32(i32 84, float %4359)  ; DerivCoarseY(value)
  %4367 = call float @dx.op.unary.f32(i32 84, float %4361)  ; DerivCoarseY(value)
  %4368 = fmul fast float %4364, %4363
  %4369 = fmul fast float %4365, %4363
  %4370 = fmul fast float %4366, %4363
  %4371 = fmul fast float %4367, %4363
  %4372 = call float @dx.op.dot2.f32(i32 54, float %4370, float %4371, float %4370, float %4371)  ; Dot2(ax,ay,bx,by)
  %4373 = call float @dx.op.dot2.f32(i32 54, float %4368, float %4369, float %4368, float %4369)  ; Dot2(ax,ay,bx,by)
  %4374 = call float @dx.op.binary.f32(i32 35, float %4373, float %4372)  ; FMax(a,b)
  %4375 = call float @dx.op.unary.f32(i32 23, float %4374)  ; Log(value)
  %4376 = fmul fast float %4375, 5.000000e-01
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4379 = fadd fast float %4378, %4376
  %4380 = call float @dx.op.binary.f32(i32 35, float %4379, float 0.000000e+00)  ; FMax(a,b)
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = fadd fast float %4382, %4380
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4386 = fadd fast float %4383, %4385
  %4387 = add i32 %4353, 0
  %4388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4387, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4389 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4388, i32 0)  ; GetDimensions(handle,mipLevel)
  %4390 = extractvalue %dx.types.Dimensions %4389, 0
  %4391 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4390)  ; FirstbitLo(value)
  %4392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.i32 %4392, 1
  %4394 = sub nsw i32 %4393, %4391
  %4395 = sitofp i32 %4394 to float
  %4396 = fsub fast float %4386, %4395
  %4397 = call float @dx.op.binary.f32(i32 35, float %4396, float 0.000000e+00)  ; FMax(a,b)
  %4398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4388, %dx.types.Handle %27, float %4359, float %4361, float %4349, float undef, i32 0, i32 0, i32 undef, float %4397)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = fcmp ule float %4399, 0x3FE0101020000000
  %4401 = extractvalue %dx.types.CBufRet.i32 %4392, 0
  %4402 = and i32 %4401, 128
  %4403 = icmp ne i32 %4402, 0
  %4404 = and i1 %4400, %4403
  br i1 %4404, label %4555, label %4405

; <label>:4405                                    ; preds = %4339
  %4406 = add i32 %4340, 20
  %4407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = add i32 %4340, 24
  %4410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = add i32 %4340, 40
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = add i32 %4340, 96
  %4416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.i32 %4416, 0
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 2
  %4420 = fmul fast float %4419, %4359
  %4421 = fmul fast float %4419, %4361
  %4422 = extractvalue %dx.types.CBufRet.f32 %4418, 3
  %4423 = fadd fast float %4420, %4422
  %4424 = fadd fast float %4421, %4422
  %4425 = add i32 %4417, 0
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4425, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4426, i32 0)  ; GetDimensions(handle,mipLevel)
  %4428 = extractvalue %dx.types.Dimensions %4427, 0
  %4429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4428)  ; FirstbitLo(value)
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 1
  %4432 = sub nsw i32 %4431, %4429
  %4433 = sitofp i32 %4432 to float
  %4434 = fsub fast float %4383, %4433
  %4435 = call float @dx.op.binary.f32(i32 35, float %4434, float 0.000000e+00)  ; FMax(a,b)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4426, %dx.types.Handle %27, float %4423, float %4424, float %4414, float undef, i32 0, i32 0, i32 undef, float %4435)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %4408
  %4439 = fadd fast float %4438, %4411
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 3
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 3
  %4448 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4449 = fadd fast float %4445, %4306
  %4450 = fadd fast float %4447, %4307
  %4451 = fadd fast float %4439, %4448
  %4452 = fmul fast float %4449, %4441
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4450, float %4442, float %4452)  ; FMad(a,b,c)
  %4454 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4443, float %4453)  ; FMad(a,b,c)
  %4455 = fsub fast float %4454, %4448
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4458 = fsub fast float %4455, %4457
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 0
  %4461 = call i32 @dx.op.binary.i32(i32 40, i32 %4337, i32 %4460)  ; UMin(a,b)
  %4462 = mul i32 %4461, 36
  %4463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.i32 %4463, 0
  %4465 = add i32 %4462, 4
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = fmul fast float %4467, %4359
  %4469 = fmul fast float %4467, %4361
  %4470 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4471 = fadd fast float %4468, %4470
  %4472 = fadd fast float %4469, %4470
  %4473 = icmp eq i32 %4464, 0
  br i1 %4473, label %4542, label %4474

; <label>:4474                                    ; preds = %4405
  br label %4475

; <label>:4475                                    ; preds = %4532, %4474
  %4476 = phi float [ %4533, %4532 ], [ 0.000000e+00, %4474 ]
  %4477 = phi float [ %4534, %4532 ], [ 0.000000e+00, %4474 ]
  %4478 = phi float [ %4535, %4532 ], [ 0.000000e+00, %4474 ]
  %4479 = phi float [ %4536, %4532 ], [ 0.000000e+00, %4474 ]
  %4480 = phi float [ %4537, %4532 ], [ 0.000000e+00, %4474 ]
  %4481 = phi float [ %4538, %4532 ], [ 0.000000e+00, %4474 ]
  %4482 = phi i32 [ %4539, %4532 ], [ 0, %4474 ]
  %4483 = shl i32 %4482, 2
  %4484 = add i32 %4350, %4483
  %4485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.f32 %4485, 0
  %4487 = add i32 %4354, %4483
  %4488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4487, i32 undef)  ; BufferLoad(srv,index,wot)
  %4489 = extractvalue %dx.types.ResRet.i32 %4488, 0
  %4490 = add i32 %4489, 0
  %4491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4490, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4492 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4491, i32 0)  ; GetDimensions(handle,mipLevel)
  %4493 = extractvalue %dx.types.Dimensions %4492, 0
  %4494 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4493)  ; FirstbitLo(value)
  %4495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.i32 %4495, 1
  %4497 = sub nsw i32 %4496, %4494
  %4498 = sitofp i32 %4497 to float
  %4499 = fsub fast float %4383, %4498
  %4500 = call float @dx.op.binary.f32(i32 35, float %4499, float 0.000000e+00)  ; FMax(a,b)
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4491, %dx.types.Handle %27, float %4471, float %4472, float %4486, float undef, i32 0, i32 0, i32 undef, float %4500)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fcmp fast ogt float %4502, 0.000000e+00
  br i1 %4503, label %4504, label %4532

; <label>:4504                                    ; preds = %4475
  %4505 = add i32 %4465, %4483
  %4506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.i32 %4506, 0
  %4508 = and i32 %4507, 32767
  %4509 = mul nuw nsw i32 %4508, 928
  %4510 = add nuw nsw i32 %4509, 48
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = add nuw nsw i32 %4509, 60
  %4516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.ResRet.f32 %4516, 1
  %4519 = extractvalue %dx.types.ResRet.f32 %4516, 2
  %4520 = fmul fast float %4512, %4502
  %4521 = fmul fast float %4513, %4502
  %4522 = fmul fast float %4514, %4502
  %4523 = fadd fast float %4520, %4476
  %4524 = fadd fast float %4521, %4477
  %4525 = fadd fast float %4522, %4478
  %4526 = fmul fast float %4517, %4502
  %4527 = fmul fast float %4518, %4502
  %4528 = fmul fast float %4519, %4502
  %4529 = fadd fast float %4526, %4479
  %4530 = fadd fast float %4527, %4480
  %4531 = fadd fast float %4528, %4481
  br label %4532

; <label>:4532                                    ; preds = %4504, %4475
  %4533 = phi float [ %4523, %4504 ], [ %4476, %4475 ]
  %4534 = phi float [ %4524, %4504 ], [ %4477, %4475 ]
  %4535 = phi float [ %4525, %4504 ], [ %4478, %4475 ]
  %4536 = phi float [ %4529, %4504 ], [ %4479, %4475 ]
  %4537 = phi float [ %4530, %4504 ], [ %4480, %4475 ]
  %4538 = phi float [ %4531, %4504 ], [ %4481, %4475 ]
  %4539 = add nuw i32 %4482, 1
  %4540 = icmp eq i32 %4539, %4464
  br i1 %4540, label %4541, label %4475

; <label>:4541                                    ; preds = %4532
  br label %4542

; <label>:4542                                    ; preds = %4541, %4405
  %4543 = phi float [ 0.000000e+00, %4405 ], [ %4533, %4541 ]
  %4544 = phi float [ 0.000000e+00, %4405 ], [ %4534, %4541 ]
  %4545 = phi float [ 0.000000e+00, %4405 ], [ %4535, %4541 ]
  %4546 = phi float [ 0.000000e+00, %4405 ], [ %4536, %4541 ]
  %4547 = phi float [ 0.000000e+00, %4405 ], [ %4537, %4541 ]
  %4548 = phi float [ 0.000000e+00, %4405 ], [ %4538, %4541 ]
  %4549 = fadd fast float %4546, %4543
  %4550 = fmul fast float %4549, 0x3F847AE140000000
  %4551 = fadd fast float %4547, %4544
  %4552 = fmul fast float %4551, 0x3F847AE140000000
  %4553 = fadd fast float %4548, %4545
  %4554 = fmul fast float %4553, 0x3F847AE140000000
  br label %4555

; <label>:4555                                    ; preds = %4542, %4339, %4284, %4281, %4252, %4214
  %4556 = phi float [ %4266, %4252 ], [ -1.310720e+05, %4214 ], [ %4458, %4542 ], [ -1.310720e+05, %4284 ], [ -1.310720e+05, %4339 ], [ -1.310720e+05, %4281 ]
  %4557 = phi float [ %4276, %4252 ], [ 0.000000e+00, %4214 ], [ %4550, %4542 ], [ 0.000000e+00, %4284 ], [ 0.000000e+00, %4339 ], [ 0.000000e+00, %4281 ]
  %4558 = phi float [ %4278, %4252 ], [ 0.000000e+00, %4214 ], [ %4552, %4542 ], [ 0.000000e+00, %4284 ], [ 0.000000e+00, %4339 ], [ 0.000000e+00, %4281 ]
  %4559 = phi float [ %4280, %4252 ], [ 0.000000e+00, %4214 ], [ %4554, %4542 ], [ 0.000000e+00, %4284 ], [ 0.000000e+00, %4339 ], [ 0.000000e+00, %4281 ]
  %4560 = phi i1 [ true, %4252 ], [ false, %4214 ], [ true, %4542 ], [ false, %4284 ], [ false, %4339 ], [ false, %4281 ]
  %4561 = and i32 %149, 3
  %4562 = icmp eq i32 %4561, 1
  %4563 = select i1 %4562, float 1.000000e+00, float 0.000000e+00
  %4564 = fsub fast float %4556, %133
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = select i1 %4560, float %4565, float 1.000000e+00
  %4567 = fmul fast float %4566, %4563
  %4568 = icmp eq i32 %4561, 3
  %4569 = select i1 %4568, float 1.000000e+00, float %4567
  %4570 = call float @dx.op.binary.f32(i32 35, float %4157, float %4569)  ; FMax(a,b)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fcmp fast une float %4571, 0.000000e+00
  %4573 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = call float @dx.op.unary.f32(i32 25, float %4573)  ; Rsqrt(value)
  br i1 %4572, label %4582, label %4575

; <label>:4575                                    ; preds = %4555
  %4576 = fmul fast float %4574, %131
  %4577 = fmul fast float %4574, %132
  %4578 = fmul fast float %4574, %133
  %4579 = fsub fast float -0.000000e+00, %4576
  %4580 = fsub fast float -0.000000e+00, %4577
  %4581 = fsub fast float -0.000000e+00, %4578
  br label %4750

; <label>:4582                                    ; preds = %4555
  %4583 = fmul fast float %131, %4574
  %4584 = fsub fast float -0.000000e+00, %4583
  %4585 = fmul fast float %132, %4574
  %4586 = fsub fast float -0.000000e+00, %4585
  %4587 = fmul fast float %133, %4574
  %4588 = fsub fast float -0.000000e+00, %4587
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4586, float %4588, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fmul fast float %4571, 2.500000e+00
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = fmul fast float %4571, 0x4013FFFFE0000000
  %4593 = fadd fast float %4592, 0xBFFFFFFFE0000000
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4571, 0x4004000020000000
  %4596 = fadd fast float %4595, 0xBFF8000040000000
  %4597 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4599 = fmul fast float %4160, 1.000000e+01
  %4600 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4601 = fmul fast float %4600, 2.000000e+00
  %4602 = fsub fast float 3.000000e+00, %4601
  %4603 = fmul fast float %4600, %4600
  %4604 = fmul fast float %4603, %4602
  %4605 = fsub fast float 1.000000e+00, %4604
  %4606 = fsub fast float 0x3FE3333340000000, %4181
  %4607 = fmul fast float %4606, 0x400AAAAAA0000000
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fmul fast float %4605, %4608
  %4610 = fmul fast float %4193, 0x3FEA2B8620000000
  %4611 = fmul fast float %4194, 0x3FEA2B8620000000
  %4612 = fmul fast float %4195, 0x3FEA2B8620000000
  %4613 = fadd fast float %4610, 0x3FC81DFBA0000000
  %4614 = fmul fast float %4613, %4193
  %4615 = fadd fast float %4614, 0x3F910E6020000000
  %4616 = fadd fast float %4611, 0x3FC81DFBA0000000
  %4617 = fmul fast float %4616, %4194
  %4618 = fadd fast float %4617, 0x3F910E6020000000
  %4619 = fadd fast float %4612, 0x3FC81DFBA0000000
  %4620 = fmul fast float %4619, %4195
  %4621 = fadd fast float %4620, 0x3F910E6020000000
  %4622 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4625 = fsub fast float %4622, %4193
  %4626 = fsub fast float %4623, %4194
  %4627 = fsub fast float %4624, %4195
  %4628 = fmul fast float %4625, %4598
  %4629 = fmul fast float %4628, %4609
  %4630 = fmul fast float %4626, %4598
  %4631 = fmul fast float %4630, %4609
  %4632 = fmul fast float %4627, %4598
  %4633 = fmul fast float %4632, %4609
  %4634 = fadd fast float %4629, %4193
  %4635 = fadd fast float %4631, %4194
  %4636 = fadd fast float %4633, %4195
  %4637 = fmul fast float %4154, %4154
  %4638 = fmul fast float %4637, %4637
  %4639 = fadd fast float %4594, 1.000000e+00
  %4640 = fsub fast float %4639, %4609
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fsub fast float 1.000000e+00, %4638
  %4645 = call float @dx.op.binary.f32(i32 36, float %4641, float %4644)  ; FMin(a,b)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4647 = call float @dx.op.binary.f32(i32 35, float %4645, float %4646)  ; FMax(a,b)
  %4648 = fadd fast float %4643, 0xBFE4CCCCC0000000
  %4649 = fmul fast float %4648, 0x4006DB6DA0000000
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = fmul fast float %4650, 2.000000e+00
  %4652 = fsub fast float 3.000000e+00, %4651
  %4653 = bitcast float %4178 to i32
  %4654 = ashr i32 %4653, 1
  %4655 = add nsw i32 %4654, 532487669
  %4656 = bitcast i32 %4655 to float
  %4657 = fsub fast float 1.000000e+00, %4656
  %4658 = bitcast float %4657 to i32
  %4659 = sub nsw i32 2129859010, %4658
  %4660 = bitcast i32 %4659 to float
  %4661 = fmul fast float %4660, 2.000000e+00
  %4662 = bitcast float %4179 to i32
  %4663 = ashr i32 %4662, 1
  %4664 = add nsw i32 %4663, 532487669
  %4665 = bitcast i32 %4664 to float
  %4666 = fsub fast float 1.000000e+00, %4665
  %4667 = bitcast float %4666 to i32
  %4668 = sub nsw i32 2129859010, %4667
  %4669 = bitcast i32 %4668 to float
  %4670 = fmul fast float %4669, 2.000000e+00
  %4671 = bitcast float %4180 to i32
  %4672 = ashr i32 %4671, 1
  %4673 = add nsw i32 %4672, 532487669
  %4674 = bitcast i32 %4673 to float
  %4675 = fsub fast float 1.000000e+00, %4674
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, 2.000000e+00
  %4680 = fsub fast float 0x4002A9FBE0000000, %4661
  %4681 = fadd fast float %4661, 0x3FD54FDF00000000
  %4682 = bitcast float %4681 to i32
  %4683 = sub nsw i32 2129859010, %4682
  %4684 = bitcast i32 %4683 to float
  %4685 = fmul fast float %4684, %4680
  %4686 = fmul fast float %4685, %4685
  %4687 = fsub fast float 0x4002A9FBE0000000, %4670
  %4688 = fadd fast float %4670, 0x3FD54FDF00000000
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4691, %4687
  %4693 = fmul fast float %4692, %4692
  %4694 = fsub fast float 0x4002A9FBE0000000, %4679
  %4695 = fadd fast float %4679, 0x3FD54FDF00000000
  %4696 = bitcast float %4695 to i32
  %4697 = sub nsw i32 2129859010, %4696
  %4698 = bitcast i32 %4697 to float
  %4699 = fmul fast float %4698, %4694
  %4700 = fmul fast float %4699, %4699
  %4701 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4686)  ; FMax(a,b)
  %4702 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4693)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4700)  ; FMax(a,b)
  %4704 = fsub fast float 1.000000e+00, %4589
  %4705 = fadd fast float %4704, %4605
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fsub fast float 1.000000e+00, %4569
  %4708 = fmul fast float %4647, %4707
  %4709 = fmul fast float %4650, %4650
  %4710 = fmul fast float %4709, %4708
  %4711 = fmul fast float %4710, %4652
  %4712 = fmul fast float %4707, 0xBFE99999A0000000
  %4713 = fmul fast float %4712, %4598
  %4714 = fmul fast float %4713, %4609
  %4715 = fadd fast float %4714, 1.000000e+00
  %4716 = fadd fast float %4181, -1.000000e+00
  %4717 = fmul fast float %4715, %4716
  %4718 = fadd fast float %4717, 1.000000e+00
  %4719 = fsub fast float %4701, %4178
  %4720 = fsub fast float %4702, %4179
  %4721 = fsub fast float %4703, %4180
  %4722 = fmul fast float %4711, %4719
  %4723 = fmul fast float %4711, %4720
  %4724 = fmul fast float %4711, %4721
  %4725 = fadd fast float %4722, %4178
  %4726 = fadd fast float %4723, %4179
  %4727 = fadd fast float %4724, %4180
  %4728 = fsub fast float %75, %4142
  %4729 = fsub fast float %76, %4143
  %4730 = fsub fast float %77, %4144
  %4731 = fmul fast float %4711, %4728
  %4732 = fmul fast float %4711, %4729
  %4733 = fmul fast float %4711, %4730
  %4734 = fadd fast float %4731, %4142
  %4735 = fadd fast float %4732, %4143
  %4736 = fadd fast float %4733, %4144
  %4737 = fmul fast float %4711, %4706
  %4738 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = fmul fast float %4737, %4739
  %4741 = fadd fast float %4740, %4738
  %4742 = fsub fast float 1.000000e+00, %4154
  %4743 = fmul fast float %4711, %4742
  %4744 = fadd fast float %4743, %4154
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %4734, float %4735, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = call float @dx.op.unary.f32(i32 25, float %4745)  ; Rsqrt(value)
  %4747 = fmul fast float %4734, %4746
  %4748 = fmul fast float %4735, %4746
  %4749 = fmul fast float %4736, %4746
  br label %4750

; <label>:4750                                    ; preds = %4582, %4575
  %4751 = phi float [ %4581, %4575 ], [ %4588, %4582 ]
  %4752 = phi float [ %4580, %4575 ], [ %4586, %4582 ]
  %4753 = phi float [ %4579, %4575 ], [ %4584, %4582 ]
  %4754 = phi float [ %4578, %4575 ], [ %4587, %4582 ]
  %4755 = phi float [ %4577, %4575 ], [ %4585, %4582 ]
  %4756 = phi float [ %4576, %4575 ], [ %4583, %4582 ]
  %4757 = phi float [ %4193, %4575 ], [ %4634, %4582 ]
  %4758 = phi float [ %4194, %4575 ], [ %4635, %4582 ]
  %4759 = phi float [ %4195, %4575 ], [ %4636, %4582 ]
  %4760 = phi float [ %4178, %4575 ], [ %4725, %4582 ]
  %4761 = phi float [ %4179, %4575 ], [ %4726, %4582 ]
  %4762 = phi float [ %4180, %4575 ], [ %4727, %4582 ]
  %4763 = phi float [ %4142, %4575 ], [ %4747, %4582 ]
  %4764 = phi float [ %4143, %4575 ], [ %4748, %4582 ]
  %4765 = phi float [ %4144, %4575 ], [ %4749, %4582 ]
  %4766 = phi float [ %4181, %4575 ], [ %4741, %4582 ]
  %4767 = phi float [ %4154, %4575 ], [ %4744, %4582 ]
  %4768 = select i1 %173, float 0.000000e+00, float %4762
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %4753, float %4752, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4755, float %4754, float %4763, float %4764, float %4765)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = fmul fast float %4771, 2.000000e+00
  %4773 = fmul fast float %4772, %4763
  %4774 = fmul fast float %4772, %4764
  %4775 = fmul fast float %4772, %4765
  %4776 = fsub fast float %4756, %4773
  %4777 = fsub fast float %4755, %4774
  %4778 = fsub fast float %4754, %4775
  %4779 = call float @dx.op.binary.f32(i32 36, float %4767, float 1.000000e+00)  ; FMin(a,b)
  %4780 = fsub fast float 1.000000e+00, %4767
  %4781 = bitcast float %4780 to i32
  %4782 = sub nsw i32 2129859010, %4781
  %4783 = bitcast i32 %4782 to float
  %4784 = fsub fast float 1.000000e+00, %45
  %4785 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4785, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4787 = fdiv fast float %4784, %4786
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fmul fast float %4789, 5.000000e-01
  %4791 = fadd fast float %4790, 5.000000e-01
  %4792 = fmul fast float %4791, %45
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4794, %4787
  %4796 = fadd fast float %4792, %4795
  %4797 = fsub fast float 5.000000e-01, %4790
  %4798 = fmul fast float %4797, %4757
  %4799 = fmul fast float %4797, %4758
  %4800 = fmul fast float %4797, %4759
  %4801 = fadd fast float %4796, %4798
  %4802 = fadd fast float %4796, %4799
  %4803 = fadd fast float %4796, %4800
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4806 = fmul fast float %4805, 5.000000e-01
  %4807 = fadd fast float %4806, 5.000000e-01
  %4808 = fmul fast float %4807, %45
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4810, %4787
  %4812 = fadd fast float %4808, %4811
  %4813 = fsub fast float 5.000000e-01, %4806
  %4814 = fmul fast float %4813, %4757
  %4815 = fmul fast float %4813, %4758
  %4816 = fmul fast float %4813, %4759
  %4817 = fadd fast float %4812, %4814
  %4818 = fadd fast float %4812, %4815
  %4819 = fadd fast float %4812, %4816
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = call float @dx.op.binary.f32(i32 36, float %4757, float %4821)  ; FMin(a,b)
  %4823 = fsub fast float 1.000000e+00, %4779
  %4824 = fmul fast float %4822, %4823
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = call float @dx.op.binary.f32(i32 36, float %4758, float %4821)  ; FMin(a,b)
  %4830 = fmul fast float %4829, %4823
  %4831 = fsub fast float 1.000000e+00, %4830
  %4832 = bitcast float %4831 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = call float @dx.op.binary.f32(i32 36, float %4759, float %4821)  ; FMin(a,b)
  %4836 = fmul fast float %4835, %4823
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4779, %46
  %4842 = fmul fast float %4841, %4801
  %4843 = fmul fast float %4842, %4828
  %4844 = fmul fast float %4779, %47
  %4845 = fmul fast float %4844, %4802
  %4846 = fmul fast float %4845, %4834
  %4847 = fmul fast float %4779, %48
  %4848 = fmul fast float %4847, %4803
  %4849 = fmul fast float %4848, %4840
  %4850 = call float @dx.op.binary.f32(i32 36, float %4760, float %4821)  ; FMin(a,b)
  %4851 = fmul fast float %4850, %4823
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = call float @dx.op.binary.f32(i32 36, float %4761, float %4821)  ; FMin(a,b)
  %4857 = fmul fast float %4856, %4823
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = bitcast float %4858 to i32
  %4860 = sub nsw i32 2129859010, %4859
  %4861 = bitcast i32 %4860 to float
  %4862 = call float @dx.op.binary.f32(i32 36, float %4768, float %4821)  ; FMin(a,b)
  %4863 = fmul fast float %4862, %4823
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = bitcast float %4864 to i32
  %4866 = sub nsw i32 2129859010, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = fmul fast float %4841, %4817
  %4869 = fmul fast float %4868, %4855
  %4870 = fmul fast float %4844, %4818
  %4871 = fmul fast float %4870, %4861
  %4872 = fmul fast float %4847, %4819
  %4873 = fmul fast float %4872, %4867
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4846, float %4849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = select i1 %173, float 0.000000e+00, float %4843
  %4876 = select i1 %173, float %4874, float %4846
  %4877 = select i1 %173, float 0.000000e+00, float %4849
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4871, float %4873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = select i1 %173, float 0.000000e+00, float %4869
  %4880 = select i1 %173, float %4878, float %4871
  %4881 = select i1 %173, float 0.000000e+00, float %4873
  %4882 = fmul fast float %4770, 9.843750e-01
  %4883 = fmul fast float %4766, 9.843750e-01
  %4884 = fadd fast float %4882, 7.812500e-03
  %4885 = fadd fast float %4883, 7.812500e-03
  %4886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4884, float %4885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 2
  %4888 = extractvalue %dx.types.ResRet.f32 %4886, 3
  %4889 = fmul fast float %4887, %4760
  %4890 = fmul fast float %4887, %4761
  %4891 = fmul fast float %4887, %4768
  %4892 = fadd fast float %4889, %4888
  %4893 = fadd fast float %4890, %4888
  %4894 = fadd fast float %4891, %4888
  %4895 = fcmp fast ogt float %4155, 0.000000e+00
  br i1 %4895, label %4896, label %4922

; <label>:4896                                    ; preds = %4750
  %4897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4155, float %4770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = fadd fast float %4898, -5.000000e-01
  %4902 = fadd fast float %4899, -5.000000e-01
  %4903 = fadd fast float %4900, -5.000000e-01
  %4904 = fsub fast float 1.000000e+00, %4760
  %4905 = fsub fast float 1.000000e+00, %4761
  %4906 = fsub fast float 1.000000e+00, %4768
  %4907 = fmul fast float %4760, 4.000000e+00
  %4908 = fmul fast float %4907, %4904
  %4909 = fmul fast float %4908, %4901
  %4910 = fmul fast float %4761, 4.000000e+00
  %4911 = fmul fast float %4910, %4905
  %4912 = fmul fast float %4911, %4902
  %4913 = fmul fast float %4768, 4.000000e+00
  %4914 = fmul fast float %4913, %4906
  %4915 = fmul fast float %4914, %4903
  %4916 = fadd fast float %4909, %4892
  %4917 = fadd fast float %4912, %4893
  %4918 = fadd fast float %4915, %4894
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  br label %4922

; <label>:4922                                    ; preds = %4896, %4750
  %4923 = phi float [ %4919, %4896 ], [ %4892, %4750 ]
  %4924 = phi float [ %4920, %4896 ], [ %4893, %4750 ]
  %4925 = phi float [ %4921, %4896 ], [ %4894, %4750 ]
  %4926 = call float @dx.op.binary.f32(i32 35, float %4924, float %4925)  ; FMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4923, float %4926)  ; FMax(a,b)
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = fmul fast float %4928, %4875
  %4930 = fmul fast float %4928, %4876
  %4931 = fmul fast float %4928, %4877
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4758, float %4759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = fcmp fast ogt float %4932, 0x3E7FF19E20000000
  %4934 = fdiv fast float 1.000000e+00, %4932
  %4935 = select i1 %4933, float %4934, float 0.000000e+00
  %4936 = fmul fast float %4935, %4757
  %4937 = fmul fast float %4935, %4758
  %4938 = fmul fast float %4935, %4759
  %4939 = fadd fast float %4936, -1.000000e+00
  %4940 = fadd fast float %4937, -1.000000e+00
  %4941 = fadd fast float %4938, -1.000000e+00
  %4942 = fmul fast float %4939, 5.000000e-01
  %4943 = fmul fast float %4940, 5.000000e-01
  %4944 = fmul fast float %4941, 5.000000e-01
  %4945 = fadd fast float %4942, 1.000000e+00
  %4946 = fadd fast float %4943, 1.000000e+00
  %4947 = fadd fast float %4944, 1.000000e+00
  %4948 = fmul fast float %4923, %4879
  %4949 = fmul fast float %4924, %4880
  %4950 = fmul fast float %4925, %4881
  %4951 = fsub fast float 1.000000e+00, %4770
  %4952 = bitcast float %4951 to i32
  %4953 = sitofp i32 %4952 to float
  %4954 = fmul fast float %4953, 5.000000e+00
  %4955 = fadd fast float %4954, 0xC1EFBF8940000000
  %4956 = fptosi float %4955 to i32
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4957, %4156
  %4959 = fmul fast float %4875, %4958
  %4960 = fmul fast float %4959, %4928
  %4961 = fmul fast float %4960, %4945
  %4962 = fmul fast float %4876, %4958
  %4963 = fmul fast float %4962, %4928
  %4964 = fmul fast float %4963, %4946
  %4965 = fmul fast float %4877, %4958
  %4966 = fmul fast float %4965, %4928
  %4967 = fmul fast float %4966, %4947
  %4968 = fmul fast float %4929, %4152
  %4969 = fmul fast float %4930, %4152
  %4970 = fmul fast float %4931, %4152
  %4971 = fadd fast float %4948, %4148
  %4972 = fadd fast float %4971, %4961
  %4973 = fmul fast float %4972, %4152
  %4974 = fadd fast float %4949, %4149
  %4975 = fadd fast float %4974, %4964
  %4976 = fmul fast float %4975, %4152
  %4977 = fadd fast float %4950, %4150
  %4978 = fadd fast float %4977, %4967
  %4979 = fmul fast float %4978, %4152
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 3
  %4982 = fcmp fast oeq float %4981, 0.000000e+00
  br i1 %4982, label %5210, label %4983

; <label>:4983                                    ; preds = %4922
  %4984 = extractvalue %dx.types.CBufRet.f32 %4980, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4980, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4980, 2
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4990 = extractvalue %dx.types.CBufRet.f32 %4987, 2
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4988, float %4989, float %4990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = select i1 %173, float %4992, float %4988
  %4996 = select i1 %173, float %4994, float %4989
  %4997 = select i1 %173, float %4993, float %4990
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5000 = fcmp fast une float %4999, 0.000000e+00
  br i1 %5000, label %5001, label %5018

; <label>:5001                                    ; preds = %4983
  %5002 = fptoui float %68 to i32
  %5003 = fptoui float %69 to i32
  %5004 = lshr i32 %5002, 4
  %5005 = lshr i32 %5003, 4
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = fptoui float %5007 to i32
  %5009 = add i32 %5008, 15
  %5010 = lshr i32 %5009, 4
  %5011 = mul i32 %5010, %5005
  %5012 = add i32 %5011, %5004
  %5013 = shl i32 %5012, 3
  %5014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.i32 %5014, 0
  %5016 = and i32 %5015, -268435456
  %5017 = icmp eq i32 %5016, -1342177280
  br i1 %5017, label %5028, label %5018

; <label>:5018                                    ; preds = %5001, %4983
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5022 = fmul fast float %5020, %68
  %5023 = fmul fast float %5021, %69
  %5024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5022, float %5023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5025 = extractvalue %dx.types.ResRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.ResRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.ResRet.f32 %5024, 2
  br label %5028

; <label>:5028                                    ; preds = %5018, %5001
  %5029 = phi float [ %5025, %5018 ], [ 0.000000e+00, %5001 ]
  %5030 = phi float [ %5026, %5018 ], [ 0.000000e+00, %5001 ]
  %5031 = phi float [ %5027, %5018 ], [ 0.000000e+00, %5001 ]
  %5032 = call float @dx.op.binary.f32(i32 36, float %5030, float %5031)  ; FMin(a,b)
  %5033 = call float @dx.op.binary.f32(i32 36, float %5029, float %5032)  ; FMin(a,b)
  %5034 = fcmp fast ogt float %5033, 0.000000e+00
  br i1 %5034, label %5035, label %5210, !dx.controlflow.hints !72

; <label>:5035                                    ; preds = %5028
  %5036 = fmul fast float %5029, %4995
  %5037 = fmul fast float %5030, %4996
  %5038 = fmul fast float %5031, %4997
  %5039 = fsub fast float %4984, %4756
  %5040 = fsub fast float %4985, %4755
  %5041 = fsub fast float %4986, %4754
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.unary.f32(i32 25, float %5042)  ; Rsqrt(value)
  %5044 = fmul fast float %5043, %5039
  %5045 = fmul fast float %5043, %5040
  %5046 = fmul fast float %5043, %5041
  %5047 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %4986, float %4763, float %4764, float %4765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4752, float %4751, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5050 = fmul fast float %5049, %5049
  %5051 = fmul fast float %5050, %4783
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = fmul fast float %5052, %5049
  %5054 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = fmul fast float %5054, %5054
  %5056 = call float @dx.op.unary.f32(i32 6, float %5047)  ; FAbs(value)
  %5057 = fsub fast float 1.000000e+00, %4766
  %5058 = call float @dx.op.binary.f32(i32 35, float %5057, float 0x3F847AE140000000)  ; FMax(a,b)
  %5059 = fmul fast float %5058, %5058
  %5060 = fmul fast float %5059, %5059
  %5061 = fsub fast float 1.000000e+00, %5060
  %5062 = fmul fast float %4770, %4770
  %5063 = fmul fast float %5062, %5061
  %5064 = fadd fast float %5063, %5060
  %5065 = bitcast float %5064 to i32
  %5066 = ashr i32 %5065, 1
  %5067 = add nsw i32 %5066, 532487669
  %5068 = bitcast i32 %5067 to float
  %5069 = fadd fast float %5068, %4770
  %5070 = fmul fast float %5060, %5055
  %5071 = fsub fast float 1.000000e+00, %5055
  %5072 = fadd fast float %5071, %5070
  %5073 = fmul fast float %5056, %5056
  %5074 = fmul fast float %5073, %5061
  %5075 = fadd fast float %5074, %5060
  %5076 = bitcast float %5075 to i32
  %5077 = ashr i32 %5076, 1
  %5078 = add nsw i32 %5077, 532487669
  %5079 = bitcast i32 %5078 to float
  %5080 = fadd fast float %5079, %5056
  %5081 = fmul fast float %5072, %5072
  %5082 = fmul fast float %5081, %5069
  %5083 = fmul fast float %5082, %5080
  %5084 = fdiv fast float 0x3FF0A00000000000, %5083
  %5085 = fmul fast float %5084, %5060
  %5086 = call float @dx.op.unary.f32(i32 6, float %5048)  ; FAbs(value)
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = bitcast float %5087 to i32
  %5089 = sitofp i32 %5088 to float
  %5090 = fmul fast float %5089, 5.000000e+00
  %5091 = fadd fast float %5090, 0xC1EFBF8940000000
  %5092 = fptosi float %5091 to i32
  %5093 = bitcast i32 %5092 to float
  %5094 = fsub fast float 1.000000e+00, %4760
  %5095 = fsub fast float 1.000000e+00, %4761
  %5096 = fsub fast float 1.000000e+00, %4768
  %5097 = fmul fast float %5093, %5094
  %5098 = fmul fast float %5093, %5095
  %5099 = fmul fast float %5093, %5096
  %5100 = fadd fast float %5097, %4760
  %5101 = fadd fast float %5098, %4761
  %5102 = fadd fast float %5099, %4768
  br i1 %4895, label %5103, label %5126

; <label>:5103                                    ; preds = %5035
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4155, float %5086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.ResRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.ResRet.f32 %5104, 2
  %5108 = fadd fast float %5105, -5.000000e-01
  %5109 = fadd fast float %5106, -5.000000e-01
  %5110 = fadd fast float %5107, -5.000000e-01
  %5111 = fmul fast float %4760, 4.000000e+00
  %5112 = fmul fast float %5111, %5094
  %5113 = fmul fast float %5112, %5108
  %5114 = fmul fast float %4761, 4.000000e+00
  %5115 = fmul fast float %5114, %5095
  %5116 = fmul fast float %5115, %5109
  %5117 = fmul fast float %4768, 4.000000e+00
  %5118 = fmul fast float %5117, %5096
  %5119 = fmul fast float %5118, %5110
  %5120 = fadd fast float %5113, %5100
  %5121 = fadd fast float %5116, %5101
  %5122 = fadd fast float %5119, %5102
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  br label %5126

; <label>:5126                                    ; preds = %5103, %5035
  %5127 = phi float [ %5123, %5103 ], [ %5100, %5035 ]
  %5128 = phi float [ %5124, %5103 ], [ %5101, %5035 ]
  %5129 = phi float [ %5125, %5103 ], [ %5102, %5035 ]
  %5130 = fmul fast float %5047, 9.843750e-01
  %5131 = fadd fast float %5130, 7.812500e-03
  %5132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5131, float %4885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 2
  %5134 = extractvalue %dx.types.ResRet.f32 %5132, 3
  %5135 = fmul fast float %5133, %4760
  %5136 = fmul fast float %5133, %4761
  %5137 = fmul fast float %5133, %4768
  %5138 = fadd fast float %5135, %5134
  %5139 = fadd fast float %5136, %5134
  %5140 = fadd fast float %5137, %5134
  br i1 %4895, label %5141, label %5164

; <label>:5141                                    ; preds = %5126
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4155, float %5047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5146 = fadd fast float %5143, -5.000000e-01
  %5147 = fadd fast float %5144, -5.000000e-01
  %5148 = fadd fast float %5145, -5.000000e-01
  %5149 = fmul fast float %4760, 4.000000e+00
  %5150 = fmul fast float %5149, %5094
  %5151 = fmul fast float %5150, %5146
  %5152 = fmul fast float %4761, 4.000000e+00
  %5153 = fmul fast float %5152, %5095
  %5154 = fmul fast float %5153, %5147
  %5155 = fmul fast float %4768, 4.000000e+00
  %5156 = fmul fast float %5155, %5096
  %5157 = fmul fast float %5156, %5148
  %5158 = fadd fast float %5151, %5138
  %5159 = fadd fast float %5154, %5139
  %5160 = fadd fast float %5157, %5140
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  br label %5164

; <label>:5164                                    ; preds = %5141, %5126
  %5165 = phi float [ %5161, %5141 ], [ %5138, %5126 ]
  %5166 = phi float [ %5162, %5141 ], [ %5139, %5126 ]
  %5167 = phi float [ %5163, %5141 ], [ %5140, %5126 ]
  %5168 = call float @dx.op.binary.f32(i32 35, float %5166, float %5167)  ; FMax(a,b)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5165, float %5168)  ; FMax(a,b)
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = fmul fast float %5127, %5085
  %5172 = fmul fast float %5128, %5085
  %5173 = fmul fast float %5129, %5085
  %5174 = fsub fast float 1.000000e+00, %5048
  %5175 = bitcast float %5174 to i32
  %5176 = sitofp i32 %5175 to float
  %5177 = fmul fast float %5176, 5.000000e+00
  %5178 = fadd fast float %5177, 0xC1EFBF8940000000
  %5179 = fptosi float %5178 to i32
  %5180 = bitcast i32 %5179 to float
  %5181 = fmul fast float %5180, %4156
  %5182 = fmul fast float %5170, %5181
  %5183 = fmul fast float %5182, %4945
  %5184 = fmul fast float %5182, %4946
  %5185 = fmul fast float %5182, %4947
  %5186 = fadd fast float %5183, %5171
  %5187 = fadd fast float %5184, %5172
  %5188 = fadd fast float %5185, %5173
  %5189 = fmul fast float %5053, %5036
  %5190 = fmul fast float %5189, %5170
  %5191 = fmul fast float %5053, %5037
  %5192 = fmul fast float %5191, %5170
  %5193 = fmul fast float %5053, %5038
  %5194 = fmul fast float %5193, %5170
  %5195 = fmul fast float %5189, %5186
  %5196 = fmul fast float %5191, %5187
  %5197 = fmul fast float %5193, %5188
  %5198 = fadd fast float %5190, %4929
  %5199 = fmul fast float %5198, %4152
  %5200 = fadd fast float %5192, %4930
  %5201 = fmul fast float %5200, %4152
  %5202 = fadd fast float %5194, %4931
  %5203 = fmul fast float %5202, %4152
  %5204 = fadd fast float %5195, %4972
  %5205 = fmul fast float %5204, %4152
  %5206 = fadd fast float %5196, %4975
  %5207 = fmul fast float %5206, %4152
  %5208 = fadd fast float %5197, %4978
  %5209 = fmul fast float %5208, %4152
  br label %5210

; <label>:5210                                    ; preds = %5164, %5028, %4922
  %5211 = phi float [ %4973, %4922 ], [ %4973, %5028 ], [ %5205, %5164 ]
  %5212 = phi float [ %4976, %4922 ], [ %4976, %5028 ], [ %5207, %5164 ]
  %5213 = phi float [ %4979, %4922 ], [ %4979, %5028 ], [ %5209, %5164 ]
  %5214 = phi float [ %4968, %4922 ], [ %4968, %5028 ], [ %5199, %5164 ]
  %5215 = phi float [ %4969, %4922 ], [ %4969, %5028 ], [ %5201, %5164 ]
  %5216 = phi float [ %4970, %4922 ], [ %4970, %5028 ], [ %5203, %5164 ]
  %5217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.i32 %5217, 0
  %5219 = icmp eq i32 %5218, 0
  br i1 %5219, label %5654, label %5220

; <label>:5220                                    ; preds = %5210
  %5221 = fptoui float %68 to i32
  %5222 = fptoui float %69 to i32
  %5223 = lshr i32 %5221, 4
  %5224 = lshr i32 %5222, 4
  %5225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.i32 %5225, 0
  %5227 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5224, i32 %5226, i32 %5223)  ; UMad(a,b,c)
  %5228 = add nsw i32 %5218, -1
  %5229 = call i32 @dx.op.binary.i32(i32 37, i32 %5228, i32 0)  ; IMax(a,b)
  %5230 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5231 = fptoui float %5230 to i32
  %5232 = lshr i32 %5231, 5
  %5233 = call i32 @dx.op.binary.i32(i32 40, i32 %5232, i32 8191)  ; UMin(a,b)
  %5234 = shl i32 %5233, 2
  %5235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.i32 %5235, 0
  %5237 = lshr i32 %5236, 16
  %5238 = and i32 %5236, 65535
  %5239 = lshr i32 %5236, 21
  %5240 = lshr i32 %5238, 5
  %5241 = call i32 @dx.op.binary.i32(i32 40, i32 %5240, i32 %5229)  ; UMin(a,b)
  %5242 = icmp ugt i32 %5239, %5241
  br i1 %5242, label %5654, label %5243

; <label>:5243                                    ; preds = %5220
  br label %5244

; <label>:5244                                    ; preds = %5644, %5243
  %5245 = phi i32 [ %5651, %5644 ], [ %5239, %5243 ]
  %5246 = phi float [ %5645, %5644 ], [ %5211, %5243 ]
  %5247 = phi float [ %5646, %5644 ], [ %5212, %5243 ]
  %5248 = phi float [ %5647, %5644 ], [ %5213, %5243 ]
  %5249 = phi float [ %5648, %5644 ], [ %5214, %5243 ]
  %5250 = phi float [ %5649, %5644 ], [ %5215, %5243 ]
  %5251 = phi float [ %5650, %5644 ], [ %5216, %5243 ]
  %5252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.i32 %5252, 0
  %5254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5227, i32 %5253, i32 %5245)  ; UMad(a,b,c)
  %5255 = shl i32 %5254, 2
  %5256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5255, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.i32 %5256, 0
  %5258 = shl i32 %5245, 5
  %5259 = sub nsw i32 %5237, %5258
  %5260 = call i32 @dx.op.binary.i32(i32 37, i32 %5259, i32 0)  ; IMax(a,b)
  %5261 = call i32 @dx.op.binary.i32(i32 38, i32 %5260, i32 31)  ; IMin(a,b)
  %5262 = sub nsw i32 1, %5237
  %5263 = add nsw i32 %5262, %5238
  %5264 = call i32 @dx.op.binary.i32(i32 37, i32 %5263, i32 0)  ; IMax(a,b)
  %5265 = call i32 @dx.op.binary.i32(i32 38, i32 %5264, i32 32)  ; IMin(a,b)
  %5266 = and i32 %5265, 31
  %5267 = shl i32 -1, %5266
  %5268 = xor i32 %5267, -1
  %5269 = and i32 %5261, 31
  %5270 = shl i32 %5268, %5269
  %5271 = icmp eq i32 %5265, 32
  %5272 = select i1 %5271, i32 -1, i32 %5270
  %5273 = and i32 %5272, %5257
  %5274 = icmp eq i32 %5273, 0
  br i1 %5274, label %5644, label %5275

; <label>:5275                                    ; preds = %5244
  br label %5276

; <label>:5276                                    ; preds = %5356, %5275
  %5277 = phi i32 [ %5288, %5356 ], [ %5273, %5275 ]
  %5278 = phi float [ %5357, %5356 ], [ %5246, %5275 ]
  %5279 = phi float [ %5358, %5356 ], [ %5247, %5275 ]
  %5280 = phi float [ %5359, %5356 ], [ %5248, %5275 ]
  %5281 = phi float [ %5360, %5356 ], [ %5249, %5275 ]
  %5282 = phi float [ %5361, %5356 ], [ %5250, %5275 ]
  %5283 = phi float [ %5362, %5356 ], [ %5251, %5275 ]
  %5284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5277)  ; FirstbitLo(value)
  %5285 = add i32 %5284, %5258
  %5286 = and i32 %5284, 31
  %5287 = shl i32 1, %5286
  %5288 = xor i32 %5287, %5277
  %5289 = mul i32 %5285, 112
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = or i32 %5289, 12
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = add i32 %5289, 44
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = add i32 %5289, 48
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = add i32 %5289, 80
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = select i1 %173, float %5307, float %5291
  %5311 = select i1 %173, float %5309, float %5292
  %5312 = select i1 %173, float %5308, float %5293
  %5313 = fsub fast float %5302, %131
  %5314 = fsub fast float %5303, %132
  %5315 = fsub fast float %5304, %133
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5315, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 24, float %5316)  ; Sqrt(value)
  %5318 = fdiv fast float 1.000000e+00, %5317
  %5319 = fmul fast float %5318, %5313
  %5320 = fmul fast float %5318, %5314
  %5321 = fmul fast float %5318, %5315
  %5322 = fadd fast float %5317, %5296
  %5323 = fdiv fast float 1.000000e+00, %5322
  %5324 = fmul float %5299, %5323
  %5325 = fmul float %5324, %5324
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = and i32 %5287, %5273
  %5328 = icmp eq i32 %5327, 0
  br i1 %5328, label %5351, label %5329, !dx.controlflow.hints !73

; <label>:5329                                    ; preds = %5276
  %5330 = lshr i32 %5221, 5
  %5331 = lshr i32 %5222, 5
  %5332 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5330, i32 %5331, i32 %5285, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = and i32 %5333, 3
  %5335 = icmp eq i32 %5334, 0
  %5336 = select i1 %5335, float 1.000000e+00, float 0.000000e+00
  %5337 = icmp eq i32 %5334, 3
  br i1 %5337, label %5338, label %5351

; <label>:5338                                    ; preds = %5329
  %5339 = lshr i32 %5333, 10
  %5340 = and i32 %5339, 8160
  %5341 = and i32 %5222, 31
  %5342 = or i32 %5340, %5341
  %5343 = lshr i32 %5333, 1
  %5344 = and i32 %5343, 16352
  %5345 = and i32 %5221, 31
  %5346 = or i32 %5344, %5345
  %5347 = lshr i32 %5333, 23
  %5348 = and i32 %5347, 255
  %5349 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5346, i32 %5342, i32 %5348, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  br label %5351

; <label>:5351                                    ; preds = %5338, %5329, %5276
  %5352 = phi float [ %5350, %5338 ], [ %5336, %5329 ], [ 0.000000e+00, %5276 ]
  %5353 = call float @dx.op.binary.f32(i32 36, float %5352, float %5352)  ; FMin(a,b)
  %5354 = call float @dx.op.binary.f32(i32 36, float %5352, float %5353)  ; FMin(a,b)
  %5355 = fcmp fast ogt float %5354, 0.000000e+00
  br i1 %5355, label %5364, label %5356, !dx.controlflow.hints !74

; <label>:5356                                    ; preds = %5600, %5351
  %5357 = phi float [ %5278, %5351 ], [ %5640, %5600 ]
  %5358 = phi float [ %5279, %5351 ], [ %5641, %5600 ]
  %5359 = phi float [ %5280, %5351 ], [ %5642, %5600 ]
  %5360 = phi float [ %5281, %5351 ], [ %5634, %5600 ]
  %5361 = phi float [ %5282, %5351 ], [ %5635, %5600 ]
  %5362 = phi float [ %5283, %5351 ], [ %5636, %5600 ]
  %5363 = icmp eq i32 %5277, %5287
  br i1 %5363, label %5643, label %5276

; <label>:5364                                    ; preds = %5351
  %5365 = fmul fast float %5352, %5310
  %5366 = fmul fast float %5352, %5311
  %5367 = fmul fast float %5352, %5312
  %5368 = fsub fast float %5304, %4556
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  %5370 = fsub fast float %133, %4556
  %5371 = fcmp fast ogt float %5370, 0.000000e+00
  %5372 = xor i1 %5371, %5369
  %5373 = fsub fast float %4556, %5304
  %5374 = fmul fast float %5373, 2.000000e+00
  %5375 = fadd fast float %5374, %5304
  %5376 = select i1 %5372, float %5304, float %5375
  %5377 = fsub fast float %5376, %133
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5377, float %5313, float %5314, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = call float @dx.op.unary.f32(i32 25, float %5378)  ; Rsqrt(value)
  %5380 = fmul fast float %5379, %5313
  %5381 = fmul fast float %5379, %5314
  %5382 = fmul fast float %5379, %5377
  %5383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fdiv fast float 1.000000e+00, %5384
  %5386 = fmul fast float %5385, %5383
  %5387 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5370, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fcmp fast ogt float %5387, 0.000000e+00
  %5389 = fcmp fast olt float %5387, 0.000000e+00
  %5390 = zext i1 %5388 to i32
  %5391 = zext i1 %5389 to i32
  %5392 = sub nsw i32 %5390, %5391
  %5393 = sitofp i32 %5392 to float
  %5394 = fsub fast float %5376, %4556
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5314, float %5394, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fcmp fast ogt float %5395, 0.000000e+00
  %5397 = fcmp fast olt float %5395, 0.000000e+00
  %5398 = zext i1 %5396 to i32
  %5399 = zext i1 %5397 to i32
  %5400 = sub nsw i32 %5398, %5399
  %5401 = sitofp i32 %5400 to float
  %5402 = fcmp fast une float %5393, %5401
  br i1 %5402, label %5403, label %5413

; <label>:5403                                    ; preds = %5364
  %5404 = fmul fast float %5386, %5382
  %5405 = fmul fast float %5386, %5381
  %5406 = fmul fast float %5386, %5380
  %5407 = fmul fast float %5406, %5406
  %5408 = fmul fast float %5405, %5405
  %5409 = fadd fast float %5407, %5408
  %5410 = fmul fast float %5404, %5404
  %5411 = fadd fast float %5409, %5410
  %5412 = call float @dx.op.unary.f32(i32 24, float %5411)  ; Sqrt(value)
  br label %5425

; <label>:5413                                    ; preds = %5364
  %5414 = icmp slt i32 %5392, 0
  br i1 %5414, label %5415, label %5425

; <label>:5415                                    ; preds = %5413
  %5416 = fsub fast float %131, %5302
  %5417 = fsub fast float %132, %5303
  %5418 = fsub fast float %133, %5376
  %5419 = fmul fast float %5416, %5416
  %5420 = fmul fast float %5417, %5417
  %5421 = fadd fast float %5419, %5420
  %5422 = fmul fast float %5418, %5418
  %5423 = fadd fast float %5421, %5422
  %5424 = call float @dx.op.unary.f32(i32 24, float %5423)  ; Sqrt(value)
  br label %5425

; <label>:5425                                    ; preds = %5415, %5413, %5403
  %5426 = phi float [ %5412, %5403 ], [ %5424, %5415 ], [ 0.000000e+00, %5413 ]
  %5427 = and i1 %5371, %5369
  %5428 = fsub fast float -0.000000e+00, %5426
  %5429 = select i1 %5427, float -0.000000e+00, float %5428
  %5430 = fmul fast float %4557, 0x3FF7154760000000
  %5431 = fmul fast float %5430, %5429
  %5432 = fmul fast float %4558, 0x3FF7154760000000
  %5433 = fmul fast float %5432, %5429
  %5434 = fmul fast float %4559, 0x3FF7154760000000
  %5435 = fmul fast float %5434, %5429
  %5436 = call float @dx.op.unary.f32(i32 21, float %5431)  ; Exp(value)
  %5437 = call float @dx.op.unary.f32(i32 21, float %5433)  ; Exp(value)
  %5438 = call float @dx.op.unary.f32(i32 21, float %5435)  ; Exp(value)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5440 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5441 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5442 = fmul fast float %5365, %5439
  %5443 = fmul fast float %5366, %5440
  %5444 = fmul fast float %5367, %5441
  %5445 = fsub fast float %5319, %4756
  %5446 = fsub fast float %5320, %4755
  %5447 = fsub fast float %5321, %4754
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %5445, float %5446, float %5447)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = call float @dx.op.unary.f32(i32 25, float %5448)  ; Rsqrt(value)
  %5450 = fmul fast float %5449, %5445
  %5451 = fmul fast float %5449, %5446
  %5452 = fmul fast float %5449, %5447
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float %4763, float %4764, float %4765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4752, float %4751, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5456 = fmul fast float %5455, %5326
  %5457 = fmul fast float %5455, %5455
  %5458 = fmul fast float %5457, %4783
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = fmul fast float %5456, %5459
  %5461 = bitcast float %5316 to i32
  %5462 = ashr i32 %5461, 1
  %5463 = sub nsw i32 1597463007, %5462
  %5464 = bitcast i32 %5463 to float
  %5465 = fmul fast float %5464, %5313
  %5466 = fmul fast float %5464, %5314
  %5467 = fmul fast float %5464, %5315
  %5468 = fsub fast float %5465, %4756
  %5469 = fsub fast float %5466, %4755
  %5470 = fsub fast float %5467, %4754
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 25, float %5471)  ; Rsqrt(value)
  %5473 = fmul fast float %5468, %5472
  %5474 = fmul fast float %5469, %5472
  %5475 = fmul fast float %5470, %5472
  %5476 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = fmul fast float %5476, %5476
  %5478 = call float @dx.op.unary.f32(i32 6, float %5453)  ; FAbs(value)
  %5479 = fsub fast float 1.000000e+00, %4766
  %5480 = call float @dx.op.binary.f32(i32 35, float %5479, float 0x3F847AE140000000)  ; FMax(a,b)
  %5481 = fmul fast float %5480, %5480
  %5482 = fmul fast float %5481, %5481
  %5483 = fsub fast float 1.000000e+00, %5482
  %5484 = fmul fast float %4770, %4770
  %5485 = fmul fast float %5484, %5483
  %5486 = fadd fast float %5485, %5482
  %5487 = bitcast float %5486 to i32
  %5488 = ashr i32 %5487, 1
  %5489 = add nsw i32 %5488, 532487669
  %5490 = bitcast i32 %5489 to float
  %5491 = fadd fast float %5490, %4770
  %5492 = fmul fast float %5482, %5477
  %5493 = fsub fast float 1.000000e+00, %5477
  %5494 = fadd fast float %5493, %5492
  %5495 = fmul fast float %5478, %5478
  %5496 = fmul fast float %5495, %5483
  %5497 = fadd fast float %5496, %5482
  %5498 = bitcast float %5497 to i32
  %5499 = ashr i32 %5498, 1
  %5500 = add nsw i32 %5499, 532487669
  %5501 = bitcast i32 %5500 to float
  %5502 = fadd fast float %5501, %5478
  %5503 = fmul fast float %5494, %5494
  %5504 = fmul fast float %5503, %5491
  %5505 = fmul fast float %5504, %5502
  %5506 = fdiv fast float 1.000000e+00, %5505
  %5507 = bitcast float %5482 to i32
  %5508 = sitofp i32 %5507 to float
  %5509 = fmul fast float %5508, 0x3FE7F73180000000
  %5510 = fadd fast float %5509, 0x41AFE27C40000000
  %5511 = fptosi float %5510 to i32
  %5512 = bitcast i32 %5511 to float
  %5513 = fmul fast float %5299, 0x3FD80E9D60000000
  %5514 = fmul fast float %5513, %5464
  %5515 = fadd fast float %5512, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5482, %5506
  %5520 = fmul fast float %5519, %5512
  %5521 = fmul fast float %5520, %5518
  %5522 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5523 = fsub fast float 1.000000e+00, %5522
  %5524 = bitcast float %5523 to i32
  %5525 = sitofp i32 %5524 to float
  %5526 = fmul fast float %5525, 5.000000e+00
  %5527 = fadd fast float %5526, 0xC1EFBF8940000000
  %5528 = fptosi float %5527 to i32
  %5529 = bitcast i32 %5528 to float
  %5530 = fsub fast float 1.000000e+00, %4760
  %5531 = fsub fast float 1.000000e+00, %4761
  %5532 = fsub fast float 1.000000e+00, %4768
  %5533 = fmul fast float %5529, %5530
  %5534 = fmul fast float %5529, %5531
  %5535 = fmul fast float %5529, %5532
  %5536 = fadd fast float %5533, %4760
  %5537 = fadd fast float %5534, %4761
  %5538 = fadd fast float %5535, %4768
  br i1 %4895, label %5539, label %5562

; <label>:5539                                    ; preds = %5425
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4155, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.ResRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.ResRet.f32 %5540, 2
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fadd fast float %5542, -5.000000e-01
  %5546 = fadd fast float %5543, -5.000000e-01
  %5547 = fmul fast float %4760, 4.000000e+00
  %5548 = fmul fast float %5547, %5530
  %5549 = fmul fast float %5548, %5544
  %5550 = fmul fast float %4761, 4.000000e+00
  %5551 = fmul fast float %5550, %5531
  %5552 = fmul fast float %5551, %5545
  %5553 = fmul fast float %4768, 4.000000e+00
  %5554 = fmul fast float %5553, %5532
  %5555 = fmul fast float %5554, %5546
  %5556 = fadd fast float %5549, %5536
  %5557 = fadd fast float %5552, %5537
  %5558 = fadd fast float %5555, %5538
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  br label %5562

; <label>:5562                                    ; preds = %5539, %5425
  %5563 = phi float [ %5559, %5539 ], [ %5536, %5425 ]
  %5564 = phi float [ %5560, %5539 ], [ %5537, %5425 ]
  %5565 = phi float [ %5561, %5539 ], [ %5538, %5425 ]
  %5566 = fmul fast float %5453, 9.843750e-01
  %5567 = fadd fast float %5566, 7.812500e-03
  %5568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5567, float %4885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5569 = extractvalue %dx.types.ResRet.f32 %5568, 2
  %5570 = extractvalue %dx.types.ResRet.f32 %5568, 3
  %5571 = fmul fast float %5569, %4760
  %5572 = fmul fast float %5569, %4761
  %5573 = fmul fast float %5569, %4768
  %5574 = fadd fast float %5571, %5570
  %5575 = fadd fast float %5572, %5570
  %5576 = fadd fast float %5573, %5570
  br i1 %4895, label %5577, label %5600

; <label>:5577                                    ; preds = %5562
  %5578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4155, float %5453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fadd fast float %5580, -5.000000e-01
  %5584 = fadd fast float %5581, -5.000000e-01
  %5585 = fmul fast float %4760, 4.000000e+00
  %5586 = fmul fast float %5585, %5530
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %4761, 4.000000e+00
  %5589 = fmul fast float %5588, %5531
  %5590 = fmul fast float %5589, %5583
  %5591 = fmul fast float %4768, 4.000000e+00
  %5592 = fmul fast float %5591, %5532
  %5593 = fmul fast float %5592, %5584
  %5594 = fadd fast float %5587, %5574
  %5595 = fadd fast float %5590, %5575
  %5596 = fadd fast float %5593, %5576
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  br label %5600

; <label>:5600                                    ; preds = %5577, %5562
  %5601 = phi float [ %5597, %5577 ], [ %5574, %5562 ]
  %5602 = phi float [ %5598, %5577 ], [ %5575, %5562 ]
  %5603 = phi float [ %5599, %5577 ], [ %5576, %5562 ]
  %5604 = call float @dx.op.binary.f32(i32 35, float %5602, float %5603)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5601, float %5604)  ; FMax(a,b)
  %5606 = fsub fast float 1.000000e+00, %5605
  %5607 = fmul fast float %5563, %5521
  %5608 = fmul fast float %5564, %5521
  %5609 = fmul fast float %5565, %5521
  %5610 = fsub fast float 1.000000e+00, %5454
  %5611 = bitcast float %5610 to i32
  %5612 = sitofp i32 %5611 to float
  %5613 = fmul fast float %5612, 5.000000e+00
  %5614 = fadd fast float %5613, 0xC1EFBF8940000000
  %5615 = fptosi float %5614 to i32
  %5616 = bitcast i32 %5615 to float
  %5617 = fmul fast float %5616, %4156
  %5618 = fmul fast float %5606, %5617
  %5619 = fmul fast float %5618, %4945
  %5620 = fmul fast float %5618, %4946
  %5621 = fmul fast float %5618, %4947
  %5622 = fadd fast float %5619, %5607
  %5623 = fadd fast float %5620, %5608
  %5624 = fadd fast float %5621, %5609
  %5625 = fmul fast float %5442, %4152
  %5626 = fmul fast float %5625, %5460
  %5627 = fmul fast float %5626, %5606
  %5628 = fmul fast float %5443, %4152
  %5629 = fmul fast float %5628, %5460
  %5630 = fmul fast float %5629, %5606
  %5631 = fmul fast float %5444, %4152
  %5632 = fmul fast float %5631, %5460
  %5633 = fmul fast float %5632, %5606
  %5634 = fadd fast float %5627, %5281
  %5635 = fadd fast float %5630, %5282
  %5636 = fadd fast float %5633, %5283
  %5637 = fmul fast float %5626, %5622
  %5638 = fmul fast float %5629, %5623
  %5639 = fmul fast float %5632, %5624
  %5640 = fadd fast float %5637, %5278
  %5641 = fadd fast float %5638, %5279
  %5642 = fadd fast float %5639, %5280
  br label %5356

; <label>:5643                                    ; preds = %5356
  br label %5644

; <label>:5644                                    ; preds = %5643, %5244
  %5645 = phi float [ %5246, %5244 ], [ %5357, %5643 ]
  %5646 = phi float [ %5247, %5244 ], [ %5358, %5643 ]
  %5647 = phi float [ %5248, %5244 ], [ %5359, %5643 ]
  %5648 = phi float [ %5249, %5244 ], [ %5360, %5643 ]
  %5649 = phi float [ %5250, %5244 ], [ %5361, %5643 ]
  %5650 = phi float [ %5251, %5244 ], [ %5362, %5643 ]
  %5651 = add i32 %5245, 1
  %5652 = icmp ugt i32 %5651, %5241
  br i1 %5652, label %5653, label %5244

; <label>:5653                                    ; preds = %5644
  br label %5654

; <label>:5654                                    ; preds = %5653, %5220, %5210
  %5655 = phi float [ %5211, %5210 ], [ %5211, %5220 ], [ %5645, %5653 ]
  %5656 = phi float [ %5212, %5210 ], [ %5212, %5220 ], [ %5646, %5653 ]
  %5657 = phi float [ %5213, %5210 ], [ %5213, %5220 ], [ %5647, %5653 ]
  %5658 = phi float [ %5214, %5210 ], [ %5214, %5220 ], [ %5648, %5653 ]
  %5659 = phi float [ %5215, %5210 ], [ %5215, %5220 ], [ %5649, %5653 ]
  %5660 = phi float [ %5216, %5210 ], [ %5216, %5220 ], [ %5650, %5653 ]
  %5661 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %5662 = call float @dx.op.unary.f32(i32 24, float %4758)  ; Sqrt(value)
  %5663 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %5664 = fmul fast float %5661, %5658
  %5665 = fmul fast float %5662, %5659
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 0
  br i1 %173, label %5668, label %5688

; <label>:5668                                    ; preds = %5654
  %5669 = fadd fast float %5660, %4158
  %5670 = fmul fast float %5669, %4159
  %5671 = fsub fast float 1.000000e+00, %4159
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5675 = fmul fast float %5674, %5672
  %5676 = fadd fast float %5675, %5670
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = fmul fast float %5678, %4951
  %5680 = fsub fast float %5676, %5679
  %5681 = fadd fast float %5665, %5664
  %5682 = fmul fast float %5667, %5681
  %5683 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5684 = fsub fast float %5680, %5683
  %5685 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5686 = fmul fast float %5684, %5685
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  br label %5704

; <label>:5688                                    ; preds = %5654
  %5689 = fmul fast float %5663, %5660
  %5690 = fmul fast float %5667, %5664
  %5691 = fmul fast float %5667, %5665
  %5692 = fmul fast float %5689, %5667
  %5693 = add i32 %33, 372
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5693, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = and i32 %5695, 32
  %5697 = icmp eq i32 %5696, 0
  br i1 %5697, label %5704, label %5698

; <label>:5698                                    ; preds = %5688
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5701 = fmul fast float %5700, 0x3FE99999A0000000
  %5702 = fadd fast float %5700, %5690
  %5703 = fadd fast float %5701, %5692
  br label %5704

; <label>:5704                                    ; preds = %5698, %5688, %5668
  %5705 = phi float [ %5682, %5668 ], [ %5702, %5698 ], [ %5690, %5688 ]
  %5706 = phi float [ %5687, %5668 ], [ %5691, %5698 ], [ %5691, %5688 ]
  %5707 = phi float [ 1.000000e+00, %5668 ], [ %5703, %5698 ], [ %5692, %5688 ]
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = fmul fast float %5709, %5656
  %5711 = fmul fast float %5709, %5657
  %5712 = fadd fast float %5656, %5655
  %5713 = select i1 %173, float %5712, float %5655
  %5714 = fmul float %5713, %5709
  %5715 = select i1 %173, float 0.000000e+00, float %5710
  %5716 = select i1 %173, float 0.000000e+00, float %5711
  %5717 = fmul fast float %5705, %5661
  %5718 = fmul fast float %5706, %5662
  %5719 = fmul fast float %5707, %5663
  %5720 = fadd fast float %5714, %5717
  %5721 = fadd fast float %5715, %5718
  %5722 = fadd fast float %5716, %5719
  %5723 = select i1 %173, float %5706, float %5721
  %5724 = select i1 %173, float %5707, float %5722
  %5725 = call float @dx.op.binary.f32(i32 36, float %5720, float 3.225500e+04)  ; FMin(a,b)
  %5726 = call float @dx.op.binary.f32(i32 36, float %5723, float 3.225500e+04)  ; FMin(a,b)
  %5727 = call float @dx.op.binary.f32(i32 36, float %5724, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

