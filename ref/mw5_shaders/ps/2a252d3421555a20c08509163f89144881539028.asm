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
; shader hash: 46594cacc7cc88073ab0c5c6a267cf4c
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
  %356 = add i32 %33, 504
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
  br i1 %409, label %936, label %410

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
  %514 = add i32 %33, 392
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
  %537 = add i32 %33, 472
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
  br i1 %730, label %871, label %731

; <label>:731                                     ; preds = %709
  %732 = add i32 %33, 92
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %33, 408
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = add i32 %33, 360
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = extractvalue %dx.types.ResRet.i32 %741, 1
  %744 = extractvalue %dx.types.ResRet.i32 %741, 2
  %745 = extractvalue %dx.types.ResRet.i32 %741, 3
  %746 = bitcast i32 %743 to float
  %747 = bitcast i32 %744 to float
  %748 = bitcast i32 %745 to float
  %749 = add i32 %33, 376
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = extractvalue %dx.types.ResRet.i32 %750, 1
  %753 = extractvalue %dx.types.ResRet.i32 %750, 2
  %754 = extractvalue %dx.types.ResRet.i32 %750, 3
  %755 = bitcast i32 %752 to float
  %756 = bitcast i32 %753 to float
  %757 = bitcast i32 %754 to float
  %758 = fmul fast float %746, %509
  %759 = fmul fast float %746, %510
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 3
  %762 = fmul fast float %761, %747
  %763 = fmul fast float %761, %748
  %764 = fadd fast float %762, %758
  %765 = fadd fast float %763, %759
  %766 = fmul fast float %755, %509
  %767 = fmul fast float %755, %510
  %768 = fmul fast float %761, %756
  %769 = fmul fast float %761, %757
  %770 = fadd fast float %768, %766
  %771 = fadd fast float %769, %767
  %772 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %739, i32 0)  ; GetDimensions(handle,mipLevel)
  %773 = extractvalue %dx.types.Dimensions %772, 3
  %774 = sitofp i32 %773 to float
  %775 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %739, %dx.types.Handle %64, float %764, float %765, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %776 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %739, %dx.types.Handle %64, float %770, float %771, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %64, float %764, float %765, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = and i32 %734, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %734, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = lshr i32 %734, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101000000000
  %791 = fmul fast float %778, %783
  %792 = fadd fast float %791, %786
  %793 = fadd fast float %779, -5.000000e-01
  %794 = fadd fast float %781, -5.000000e-01
  %795 = fmul fast float %793, %790
  %796 = fmul fast float %794, %790
  %797 = fadd fast float %795, 5.000000e-01
  %798 = fadd fast float %796, 5.000000e-01
  %799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %64, float %770, float %771, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = extractvalue %dx.types.ResRet.f32 %799, 3
  %804 = fmul fast float %800, %783
  %805 = fadd fast float %804, %786
  %806 = fadd fast float %801, -5.000000e-01
  %807 = fadd fast float %803, -5.000000e-01
  %808 = fmul fast float %806, %790
  %809 = fmul fast float %807, %790
  %810 = fadd fast float %808, 5.000000e-01
  %811 = fadd fast float %809, 5.000000e-01
  %812 = fmul fast float %797, 2.000000e+00
  %813 = fadd fast float %812, -1.000000e+00
  %814 = fmul fast float %798, 2.000000e+00
  %815 = fadd fast float %814, -1.000000e+00
  %816 = fadd fast float %813, %815
  %817 = fmul fast float %816, 5.000000e-01
  %818 = fsub fast float %813, %815
  %819 = fmul fast float %818, 5.000000e-01
  %820 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %821 = fsub fast float 1.000000e+00, %820
  %822 = call float @dx.op.unary.f32(i32 6, float %819)  ; FAbs(value)
  %823 = fsub fast float %821, %822
  %824 = call float @dx.op.dot3.f32(i32 55, float %817, float %819, float %823, float %817, float %819, float %823)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = call float @dx.op.unary.f32(i32 25, float %824)  ; Rsqrt(value)
  %826 = fmul fast float %810, 2.000000e+00
  %827 = fadd fast float %826, -1.000000e+00
  %828 = fmul fast float %811, 2.000000e+00
  %829 = fadd fast float %828, -1.000000e+00
  %830 = fadd fast float %827, %829
  %831 = fmul fast float %830, 5.000000e-01
  %832 = fsub fast float %827, %829
  %833 = fmul fast float %832, 5.000000e-01
  %834 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %835 = fsub fast float 1.000000e+00, %834
  %836 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %837 = fsub fast float %835, %836
  %838 = call float @dx.op.dot3.f32(i32 55, float %831, float %833, float %837, float %831, float %833, float %837)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = call float @dx.op.unary.f32(i32 25, float %838)  ; Rsqrt(value)
  %840 = fadd fast float %774, -1.000000e+00
  %841 = fsub fast float %840, %775
  %842 = fmul fast float %841, 5.000000e-01
  %843 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %844 = fsub fast float %840, %776
  %845 = fmul fast float %844, 5.000000e-01
  %846 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %847 = bitcast i32 %742 to float
  %848 = bitcast i32 %751 to float
  %849 = fmul fast float %817, %847
  %850 = fmul fast float %849, %825
  %851 = fmul fast float %850, %843
  %852 = fmul fast float %819, %847
  %853 = fmul fast float %852, %825
  %854 = fmul fast float %853, %843
  %855 = fmul fast float %839, %848
  %856 = fmul fast float %855, %831
  %857 = fmul fast float %856, %846
  %858 = fmul fast float %855, %833
  %859 = fmul fast float %858, %846
  %860 = fadd fast float %857, %851
  %861 = fadd fast float %859, %854
  %862 = fmul fast float %780, %847
  %863 = fmul fast float %802, %848
  %864 = fadd fast float %863, %862
  %865 = fmul fast float %792, %847
  %866 = fmul fast float %805, %848
  %867 = fadd fast float %866, %865
  %868 = fmul fast float %867, 0x3F70101000000000
  %869 = call float @dx.op.dot2.f32(i32 54, float %860, float %861, float %413, float %414)  ; Dot2(ax,ay,bx,by)
  %870 = call float @dx.op.dot2.f32(i32 54, float %860, float %861, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  br label %871

; <label>:871                                     ; preds = %731, %709
  %872 = phi float [ %868, %731 ], [ 0x3FD6666660000000, %709 ]
  %873 = phi float [ %869, %731 ], [ 0.000000e+00, %709 ]
  %874 = phi float [ %870, %731 ], [ 0.000000e+00, %709 ]
  %875 = phi float [ %864, %731 ], [ 1.000000e+00, %709 ]
  %876 = add i32 %33, 160
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 22
  %880 = shl nuw nsw i32 %879, 5
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 64
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %919, label %886

; <label>:886                                     ; preds = %871
  %887 = add i32 %33, 424
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %889, 0
  %891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 131072
  %895 = icmp eq i32 %894, 0
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %891, %dx.types.Handle %64, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = fmul fast float %897, %179
  %901 = fmul fast float %898, %182
  %902 = fmul fast float %899, %185
  br i1 %895, label %909, label %903

; <label>:903                                     ; preds = %886
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = fmul fast float %905, %900
  %907 = fmul fast float %905, %901
  %908 = fmul fast float %905, %902
  br label %909

; <label>:909                                     ; preds = %903, %886
  %910 = phi float [ %906, %903 ], [ %900, %886 ]
  %911 = phi float [ %907, %903 ], [ %901, %886 ]
  %912 = phi float [ %908, %903 ], [ %902, %886 ]
  %913 = fmul fast float %910, %881
  %914 = select i1 %173, float %913, float %910
  %915 = call float @dx.op.dot3.f32(i32 55, float %914, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = select i1 %173, float 0.000000e+00, float %910
  %917 = select i1 %173, float %915, float %911
  %918 = select i1 %173, float 0.000000e+00, float %912
  br label %919

; <label>:919                                     ; preds = %909, %871
  %920 = phi float [ %916, %909 ], [ 0.000000e+00, %871 ]
  %921 = phi float [ %917, %909 ], [ 0.000000e+00, %871 ]
  %922 = phi float [ %918, %909 ], [ 0.000000e+00, %871 ]
  %923 = add i32 %33, 96
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 255
  %927 = uitofp i32 %926 to float
  %928 = lshr i32 %925, 8
  %929 = and i32 %928, 255
  %930 = uitofp i32 %929 to float
  %931 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = fmul fast float %930, %931
  %933 = fadd fast float %932, %927
  %934 = fmul fast float %933, 0x3F70101020000000
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  br label %936

; <label>:936                                     ; preds = %919, %395
  %937 = phi float [ 0.000000e+00, %395 ], [ %873, %919 ]
  %938 = phi float [ 0.000000e+00, %395 ], [ %874, %919 ]
  %939 = phi float [ 0.000000e+00, %395 ], [ %724, %919 ]
  %940 = phi float [ 0.000000e+00, %395 ], [ %725, %919 ]
  %941 = phi float [ 0.000000e+00, %395 ], [ %726, %919 ]
  %942 = phi float [ 0.000000e+00, %395 ], [ %920, %919 ]
  %943 = phi float [ 0.000000e+00, %395 ], [ %921, %919 ]
  %944 = phi float [ 0.000000e+00, %395 ], [ %922, %919 ]
  %945 = phi float [ 0.000000e+00, %395 ], [ %710, %919 ]
  %946 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %919 ]
  %947 = phi float [ 0.000000e+00, %395 ], [ %872, %919 ]
  %948 = phi float [ 0.000000e+00, %395 ], [ %875, %919 ]
  %949 = phi float [ 0.000000e+00, %395 ], [ %935, %919 ]
  br i1 %346, label %1791, label %950

; <label>:950                                     ; preds = %936
  %951 = icmp ult i32 %401, 2
  %952 = add i32 %33, 40
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = add i32 %33, 44
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = or i32 %957, %954
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %1791, label %960

; <label>:960                                     ; preds = %950
  %961 = and i32 %954, 262144
  %962 = icmp ne i32 %961, 0
  %963 = select i1 %962, float %36, float 1.000000e+00
  %964 = select i1 %962, float %37, float 0.000000e+00
  %965 = select i1 %962, float %38, float 0.000000e+00
  %966 = select i1 %962, float %39, float 1.000000e+00
  %967 = select i1 %962, float %40, float %56
  %968 = select i1 %962, float %41, float %57
  %969 = add i32 %33, 300
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = fmul fast float %973, 0x3F50624DE0000000
  %975 = add i32 %33, 104
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = and i32 %978, 255
  %980 = lshr i32 %977, 24
  %981 = add i32 %33, 308
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 65535
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = lshr i32 %983, 16
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = add i32 %33, 48
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 22
  %992 = shl nuw nsw i32 %991, 5
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = shl i32 %990, 4
  %995 = and i32 %994, 32752
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = lshr i32 %990, 7
  %998 = and i32 %997, 32752
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1002 = fmul fast float %1001, 1.000000e+03
  %1003 = fmul fast float %256, %1002
  %1004 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1005 = fadd fast float %1004, %246
  %1006 = fmul fast float %257, %1002
  %1007 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1008 = fadd fast float %1007, %248
  %1009 = fmul fast float %974, %1002
  %1010 = call float @dx.op.unary.f32(i32 22, float %1009)  ; Frc(value)
  %1011 = fmul fast float %1010, 0x401921FB60000000
  %1012 = fadd fast float %1011, %993
  %1013 = call float @dx.op.unary.f32(i32 13, float %1012)  ; Sin(value)
  %1014 = call float @dx.op.unary.f32(i32 12, float %1012)  ; Cos(value)
  %1015 = fsub fast float -0.000000e+00, %1013
  %1016 = fadd fast float %967, -5.000000e-01
  %1017 = fadd fast float %968, -5.000000e-01
  %1018 = fmul fast float %985, %1016
  %1019 = fmul fast float %987, %1017
  %1020 = fadd fast float %1018, 5.000000e-01
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fmul fast float %996, %1020
  %1023 = fmul fast float %999, %1021
  %1024 = fmul fast float %1014, %1022
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %1015, float %1023, float %1024)  ; FMad(a,b,c)
  %1026 = fmul fast float %1013, %1022
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %1014, float %1023, float %1026)  ; FMad(a,b,c)
  %1028 = fadd fast float %1005, %1025
  %1029 = fadd fast float %1008, %1027
  %1030 = icmp ugt i32 %979, 1
  %1031 = icmp ugt i32 %977, 33554431
  %1032 = or i1 %1031, %1030
  br i1 %1032, label %1033, label %1058

; <label>:1033                                    ; preds = %960
  %1034 = add i32 %33, 244
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = lshr i32 %1036, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = fmul fast float %1001, %1038
  %1040 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1041 = mul nuw nsw i32 %979, %980
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1040, %1042
  %1044 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1045 = fptoui float %1044 to i32
  %1046 = urem i32 %1045, %979
  %1047 = udiv i32 %1045, %980
  %1048 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1049 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1050 = uitofp i32 %1046 to float
  %1051 = uitofp i32 %1047 to float
  %1052 = fadd fast float %1048, %1050
  %1053 = fadd fast float %1049, %1051
  %1054 = uitofp i32 %979 to float
  %1055 = uitofp i32 %980 to float
  %1056 = fdiv fast float %1052, %1054
  %1057 = fdiv fast float %1053, %1055
  br label %1058

; <label>:1058                                    ; preds = %1033, %960
  %1059 = phi float [ %1056, %1033 ], [ %1028, %960 ]
  %1060 = phi float [ %1057, %1033 ], [ %1029, %960 ]
  %1061 = and i32 %954, 16777216
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1172, label %1063

; <label>:1063                                    ; preds = %1058
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1068 = fadd fast float %1065, %131
  %1069 = fadd fast float %1066, %132
  %1070 = fadd fast float %1067, %133
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = icmp eq i32 %34, 65535
  br i1 %1074, label %1169, label %1075

; <label>:1075                                    ; preds = %1063
  %1076 = lshr i32 %34, 1
  %1077 = shl i32 %1076, 2
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %34, 1
  %1081 = icmp ne i32 %1080, 0
  %1082 = lshr i32 %1079, 16
  %1083 = and i32 %1079, 65535
  %1084 = select i1 %1081, i32 %1082, i32 %1083
  %1085 = icmp eq i32 %1084, 65535
  br i1 %1085, label %1165, label %1086

; <label>:1086                                    ; preds = %1075
  %1087 = mul nuw nsw i32 %1084, 40
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = add nuw nsw i32 %1087, 12
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = add nuw nsw i32 %1087, 24
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = add nuw nsw i32 %1087, 36
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = fsub fast float %1068, %1089
  %1106 = fsub fast float %1069, %1090
  %1107 = fsub fast float %1070, %1091
  %1108 = fmul fast float %1104, %1105
  %1109 = fmul fast float %1104, %1106
  %1110 = fmul fast float %1104, %1107
  %1111 = call float @dx.op.unary.f32(i32 27, float %1108)  ; Round_ni(value)
  %1112 = call float @dx.op.unary.f32(i32 27, float %1109)  ; Round_ni(value)
  %1113 = call float @dx.op.unary.f32(i32 27, float %1110)  ; Round_ni(value)
  %1114 = fadd fast float %1111, 5.000000e-01
  %1115 = fadd fast float %1112, 5.000000e-01
  %1116 = fadd fast float %1113, 5.000000e-01
  %1117 = fmul fast float %1114, %1094
  %1118 = fmul fast float %1115, %1095
  %1119 = fmul fast float %1116, %1096
  %1120 = shl i32 %34, 2
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1126 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1127 = call float @dx.op.unary.f32(i32 22, float %1119)  ; Frc(value)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1124, %dx.types.Handle %30, float %1125, float %1126, float %1127, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = fmul fast float %1129, 1.023000e+03
  %1133 = fmul fast float %1130, 1.023000e+03
  %1134 = fmul fast float %1131, 1.023000e+03
  %1135 = fadd fast float %1132, 5.000000e-01
  %1136 = fadd fast float %1133, 5.000000e-01
  %1137 = fadd fast float %1134, 5.000000e-01
  %1138 = call float @dx.op.unary.f32(i32 27, float %1135)  ; Round_ni(value)
  %1139 = call float @dx.op.unary.f32(i32 27, float %1136)  ; Round_ni(value)
  %1140 = call float @dx.op.unary.f32(i32 27, float %1137)  ; Round_ni(value)
  %1141 = fsub fast float %1108, %1111
  %1142 = fsub fast float %1109, %1112
  %1143 = fsub fast float %1110, %1113
  %1144 = fmul fast float %1141, 7.500000e-01
  %1145 = fmul fast float %1142, 7.500000e-01
  %1146 = fmul fast float %1143, 7.500000e-01
  %1147 = fadd fast float %1111, 1.250000e-01
  %1148 = fadd fast float %1147, %1144
  %1149 = fadd fast float %1148, %1138
  %1150 = fadd fast float %1112, 1.250000e-01
  %1151 = fadd fast float %1150, %1145
  %1152 = fadd fast float %1151, %1139
  %1153 = fadd fast float %1113, 1.250000e-01
  %1154 = fadd fast float %1153, %1146
  %1155 = fadd fast float %1154, %1140
  %1156 = fmul fast float %1149, %1099
  %1157 = fmul fast float %1152, %1100
  %1158 = fmul fast float %1155, %1101
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = add i32 %1160, 0
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1162, %dx.types.Handle %28, float %1156, float %1157, float %1158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  br label %1165

; <label>:1165                                    ; preds = %1086, %1075
  %1166 = phi float [ %1164, %1086 ], [ -1.000000e+00, %1075 ]
  %1167 = fadd fast float %1166, %1073
  %1168 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  br label %1169

; <label>:1169                                    ; preds = %1165, %1063
  %1170 = phi float [ %1168, %1165 ], [ %1073, %1063 ]
  %1171 = fmul fast float %1170, %398
  br label %1172

; <label>:1172                                    ; preds = %1169, %1058
  %1173 = phi float [ %1171, %1169 ], [ %398, %1058 ]
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 256
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1224, label %1178

; <label>:1178                                    ; preds = %1172
  %1179 = add i32 %33, 460
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = add i32 %1181, 0
  %1183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1183, %dx.types.Handle %65, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = add i32 %33, 116
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = shl i32 %1188, 4
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = lshr i32 %1188, 7
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = fsub fast float 1.000000e+00, %1173
  %1196 = call float @dx.op.binary.f32(i32 35, float %1195, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1197 = bitcast float %1173 to i32
  %1198 = sitofp i32 %1197 to float
  %1199 = fadd fast float %1198, 0xC1CFBF8940000000
  %1200 = fmul fast float %1194, %1199
  %1201 = fadd fast float %1200, 0x41CFBF8940000000
  %1202 = fptosi float %1201 to i32
  %1203 = bitcast i32 %1202 to float
  %1204 = bitcast float %1196 to i32
  %1205 = sitofp i32 %1204 to float
  %1206 = fadd fast float %1205, 0xC1CFBF8940000000
  %1207 = fmul fast float %1206, %1194
  %1208 = fadd fast float %1207, 0x41CFBF8940000000
  %1209 = fptosi float %1208 to i32
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1203, %1191
  %1212 = fmul fast float %1210, %1191
  %1213 = fsub fast float %1196, %1211
  %1214 = fadd fast float %1212, %1196
  %1215 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1216 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1217 = fsub fast float %1185, %1215
  %1218 = fsub fast float %1216, %1215
  %1219 = bitcast float %1218 to i32
  %1220 = sub nsw i32 2129859010, %1219
  %1221 = bitcast i32 %1220 to float
  %1222 = fmul fast float %1221, %1217
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  br label %1224

; <label>:1224                                    ; preds = %1178, %1172
  %1225 = phi float [ %1223, %1178 ], [ %1173, %1172 ]
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 128
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1246, label %1230

; <label>:1230                                    ; preds = %1224
  %1231 = add i32 %33, 444
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = add i32 %1233, 0
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1235, %dx.types.Handle %65, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 524288
  %1241 = icmp ne i32 %1240, 0
  %1242 = fcmp fast ogt float %1237, 0x3FE0101020000000
  %1243 = select i1 %1242, float 1.000000e+00, float 0.000000e+00
  %1244 = select i1 %1241, float %1243, float %1237
  %1245 = fmul fast float %1244, %1225
  br label %1246

; <label>:1246                                    ; preds = %1230, %1224
  %1247 = phi float [ %1245, %1230 ], [ %1225, %1224 ]
  %1248 = fcmp fast ult float %1247, 0x3F70101020000000
  br i1 %1248, label %1791, label %1249

; <label>:1249                                    ; preds = %1246
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 16
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1452, label %1254

; <label>:1254                                    ; preds = %1249
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %33, 396
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %1259, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1261, %dx.types.Handle %64, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = and i32 %1256, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = lshr i32 %1256, 8
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1266, %1268
  %1273 = fadd fast float %1272, %1271
  %1274 = fmul fast float %1273, 0x3F70101000000000
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 512
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1287, label %1279

; <label>:1279                                    ; preds = %1254
  %1280 = add i32 %33, 476
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = add i32 %1282, 0
  %1284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1284, %dx.types.Handle %65, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  br label %1287

; <label>:1287                                    ; preds = %1279, %1254
  %1288 = phi float [ %1286, %1279 ], [ 1.000000e+00, %1254 ]
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 33554432
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1399, label %1293

; <label>:1293                                    ; preds = %1287
  %1294 = add i32 %33, 240
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 65535
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = lshr i32 %1296, 16
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = add i32 %33, 244
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = lshr i32 %1307, 24
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = and i32 %1307, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = lshr i32 %1307, 8
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1307, 16
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = add i32 %33, 236
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = lshr i32 %1324, 24
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = and i32 %1324, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = lshr i32 %1324, 8
  %1332 = and i32 %1331, 255
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1333, 0x3F70101020000000
  %1335 = lshr i32 %1324, 16
  %1336 = and i32 %1335, 255
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1337, 0x3F70101020000000
  %1339 = bitcast float %1263 to i32
  %1340 = ashr i32 %1339, 1
  %1341 = sub nsw i32 1597463174, %1340
  %1342 = bitcast i32 %1341 to float
  %1343 = fmul fast float %1263, 5.000000e-01
  %1344 = fmul fast float %1342, %1342
  %1345 = fmul fast float %1344, %1343
  %1346 = fsub fast float 1.500000e+00, %1345
  %1347 = fmul fast float %1342, %1263
  %1348 = fmul fast float %1347, %1346
  %1349 = bitcast float %1264 to i32
  %1350 = ashr i32 %1349, 1
  %1351 = sub nsw i32 1597463174, %1350
  %1352 = bitcast i32 %1351 to float
  %1353 = fmul fast float %1264, 5.000000e-01
  %1354 = fmul fast float %1352, %1352
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float 1.500000e+00, %1355
  %1357 = fmul fast float %1352, %1264
  %1358 = fmul fast float %1357, %1356
  %1359 = bitcast float %1265 to i32
  %1360 = ashr i32 %1359, 1
  %1361 = sub nsw i32 1597463174, %1360
  %1362 = bitcast i32 %1361 to float
  %1363 = fmul fast float %1265, 5.000000e-01
  %1364 = fmul fast float %1362, %1362
  %1365 = fmul fast float %1364, %1363
  %1366 = fsub fast float 1.500000e+00, %1365
  %1367 = fmul fast float %1362, %1265
  %1368 = fmul fast float %1367, %1366
  %1369 = fsub fast float %1348, %1330
  %1370 = fsub fast float %1358, %1334
  %1371 = fsub fast float %1368, %1338
  %1372 = fmul fast float %1369, %1298
  %1373 = fmul fast float %1370, %1300
  %1374 = fmul fast float %1371, %1305
  %1375 = fadd fast float %1372, %1313
  %1376 = fadd fast float %1373, %1317
  %1377 = fadd fast float %1374, %1321
  %1378 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = fmul fast float %1378, %1378
  %1382 = fmul fast float %1379, %1379
  %1383 = fmul fast float %1380, %1380
  %1384 = fsub fast float %1381, %1263
  %1385 = fsub fast float %1382, %1264
  %1386 = fsub fast float %1383, %1265
  %1387 = fmul fast float %1384, %1288
  %1388 = fmul fast float %1385, %1288
  %1389 = fmul fast float %1386, %1288
  %1390 = fadd fast float %1387, %1263
  %1391 = fadd fast float %1388, %1264
  %1392 = fadd fast float %1389, %1265
  %1393 = fadd fast float %1310, %1274
  %1394 = fsub fast float %1393, %1327
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = fsub fast float %1395, %1274
  %1397 = fmul fast float %1396, %1288
  %1398 = fadd fast float %1397, %1274
  br label %1452

; <label>:1399                                    ; preds = %1287
  %1400 = and i32 %1290, 134217728
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1436, label %1402

; <label>:1402                                    ; preds = %1399
  %1403 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1406 = fadd fast float %1403, -5.000000e-01
  %1407 = fadd fast float %1404, -5.000000e-01
  %1408 = fadd fast float %1405, -5.000000e-01
  %1409 = fmul fast float %1406, %1288
  %1410 = fmul fast float %1407, %1288
  %1411 = fmul fast float %1408, %1288
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1416 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1417 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1418 = fmul fast float %1412, 2.000000e+00
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1419, %1415
  %1421 = fadd fast float %1420, %1418
  %1422 = fmul fast float %1421, %1415
  %1423 = fmul fast float %1413, 2.000000e+00
  %1424 = fsub fast float 1.000000e+00, %1423
  %1425 = fmul fast float %1424, %1416
  %1426 = fadd fast float %1425, %1423
  %1427 = fmul fast float %1426, %1416
  %1428 = fmul fast float %1414, 2.000000e+00
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = fmul fast float %1429, %1417
  %1431 = fadd fast float %1430, %1428
  %1432 = fmul fast float %1431, %1417
  %1433 = fmul fast float %1422, %1422
  %1434 = fmul fast float %1427, %1427
  %1435 = fmul fast float %1432, %1432
  br label %1452

; <label>:1436                                    ; preds = %1399
  %1437 = fmul fast float %233, %233
  %1438 = fmul fast float %237, %237
  %1439 = fmul fast float %241, %241
  %1440 = fadd fast float %1437, -1.000000e+00
  %1441 = fadd fast float %1438, -1.000000e+00
  %1442 = fadd fast float %1439, -1.000000e+00
  %1443 = fmul fast float %1288, %1440
  %1444 = fmul fast float %1288, %1441
  %1445 = fmul fast float %1288, %1442
  %1446 = fadd fast float %1443, 1.000000e+00
  %1447 = fadd fast float %1444, 1.000000e+00
  %1448 = fadd fast float %1445, 1.000000e+00
  %1449 = fmul fast float %1446, %1263
  %1450 = fmul fast float %1447, %1264
  %1451 = fmul fast float %1448, %1265
  br label %1452

; <label>:1452                                    ; preds = %1436, %1402, %1293, %1249
  %1453 = phi float [ %1398, %1293 ], [ %1274, %1402 ], [ %1274, %1436 ], [ 0x3FA23C0BE0000000, %1249 ]
  %1454 = phi float [ %1390, %1293 ], [ %1433, %1402 ], [ %1449, %1436 ], [ 1.000000e+00, %1249 ]
  %1455 = phi float [ %1391, %1293 ], [ %1434, %1402 ], [ %1450, %1436 ], [ 1.000000e+00, %1249 ]
  %1456 = phi float [ %1392, %1293 ], [ %1435, %1402 ], [ %1451, %1436 ], [ 1.000000e+00, %1249 ]
  %1457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.i32 %1457, 1
  %1459 = and i32 %1458, 1
  %1460 = icmp ne i32 %1459, 0
  %1461 = add i32 %33, 356
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 32
  %1465 = icmp ne i32 %1464, 0
  %1466 = and i1 %1460, %1465
  %1467 = select i1 %1466, float 1.000000e+00, float %1454
  %1468 = select i1 %1466, float 0x3FD3333340000000, float %1455
  %1469 = select i1 %1466, float 0x3FD3333340000000, float %1456
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 32
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1546, label %1474

; <label>:1474                                    ; preds = %1452
  %1475 = add i32 %33, 108
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %33, 412
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %64, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = and i32 %1477, 255
  %1489 = uitofp i32 %1488 to float
  %1490 = lshr i32 %1477, 8
  %1491 = and i32 %1490, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = lshr i32 %1477, 16
  %1494 = and i32 %1493, 255
  %1495 = uitofp i32 %1494 to float
  %1496 = fmul fast float %1495, 0x3F70101000000000
  %1497 = fmul fast float %1484, %1489
  %1498 = fadd fast float %1497, %1492
  %1499 = fmul fast float %1498, 0x3F70101000000000
  %1500 = fadd fast float %1485, -5.000000e-01
  %1501 = fadd fast float %1487, -5.000000e-01
  %1502 = fmul fast float %1500, %1496
  %1503 = fmul fast float %1501, %1496
  %1504 = fadd fast float %1502, 5.000000e-01
  %1505 = fadd fast float %1503, 5.000000e-01
  %1506 = fmul fast float %1504, 2.000000e+00
  %1507 = fadd fast float %1506, -1.000000e+00
  %1508 = fmul fast float %1505, 2.000000e+00
  %1509 = fadd fast float %1508, -1.000000e+00
  %1510 = fadd fast float %1507, %1509
  %1511 = fmul fast float %1510, 5.000000e-01
  %1512 = fsub fast float %1507, %1509
  %1513 = fmul fast float %1512, 5.000000e-01
  %1514 = call float @dx.op.unary.f32(i32 6, float %1511)  ; FAbs(value)
  %1515 = fsub fast float 1.000000e+00, %1514
  %1516 = call float @dx.op.unary.f32(i32 6, float %1513)  ; FAbs(value)
  %1517 = fsub fast float %1515, %1516
  %1518 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1513, float %1517, float %1511, float %1513, float %1517)  ; Dot3(ax,ay,az,bx,by,bz)
  %1519 = call float @dx.op.unary.f32(i32 25, float %1518)  ; Rsqrt(value)
  %1520 = fmul fast float %1511, %1519
  %1521 = fmul fast float %1513, %1519
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 67108864
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1542, label %1526

; <label>:1526                                    ; preds = %1474
  %1527 = add i32 %33, 296
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 65535
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 65535
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = lshr i32 %1529, 16
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = fsub fast float %1499, %1537
  %1539 = fmul fast float %1538, %1531
  %1540 = fadd fast float %1539, %1535
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  br label %1542

; <label>:1542                                    ; preds = %1526, %1474
  %1543 = phi float [ %1541, %1526 ], [ %1499, %1474 ]
  %1544 = call float @dx.op.dot2.f32(i32 54, float %1520, float %1521, float %963, float %964)  ; Dot2(ax,ay,bx,by)
  %1545 = call float @dx.op.dot2.f32(i32 54, float %1520, float %1521, float %965, float %966)  ; Dot2(ax,ay,bx,by)
  br label %1546

; <label>:1546                                    ; preds = %1542, %1452
  %1547 = phi float [ %1543, %1542 ], [ 0x3FD6666660000000, %1452 ]
  %1548 = phi float [ %1544, %1542 ], [ 0.000000e+00, %1452 ]
  %1549 = phi float [ %1545, %1542 ], [ 0.000000e+00, %1452 ]
  %1550 = phi float [ %1486, %1542 ], [ 1.000000e+00, %1452 ]
  %1551 = add i32 %33, 176
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = lshr i32 %1553, 22
  %1555 = shl nuw nsw i32 %1554, 5
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 64
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1594, label %1561

; <label>:1561                                    ; preds = %1546
  %1562 = add i32 %33, 428
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 131072
  %1570 = icmp eq i32 %1569, 0
  %1571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %64, float %1059, float %1060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1572 = extractvalue %dx.types.ResRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.ResRet.f32 %1571, 1
  %1574 = extractvalue %dx.types.ResRet.f32 %1571, 2
  %1575 = fmul fast float %1572, %221
  %1576 = fmul fast float %1573, %224
  %1577 = fmul fast float %1574, %227
  br i1 %1570, label %1584, label %1578

; <label>:1578                                    ; preds = %1561
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = fmul fast float %1580, %1575
  %1582 = fmul fast float %1580, %1576
  %1583 = fmul fast float %1580, %1577
  br label %1584

; <label>:1584                                    ; preds = %1578, %1561
  %1585 = phi float [ %1581, %1578 ], [ %1575, %1561 ]
  %1586 = phi float [ %1582, %1578 ], [ %1576, %1561 ]
  %1587 = phi float [ %1583, %1578 ], [ %1577, %1561 ]
  %1588 = fmul fast float %1585, %1556
  %1589 = select i1 %173, float %1588, float %1585
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1589, float %1586, float %1587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = select i1 %173, float 0.000000e+00, float %1585
  %1592 = select i1 %173, float %1590, float %1586
  %1593 = select i1 %173, float 0.000000e+00, float %1587
  br label %1594

; <label>:1594                                    ; preds = %1584, %1546
  %1595 = phi float [ %1591, %1584 ], [ 0.000000e+00, %1546 ]
  %1596 = phi float [ %1592, %1584 ], [ 0.000000e+00, %1546 ]
  %1597 = phi float [ %1593, %1584 ], [ 0.000000e+00, %1546 ]
  %1598 = add i32 %33, 112
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 255
  %1602 = uitofp i32 %1601 to float
  %1603 = lshr i32 %1600, 8
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1468, float %1469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = fmul fast float %1605, %1606
  %1608 = fadd fast float %1607, %1602
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  br i1 %951, label %1611, label %1619

; <label>:1611                                    ; preds = %1594
  %1612 = fsub fast float 1.000000e+00, %1247
  %1613 = fmul fast float %1612, %939
  %1614 = fmul fast float %1612, %940
  %1615 = fmul fast float %1612, %941
  %1616 = fmul fast float %1612, %942
  %1617 = fmul fast float %1612, %943
  %1618 = fmul fast float %1612, %944
  br label %1619

; <label>:1619                                    ; preds = %1611, %1594
  %1620 = phi float [ %1613, %1611 ], [ %939, %1594 ]
  %1621 = phi float [ %1614, %1611 ], [ %940, %1594 ]
  %1622 = phi float [ %1615, %1611 ], [ %941, %1594 ]
  %1623 = phi float [ %1616, %1611 ], [ %942, %1594 ]
  %1624 = phi float [ %1617, %1611 ], [ %943, %1594 ]
  %1625 = phi float [ %1618, %1611 ], [ %944, %1594 ]
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 3
  %1629 = icmp eq i32 %1628, 3
  br i1 %1629, label %1708, label %1630

; <label>:1630                                    ; preds = %1619
  %1631 = and i32 %1627, 16
  %1632 = icmp ne i32 %1631, 0
  %1633 = select i1 %1632, float %1247, float 0.000000e+00
  %1634 = icmp eq i32 %1628, 0
  br i1 %1634, label %1635, label %1663

; <label>:1635                                    ; preds = %1630
  %1636 = and i32 %1627, 64
  %1637 = icmp ne i32 %1636, 0
  %1638 = select i1 %1637, float %1247, float 0.000000e+00
  %1639 = fsub fast float %1467, %1620
  %1640 = fsub fast float %1468, %1621
  %1641 = fsub fast float %1469, %1622
  %1642 = fmul fast float %1633, %1639
  %1643 = fmul fast float %1633, %1640
  %1644 = fmul fast float %1633, %1641
  %1645 = fadd fast float %1642, %1620
  %1646 = fadd fast float %1643, %1621
  %1647 = fadd fast float %1644, %1622
  %1648 = fsub fast float %1453, %945
  %1649 = fmul fast float %1633, %1648
  %1650 = fadd fast float %1649, %945
  %1651 = fsub fast float %1595, %1623
  %1652 = fsub fast float %1596, %1624
  %1653 = fsub fast float %1597, %1625
  %1654 = fmul fast float %1638, %1651
  %1655 = fmul fast float %1638, %1652
  %1656 = fmul fast float %1638, %1653
  %1657 = fadd fast float %1654, %1623
  %1658 = fadd fast float %1655, %1624
  %1659 = fadd fast float %1656, %1625
  %1660 = fsub fast float %1610, %949
  %1661 = fmul fast float %1633, %1660
  %1662 = fadd fast float %1661, %949
  br label %1708

; <label>:1663                                    ; preds = %1630
  %1664 = icmp eq i32 %1628, 1
  br i1 %1664, label %1665, label %1678

; <label>:1665                                    ; preds = %1663
  %1666 = fadd fast float %1467, -1.000000e+00
  %1667 = fadd fast float %1468, -1.000000e+00
  %1668 = fadd fast float %1469, -1.000000e+00
  %1669 = fmul fast float %1633, %1666
  %1670 = fmul fast float %1633, %1667
  %1671 = fmul fast float %1633, %1668
  %1672 = fadd fast float %1669, 1.000000e+00
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fadd fast float %1671, 1.000000e+00
  %1675 = fmul fast float %1672, %1620
  %1676 = fmul fast float %1673, %1621
  %1677 = fmul fast float %1674, %1622
  br label %1708

; <label>:1678                                    ; preds = %1663
  %1679 = icmp eq i32 %1628, 2
  br i1 %1679, label %1680, label %1708

; <label>:1680                                    ; preds = %1678
  %1681 = call float @dx.op.unary.f32(i32 24, float %1467)  ; Sqrt(value)
  %1682 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1683 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1684 = fadd fast float %1681, -5.000000e-01
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fadd fast float %1683, -5.000000e-01
  %1687 = fmul fast float %1684, %1633
  %1688 = fmul fast float %1685, %1633
  %1689 = fmul fast float %1686, %1633
  %1690 = fadd fast float %1687, 5.000000e-01
  %1691 = fadd fast float %1688, 5.000000e-01
  %1692 = fadd fast float %1689, 5.000000e-01
  %1693 = fmul fast float %1690, 2.000000e+00
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fmul fast float %1694, %1620
  %1696 = fadd fast float %1695, %1693
  %1697 = fmul fast float %1696, %1620
  %1698 = fmul fast float %1691, 2.000000e+00
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = fmul fast float %1699, %1621
  %1701 = fadd fast float %1700, %1698
  %1702 = fmul fast float %1701, %1621
  %1703 = fmul fast float %1692, 2.000000e+00
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fmul fast float %1704, %1622
  %1706 = fadd fast float %1705, %1703
  %1707 = fmul fast float %1706, %1622
  br label %1708

; <label>:1708                                    ; preds = %1680, %1678, %1665, %1635, %1619
  %1709 = phi float [ %1620, %1619 ], [ %1697, %1680 ], [ %1620, %1678 ], [ %1675, %1665 ], [ %1645, %1635 ]
  %1710 = phi float [ %1621, %1619 ], [ %1702, %1680 ], [ %1621, %1678 ], [ %1676, %1665 ], [ %1646, %1635 ]
  %1711 = phi float [ %1622, %1619 ], [ %1707, %1680 ], [ %1622, %1678 ], [ %1677, %1665 ], [ %1647, %1635 ]
  %1712 = phi float [ %1623, %1619 ], [ %1623, %1680 ], [ %1623, %1678 ], [ %1623, %1665 ], [ %1657, %1635 ]
  %1713 = phi float [ %1624, %1619 ], [ %1624, %1680 ], [ %1624, %1678 ], [ %1624, %1665 ], [ %1658, %1635 ]
  %1714 = phi float [ %1625, %1619 ], [ %1625, %1680 ], [ %1625, %1678 ], [ %1625, %1665 ], [ %1659, %1635 ]
  %1715 = phi float [ %945, %1619 ], [ %945, %1680 ], [ %945, %1678 ], [ %945, %1665 ], [ %1650, %1635 ]
  %1716 = phi float [ %949, %1619 ], [ %949, %1680 ], [ %949, %1678 ], [ %949, %1665 ], [ %1662, %1635 ]
  %1717 = and i32 %1627, 12
  %1718 = icmp eq i32 %1717, 12
  br i1 %1718, label %1791, label %1719

; <label>:1719                                    ; preds = %1708
  %1720 = and i32 %1627, 2097184
  %1721 = icmp eq i32 %1720, 2097184
  %1722 = select i1 %1721, float %1247, float 0.000000e+00
  %1723 = and i32 %1627, 4194336
  %1724 = icmp eq i32 %1723, 4194336
  %1725 = select i1 %1724, float %1247, float 0.000000e+00
  %1726 = and i32 %1627, 8388640
  %1727 = icmp eq i32 %1726, 8388640
  %1728 = select i1 %1727, float %1247, float 0.000000e+00
  %1729 = icmp eq i32 %1717, 0
  br i1 %1729, label %1730, label %1743

; <label>:1730                                    ; preds = %1719
  %1731 = fsub fast float %1548, %937
  %1732 = fsub fast float %1549, %938
  %1733 = fmul fast float %1722, %1731
  %1734 = fmul fast float %1722, %1732
  %1735 = fadd fast float %1733, %937
  %1736 = fadd fast float %1734, %938
  %1737 = fsub fast float %1550, %948
  %1738 = fmul fast float %1725, %1737
  %1739 = fadd fast float %1738, %948
  %1740 = fsub fast float %1547, %947
  %1741 = fmul fast float %1728, %1740
  %1742 = fadd fast float %1741, %947
  br label %1791

; <label>:1743                                    ; preds = %1719
  %1744 = icmp eq i32 %1717, 4
  br i1 %1744, label %1745, label %1777

; <label>:1745                                    ; preds = %1743
  %1746 = fmul fast float %1722, %1548
  %1747 = fmul fast float %1722, %1549
  %1748 = fadd fast float %1746, %937
  %1749 = fadd fast float %1747, %938
  %1750 = call float @dx.op.binary.f32(i32 36, float %948, float %1550)  ; FMin(a,b)
  %1751 = fsub fast float %1750, %948
  %1752 = fmul fast float %1751, %1725
  %1753 = fadd fast float %1752, %948
  %1754 = fadd fast float %1547, %947
  %1755 = fmul fast float %1754, 0x3FF337FAE0000000
  %1756 = fmul fast float %947, %947
  %1757 = fmul fast float %1547, %1547
  %1758 = fadd fast float %1757, %1756
  %1759 = fmul fast float %1758, 0x3FE5152B00000000
  %1760 = fmul fast float %947, 0xBFCC1F85E0000000
  %1761 = fmul fast float %1760, %1547
  %1762 = fadd fast float %1761, 0xBFE1363700000000
  %1763 = fadd fast float %1762, %1755
  %1764 = fsub fast float %1763, %1759
  %1765 = fmul fast float %1754, 0x3FBA6F0D00000000
  %1766 = fmul fast float %1758, 0x3FD0432880000000
  %1767 = fmul fast float %947, 0xBFEF110800000000
  %1768 = fmul fast float %1767, %1547
  %1769 = fadd fast float %1768, 1.000000e+00
  %1770 = fsub fast float %1769, %1765
  %1771 = fadd fast float %1770, %1766
  %1772 = fdiv fast float %1764, %1771
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fsub fast float %1773, %947
  %1775 = fmul fast float %1774, %1728
  %1776 = fadd fast float %1775, %947
  br label %1791

; <label>:1777                                    ; preds = %1743
  %1778 = icmp eq i32 %1717, 8
  br i1 %1778, label %1779, label %1791

; <label>:1779                                    ; preds = %1777
  %1780 = fmul fast float %1722, %1548
  %1781 = fmul fast float %1722, %1549
  %1782 = fadd fast float %1780, %937
  %1783 = fadd fast float %1781, %938
  %1784 = call float @dx.op.binary.f32(i32 36, float %948, float %1550)  ; FMin(a,b)
  %1785 = fsub fast float %1784, %948
  %1786 = fmul fast float %1785, %1725
  %1787 = fadd fast float %1786, %948
  %1788 = fsub fast float %1547, %947
  %1789 = fmul fast float %1728, %1788
  %1790 = fadd fast float %1789, %947
  br label %1791

; <label>:1791                                    ; preds = %1779, %1777, %1745, %1730, %1708, %1246, %950, %936
  %1792 = phi float [ %937, %1708 ], [ %937, %1246 ], [ %937, %936 ], [ %1782, %1779 ], [ %937, %1777 ], [ %1748, %1745 ], [ %1735, %1730 ], [ %937, %950 ]
  %1793 = phi float [ %938, %1708 ], [ %938, %1246 ], [ %938, %936 ], [ %1783, %1779 ], [ %938, %1777 ], [ %1749, %1745 ], [ %1736, %1730 ], [ %938, %950 ]
  %1794 = phi float [ %1709, %1708 ], [ %939, %1246 ], [ %939, %936 ], [ %1709, %1779 ], [ %1709, %1777 ], [ %1709, %1745 ], [ %1709, %1730 ], [ %939, %950 ]
  %1795 = phi float [ %1710, %1708 ], [ %940, %1246 ], [ %940, %936 ], [ %1710, %1779 ], [ %1710, %1777 ], [ %1710, %1745 ], [ %1710, %1730 ], [ %940, %950 ]
  %1796 = phi float [ %1711, %1708 ], [ %941, %1246 ], [ %941, %936 ], [ %1711, %1779 ], [ %1711, %1777 ], [ %1711, %1745 ], [ %1711, %1730 ], [ %941, %950 ]
  %1797 = phi float [ %1712, %1708 ], [ %942, %1246 ], [ %942, %936 ], [ %1712, %1779 ], [ %1712, %1777 ], [ %1712, %1745 ], [ %1712, %1730 ], [ %942, %950 ]
  %1798 = phi float [ %1713, %1708 ], [ %943, %1246 ], [ %943, %936 ], [ %1713, %1779 ], [ %1713, %1777 ], [ %1713, %1745 ], [ %1713, %1730 ], [ %943, %950 ]
  %1799 = phi float [ %1714, %1708 ], [ %944, %1246 ], [ %944, %936 ], [ %1714, %1779 ], [ %1714, %1777 ], [ %1714, %1745 ], [ %1714, %1730 ], [ %944, %950 ]
  %1800 = phi float [ %1715, %1708 ], [ %945, %1246 ], [ %945, %936 ], [ %1715, %1779 ], [ %1715, %1777 ], [ %1715, %1745 ], [ %1715, %1730 ], [ %945, %950 ]
  %1801 = phi float [ %947, %1708 ], [ %947, %1246 ], [ %947, %936 ], [ %1790, %1779 ], [ %947, %1777 ], [ %1776, %1745 ], [ %1742, %1730 ], [ %947, %950 ]
  %1802 = phi float [ %948, %1708 ], [ %948, %1246 ], [ %948, %936 ], [ %1787, %1779 ], [ %948, %1777 ], [ %1753, %1745 ], [ %1739, %1730 ], [ %948, %950 ]
  %1803 = phi float [ %1716, %1708 ], [ %949, %1246 ], [ %949, %936 ], [ %1716, %1779 ], [ %1716, %1777 ], [ %1716, %1745 ], [ %1716, %1730 ], [ %949, %950 ]
  br i1 %348, label %2645, label %1804

; <label>:1804                                    ; preds = %1791
  %1805 = icmp ult i32 %401, 3
  %1806 = add i32 %33, 56
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = add i32 %33, 60
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = or i32 %1811, %1808
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %2645, label %1814

; <label>:1814                                    ; preds = %1804
  %1815 = and i32 %1808, 262144
  %1816 = icmp ne i32 %1815, 0
  %1817 = select i1 %1816, float %36, float 1.000000e+00
  %1818 = select i1 %1816, float %37, float 0.000000e+00
  %1819 = select i1 %1816, float %38, float 0.000000e+00
  %1820 = select i1 %1816, float %39, float 1.000000e+00
  %1821 = select i1 %1816, float %40, float %56
  %1822 = select i1 %1816, float %41, float %57
  %1823 = add i32 %33, 316
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 16
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = fmul fast float %1827, 0x3F50624DE0000000
  %1829 = add i32 %33, 120
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = lshr i32 %1831, 16
  %1833 = and i32 %1832, 255
  %1834 = lshr i32 %1831, 24
  %1835 = add i32 %33, 324
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 65535
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = lshr i32 %1837, 16
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = add i32 %33, 64
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 22
  %1846 = shl nuw nsw i32 %1845, 5
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = shl i32 %1844, 4
  %1849 = and i32 %1848, 32752
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = lshr i32 %1844, 7
  %1852 = and i32 %1851, 32752
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1856 = fmul fast float %1855, 1.000000e+03
  %1857 = fmul fast float %298, %1856
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = fadd fast float %1858, %288
  %1860 = fmul fast float %299, %1856
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = fadd fast float %1861, %290
  %1863 = fmul fast float %1828, %1856
  %1864 = call float @dx.op.unary.f32(i32 22, float %1863)  ; Frc(value)
  %1865 = fmul fast float %1864, 0x401921FB60000000
  %1866 = fadd fast float %1865, %1847
  %1867 = call float @dx.op.unary.f32(i32 13, float %1866)  ; Sin(value)
  %1868 = call float @dx.op.unary.f32(i32 12, float %1866)  ; Cos(value)
  %1869 = fsub fast float -0.000000e+00, %1867
  %1870 = fadd fast float %1821, -5.000000e-01
  %1871 = fadd fast float %1822, -5.000000e-01
  %1872 = fmul fast float %1839, %1870
  %1873 = fmul fast float %1841, %1871
  %1874 = fadd fast float %1872, 5.000000e-01
  %1875 = fadd fast float %1873, 5.000000e-01
  %1876 = fmul fast float %1850, %1874
  %1877 = fmul fast float %1853, %1875
  %1878 = fmul fast float %1868, %1876
  %1879 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1877, float %1878)  ; FMad(a,b,c)
  %1880 = fmul fast float %1867, %1876
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1868, float %1877, float %1880)  ; FMad(a,b,c)
  %1882 = fadd fast float %1859, %1879
  %1883 = fadd fast float %1862, %1881
  %1884 = icmp ugt i32 %1833, 1
  %1885 = icmp ugt i32 %1831, 33554431
  %1886 = or i1 %1885, %1884
  br i1 %1886, label %1887, label %1912

; <label>:1887                                    ; preds = %1814
  %1888 = add i32 %33, 260
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = lshr i32 %1890, 16
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = fmul fast float %1855, %1892
  %1894 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1895 = mul nuw nsw i32 %1833, %1834
  %1896 = uitofp i32 %1895 to float
  %1897 = fmul fast float %1894, %1896
  %1898 = call float @dx.op.unary.f32(i32 27, float %1897)  ; Round_ni(value)
  %1899 = fptoui float %1898 to i32
  %1900 = urem i32 %1899, %1833
  %1901 = udiv i32 %1899, %1834
  %1902 = call float @dx.op.unary.f32(i32 22, float %1882)  ; Frc(value)
  %1903 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1904 = uitofp i32 %1900 to float
  %1905 = uitofp i32 %1901 to float
  %1906 = fadd fast float %1902, %1904
  %1907 = fadd fast float %1903, %1905
  %1908 = uitofp i32 %1833 to float
  %1909 = uitofp i32 %1834 to float
  %1910 = fdiv fast float %1906, %1908
  %1911 = fdiv fast float %1907, %1909
  br label %1912

; <label>:1912                                    ; preds = %1887, %1814
  %1913 = phi float [ %1910, %1887 ], [ %1882, %1814 ]
  %1914 = phi float [ %1911, %1887 ], [ %1883, %1814 ]
  %1915 = and i32 %1808, 16777216
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %2026, label %1917

; <label>:1917                                    ; preds = %1912
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.CBufRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.CBufRet.f32 %1918, 2
  %1922 = fadd fast float %1919, %131
  %1923 = fadd fast float %1920, %132
  %1924 = fadd fast float %1921, %133
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = icmp eq i32 %34, 65535
  br i1 %1928, label %2023, label %1929

; <label>:1929                                    ; preds = %1917
  %1930 = lshr i32 %34, 1
  %1931 = shl i32 %1930, 2
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = and i32 %34, 1
  %1935 = icmp ne i32 %1934, 0
  %1936 = lshr i32 %1933, 16
  %1937 = and i32 %1933, 65535
  %1938 = select i1 %1935, i32 %1936, i32 %1937
  %1939 = icmp eq i32 %1938, 65535
  br i1 %1939, label %2019, label %1940

; <label>:1940                                    ; preds = %1929
  %1941 = mul nuw nsw i32 %1938, 40
  %1942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.ResRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.ResRet.f32 %1942, 2
  %1946 = add nuw nsw i32 %1941, 12
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1951 = add nuw nsw i32 %1941, 24
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = add nuw nsw i32 %1941, 36
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = fsub fast float %1922, %1943
  %1960 = fsub fast float %1923, %1944
  %1961 = fsub fast float %1924, %1945
  %1962 = fmul fast float %1958, %1959
  %1963 = fmul fast float %1958, %1960
  %1964 = fmul fast float %1958, %1961
  %1965 = call float @dx.op.unary.f32(i32 27, float %1962)  ; Round_ni(value)
  %1966 = call float @dx.op.unary.f32(i32 27, float %1963)  ; Round_ni(value)
  %1967 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1968 = fadd fast float %1965, 5.000000e-01
  %1969 = fadd fast float %1966, 5.000000e-01
  %1970 = fadd fast float %1967, 5.000000e-01
  %1971 = fmul fast float %1968, %1948
  %1972 = fmul fast float %1969, %1949
  %1973 = fmul fast float %1970, %1950
  %1974 = shl i32 %34, 2
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = add i32 %1976, 0
  %1978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1979 = call float @dx.op.unary.f32(i32 22, float %1971)  ; Frc(value)
  %1980 = call float @dx.op.unary.f32(i32 22, float %1972)  ; Frc(value)
  %1981 = call float @dx.op.unary.f32(i32 22, float %1973)  ; Frc(value)
  %1982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1978, %dx.types.Handle %30, float %1979, float %1980, float %1981, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.ResRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.ResRet.f32 %1982, 2
  %1986 = fmul fast float %1983, 1.023000e+03
  %1987 = fmul fast float %1984, 1.023000e+03
  %1988 = fmul fast float %1985, 1.023000e+03
  %1989 = fadd fast float %1986, 5.000000e-01
  %1990 = fadd fast float %1987, 5.000000e-01
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = call float @dx.op.unary.f32(i32 27, float %1989)  ; Round_ni(value)
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = fsub fast float %1962, %1965
  %1996 = fsub fast float %1963, %1966
  %1997 = fsub fast float %1964, %1967
  %1998 = fmul fast float %1995, 7.500000e-01
  %1999 = fmul fast float %1996, 7.500000e-01
  %2000 = fmul fast float %1997, 7.500000e-01
  %2001 = fadd fast float %1965, 1.250000e-01
  %2002 = fadd fast float %2001, %1998
  %2003 = fadd fast float %2002, %1992
  %2004 = fadd fast float %1966, 1.250000e-01
  %2005 = fadd fast float %2004, %1999
  %2006 = fadd fast float %2005, %1993
  %2007 = fadd fast float %1967, 1.250000e-01
  %2008 = fadd fast float %2007, %2000
  %2009 = fadd fast float %2008, %1994
  %2010 = fmul fast float %2003, %1953
  %2011 = fmul fast float %2006, %1954
  %2012 = fmul fast float %2009, %1955
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2016, %dx.types.Handle %28, float %2010, float %2011, float %2012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  br label %2019

; <label>:2019                                    ; preds = %1940, %1929
  %2020 = phi float [ %2018, %1940 ], [ -1.000000e+00, %1929 ]
  %2021 = fadd fast float %2020, %1927
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  br label %2023

; <label>:2023                                    ; preds = %2019, %1917
  %2024 = phi float [ %2022, %2019 ], [ %1927, %1917 ]
  %2025 = fmul fast float %2024, %397
  br label %2026

; <label>:2026                                    ; preds = %2023, %1912
  %2027 = phi float [ %2025, %2023 ], [ %397, %1912 ]
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 256
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2078, label %2032

; <label>:2032                                    ; preds = %2026
  %2033 = add i32 %33, 464
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = add i32 %2035, 0
  %2037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2037, %dx.types.Handle %65, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = add i32 %33, 132
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = shl i32 %2042, 4
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = lshr i32 %2042, 7
  %2047 = and i32 %2046, 32752
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = fsub fast float 1.000000e+00, %2027
  %2050 = call float @dx.op.binary.f32(i32 35, float %2049, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2051 = bitcast float %2027 to i32
  %2052 = sitofp i32 %2051 to float
  %2053 = fadd fast float %2052, 0xC1CFBF8940000000
  %2054 = fmul fast float %2048, %2053
  %2055 = fadd fast float %2054, 0x41CFBF8940000000
  %2056 = fptosi float %2055 to i32
  %2057 = bitcast i32 %2056 to float
  %2058 = bitcast float %2050 to i32
  %2059 = sitofp i32 %2058 to float
  %2060 = fadd fast float %2059, 0xC1CFBF8940000000
  %2061 = fmul fast float %2060, %2048
  %2062 = fadd fast float %2061, 0x41CFBF8940000000
  %2063 = fptosi float %2062 to i32
  %2064 = bitcast i32 %2063 to float
  %2065 = fmul fast float %2057, %2045
  %2066 = fmul fast float %2064, %2045
  %2067 = fsub fast float %2050, %2065
  %2068 = fadd fast float %2066, %2050
  %2069 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2070 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2071 = fsub fast float %2039, %2069
  %2072 = fsub fast float %2070, %2069
  %2073 = bitcast float %2072 to i32
  %2074 = sub nsw i32 2129859010, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %2075, %2071
  %2077 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  br label %2078

; <label>:2078                                    ; preds = %2032, %2026
  %2079 = phi float [ %2077, %2032 ], [ %2027, %2026 ]
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 128
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2100, label %2084

; <label>:2084                                    ; preds = %2078
  %2085 = add i32 %33, 448
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = add i32 %2087, 0
  %2089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2090 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2089, %dx.types.Handle %65, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 524288
  %2095 = icmp ne i32 %2094, 0
  %2096 = fcmp fast ogt float %2091, 0x3FE0101020000000
  %2097 = select i1 %2096, float 1.000000e+00, float 0.000000e+00
  %2098 = select i1 %2095, float %2097, float %2091
  %2099 = fmul fast float %2098, %2079
  br label %2100

; <label>:2100                                    ; preds = %2084, %2078
  %2101 = phi float [ %2099, %2084 ], [ %2079, %2078 ]
  %2102 = fcmp fast ult float %2101, 0x3F70101020000000
  br i1 %2102, label %2645, label %2103

; <label>:2103                                    ; preds = %2100
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 16
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2306, label %2108

; <label>:2108                                    ; preds = %2103
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %33, 400
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = add i32 %2113, 0
  %2115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2115, %dx.types.Handle %64, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.ResRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.ResRet.f32 %2116, 2
  %2120 = extractvalue %dx.types.ResRet.f32 %2116, 3
  %2121 = and i32 %2110, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = lshr i32 %2110, 8
  %2124 = and i32 %2123, 255
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2120, %2122
  %2127 = fadd fast float %2126, %2125
  %2128 = fmul fast float %2127, 0x3F70101000000000
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = and i32 %2130, 512
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2141, label %2133

; <label>:2133                                    ; preds = %2108
  %2134 = add i32 %33, 480
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = add i32 %2136, 0
  %2138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2138, %dx.types.Handle %65, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  br label %2141

; <label>:2141                                    ; preds = %2133, %2108
  %2142 = phi float [ %2140, %2133 ], [ 1.000000e+00, %2108 ]
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 33554432
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2253, label %2147

; <label>:2147                                    ; preds = %2141
  %2148 = add i32 %33, 256
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = and i32 %2150, 65535
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = lshr i32 %2150, 16
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = add i32 %33, 260
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 65535
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = lshr i32 %2161, 24
  %2163 = uitofp i32 %2162 to float
  %2164 = fmul fast float %2163, 0x3F70101020000000
  %2165 = and i32 %2161, 255
  %2166 = uitofp i32 %2165 to float
  %2167 = fmul fast float %2166, 0x3F70101020000000
  %2168 = lshr i32 %2161, 8
  %2169 = and i32 %2168, 255
  %2170 = uitofp i32 %2169 to float
  %2171 = fmul fast float %2170, 0x3F70101020000000
  %2172 = lshr i32 %2161, 16
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F70101020000000
  %2176 = add i32 %33, 252
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 24
  %2180 = uitofp i32 %2179 to float
  %2181 = fmul fast float %2180, 0x3F70101020000000
  %2182 = and i32 %2178, 255
  %2183 = uitofp i32 %2182 to float
  %2184 = fmul fast float %2183, 0x3F70101020000000
  %2185 = lshr i32 %2178, 8
  %2186 = and i32 %2185, 255
  %2187 = uitofp i32 %2186 to float
  %2188 = fmul fast float %2187, 0x3F70101020000000
  %2189 = lshr i32 %2178, 16
  %2190 = and i32 %2189, 255
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2191, 0x3F70101020000000
  %2193 = bitcast float %2117 to i32
  %2194 = ashr i32 %2193, 1
  %2195 = sub nsw i32 1597463174, %2194
  %2196 = bitcast i32 %2195 to float
  %2197 = fmul fast float %2117, 5.000000e-01
  %2198 = fmul fast float %2196, %2196
  %2199 = fmul fast float %2198, %2197
  %2200 = fsub fast float 1.500000e+00, %2199
  %2201 = fmul fast float %2196, %2117
  %2202 = fmul fast float %2201, %2200
  %2203 = bitcast float %2118 to i32
  %2204 = ashr i32 %2203, 1
  %2205 = sub nsw i32 1597463174, %2204
  %2206 = bitcast i32 %2205 to float
  %2207 = fmul fast float %2118, 5.000000e-01
  %2208 = fmul fast float %2206, %2206
  %2209 = fmul fast float %2208, %2207
  %2210 = fsub fast float 1.500000e+00, %2209
  %2211 = fmul fast float %2206, %2118
  %2212 = fmul fast float %2211, %2210
  %2213 = bitcast float %2119 to i32
  %2214 = ashr i32 %2213, 1
  %2215 = sub nsw i32 1597463174, %2214
  %2216 = bitcast i32 %2215 to float
  %2217 = fmul fast float %2119, 5.000000e-01
  %2218 = fmul fast float %2216, %2216
  %2219 = fmul fast float %2218, %2217
  %2220 = fsub fast float 1.500000e+00, %2219
  %2221 = fmul fast float %2216, %2119
  %2222 = fmul fast float %2221, %2220
  %2223 = fsub fast float %2202, %2184
  %2224 = fsub fast float %2212, %2188
  %2225 = fsub fast float %2222, %2192
  %2226 = fmul fast float %2223, %2152
  %2227 = fmul fast float %2224, %2154
  %2228 = fmul fast float %2225, %2159
  %2229 = fadd fast float %2226, %2167
  %2230 = fadd fast float %2227, %2171
  %2231 = fadd fast float %2228, %2175
  %2232 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2233 = call float @dx.op.unary.f32(i32 7, float %2230)  ; Saturate(value)
  %2234 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2235 = fmul fast float %2232, %2232
  %2236 = fmul fast float %2233, %2233
  %2237 = fmul fast float %2234, %2234
  %2238 = fsub fast float %2235, %2117
  %2239 = fsub fast float %2236, %2118
  %2240 = fsub fast float %2237, %2119
  %2241 = fmul fast float %2238, %2142
  %2242 = fmul fast float %2239, %2142
  %2243 = fmul fast float %2240, %2142
  %2244 = fadd fast float %2241, %2117
  %2245 = fadd fast float %2242, %2118
  %2246 = fadd fast float %2243, %2119
  %2247 = fadd fast float %2164, %2128
  %2248 = fsub fast float %2247, %2181
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fsub fast float %2249, %2128
  %2251 = fmul fast float %2250, %2142
  %2252 = fadd fast float %2251, %2128
  br label %2306

; <label>:2253                                    ; preds = %2141
  %2254 = and i32 %2144, 134217728
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2290, label %2256

; <label>:2256                                    ; preds = %2253
  %2257 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2258 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2259 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2260 = fadd fast float %2257, -5.000000e-01
  %2261 = fadd fast float %2258, -5.000000e-01
  %2262 = fadd fast float %2259, -5.000000e-01
  %2263 = fmul fast float %2260, %2142
  %2264 = fmul fast float %2261, %2142
  %2265 = fmul fast float %2262, %2142
  %2266 = fadd fast float %2263, 5.000000e-01
  %2267 = fadd fast float %2264, 5.000000e-01
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = call float @dx.op.unary.f32(i32 24, float %2117)  ; Sqrt(value)
  %2270 = call float @dx.op.unary.f32(i32 24, float %2118)  ; Sqrt(value)
  %2271 = call float @dx.op.unary.f32(i32 24, float %2119)  ; Sqrt(value)
  %2272 = fmul fast float %2266, 2.000000e+00
  %2273 = fsub fast float 1.000000e+00, %2272
  %2274 = fmul fast float %2273, %2269
  %2275 = fadd fast float %2274, %2272
  %2276 = fmul fast float %2275, %2269
  %2277 = fmul fast float %2267, 2.000000e+00
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %2278, %2270
  %2280 = fadd fast float %2279, %2277
  %2281 = fmul fast float %2280, %2270
  %2282 = fmul fast float %2268, 2.000000e+00
  %2283 = fsub fast float 1.000000e+00, %2282
  %2284 = fmul fast float %2283, %2271
  %2285 = fadd fast float %2284, %2282
  %2286 = fmul fast float %2285, %2271
  %2287 = fmul fast float %2276, %2276
  %2288 = fmul fast float %2281, %2281
  %2289 = fmul fast float %2286, %2286
  br label %2306

; <label>:2290                                    ; preds = %2253
  %2291 = fmul fast float %275, %275
  %2292 = fmul fast float %279, %279
  %2293 = fmul fast float %283, %283
  %2294 = fadd fast float %2291, -1.000000e+00
  %2295 = fadd fast float %2292, -1.000000e+00
  %2296 = fadd fast float %2293, -1.000000e+00
  %2297 = fmul fast float %2142, %2294
  %2298 = fmul fast float %2142, %2295
  %2299 = fmul fast float %2142, %2296
  %2300 = fadd fast float %2297, 1.000000e+00
  %2301 = fadd fast float %2298, 1.000000e+00
  %2302 = fadd fast float %2299, 1.000000e+00
  %2303 = fmul fast float %2300, %2117
  %2304 = fmul fast float %2301, %2118
  %2305 = fmul fast float %2302, %2119
  br label %2306

; <label>:2306                                    ; preds = %2290, %2256, %2147, %2103
  %2307 = phi float [ %2252, %2147 ], [ %2128, %2256 ], [ %2128, %2290 ], [ 0x3FA23C0BE0000000, %2103 ]
  %2308 = phi float [ %2244, %2147 ], [ %2287, %2256 ], [ %2303, %2290 ], [ 1.000000e+00, %2103 ]
  %2309 = phi float [ %2245, %2147 ], [ %2288, %2256 ], [ %2304, %2290 ], [ 1.000000e+00, %2103 ]
  %2310 = phi float [ %2246, %2147 ], [ %2289, %2256 ], [ %2305, %2290 ], [ 1.000000e+00, %2103 ]
  %2311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.i32 %2311, 1
  %2313 = and i32 %2312, 1
  %2314 = icmp ne i32 %2313, 0
  %2315 = add i32 %33, 356
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 32
  %2319 = icmp ne i32 %2318, 0
  %2320 = and i1 %2314, %2319
  %2321 = select i1 %2320, float 1.000000e+00, float %2308
  %2322 = select i1 %2320, float 0x3FD3333340000000, float %2309
  %2323 = select i1 %2320, float 0x3FD3333340000000, float %2310
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 32
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2400, label %2328

; <label>:2328                                    ; preds = %2306
  %2329 = add i32 %33, 124
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %33, 416
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = add i32 %2334, 0
  %2336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2336, %dx.types.Handle %64, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2338 = extractvalue %dx.types.ResRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.ResRet.f32 %2337, 1
  %2340 = extractvalue %dx.types.ResRet.f32 %2337, 2
  %2341 = extractvalue %dx.types.ResRet.f32 %2337, 3
  %2342 = and i32 %2331, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = lshr i32 %2331, 8
  %2345 = and i32 %2344, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = lshr i32 %2331, 16
  %2348 = and i32 %2347, 255
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2349, 0x3F70101000000000
  %2351 = fmul fast float %2338, %2343
  %2352 = fadd fast float %2351, %2346
  %2353 = fmul fast float %2352, 0x3F70101000000000
  %2354 = fadd fast float %2339, -5.000000e-01
  %2355 = fadd fast float %2341, -5.000000e-01
  %2356 = fmul fast float %2354, %2350
  %2357 = fmul fast float %2355, %2350
  %2358 = fadd fast float %2356, 5.000000e-01
  %2359 = fadd fast float %2357, 5.000000e-01
  %2360 = fmul fast float %2358, 2.000000e+00
  %2361 = fadd fast float %2360, -1.000000e+00
  %2362 = fmul fast float %2359, 2.000000e+00
  %2363 = fadd fast float %2362, -1.000000e+00
  %2364 = fadd fast float %2361, %2363
  %2365 = fmul fast float %2364, 5.000000e-01
  %2366 = fsub fast float %2361, %2363
  %2367 = fmul fast float %2366, 5.000000e-01
  %2368 = call float @dx.op.unary.f32(i32 6, float %2365)  ; FAbs(value)
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2371 = fsub fast float %2369, %2370
  %2372 = call float @dx.op.dot3.f32(i32 55, float %2365, float %2367, float %2371, float %2365, float %2367, float %2371)  ; Dot3(ax,ay,az,bx,by,bz)
  %2373 = call float @dx.op.unary.f32(i32 25, float %2372)  ; Rsqrt(value)
  %2374 = fmul fast float %2365, %2373
  %2375 = fmul fast float %2367, %2373
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 67108864
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2396, label %2380

; <label>:2380                                    ; preds = %2328
  %2381 = add i32 %33, 312
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 65535
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = and i32 %2387, 65535
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2383, 16
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = fsub fast float %2353, %2391
  %2393 = fmul fast float %2392, %2385
  %2394 = fadd fast float %2393, %2389
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  br label %2396

; <label>:2396                                    ; preds = %2380, %2328
  %2397 = phi float [ %2395, %2380 ], [ %2353, %2328 ]
  %2398 = call float @dx.op.dot2.f32(i32 54, float %2374, float %2375, float %1817, float %1818)  ; Dot2(ax,ay,bx,by)
  %2399 = call float @dx.op.dot2.f32(i32 54, float %2374, float %2375, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  br label %2400

; <label>:2400                                    ; preds = %2396, %2306
  %2401 = phi float [ %2397, %2396 ], [ 0x3FD6666660000000, %2306 ]
  %2402 = phi float [ %2398, %2396 ], [ 0.000000e+00, %2306 ]
  %2403 = phi float [ %2399, %2396 ], [ 0.000000e+00, %2306 ]
  %2404 = phi float [ %2340, %2396 ], [ 1.000000e+00, %2306 ]
  %2405 = add i32 %33, 192
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = lshr i32 %2407, 22
  %2409 = shl nuw nsw i32 %2408, 5
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 64
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2448, label %2415

; <label>:2415                                    ; preds = %2400
  %2416 = add i32 %33, 432
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2416, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = add i32 %2418, 0
  %2420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 131072
  %2424 = icmp eq i32 %2423, 0
  %2425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2420, %dx.types.Handle %64, float %1913, float %1914, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2426 = extractvalue %dx.types.ResRet.f32 %2425, 0
  %2427 = extractvalue %dx.types.ResRet.f32 %2425, 1
  %2428 = extractvalue %dx.types.ResRet.f32 %2425, 2
  %2429 = fmul fast float %2426, %263
  %2430 = fmul fast float %2427, %266
  %2431 = fmul fast float %2428, %269
  br i1 %2424, label %2438, label %2432

; <label>:2432                                    ; preds = %2415
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = fmul fast float %2434, %2429
  %2436 = fmul fast float %2434, %2430
  %2437 = fmul fast float %2434, %2431
  br label %2438

; <label>:2438                                    ; preds = %2432, %2415
  %2439 = phi float [ %2435, %2432 ], [ %2429, %2415 ]
  %2440 = phi float [ %2436, %2432 ], [ %2430, %2415 ]
  %2441 = phi float [ %2437, %2432 ], [ %2431, %2415 ]
  %2442 = fmul fast float %2439, %2410
  %2443 = select i1 %173, float %2442, float %2439
  %2444 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2440, float %2441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = select i1 %173, float 0.000000e+00, float %2439
  %2446 = select i1 %173, float %2444, float %2440
  %2447 = select i1 %173, float 0.000000e+00, float %2441
  br label %2448

; <label>:2448                                    ; preds = %2438, %2400
  %2449 = phi float [ %2445, %2438 ], [ 0.000000e+00, %2400 ]
  %2450 = phi float [ %2446, %2438 ], [ 0.000000e+00, %2400 ]
  %2451 = phi float [ %2447, %2438 ], [ 0.000000e+00, %2400 ]
  %2452 = add i32 %33, 128
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 255
  %2456 = uitofp i32 %2455 to float
  %2457 = lshr i32 %2454, 8
  %2458 = and i32 %2457, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2322, float %2323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = fmul fast float %2459, %2460
  %2462 = fadd fast float %2461, %2456
  %2463 = fmul fast float %2462, 0x3F70101020000000
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  br i1 %1805, label %2465, label %2473

; <label>:2465                                    ; preds = %2448
  %2466 = fsub fast float 1.000000e+00, %2101
  %2467 = fmul fast float %2466, %1794
  %2468 = fmul fast float %2466, %1795
  %2469 = fmul fast float %2466, %1796
  %2470 = fmul fast float %2466, %1797
  %2471 = fmul fast float %2466, %1798
  %2472 = fmul fast float %2466, %1799
  br label %2473

; <label>:2473                                    ; preds = %2465, %2448
  %2474 = phi float [ %2467, %2465 ], [ %1794, %2448 ]
  %2475 = phi float [ %2468, %2465 ], [ %1795, %2448 ]
  %2476 = phi float [ %2469, %2465 ], [ %1796, %2448 ]
  %2477 = phi float [ %2470, %2465 ], [ %1797, %2448 ]
  %2478 = phi float [ %2471, %2465 ], [ %1798, %2448 ]
  %2479 = phi float [ %2472, %2465 ], [ %1799, %2448 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 3
  %2483 = icmp eq i32 %2482, 3
  br i1 %2483, label %2562, label %2484

; <label>:2484                                    ; preds = %2473
  %2485 = and i32 %2481, 16
  %2486 = icmp ne i32 %2485, 0
  %2487 = select i1 %2486, float %2101, float 0.000000e+00
  %2488 = icmp eq i32 %2482, 0
  br i1 %2488, label %2489, label %2517

; <label>:2489                                    ; preds = %2484
  %2490 = and i32 %2481, 64
  %2491 = icmp ne i32 %2490, 0
  %2492 = select i1 %2491, float %2101, float 0.000000e+00
  %2493 = fsub fast float %2321, %2474
  %2494 = fsub fast float %2322, %2475
  %2495 = fsub fast float %2323, %2476
  %2496 = fmul fast float %2487, %2493
  %2497 = fmul fast float %2487, %2494
  %2498 = fmul fast float %2487, %2495
  %2499 = fadd fast float %2496, %2474
  %2500 = fadd fast float %2497, %2475
  %2501 = fadd fast float %2498, %2476
  %2502 = fsub fast float %2307, %1800
  %2503 = fmul fast float %2487, %2502
  %2504 = fadd fast float %2503, %1800
  %2505 = fsub fast float %2449, %2477
  %2506 = fsub fast float %2450, %2478
  %2507 = fsub fast float %2451, %2479
  %2508 = fmul fast float %2492, %2505
  %2509 = fmul fast float %2492, %2506
  %2510 = fmul fast float %2492, %2507
  %2511 = fadd fast float %2508, %2477
  %2512 = fadd fast float %2509, %2478
  %2513 = fadd fast float %2510, %2479
  %2514 = fsub fast float %2464, %1803
  %2515 = fmul fast float %2487, %2514
  %2516 = fadd fast float %2515, %1803
  br label %2562

; <label>:2517                                    ; preds = %2484
  %2518 = icmp eq i32 %2482, 1
  br i1 %2518, label %2519, label %2532

; <label>:2519                                    ; preds = %2517
  %2520 = fadd fast float %2321, -1.000000e+00
  %2521 = fadd fast float %2322, -1.000000e+00
  %2522 = fadd fast float %2323, -1.000000e+00
  %2523 = fmul fast float %2487, %2520
  %2524 = fmul fast float %2487, %2521
  %2525 = fmul fast float %2487, %2522
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fmul fast float %2526, %2474
  %2530 = fmul fast float %2527, %2475
  %2531 = fmul fast float %2528, %2476
  br label %2562

; <label>:2532                                    ; preds = %2517
  %2533 = icmp eq i32 %2482, 2
  br i1 %2533, label %2534, label %2562

; <label>:2534                                    ; preds = %2532
  %2535 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2536 = call float @dx.op.unary.f32(i32 24, float %2322)  ; Sqrt(value)
  %2537 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2538 = fadd fast float %2535, -5.000000e-01
  %2539 = fadd fast float %2536, -5.000000e-01
  %2540 = fadd fast float %2537, -5.000000e-01
  %2541 = fmul fast float %2538, %2487
  %2542 = fmul fast float %2539, %2487
  %2543 = fmul fast float %2540, %2487
  %2544 = fadd fast float %2541, 5.000000e-01
  %2545 = fadd fast float %2542, 5.000000e-01
  %2546 = fadd fast float %2543, 5.000000e-01
  %2547 = fmul fast float %2544, 2.000000e+00
  %2548 = fsub fast float 1.000000e+00, %2547
  %2549 = fmul fast float %2548, %2474
  %2550 = fadd fast float %2549, %2547
  %2551 = fmul fast float %2550, %2474
  %2552 = fmul fast float %2545, 2.000000e+00
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = fmul fast float %2553, %2475
  %2555 = fadd fast float %2554, %2552
  %2556 = fmul fast float %2555, %2475
  %2557 = fmul fast float %2546, 2.000000e+00
  %2558 = fsub fast float 1.000000e+00, %2557
  %2559 = fmul fast float %2558, %2476
  %2560 = fadd fast float %2559, %2557
  %2561 = fmul fast float %2560, %2476
  br label %2562

; <label>:2562                                    ; preds = %2534, %2532, %2519, %2489, %2473
  %2563 = phi float [ %2474, %2473 ], [ %2551, %2534 ], [ %2474, %2532 ], [ %2529, %2519 ], [ %2499, %2489 ]
  %2564 = phi float [ %2475, %2473 ], [ %2556, %2534 ], [ %2475, %2532 ], [ %2530, %2519 ], [ %2500, %2489 ]
  %2565 = phi float [ %2476, %2473 ], [ %2561, %2534 ], [ %2476, %2532 ], [ %2531, %2519 ], [ %2501, %2489 ]
  %2566 = phi float [ %2477, %2473 ], [ %2477, %2534 ], [ %2477, %2532 ], [ %2477, %2519 ], [ %2511, %2489 ]
  %2567 = phi float [ %2478, %2473 ], [ %2478, %2534 ], [ %2478, %2532 ], [ %2478, %2519 ], [ %2512, %2489 ]
  %2568 = phi float [ %2479, %2473 ], [ %2479, %2534 ], [ %2479, %2532 ], [ %2479, %2519 ], [ %2513, %2489 ]
  %2569 = phi float [ %1800, %2473 ], [ %1800, %2534 ], [ %1800, %2532 ], [ %1800, %2519 ], [ %2504, %2489 ]
  %2570 = phi float [ %1803, %2473 ], [ %1803, %2534 ], [ %1803, %2532 ], [ %1803, %2519 ], [ %2516, %2489 ]
  %2571 = and i32 %2481, 12
  %2572 = icmp eq i32 %2571, 12
  br i1 %2572, label %2645, label %2573

; <label>:2573                                    ; preds = %2562
  %2574 = and i32 %2481, 2097184
  %2575 = icmp eq i32 %2574, 2097184
  %2576 = select i1 %2575, float %2101, float 0.000000e+00
  %2577 = and i32 %2481, 4194336
  %2578 = icmp eq i32 %2577, 4194336
  %2579 = select i1 %2578, float %2101, float 0.000000e+00
  %2580 = and i32 %2481, 8388640
  %2581 = icmp eq i32 %2580, 8388640
  %2582 = select i1 %2581, float %2101, float 0.000000e+00
  %2583 = icmp eq i32 %2571, 0
  br i1 %2583, label %2584, label %2597

; <label>:2584                                    ; preds = %2573
  %2585 = fsub fast float %2402, %1792
  %2586 = fsub fast float %2403, %1793
  %2587 = fmul fast float %2576, %2585
  %2588 = fmul fast float %2576, %2586
  %2589 = fadd fast float %2587, %1792
  %2590 = fadd fast float %2588, %1793
  %2591 = fsub fast float %2404, %1802
  %2592 = fmul fast float %2579, %2591
  %2593 = fadd fast float %2592, %1802
  %2594 = fsub fast float %2401, %1801
  %2595 = fmul fast float %2582, %2594
  %2596 = fadd fast float %2595, %1801
  br label %2645

; <label>:2597                                    ; preds = %2573
  %2598 = icmp eq i32 %2571, 4
  br i1 %2598, label %2599, label %2631

; <label>:2599                                    ; preds = %2597
  %2600 = fmul fast float %2576, %2402
  %2601 = fmul fast float %2576, %2403
  %2602 = fadd fast float %2600, %1792
  %2603 = fadd fast float %2601, %1793
  %2604 = call float @dx.op.binary.f32(i32 36, float %1802, float %2404)  ; FMin(a,b)
  %2605 = fsub fast float %2604, %1802
  %2606 = fmul fast float %2605, %2579
  %2607 = fadd fast float %2606, %1802
  %2608 = fadd fast float %2401, %1801
  %2609 = fmul fast float %2608, 0x3FF337FAE0000000
  %2610 = fmul fast float %1801, %1801
  %2611 = fmul fast float %2401, %2401
  %2612 = fadd fast float %2611, %2610
  %2613 = fmul fast float %2612, 0x3FE5152B00000000
  %2614 = fmul fast float %1801, 0xBFCC1F85E0000000
  %2615 = fmul fast float %2614, %2401
  %2616 = fadd fast float %2615, 0xBFE1363700000000
  %2617 = fadd fast float %2616, %2609
  %2618 = fsub fast float %2617, %2613
  %2619 = fmul fast float %2608, 0x3FBA6F0D00000000
  %2620 = fmul fast float %2612, 0x3FD0432880000000
  %2621 = fmul fast float %1801, 0xBFEF110800000000
  %2622 = fmul fast float %2621, %2401
  %2623 = fadd fast float %2622, 1.000000e+00
  %2624 = fsub fast float %2623, %2619
  %2625 = fadd fast float %2624, %2620
  %2626 = fdiv fast float %2618, %2625
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  %2628 = fsub fast float %2627, %1801
  %2629 = fmul fast float %2628, %2582
  %2630 = fadd fast float %2629, %1801
  br label %2645

; <label>:2631                                    ; preds = %2597
  %2632 = icmp eq i32 %2571, 8
  br i1 %2632, label %2633, label %2645

; <label>:2633                                    ; preds = %2631
  %2634 = fmul fast float %2576, %2402
  %2635 = fmul fast float %2576, %2403
  %2636 = fadd fast float %2634, %1792
  %2637 = fadd fast float %2635, %1793
  %2638 = call float @dx.op.binary.f32(i32 36, float %1802, float %2404)  ; FMin(a,b)
  %2639 = fsub fast float %2638, %1802
  %2640 = fmul fast float %2639, %2579
  %2641 = fadd fast float %2640, %1802
  %2642 = fsub fast float %2401, %1801
  %2643 = fmul fast float %2582, %2642
  %2644 = fadd fast float %2643, %1801
  br label %2645

; <label>:2645                                    ; preds = %2633, %2631, %2599, %2584, %2562, %2100, %1804, %1791
  %2646 = phi float [ %1792, %2562 ], [ %1792, %2100 ], [ %1792, %1791 ], [ %2636, %2633 ], [ %1792, %2631 ], [ %2602, %2599 ], [ %2589, %2584 ], [ %1792, %1804 ]
  %2647 = phi float [ %1793, %2562 ], [ %1793, %2100 ], [ %1793, %1791 ], [ %2637, %2633 ], [ %1793, %2631 ], [ %2603, %2599 ], [ %2590, %2584 ], [ %1793, %1804 ]
  %2648 = phi float [ %2563, %2562 ], [ %1794, %2100 ], [ %1794, %1791 ], [ %2563, %2633 ], [ %2563, %2631 ], [ %2563, %2599 ], [ %2563, %2584 ], [ %1794, %1804 ]
  %2649 = phi float [ %2564, %2562 ], [ %1795, %2100 ], [ %1795, %1791 ], [ %2564, %2633 ], [ %2564, %2631 ], [ %2564, %2599 ], [ %2564, %2584 ], [ %1795, %1804 ]
  %2650 = phi float [ %2565, %2562 ], [ %1796, %2100 ], [ %1796, %1791 ], [ %2565, %2633 ], [ %2565, %2631 ], [ %2565, %2599 ], [ %2565, %2584 ], [ %1796, %1804 ]
  %2651 = phi float [ %2566, %2562 ], [ %1797, %2100 ], [ %1797, %1791 ], [ %2566, %2633 ], [ %2566, %2631 ], [ %2566, %2599 ], [ %2566, %2584 ], [ %1797, %1804 ]
  %2652 = phi float [ %2567, %2562 ], [ %1798, %2100 ], [ %1798, %1791 ], [ %2567, %2633 ], [ %2567, %2631 ], [ %2567, %2599 ], [ %2567, %2584 ], [ %1798, %1804 ]
  %2653 = phi float [ %2568, %2562 ], [ %1799, %2100 ], [ %1799, %1791 ], [ %2568, %2633 ], [ %2568, %2631 ], [ %2568, %2599 ], [ %2568, %2584 ], [ %1799, %1804 ]
  %2654 = phi float [ %2569, %2562 ], [ %1800, %2100 ], [ %1800, %1791 ], [ %2569, %2633 ], [ %2569, %2631 ], [ %2569, %2599 ], [ %2569, %2584 ], [ %1800, %1804 ]
  %2655 = phi float [ %1801, %2562 ], [ %1801, %2100 ], [ %1801, %1791 ], [ %2644, %2633 ], [ %1801, %2631 ], [ %2630, %2599 ], [ %2596, %2584 ], [ %1801, %1804 ]
  %2656 = phi float [ %1802, %2562 ], [ %1802, %2100 ], [ %1802, %1791 ], [ %2641, %2633 ], [ %1802, %2631 ], [ %2607, %2599 ], [ %2593, %2584 ], [ %1802, %1804 ]
  %2657 = phi float [ %2570, %2562 ], [ %1803, %2100 ], [ %1803, %1791 ], [ %2570, %2633 ], [ %2570, %2631 ], [ %2570, %2599 ], [ %2570, %2584 ], [ %1803, %1804 ]
  br i1 %350, label %3499, label %2658

; <label>:2658                                    ; preds = %2645
  %2659 = icmp ult i32 %401, 4
  %2660 = add i32 %33, 72
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = add i32 %33, 76
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = or i32 %2665, %2662
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %3499, label %2668

; <label>:2668                                    ; preds = %2658
  %2669 = and i32 %2662, 262144
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %36, float 1.000000e+00
  %2672 = select i1 %2670, float %37, float 0.000000e+00
  %2673 = select i1 %2670, float %38, float 0.000000e+00
  %2674 = select i1 %2670, float %39, float 1.000000e+00
  %2675 = select i1 %2670, float %40, float %56
  %2676 = select i1 %2670, float %41, float %57
  %2677 = add i32 %33, 332
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fmul fast float %2681, 0x3F50624DE0000000
  %2683 = add i32 %33, 136
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 16
  %2687 = and i32 %2686, 255
  %2688 = lshr i32 %2685, 24
  %2689 = add i32 %33, 340
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = lshr i32 %2691, 16
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = add i32 %33, 80
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = lshr i32 %2698, 22
  %2700 = shl nuw nsw i32 %2699, 5
  %2701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2700)  ; LegacyF16ToF32(value)
  %2702 = shl i32 %2698, 4
  %2703 = and i32 %2702, 32752
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = lshr i32 %2698, 7
  %2706 = and i32 %2705, 32752
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 3
  %2710 = fmul fast float %2709, 1.000000e+03
  %2711 = fmul fast float %340, %2710
  %2712 = call float @dx.op.unary.f32(i32 22, float %2711)  ; Frc(value)
  %2713 = fadd fast float %2712, %330
  %2714 = fmul fast float %341, %2710
  %2715 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2716 = fadd fast float %2715, %332
  %2717 = fmul fast float %2682, %2710
  %2718 = call float @dx.op.unary.f32(i32 22, float %2717)  ; Frc(value)
  %2719 = fmul fast float %2718, 0x401921FB60000000
  %2720 = fadd fast float %2719, %2701
  %2721 = call float @dx.op.unary.f32(i32 13, float %2720)  ; Sin(value)
  %2722 = call float @dx.op.unary.f32(i32 12, float %2720)  ; Cos(value)
  %2723 = fsub fast float -0.000000e+00, %2721
  %2724 = fadd fast float %2675, -5.000000e-01
  %2725 = fadd fast float %2676, -5.000000e-01
  %2726 = fmul fast float %2693, %2724
  %2727 = fmul fast float %2695, %2725
  %2728 = fadd fast float %2726, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fmul fast float %2704, %2728
  %2731 = fmul fast float %2707, %2729
  %2732 = fmul fast float %2722, %2730
  %2733 = call float @dx.op.tertiary.f32(i32 46, float %2723, float %2731, float %2732)  ; FMad(a,b,c)
  %2734 = fmul fast float %2721, %2730
  %2735 = call float @dx.op.tertiary.f32(i32 46, float %2722, float %2731, float %2734)  ; FMad(a,b,c)
  %2736 = fadd fast float %2713, %2733
  %2737 = fadd fast float %2716, %2735
  %2738 = icmp ugt i32 %2687, 1
  %2739 = icmp ugt i32 %2685, 33554431
  %2740 = or i1 %2739, %2738
  br i1 %2740, label %2741, label %2766

; <label>:2741                                    ; preds = %2668
  %2742 = add i32 %33, 276
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 16
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = fmul fast float %2709, %2746
  %2748 = call float @dx.op.unary.f32(i32 22, float %2747)  ; Frc(value)
  %2749 = mul nuw nsw i32 %2687, %2688
  %2750 = uitofp i32 %2749 to float
  %2751 = fmul fast float %2748, %2750
  %2752 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2753 = fptoui float %2752 to i32
  %2754 = urem i32 %2753, %2687
  %2755 = udiv i32 %2753, %2688
  %2756 = call float @dx.op.unary.f32(i32 22, float %2736)  ; Frc(value)
  %2757 = call float @dx.op.unary.f32(i32 22, float %2737)  ; Frc(value)
  %2758 = uitofp i32 %2754 to float
  %2759 = uitofp i32 %2755 to float
  %2760 = fadd fast float %2756, %2758
  %2761 = fadd fast float %2757, %2759
  %2762 = uitofp i32 %2687 to float
  %2763 = uitofp i32 %2688 to float
  %2764 = fdiv fast float %2760, %2762
  %2765 = fdiv fast float %2761, %2763
  br label %2766

; <label>:2766                                    ; preds = %2741, %2668
  %2767 = phi float [ %2764, %2741 ], [ %2736, %2668 ]
  %2768 = phi float [ %2765, %2741 ], [ %2737, %2668 ]
  %2769 = and i32 %2662, 16777216
  %2770 = icmp eq i32 %2769, 0
  br i1 %2770, label %2880, label %2771

; <label>:2771                                    ; preds = %2766
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2775 = extractvalue %dx.types.CBufRet.f32 %2772, 2
  %2776 = fadd fast float %2773, %131
  %2777 = fadd fast float %2774, %132
  %2778 = fadd fast float %2775, %133
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = icmp eq i32 %34, 65535
  br i1 %2782, label %2877, label %2783

; <label>:2783                                    ; preds = %2771
  %2784 = lshr i32 %34, 1
  %2785 = shl i32 %2784, 2
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %34, 1
  %2789 = icmp ne i32 %2788, 0
  %2790 = lshr i32 %2787, 16
  %2791 = and i32 %2787, 65535
  %2792 = select i1 %2789, i32 %2790, i32 %2791
  %2793 = icmp eq i32 %2792, 65535
  br i1 %2793, label %2873, label %2794

; <label>:2794                                    ; preds = %2783
  %2795 = mul nuw nsw i32 %2792, 40
  %2796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = add nuw nsw i32 %2795, 12
  %2801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.ResRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.ResRet.f32 %2801, 2
  %2805 = add nuw nsw i32 %2795, 24
  %2806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.ResRet.f32 %2806, 2
  %2810 = add nuw nsw i32 %2795, 36
  %2811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = fsub fast float %2776, %2797
  %2814 = fsub fast float %2777, %2798
  %2815 = fsub fast float %2778, %2799
  %2816 = fmul fast float %2812, %2813
  %2817 = fmul fast float %2812, %2814
  %2818 = fmul fast float %2812, %2815
  %2819 = call float @dx.op.unary.f32(i32 27, float %2816)  ; Round_ni(value)
  %2820 = call float @dx.op.unary.f32(i32 27, float %2817)  ; Round_ni(value)
  %2821 = call float @dx.op.unary.f32(i32 27, float %2818)  ; Round_ni(value)
  %2822 = fadd fast float %2819, 5.000000e-01
  %2823 = fadd fast float %2820, 5.000000e-01
  %2824 = fadd fast float %2821, 5.000000e-01
  %2825 = fmul fast float %2822, %2802
  %2826 = fmul fast float %2823, %2803
  %2827 = fmul fast float %2824, %2804
  %2828 = shl i32 %34, 2
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call float @dx.op.unary.f32(i32 22, float %2825)  ; Frc(value)
  %2834 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2835 = call float @dx.op.unary.f32(i32 22, float %2827)  ; Frc(value)
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2832, %dx.types.Handle %30, float %2833, float %2834, float %2835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = fmul fast float %2837, 1.023000e+03
  %2841 = fmul fast float %2838, 1.023000e+03
  %2842 = fmul fast float %2839, 1.023000e+03
  %2843 = fadd fast float %2840, 5.000000e-01
  %2844 = fadd fast float %2841, 5.000000e-01
  %2845 = fadd fast float %2842, 5.000000e-01
  %2846 = call float @dx.op.unary.f32(i32 27, float %2843)  ; Round_ni(value)
  %2847 = call float @dx.op.unary.f32(i32 27, float %2844)  ; Round_ni(value)
  %2848 = call float @dx.op.unary.f32(i32 27, float %2845)  ; Round_ni(value)
  %2849 = fsub fast float %2816, %2819
  %2850 = fsub fast float %2817, %2820
  %2851 = fsub fast float %2818, %2821
  %2852 = fmul fast float %2849, 7.500000e-01
  %2853 = fmul fast float %2850, 7.500000e-01
  %2854 = fmul fast float %2851, 7.500000e-01
  %2855 = fadd fast float %2819, 1.250000e-01
  %2856 = fadd fast float %2855, %2852
  %2857 = fadd fast float %2856, %2846
  %2858 = fadd fast float %2820, 1.250000e-01
  %2859 = fadd fast float %2858, %2853
  %2860 = fadd fast float %2859, %2847
  %2861 = fadd fast float %2821, 1.250000e-01
  %2862 = fadd fast float %2861, %2854
  %2863 = fadd fast float %2862, %2848
  %2864 = fmul fast float %2857, %2807
  %2865 = fmul fast float %2860, %2808
  %2866 = fmul fast float %2863, %2809
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %2868, 0
  %2870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2870, %dx.types.Handle %28, float %2864, float %2865, float %2866, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 0
  br label %2873

; <label>:2873                                    ; preds = %2794, %2783
  %2874 = phi float [ %2872, %2794 ], [ -1.000000e+00, %2783 ]
  %2875 = fadd fast float %2874, %2781
  %2876 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  br label %2877

; <label>:2877                                    ; preds = %2873, %2771
  %2878 = phi float [ %2876, %2873 ], [ %2781, %2771 ]
  %2879 = fmul fast float %2878, %396
  br label %2880

; <label>:2880                                    ; preds = %2877, %2766
  %2881 = phi float [ %2879, %2877 ], [ %396, %2766 ]
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 256
  %2885 = icmp eq i32 %2884, 0
  br i1 %2885, label %2932, label %2886

; <label>:2886                                    ; preds = %2880
  %2887 = add i32 %33, 468
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = add i32 %2889, 0
  %2891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2891, %dx.types.Handle %65, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 0
  %2894 = add i32 %33, 148
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = shl i32 %2896, 4
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2896, 7
  %2901 = and i32 %2900, 32752
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = fsub fast float 1.000000e+00, %2881
  %2904 = call float @dx.op.binary.f32(i32 35, float %2903, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2905 = bitcast float %2881 to i32
  %2906 = sitofp i32 %2905 to float
  %2907 = fadd fast float %2906, 0xC1CFBF8940000000
  %2908 = fmul fast float %2902, %2907
  %2909 = fadd fast float %2908, 0x41CFBF8940000000
  %2910 = fptosi float %2909 to i32
  %2911 = bitcast i32 %2910 to float
  %2912 = bitcast float %2904 to i32
  %2913 = sitofp i32 %2912 to float
  %2914 = fadd fast float %2913, 0xC1CFBF8940000000
  %2915 = fmul fast float %2914, %2902
  %2916 = fadd fast float %2915, 0x41CFBF8940000000
  %2917 = fptosi float %2916 to i32
  %2918 = bitcast i32 %2917 to float
  %2919 = fmul fast float %2911, %2899
  %2920 = fmul fast float %2918, %2899
  %2921 = fsub fast float %2904, %2919
  %2922 = fadd fast float %2920, %2904
  %2923 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2924 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2925 = fsub fast float %2893, %2923
  %2926 = fsub fast float %2924, %2923
  %2927 = bitcast float %2926 to i32
  %2928 = sub nsw i32 2129859010, %2927
  %2929 = bitcast i32 %2928 to float
  %2930 = fmul fast float %2929, %2925
  %2931 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  br label %2932

; <label>:2932                                    ; preds = %2886, %2880
  %2933 = phi float [ %2931, %2886 ], [ %2881, %2880 ]
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 128
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %2954, label %2938

; <label>:2938                                    ; preds = %2932
  %2939 = add i32 %33, 452
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = add i32 %2941, 0
  %2943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2943, %dx.types.Handle %65, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 524288
  %2949 = icmp ne i32 %2948, 0
  %2950 = fcmp fast ogt float %2945, 0x3FE0101020000000
  %2951 = select i1 %2950, float 1.000000e+00, float 0.000000e+00
  %2952 = select i1 %2949, float %2951, float %2945
  %2953 = fmul fast float %2952, %2933
  br label %2954

; <label>:2954                                    ; preds = %2938, %2932
  %2955 = phi float [ %2953, %2938 ], [ %2933, %2932 ]
  %2956 = fcmp fast ult float %2955, 0x3F70101020000000
  br i1 %2956, label %3499, label %2957

; <label>:2957                                    ; preds = %2954
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 16
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %3160, label %2962

; <label>:2962                                    ; preds = %2957
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = add i32 %33, 404
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = add i32 %2967, 0
  %2969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2969, %dx.types.Handle %64, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = extractvalue %dx.types.ResRet.f32 %2970, 3
  %2975 = and i32 %2964, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = lshr i32 %2964, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2974, %2976
  %2981 = fadd fast float %2980, %2979
  %2982 = fmul fast float %2981, 0x3F70101000000000
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 512
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %2995, label %2987

; <label>:2987                                    ; preds = %2962
  %2988 = add i32 %33, 484
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = add i32 %2990, 0
  %2992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2992, %dx.types.Handle %65, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  br label %2995

; <label>:2995                                    ; preds = %2987, %2962
  %2996 = phi float [ %2994, %2987 ], [ 1.000000e+00, %2962 ]
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 33554432
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3107, label %3001

; <label>:3001                                    ; preds = %2995
  %3002 = add i32 %33, 272
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 65535
  %3006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3005)  ; LegacyF16ToF32(value)
  %3007 = lshr i32 %3004, 16
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = add i32 %33, 276
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, 65535
  %3013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3012)  ; LegacyF16ToF32(value)
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = lshr i32 %3015, 24
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = and i32 %3015, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = lshr i32 %3015, 8
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = lshr i32 %3015, 16
  %3027 = and i32 %3026, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 0x3F70101020000000
  %3030 = add i32 %33, 268
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = lshr i32 %3032, 24
  %3034 = uitofp i32 %3033 to float
  %3035 = fmul fast float %3034, 0x3F70101020000000
  %3036 = and i32 %3032, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = fmul fast float %3037, 0x3F70101020000000
  %3039 = lshr i32 %3032, 8
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F70101020000000
  %3043 = lshr i32 %3032, 16
  %3044 = and i32 %3043, 255
  %3045 = uitofp i32 %3044 to float
  %3046 = fmul fast float %3045, 0x3F70101020000000
  %3047 = bitcast float %2971 to i32
  %3048 = ashr i32 %3047, 1
  %3049 = sub nsw i32 1597463174, %3048
  %3050 = bitcast i32 %3049 to float
  %3051 = fmul fast float %2971, 5.000000e-01
  %3052 = fmul fast float %3050, %3050
  %3053 = fmul fast float %3052, %3051
  %3054 = fsub fast float 1.500000e+00, %3053
  %3055 = fmul fast float %3050, %2971
  %3056 = fmul fast float %3055, %3054
  %3057 = bitcast float %2972 to i32
  %3058 = ashr i32 %3057, 1
  %3059 = sub nsw i32 1597463174, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = fmul fast float %2972, 5.000000e-01
  %3062 = fmul fast float %3060, %3060
  %3063 = fmul fast float %3062, %3061
  %3064 = fsub fast float 1.500000e+00, %3063
  %3065 = fmul fast float %3060, %2972
  %3066 = fmul fast float %3065, %3064
  %3067 = bitcast float %2973 to i32
  %3068 = ashr i32 %3067, 1
  %3069 = sub nsw i32 1597463174, %3068
  %3070 = bitcast i32 %3069 to float
  %3071 = fmul fast float %2973, 5.000000e-01
  %3072 = fmul fast float %3070, %3070
  %3073 = fmul fast float %3072, %3071
  %3074 = fsub fast float 1.500000e+00, %3073
  %3075 = fmul fast float %3070, %2973
  %3076 = fmul fast float %3075, %3074
  %3077 = fsub fast float %3056, %3038
  %3078 = fsub fast float %3066, %3042
  %3079 = fsub fast float %3076, %3046
  %3080 = fmul fast float %3077, %3006
  %3081 = fmul fast float %3078, %3008
  %3082 = fmul fast float %3079, %3013
  %3083 = fadd fast float %3080, %3021
  %3084 = fadd fast float %3081, %3025
  %3085 = fadd fast float %3082, %3029
  %3086 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3087 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3088 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3089 = fmul fast float %3086, %3086
  %3090 = fmul fast float %3087, %3087
  %3091 = fmul fast float %3088, %3088
  %3092 = fsub fast float %3089, %2971
  %3093 = fsub fast float %3090, %2972
  %3094 = fsub fast float %3091, %2973
  %3095 = fmul fast float %3092, %2996
  %3096 = fmul fast float %3093, %2996
  %3097 = fmul fast float %3094, %2996
  %3098 = fadd fast float %3095, %2971
  %3099 = fadd fast float %3096, %2972
  %3100 = fadd fast float %3097, %2973
  %3101 = fadd fast float %3018, %2982
  %3102 = fsub fast float %3101, %3035
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3104 = fsub fast float %3103, %2982
  %3105 = fmul fast float %3104, %2996
  %3106 = fadd fast float %3105, %2982
  br label %3160

; <label>:3107                                    ; preds = %2995
  %3108 = and i32 %2998, 134217728
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3144, label %3110

; <label>:3110                                    ; preds = %3107
  %3111 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3112 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3113 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3114 = fadd fast float %3111, -5.000000e-01
  %3115 = fadd fast float %3112, -5.000000e-01
  %3116 = fadd fast float %3113, -5.000000e-01
  %3117 = fmul fast float %3114, %2996
  %3118 = fmul fast float %3115, %2996
  %3119 = fmul fast float %3116, %2996
  %3120 = fadd fast float %3117, 5.000000e-01
  %3121 = fadd fast float %3118, 5.000000e-01
  %3122 = fadd fast float %3119, 5.000000e-01
  %3123 = call float @dx.op.unary.f32(i32 24, float %2971)  ; Sqrt(value)
  %3124 = call float @dx.op.unary.f32(i32 24, float %2972)  ; Sqrt(value)
  %3125 = call float @dx.op.unary.f32(i32 24, float %2973)  ; Sqrt(value)
  %3126 = fmul fast float %3120, 2.000000e+00
  %3127 = fsub fast float 1.000000e+00, %3126
  %3128 = fmul fast float %3127, %3123
  %3129 = fadd fast float %3128, %3126
  %3130 = fmul fast float %3129, %3123
  %3131 = fmul fast float %3121, 2.000000e+00
  %3132 = fsub fast float 1.000000e+00, %3131
  %3133 = fmul fast float %3132, %3124
  %3134 = fadd fast float %3133, %3131
  %3135 = fmul fast float %3134, %3124
  %3136 = fmul fast float %3122, 2.000000e+00
  %3137 = fsub fast float 1.000000e+00, %3136
  %3138 = fmul fast float %3137, %3125
  %3139 = fadd fast float %3138, %3136
  %3140 = fmul fast float %3139, %3125
  %3141 = fmul fast float %3130, %3130
  %3142 = fmul fast float %3135, %3135
  %3143 = fmul fast float %3140, %3140
  br label %3160

; <label>:3144                                    ; preds = %3107
  %3145 = fmul fast float %317, %317
  %3146 = fmul fast float %321, %321
  %3147 = fmul fast float %325, %325
  %3148 = fadd fast float %3145, -1.000000e+00
  %3149 = fadd fast float %3146, -1.000000e+00
  %3150 = fadd fast float %3147, -1.000000e+00
  %3151 = fmul fast float %2996, %3148
  %3152 = fmul fast float %2996, %3149
  %3153 = fmul fast float %2996, %3150
  %3154 = fadd fast float %3151, 1.000000e+00
  %3155 = fadd fast float %3152, 1.000000e+00
  %3156 = fadd fast float %3153, 1.000000e+00
  %3157 = fmul fast float %3154, %2971
  %3158 = fmul fast float %3155, %2972
  %3159 = fmul fast float %3156, %2973
  br label %3160

; <label>:3160                                    ; preds = %3144, %3110, %3001, %2957
  %3161 = phi float [ %3106, %3001 ], [ %2982, %3110 ], [ %2982, %3144 ], [ 0x3FA23C0BE0000000, %2957 ]
  %3162 = phi float [ %3098, %3001 ], [ %3141, %3110 ], [ %3157, %3144 ], [ 1.000000e+00, %2957 ]
  %3163 = phi float [ %3099, %3001 ], [ %3142, %3110 ], [ %3158, %3144 ], [ 1.000000e+00, %2957 ]
  %3164 = phi float [ %3100, %3001 ], [ %3143, %3110 ], [ %3159, %3144 ], [ 1.000000e+00, %2957 ]
  %3165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.i32 %3165, 1
  %3167 = and i32 %3166, 1
  %3168 = icmp ne i32 %3167, 0
  %3169 = add i32 %33, 356
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 32
  %3173 = icmp ne i32 %3172, 0
  %3174 = and i1 %3168, %3173
  %3175 = select i1 %3174, float 1.000000e+00, float %3162
  %3176 = select i1 %3174, float 0x3FD3333340000000, float %3163
  %3177 = select i1 %3174, float 0x3FD3333340000000, float %3164
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 32
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3254, label %3182

; <label>:3182                                    ; preds = %3160
  %3183 = add i32 %33, 140
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %33, 420
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = add i32 %3188, 0
  %3190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3190, %dx.types.Handle %64, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3192 = extractvalue %dx.types.ResRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.ResRet.f32 %3191, 1
  %3194 = extractvalue %dx.types.ResRet.f32 %3191, 2
  %3195 = extractvalue %dx.types.ResRet.f32 %3191, 3
  %3196 = and i32 %3185, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = lshr i32 %3185, 8
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = lshr i32 %3185, 16
  %3202 = and i32 %3201, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101000000000
  %3205 = fmul fast float %3192, %3197
  %3206 = fadd fast float %3205, %3200
  %3207 = fmul fast float %3206, 0x3F70101000000000
  %3208 = fadd fast float %3193, -5.000000e-01
  %3209 = fadd fast float %3195, -5.000000e-01
  %3210 = fmul fast float %3208, %3204
  %3211 = fmul fast float %3209, %3204
  %3212 = fadd fast float %3210, 5.000000e-01
  %3213 = fadd fast float %3211, 5.000000e-01
  %3214 = fmul fast float %3212, 2.000000e+00
  %3215 = fadd fast float %3214, -1.000000e+00
  %3216 = fmul fast float %3213, 2.000000e+00
  %3217 = fadd fast float %3216, -1.000000e+00
  %3218 = fadd fast float %3215, %3217
  %3219 = fmul fast float %3218, 5.000000e-01
  %3220 = fsub fast float %3215, %3217
  %3221 = fmul fast float %3220, 5.000000e-01
  %3222 = call float @dx.op.unary.f32(i32 6, float %3219)  ; FAbs(value)
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = call float @dx.op.unary.f32(i32 6, float %3221)  ; FAbs(value)
  %3225 = fsub fast float %3223, %3224
  %3226 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3221, float %3225, float %3219, float %3221, float %3225)  ; Dot3(ax,ay,az,bx,by,bz)
  %3227 = call float @dx.op.unary.f32(i32 25, float %3226)  ; Rsqrt(value)
  %3228 = fmul fast float %3219, %3227
  %3229 = fmul fast float %3221, %3227
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 67108864
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %3250, label %3234

; <label>:3234                                    ; preds = %3182
  %3235 = add i32 %33, 328
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 65535
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 65535
  %3243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3242)  ; LegacyF16ToF32(value)
  %3244 = lshr i32 %3237, 16
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = fsub fast float %3207, %3245
  %3247 = fmul fast float %3246, %3239
  %3248 = fadd fast float %3247, %3243
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  br label %3250

; <label>:3250                                    ; preds = %3234, %3182
  %3251 = phi float [ %3249, %3234 ], [ %3207, %3182 ]
  %3252 = call float @dx.op.dot2.f32(i32 54, float %3228, float %3229, float %2671, float %2672)  ; Dot2(ax,ay,bx,by)
  %3253 = call float @dx.op.dot2.f32(i32 54, float %3228, float %3229, float %2673, float %2674)  ; Dot2(ax,ay,bx,by)
  br label %3254

; <label>:3254                                    ; preds = %3250, %3160
  %3255 = phi float [ %3251, %3250 ], [ 0x3FD6666660000000, %3160 ]
  %3256 = phi float [ %3252, %3250 ], [ 0.000000e+00, %3160 ]
  %3257 = phi float [ %3253, %3250 ], [ 0.000000e+00, %3160 ]
  %3258 = phi float [ %3194, %3250 ], [ 1.000000e+00, %3160 ]
  %3259 = add i32 %33, 208
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = lshr i32 %3261, 22
  %3263 = shl nuw nsw i32 %3262, 5
  %3264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3263)  ; LegacyF16ToF32(value)
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 64
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3302, label %3269

; <label>:3269                                    ; preds = %3254
  %3270 = add i32 %33, 436
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = add i32 %3272, 0
  %3274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 131072
  %3278 = icmp eq i32 %3277, 0
  %3279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3274, %dx.types.Handle %64, float %2767, float %2768, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = fmul fast float %3280, %305
  %3284 = fmul fast float %3281, %308
  %3285 = fmul fast float %3282, %311
  br i1 %3278, label %3292, label %3286

; <label>:3286                                    ; preds = %3269
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 0
  %3289 = fmul fast float %3288, %3283
  %3290 = fmul fast float %3288, %3284
  %3291 = fmul fast float %3288, %3285
  br label %3292

; <label>:3292                                    ; preds = %3286, %3269
  %3293 = phi float [ %3289, %3286 ], [ %3283, %3269 ]
  %3294 = phi float [ %3290, %3286 ], [ %3284, %3269 ]
  %3295 = phi float [ %3291, %3286 ], [ %3285, %3269 ]
  %3296 = fmul fast float %3293, %3264
  %3297 = select i1 %173, float %3296, float %3293
  %3298 = call float @dx.op.dot3.f32(i32 55, float %3297, float %3294, float %3295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3299 = select i1 %173, float 0.000000e+00, float %3293
  %3300 = select i1 %173, float %3298, float %3294
  %3301 = select i1 %173, float 0.000000e+00, float %3295
  br label %3302

; <label>:3302                                    ; preds = %3292, %3254
  %3303 = phi float [ %3299, %3292 ], [ 0.000000e+00, %3254 ]
  %3304 = phi float [ %3300, %3292 ], [ 0.000000e+00, %3254 ]
  %3305 = phi float [ %3301, %3292 ], [ 0.000000e+00, %3254 ]
  %3306 = add i32 %33, 144
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 255
  %3310 = uitofp i32 %3309 to float
  %3311 = lshr i32 %3308, 8
  %3312 = and i32 %3311, 255
  %3313 = uitofp i32 %3312 to float
  %3314 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3315 = fmul fast float %3313, %3314
  %3316 = fadd fast float %3315, %3310
  %3317 = fmul fast float %3316, 0x3F70101020000000
  %3318 = call float @dx.op.unary.f32(i32 7, float %3317)  ; Saturate(value)
  br i1 %2659, label %3319, label %3327

; <label>:3319                                    ; preds = %3302
  %3320 = fsub fast float 1.000000e+00, %2955
  %3321 = fmul fast float %3320, %2648
  %3322 = fmul fast float %3320, %2649
  %3323 = fmul fast float %3320, %2650
  %3324 = fmul fast float %3320, %2651
  %3325 = fmul fast float %3320, %2652
  %3326 = fmul fast float %3320, %2653
  br label %3327

; <label>:3327                                    ; preds = %3319, %3302
  %3328 = phi float [ %3321, %3319 ], [ %2648, %3302 ]
  %3329 = phi float [ %3322, %3319 ], [ %2649, %3302 ]
  %3330 = phi float [ %3323, %3319 ], [ %2650, %3302 ]
  %3331 = phi float [ %3324, %3319 ], [ %2651, %3302 ]
  %3332 = phi float [ %3325, %3319 ], [ %2652, %3302 ]
  %3333 = phi float [ %3326, %3319 ], [ %2653, %3302 ]
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = and i32 %3335, 3
  %3337 = icmp eq i32 %3336, 3
  br i1 %3337, label %3416, label %3338

; <label>:3338                                    ; preds = %3327
  %3339 = and i32 %3335, 16
  %3340 = icmp ne i32 %3339, 0
  %3341 = select i1 %3340, float %2955, float 0.000000e+00
  %3342 = icmp eq i32 %3336, 0
  br i1 %3342, label %3343, label %3371

; <label>:3343                                    ; preds = %3338
  %3344 = and i32 %3335, 64
  %3345 = icmp ne i32 %3344, 0
  %3346 = select i1 %3345, float %2955, float 0.000000e+00
  %3347 = fsub fast float %3175, %3328
  %3348 = fsub fast float %3176, %3329
  %3349 = fsub fast float %3177, %3330
  %3350 = fmul fast float %3341, %3347
  %3351 = fmul fast float %3341, %3348
  %3352 = fmul fast float %3341, %3349
  %3353 = fadd fast float %3350, %3328
  %3354 = fadd fast float %3351, %3329
  %3355 = fadd fast float %3352, %3330
  %3356 = fsub fast float %3161, %2654
  %3357 = fmul fast float %3341, %3356
  %3358 = fadd fast float %3357, %2654
  %3359 = fsub fast float %3303, %3331
  %3360 = fsub fast float %3304, %3332
  %3361 = fsub fast float %3305, %3333
  %3362 = fmul fast float %3346, %3359
  %3363 = fmul fast float %3346, %3360
  %3364 = fmul fast float %3346, %3361
  %3365 = fadd fast float %3362, %3331
  %3366 = fadd fast float %3363, %3332
  %3367 = fadd fast float %3364, %3333
  %3368 = fsub fast float %3318, %2657
  %3369 = fmul fast float %3341, %3368
  %3370 = fadd fast float %3369, %2657
  br label %3416

; <label>:3371                                    ; preds = %3338
  %3372 = icmp eq i32 %3336, 1
  br i1 %3372, label %3373, label %3386

; <label>:3373                                    ; preds = %3371
  %3374 = fadd fast float %3175, -1.000000e+00
  %3375 = fadd fast float %3176, -1.000000e+00
  %3376 = fadd fast float %3177, -1.000000e+00
  %3377 = fmul fast float %3341, %3374
  %3378 = fmul fast float %3341, %3375
  %3379 = fmul fast float %3341, %3376
  %3380 = fadd fast float %3377, 1.000000e+00
  %3381 = fadd fast float %3378, 1.000000e+00
  %3382 = fadd fast float %3379, 1.000000e+00
  %3383 = fmul fast float %3380, %3328
  %3384 = fmul fast float %3381, %3329
  %3385 = fmul fast float %3382, %3330
  br label %3416

; <label>:3386                                    ; preds = %3371
  %3387 = icmp eq i32 %3336, 2
  br i1 %3387, label %3388, label %3416

; <label>:3388                                    ; preds = %3386
  %3389 = call float @dx.op.unary.f32(i32 24, float %3175)  ; Sqrt(value)
  %3390 = call float @dx.op.unary.f32(i32 24, float %3176)  ; Sqrt(value)
  %3391 = call float @dx.op.unary.f32(i32 24, float %3177)  ; Sqrt(value)
  %3392 = fadd fast float %3389, -5.000000e-01
  %3393 = fadd fast float %3390, -5.000000e-01
  %3394 = fadd fast float %3391, -5.000000e-01
  %3395 = fmul fast float %3392, %3341
  %3396 = fmul fast float %3393, %3341
  %3397 = fmul fast float %3394, %3341
  %3398 = fadd fast float %3395, 5.000000e-01
  %3399 = fadd fast float %3396, 5.000000e-01
  %3400 = fadd fast float %3397, 5.000000e-01
  %3401 = fmul fast float %3398, 2.000000e+00
  %3402 = fsub fast float 1.000000e+00, %3401
  %3403 = fmul fast float %3402, %3328
  %3404 = fadd fast float %3403, %3401
  %3405 = fmul fast float %3404, %3328
  %3406 = fmul fast float %3399, 2.000000e+00
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = fmul fast float %3407, %3329
  %3409 = fadd fast float %3408, %3406
  %3410 = fmul fast float %3409, %3329
  %3411 = fmul fast float %3400, 2.000000e+00
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3412, %3330
  %3414 = fadd fast float %3413, %3411
  %3415 = fmul fast float %3414, %3330
  br label %3416

; <label>:3416                                    ; preds = %3388, %3386, %3373, %3343, %3327
  %3417 = phi float [ %3328, %3327 ], [ %3405, %3388 ], [ %3328, %3386 ], [ %3383, %3373 ], [ %3353, %3343 ]
  %3418 = phi float [ %3329, %3327 ], [ %3410, %3388 ], [ %3329, %3386 ], [ %3384, %3373 ], [ %3354, %3343 ]
  %3419 = phi float [ %3330, %3327 ], [ %3415, %3388 ], [ %3330, %3386 ], [ %3385, %3373 ], [ %3355, %3343 ]
  %3420 = phi float [ %3331, %3327 ], [ %3331, %3388 ], [ %3331, %3386 ], [ %3331, %3373 ], [ %3365, %3343 ]
  %3421 = phi float [ %3332, %3327 ], [ %3332, %3388 ], [ %3332, %3386 ], [ %3332, %3373 ], [ %3366, %3343 ]
  %3422 = phi float [ %3333, %3327 ], [ %3333, %3388 ], [ %3333, %3386 ], [ %3333, %3373 ], [ %3367, %3343 ]
  %3423 = phi float [ %2654, %3327 ], [ %2654, %3388 ], [ %2654, %3386 ], [ %2654, %3373 ], [ %3358, %3343 ]
  %3424 = phi float [ %2657, %3327 ], [ %2657, %3388 ], [ %2657, %3386 ], [ %2657, %3373 ], [ %3370, %3343 ]
  %3425 = and i32 %3335, 12
  %3426 = icmp eq i32 %3425, 12
  br i1 %3426, label %3499, label %3427

; <label>:3427                                    ; preds = %3416
  %3428 = and i32 %3335, 2097184
  %3429 = icmp eq i32 %3428, 2097184
  %3430 = select i1 %3429, float %2955, float 0.000000e+00
  %3431 = and i32 %3335, 4194336
  %3432 = icmp eq i32 %3431, 4194336
  %3433 = select i1 %3432, float %2955, float 0.000000e+00
  %3434 = and i32 %3335, 8388640
  %3435 = icmp eq i32 %3434, 8388640
  %3436 = select i1 %3435, float %2955, float 0.000000e+00
  %3437 = icmp eq i32 %3425, 0
  br i1 %3437, label %3438, label %3451

; <label>:3438                                    ; preds = %3427
  %3439 = fsub fast float %3256, %2646
  %3440 = fsub fast float %3257, %2647
  %3441 = fmul fast float %3430, %3439
  %3442 = fmul fast float %3430, %3440
  %3443 = fadd fast float %3441, %2646
  %3444 = fadd fast float %3442, %2647
  %3445 = fsub fast float %3258, %2656
  %3446 = fmul fast float %3433, %3445
  %3447 = fadd fast float %3446, %2656
  %3448 = fsub fast float %3255, %2655
  %3449 = fmul fast float %3436, %3448
  %3450 = fadd fast float %3449, %2655
  br label %3499

; <label>:3451                                    ; preds = %3427
  %3452 = icmp eq i32 %3425, 4
  br i1 %3452, label %3453, label %3485

; <label>:3453                                    ; preds = %3451
  %3454 = fmul fast float %3430, %3256
  %3455 = fmul fast float %3430, %3257
  %3456 = fadd fast float %3454, %2646
  %3457 = fadd fast float %3455, %2647
  %3458 = call float @dx.op.binary.f32(i32 36, float %2656, float %3258)  ; FMin(a,b)
  %3459 = fsub fast float %3458, %2656
  %3460 = fmul fast float %3459, %3433
  %3461 = fadd fast float %3460, %2656
  %3462 = fadd fast float %3255, %2655
  %3463 = fmul fast float %3462, 0x3FF337FAE0000000
  %3464 = fmul fast float %2655, %2655
  %3465 = fmul fast float %3255, %3255
  %3466 = fadd fast float %3465, %3464
  %3467 = fmul fast float %3466, 0x3FE5152B00000000
  %3468 = fmul fast float %2655, 0xBFCC1F85E0000000
  %3469 = fmul fast float %3468, %3255
  %3470 = fadd fast float %3469, 0xBFE1363700000000
  %3471 = fadd fast float %3470, %3463
  %3472 = fsub fast float %3471, %3467
  %3473 = fmul fast float %3462, 0x3FBA6F0D00000000
  %3474 = fmul fast float %3466, 0x3FD0432880000000
  %3475 = fmul fast float %2655, 0xBFEF110800000000
  %3476 = fmul fast float %3475, %3255
  %3477 = fadd fast float %3476, 1.000000e+00
  %3478 = fsub fast float %3477, %3473
  %3479 = fadd fast float %3478, %3474
  %3480 = fdiv fast float %3472, %3479
  %3481 = call float @dx.op.unary.f32(i32 7, float %3480)  ; Saturate(value)
  %3482 = fsub fast float %3481, %2655
  %3483 = fmul fast float %3482, %3436
  %3484 = fadd fast float %3483, %2655
  br label %3499

; <label>:3485                                    ; preds = %3451
  %3486 = icmp eq i32 %3425, 8
  br i1 %3486, label %3487, label %3499

; <label>:3487                                    ; preds = %3485
  %3488 = fmul fast float %3430, %3256
  %3489 = fmul fast float %3430, %3257
  %3490 = fadd fast float %3488, %2646
  %3491 = fadd fast float %3489, %2647
  %3492 = call float @dx.op.binary.f32(i32 36, float %2656, float %3258)  ; FMin(a,b)
  %3493 = fsub fast float %3492, %2656
  %3494 = fmul fast float %3493, %3433
  %3495 = fadd fast float %3494, %2656
  %3496 = fsub fast float %3255, %2655
  %3497 = fmul fast float %3436, %3496
  %3498 = fadd fast float %3497, %2655
  br label %3499

; <label>:3499                                    ; preds = %3487, %3485, %3453, %3438, %3416, %2954, %2658, %2645
  %3500 = phi float [ %2646, %3416 ], [ %2646, %2954 ], [ %2646, %2645 ], [ %2646, %2658 ], [ %3443, %3438 ], [ %3456, %3453 ], [ %2646, %3485 ], [ %3490, %3487 ]
  %3501 = phi float [ %2647, %3416 ], [ %2647, %2954 ], [ %2647, %2645 ], [ %2647, %2658 ], [ %3444, %3438 ], [ %3457, %3453 ], [ %2647, %3485 ], [ %3491, %3487 ]
  %3502 = phi float [ %3417, %3416 ], [ %2648, %2954 ], [ %2648, %2645 ], [ %2648, %2658 ], [ %3417, %3438 ], [ %3417, %3453 ], [ %3417, %3485 ], [ %3417, %3487 ]
  %3503 = phi float [ %3418, %3416 ], [ %2649, %2954 ], [ %2649, %2645 ], [ %2649, %2658 ], [ %3418, %3438 ], [ %3418, %3453 ], [ %3418, %3485 ], [ %3418, %3487 ]
  %3504 = phi float [ %3419, %3416 ], [ %2650, %2954 ], [ %2650, %2645 ], [ %2650, %2658 ], [ %3419, %3438 ], [ %3419, %3453 ], [ %3419, %3485 ], [ %3419, %3487 ]
  %3505 = phi float [ %3420, %3416 ], [ %2651, %2954 ], [ %2651, %2645 ], [ %2651, %2658 ], [ %3420, %3438 ], [ %3420, %3453 ], [ %3420, %3485 ], [ %3420, %3487 ]
  %3506 = phi float [ %3421, %3416 ], [ %2652, %2954 ], [ %2652, %2645 ], [ %2652, %2658 ], [ %3421, %3438 ], [ %3421, %3453 ], [ %3421, %3485 ], [ %3421, %3487 ]
  %3507 = phi float [ %3422, %3416 ], [ %2653, %2954 ], [ %2653, %2645 ], [ %2653, %2658 ], [ %3422, %3438 ], [ %3422, %3453 ], [ %3422, %3485 ], [ %3422, %3487 ]
  %3508 = phi float [ %3423, %3416 ], [ %2654, %2954 ], [ %2654, %2645 ], [ %2654, %2658 ], [ %3423, %3438 ], [ %3423, %3453 ], [ %3423, %3485 ], [ %3423, %3487 ]
  %3509 = phi float [ %2655, %3416 ], [ %2655, %2954 ], [ %2655, %2645 ], [ %2655, %2658 ], [ %3450, %3438 ], [ %3484, %3453 ], [ %2655, %3485 ], [ %3498, %3487 ]
  %3510 = phi float [ %2656, %3416 ], [ %2656, %2954 ], [ %2656, %2645 ], [ %2656, %2658 ], [ %3447, %3438 ], [ %3461, %3453 ], [ %2656, %3485 ], [ %3495, %3487 ]
  %3511 = phi float [ %3424, %3416 ], [ %2657, %2954 ], [ %2657, %2645 ], [ %2657, %2658 ], [ %3424, %3438 ], [ %3424, %3453 ], [ %3424, %3485 ], [ %3424, %3487 ]
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = call float @dx.op.dot2.f32(i32 54, float %3500, float %3501, float %3500, float %3501)  ; Dot2(ax,ay,bx,by)
  %3515 = fmul fast float %3514, 0x3FE3333340000000
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = call float @dx.op.dot3.f32(i32 55, float %3500, float %3501, float %3516, float %3500, float %3501, float %3516)  ; Dot3(ax,ay,az,bx,by,bz)
  %3518 = call float @dx.op.unary.f32(i32 25, float %3517)  ; Rsqrt(value)
  %3519 = fmul fast float %3518, %3500
  %3520 = fmul fast float %3518, %3501
  %3521 = fmul fast float %3516, %3518
  %3522 = fmul fast float %3521, %75
  %3523 = fmul fast float %3521, %76
  %3524 = fmul fast float %3521, %77
  %3525 = fmul fast float %3519, %49
  %3526 = fmul fast float %3519, %50
  %3527 = fmul fast float %3519, %51
  %3528 = fadd fast float %3522, %3525
  %3529 = fadd fast float %3523, %3526
  %3530 = fadd fast float %3524, %3527
  %3531 = fmul fast float %87, %3520
  %3532 = fmul fast float %88, %3520
  %3533 = fmul fast float %89, %3520
  %3534 = fadd fast float %3528, %3531
  %3535 = fadd fast float %3529, %3532
  %3536 = fadd fast float %3530, %3533
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3534, float %3535, float %3536, float %3534, float %3535, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 25, float %3537)  ; Rsqrt(value)
  %3539 = fmul fast float %3534, %3538
  %3540 = fmul fast float %3535, %3538
  %3541 = fmul fast float %3536, %3538
  %3542 = and i32 %35, 1
  %3543 = icmp eq i32 %3542, 0
  br i1 %3543, label %3544, label %4052

; <label>:3544                                    ; preds = %3499
  %3545 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3546 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3547 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3548 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3549 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3550 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3551 = fadd fast float %3545, %131
  %3552 = fadd fast float %3546, %132
  %3553 = fadd fast float %3547, %133
  %3554 = fadd fast float %3548, %131
  %3555 = fadd fast float %3549, %132
  %3556 = fadd fast float %3550, %133
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 2
  %3563 = extractvalue %dx.types.CBufRet.f32 %3561, 3
  %3564 = fmul fast float %3558, %68
  %3565 = fmul fast float %3564, %3562
  %3566 = fmul fast float %3559, %69
  %3567 = fmul fast float %3566, %3563
  %3568 = fptoui float %3565 to i32
  %3569 = fptoui float %3567 to i32
  %3570 = fadd fast float %3558, -1.000000e+00
  %3571 = fadd fast float %3559, -1.000000e+00
  %3572 = fptoui float %3570 to i32
  %3573 = fptoui float %3571 to i32
  %3574 = call i32 @dx.op.binary.i32(i32 40, i32 %3568, i32 %3572)  ; UMin(a,b)
  %3575 = call i32 @dx.op.binary.i32(i32 40, i32 %3569, i32 %3573)  ; UMin(a,b)
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 2
  %3578 = extractvalue %dx.types.CBufRet.f32 %3576, 3
  %3579 = fmul fast float %3577, %63
  %3580 = fsub fast float %3579, %3578
  %3581 = fadd fast float %3560, -1.000000e+00
  %3582 = call float @dx.op.binary.f32(i32 36, float %3580, float %3581)  ; FMin(a,b)
  %3583 = fptoui float %3582 to i32
  %3584 = fptoui float %3558 to i32
  %3585 = fptoui float %3559 to i32
  %3586 = mul i32 %3583, %3585
  %3587 = add i32 %3586, %3575
  %3588 = mul i32 %3587, %3584
  %3589 = add i32 %3588, %3574
  %3590 = shl i32 %3589, 2
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 1023
  %3594 = lshr i32 %3592, 10
  %3595 = icmp eq i32 %3593, 0
  br i1 %3595, label %4021, label %3596

; <label>:3596                                    ; preds = %3544
  %3597 = and i32 %3592, 1023
  br label %3598

; <label>:3598                                    ; preds = %3724, %3596
  %3599 = phi i32 [ %3674, %3724 ], [ 0, %3596 ]
  %3600 = phi float [ %3725, %3724 ], [ 0.000000e+00, %3596 ]
  %3601 = phi float [ %3726, %3724 ], [ %3513, %3596 ]
  %3602 = phi float [ %3727, %3724 ], [ %3511, %3596 ]
  %3603 = phi float [ %3728, %3724 ], [ 0.000000e+00, %3596 ]
  %3604 = phi float [ %3729, %3724 ], [ 0.000000e+00, %3596 ]
  %3605 = phi float [ %3730, %3724 ], [ %3505, %3596 ]
  %3606 = phi float [ %3731, %3724 ], [ %3506, %3596 ]
  %3607 = phi float [ %3732, %3724 ], [ %3507, %3596 ]
  %3608 = phi float [ %3733, %3724 ], [ %3539, %3596 ]
  %3609 = phi float [ %3734, %3724 ], [ %3540, %3596 ]
  %3610 = phi float [ %3735, %3724 ], [ %3541, %3596 ]
  %3611 = phi float [ %3736, %3724 ], [ %3510, %3596 ]
  %3612 = phi float [ %3737, %3724 ], [ %3509, %3596 ]
  %3613 = phi float [ %3738, %3724 ], [ 0.000000e+00, %3596 ]
  %3614 = phi float [ %3739, %3724 ], [ %3508, %3596 ]
  %3615 = phi float [ %3740, %3724 ], [ %3502, %3596 ]
  %3616 = phi float [ %3741, %3724 ], [ %3503, %3596 ]
  %3617 = phi float [ %3742, %3724 ], [ %3504, %3596 ]
  %3618 = add nuw nsw i32 %3599, %3594
  %3619 = shl i32 %3618, 2
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = shl i32 %3621, 8
  %3623 = or i32 %3622, 48
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = or i32 %3622, 64
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.i32 %3630, 1
  %3633 = or i32 %3622, 80
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3637 = or i32 %3622, 96
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3643 = or i32 %3622, 112
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3646 = or i32 %3622, 128
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = or i32 %3622, 144
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3653, 3
  %3658 = or i32 %3622, 160
  %3659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = or i32 %3622, 192
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = or i32 %3622, 208
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = or i32 %3622, 248
  %3671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = add nuw nsw i32 %3599, 1
  %3675 = bitcast float %3628 to i32
  %3676 = and i32 %3675, 512
  %3677 = icmp eq i32 %3676, 0
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3679, float %3680, float %3681, float %3682, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = or i32 %3622, 16
  %3685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.f32 %3685, 0
  %3687 = extractvalue %dx.types.ResRet.f32 %3685, 1
  %3688 = extractvalue %dx.types.ResRet.f32 %3685, 2
  %3689 = extractvalue %dx.types.ResRet.f32 %3685, 3
  %3690 = call float @dx.op.dot4.f32(i32 56, float %3686, float %3687, float %3688, float %3689, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3691 = or i32 %3622, 32
  %3692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3692, 1
  %3695 = extractvalue %dx.types.ResRet.f32 %3692, 2
  %3696 = extractvalue %dx.types.ResRet.f32 %3692, 3
  %3697 = call float @dx.op.dot4.f32(i32 56, float %3693, float %3694, float %3695, float %3696, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3698 = call float @dx.op.unary.f32(i32 27, float %3683)  ; Round_ni(value)
  %3699 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3700 = call float @dx.op.unary.f32(i32 27, float %3690)  ; Round_ni(value)
  %3701 = call float @dx.op.unary.f32(i32 6, float %3700)  ; FAbs(value)
  %3702 = call float @dx.op.unary.f32(i32 6, float %3697)  ; FAbs(value)
  %3703 = call float @dx.op.unary.f32(i32 27, float %3702)  ; Round_ni(value)
  %3704 = fadd fast float %3701, %3699
  %3705 = fadd fast float %3704, %3703
  %3706 = fcmp fast oeq float %3705, 0.000000e+00
  %3707 = call float @dx.op.dot4.f32(i32 56, float %3679, float %3680, float %3681, float %3682, float %3551, float %3552, float %3553, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3708 = call float @dx.op.dot4.f32(i32 56, float %3686, float %3687, float %3688, float %3689, float %3551, float %3552, float %3553, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3709 = call float @dx.op.dot4.f32(i32 56, float %3679, float %3680, float %3681, float %3682, float %3554, float %3555, float %3556, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3710 = call float @dx.op.dot4.f32(i32 56, float %3686, float %3687, float %3688, float %3689, float %3554, float %3555, float %3556, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3711 = fsub fast float %3707, %3683
  %3712 = fsub fast float %3709, %3683
  %3713 = fsub fast float %3708, %3690
  %3714 = fsub fast float %3710, %3690
  %3715 = call float @dx.op.dot3.f32(i32 55, float %3625, float %3626, float %3627, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3718 = fadd fast float %3717, %3715
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3721 = fcmp fast ogt float %3719, %3720
  %3722 = and i1 %3706, %3721
  %3723 = and i1 %3677, %3722
  br i1 %3723, label %3744, label %3724

; <label>:3724                                    ; preds = %4007, %3825, %3744, %3598
  %3725 = phi float [ %3600, %3744 ], [ %3828, %3825 ], [ %3828, %4007 ], [ %3600, %3598 ]
  %3726 = phi float [ %3601, %3744 ], [ %3601, %3825 ], [ %3982, %4007 ], [ %3601, %3598 ]
  %3727 = phi float [ %3602, %3744 ], [ %3602, %3825 ], [ %3980, %4007 ], [ %3602, %3598 ]
  %3728 = phi float [ %3603, %3744 ], [ %3603, %3825 ], [ %3952, %4007 ], [ %3603, %3598 ]
  %3729 = phi float [ %3604, %3744 ], [ %3604, %3825 ], [ %3950, %4007 ], [ %3604, %3598 ]
  %3730 = phi float [ %3605, %3744 ], [ %3605, %3825 ], [ %4017, %4007 ], [ %3605, %3598 ]
  %3731 = phi float [ %3606, %3744 ], [ %3606, %3825 ], [ %4018, %4007 ], [ %3606, %3598 ]
  %3732 = phi float [ %3607, %3744 ], [ %3607, %3825 ], [ %4019, %4007 ], [ %3607, %3598 ]
  %3733 = phi float [ %3608, %3744 ], [ %3608, %3825 ], [ %3931, %4007 ], [ %3608, %3598 ]
  %3734 = phi float [ %3609, %3744 ], [ %3609, %3825 ], [ %3932, %4007 ], [ %3609, %3598 ]
  %3735 = phi float [ %3610, %3744 ], [ %3610, %3825 ], [ %3933, %4007 ], [ %3610, %3598 ]
  %3736 = phi float [ %3611, %3744 ], [ %3611, %3825 ], [ %3960, %4007 ], [ %3611, %3598 ]
  %3737 = phi float [ %3612, %3744 ], [ %3612, %3825 ], [ %3957, %4007 ], [ %3612, %3598 ]
  %3738 = phi float [ %3613, %3744 ], [ %3613, %3825 ], [ %3954, %4007 ], [ %3613, %3598 ]
  %3739 = phi float [ %3614, %3744 ], [ %3614, %3825 ], [ %3948, %4007 ], [ %3614, %3598 ]
  %3740 = phi float [ %3615, %3744 ], [ %3615, %3825 ], [ %3943, %4007 ], [ %3615, %3598 ]
  %3741 = phi float [ %3616, %3744 ], [ %3616, %3825 ], [ %3944, %4007 ], [ %3616, %3598 ]
  %3742 = phi float [ %3617, %3744 ], [ %3617, %3825 ], [ %3945, %4007 ], [ %3617, %3598 ]
  %3743 = icmp eq i32 %3674, %3597
  br i1 %3743, label %4020, label %3598

; <label>:3744                                    ; preds = %3598
  %3745 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3746 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3747 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3750 = extractvalue %dx.types.ResRet.i32 %3630, 3
  %3751 = extractvalue %dx.types.ResRet.i32 %3630, 2
  %3752 = add i32 %3750, 0
  %3753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3755 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3753, %dx.types.Handle %3754, float %3683, float %3690, float undef, float undef, i32 0, i32 0, i32 undef, float %3711, float %3713, float undef, float %3712, float %3714, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = fmul fast float %3756, %3749
  %3758 = fadd fast float %3757, %3748
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3683, %3639
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3690, float %3760)  ; FMad(a,b,c)
  %3762 = fadd fast float %3761, %3747
  %3763 = fmul fast float %3683, %3641
  %3764 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3690, float %3763)  ; FMad(a,b,c)
  %3765 = fadd fast float %3764, %3746
  %3766 = fmul fast float %3711, %3639
  %3767 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3713, float %3766)  ; FMad(a,b,c)
  %3768 = fmul fast float %3711, %3641
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3713, float %3768)  ; FMad(a,b,c)
  %3770 = fmul fast float %3712, %3639
  %3771 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3714, float %3770)  ; FMad(a,b,c)
  %3772 = fmul fast float %3712, %3641
  %3773 = call float @dx.op.tertiary.f32(i32 46, float %3642, float %3714, float %3772)  ; FMad(a,b,c)
  %3774 = add i32 %3751, 0
  %3775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3775, %dx.types.Handle %3754, float %3762, float %3765, float undef, float undef, i32 0, i32 0, i32 undef, float %3767, float %3769, float undef, float %3771, float %3773, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = and i32 %3675, 1024
  %3779 = icmp ne i32 %3778, 0
  %3780 = fcmp fast ogt float %3777, 0x3FE0101020000000
  %3781 = uitofp i1 %3780 to float
  %3782 = select i1 %3779, float %3781, float %3777
  %3783 = and i32 %3675, 8192
  %3784 = icmp ne i32 %3783, 0
  %3785 = select i1 %3784, float %3745, float 1.000000e+00
  %3786 = fmul fast float %3683, 2.000000e+00
  %3787 = fadd fast float %3786, -1.000000e+00
  %3788 = call float @dx.op.unary.f32(i32 6, float %3787)  ; FAbs(value)
  %3789 = fmul fast float %3788, %3672
  %3790 = fsub fast float %3789, %3672
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = fmul fast float %3690, 2.000000e+00
  %3793 = fadd fast float %3792, -1.000000e+00
  %3794 = call float @dx.op.unary.f32(i32 6, float %3793)  ; FAbs(value)
  %3795 = fmul fast float %3794, %3673
  %3796 = fsub fast float %3795, %3673
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3798 = fmul fast float %3702, %3635
  %3799 = fsub fast float %3798, %3635
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = fmul fast float %3759, %3785
  %3802 = fmul fast float %3801, %3756
  %3803 = fmul fast float %3802, %3791
  %3804 = fmul fast float %3803, %3782
  %3805 = fmul fast float %3804, %3797
  %3806 = fmul fast float %3805, %3800
  %3807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3808 = extractvalue %dx.types.CBufRet.f32 %3807, 1
  %3809 = extractvalue %dx.types.CBufRet.f32 %3807, 0
  %3810 = fsub fast float %3719, %3809
  %3811 = fmul fast float %3810, %3808
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fmul fast float %3806, %3636
  %3814 = fadd fast float %3806, %3636
  %3815 = fmul fast float %3814, %3645
  %3816 = fsub fast float %3815, %3645
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = and i32 %3675, 128
  %3819 = icmp ne i32 %3818, 0
  %3820 = select i1 %3819, float %3817, float %3813
  %3821 = fmul fast float %3820, %3812
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = fcmp fast ugt float %3821, %3823
  br i1 %3824, label %3825, label %3724

; <label>:3825                                    ; preds = %3744
  %3826 = select i1 %3784, float %3821, float 0.000000e+00
  %3827 = fadd fast float %3826, %3600
  %3828 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  br i1 %3784, label %3724, label %3829

; <label>:3829                                    ; preds = %3825
  %3830 = and i32 %3675, 4
  %3831 = and i32 %3675, 8
  %3832 = add i32 %3631, 0
  %3833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3832, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3835 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3833, %dx.types.Handle %3834, float %3762, float %3765, float undef, float undef, i32 0, i32 0, i32 undef, float %3767, float %3769, float undef, float %3771, float %3773, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = extractvalue %dx.types.ResRet.f32 %3835, 3
  %3840 = bitcast float %3657 to i32
  %3841 = and i32 %3840, 255
  %3842 = uitofp i32 %3841 to float
  %3843 = lshr i32 %3840, 8
  %3844 = and i32 %3843, 255
  %3845 = uitofp i32 %3844 to float
  %3846 = fmul fast float %3839, %3842
  %3847 = fadd fast float %3846, %3845
  %3848 = fmul fast float %3847, 0x3F70101000000000
  %3849 = add i32 %3632, 0
  %3850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3849, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3851 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3850, %dx.types.Handle %3834, float %3762, float %3765, float undef, float undef, i32 0, i32 0, i32 undef, float %3767, float %3769, float undef, float %3771, float %3773, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3856 = bitcast float %3651 to i32
  %3857 = and i32 %3856, 255
  %3858 = uitofp i32 %3857 to float
  %3859 = lshr i32 %3856, 8
  %3860 = and i32 %3859, 255
  %3861 = uitofp i32 %3860 to float
  %3862 = lshr i32 %3856, 16
  %3863 = and i32 %3862, 255
  %3864 = uitofp i32 %3863 to float
  %3865 = fmul fast float %3864, 0x3F70101000000000
  %3866 = fmul fast float %3852, %3858
  %3867 = fadd fast float %3866, %3861
  %3868 = fmul fast float %3867, 0x3F70101000000000
  %3869 = fadd fast float %3853, -5.000000e-01
  %3870 = fadd fast float %3855, -5.000000e-01
  %3871 = fmul fast float %3869, %3865
  %3872 = fmul fast float %3870, %3865
  %3873 = fadd fast float %3871, 5.000000e-01
  %3874 = fadd fast float %3872, 5.000000e-01
  %3875 = fmul fast float %3836, %3660
  %3876 = fmul fast float %3837, %3661
  %3877 = fmul fast float %3838, %3662
  %3878 = fmul fast float %3873, 2.000000e+00
  %3879 = fadd fast float %3878, -1.000000e+00
  %3880 = fmul fast float %3874, 2.000000e+00
  %3881 = fadd fast float %3880, -1.000000e+00
  %3882 = fadd fast float %3879, %3881
  %3883 = fmul fast float %3882, 5.000000e-01
  %3884 = fsub fast float %3879, %3881
  %3885 = fmul fast float %3884, 5.000000e-01
  %3886 = call float @dx.op.unary.f32(i32 6, float %3883)  ; FAbs(value)
  %3887 = fsub fast float 1.000000e+00, %3886
  %3888 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3889 = fsub fast float %3887, %3888
  %3890 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3885, float %3889, float %3883, float %3885, float %3889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call float @dx.op.unary.f32(i32 25, float %3890)  ; Rsqrt(value)
  %3892 = fmul fast float %3883, %3891
  %3893 = fmul fast float %3885, %3891
  %3894 = fmul fast float %3891, %3889
  %3895 = fmul fast float %3894, %3625
  %3896 = fmul fast float %3894, %3626
  %3897 = fmul fast float %3894, %3627
  %3898 = fmul fast float %3892, %3648
  %3899 = fmul fast float %3892, %3649
  %3900 = fmul fast float %3892, %3650
  %3901 = fadd fast float %3898, %3895
  %3902 = fadd fast float %3899, %3896
  %3903 = fadd fast float %3900, %3897
  %3904 = fmul fast float %3893, %3654
  %3905 = fmul fast float %3893, %3655
  %3906 = fmul fast float %3893, %3656
  %3907 = fadd fast float %3901, %3904
  %3908 = fadd fast float %3902, %3905
  %3909 = fadd fast float %3903, %3906
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float %3907, float %3908, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = call float @dx.op.unary.f32(i32 25, float %3910)  ; Rsqrt(value)
  %3912 = fmul fast float %3907, %3911
  %3913 = fmul fast float %3908, %3911
  %3914 = fmul fast float %3909, %3911
  %3915 = icmp ne i32 %3831, 0
  %3916 = select i1 %3915, float 1.000000e+00, float 0.000000e+00
  %3917 = fmul fast float %3821, %3916
  %3918 = and i32 %3675, 1
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3920, label %3924

; <label>:3920                                    ; preds = %3829
  %3921 = fsub fast float %3912, %3608
  %3922 = fsub fast float %3913, %3609
  %3923 = fsub fast float %3914, %3610
  br label %3924

; <label>:3924                                    ; preds = %3920, %3829
  %3925 = phi float [ %3921, %3920 ], [ %3912, %3829 ]
  %3926 = phi float [ %3922, %3920 ], [ %3913, %3829 ]
  %3927 = phi float [ %3923, %3920 ], [ %3914, %3829 ]
  %3928 = fmul float %3927, %3917
  %3929 = fmul float %3926, %3917
  %3930 = fmul float %3925, %3917
  %3931 = fadd fast float %3930, %3608
  %3932 = fadd fast float %3929, %3609
  %3933 = fadd fast float %3928, %3610
  %3934 = icmp ne i32 %3830, 0
  %3935 = select i1 %3934, float 1.000000e+00, float 0.000000e+00
  %3936 = fmul fast float %3821, %3935
  %3937 = fsub fast float %3875, %3615
  %3938 = fsub fast float %3876, %3616
  %3939 = fsub fast float %3877, %3617
  %3940 = fmul fast float %3937, %3936
  %3941 = fmul fast float %3938, %3936
  %3942 = fmul fast float %3939, %3936
  %3943 = fadd fast float %3940, %3615
  %3944 = fadd fast float %3941, %3616
  %3945 = fadd fast float %3942, %3617
  %3946 = fsub fast float %3848, %3614
  %3947 = fmul fast float %3946, %3936
  %3948 = fadd fast float %3947, %3614
  %3949 = fmul fast float %3936, %3604
  %3950 = fsub fast float %3604, %3949
  %3951 = fmul fast float %3936, %3603
  %3952 = fsub fast float %3603, %3951
  %3953 = fadd fast float %3821, %3613
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = fsub fast float %3868, %3612
  %3956 = fmul fast float %3955, %3917
  %3957 = fadd fast float %3956, %3612
  %3958 = fsub fast float %3854, %3611
  %3959 = fmul fast float %3958, %3917
  %3960 = fadd fast float %3959, %3611
  %3961 = call float @dx.op.dot3.f32(i32 55, float %3875, float %3876, float %3877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3965 = fmul fast float %3964, %3961
  %3966 = fadd fast float %3965, %3963
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = bitcast float %3663 to i32
  %3969 = and i32 %3968, 65535
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = lshr i32 %3968, 16
  %3972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3971)  ; LegacyF16ToF32(value)
  %3973 = fcmp fast oge float %3970, 0.000000e+00
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = select i1 %3973, float %3970, float %3975
  %3977 = fadd fast float %3976, %3972
  %3978 = fsub fast float %3967, %3602
  %3979 = fmul fast float %3978, %3821
  %3980 = fadd fast float %3979, %3602
  %3981 = fmul fast float %3977, %3821
  %3982 = call float @dx.op.binary.f32(i32 35, float %3601, float %3981)  ; FMax(a,b)
  %3983 = and i32 %3675, 16
  %3984 = icmp eq i32 %3983, 0
  br i1 %3984, label %4007, label %3985

; <label>:3985                                    ; preds = %3924
  %3986 = bitcast float %3669 to i32
  %3987 = add i32 %3666, 0
  %3988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3987, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3989 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3988, %dx.types.Handle %3834, float %3762, float %3765, float undef, float undef, i32 0, i32 0, i32 undef, float %3767, float %3769, float undef, float %3771, float %3773, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = and i32 %3986, 65535
  %3994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3993)  ; LegacyF16ToF32(value)
  %3995 = fmul fast float %3990, %3660
  %3996 = fmul fast float %3991, %3661
  %3997 = fmul fast float %3992, %3662
  %3998 = and i32 %3675, 16384
  %3999 = icmp ne i32 %3998, 0
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = select i1 %3999, float %4001, float 1.000000e+00
  %4003 = fmul fast float %4002, %3994
  %4004 = fmul fast float %3995, %4003
  %4005 = fmul fast float %3996, %4003
  %4006 = fmul fast float %3997, %4003
  br label %4007

; <label>:4007                                    ; preds = %3985, %3924
  %4008 = phi float [ %4004, %3985 ], [ 0.000000e+00, %3924 ]
  %4009 = phi float [ %4005, %3985 ], [ 0.000000e+00, %3924 ]
  %4010 = phi float [ %4006, %3985 ], [ 0.000000e+00, %3924 ]
  %4011 = fsub fast float %4008, %3605
  %4012 = fsub fast float %4009, %3606
  %4013 = fsub fast float %4010, %3607
  %4014 = fmul fast float %4011, %3821
  %4015 = fmul fast float %4012, %3821
  %4016 = fmul fast float %4013, %3821
  %4017 = fadd fast float %4014, %3605
  %4018 = fadd fast float %4015, %3606
  %4019 = fadd fast float %4016, %3607
  br label %3724

; <label>:4020                                    ; preds = %3724
  br label %4021

; <label>:4021                                    ; preds = %4020, %3544
  %4022 = phi float [ 0.000000e+00, %3544 ], [ %3725, %4020 ]
  %4023 = phi float [ %3513, %3544 ], [ %3726, %4020 ]
  %4024 = phi float [ %3511, %3544 ], [ %3727, %4020 ]
  %4025 = phi float [ 0.000000e+00, %3544 ], [ %3728, %4020 ]
  %4026 = phi float [ 0.000000e+00, %3544 ], [ %3729, %4020 ]
  %4027 = phi float [ %3505, %3544 ], [ %3730, %4020 ]
  %4028 = phi float [ %3506, %3544 ], [ %3731, %4020 ]
  %4029 = phi float [ %3507, %3544 ], [ %3732, %4020 ]
  %4030 = phi float [ %3539, %3544 ], [ %3733, %4020 ]
  %4031 = phi float [ %3540, %3544 ], [ %3734, %4020 ]
  %4032 = phi float [ %3541, %3544 ], [ %3735, %4020 ]
  %4033 = phi float [ %3510, %3544 ], [ %3736, %4020 ]
  %4034 = phi float [ %3509, %3544 ], [ %3737, %4020 ]
  %4035 = phi float [ 0.000000e+00, %3544 ], [ %3738, %4020 ]
  %4036 = phi float [ %3508, %3544 ], [ %3739, %4020 ]
  %4037 = phi float [ %3502, %3544 ], [ %3740, %4020 ]
  %4038 = phi float [ %3503, %3544 ], [ %3741, %4020 ]
  %4039 = phi float [ %3504, %3544 ], [ %3742, %4020 ]
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4031, float %4032, float %4030, float %4031, float %4032)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = call float @dx.op.unary.f32(i32 25, float %4040)  ; Rsqrt(value)
  %4042 = fmul fast float %4041, %4030
  %4043 = fmul fast float %4041, %4031
  %4044 = fmul fast float %4041, %4032
  %4045 = fadd fast float %4035, %946
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float %4042, float %4043, float %4044)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = call float @dx.op.unary.f32(i32 25, float %4047)  ; Rsqrt(value)
  %4049 = fmul fast float %4048, %4042
  %4050 = fmul fast float %4048, %4043
  %4051 = fmul fast float %4048, %4044
  br label %4052

; <label>:4052                                    ; preds = %4021, %3499
  %4053 = phi float [ %4049, %4021 ], [ %3539, %3499 ]
  %4054 = phi float [ %4050, %4021 ], [ %3540, %3499 ]
  %4055 = phi float [ %4051, %4021 ], [ %3541, %3499 ]
  %4056 = phi float [ %4037, %4021 ], [ %3502, %3499 ]
  %4057 = phi float [ %4038, %4021 ], [ %3503, %3499 ]
  %4058 = phi float [ %4039, %4021 ], [ %3504, %3499 ]
  %4059 = phi float [ %4027, %4021 ], [ %3505, %3499 ]
  %4060 = phi float [ %4028, %4021 ], [ %3506, %3499 ]
  %4061 = phi float [ %4029, %4021 ], [ %3507, %3499 ]
  %4062 = phi float [ %4036, %4021 ], [ %3508, %3499 ]
  %4063 = phi float [ %4046, %4021 ], [ %946, %3499 ]
  %4064 = phi float [ %4034, %4021 ], [ %3509, %3499 ]
  %4065 = phi float [ %4033, %4021 ], [ %3510, %3499 ]
  %4066 = phi float [ %4026, %4021 ], [ 0.000000e+00, %3499 ]
  %4067 = phi float [ %4025, %4021 ], [ 0.000000e+00, %3499 ]
  %4068 = phi float [ %4022, %4021 ], [ 0.000000e+00, %3499 ]
  %4069 = phi float [ %4023, %4021 ], [ %3513, %3499 ]
  %4070 = phi float [ %4024, %4021 ], [ %3511, %3499 ]
  %4071 = fadd fast float %4062, 0xBFB99999A0000000
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = fmul fast float %4072, 0x3FF1C71C80000000
  %4074 = call float @dx.op.binary.f32(i32 36, float %4062, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4075 = fsub fast float 1.000000e+00, %4073
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %4076, %4056
  %4078 = fmul fast float %4076, %4057
  %4079 = fmul fast float %4076, %4058
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = fmul fast float %4073, %4056
  %4084 = fmul fast float %4073, %4057
  %4085 = fmul fast float %4073, %4058
  %4086 = fadd fast float %4083, %4074
  %4087 = fadd fast float %4084, %4074
  %4088 = fadd fast float %4085, %4074
  %4089 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4090 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4091 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.i32 %4093, 3
  %4095 = and i32 %4094, 8
  %4096 = icmp ne i32 %4095, 0
  %4097 = call float @dx.op.binary.f32(i32 35, float %4080, float %4056)  ; FMax(a,b)
  %4098 = call float @dx.op.binary.f32(i32 35, float %4081, float %4056)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4082, float %4056)  ; FMax(a,b)
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4080, float %4081, float %4082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = select i1 %173, float %4056, float %4080
  %4102 = select i1 %173, float %4100, float %4081
  %4103 = select i1 %173, float 1.000000e+00, float %4082
  %4104 = select i1 %4096, float %4097, float %4101
  %4105 = select i1 %4096, float %4098, float %4102
  %4106 = select i1 %4096, float %4099, float %4103
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4111 = fadd fast float %4108, %131
  %4112 = fadd fast float %4109, %132
  %4113 = fadd fast float %4110, %133
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.CBufRet.f32 %4114, 1
  %4117 = fsub fast float %4111, %4115
  %4118 = fsub fast float %4112, %4116
  %4119 = fmul fast float %4117, %4117
  %4120 = fmul fast float %4118, %4118
  %4121 = fadd fast float %4119, %4120
  %4122 = call float @dx.op.unary.f32(i32 24, float %4121)  ; Sqrt(value)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4124 = fcmp fast olt float %4122, %4123
  br i1 %4124, label %4125, label %4192

; <label>:4125                                    ; preds = %4052
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 0
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %4133 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4136 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4137 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4138 = fadd fast float %4135, %4111
  %4139 = fadd fast float %4136, %4112
  %4140 = fadd fast float %4137, %4113
  %4141 = fmul fast float %4138, %4127
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4129, float %4141)  ; FMad(a,b,c)
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4131, float %4142)  ; FMad(a,b,c)
  %4144 = fmul fast float %4138, %4132
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4139, float %4133, float %4144)  ; FMad(a,b,c)
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4134, float %4145)  ; FMad(a,b,c)
  %4147 = fsub fast float %4143, %4135
  %4148 = fsub fast float %4146, %4136
  %4149 = fsub fast float %4147, %4115
  %4150 = fadd fast float %4149, %4123
  %4151 = fsub fast float %4148, %4116
  %4152 = fadd fast float %4151, %4123
  %4153 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4154 = fmul fast float %4150, %4153
  %4155 = fmul fast float %4152, %4153
  %4156 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4158 = fsub fast float 1.000000e+00, %4156
  %4159 = fsub fast float 1.000000e+00, %4157
  %4160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = fcmp fast ugt float %4161, 0.000000e+00
  br i1 %4162, label %4163, label %4466

; <label>:4163                                    ; preds = %4125
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4166 = fmul fast float %4165, %4161
  %4167 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4168 = fadd fast float %4167, %4166
  %4169 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4170 = fadd fast float %4168, %4137
  %4171 = fmul fast float %4143, %4131
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4134, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4169, float %4172)  ; FMad(a,b,c)
  %4174 = fsub fast float %4173, %4137
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4177 = fsub fast float %4174, %4176
  %4178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = fadd fast float %4183, %4179
  %4187 = fmul fast float %4186, 0x3F847AE140000000
  %4188 = fadd fast float %4184, %4180
  %4189 = fmul fast float %4188, 0x3F847AE140000000
  %4190 = fadd fast float %4185, %4181
  %4191 = fmul fast float %4190, 0x3F847AE140000000
  br label %4466

; <label>:4192                                    ; preds = %4052
  %4193 = and i32 %149, 1
  %4194 = icmp eq i32 %4193, 0
  br i1 %4194, label %4466, label %4195

; <label>:4195                                    ; preds = %4192
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4203 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4206 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4207 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4208 = fadd fast float %4205, %4111
  %4209 = fadd fast float %4206, %4112
  %4210 = fadd fast float %4207, %4113
  %4211 = fmul fast float %4208, %4197
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4199, float %4211)  ; FMad(a,b,c)
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4201, float %4212)  ; FMad(a,b,c)
  %4214 = fmul fast float %4208, %4202
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4203, float %4214)  ; FMad(a,b,c)
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4204, float %4215)  ; FMad(a,b,c)
  %4217 = fsub fast float %4213, %4205
  %4218 = fsub fast float %4216, %4206
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.i32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.i32 %4226, 1
  %4229 = udiv i32 %4228, %4227
  %4230 = fsub fast float %4217, %4220
  %4231 = fsub fast float %4218, %4221
  %4232 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4233 = call float @dx.op.binary.f32(i32 35, float %4231, float 0.000000e+00)  ; FMax(a,b)
  %4234 = call float @dx.op.binary.f32(i32 36, float %4232, float %4222)  ; FMin(a,b)
  %4235 = call float @dx.op.binary.f32(i32 36, float %4233, float %4223)  ; FMin(a,b)
  %4236 = add i32 %4227, -1
  %4237 = add i32 %4229, -1
  %4238 = fmul fast float %4234, %4225
  %4239 = fmul fast float %4235, %4225
  %4240 = fptoui float %4238 to i32
  %4241 = fptoui float %4239 to i32
  %4242 = call i32 @dx.op.binary.i32(i32 40, i32 %4240, i32 %4236)  ; UMin(a,b)
  %4243 = call i32 @dx.op.binary.i32(i32 40, i32 %4241, i32 %4237)  ; UMin(a,b)
  %4244 = mul i32 %4243, %4227
  %4245 = add i32 %4244, %4242
  %4246 = shl i32 %4245, 2
  %4247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.i32 %4247, 0
  %4249 = icmp eq i32 %4248, -1
  br i1 %4249, label %4466, label %4250

; <label>:4250                                    ; preds = %4195
  %4251 = mul i32 %4248, 148
  %4252 = add i32 %4251, 4
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4251, 8
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4251, 36
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = add i32 %4251, 60
  %4262 = add i32 %4251, 92
  %4263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.i32 %4263, 0
  %4265 = add i32 %4251, 116
  %4266 = fsub fast float %4217, %4254
  %4267 = fsub fast float %4218, %4257
  %4268 = fmul fast float %4225, %4266
  %4269 = fmul fast float %4225, %4267
  %4270 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4275 = call float @dx.op.unary.f32(i32 83, float %4270)  ; DerivCoarseX(value)
  %4276 = call float @dx.op.unary.f32(i32 83, float %4272)  ; DerivCoarseX(value)
  %4277 = call float @dx.op.unary.f32(i32 84, float %4270)  ; DerivCoarseY(value)
  %4278 = call float @dx.op.unary.f32(i32 84, float %4272)  ; DerivCoarseY(value)
  %4279 = fmul fast float %4275, %4274
  %4280 = fmul fast float %4276, %4274
  %4281 = fmul fast float %4277, %4274
  %4282 = fmul fast float %4278, %4274
  %4283 = call float @dx.op.dot2.f32(i32 54, float %4281, float %4282, float %4281, float %4282)  ; Dot2(ax,ay,bx,by)
  %4284 = call float @dx.op.dot2.f32(i32 54, float %4279, float %4280, float %4279, float %4280)  ; Dot2(ax,ay,bx,by)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4284, float %4283)  ; FMax(a,b)
  %4286 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4287 = fmul fast float %4286, 5.000000e-01
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 1
  %4290 = fadd fast float %4289, %4287
  %4291 = call float @dx.op.binary.f32(i32 35, float %4290, float 0.000000e+00)  ; FMax(a,b)
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = fadd fast float %4293, %4291
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4297 = fadd fast float %4294, %4296
  %4298 = add i32 %4264, 0
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4299, i32 0)  ; GetDimensions(handle,mipLevel)
  %4301 = extractvalue %dx.types.Dimensions %4300, 0
  %4302 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4301)  ; FirstbitLo(value)
  %4303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.i32 %4303, 1
  %4305 = sub nsw i32 %4304, %4302
  %4306 = sitofp i32 %4305 to float
  %4307 = fsub fast float %4297, %4306
  %4308 = call float @dx.op.binary.f32(i32 35, float %4307, float 0.000000e+00)  ; FMax(a,b)
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4299, %dx.types.Handle %27, float %4270, float %4272, float %4260, float undef, i32 0, i32 0, i32 undef, float %4308)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = fcmp ule float %4310, 0x3FE0101020000000
  %4312 = extractvalue %dx.types.CBufRet.i32 %4303, 0
  %4313 = and i32 %4312, 128
  %4314 = icmp ne i32 %4313, 0
  %4315 = and i1 %4311, %4314
  br i1 %4315, label %4466, label %4316

; <label>:4316                                    ; preds = %4250
  %4317 = add i32 %4251, 20
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = add i32 %4251, 24
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = add i32 %4251, 40
  %4324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = add i32 %4251, 96
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4331 = fmul fast float %4330, %4270
  %4332 = fmul fast float %4330, %4272
  %4333 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4334 = fadd fast float %4331, %4333
  %4335 = fadd fast float %4332, %4333
  %4336 = add i32 %4328, 0
  %4337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4337, i32 0)  ; GetDimensions(handle,mipLevel)
  %4339 = extractvalue %dx.types.Dimensions %4338, 0
  %4340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4339)  ; FirstbitLo(value)
  %4341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.i32 %4341, 1
  %4343 = sub nsw i32 %4342, %4340
  %4344 = sitofp i32 %4343 to float
  %4345 = fsub fast float %4294, %4344
  %4346 = call float @dx.op.binary.f32(i32 35, float %4345, float 0.000000e+00)  ; FMax(a,b)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4337, %dx.types.Handle %27, float %4334, float %4335, float %4325, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %4319
  %4350 = fadd fast float %4349, %4322
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4354 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4359 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4360 = fadd fast float %4356, %4217
  %4361 = fadd fast float %4358, %4218
  %4362 = fadd fast float %4350, %4359
  %4363 = fmul fast float %4360, %4352
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4361, float %4353, float %4363)  ; FMad(a,b,c)
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4354, float %4364)  ; FMad(a,b,c)
  %4366 = fsub fast float %4365, %4359
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4369 = fsub fast float %4366, %4368
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 0
  %4372 = call i32 @dx.op.binary.i32(i32 40, i32 %4248, i32 %4371)  ; UMin(a,b)
  %4373 = mul i32 %4372, 36
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = add i32 %4373, 4
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = fmul fast float %4378, %4270
  %4380 = fmul fast float %4378, %4272
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4382 = fadd fast float %4379, %4381
  %4383 = fadd fast float %4380, %4381
  %4384 = icmp eq i32 %4375, 0
  br i1 %4384, label %4453, label %4385

; <label>:4385                                    ; preds = %4316
  br label %4386

; <label>:4386                                    ; preds = %4443, %4385
  %4387 = phi float [ %4444, %4443 ], [ 0.000000e+00, %4385 ]
  %4388 = phi float [ %4445, %4443 ], [ 0.000000e+00, %4385 ]
  %4389 = phi float [ %4446, %4443 ], [ 0.000000e+00, %4385 ]
  %4390 = phi float [ %4447, %4443 ], [ 0.000000e+00, %4385 ]
  %4391 = phi float [ %4448, %4443 ], [ 0.000000e+00, %4385 ]
  %4392 = phi float [ %4449, %4443 ], [ 0.000000e+00, %4385 ]
  %4393 = phi i32 [ %4450, %4443 ], [ 0, %4385 ]
  %4394 = shl i32 %4393, 2
  %4395 = add i32 %4261, %4394
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = add i32 %4265, %4394
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = add i32 %4400, 0
  %4402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4401, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4403 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4402, i32 0)  ; GetDimensions(handle,mipLevel)
  %4404 = extractvalue %dx.types.Dimensions %4403, 0
  %4405 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4404)  ; FirstbitLo(value)
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 1
  %4408 = sub nsw i32 %4407, %4405
  %4409 = sitofp i32 %4408 to float
  %4410 = fsub fast float %4294, %4409
  %4411 = call float @dx.op.binary.f32(i32 35, float %4410, float 0.000000e+00)  ; FMax(a,b)
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4402, %dx.types.Handle %27, float %4382, float %4383, float %4397, float undef, i32 0, i32 0, i32 undef, float %4411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = fcmp fast ogt float %4413, 0.000000e+00
  br i1 %4414, label %4415, label %4443

; <label>:4415                                    ; preds = %4386
  %4416 = add i32 %4376, %4394
  %4417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.i32 %4417, 0
  %4419 = and i32 %4418, 32767
  %4420 = mul nuw nsw i32 %4419, 928
  %4421 = add nuw nsw i32 %4420, 48
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = add nuw nsw i32 %4420, 60
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = fmul fast float %4423, %4413
  %4432 = fmul fast float %4424, %4413
  %4433 = fmul fast float %4425, %4413
  %4434 = fadd fast float %4431, %4387
  %4435 = fadd fast float %4432, %4388
  %4436 = fadd fast float %4433, %4389
  %4437 = fmul fast float %4428, %4413
  %4438 = fmul fast float %4429, %4413
  %4439 = fmul fast float %4430, %4413
  %4440 = fadd fast float %4437, %4390
  %4441 = fadd fast float %4438, %4391
  %4442 = fadd fast float %4439, %4392
  br label %4443

; <label>:4443                                    ; preds = %4415, %4386
  %4444 = phi float [ %4434, %4415 ], [ %4387, %4386 ]
  %4445 = phi float [ %4435, %4415 ], [ %4388, %4386 ]
  %4446 = phi float [ %4436, %4415 ], [ %4389, %4386 ]
  %4447 = phi float [ %4440, %4415 ], [ %4390, %4386 ]
  %4448 = phi float [ %4441, %4415 ], [ %4391, %4386 ]
  %4449 = phi float [ %4442, %4415 ], [ %4392, %4386 ]
  %4450 = add nuw i32 %4393, 1
  %4451 = icmp eq i32 %4450, %4375
  br i1 %4451, label %4452, label %4386

; <label>:4452                                    ; preds = %4443
  br label %4453

; <label>:4453                                    ; preds = %4452, %4316
  %4454 = phi float [ 0.000000e+00, %4316 ], [ %4444, %4452 ]
  %4455 = phi float [ 0.000000e+00, %4316 ], [ %4445, %4452 ]
  %4456 = phi float [ 0.000000e+00, %4316 ], [ %4446, %4452 ]
  %4457 = phi float [ 0.000000e+00, %4316 ], [ %4447, %4452 ]
  %4458 = phi float [ 0.000000e+00, %4316 ], [ %4448, %4452 ]
  %4459 = phi float [ 0.000000e+00, %4316 ], [ %4449, %4452 ]
  %4460 = fadd fast float %4457, %4454
  %4461 = fmul fast float %4460, 0x3F847AE140000000
  %4462 = fadd fast float %4458, %4455
  %4463 = fmul fast float %4462, 0x3F847AE140000000
  %4464 = fadd fast float %4459, %4456
  %4465 = fmul fast float %4464, 0x3F847AE140000000
  br label %4466

; <label>:4466                                    ; preds = %4453, %4250, %4195, %4192, %4163, %4125
  %4467 = phi float [ %4177, %4163 ], [ -1.310720e+05, %4125 ], [ %4369, %4453 ], [ -1.310720e+05, %4195 ], [ -1.310720e+05, %4250 ], [ -1.310720e+05, %4192 ]
  %4468 = phi float [ %4187, %4163 ], [ 0.000000e+00, %4125 ], [ %4461, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4469 = phi float [ %4189, %4163 ], [ 0.000000e+00, %4125 ], [ %4463, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4470 = phi float [ %4191, %4163 ], [ 0.000000e+00, %4125 ], [ %4465, %4453 ], [ 0.000000e+00, %4195 ], [ 0.000000e+00, %4250 ], [ 0.000000e+00, %4192 ]
  %4471 = phi i1 [ true, %4163 ], [ false, %4125 ], [ true, %4453 ], [ false, %4195 ], [ false, %4250 ], [ false, %4192 ]
  %4472 = and i32 %149, 3
  %4473 = icmp eq i32 %4472, 1
  %4474 = select i1 %4473, float 1.000000e+00, float 0.000000e+00
  %4475 = fsub fast float %4467, %133
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = select i1 %4471, float %4476, float 1.000000e+00
  %4478 = fmul fast float %4477, %4474
  %4479 = icmp eq i32 %4472, 3
  %4480 = select i1 %4479, float 1.000000e+00, float %4478
  %4481 = call float @dx.op.binary.f32(i32 35, float %4068, float %4480)  ; FMax(a,b)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fcmp fast une float %4482, 0.000000e+00
  %4484 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = call float @dx.op.unary.f32(i32 25, float %4484)  ; Rsqrt(value)
  br i1 %4483, label %4493, label %4486

; <label>:4486                                    ; preds = %4466
  %4487 = fmul fast float %4485, %131
  %4488 = fmul fast float %4485, %132
  %4489 = fmul fast float %4485, %133
  %4490 = fsub fast float -0.000000e+00, %4487
  %4491 = fsub fast float -0.000000e+00, %4488
  %4492 = fsub fast float -0.000000e+00, %4489
  br label %4661

; <label>:4493                                    ; preds = %4466
  %4494 = fmul fast float %131, %4485
  %4495 = fsub fast float -0.000000e+00, %4494
  %4496 = fmul fast float %132, %4485
  %4497 = fsub fast float -0.000000e+00, %4496
  %4498 = fmul fast float %133, %4485
  %4499 = fsub fast float -0.000000e+00, %4498
  %4500 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4497, float %4499, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = fmul fast float %4482, 2.500000e+00
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = fmul fast float %4482, 0x4013FFFFE0000000
  %4504 = fadd fast float %4503, 0xBFFFFFFFE0000000
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = fmul fast float %4482, 0x4004000020000000
  %4507 = fadd fast float %4506, 0xBFF8000040000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4510 = fmul fast float %4071, 1.000000e+01
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, 2.000000e+00
  %4513 = fsub fast float 3.000000e+00, %4512
  %4514 = fmul fast float %4511, %4511
  %4515 = fmul fast float %4514, %4513
  %4516 = fsub fast float 1.000000e+00, %4515
  %4517 = fsub fast float 0x3FE3333340000000, %4092
  %4518 = fmul fast float %4517, 0x400AAAAAA0000000
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4516, %4519
  %4521 = fmul fast float %4104, 0x3FEA2B8620000000
  %4522 = fmul fast float %4105, 0x3FEA2B8620000000
  %4523 = fmul fast float %4106, 0x3FEA2B8620000000
  %4524 = fadd fast float %4521, 0x3FC81DFBA0000000
  %4525 = fmul fast float %4524, %4104
  %4526 = fadd fast float %4525, 0x3F910E6020000000
  %4527 = fadd fast float %4522, 0x3FC81DFBA0000000
  %4528 = fmul fast float %4527, %4105
  %4529 = fadd fast float %4528, 0x3F910E6020000000
  %4530 = fadd fast float %4523, 0x3FC81DFBA0000000
  %4531 = fmul fast float %4530, %4106
  %4532 = fadd fast float %4531, 0x3F910E6020000000
  %4533 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4534 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4536 = fsub fast float %4533, %4104
  %4537 = fsub fast float %4534, %4105
  %4538 = fsub fast float %4535, %4106
  %4539 = fmul fast float %4536, %4509
  %4540 = fmul fast float %4539, %4520
  %4541 = fmul fast float %4537, %4509
  %4542 = fmul fast float %4541, %4520
  %4543 = fmul fast float %4538, %4509
  %4544 = fmul fast float %4543, %4520
  %4545 = fadd fast float %4540, %4104
  %4546 = fadd fast float %4542, %4105
  %4547 = fadd fast float %4544, %4106
  %4548 = fmul fast float %4065, %4065
  %4549 = fmul fast float %4548, %4548
  %4550 = fadd fast float %4505, 1.000000e+00
  %4551 = fsub fast float %4550, %4520
  %4552 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4553 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fsub fast float 1.000000e+00, %4549
  %4556 = call float @dx.op.binary.f32(i32 36, float %4552, float %4555)  ; FMin(a,b)
  %4557 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4558 = call float @dx.op.binary.f32(i32 35, float %4556, float %4557)  ; FMax(a,b)
  %4559 = fadd fast float %4554, 0xBFE4CCCCC0000000
  %4560 = fmul fast float %4559, 0x4006DB6DA0000000
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fmul fast float %4561, 2.000000e+00
  %4563 = fsub fast float 3.000000e+00, %4562
  %4564 = bitcast float %4089 to i32
  %4565 = ashr i32 %4564, 1
  %4566 = add nsw i32 %4565, 532487669
  %4567 = bitcast i32 %4566 to float
  %4568 = fsub fast float 1.000000e+00, %4567
  %4569 = bitcast float %4568 to i32
  %4570 = sub nsw i32 2129859010, %4569
  %4571 = bitcast i32 %4570 to float
  %4572 = fmul fast float %4571, 2.000000e+00
  %4573 = bitcast float %4090 to i32
  %4574 = ashr i32 %4573, 1
  %4575 = add nsw i32 %4574, 532487669
  %4576 = bitcast i32 %4575 to float
  %4577 = fsub fast float 1.000000e+00, %4576
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = bitcast float %4091 to i32
  %4583 = ashr i32 %4582, 1
  %4584 = add nsw i32 %4583, 532487669
  %4585 = bitcast i32 %4584 to float
  %4586 = fsub fast float 1.000000e+00, %4585
  %4587 = bitcast float %4586 to i32
  %4588 = sub nsw i32 2129859010, %4587
  %4589 = bitcast i32 %4588 to float
  %4590 = fmul fast float %4589, 2.000000e+00
  %4591 = fsub fast float 0x4002A9FBE0000000, %4572
  %4592 = fadd fast float %4572, 0x3FD54FDF00000000
  %4593 = bitcast float %4592 to i32
  %4594 = sub nsw i32 2129859010, %4593
  %4595 = bitcast i32 %4594 to float
  %4596 = fmul fast float %4595, %4591
  %4597 = fmul fast float %4596, %4596
  %4598 = fsub fast float 0x4002A9FBE0000000, %4581
  %4599 = fadd fast float %4581, 0x3FD54FDF00000000
  %4600 = bitcast float %4599 to i32
  %4601 = sub nsw i32 2129859010, %4600
  %4602 = bitcast i32 %4601 to float
  %4603 = fmul fast float %4602, %4598
  %4604 = fmul fast float %4603, %4603
  %4605 = fsub fast float 0x4002A9FBE0000000, %4590
  %4606 = fadd fast float %4590, 0x3FD54FDF00000000
  %4607 = bitcast float %4606 to i32
  %4608 = sub nsw i32 2129859010, %4607
  %4609 = bitcast i32 %4608 to float
  %4610 = fmul fast float %4609, %4605
  %4611 = fmul fast float %4610, %4610
  %4612 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4597)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4604)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4611)  ; FMax(a,b)
  %4615 = fsub fast float 1.000000e+00, %4500
  %4616 = fadd fast float %4615, %4516
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fsub fast float 1.000000e+00, %4480
  %4619 = fmul fast float %4558, %4618
  %4620 = fmul fast float %4561, %4561
  %4621 = fmul fast float %4620, %4619
  %4622 = fmul fast float %4621, %4563
  %4623 = fmul fast float %4618, 0xBFE99999A0000000
  %4624 = fmul fast float %4623, %4509
  %4625 = fmul fast float %4624, %4520
  %4626 = fadd fast float %4625, 1.000000e+00
  %4627 = fadd fast float %4092, -1.000000e+00
  %4628 = fmul fast float %4626, %4627
  %4629 = fadd fast float %4628, 1.000000e+00
  %4630 = fsub fast float %4612, %4089
  %4631 = fsub fast float %4613, %4090
  %4632 = fsub fast float %4614, %4091
  %4633 = fmul fast float %4622, %4630
  %4634 = fmul fast float %4622, %4631
  %4635 = fmul fast float %4622, %4632
  %4636 = fadd fast float %4633, %4089
  %4637 = fadd fast float %4634, %4090
  %4638 = fadd fast float %4635, %4091
  %4639 = fsub fast float %75, %4053
  %4640 = fsub fast float %76, %4054
  %4641 = fsub fast float %77, %4055
  %4642 = fmul fast float %4622, %4639
  %4643 = fmul fast float %4622, %4640
  %4644 = fmul fast float %4622, %4641
  %4645 = fadd fast float %4642, %4053
  %4646 = fadd fast float %4643, %4054
  %4647 = fadd fast float %4644, %4055
  %4648 = fmul fast float %4622, %4617
  %4649 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = fmul fast float %4648, %4650
  %4652 = fadd fast float %4651, %4649
  %4653 = fsub fast float 1.000000e+00, %4065
  %4654 = fmul fast float %4622, %4653
  %4655 = fadd fast float %4654, %4065
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4646, float %4647, float %4645, float %4646, float %4647)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 25, float %4656)  ; Rsqrt(value)
  %4658 = fmul fast float %4645, %4657
  %4659 = fmul fast float %4646, %4657
  %4660 = fmul fast float %4647, %4657
  br label %4661

; <label>:4661                                    ; preds = %4493, %4486
  %4662 = phi float [ %4492, %4486 ], [ %4499, %4493 ]
  %4663 = phi float [ %4491, %4486 ], [ %4497, %4493 ]
  %4664 = phi float [ %4490, %4486 ], [ %4495, %4493 ]
  %4665 = phi float [ %4489, %4486 ], [ %4498, %4493 ]
  %4666 = phi float [ %4488, %4486 ], [ %4496, %4493 ]
  %4667 = phi float [ %4487, %4486 ], [ %4494, %4493 ]
  %4668 = phi float [ %4089, %4486 ], [ %4636, %4493 ]
  %4669 = phi float [ %4090, %4486 ], [ %4637, %4493 ]
  %4670 = phi float [ %4091, %4486 ], [ %4638, %4493 ]
  %4671 = phi float [ %4104, %4486 ], [ %4545, %4493 ]
  %4672 = phi float [ %4105, %4486 ], [ %4546, %4493 ]
  %4673 = phi float [ %4106, %4486 ], [ %4547, %4493 ]
  %4674 = phi float [ %4053, %4486 ], [ %4658, %4493 ]
  %4675 = phi float [ %4054, %4486 ], [ %4659, %4493 ]
  %4676 = phi float [ %4055, %4486 ], [ %4660, %4493 ]
  %4677 = phi float [ %4092, %4486 ], [ %4652, %4493 ]
  %4678 = phi float [ %4065, %4486 ], [ %4655, %4493 ]
  %4679 = select i1 %173, float 0.000000e+00, float %4670
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %4664, float %4663, float %4662)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4666, float %4665, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = fmul fast float %4682, 2.000000e+00
  %4684 = fmul fast float %4683, %4674
  %4685 = fmul fast float %4683, %4675
  %4686 = fmul fast float %4683, %4676
  %4687 = fsub fast float %4667, %4684
  %4688 = fsub fast float %4666, %4685
  %4689 = fsub fast float %4665, %4686
  %4690 = call float @dx.op.binary.f32(i32 36, float %4678, float 1.000000e+00)  ; FMin(a,b)
  %4691 = fsub fast float 1.000000e+00, %4678
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = fsub fast float 1.000000e+00, %45
  %4695 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4697 = fdiv fast float %4694, %4696
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4699, 5.000000e-01
  %4701 = fadd fast float %4700, 5.000000e-01
  %4702 = fmul fast float %4701, %45
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4705 = fmul fast float %4704, %4697
  %4706 = fadd fast float %4702, %4705
  %4707 = fsub fast float 5.000000e-01, %4700
  %4708 = fmul fast float %4707, %4671
  %4709 = fmul fast float %4707, %4672
  %4710 = fmul fast float %4707, %4673
  %4711 = fadd fast float %4706, %4708
  %4712 = fadd fast float %4706, %4709
  %4713 = fadd fast float %4706, %4710
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fmul fast float %4715, 5.000000e-01
  %4717 = fadd fast float %4716, 5.000000e-01
  %4718 = fmul fast float %4717, %45
  %4719 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4720, %4697
  %4722 = fadd fast float %4718, %4721
  %4723 = fsub fast float 5.000000e-01, %4716
  %4724 = fmul fast float %4723, %4671
  %4725 = fmul fast float %4723, %4672
  %4726 = fmul fast float %4723, %4673
  %4727 = fadd fast float %4722, %4724
  %4728 = fadd fast float %4722, %4725
  %4729 = fadd fast float %4722, %4726
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4732 = call float @dx.op.binary.f32(i32 36, float %4671, float %4731)  ; FMin(a,b)
  %4733 = fsub fast float 1.000000e+00, %4690
  %4734 = fmul fast float %4732, %4733
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = call float @dx.op.binary.f32(i32 36, float %4672, float %4731)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4733
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.binary.f32(i32 36, float %4673, float %4731)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4733
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = fmul fast float %4690, %46
  %4752 = fmul fast float %4751, %4711
  %4753 = fmul fast float %4752, %4738
  %4754 = fmul fast float %4690, %47
  %4755 = fmul fast float %4754, %4712
  %4756 = fmul fast float %4755, %4744
  %4757 = fmul fast float %4690, %48
  %4758 = fmul fast float %4757, %4713
  %4759 = fmul fast float %4758, %4750
  %4760 = call float @dx.op.binary.f32(i32 36, float %4668, float %4731)  ; FMin(a,b)
  %4761 = fmul fast float %4760, %4733
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = call float @dx.op.binary.f32(i32 36, float %4669, float %4731)  ; FMin(a,b)
  %4767 = fmul fast float %4766, %4733
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = bitcast float %4768 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = call float @dx.op.binary.f32(i32 36, float %4679, float %4731)  ; FMin(a,b)
  %4773 = fmul fast float %4772, %4733
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = fmul fast float %4751, %4727
  %4779 = fmul fast float %4778, %4765
  %4780 = fmul fast float %4754, %4728
  %4781 = fmul fast float %4780, %4771
  %4782 = fmul fast float %4757, %4729
  %4783 = fmul fast float %4782, %4777
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4756, float %4759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = select i1 %173, float 0.000000e+00, float %4753
  %4786 = select i1 %173, float %4784, float %4756
  %4787 = select i1 %173, float 0.000000e+00, float %4759
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4781, float %4783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = select i1 %173, float 0.000000e+00, float %4779
  %4790 = select i1 %173, float %4788, float %4781
  %4791 = select i1 %173, float 0.000000e+00, float %4783
  %4792 = fmul fast float %4681, 9.843750e-01
  %4793 = fmul fast float %4677, 9.843750e-01
  %4794 = fadd fast float %4792, 7.812500e-03
  %4795 = fadd fast float %4793, 7.812500e-03
  %4796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 3
  %4799 = fmul fast float %4797, %4668
  %4800 = fmul fast float %4797, %4669
  %4801 = fmul fast float %4797, %4679
  %4802 = fadd fast float %4799, %4798
  %4803 = fadd fast float %4800, %4798
  %4804 = fadd fast float %4801, %4798
  %4805 = fcmp fast ogt float %4066, 0.000000e+00
  br i1 %4805, label %4806, label %4832

; <label>:4806                                    ; preds = %4661
  %4807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4066, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = fadd fast float %4808, -5.000000e-01
  %4812 = fadd fast float %4809, -5.000000e-01
  %4813 = fadd fast float %4810, -5.000000e-01
  %4814 = fsub fast float 1.000000e+00, %4668
  %4815 = fsub fast float 1.000000e+00, %4669
  %4816 = fsub fast float 1.000000e+00, %4679
  %4817 = fmul fast float %4668, 4.000000e+00
  %4818 = fmul fast float %4817, %4814
  %4819 = fmul fast float %4818, %4811
  %4820 = fmul fast float %4669, 4.000000e+00
  %4821 = fmul fast float %4820, %4815
  %4822 = fmul fast float %4821, %4812
  %4823 = fmul fast float %4679, 4.000000e+00
  %4824 = fmul fast float %4823, %4816
  %4825 = fmul fast float %4824, %4813
  %4826 = fadd fast float %4819, %4802
  %4827 = fadd fast float %4822, %4803
  %4828 = fadd fast float %4825, %4804
  %4829 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  br label %4832

; <label>:4832                                    ; preds = %4806, %4661
  %4833 = phi float [ %4829, %4806 ], [ %4802, %4661 ]
  %4834 = phi float [ %4830, %4806 ], [ %4803, %4661 ]
  %4835 = phi float [ %4831, %4806 ], [ %4804, %4661 ]
  %4836 = call float @dx.op.binary.f32(i32 35, float %4834, float %4835)  ; FMax(a,b)
  %4837 = call float @dx.op.binary.f32(i32 35, float %4833, float %4836)  ; FMax(a,b)
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = fmul fast float %4838, %4785
  %4840 = fmul fast float %4838, %4786
  %4841 = fmul fast float %4838, %4787
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = fcmp fast ogt float %4842, 0x3E7FF19E20000000
  %4844 = fdiv fast float 1.000000e+00, %4842
  %4845 = select i1 %4843, float %4844, float 0.000000e+00
  %4846 = fmul fast float %4845, %4671
  %4847 = fmul fast float %4845, %4672
  %4848 = fmul fast float %4845, %4673
  %4849 = fadd fast float %4846, -1.000000e+00
  %4850 = fadd fast float %4847, -1.000000e+00
  %4851 = fadd fast float %4848, -1.000000e+00
  %4852 = fmul fast float %4849, 5.000000e-01
  %4853 = fmul fast float %4850, 5.000000e-01
  %4854 = fmul fast float %4851, 5.000000e-01
  %4855 = fadd fast float %4852, 1.000000e+00
  %4856 = fadd fast float %4853, 1.000000e+00
  %4857 = fadd fast float %4854, 1.000000e+00
  %4858 = fmul fast float %4833, %4789
  %4859 = fmul fast float %4834, %4790
  %4860 = fmul fast float %4835, %4791
  %4861 = fsub fast float 1.000000e+00, %4681
  %4862 = bitcast float %4861 to i32
  %4863 = sitofp i32 %4862 to float
  %4864 = fmul fast float %4863, 5.000000e+00
  %4865 = fadd fast float %4864, 0xC1EFBF8940000000
  %4866 = fptosi float %4865 to i32
  %4867 = bitcast i32 %4866 to float
  %4868 = fmul fast float %4867, %4067
  %4869 = fmul fast float %4785, %4868
  %4870 = fmul fast float %4869, %4838
  %4871 = fmul fast float %4870, %4855
  %4872 = fmul fast float %4786, %4868
  %4873 = fmul fast float %4872, %4838
  %4874 = fmul fast float %4873, %4856
  %4875 = fmul fast float %4787, %4868
  %4876 = fmul fast float %4875, %4838
  %4877 = fmul fast float %4876, %4857
  %4878 = fmul fast float %4839, %4063
  %4879 = fmul fast float %4840, %4063
  %4880 = fmul fast float %4841, %4063
  %4881 = fadd fast float %4858, %4059
  %4882 = fadd fast float %4881, %4871
  %4883 = fmul fast float %4882, %4063
  %4884 = fadd fast float %4859, %4060
  %4885 = fadd fast float %4884, %4874
  %4886 = fmul fast float %4885, %4063
  %4887 = fadd fast float %4860, %4061
  %4888 = fadd fast float %4887, %4877
  %4889 = fmul fast float %4888, %4063
  %4890 = bitcast i32 %4693 to float
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4893 = fcmp fast oeq float %4892, 0.000000e+00
  br i1 %4893, label %5121, label %4894

; <label>:4894                                    ; preds = %4832
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.CBufRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.CBufRet.f32 %4898, 2
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.CBufRet.f32 %4902, 1
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = select i1 %173, float %4903, float %4899
  %4907 = select i1 %173, float %4905, float %4900
  %4908 = select i1 %173, float %4904, float %4901
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4911 = fcmp fast une float %4910, 0.000000e+00
  br i1 %4911, label %4912, label %4929

; <label>:4912                                    ; preds = %4894
  %4913 = fptoui float %68 to i32
  %4914 = fptoui float %69 to i32
  %4915 = lshr i32 %4913, 4
  %4916 = lshr i32 %4914, 4
  %4917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4918 = extractvalue %dx.types.CBufRet.f32 %4917, 0
  %4919 = fptoui float %4918 to i32
  %4920 = add i32 %4919, 15
  %4921 = lshr i32 %4920, 4
  %4922 = mul i32 %4921, %4916
  %4923 = add i32 %4922, %4915
  %4924 = shl i32 %4923, 3
  %4925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4924, i32 undef)  ; BufferLoad(srv,index,wot)
  %4926 = extractvalue %dx.types.ResRet.i32 %4925, 0
  %4927 = and i32 %4926, -268435456
  %4928 = icmp eq i32 %4927, -1342177280
  br i1 %4928, label %4939, label %4929

; <label>:4929                                    ; preds = %4912, %4894
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4933 = fmul fast float %4931, %68
  %4934 = fmul fast float %4932, %69
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4933, float %4934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  br label %4939

; <label>:4939                                    ; preds = %4929, %4912
  %4940 = phi float [ %4936, %4929 ], [ 0.000000e+00, %4912 ]
  %4941 = phi float [ %4937, %4929 ], [ 0.000000e+00, %4912 ]
  %4942 = phi float [ %4938, %4929 ], [ 0.000000e+00, %4912 ]
  %4943 = call float @dx.op.binary.f32(i32 36, float %4941, float %4942)  ; FMin(a,b)
  %4944 = call float @dx.op.binary.f32(i32 36, float %4940, float %4943)  ; FMin(a,b)
  %4945 = fcmp fast ogt float %4944, 0.000000e+00
  br i1 %4945, label %4946, label %5121, !dx.controlflow.hints !72

; <label>:4946                                    ; preds = %4939
  %4947 = fmul fast float %4940, %4906
  %4948 = fmul fast float %4941, %4907
  %4949 = fmul fast float %4942, %4908
  %4950 = fsub fast float %4895, %4667
  %4951 = fsub fast float %4896, %4666
  %4952 = fsub fast float %4897, %4665
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4950, float %4951, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.unary.f32(i32 25, float %4953)  ; Rsqrt(value)
  %4955 = fmul fast float %4954, %4950
  %4956 = fmul fast float %4954, %4951
  %4957 = fmul fast float %4954, %4952
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4663, float %4662, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4961 = fmul fast float %4960, %4960
  %4962 = fmul fast float %4961, %4890
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4963, %4960
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = fmul fast float %4965, %4965
  %4967 = call float @dx.op.unary.f32(i32 6, float %4958)  ; FAbs(value)
  %4968 = fsub fast float 1.000000e+00, %4677
  %4969 = call float @dx.op.binary.f32(i32 35, float %4968, float 0x3F847AE140000000)  ; FMax(a,b)
  %4970 = fmul fast float %4969, %4969
  %4971 = fmul fast float %4970, %4970
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = fmul fast float %4681, %4681
  %4974 = fmul fast float %4973, %4972
  %4975 = fadd fast float %4974, %4971
  %4976 = bitcast float %4975 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fadd fast float %4979, %4681
  %4981 = fmul fast float %4971, %4966
  %4982 = fsub fast float 1.000000e+00, %4966
  %4983 = fadd fast float %4982, %4981
  %4984 = fmul fast float %4967, %4967
  %4985 = fmul fast float %4984, %4972
  %4986 = fadd fast float %4985, %4971
  %4987 = bitcast float %4986 to i32
  %4988 = ashr i32 %4987, 1
  %4989 = add nsw i32 %4988, 532487669
  %4990 = bitcast i32 %4989 to float
  %4991 = fadd fast float %4990, %4967
  %4992 = fmul fast float %4983, %4983
  %4993 = fmul fast float %4992, %4980
  %4994 = fmul fast float %4993, %4991
  %4995 = fdiv fast float 0x3FF0A00000000000, %4994
  %4996 = fmul fast float %4995, %4971
  %4997 = call float @dx.op.unary.f32(i32 6, float %4959)  ; FAbs(value)
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sitofp i32 %4999 to float
  %5001 = fmul fast float %5000, 5.000000e+00
  %5002 = fadd fast float %5001, 0xC1EFBF8940000000
  %5003 = fptosi float %5002 to i32
  %5004 = bitcast i32 %5003 to float
  %5005 = fsub fast float 1.000000e+00, %4668
  %5006 = fsub fast float 1.000000e+00, %4669
  %5007 = fsub fast float 1.000000e+00, %4679
  %5008 = fmul fast float %5004, %5005
  %5009 = fmul fast float %5004, %5006
  %5010 = fmul fast float %5004, %5007
  %5011 = fadd fast float %5008, %4668
  %5012 = fadd fast float %5009, %4669
  %5013 = fadd fast float %5010, %4679
  br i1 %4805, label %5014, label %5037

; <label>:5014                                    ; preds = %4946
  %5015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4066, float %4997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5016 = extractvalue %dx.types.ResRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.ResRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.ResRet.f32 %5015, 2
  %5019 = fadd fast float %5016, -5.000000e-01
  %5020 = fadd fast float %5017, -5.000000e-01
  %5021 = fadd fast float %5018, -5.000000e-01
  %5022 = fmul fast float %4668, 4.000000e+00
  %5023 = fmul fast float %5022, %5005
  %5024 = fmul fast float %5023, %5019
  %5025 = fmul fast float %4669, 4.000000e+00
  %5026 = fmul fast float %5025, %5006
  %5027 = fmul fast float %5026, %5020
  %5028 = fmul fast float %4679, 4.000000e+00
  %5029 = fmul fast float %5028, %5007
  %5030 = fmul fast float %5029, %5021
  %5031 = fadd fast float %5024, %5011
  %5032 = fadd fast float %5027, %5012
  %5033 = fadd fast float %5030, %5013
  %5034 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5035 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  br label %5037

; <label>:5037                                    ; preds = %5014, %4946
  %5038 = phi float [ %5034, %5014 ], [ %5011, %4946 ]
  %5039 = phi float [ %5035, %5014 ], [ %5012, %4946 ]
  %5040 = phi float [ %5036, %5014 ], [ %5013, %4946 ]
  %5041 = fmul fast float %4958, 9.843750e-01
  %5042 = fadd fast float %5041, 7.812500e-03
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5042, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 3
  %5046 = fmul fast float %5044, %4668
  %5047 = fmul fast float %5044, %4669
  %5048 = fmul fast float %5044, %4679
  %5049 = fadd fast float %5046, %5045
  %5050 = fadd fast float %5047, %5045
  %5051 = fadd fast float %5048, %5045
  br i1 %4805, label %5052, label %5075

; <label>:5052                                    ; preds = %5037
  %5053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4066, float %4958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = fadd fast float %5054, -5.000000e-01
  %5058 = fadd fast float %5055, -5.000000e-01
  %5059 = fadd fast float %5056, -5.000000e-01
  %5060 = fmul fast float %4668, 4.000000e+00
  %5061 = fmul fast float %5060, %5005
  %5062 = fmul fast float %5061, %5057
  %5063 = fmul fast float %4669, 4.000000e+00
  %5064 = fmul fast float %5063, %5006
  %5065 = fmul fast float %5064, %5058
  %5066 = fmul fast float %4679, 4.000000e+00
  %5067 = fmul fast float %5066, %5007
  %5068 = fmul fast float %5067, %5059
  %5069 = fadd fast float %5062, %5049
  %5070 = fadd fast float %5065, %5050
  %5071 = fadd fast float %5068, %5051
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  br label %5075

; <label>:5075                                    ; preds = %5052, %5037
  %5076 = phi float [ %5072, %5052 ], [ %5049, %5037 ]
  %5077 = phi float [ %5073, %5052 ], [ %5050, %5037 ]
  %5078 = phi float [ %5074, %5052 ], [ %5051, %5037 ]
  %5079 = call float @dx.op.binary.f32(i32 35, float %5077, float %5078)  ; FMax(a,b)
  %5080 = call float @dx.op.binary.f32(i32 35, float %5076, float %5079)  ; FMax(a,b)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %5038, %4996
  %5083 = fmul fast float %5039, %4996
  %5084 = fmul fast float %5040, %4996
  %5085 = fsub fast float 1.000000e+00, %4959
  %5086 = bitcast float %5085 to i32
  %5087 = sitofp i32 %5086 to float
  %5088 = fmul fast float %5087, 5.000000e+00
  %5089 = fadd fast float %5088, 0xC1EFBF8940000000
  %5090 = fptosi float %5089 to i32
  %5091 = bitcast i32 %5090 to float
  %5092 = fmul fast float %5091, %4067
  %5093 = fmul fast float %5081, %5092
  %5094 = fmul fast float %5093, %4855
  %5095 = fmul fast float %5093, %4856
  %5096 = fmul fast float %5093, %4857
  %5097 = fadd fast float %5094, %5082
  %5098 = fadd fast float %5095, %5083
  %5099 = fadd fast float %5096, %5084
  %5100 = fmul fast float %4964, %4947
  %5101 = fmul fast float %5100, %5081
  %5102 = fmul fast float %4964, %4948
  %5103 = fmul fast float %5102, %5081
  %5104 = fmul fast float %4964, %4949
  %5105 = fmul fast float %5104, %5081
  %5106 = fmul fast float %5100, %5097
  %5107 = fmul fast float %5102, %5098
  %5108 = fmul fast float %5104, %5099
  %5109 = fadd fast float %5101, %4839
  %5110 = fmul fast float %5109, %4063
  %5111 = fadd fast float %5103, %4840
  %5112 = fmul fast float %5111, %4063
  %5113 = fadd fast float %5105, %4841
  %5114 = fmul fast float %5113, %4063
  %5115 = fadd fast float %5106, %4882
  %5116 = fmul fast float %5115, %4063
  %5117 = fadd fast float %5107, %4885
  %5118 = fmul fast float %5117, %4063
  %5119 = fadd fast float %5108, %4888
  %5120 = fmul fast float %5119, %4063
  br label %5121

; <label>:5121                                    ; preds = %5075, %4939, %4832
  %5122 = phi float [ %4883, %4832 ], [ %4883, %4939 ], [ %5116, %5075 ]
  %5123 = phi float [ %4886, %4832 ], [ %4886, %4939 ], [ %5118, %5075 ]
  %5124 = phi float [ %4889, %4832 ], [ %4889, %4939 ], [ %5120, %5075 ]
  %5125 = phi float [ %4878, %4832 ], [ %4878, %4939 ], [ %5110, %5075 ]
  %5126 = phi float [ %4879, %4832 ], [ %4879, %4939 ], [ %5112, %5075 ]
  %5127 = phi float [ %4880, %4832 ], [ %4880, %4939 ], [ %5114, %5075 ]
  %5128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.i32 %5128, 0
  %5130 = icmp eq i32 %5129, 0
  br i1 %5130, label %5565, label %5131

; <label>:5131                                    ; preds = %5121
  %5132 = fptoui float %68 to i32
  %5133 = fptoui float %69 to i32
  %5134 = lshr i32 %5132, 4
  %5135 = lshr i32 %5133, 4
  %5136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.i32 %5136, 0
  %5138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5135, i32 %5137, i32 %5134)  ; UMad(a,b,c)
  %5139 = add nsw i32 %5129, -1
  %5140 = call i32 @dx.op.binary.i32(i32 37, i32 %5139, i32 0)  ; IMax(a,b)
  %5141 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5142 = fptoui float %5141 to i32
  %5143 = lshr i32 %5142, 5
  %5144 = call i32 @dx.op.binary.i32(i32 40, i32 %5143, i32 8191)  ; UMin(a,b)
  %5145 = shl i32 %5144, 2
  %5146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.i32 %5146, 0
  %5148 = lshr i32 %5147, 16
  %5149 = and i32 %5147, 65535
  %5150 = lshr i32 %5147, 21
  %5151 = lshr i32 %5149, 5
  %5152 = call i32 @dx.op.binary.i32(i32 40, i32 %5151, i32 %5140)  ; UMin(a,b)
  %5153 = icmp ugt i32 %5150, %5152
  br i1 %5153, label %5565, label %5154

; <label>:5154                                    ; preds = %5131
  br label %5155

; <label>:5155                                    ; preds = %5555, %5154
  %5156 = phi i32 [ %5562, %5555 ], [ %5150, %5154 ]
  %5157 = phi float [ %5556, %5555 ], [ %5122, %5154 ]
  %5158 = phi float [ %5557, %5555 ], [ %5123, %5154 ]
  %5159 = phi float [ %5558, %5555 ], [ %5124, %5154 ]
  %5160 = phi float [ %5559, %5555 ], [ %5125, %5154 ]
  %5161 = phi float [ %5560, %5555 ], [ %5126, %5154 ]
  %5162 = phi float [ %5561, %5555 ], [ %5127, %5154 ]
  %5163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.i32 %5163, 0
  %5165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5138, i32 %5164, i32 %5156)  ; UMad(a,b,c)
  %5166 = shl i32 %5165, 2
  %5167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5166, i32 undef)  ; BufferLoad(srv,index,wot)
  %5168 = extractvalue %dx.types.ResRet.i32 %5167, 0
  %5169 = shl i32 %5156, 5
  %5170 = sub nsw i32 %5148, %5169
  %5171 = call i32 @dx.op.binary.i32(i32 37, i32 %5170, i32 0)  ; IMax(a,b)
  %5172 = call i32 @dx.op.binary.i32(i32 38, i32 %5171, i32 31)  ; IMin(a,b)
  %5173 = sub nsw i32 1, %5148
  %5174 = add nsw i32 %5173, %5149
  %5175 = call i32 @dx.op.binary.i32(i32 37, i32 %5174, i32 0)  ; IMax(a,b)
  %5176 = call i32 @dx.op.binary.i32(i32 38, i32 %5175, i32 32)  ; IMin(a,b)
  %5177 = and i32 %5176, 31
  %5178 = shl i32 -1, %5177
  %5179 = xor i32 %5178, -1
  %5180 = and i32 %5172, 31
  %5181 = shl i32 %5179, %5180
  %5182 = icmp eq i32 %5176, 32
  %5183 = select i1 %5182, i32 -1, i32 %5181
  %5184 = and i32 %5183, %5168
  %5185 = icmp eq i32 %5184, 0
  br i1 %5185, label %5555, label %5186

; <label>:5186                                    ; preds = %5155
  br label %5187

; <label>:5187                                    ; preds = %5267, %5186
  %5188 = phi i32 [ %5199, %5267 ], [ %5184, %5186 ]
  %5189 = phi float [ %5268, %5267 ], [ %5157, %5186 ]
  %5190 = phi float [ %5269, %5267 ], [ %5158, %5186 ]
  %5191 = phi float [ %5270, %5267 ], [ %5159, %5186 ]
  %5192 = phi float [ %5271, %5267 ], [ %5160, %5186 ]
  %5193 = phi float [ %5272, %5267 ], [ %5161, %5186 ]
  %5194 = phi float [ %5273, %5267 ], [ %5162, %5186 ]
  %5195 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5188)  ; FirstbitLo(value)
  %5196 = add i32 %5195, %5169
  %5197 = and i32 %5195, 31
  %5198 = shl i32 1, %5197
  %5199 = xor i32 %5198, %5188
  %5200 = mul i32 %5196, 112
  %5201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5200, i32 undef)  ; BufferLoad(srv,index,wot)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.ResRet.f32 %5201, 2
  %5205 = or i32 %5200, 12
  %5206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5205, i32 undef)  ; BufferLoad(srv,index,wot)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = add i32 %5200, 44
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = add i32 %5200, 48
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = add i32 %5200, 80
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5220 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %5204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5221 = select i1 %173, float %5218, float %5202
  %5222 = select i1 %173, float %5220, float %5203
  %5223 = select i1 %173, float %5219, float %5204
  %5224 = fsub fast float %5213, %131
  %5225 = fsub fast float %5214, %132
  %5226 = fsub fast float %5215, %133
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5225, float %5226, float %5224, float %5225, float %5226)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 24, float %5227)  ; Sqrt(value)
  %5229 = fdiv fast float 1.000000e+00, %5228
  %5230 = fmul fast float %5229, %5224
  %5231 = fmul fast float %5229, %5225
  %5232 = fmul fast float %5229, %5226
  %5233 = fadd fast float %5228, %5207
  %5234 = fdiv fast float 1.000000e+00, %5233
  %5235 = fmul float %5210, %5234
  %5236 = fmul float %5235, %5235
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = and i32 %5198, %5184
  %5239 = icmp eq i32 %5238, 0
  br i1 %5239, label %5262, label %5240, !dx.controlflow.hints !73

; <label>:5240                                    ; preds = %5187
  %5241 = lshr i32 %5132, 5
  %5242 = lshr i32 %5133, 5
  %5243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5241, i32 %5242, i32 %5196, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5244 = extractvalue %dx.types.ResRet.i32 %5243, 0
  %5245 = and i32 %5244, 3
  %5246 = icmp eq i32 %5245, 0
  %5247 = select i1 %5246, float 1.000000e+00, float 0.000000e+00
  %5248 = icmp eq i32 %5245, 3
  br i1 %5248, label %5249, label %5262

; <label>:5249                                    ; preds = %5240
  %5250 = lshr i32 %5244, 10
  %5251 = and i32 %5250, 8160
  %5252 = and i32 %5133, 31
  %5253 = or i32 %5251, %5252
  %5254 = lshr i32 %5244, 1
  %5255 = and i32 %5254, 16352
  %5256 = and i32 %5132, 31
  %5257 = or i32 %5255, %5256
  %5258 = lshr i32 %5244, 23
  %5259 = and i32 %5258, 255
  %5260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5257, i32 %5253, i32 %5259, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  br label %5262

; <label>:5262                                    ; preds = %5249, %5240, %5187
  %5263 = phi float [ %5261, %5249 ], [ %5247, %5240 ], [ 0.000000e+00, %5187 ]
  %5264 = call float @dx.op.binary.f32(i32 36, float %5263, float %5263)  ; FMin(a,b)
  %5265 = call float @dx.op.binary.f32(i32 36, float %5263, float %5264)  ; FMin(a,b)
  %5266 = fcmp fast ogt float %5265, 0.000000e+00
  br i1 %5266, label %5275, label %5267, !dx.controlflow.hints !74

; <label>:5267                                    ; preds = %5511, %5262
  %5268 = phi float [ %5189, %5262 ], [ %5551, %5511 ]
  %5269 = phi float [ %5190, %5262 ], [ %5552, %5511 ]
  %5270 = phi float [ %5191, %5262 ], [ %5553, %5511 ]
  %5271 = phi float [ %5192, %5262 ], [ %5545, %5511 ]
  %5272 = phi float [ %5193, %5262 ], [ %5546, %5511 ]
  %5273 = phi float [ %5194, %5262 ], [ %5547, %5511 ]
  %5274 = icmp eq i32 %5188, %5198
  br i1 %5274, label %5554, label %5187

; <label>:5275                                    ; preds = %5262
  %5276 = fmul fast float %5263, %5221
  %5277 = fmul fast float %5263, %5222
  %5278 = fmul fast float %5263, %5223
  %5279 = fsub fast float %5215, %4467
  %5280 = fcmp fast ogt float %5279, 0.000000e+00
  %5281 = fsub fast float %133, %4467
  %5282 = fcmp fast ogt float %5281, 0.000000e+00
  %5283 = xor i1 %5282, %5280
  %5284 = fsub fast float %4467, %5215
  %5285 = fmul fast float %5284, 2.000000e+00
  %5286 = fadd fast float %5285, %5215
  %5287 = select i1 %5283, float %5215, float %5286
  %5288 = fsub fast float %5287, %133
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5225, float %5288, float %5224, float %5225, float %5288)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = call float @dx.op.unary.f32(i32 25, float %5289)  ; Rsqrt(value)
  %5291 = fmul fast float %5290, %5224
  %5292 = fmul fast float %5290, %5225
  %5293 = fmul fast float %5290, %5288
  %5294 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = fdiv fast float 1.000000e+00, %5295
  %5297 = fmul fast float %5296, %5294
  %5298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5281, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = fcmp fast ogt float %5298, 0.000000e+00
  %5300 = fcmp fast olt float %5298, 0.000000e+00
  %5301 = zext i1 %5299 to i32
  %5302 = zext i1 %5300 to i32
  %5303 = sub nsw i32 %5301, %5302
  %5304 = sitofp i32 %5303 to float
  %5305 = fsub fast float %5287, %4467
  %5306 = call float @dx.op.dot3.f32(i32 55, float %5224, float %5225, float %5305, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = fcmp fast olt float %5306, 0.000000e+00
  %5309 = zext i1 %5307 to i32
  %5310 = zext i1 %5308 to i32
  %5311 = sub nsw i32 %5309, %5310
  %5312 = sitofp i32 %5311 to float
  %5313 = fcmp fast une float %5304, %5312
  br i1 %5313, label %5314, label %5324

; <label>:5314                                    ; preds = %5275
  %5315 = fmul fast float %5297, %5293
  %5316 = fmul fast float %5297, %5292
  %5317 = fmul fast float %5297, %5291
  %5318 = fmul fast float %5317, %5317
  %5319 = fmul fast float %5316, %5316
  %5320 = fadd fast float %5318, %5319
  %5321 = fmul fast float %5315, %5315
  %5322 = fadd fast float %5320, %5321
  %5323 = call float @dx.op.unary.f32(i32 24, float %5322)  ; Sqrt(value)
  br label %5336

; <label>:5324                                    ; preds = %5275
  %5325 = icmp slt i32 %5303, 0
  br i1 %5325, label %5326, label %5336

; <label>:5326                                    ; preds = %5324
  %5327 = fsub fast float %131, %5213
  %5328 = fsub fast float %132, %5214
  %5329 = fsub fast float %133, %5287
  %5330 = fmul fast float %5327, %5327
  %5331 = fmul fast float %5328, %5328
  %5332 = fadd fast float %5330, %5331
  %5333 = fmul fast float %5329, %5329
  %5334 = fadd fast float %5332, %5333
  %5335 = call float @dx.op.unary.f32(i32 24, float %5334)  ; Sqrt(value)
  br label %5336

; <label>:5336                                    ; preds = %5326, %5324, %5314
  %5337 = phi float [ %5323, %5314 ], [ %5335, %5326 ], [ 0.000000e+00, %5324 ]
  %5338 = and i1 %5282, %5280
  %5339 = fsub fast float -0.000000e+00, %5337
  %5340 = select i1 %5338, float -0.000000e+00, float %5339
  %5341 = fmul fast float %4468, 0x3FF7154760000000
  %5342 = fmul fast float %5341, %5340
  %5343 = fmul fast float %4469, 0x3FF7154760000000
  %5344 = fmul fast float %5343, %5340
  %5345 = fmul fast float %4470, 0x3FF7154760000000
  %5346 = fmul fast float %5345, %5340
  %5347 = call float @dx.op.unary.f32(i32 21, float %5342)  ; Exp(value)
  %5348 = call float @dx.op.unary.f32(i32 21, float %5344)  ; Exp(value)
  %5349 = call float @dx.op.unary.f32(i32 21, float %5346)  ; Exp(value)
  %5350 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5351 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5353 = fmul fast float %5276, %5350
  %5354 = fmul fast float %5277, %5351
  %5355 = fmul fast float %5278, %5352
  %5356 = fsub fast float %5230, %4667
  %5357 = fsub fast float %5231, %4666
  %5358 = fsub fast float %5232, %4665
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5356, float %5357, float %5358)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 25, float %5359)  ; Rsqrt(value)
  %5361 = fmul fast float %5360, %5356
  %5362 = fmul fast float %5360, %5357
  %5363 = fmul fast float %5360, %5358
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5231, float %5232, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4663, float %4662, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5367 = fmul fast float %5366, %5237
  %5368 = fmul fast float %5366, %5366
  %5369 = fmul fast float %5368, %4890
  %5370 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5371 = fmul fast float %5367, %5370
  %5372 = bitcast float %5227 to i32
  %5373 = ashr i32 %5372, 1
  %5374 = sub nsw i32 1597463007, %5373
  %5375 = bitcast i32 %5374 to float
  %5376 = fmul fast float %5375, %5224
  %5377 = fmul fast float %5375, %5225
  %5378 = fmul fast float %5375, %5226
  %5379 = fsub fast float %5376, %4667
  %5380 = fsub fast float %5377, %4666
  %5381 = fsub fast float %5378, %4665
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5380, float %5381, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = call float @dx.op.unary.f32(i32 25, float %5382)  ; Rsqrt(value)
  %5384 = fmul fast float %5379, %5383
  %5385 = fmul fast float %5380, %5383
  %5386 = fmul fast float %5381, %5383
  %5387 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fmul fast float %5387, %5387
  %5389 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5390 = fsub fast float 1.000000e+00, %4677
  %5391 = call float @dx.op.binary.f32(i32 35, float %5390, float 0x3F847AE140000000)  ; FMax(a,b)
  %5392 = fmul fast float %5391, %5391
  %5393 = fmul fast float %5392, %5392
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = fmul fast float %4681, %4681
  %5396 = fmul fast float %5395, %5394
  %5397 = fadd fast float %5396, %5393
  %5398 = bitcast float %5397 to i32
  %5399 = ashr i32 %5398, 1
  %5400 = add nsw i32 %5399, 532487669
  %5401 = bitcast i32 %5400 to float
  %5402 = fadd fast float %5401, %4681
  %5403 = fmul fast float %5393, %5388
  %5404 = fsub fast float 1.000000e+00, %5388
  %5405 = fadd fast float %5404, %5403
  %5406 = fmul fast float %5389, %5389
  %5407 = fmul fast float %5406, %5394
  %5408 = fadd fast float %5407, %5393
  %5409 = bitcast float %5408 to i32
  %5410 = ashr i32 %5409, 1
  %5411 = add nsw i32 %5410, 532487669
  %5412 = bitcast i32 %5411 to float
  %5413 = fadd fast float %5412, %5389
  %5414 = fmul fast float %5405, %5405
  %5415 = fmul fast float %5414, %5402
  %5416 = fmul fast float %5415, %5413
  %5417 = fdiv fast float 1.000000e+00, %5416
  %5418 = bitcast float %5393 to i32
  %5419 = sitofp i32 %5418 to float
  %5420 = fmul fast float %5419, 0x3FE7F73180000000
  %5421 = fadd fast float %5420, 0x41AFE27C40000000
  %5422 = fptosi float %5421 to i32
  %5423 = bitcast i32 %5422 to float
  %5424 = fmul fast float %5210, 0x3FD80E9D60000000
  %5425 = fmul fast float %5424, %5375
  %5426 = fadd fast float %5423, %5425
  %5427 = bitcast float %5426 to i32
  %5428 = sub nsw i32 2129859010, %5427
  %5429 = bitcast i32 %5428 to float
  %5430 = fmul fast float %5393, %5417
  %5431 = fmul fast float %5430, %5423
  %5432 = fmul fast float %5431, %5429
  %5433 = call float @dx.op.unary.f32(i32 6, float %5365)  ; FAbs(value)
  %5434 = fsub fast float 1.000000e+00, %5433
  %5435 = bitcast float %5434 to i32
  %5436 = sitofp i32 %5435 to float
  %5437 = fmul fast float %5436, 5.000000e+00
  %5438 = fadd fast float %5437, 0xC1EFBF8940000000
  %5439 = fptosi float %5438 to i32
  %5440 = bitcast i32 %5439 to float
  %5441 = fsub fast float 1.000000e+00, %4668
  %5442 = fsub fast float 1.000000e+00, %4669
  %5443 = fsub fast float 1.000000e+00, %4679
  %5444 = fmul fast float %5440, %5441
  %5445 = fmul fast float %5440, %5442
  %5446 = fmul fast float %5440, %5443
  %5447 = fadd fast float %5444, %4668
  %5448 = fadd fast float %5445, %4669
  %5449 = fadd fast float %5446, %4679
  br i1 %4805, label %5450, label %5473

; <label>:5450                                    ; preds = %5336
  %5451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4066, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = fadd fast float %5452, -5.000000e-01
  %5456 = fadd fast float %5453, -5.000000e-01
  %5457 = fadd fast float %5454, -5.000000e-01
  %5458 = fmul fast float %4668, 4.000000e+00
  %5459 = fmul fast float %5458, %5441
  %5460 = fmul fast float %5459, %5455
  %5461 = fmul fast float %4669, 4.000000e+00
  %5462 = fmul fast float %5461, %5442
  %5463 = fmul fast float %5462, %5456
  %5464 = fmul fast float %4679, 4.000000e+00
  %5465 = fmul fast float %5464, %5443
  %5466 = fmul fast float %5465, %5457
  %5467 = fadd fast float %5460, %5447
  %5468 = fadd fast float %5463, %5448
  %5469 = fadd fast float %5466, %5449
  %5470 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5471 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  br label %5473

; <label>:5473                                    ; preds = %5450, %5336
  %5474 = phi float [ %5470, %5450 ], [ %5447, %5336 ]
  %5475 = phi float [ %5471, %5450 ], [ %5448, %5336 ]
  %5476 = phi float [ %5472, %5450 ], [ %5449, %5336 ]
  %5477 = fmul fast float %5364, 9.843750e-01
  %5478 = fadd fast float %5477, 7.812500e-03
  %5479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5478, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 2
  %5481 = extractvalue %dx.types.ResRet.f32 %5479, 3
  %5482 = fmul fast float %5480, %4668
  %5483 = fmul fast float %5480, %4669
  %5484 = fmul fast float %5480, %4679
  %5485 = fadd fast float %5482, %5481
  %5486 = fadd fast float %5483, %5481
  %5487 = fadd fast float %5484, %5481
  br i1 %4805, label %5488, label %5511

; <label>:5488                                    ; preds = %5473
  %5489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4066, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.ResRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.ResRet.f32 %5489, 2
  %5493 = fadd fast float %5490, -5.000000e-01
  %5494 = fadd fast float %5491, -5.000000e-01
  %5495 = fadd fast float %5492, -5.000000e-01
  %5496 = fmul fast float %4668, 4.000000e+00
  %5497 = fmul fast float %5496, %5441
  %5498 = fmul fast float %5497, %5493
  %5499 = fmul fast float %4669, 4.000000e+00
  %5500 = fmul fast float %5499, %5442
  %5501 = fmul fast float %5500, %5494
  %5502 = fmul fast float %4679, 4.000000e+00
  %5503 = fmul fast float %5502, %5443
  %5504 = fmul fast float %5503, %5495
  %5505 = fadd fast float %5498, %5485
  %5506 = fadd fast float %5501, %5486
  %5507 = fadd fast float %5504, %5487
  %5508 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5510 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  br label %5511

; <label>:5511                                    ; preds = %5488, %5473
  %5512 = phi float [ %5508, %5488 ], [ %5485, %5473 ]
  %5513 = phi float [ %5509, %5488 ], [ %5486, %5473 ]
  %5514 = phi float [ %5510, %5488 ], [ %5487, %5473 ]
  %5515 = call float @dx.op.binary.f32(i32 35, float %5513, float %5514)  ; FMax(a,b)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5512, float %5515)  ; FMax(a,b)
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5474, %5432
  %5519 = fmul fast float %5475, %5432
  %5520 = fmul fast float %5476, %5432
  %5521 = fsub fast float 1.000000e+00, %5365
  %5522 = bitcast float %5521 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 5.000000e+00
  %5525 = fadd fast float %5524, 0xC1EFBF8940000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5527, %4067
  %5529 = fmul fast float %5517, %5528
  %5530 = fmul fast float %5529, %4855
  %5531 = fmul fast float %5529, %4856
  %5532 = fmul fast float %5529, %4857
  %5533 = fadd fast float %5530, %5518
  %5534 = fadd fast float %5531, %5519
  %5535 = fadd fast float %5532, %5520
  %5536 = fmul fast float %5353, %4063
  %5537 = fmul fast float %5536, %5371
  %5538 = fmul fast float %5537, %5517
  %5539 = fmul fast float %5354, %4063
  %5540 = fmul fast float %5539, %5371
  %5541 = fmul fast float %5540, %5517
  %5542 = fmul fast float %5355, %4063
  %5543 = fmul fast float %5542, %5371
  %5544 = fmul fast float %5543, %5517
  %5545 = fadd fast float %5538, %5192
  %5546 = fadd fast float %5541, %5193
  %5547 = fadd fast float %5544, %5194
  %5548 = fmul fast float %5537, %5533
  %5549 = fmul fast float %5540, %5534
  %5550 = fmul fast float %5543, %5535
  %5551 = fadd fast float %5548, %5189
  %5552 = fadd fast float %5549, %5190
  %5553 = fadd fast float %5550, %5191
  br label %5267

; <label>:5554                                    ; preds = %5267
  br label %5555

; <label>:5555                                    ; preds = %5554, %5155
  %5556 = phi float [ %5157, %5155 ], [ %5268, %5554 ]
  %5557 = phi float [ %5158, %5155 ], [ %5269, %5554 ]
  %5558 = phi float [ %5159, %5155 ], [ %5270, %5554 ]
  %5559 = phi float [ %5160, %5155 ], [ %5271, %5554 ]
  %5560 = phi float [ %5161, %5155 ], [ %5272, %5554 ]
  %5561 = phi float [ %5162, %5155 ], [ %5273, %5554 ]
  %5562 = add i32 %5156, 1
  %5563 = icmp ugt i32 %5562, %5152
  br i1 %5563, label %5564, label %5155

; <label>:5564                                    ; preds = %5555
  br label %5565

; <label>:5565                                    ; preds = %5564, %5131, %5121
  %5566 = phi float [ %5122, %5121 ], [ %5122, %5131 ], [ %5556, %5564 ]
  %5567 = phi float [ %5123, %5121 ], [ %5123, %5131 ], [ %5557, %5564 ]
  %5568 = phi float [ %5124, %5121 ], [ %5124, %5131 ], [ %5558, %5564 ]
  %5569 = phi float [ %5125, %5121 ], [ %5125, %5131 ], [ %5559, %5564 ]
  %5570 = phi float [ %5126, %5121 ], [ %5126, %5131 ], [ %5560, %5564 ]
  %5571 = phi float [ %5127, %5121 ], [ %5127, %5131 ], [ %5561, %5564 ]
  %5572 = call float @dx.op.unary.f32(i32 24, float %4671)  ; Sqrt(value)
  %5573 = call float @dx.op.unary.f32(i32 24, float %4672)  ; Sqrt(value)
  %5574 = call float @dx.op.unary.f32(i32 24, float %4673)  ; Sqrt(value)
  %5575 = fmul fast float %5572, %5569
  %5576 = fmul fast float %5573, %5570
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  br i1 %173, label %5579, label %5605

; <label>:5579                                    ; preds = %5565
  %5580 = fadd fast float %5571, %4069
  %5581 = fmul fast float %5580, %4070
  %5582 = fsub fast float 1.000000e+00, %4070
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = fmul fast float %4676, 2.000000e+00
  %5585 = fmul fast float %5584, %4682
  %5586 = fsub fast float %4665, %5585
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fsub fast float 1.000000e+00, %5587
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 3
  %5591 = fmul fast float %5588, %5583
  %5592 = fmul fast float %5591, %5590
  %5593 = fadd fast float %5592, %5581
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = fmul fast float %5595, %4861
  %5597 = fsub fast float %5593, %5596
  %5598 = fadd fast float %5576, %5575
  %5599 = fmul fast float %5578, %5598
  %5600 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5601 = fsub fast float %5597, %5600
  %5602 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5603 = fmul fast float %5601, %5602
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  br label %5621

; <label>:5605                                    ; preds = %5565
  %5606 = fmul fast float %5574, %5571
  %5607 = fmul fast float %5578, %5575
  %5608 = fmul fast float %5578, %5576
  %5609 = fmul fast float %5606, %5578
  %5610 = add i32 %33, 356
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5610, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = and i32 %5612, 32
  %5614 = icmp eq i32 %5613, 0
  br i1 %5614, label %5621, label %5615

; <label>:5615                                    ; preds = %5605
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = fmul fast float %5617, 0x3FE99999A0000000
  %5619 = fadd fast float %5617, %5607
  %5620 = fadd fast float %5618, %5609
  br label %5621

; <label>:5621                                    ; preds = %5615, %5605, %5579
  %5622 = phi float [ %5599, %5579 ], [ %5619, %5615 ], [ %5607, %5605 ]
  %5623 = phi float [ %5604, %5579 ], [ %5608, %5615 ], [ %5608, %5605 ]
  %5624 = phi float [ 1.000000e+00, %5579 ], [ %5620, %5615 ], [ %5609, %5605 ]
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = fmul fast float %5626, %5567
  %5628 = fmul fast float %5626, %5568
  %5629 = fadd fast float %5567, %5566
  %5630 = select i1 %173, float %5629, float %5566
  %5631 = fmul float %5630, %5626
  %5632 = select i1 %173, float 0.000000e+00, float %5627
  %5633 = select i1 %173, float 0.000000e+00, float %5628
  %5634 = fmul fast float %5622, %5572
  %5635 = fmul fast float %5623, %5573
  %5636 = fmul fast float %5624, %5574
  %5637 = fadd fast float %5631, %5634
  %5638 = fadd fast float %5632, %5635
  %5639 = fadd fast float %5633, %5636
  %5640 = select i1 %173, float %5623, float %5638
  %5641 = select i1 %173, float %5624, float %5639
  %5642 = call float @dx.op.binary.f32(i32 36, float %5637, float 3.225500e+04)  ; FMin(a,b)
  %5643 = call float @dx.op.binary.f32(i32 36, float %5640, float 3.225500e+04)  ; FMin(a,b)
  %5644 = call float @dx.op.binary.f32(i32 36, float %5641, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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

